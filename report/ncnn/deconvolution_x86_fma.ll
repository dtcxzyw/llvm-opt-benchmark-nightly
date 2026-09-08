Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/deconvolution_x86_fma?download=true
inline.NumInlined: 22
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 63
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 78
begin_hunk_0_@_ZNK4ncnn21Deconvolution_x86_fma7forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %i.kd = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ke = load i32, ptr %i.kd, align 8, !tbaa !62
  %i.kf = mul i32 %i.ke, %.fr2814.i               ; 14 uses
  %i.kg = load i32, ptr %i.ag, align 4, !tbaa !54 ; 6 uses
  %i.kh = load i32, ptr %i.ah, align 8, !tbaa !66 ; 5 uses
  %i.ki = load i32, ptr %i.ci, align 4, !tbaa !54 ; 2 uses
  %i.kj = load i32, ptr %i.cj, align 16, !tbaa !66 ; 2 uses
  %i.kk = load ptr, ptr %4, align 16, !tbaa !20, !noalias !421 ; 2 uses
  %i.kl = load i64, ptr %i.cl, align 16, !tbaa !21, !noalias !421
  %i.km = load i64, ptr %i.ce, align 16, !tbaa !55, !noalias !421
  %factor.op.mul.i = mul i64 %i.km, %i.kl         ; 2 uses
  %i.kn = icmp slt i32 %i.kj, 1
  %i.ko = icmp slt i32 %i.ki, 1
  %i.kp = icmp sgt i32 %i.kf, 7
  %i.kq = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 7 uses
  %brmerge.i = select i1 %i.kn, i1 true, i1 %i.ko
  br i1 %brmerge.i, label %._crit_edge2964.split.i, label %_ZN4ncnn3MatD2Ev.exit957.lr.ph.split.split.i

_ZN4ncnn3MatD2Ev.exit957.lr.ph.split.split.i:     ; preds = %_ZN4ncnn3MatD2Ev.exit957.lr.ph.i
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.kt = load ptr, ptr %i.im, align 8, !tbaa !20, !noalias !422
  %i.ku = load i64, ptr %i.ks, align 8, !tbaa !21, !noalias !422
  %i.kv = load i64, ptr %i.kr, align 8, !tbaa !55, !noalias !422
  %factor.op.mul2970.i = mul i64 %i.kv, %i.ku
  %i.kw = add i32 %i.kf, -8                       ; 2 uses
  %i.kx = lshr i32 %i.kw, 1
  %i.ky = and i32 %i.kx, 2147483644
  %narrow3572.i = add nuw i32 %i.ky, 4
  %i.kz = zext i32 %narrow3572.i to i64
  %i.la = and i32 %i.kw, -8
  %i.lb = add nuw i32 %i.la, 8
  %i.lc = sext i32 %i.kf to i64
  %i.ld = sext i32 %i.jy to i64
  %wide.trip.count3417.i = zext nneg i32 %i.ka to i64
  %invariant.op3591.i = add nsw i64 %i.lc, -7
  %i.le = sext i32 %i.kg to i64                   ; 5 uses
  %i.lf = and i32 %i.kf, -8
  br label %_ZN4ncnn3MatD2Ev.exit957.i

_ZN4ncnn3MatD2Ev.exit978.i:                       ; preds = %._crit_edge2735.split.i, %_ZN4ncnn3MatD2Ev.exit978.preheader.i
  %indvars.iv3327.i = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit978.preheader.i ], [ %indvars.iv.next3328.i, %._crit_edge2735.split.i ] ; 2 uses
  %i.lg = load i32, ptr %i.ak, align 8, !tbaa !60
  %.fr2597.i = freeze i32 %i.lg                   ; 3 uses
  %i.lh = load i32, ptr %i.jq, align 8, !tbaa !62
  %i.li = mul i32 %i.lh, %.fr2597.i               ; 13 uses
  %i.lj = load i32, ptr %i.ag, align 4, !tbaa !54 ; 5 uses
  %i.lk = load i32, ptr %i.ah, align 8, !tbaa !66 ; 5 uses
  %i.ll = load i32, ptr %i.ci, align 4, !tbaa !54 ; 2 uses
  %i.lm = load i32, ptr %i.cj, align 16, !tbaa !66 ; 2 uses
  %i.ln = load i32, ptr %i.cf, align 8, !tbaa !60 ; 2 uses
  %i.lo = icmp sgt i32 %i.lm, 0
  br i1 %i.lo, label %.preheader2512.lr.ph.i, label %._crit_edge2735.split.i

.preheader2512.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit978.i
  %i.lp = shl nuw nsw i64 %indvars.iv3327.i, 2
  %i.lq = add nsw i64 %i.lp, %i.jw                ; 2 uses
  %i.lr = trunc nsw i64 %i.lq to i32              ; 3 uses
  %i.ls = icmp sgt i32 %i.ll, 0
  %i.lt = load ptr, ptr %i.l, align 8             ; 2 uses
  %.not920.i = icmp eq ptr %i.lt, null
  %i.lu = getelementptr inbounds [4 x i8], ptr %i.lt, i64 %i.lq
  %i.lv = sdiv i32 %i.lr, 8
  %i.lw = srem i32 %i.lr, 8
  %.lhs.trunc.i = trunc nsw i32 %i.lw to i8
  %i.lx = sdiv i8 %.lhs.trunc.i, 4
  %.sext.i = sext i8 %i.lx to i32
  %i.ly = add nsw i32 %i.lv, %.sext.i
  %i.lz = sext i32 %i.ly to i64
  %i.ma = icmp sgt i32 %i.li, 7
  %i.mb = load i32, ptr %i.g, align 4
  br i1 %i.ls, label %.preheader2512.preheader.i, label %._crit_edge2735.split.i

.preheader2512.preheader.i:                       ; preds = %.preheader2512.lr.ph.i
  %i.mc = load ptr, ptr %4, align 16, !tbaa !20, !noalias !423
  %i.md = load i64, ptr %i.cl, align 16, !tbaa !21, !noalias !423
  %i.me = sdiv i32 %i.lr, %i.ln
  %i.mf = sext i32 %i.me to i64
  %i.mg = mul i64 %i.md, %i.mf
  %i.mh = load i64, ptr %i.ce, align 16, !tbaa !55, !noalias !423
  %i.mi = mul i64 %i.mg, %i.mh
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mc, i64 %i.mi
  %i.mk = add i32 %i.li, -8                       ; 2 uses
  %i.ml = lshr i32 %i.mk, 1
  %i.mm = and i32 %i.ml, 2147483644
  %narrow.i = add nuw i32 %i.mm, 4
  %i.mn = zext i32 %narrow.i to i64
  %i.mo = and i32 %i.mk, -8
  %i.mp = add i32 %i.mo, 8                        ; 2 uses
  %i.mq = sext i32 %i.li to i64
  %invariant.op3590.i = add nsw i64 %i.mq, -7
  br label %.preheader2512.i

.preheader2512.i:                                 ; preds = %._crit_edge.i, %.preheader2512.preheader.i
  %.07392734.i = phi ptr [ %.3742.i, %._crit_edge.i ], [ %i.mj, %.preheader2512.preheader.i ]
  %.07462733.i = phi i32 [ %.neg2466.i, %._crit_edge.i ], [ 0, %.preheader2512.preheader.i ]
  %i.mr = load i32, ptr %i.b, align 4             ; 2 uses
  %i.ms = icmp sgt i32 %i.mr, 0                   ; 4 uses
  %.neg2466.i = add nuw nsw i32 %.07462733.i, 1   ; 6 uses
  %i.mt = load i32, ptr %i.k, align 4             ; 4 uses
  %i.mu = shl i32 %i.mt, 5
  %i.mv = sext i32 %i.mu to i64                   ; 2 uses
  %i.mw = shl i32 %i.mt, 4
  %i.mx = sext i32 %i.mw to i64                   ; 3 uses
  %i.my = shl i32 %i.mt, 3
  %i.mz = sext i32 %i.my to i64                   ; 3 uses
  %i.na = shl nsw i32 %i.mt, 2
  %i.nb = sext i32 %i.na to i64
  %i.nc = load i64, ptr %i.h, align 8             ; 3 uses
  %.idx.i = shl i64 %i.nc, 3
  %.idx921.i = mul i64 %i.nc, 12
  %i.nd = mul nsw i64 %i.mv, %i.mn
  %wide.trip.count3269.i = zext nneg i32 %i.mr to i64 ; 5 uses
  br label %bb.ay

._crit_edge2735.split.i:                          ; preds = %._crit_edge.i, %.preheader2512.lr.ph.i, %_ZN4ncnn3MatD2Ev.exit978.i
  %indvars.iv.next3328.i = add nuw nsw i64 %indvars.iv3327.i, 1 ; 2 uses
  %exitcond3331.not.i = icmp eq i64 %indvars.iv.next3328.i, %wide.trip.count3330.i
  br i1 %exitcond3331.not.i, label %._crit_edge2737.i, label %_ZN4ncnn3MatD2Ev.exit978.i, !llvm.loop !325

._crit_edge.i:                                    ; preds = %bb.cc
  %exitcond3326.not.i = icmp eq i32 %.neg2466.i, %i.lm
  br i1 %exitcond3326.not.i, label %._crit_edge2735.split.i, label %.preheader2512.i, !llvm.loop !326

bb.ay:                                            ; preds = %bb.cc, %.preheader2512.i
  %.17402732.i = phi ptr [ %.07392734.i, %.preheader2512.i ], [ %.3742.i, %bb.cc ] ; 8 uses
  %.07482731.i = phi i32 [ 0, %.preheader2512.i ], [ %i.amo, %bb.cc ] ; 5 uses
  br i1 %.not920.i, label %_ZN4ncnn3MatD2Ev.exit977.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ne = load <4 x float>, ptr %i.lu, align 1, !tbaa !82
  br label %_ZN4ncnn3MatD2Ev.exit977.i

_ZN4ncnn3MatD2Ev.exit977.i:                       ; preds = %bb.az, %bb.ay
  %.02317.i = phi nsz <4 x float> [ zeroinitializer, %bb.ay ], [ %i.ne, %bb.az ] ; 3 uses
  %i.nf = load ptr, ptr %i.im, align 8, !tbaa !20, !noalias !424 ; 2 uses
  %i.ng = load i64, ptr %i.jr, align 8, !tbaa !21, !noalias !424
  %i.nh = mul i64 %i.ng, %i.lz
  %i.ni = load i64, ptr %i.js, align 8, !tbaa !55, !noalias !424
  %i.nj = mul i64 %i.nh, %i.ni                    ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nf, i64 %i.nj ; 2 uses
  br i1 %i.ma, label %.preheader2508.lr.ph.i, label %.preheader2511.i

.preheader2508.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit977.i
  %i.nl = load i32, ptr %i.j, align 4
  %invariant.op2532.i = sub i32 %.neg2466.i, %i.nl
  %i.nm = load i32, ptr %i.f, align 4             ; 2 uses
  %i.nn = load i32, ptr %i.a, align 4
  %.fr3165.i = freeze i32 %i.nn                   ; 2 uses
  %i.no = icmp sgt i32 %.fr3165.i, 0
  %i.np = load i32, ptr %i.i, align 4
  %.neg2468.i = add nuw nsw i32 %.07482731.i, 1
  %invariant.op.i = sub i32 %.neg2468.i, %i.np
  %i.nq = load i32, ptr %i.e, align 4             ; 2 uses
  br i1 %i.ms, label %.preheader2508.us.preheader.i, label %.preheader2508.preheader.i

.preheader2508.preheader.i:                       ; preds = %.preheader2508.lr.ph.i
  %scevgep.i = getelementptr i8, ptr %i.nf, i64 %i.nd
  %scevgep3264.i = getelementptr i8, ptr %scevgep.i, i64 %i.nj
  br label %.preheader2511.i

.preheader2508.us.preheader.i:                    ; preds = %.preheader2508.lr.ph.i
  %i.nr = load i32, ptr %i.c, align 4
  %i.ns = load i32, ptr %i.d, align 4
  %i.nt = zext i32 %.fr3165.i to i64              ; 2 uses
  br label %.preheader2508.us.i

.preheader2508.us.i:                              ; preds = %._crit_edge.us.i, %.preheader2508.us.preheader.i
  %indvars.iv3271.i = phi i64 [ 0, %.preheader2508.us.preheader.i ], [ %indvars.iv.next3272.i, %._crit_edge.us.i ] ; 11 uses
  %.07512542.us.i = phi ptr [ %i.nk, %.preheader2508.us.preheader.i ], [ %i.vm, %._crit_edge.us.i ] ; 2 uses
  %.123182540.us.i = phi <4 x float> [ %.02317.i, %.preheader2508.us.preheader.i ], [ %.us-phi2536.us.i, %._crit_edge.us.i ] ; 2 uses
  %.023292539.us.i = phi <4 x float> [ zeroinitializer, %.preheader2508.us.preheader.i ], [ %.us-phi2535.us.i, %._crit_edge.us.i ] ; 2 uses
  %.023442538.us.i = phi <4 x float> [ zeroinitializer, %.preheader2508.us.preheader.i ], [ %.us-phi2534.us.i, %._crit_edge.us.i ] ; 2 uses
  %.023542537.us.i = phi <4 x float> [ zeroinitializer, %.preheader2508.us.preheader.i ], [ %.us-phi.us.i, %._crit_edge.us.i ] ; 2 uses
  %i.nu = or disjoint i64 %indvars.iv3271.i, 7
  %i.nv = or disjoint i64 %indvars.iv3271.i, 1
  %i.nw = or disjoint i64 %indvars.iv3271.i, 2
  %i.nx = or disjoint i64 %indvars.iv3271.i, 3
  %i.ny = or disjoint i64 %indvars.iv3271.i, 4
  %i.nz = or disjoint i64 %indvars.iv3271.i, 5
  %i.oa = or disjoint i64 %indvars.iv3271.i, 6
  %i.ob = lshr exact i64 %indvars.iv3271.i, 2     ; 2 uses
  %i.oc = or disjoint i64 %i.ob, 1
  %i.od = lshr exact i64 %indvars.iv3271.i, 3
  br i1 %i.no, label %.lr.ph2527.split.us.us.i, label %._crit_edge.us.i

.lr.ph2527.split.us.us.i:                         ; preds = %.preheader2508.us.i, %..loopexit2504_crit_edge.us.us.i
  %indvars.iv3266.i = phi i64 [ %indvars.iv.next3267.i, %..loopexit2504_crit_edge.us.us.i ], [ 0, %.preheader2508.us.i ] ; 3 uses
  %.223192525.us.us.i = phi <4 x float> [ %.5.us.us.i, %..loopexit2504_crit_edge.us.us.i ], [ %.123182540.us.i, %.preheader2508.us.i ] ; 3 uses
  %.123302524.us.us.i = phi <4 x float> [ %.42333.us.us.i, %..loopexit2504_crit_edge.us.us.i ], [ %.023292539.us.i, %.preheader2508.us.i ] ; 3 uses
  %.123452523.us.us.i = phi <4 x float> [ %.42348.us.us.i, %..loopexit2504_crit_edge.us.us.i ], [ %.023442538.us.i, %.preheader2508.us.i ] ; 3 uses
  %.123552522.us.us.i = phi <4 x float> [ %.42358.us.us.i, %..loopexit2504_crit_edge.us.us.i ], [ %.023542537.us.i, %.preheader2508.us.i ] ; 3 uses
  %i.oe = trunc i64 %indvars.iv3266.i to i32
  %i.of = mul i32 %i.ns, %i.oe
  %.reass2533.us.us.i = add i32 %i.of, %invariant.op2532.i ; 3 uses
  %i.og = icmp slt i32 %.reass2533.us.us.i, 0
  br i1 %i.og, label %..loopexit2504_crit_edge.us.us.i, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph2527.split.us.us.i
  %i.oh = srem i32 %.reass2533.us.us.i, %i.nm
  %i.oi = sdiv exact i32 %.reass2533.us.us.i, %i.nm ; 2 uses
  %.not934.us.us.i = icmp eq i32 %i.oh, 0
  %.not935.us.us.i = icmp slt i32 %i.oi, %i.lk
  %or.cond = select i1 %.not934.us.us.i, i1 %.not935.us.us.i, i1 false
  br i1 %or.cond, label %.preheader2503.us.us.i, label %..loopexit2504_crit_edge.us.us.i

.preheader2503.us.us.i:                           ; preds = %bb.ba
  %i.oj = mul nuw nsw i64 %indvars.iv3266.i, %i.nt
  %i.ok = sext i32 %i.oi to i64                   ; 3 uses
  br label %bb.bb

bb.bb:                                            ; preds = %bb.be, %.preheader2503.us.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.be ], [ 0, %.preheader2503.us.us.i ] ; 3 uses
  %.323202517.us.us.i = phi <4 x float> [ %.42321.us.us.i, %bb.be ], [ %.223192525.us.us.i, %.preheader2503.us.us.i ] ; 4 uses
  %.223312516.us.us.i = phi <4 x float> [ %.32332.us.us.i, %bb.be ], [ %.123302524.us.us.i, %.preheader2503.us.us.i ] ; 4 uses
  %.223462515.us.us.i = phi <4 x float> [ %.32347.us.us.i, %bb.be ], [ %.123452523.us.us.i, %.preheader2503.us.us.i ] ; 4 uses
  %.223562514.us.us.i = phi <4 x float> [ %.32357.us.us.i, %bb.be ], [ %.123552522.us.us.i, %.preheader2503.us.us.i ] ; 4 uses
  %i.ol = trunc i64 %indvars.iv.i to i32
  %i.om = mul i32 %i.nr, %i.ol
  %.reass.us.us.i = add i32 %invariant.op.i, %i.om ; 3 uses
  %i.on = icmp slt i32 %.reass.us.us.i, 0
  br i1 %i.on, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.oo = srem i32 %.reass.us.us.i, %i.nq
  %i.op = sdiv exact i32 %.reass.us.us.i, %i.nq   ; 4 uses
  %.not936.us.us.i = icmp eq i32 %i.oo, 0
  %.not937.us.us.i = icmp slt i32 %i.op, %i.lj
  %or.cond412 = select i1 %.not936.us.us.i, i1 %.not937.us.us.i, i1 false
  br i1 %or.cond412, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.oq = add nuw nsw i64 %indvars.iv.i, %i.oj
  %i.or = shl i64 %i.oq, 5
  %i.os = and i64 %i.or, 4294967264
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %.07512542.us.i, i64 %i.os ; 8 uses
  switch i32 %.fr2597.i, label %bb.be [
    i32 8, label %_ZN4ncnn3MatD2Ev.exit976.us.us.i
    i32 4, label %_ZN4ncnn3MatD2Ev.exit975.us.us.i
    i32 1, label %_ZN4ncnn3MatD2Ev.exit973.us.us.i
  ]

_ZN4ncnn3MatD2Ev.exit973.us.us.i:                 ; preds = %bb.bd
  %i.ou = load i32, ptr %i.ag, align 4, !tbaa !54, !noalias !425
  %i.ov = load ptr, ptr %1, align 8, !tbaa !20, !noalias !425 ; 8 uses
  %i.ow = load i64, ptr %i.jt, align 8, !tbaa !21, !noalias !425
  %i.ox = load i64, ptr %i.ai, align 8, !tbaa !55, !noalias !425 ; 2 uses
  %i.oy = mul i64 %i.ox, %i.ow                    ; 8 uses
  %i.oz = mul i64 %i.oy, %indvars.iv3271.i
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ov, i64 %i.oz
  %i.pb = sext i32 %i.ou to i64
  %i.pc = mul nsw i64 %i.pb, %i.ok
  %i.pd = mul i64 %i.pc, %i.ox                    ; 8 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pa, i64 %i.pd
  %i.pf = sext i32 %i.op to i64                   ; 8 uses
  %i.pg = getelementptr inbounds [4 x i8], ptr %i.pe, i64 %i.pf
  %i.ph = load float, ptr %i.pg, align 4, !tbaa !39
  %i.pi = insertelement <4 x float> poison, float %i.ph, i64 0
  %i.pj = shufflevector <4 x float> %i.pi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pk = mul i64 %i.oy, %i.nv
  %i.pl = getelementptr inbounds nuw i8, ptr %i.ov, i64 %i.pk
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 %i.pd
  %i.pn = getelementptr inbounds [4 x i8], ptr %i.pm, i64 %i.pf
  %i.po = load float, ptr %i.pn, align 4, !tbaa !39
  %i.pp = insertelement <4 x float> poison, float %i.po, i64 0
  %i.pq = shufflevector <4 x float> %i.pp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pr = mul i64 %i.oy, %i.nw
  %i.ps = getelementptr inbounds nuw i8, ptr %i.ov, i64 %i.pr
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 %i.pd
  %i.pu = getelementptr inbounds [4 x i8], ptr %i.pt, i64 %i.pf
  %i.pv = load float, ptr %i.pu, align 4, !tbaa !39
  %i.pw = insertelement <4 x float> poison, float %i.pv, i64 0
  %i.px = shufflevector <4 x float> %i.pw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.py = mul i64 %i.oy, %i.nx
  %i.pz = getelementptr inbounds nuw i8, ptr %i.ov, i64 %i.py
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 %i.pd
  %i.qb = getelementptr inbounds [4 x i8], ptr %i.qa, i64 %i.pf
  %i.qc = load float, ptr %i.qb, align 4, !tbaa !39
  %i.qd = insertelement <4 x float> poison, float %i.qc, i64 0
  %i.qe = shufflevector <4 x float> %i.qd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qf = mul i64 %i.oy, %i.ny
  %i.qg = getelementptr inbounds nuw i8, ptr %i.ov, i64 %i.qf
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 %i.pd
  %i.qi = getelementptr inbounds [4 x i8], ptr %i.qh, i64 %i.pf
  %i.qj = load float, ptr %i.qi, align 4, !tbaa !39
  %i.qk = insertelement <4 x float> poison, float %i.qj, i64 0
  %i.ql = shufflevector <4 x float> %i.qk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qm = mul i64 %i.oy, %i.nz
  %i.qn = getelementptr inbounds nuw i8, ptr %i.ov, i64 %i.qm
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 %i.pd
  %i.qp = getelementptr inbounds [4 x i8], ptr %i.qo, i64 %i.pf
  %i.qq = load float, ptr %i.qp, align 4, !tbaa !39
  %i.qr = insertelement <4 x float> poison, float %i.qq, i64 0
  %i.qs = shufflevector <4 x float> %i.qr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qt = mul i64 %i.oy, %i.oa
  %i.qu = getelementptr inbounds nuw i8, ptr %i.ov, i64 %i.qt
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 %i.pd
  %i.qw = getelementptr inbounds [4 x i8], ptr %i.qv, i64 %i.pf
  %i.qx = load float, ptr %i.qw, align 4, !tbaa !39
  %i.qy = insertelement <4 x float> poison, float %i.qx, i64 0
  %i.qz = shufflevector <4 x float> %i.qy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ra = mul i64 %i.oy, %i.nu
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ov, i64 %i.ra
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 %i.pd
  %i.rd = getelementptr inbounds [4 x i8], ptr %i.rc, i64 %i.pf
  br label %.sink.split.i

_ZN4ncnn3MatD2Ev.exit975.us.us.i:                 ; preds = %bb.bd
  %i.re = load i32, ptr %i.ag, align 4, !tbaa !54, !noalias !426
  %i.rf = load ptr, ptr %1, align 8, !tbaa !20, !noalias !426 ; 2 uses
  %i.rg = load i64, ptr %i.jt, align 8, !tbaa !21, !noalias !426
  %i.rh = load i64, ptr %i.ai, align 8, !tbaa !55, !noalias !426 ; 2 uses
  %i.ri = mul i64 %i.rh, %i.rg                    ; 2 uses
  %i.rj = mul i64 %i.ri, %i.ob
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rf, i64 %i.rj
  %i.rl = sext i32 %i.re to i64
  %i.rm = mul nsw i64 %i.rl, %i.ok
  %i.rn = mul i64 %i.rm, %i.rh                    ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rk, i64 %i.rn
  %i.rp = shl nsw i32 %i.op, 2
  %i.rq = sext i32 %i.rp to i64                   ; 2 uses
  %i.rr = getelementptr inbounds [4 x i8], ptr %i.ro, i64 %i.rq ; 4 uses
  %i.rs = mul i64 %i.ri, %i.oc
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rf, i64 %i.rs
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 %i.rn
  %i.rv = getelementptr inbounds [4 x i8], ptr %i.ru, i64 %i.rq ; 4 uses
  %i.rw = load float, ptr %i.rr, align 4, !tbaa !39
  %i.rx = insertelement <4 x float> poison, float %i.rw, i64 0
  %i.ry = shufflevector <4 x float> %i.rx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rr, i64 4
  %i.sa = load float, ptr %i.rz, align 4, !tbaa !39
  %i.sb = insertelement <4 x float> poison, float %i.sa, i64 0
  %i.sc = shufflevector <4 x float> %i.sb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sd = getelementptr inbounds nuw i8, ptr %i.rr, i64 8
  %i.se = load float, ptr %i.sd, align 4, !tbaa !39
  %i.sf = insertelement <4 x float> poison, float %i.se, i64 0
  %i.sg = shufflevector <4 x float> %i.sf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sh = getelementptr inbounds nuw i8, ptr %i.rr, i64 12
  %i.si = load float, ptr %i.sh, align 4, !tbaa !39
  %i.sj = insertelement <4 x float> poison, float %i.si, i64 0
  %i.sk = shufflevector <4 x float> %i.sj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sl = load float, ptr %i.rv, align 4, !tbaa !39
  %i.sm = insertelement <4 x float> poison, float %i.sl, i64 0
  %i.sn = shufflevector <4 x float> %i.sm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.so = getelementptr inbounds nuw i8, ptr %i.rv, i64 4
  %i.sp = load float, ptr %i.so, align 4, !tbaa !39
  %i.sq = insertelement <4 x float> poison, float %i.sp, i64 0
  %i.sr = shufflevector <4 x float> %i.sq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ss = getelementptr inbounds nuw i8, ptr %i.rv, i64 8
  %i.st = load float, ptr %i.ss, align 4, !tbaa !39
  %i.su = insertelement <4 x float> poison, float %i.st, i64 0
  %i.sv = shufflevector <4 x float> %i.su, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sw = getelementptr inbounds nuw i8, ptr %i.rv, i64 12
  br label %.sink.split.i

_ZN4ncnn3MatD2Ev.exit976.us.us.i:                 ; preds = %bb.bd
  %i.sx = load i32, ptr %i.ag, align 4, !tbaa !54, !noalias !427
  %i.sy = load ptr, ptr %1, align 8, !tbaa !20, !noalias !427
  %i.sz = load i64, ptr %i.jt, align 8, !tbaa !21, !noalias !427
  %i.ta = mul i64 %i.sz, %i.od
  %i.tb = load i64, ptr %i.ai, align 8, !tbaa !55, !noalias !427 ; 2 uses
  %i.tc = mul i64 %i.ta, %i.tb
  %i.td = getelementptr inbounds nuw i8, ptr %i.sy, i64 %i.tc
  %i.te = sext i32 %i.sx to i64
  %i.tf = mul nsw i64 %i.te, %i.ok
  %i.tg = mul i64 %i.tf, %i.tb
  %i.th = getelementptr inbounds nuw i8, ptr %i.td, i64 %i.tg
  %i.ti = shl nsw i32 %i.op, 3
  %i.tj = sext i32 %i.ti to i64
  %i.tk = getelementptr inbounds [4 x i8], ptr %i.th, i64 %i.tj ; 8 uses
  %i.tl = load float, ptr %i.tk, align 4, !tbaa !39
  %i.tm = insertelement <4 x float> poison, float %i.tl, i64 0
  %i.tn = shufflevector <4 x float> %i.tm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.to = getelementptr inbounds nuw i8, ptr %i.tk, i64 4
  %i.tp = load float, ptr %i.to, align 4, !tbaa !39
  %i.tq = insertelement <4 x float> poison, float %i.tp, i64 0
  %i.tr = shufflevector <4 x float> %i.tq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tk, i64 8
  %i.tt = load float, ptr %i.ts, align 4, !tbaa !39
  %i.tu = insertelement <4 x float> poison, float %i.tt, i64 0
  %i.tv = shufflevector <4 x float> %i.tu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tk, i64 12
  %i.tx = load float, ptr %i.tw, align 4, !tbaa !39
  %i.ty = insertelement <4 x float> poison, float %i.tx, i64 0
  %i.tz = shufflevector <4 x float> %i.ty, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tk, i64 16
  %i.ub = load float, ptr %i.ua, align 4, !tbaa !39
  %i.uc = insertelement <4 x float> poison, float %i.ub, i64 0
  %i.ud = shufflevector <4 x float> %i.uc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ue = getelementptr inbounds nuw i8, ptr %i.tk, i64 20
  %i.uf = load float, ptr %i.ue, align 4, !tbaa !39
  %i.ug = insertelement <4 x float> poison, float %i.uf, i64 0
  %i.uh = shufflevector <4 x float> %i.ug, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ui = getelementptr inbounds nuw i8, ptr %i.tk, i64 24
  %i.uj = load float, ptr %i.ui, align 4, !tbaa !39
  %i.uk = insertelement <4 x float> poison, float %i.uj, i64 0
  %i.ul = shufflevector <4 x float> %i.uk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.um = getelementptr inbounds nuw i8, ptr %i.tk, i64 28
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit976.us.us.i, %_ZN4ncnn3MatD2Ev.exit975.us.us.i, %_ZN4ncnn3MatD2Ev.exit973.us.us.i
  %.sink.in.i = phi ptr [ %i.um, %_ZN4ncnn3MatD2Ev.exit976.us.us.i ], [ %i.sw, %_ZN4ncnn3MatD2Ev.exit975.us.us.i ], [ %i.rd, %_ZN4ncnn3MatD2Ev.exit973.us.us.i ]
  %.sink3617.i = phi <4 x float> [ %i.tn, %_ZN4ncnn3MatD2Ev.exit976.us.us.i ], [ %i.ry, %_ZN4ncnn3MatD2Ev.exit975.us.us.i ], [ %i.pj, %_ZN4ncnn3MatD2Ev.exit973.us.us.i ]
  %.sink3614.i = phi <4 x float> [ %i.tr, %_ZN4ncnn3MatD2Ev.exit976.us.us.i ], [ %i.sc, %_ZN4ncnn3MatD2Ev.exit975.us.us.i ], [ %i.pq, %_ZN4ncnn3MatD2Ev.exit973.us.us.i ]
  %.sink3611.i = phi <4 x float> [ %i.tv, %_ZN4ncnn3MatD2Ev.exit976.us.us.i ], [ %i.sg, %_ZN4ncnn3MatD2Ev.exit975.us.us.i ], [ %i.px, %_ZN4ncnn3MatD2Ev.exit973.us.us.i ]
  %.sink3608.i = phi <4 x float> [ %i.tz, %_ZN4ncnn3MatD2Ev.exit976.us.us.i ], [ %i.sk, %_ZN4ncnn3MatD2Ev.exit975.us.us.i ], [ %i.qe, %_ZN4ncnn3MatD2Ev.exit973.us.us.i ]
  %.sink3604.i = phi <4 x float> [ %i.ud, %_ZN4ncnn3MatD2Ev.exit976.us.us.i ], [ %i.sn, %_ZN4ncnn3MatD2Ev.exit975.us.us.i ], [ %i.ql, %_ZN4ncnn3MatD2Ev.exit973.us.us.i ]
  %.sink3600.i = phi <4 x float> [ %i.uh, %_ZN4ncnn3MatD2Ev.exit976.us.us.i ], [ %i.sr, %_ZN4ncnn3MatD2Ev.exit975.us.us.i ], [ %i.qs, %_ZN4ncnn3MatD2Ev.exit973.us.us.i ]
  %.sink3596.i = phi <4 x float> [ %i.ul, %_ZN4ncnn3MatD2Ev.exit976.us.us.i ], [ %i.sv, %_ZN4ncnn3MatD2Ev.exit975.us.us.i ], [ %i.qz, %_ZN4ncnn3MatD2Ev.exit973.us.us.i ]
  %.sink.i = load float, ptr %.sink.in.i, align 4, !tbaa !39
  %i.un = insertelement <4 x float> poison, float %.sink.i, i64 0
  %i.uo = shufflevector <4 x float> %i.un, <4 x float> poison, <4 x i32> zeroinitializer
  %i.up = load <4 x float>, ptr %i.ot, align 16, !tbaa !82
  %i.uq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sink3617.i, <4 x float> nofpclass(nan inf) %i.up, <4 x float> nofpclass(nan inf) %.323202517.us.us.i)
  %i.ur = getelementptr inbounds nuw i8, ptr %i.ot, i64 16
  %i.us = load <4 x float>, ptr %i.ur, align 16, !tbaa !82
  %i.ut = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sink3614.i, <4 x float> nofpclass(nan inf) %i.us, <4 x float> nofpclass(nan inf) %.223312516.us.us.i)
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ot, i64 32
  %i.uv = load <4 x float>, ptr %i.uu, align 16, !tbaa !82
  %i.uw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sink3611.i, <4 x float> nofpclass(nan inf) %i.uv, <4 x float> nofpclass(nan inf) %.223462515.us.us.i)
  %i.ux = getelementptr inbounds nuw i8, ptr %i.ot, i64 48
  %i.uy = load <4 x float>, ptr %i.ux, align 16, !tbaa !82
  %i.uz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sink3608.i, <4 x float> nofpclass(nan inf) %i.uy, <4 x float> nofpclass(nan inf) %.223562514.us.us.i)
  %i.va = getelementptr inbounds nuw i8, ptr %i.ot, i64 64
  %i.vb = load <4 x float>, ptr %i.va, align 16, !tbaa !82
  %i.vc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sink3604.i, <4 x float> nofpclass(nan inf) %i.vb, <4 x float> nofpclass(nan inf) %i.uq)
  %i.vd = getelementptr inbounds nuw i8, ptr %i.ot, i64 80
  %i.ve = load <4 x float>, ptr %i.vd, align 16, !tbaa !82
  %i.vf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sink3600.i, <4 x float> nofpclass(nan inf) %i.ve, <4 x float> nofpclass(nan inf) %i.ut)
  %i.vg = getelementptr inbounds nuw i8, ptr %i.ot, i64 96
  %i.vh = load <4 x float>, ptr %i.vg, align 16, !tbaa !82
  %i.vi = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sink3596.i, <4 x float> nofpclass(nan inf) %i.vh, <4 x float> nofpclass(nan inf) %i.uw)
  %i.vj = getelementptr inbounds nuw i8, ptr %i.ot, i64 112
  %i.vk = load <4 x float>, ptr %i.vj, align 16, !tbaa !82
  %i.vl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.uo, <4 x float> nofpclass(nan inf) %i.vk, <4 x float> nofpclass(nan inf) %i.uz)
  br label %bb.be

bb.be:                                            ; preds = %.sink.split.i, %bb.bd, %bb.bc, %bb.bb
  %.32357.us.us.i = phi nsz <4 x float> [ %.223562514.us.us.i, %bb.bb ], [ %.223562514.us.us.i, %bb.bd ], [ %.223562514.us.us.i, %bb.bc ], [ %i.vl, %.sink.split.i ] ; 2 uses
  %.32347.us.us.i = phi nsz <4 x float> [ %.223462515.us.us.i, %bb.bb ], [ %.223462515.us.us.i, %bb.bd ], [ %.223462515.us.us.i, %bb.bc ], [ %i.vi, %.sink.split.i ] ; 2 uses
  %.32332.us.us.i = phi nsz <4 x float> [ %.223312516.us.us.i, %bb.bb ], [ %.223312516.us.us.i, %bb.bd ], [ %.223312516.us.us.i, %bb.bc ], [ %i.vf, %.sink.split.i ] ; 2 uses
  %.42321.us.us.i = phi nsz <4 x float> [ %.323202517.us.us.i, %bb.bb ], [ %.323202517.us.us.i, %bb.bd ], [ %.323202517.us.us.i, %bb.bc ], [ %i.vc, %.sink.split.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.nt
  br i1 %exitcond.not.i, label %..loopexit2504_crit_edge.us.us.i, label %bb.bb, !llvm.loop !335

..loopexit2504_crit_edge.us.us.i:                 ; preds = %bb.be, %bb.ba, %.lr.ph2527.split.us.us.i
  %.42358.us.us.i = phi nsz <4 x float> [ %.123552522.us.us.i, %.lr.ph2527.split.us.us.i ], [ %.123552522.us.us.i, %bb.ba ], [ %.32357.us.us.i, %bb.be ] ; 2 uses
  %.42348.us.us.i = phi nsz <4 x float> [ %.123452523.us.us.i, %.lr.ph2527.split.us.us.i ], [ %.123452523.us.us.i, %bb.ba ], [ %.32347.us.us.i, %bb.be ] ; 2 uses
  %.42333.us.us.i = phi nsz <4 x float> [ %.123302524.us.us.i, %.lr.ph2527.split.us.us.i ], [ %.123302524.us.us.i, %bb.ba ], [ %.32332.us.us.i, %bb.be ] ; 2 uses
  %.5.us.us.i = phi nsz <4 x float> [ %.223192525.us.us.i, %.lr.ph2527.split.us.us.i ], [ %.223192525.us.us.i, %bb.ba ], [ %.42321.us.us.i, %bb.be ] ; 2 uses
  %indvars.iv.next3267.i = add nuw nsw i64 %indvars.iv3266.i, 1 ; 2 uses
  %exitcond3270.not.i = icmp eq i64 %indvars.iv.next3267.i, %wide.trip.count3269.i
  br i1 %exitcond3270.not.i, label %._crit_edge.us.i, label %.lr.ph2527.split.us.us.i, !llvm.loop !336

._crit_edge.us.i:                                 ; preds = %..loopexit2504_crit_edge.us.us.i, %.preheader2508.us.i
  %.us-phi.us.i = phi <4 x float> [ %.023542537.us.i, %.preheader2508.us.i ], [ %.42358.us.us.i, %..loopexit2504_crit_edge.us.us.i ] ; 2 uses
  %.us-phi2534.us.i = phi <4 x float> [ %.023442538.us.i, %.preheader2508.us.i ], [ %.42348.us.us.i, %..loopexit2504_crit_edge.us.us.i ] ; 2 uses
  %.us-phi2535.us.i = phi <4 x float> [ %.023292539.us.i, %.preheader2508.us.i ], [ %.42333.us.us.i, %..loopexit2504_crit_edge.us.us.i ] ; 2 uses
  %.us-phi2536.us.i = phi <4 x float> [ %.123182540.us.i, %.preheader2508.us.i ], [ %.5.us.us.i, %..loopexit2504_crit_edge.us.us.i ] ; 2 uses
  %i.vm = getelementptr inbounds [4 x i8], ptr %.07512542.us.i, i64 %i.mv ; 2 uses
  %indvars.iv.next3272.i = add nuw nsw i64 %indvars.iv3271.i, 8 ; 2 uses
  %i.vn = icmp slt i64 %indvars.iv.next3272.i, %invariant.op3590.i
  br i1 %i.vn, label %.preheader2508.us.i, label %.preheader2511.i, !llvm.loop !337

.preheader2511.i:                                 ; preds = %._crit_edge.us.i, %.preheader2508.preheader.i, %_ZN4ncnn3MatD2Ev.exit977.i
  %.02354.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit977.i ], [ zeroinitializer, %.preheader2508.preheader.i ], [ %.us-phi.us.i, %._crit_edge.us.i ] ; 4 uses
  %.02344.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit977.i ], [ zeroinitializer, %.preheader2508.preheader.i ], [ %.us-phi2534.us.i, %._crit_edge.us.i ] ; 4 uses
  %.02329.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit977.i ], [ zeroinitializer, %.preheader2508.preheader.i ], [ %.us-phi2535.us.i, %._crit_edge.us.i ] ; 4 uses
  %.12318.lcssa.i = phi <4 x float> [ %.02317.i, %_ZN4ncnn3MatD2Ev.exit977.i ], [ %.02317.i, %.preheader2508.preheader.i ], [ %.us-phi2536.us.i, %._crit_edge.us.i ] ; 4 uses
  %.0756.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit977.i ], [ %i.mp, %.preheader2508.preheader.i ], [ %i.mp, %._crit_edge.us.i ] ; 9 uses
  %.0751.lcssa.i = phi ptr [ %i.nk, %_ZN4ncnn3MatD2Ev.exit977.i ], [ %scevgep3264.i, %.preheader2508.preheader.i ], [ %i.vm, %._crit_edge.us.i ] ; 4 uses
  %i.vo = or disjoint i32 %.0756.lcssa.i, 3       ; 2 uses
  %i.vp = icmp slt i32 %i.vo, %i.li
  br i1 %i.vp, label %.preheader2507.lr.ph.i, label %.preheader2510.i

.preheader2507.lr.ph.i:                           ; preds = %.preheader2511.i
  %i.vq = load i32, ptr %i.d, align 4             ; 2 uses
  %i.vr = load i32, ptr %i.j, align 4
  %invariant.op2608.i = sub i32 %.neg2466.i, %i.vr ; 2 uses
  %i.vs = load i32, ptr %i.f, align 4             ; 4 uses
  %i.vt = load i32, ptr %i.a, align 4
  %.fr.i = freeze i32 %i.vt                       ; 2 uses
  %i.vu = load i32, ptr %i.c, align 4             ; 2 uses
  %i.vv = load i32, ptr %i.i, align 4
  %.neg2464.i = add nuw nsw i32 %.07482731.i, 1
  %invariant.op2572.i = sub i32 %.neg2464.i, %i.vv ; 2 uses
  %i.vw = load i32, ptr %i.e, align 4             ; 4 uses
  br i1 %i.ms, label %.preheader2507.lr.ph.split.us.i, label %.preheader2507.preheader.i

.preheader2507.preheader.i:                       ; preds = %.preheader2507.lr.ph.i
  %i.vx = add i32 %.0756.lcssa.i, 7
  %smax.i = call i32 @llvm.smax.i32(i32 %i.li, i32 %i.vx)
  %reass.sub = sub i32 %smax.i, %.0756.lcssa.i
  %i.vy = and i32 %reass.sub, -4                  ; 2 uses
  %i.vz = add i32 %i.vy, -4
  %i.wa = zext i32 %i.vz to i64
  %i.wb = add nuw nsw i64 %i.wa, 4
  %i.wc = mul nsw i64 %i.wb, %i.mx
  %scevgep3274.i = getelementptr i8, ptr %.0751.lcssa.i, i64 %i.wc
  %i.wd = add i32 %.0756.lcssa.i, %i.vy
  br label %.preheader2510.i

.preheader2507.lr.ph.split.us.i:                  ; preds = %.preheader2507.lr.ph.i
  %i.we = icmp sgt i32 %.fr.i, 0
  br i1 %i.we, label %.preheader2507.us.us.preheader.i, label %.preheader2507.us.preheader.i

.preheader2507.us.preheader.i:                    ; preds = %.preheader2507.lr.ph.split.us.i
  %i.wf = add i32 %.0756.lcssa.i, 7
  %smax3275.i = call i32 @llvm.smax.i32(i32 %i.li, i32 %i.wf)
  %reass.sub213 = sub i32 %smax3275.i, %.0756.lcssa.i
  %i.wg = and i32 %reass.sub213, -4               ; 2 uses
  %i.wh = add i32 %i.wg, -4
  %i.wi = zext i32 %i.wh to i64
  %i.wj = add nuw nsw i64 %i.wi, 4
  %i.wk = mul nsw i64 %i.wj, %i.mx
  %scevgep3276.i = getelementptr i8, ptr %.0751.lcssa.i, i64 %i.wk
  %i.wl = add i32 %.0756.lcssa.i, %i.wg
  br label %.preheader2510.i

.preheader2507.us.us.preheader.i:                 ; preds = %.preheader2507.lr.ph.split.us.i
  %i.wm = zext nneg i32 %.fr.i to i64             ; 4 uses
  %i.wn = zext i32 %.0756.lcssa.i to i64
  %i.wo = zext nneg i32 %i.vo to i64
  br label %.preheader2507.us.us.i

.preheader2507.us.us.i:                           ; preds = %._crit_edge.split.us.us2644.us.i, %.preheader2507.us.us.preheader.i
  %indvars.iv3292.i = phi i64 [ %i.wn, %.preheader2507.us.us.preheader.i ], [ %indvars.iv.next3293.i, %._crit_edge.split.us.us2644.us.i ] ; 5 uses
  %i.wp = phi i64 [ %i.wo, %.preheader2507.us.us.preheader.i ], [ %i.abk, %._crit_edge.split.us.us2644.us.i ]
  %.17522629.us.us.i = phi ptr [ %.0751.lcssa.i, %.preheader2507.us.us.preheader.i ], [ %i.abj, %._crit_edge.split.us.us2644.us.i ] ; 3 uses
  %.623222627.us.us.i = phi <4 x float> [ %.12318.lcssa.i, %.preheader2507.us.us.preheader.i ], [ %.us-phi154, %._crit_edge.split.us.us2644.us.i ] ; 3 uses
  %.523342626.us.us.i = phi <4 x float> [ %.02329.lcssa.i, %.preheader2507.us.us.preheader.i ], [ %.us-phi153, %._crit_edge.split.us.us2644.us.i ] ; 3 uses
  %.523492625.us.us.i = phi <4 x float> [ %.02344.lcssa.i, %.preheader2507.us.us.preheader.i ], [ %.us-phi152, %._crit_edge.split.us.us2644.us.i ] ; 3 uses
  %.523592624.us.us.i = phi <4 x float> [ %.02354.lcssa.i, %.preheader2507.us.us.preheader.i ], [ %.us-phi, %._crit_edge.split.us.us2644.us.i ] ; 3 uses
  %i.wq = add nuw nsw i64 %indvars.iv3292.i, 1
  %i.wr = add nuw nsw i64 %indvars.iv3292.i, 2
  %i.ws = lshr exact i64 %indvars.iv3292.i, 2
  switch i32 %.fr2597.i, label %._crit_edge.split.us.us2644.us.i [
    i32 4, label %.preheader2507.us.us.i.split.us
    i32 1, label %.preheader2507.us.us.i.split.us155
  ]

.preheader2507.us.us.i.split.us:                  ; preds = %.preheader2507.us.us.i, %..loopexit2502_crit_edge.us.us.us.i.us
  %indvars.iv3287.i.us = phi i64 [ %indvars.iv.next3288.i.us, %..loopexit2502_crit_edge.us.us.us.i.us ], [ 0, %.preheader2507.us.us.i ] ; 3 uses
  %.72601.us.us.us.i.us = phi <4 x float> [ %.102325.us.us.us.i.us, %..loopexit2502_crit_edge.us.us.us.i.us ], [ %.623222627.us.us.i, %.preheader2507.us.us.i ] ; 3 uses
  %.623352600.us.us.us.i.us = phi <4 x float> [ %.92338.us.us.us.i.us, %..loopexit2502_crit_edge.us.us.us.i.us ], [ %.523342626.us.us.i, %.preheader2507.us.us.i ] ; 3 uses
  %.623502599.us.us.us.i.us = phi <4 x float> [ %.92353.us.us.us.i.us, %..loopexit2502_crit_edge.us.us.us.i.us ], [ %.523492625.us.us.i, %.preheader2507.us.us.i ] ; 3 uses
  %.623602598.us.us.us.i.us = phi <4 x float> [ %.92363.us.us.us.i.us, %..loopexit2502_crit_edge.us.us.us.i.us ], [ %.523592624.us.us.i, %.preheader2507.us.us.i ] ; 3 uses
  %i.wt = trunc i64 %indvars.iv3287.i.us to i32
  %i.wu = mul i32 %i.vq, %i.wt
  %.reass2609.us.us.us.i.us = add i32 %i.wu, %invariant.op2608.i ; 3 uses
  %i.wv = icmp slt i32 %.reass2609.us.us.us.i.us, 0
  br i1 %i.wv, label %..loopexit2502_crit_edge.us.us.us.i.us, label %bb.bf

bb.bf:                                            ; preds = %.preheader2507.us.us.i.split.us
  %i.ww = srem i32 %.reass2609.us.us.us.i.us, %i.vs
  %i.wx = sdiv exact i32 %.reass2609.us.us.us.i.us, %i.vs ; 2 uses
  %.not930.us.us.us.i.us = icmp eq i32 %i.ww, 0
  %.not931.us.us.us.i.us = icmp slt i32 %i.wx, %i.lk
  %or.cond413 = select i1 %.not930.us.us.us.i.us, i1 %.not931.us.us.us.i.us, i1 false
  br i1 %or.cond413, label %.preheader2501.us.us.us.i.us, label %..loopexit2502_crit_edge.us.us.us.i.us

.preheader2501.us.us.us.i.us:                     ; preds = %bb.bf
  %i.wy = mul nuw nsw i64 %indvars.iv3287.i.us, %i.wm
  %i.wz = sext i32 %i.wx to i64
  br label %.lr.ph.split.us.us.us.us.i.us

.lr.ph.split.us.us.us.us.i.us:                    ; preds = %.preheader2501.us.us.us.i.us, %bb.bh
  %indvars.iv3282.i.us = phi i64 [ %indvars.iv.next3283.i.us, %bb.bh ], [ 0, %.preheader2501.us.us.us.i.us ] ; 3 uses
  %.823232566.us.us.us.us.i.us = phi <4 x float> [ %.92324.us.us.us.us.i.us, %bb.bh ], [ %.72601.us.us.us.i.us, %.preheader2501.us.us.us.i.us ] ; 3 uses
  %.723362565.us.us.us.us.i.us = phi <4 x float> [ %.82337.us.us.us.us.i.us, %bb.bh ], [ %.623352600.us.us.us.i.us, %.preheader2501.us.us.us.i.us ] ; 3 uses
  %.723512564.us.us.us.us.i.us = phi <4 x float> [ %.82352.us.us.us.us.i.us, %bb.bh ], [ %.623502599.us.us.us.i.us, %.preheader2501.us.us.us.i.us ] ; 3 uses
  %.723612563.us.us.us.us.i.us = phi <4 x float> [ %.82362.us.us.us.us.i.us, %bb.bh ], [ %.623602598.us.us.us.i.us, %.preheader2501.us.us.us.i.us ] ; 3 uses
  %i.xa = trunc i64 %indvars.iv3282.i.us to i32
  %i.xb = mul i32 %i.vu, %i.xa
  %.reass.us.us2610.us.us.i.us = add i32 %i.xb, %invariant.op2572.i ; 3 uses
  %i.xc = icmp slt i32 %.reass.us.us2610.us.us.i.us, 0
  br i1 %i.xc, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph.split.us.us.us.us.i.us
  %i.xd = srem i32 %.reass.us.us2610.us.us.i.us, %i.vw
  %i.xe = sdiv exact i32 %.reass.us.us2610.us.us.i.us, %i.vw ; 2 uses
  %.not932.us.us.us.us.i.us = icmp eq i32 %i.xd, 0
  %.not933.us.us.us.us.i.us = icmp slt i32 %i.xe, %i.lj
  %or.cond414 = select i1 %.not932.us.us.us.us.i.us, i1 %.not933.us.us.us.us.i.us, i1 false
  br i1 %or.cond414, label %_ZN4ncnn3MatD2Ev.exit965.us.us.us.us.i.us, label %bb.bh

_ZN4ncnn3MatD2Ev.exit965.us.us.us.us.i.us:        ; preds = %bb.bg
  %i.xf = add nuw nsw i64 %indvars.iv3282.i.us, %i.wy
  %i.xg = shl i64 %i.xf, 4
  %i.xh = and i64 %i.xg, 4294967280
  %i.xi = getelementptr inbounds nuw [4 x i8], ptr %.17522629.us.us.i, i64 %i.xh ; 4 uses
  %i.xj = load i32, ptr %i.ag, align 4, !tbaa !54, !noalias !428
  %i.xk = load ptr, ptr %1, align 8, !tbaa !20, !noalias !428
  %i.xl = load i64, ptr %i.jt, align 8, !tbaa !21, !noalias !428
  %i.xm = mul i64 %i.xl, %i.ws
  %i.xn = load i64, ptr %i.ai, align 8, !tbaa !55, !noalias !428 ; 2 uses
  %i.xo = mul i64 %i.xm, %i.xn
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xk, i64 %i.xo
  %i.xq = sext i32 %i.xj to i64
  %i.xr = mul nsw i64 %i.xq, %i.wz
  %i.xs = mul i64 %i.xr, %i.xn
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xp, i64 %i.xs
  %i.xu = shl nsw i32 %i.xe, 2
  %i.xv = sext i32 %i.xu to i64
  %i.xw = getelementptr inbounds [4 x i8], ptr %i.xt, i64 %i.xv ; 4 uses
  %i.xx = load float, ptr %i.xw, align 1, !tbaa !82
  %i.xy = insertelement <4 x float> poison, float %i.xx, i64 0
  %i.xz = shufflevector <4 x float> %i.xy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xw, i64 4
  %i.yb = load float, ptr %i.ya, align 1, !tbaa !82
  %i.yc = insertelement <4 x float> poison, float %i.yb, i64 0
  %i.yd = shufflevector <4 x float> %i.yc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ye = getelementptr inbounds nuw i8, ptr %i.xw, i64 8
  %i.yf = load float, ptr %i.ye, align 1, !tbaa !82
  %i.yg = insertelement <4 x float> poison, float %i.yf, i64 0
  %i.yh = shufflevector <4 x float> %i.yg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.yi = getelementptr inbounds nuw i8, ptr %i.xw, i64 12
  %i.yj = load float, ptr %i.yi, align 1, !tbaa !82
  %i.yk = insertelement <4 x float> poison, float %i.yj, i64 0
  %i.yl = shufflevector <4 x float> %i.yk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ym = load <4 x float>, ptr %i.xi, align 16, !tbaa !82
  %i.yn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.xz, <4 x float> nofpclass(nan inf) %i.ym, <4 x float> nofpclass(nan inf) %.823232566.us.us.us.us.i.us)
  %i.yo = getelementptr inbounds nuw i8, ptr %i.xi, i64 16
  %i.yp = load <4 x float>, ptr %i.yo, align 16, !tbaa !82
  %i.yq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.yd, <4 x float> nofpclass(nan inf) %i.yp, <4 x float> nofpclass(nan inf) %.723362565.us.us.us.us.i.us)
  %i.yr = getelementptr inbounds nuw i8, ptr %i.xi, i64 32
  %i.ys = load <4 x float>, ptr %i.yr, align 16, !tbaa !82
  %i.yt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.yh, <4 x float> nofpclass(nan inf) %i.ys, <4 x float> nofpclass(nan inf) %.723512564.us.us.us.us.i.us)
  %i.yu = getelementptr inbounds nuw i8, ptr %i.xi, i64 48
  %i.yv = load <4 x float>, ptr %i.yu, align 16, !tbaa !82
  %i.yw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.yl, <4 x float> nofpclass(nan inf) %i.yv, <4 x float> nofpclass(nan inf) %.723612563.us.us.us.us.i.us)
  br label %bb.bh

bb.bh:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit965.us.us.us.us.i.us, %bb.bg, %.lr.ph.split.us.us.us.us.i.us
  %.82362.us.us.us.us.i.us = phi nsz <4 x float> [ %.723612563.us.us.us.us.i.us, %.lr.ph.split.us.us.us.us.i.us ], [ %.723612563.us.us.us.us.i.us, %bb.bg ], [ %i.yw, %_ZN4ncnn3MatD2Ev.exit965.us.us.us.us.i.us ] ; 2 uses
  %.82352.us.us.us.us.i.us = phi nsz <4 x float> [ %.723512564.us.us.us.us.i.us, %.lr.ph.split.us.us.us.us.i.us ], [ %.723512564.us.us.us.us.i.us, %bb.bg ], [ %i.yt, %_ZN4ncnn3MatD2Ev.exit965.us.us.us.us.i.us ] ; 2 uses
  %.82337.us.us.us.us.i.us = phi nsz <4 x float> [ %.723362565.us.us.us.us.i.us, %.lr.ph.split.us.us.us.us.i.us ], [ %.723362565.us.us.us.us.i.us, %bb.bg ], [ %i.yq, %_ZN4ncnn3MatD2Ev.exit965.us.us.us.us.i.us ] ; 2 uses
  %.92324.us.us.us.us.i.us = phi nsz <4 x float> [ %.823232566.us.us.us.us.i.us, %.lr.ph.split.us.us.us.us.i.us ], [ %.823232566.us.us.us.us.i.us, %bb.bg ], [ %i.yn, %_ZN4ncnn3MatD2Ev.exit965.us.us.us.us.i.us ] ; 2 uses
  %indvars.iv.next3283.i.us = add nuw nsw i64 %indvars.iv3282.i.us, 1 ; 2 uses
  %exitcond3286.not.i.us = icmp eq i64 %indvars.iv.next3283.i.us, %i.wm
  br i1 %exitcond3286.not.i.us, label %..loopexit2502_crit_edge.us.us.us.i.us, label %.lr.ph.split.us.us.us.us.i.us, !llvm.loop !340

..loopexit2502_crit_edge.us.us.us.i.us:           ; preds = %bb.bh, %bb.bf, %.preheader2507.us.us.i.split.us
  %.92363.us.us.us.i.us = phi nsz <4 x float> [ %.623602598.us.us.us.i.us, %.preheader2507.us.us.i.split.us ], [ %.623602598.us.us.us.i.us, %bb.bf ], [ %.82362.us.us.us.us.i.us, %bb.bh ] ; 2 uses
  %.92353.us.us.us.i.us = phi nsz <4 x float> [ %.623502599.us.us.us.i.us, %.preheader2507.us.us.i.split.us ], [ %.623502599.us.us.us.i.us, %bb.bf ], [ %.82352.us.us.us.us.i.us, %bb.bh ] ; 2 uses
  %.92338.us.us.us.i.us = phi nsz <4 x float> [ %.623352600.us.us.us.i.us, %.preheader2507.us.us.i.split.us ], [ %.623352600.us.us.us.i.us, %bb.bf ], [ %.82337.us.us.us.us.i.us, %bb.bh ] ; 2 uses
  %.102325.us.us.us.i.us = phi nsz <4 x float> [ %.72601.us.us.us.i.us, %.preheader2507.us.us.i.split.us ], [ %.72601.us.us.us.i.us, %bb.bf ], [ %.92324.us.us.us.us.i.us, %bb.bh ] ; 2 uses
  %indvars.iv.next3288.i.us = add nuw nsw i64 %indvars.iv3287.i.us, 1 ; 2 uses
  %exitcond3291.not.i.us = icmp eq i64 %indvars.iv.next3288.i.us, %wide.trip.count3269.i
  br i1 %exitcond3291.not.i.us, label %._crit_edge.split.us.us2644.us.i, label %.preheader2507.us.us.i.split.us, !llvm.loop !341

.preheader2507.us.us.i.split.us155:               ; preds = %.preheader2507.us.us.i, %..loopexit2502_crit_edge.us.us.us.i.us165
  %indvars.iv3287.i.us156 = phi i64 [ %indvars.iv.next3288.i.us170, %..loopexit2502_crit_edge.us.us.us.i.us165 ], [ 0, %.preheader2507.us.us.i ] ; 3 uses
  %.72601.us.us.us.i.us157 = phi <4 x float> [ %.102325.us.us.us.i.us169, %..loopexit2502_crit_edge.us.us.us.i.us165 ], [ %.623222627.us.us.i, %.preheader2507.us.us.i ] ; 3 uses
  %.623352600.us.us.us.i.us158 = phi <4 x float> [ %.92338.us.us.us.i.us168, %..loopexit2502_crit_edge.us.us.us.i.us165 ], [ %.523342626.us.us.i, %.preheader2507.us.us.i ] ; 3 uses
  %.623502599.us.us.us.i.us159 = phi <4 x float> [ %.92353.us.us.us.i.us167, %..loopexit2502_crit_edge.us.us.us.i.us165 ], [ %.523492625.us.us.i, %.preheader2507.us.us.i ] ; 3 uses
  %.623602598.us.us.us.i.us160 = phi <4 x float> [ %.92363.us.us.us.i.us166, %..loopexit2502_crit_edge.us.us.us.i.us165 ], [ %.523592624.us.us.i, %.preheader2507.us.us.i ] ; 3 uses
  %i.yx = trunc i64 %indvars.iv3287.i.us156 to i32
  %i.yy = mul i32 %i.vq, %i.yx
  %.reass2609.us.us.us.i.us161 = add i32 %i.yy, %invariant.op2608.i ; 3 uses
  %i.yz = icmp slt i32 %.reass2609.us.us.us.i.us161, 0
  br i1 %i.yz, label %..loopexit2502_crit_edge.us.us.us.i.us165, label %bb.bi

bb.bi:                                            ; preds = %.preheader2507.us.us.i.split.us155
  %i.za = srem i32 %.reass2609.us.us.us.i.us161, %i.vs
  %i.zb = sdiv exact i32 %.reass2609.us.us.us.i.us161, %i.vs ; 2 uses
  %.not930.us.us.us.i.us162 = icmp eq i32 %i.za, 0
  %.not931.us.us.us.i.us163 = icmp slt i32 %i.zb, %i.lk
  %or.cond415 = select i1 %.not930.us.us.us.i.us162, i1 %.not931.us.us.us.i.us163, i1 false
  br i1 %or.cond415, label %.preheader2501.us.us.us.i.us164, label %..loopexit2502_crit_edge.us.us.us.i.us165

.preheader2501.us.us.us.i.us164:                  ; preds = %bb.bi
  %i.zc = mul nuw nsw i64 %indvars.iv3287.i.us156, %i.wm
  %i.zd = sext i32 %i.zb to i64
  br label %.lr.ph.split.us2576.us.us.us.i.us

.lr.ph.split.us2576.us.us.us.i.us:                ; preds = %.preheader2501.us.us.us.i.us164, %bb.bk
  %indvars.iv3277.i.us = phi i64 [ %indvars.iv.next3278.i.us, %bb.bk ], [ 0, %.preheader2501.us.us.us.i.us164 ] ; 3 uses
  %.823232566.us2578.us.us.us.i.us = phi <4 x float> [ %.92324.us2588.us.us.us.i.us, %bb.bk ], [ %.72601.us.us.us.i.us157, %.preheader2501.us.us.us.i.us164 ] ; 3 uses
  %.723362565.us2579.us.us.us.i.us = phi <4 x float> [ %.82337.us2587.us.us.us.i.us, %bb.bk ], [ %.623352600.us.us.us.i.us158, %.preheader2501.us.us.us.i.us164 ] ; 3 uses
  %.723512564.us2580.us.us.us.i.us = phi <4 x float> [ %.82352.us2586.us.us.us.i.us, %bb.bk ], [ %.623502599.us.us.us.i.us159, %.preheader2501.us.us.us.i.us164 ] ; 3 uses
  %.723612563.us2581.us.us.us.i.us = phi <4 x float> [ %.82362.us2585.us.us.us.i.us, %bb.bk ], [ %.623602598.us.us.us.i.us160, %.preheader2501.us.us.us.i.us164 ] ; 3 uses
  %i.ze = trunc i64 %indvars.iv3277.i.us to i32
  %i.zf = mul i32 %i.vu, %i.ze
  %.reass.us2582.us.us.us.i.us = add i32 %i.zf, %invariant.op2572.i ; 3 uses
  %i.zg = icmp slt i32 %.reass.us2582.us.us.us.i.us, 0
  br i1 %i.zg, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph.split.us2576.us.us.us.i.us
  %i.zh = srem i32 %.reass.us2582.us.us.us.i.us, %i.vw
  %i.zi = sdiv exact i32 %.reass.us2582.us.us.us.i.us, %i.vw ; 2 uses
  %.not932.us2583.us.us.us.i.us = icmp eq i32 %i.zh, 0
  %.not933.us2584.us.us.us.i.us = icmp slt i32 %i.zi, %i.lj
  %or.cond416 = select i1 %.not932.us2583.us.us.us.i.us, i1 %.not933.us2584.us.us.us.i.us, i1 false
  br i1 %or.cond416, label %_ZN4ncnn3MatD2Ev.exit964.us.us.us.us.i.us, label %bb.bk

_ZN4ncnn3MatD2Ev.exit964.us.us.us.us.i.us:        ; preds = %bb.bj
  %i.zj = add nuw nsw i64 %indvars.iv3277.i.us, %i.zc
  %i.zk = shl i64 %i.zj, 4
  %i.zl = and i64 %i.zk, 4294967280
  %i.zm = getelementptr inbounds nuw [4 x i8], ptr %.17522629.us.us.i, i64 %i.zl ; 4 uses
  %i.zn = load i32, ptr %i.ag, align 4, !tbaa !54, !noalias !429
  %i.zo = load ptr, ptr %1, align 8, !tbaa !20, !noalias !429 ; 4 uses
  %i.zp = load i64, ptr %i.jt, align 8, !tbaa !21, !noalias !429
  %i.zq = load i64, ptr %i.ai, align 8, !tbaa !55, !noalias !429 ; 2 uses
  %i.zr = mul i64 %i.zq, %i.zp                    ; 4 uses
  %i.zs = mul i64 %i.zr, %indvars.iv3292.i
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zo, i64 %i.zs
  %i.zu = sext i32 %i.zn to i64
  %i.zv = mul nsw i64 %i.zu, %i.zd
  %i.zw = mul i64 %i.zv, %i.zq                    ; 4 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zt, i64 %i.zw
  %i.zy = sext i32 %i.zi to i64                   ; 4 uses
  %i.zz = getelementptr inbounds [4 x i8], ptr %i.zx, i64 %i.zy
  %i.aaa = load float, ptr %i.zz, align 4, !tbaa !39
  %i.aab = insertelement <4 x float> poison, float %i.aaa, i64 0
  %i.aac = shufflevector <4 x float> %i.aab, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aad = mul i64 %i.zr, %i.wq
  %i.aae = getelementptr inbounds nuw i8, ptr %i.zo, i64 %i.aad
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aae, i64 %i.zw
  %i.aag = getelementptr inbounds [4 x i8], ptr %i.aaf, i64 %i.zy
  %i.aah = load float, ptr %i.aag, align 4, !tbaa !39
  %i.aai = insertelement <4 x float> poison, float %i.aah, i64 0
  %i.aaj = shufflevector <4 x float> %i.aai, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aak = mul i64 %i.zr, %i.wr
  %i.aal = getelementptr inbounds nuw i8, ptr %i.zo, i64 %i.aak
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aal, i64 %i.zw
  %i.aan = getelementptr inbounds [4 x i8], ptr %i.aam, i64 %i.zy
  %i.aao = load float, ptr %i.aan, align 4, !tbaa !39
  %i.aap = insertelement <4 x float> poison, float %i.aao, i64 0
  %i.aaq = shufflevector <4 x float> %i.aap, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aar = mul i64 %i.zr, %i.wp
  %i.aas = getelementptr inbounds nuw i8, ptr %i.zo, i64 %i.aar
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aas, i64 %i.zw
  %i.aau = getelementptr inbounds [4 x i8], ptr %i.aat, i64 %i.zy
  %i.aav = load float, ptr %i.aau, align 4, !tbaa !39
  %i.aaw = insertelement <4 x float> poison, float %i.aav, i64 0
  %i.aax = shufflevector <4 x float> %i.aaw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aay = load <4 x float>, ptr %i.zm, align 16, !tbaa !82
  %i.aaz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aac, <4 x float> nofpclass(nan inf) %i.aay, <4 x float> nofpclass(nan inf) %.823232566.us2578.us.us.us.i.us)
  %i.aba = getelementptr inbounds nuw i8, ptr %i.zm, i64 16
  %i.abb = load <4 x float>, ptr %i.aba, align 16, !tbaa !82
  %i.abc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aaj, <4 x float> nofpclass(nan inf) %i.abb, <4 x float> nofpclass(nan inf) %.723362565.us2579.us.us.us.i.us)
  %i.abd = getelementptr inbounds nuw i8, ptr %i.zm, i64 32
  %i.abe = load <4 x float>, ptr %i.abd, align 16, !tbaa !82
  %i.abf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aaq, <4 x float> nofpclass(nan inf) %i.abe, <4 x float> nofpclass(nan inf) %.723512564.us2580.us.us.us.i.us)
  %i.abg = getelementptr inbounds nuw i8, ptr %i.zm, i64 48
  %i.abh = load <4 x float>, ptr %i.abg, align 16, !tbaa !82
  %i.abi = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aax, <4 x float> nofpclass(nan inf) %i.abh, <4 x float> nofpclass(nan inf) %.723612563.us2581.us.us.us.i.us)
  br label %bb.bk

bb.bk:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit964.us.us.us.us.i.us, %bb.bj, %.lr.ph.split.us2576.us.us.us.i.us
  %.82362.us2585.us.us.us.i.us = phi nsz <4 x float> [ %.723612563.us2581.us.us.us.i.us, %.lr.ph.split.us2576.us.us.us.i.us ], [ %i.abi, %_ZN4ncnn3MatD2Ev.exit964.us.us.us.us.i.us ], [ %.723612563.us2581.us.us.us.i.us, %bb.bj ] ; 2 uses
  %.82352.us2586.us.us.us.i.us = phi nsz <4 x float> [ %.723512564.us2580.us.us.us.i.us, %.lr.ph.split.us2576.us.us.us.i.us ], [ %i.abf, %_ZN4ncnn3MatD2Ev.exit964.us.us.us.us.i.us ], [ %.723512564.us2580.us.us.us.i.us, %bb.bj ] ; 2 uses
  %.82337.us2587.us.us.us.i.us = phi nsz <4 x float> [ %.723362565.us2579.us.us.us.i.us, %.lr.ph.split.us2576.us.us.us.i.us ], [ %i.abc, %_ZN4ncnn3MatD2Ev.exit964.us.us.us.us.i.us ], [ %.723362565.us2579.us.us.us.i.us, %bb.bj ] ; 2 uses
  %.92324.us2588.us.us.us.i.us = phi nsz <4 x float> [ %.823232566.us2578.us.us.us.i.us, %.lr.ph.split.us2576.us.us.us.i.us ], [ %i.aaz, %_ZN4ncnn3MatD2Ev.exit964.us.us.us.us.i.us ], [ %.823232566.us2578.us.us.us.i.us, %bb.bj ] ; 2 uses
  %indvars.iv.next3278.i.us = add nuw nsw i64 %indvars.iv3277.i.us, 1 ; 2 uses
  %exitcond3281.not.i.us = icmp eq i64 %indvars.iv.next3278.i.us, %i.wm
  br i1 %exitcond3281.not.i.us, label %..loopexit2502_crit_edge.us.us.us.i.us165, label %.lr.ph.split.us2576.us.us.us.i.us, !llvm.loop !340

..loopexit2502_crit_edge.us.us.us.i.us165:        ; preds = %bb.bk, %bb.bi, %.preheader2507.us.us.i.split.us155
  %.92363.us.us.us.i.us166 = phi nsz <4 x float> [ %.623602598.us.us.us.i.us160, %.preheader2507.us.us.i.split.us155 ], [ %.623602598.us.us.us.i.us160, %bb.bi ], [ %.82362.us2585.us.us.us.i.us, %bb.bk ] ; 2 uses
  %.92353.us.us.us.i.us167 = phi nsz <4 x float> [ %.623502599.us.us.us.i.us159, %.preheader2507.us.us.i.split.us155 ], [ %.623502599.us.us.us.i.us159, %bb.bi ], [ %.82352.us2586.us.us.us.i.us, %bb.bk ] ; 2 uses
  %.92338.us.us.us.i.us168 = phi nsz <4 x float> [ %.623352600.us.us.us.i.us158, %.preheader2507.us.us.i.split.us155 ], [ %.623352600.us.us.us.i.us158, %bb.bi ], [ %.82337.us2587.us.us.us.i.us, %bb.bk ] ; 2 uses
  %.102325.us.us.us.i.us169 = phi nsz <4 x float> [ %.72601.us.us.us.i.us157, %.preheader2507.us.us.i.split.us155 ], [ %.72601.us.us.us.i.us157, %bb.bi ], [ %.92324.us2588.us.us.us.i.us, %bb.bk ] ; 2 uses
  %indvars.iv.next3288.i.us170 = add nuw nsw i64 %indvars.iv3287.i.us156, 1 ; 2 uses
  %exitcond3291.not.i.us171 = icmp eq i64 %indvars.iv.next3288.i.us170, %wide.trip.count3269.i
  br i1 %exitcond3291.not.i.us171, label %._crit_edge.split.us.us2644.us.i, label %.preheader2507.us.us.i.split.us155, !llvm.loop !341

._crit_edge.split.us.us2644.us.i:                 ; preds = %..loopexit2502_crit_edge.us.us.us.i.us165, %..loopexit2502_crit_edge.us.us.us.i.us, %.preheader2507.us.us.i
  %.us-phi = phi <4 x float> [ %.92363.us.us.us.i.us, %..loopexit2502_crit_edge.us.us.us.i.us ], [ %.523592624.us.us.i, %.preheader2507.us.us.i ], [ %.92363.us.us.us.i.us166, %..loopexit2502_crit_edge.us.us.us.i.us165 ] ; 2 uses
  %.us-phi152 = phi <4 x float> [ %.92353.us.us.us.i.us, %..loopexit2502_crit_edge.us.us.us.i.us ], [ %.523492625.us.us.i, %.preheader2507.us.us.i ], [ %.92353.us.us.us.i.us167, %..loopexit2502_crit_edge.us.us.us.i.us165 ] ; 2 uses
  %.us-phi153 = phi <4 x float> [ %.92338.us.us.us.i.us, %..loopexit2502_crit_edge.us.us.us.i.us ], [ %.523342626.us.us.i, %.preheader2507.us.us.i ], [ %.92338.us.us.us.i.us168, %..loopexit2502_crit_edge.us.us.us.i.us165 ] ; 2 uses
  %.us-phi154 = phi <4 x float> [ %.102325.us.us.us.i.us, %..loopexit2502_crit_edge.us.us.us.i.us ], [ %.623222627.us.us.i, %.preheader2507.us.us.i ], [ %.102325.us.us.us.i.us169, %..loopexit2502_crit_edge.us.us.us.i.us165 ] ; 2 uses
  %i.abj = getelementptr inbounds [4 x i8], ptr %.17522629.us.us.i, i64 %i.mx ; 2 uses
  %indvars.iv.next3293.i = add nuw nsw i64 %indvars.iv3292.i, 4 ; 3 uses
  %i.abk = or disjoint i64 %indvars.iv.next3293.i, 3 ; 2 uses
  %i.abl = trunc nuw i64 %i.abk to i32
  %i.abm = icmp sgt i32 %i.li, %i.abl
  br i1 %i.abm, label %.preheader2507.us.us.i, label %.preheader2510.loopexit.i, !llvm.loop !344

.preheader2510.loopexit.i:                        ; preds = %._crit_edge.split.us.us2644.us.i
  %i.abn = trunc nuw i64 %indvars.iv.next3293.i to i32
  br label %.preheader2510.i

.preheader2510.i:                                 ; preds = %.preheader2510.loopexit.i, %.preheader2507.us.preheader.i, %.preheader2507.preheader.i, %.preheader2511.i
  %.52359.lcssa.i = phi <4 x float> [ %.02354.lcssa.i, %.preheader2511.i ], [ %.us-phi, %.preheader2510.loopexit.i ], [ %.02354.lcssa.i, %.preheader2507.us.preheader.i ], [ %.02354.lcssa.i, %.preheader2507.preheader.i ]
  %.52349.lcssa.i = phi <4 x float> [ %.02344.lcssa.i, %.preheader2511.i ], [ %.us-phi152, %.preheader2510.loopexit.i ], [ %.02344.lcssa.i, %.preheader2507.us.preheader.i ], [ %.02344.lcssa.i, %.preheader2507.preheader.i ]
  %.52334.lcssa.i = phi <4 x float> [ %.02329.lcssa.i, %.preheader2511.i ], [ %.us-phi153, %.preheader2510.loopexit.i ], [ %.02329.lcssa.i, %.preheader2507.us.preheader.i ], [ %.02329.lcssa.i, %.preheader2507.preheader.i ] ; 4 uses
  %.62322.lcssa.i = phi <4 x float> [ %.12318.lcssa.i, %.preheader2511.i ], [ %.us-phi154, %.preheader2510.loopexit.i ], [ %.12318.lcssa.i, %.preheader2507.us.preheader.i ], [ %.12318.lcssa.i, %.preheader2507.preheader.i ] ; 4 uses
  %.1757.lcssa.i = phi i32 [ %.0756.lcssa.i, %.preheader2511.i ], [ %i.abn, %.preheader2510.loopexit.i ], [ %i.wl, %.preheader2507.us.preheader.i ], [ %i.wd, %.preheader2507.preheader.i ] ; 9 uses
  %.1752.lcssa.i = phi ptr [ %.0751.lcssa.i, %.preheader2511.i ], [ %i.abj, %.preheader2510.loopexit.i ], [ %scevgep3276.i, %.preheader2507.us.preheader.i ], [ %scevgep3274.i, %.preheader2507.preheader.i ] ; 4 uses
  %i.abo = or disjoint i32 %.1757.lcssa.i, 1      ; 2 uses
  %i.abp = icmp slt i32 %i.abo, %i.li
  br i1 %i.abp, label %.preheader2506.lr.ph.i, label %.preheader2509.i

.preheader2506.lr.ph.i:                           ; preds = %.preheader2510.i
  %i.abq = load i32, ptr %i.d, align 4
  %i.abr = load i32, ptr %i.j, align 4
  %invariant.op2669.i = sub i32 %.neg2466.i, %i.abr
  %i.abs = load i32, ptr %i.f, align 4            ; 2 uses
  %i.abt = load i32, ptr %i.a, align 4
  %.fr3166.i = freeze i32 %i.abt                  ; 2 uses
  %i.abu = load i32, ptr %i.c, align 4
  %i.abv = load i32, ptr %i.i, align 4
  %.neg2460.i = add nuw nsw i32 %.07482731.i, 1
  %invariant.op2662.i = sub i32 %.neg2460.i, %i.abv
  %i.abw = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.ms, label %.preheader2506.lr.ph.split.us.i, label %.preheader2506.preheader.i

.preheader2506.preheader.i:                       ; preds = %.preheader2506.lr.ph.i
  %i.abx = add i32 %.1757.lcssa.i, 3
  %smax3295.i = call i32 @llvm.smax.i32(i32 %i.li, i32 %i.abx)
  %reass.sub214 = sub i32 %smax3295.i, %.1757.lcssa.i
  %i.aby = add i32 %reass.sub214, -2              ; 2 uses
  %i.abz = lshr i32 %i.aby, 1
  %i.aca = zext nneg i32 %i.abz to i64
  %i.acb = shl nuw nsw i64 %i.aca, 2
  %i.acc = add nuw nsw i64 %i.acb, 4
  %i.acd = mul i64 %i.acc, %i.mz
  %scevgep3296.i = getelementptr i8, ptr %.1752.lcssa.i, i64 %i.acd
  %i.ace = add i32 %.1757.lcssa.i, 2
  %i.acf = and i32 %i.aby, -2
  %i.acg = add i32 %i.ace, %i.acf
  br label %.preheader2509.i

.preheader2506.lr.ph.split.us.i:                  ; preds = %.preheader2506.lr.ph.i
  %i.ach = icmp sgt i32 %.fr3166.i, 0
  br i1 %i.ach, label %.preheader2506.us.us.preheader.i, label %.preheader2506.us.preheader.i

.preheader2506.us.preheader.i:                    ; preds = %.preheader2506.lr.ph.split.us.i
  %i.aci = add i32 %.1757.lcssa.i, 3
  %smax3297.i = call i32 @llvm.smax.i32(i32 %i.li, i32 %i.aci)
  %reass.sub215 = sub i32 %smax3297.i, %.1757.lcssa.i
  %i.acj = add i32 %reass.sub215, -2              ; 2 uses
  %i.ack = lshr i32 %i.acj, 1
  %i.acl = zext nneg i32 %i.ack to i64
  %i.acm = shl nuw nsw i64 %i.acl, 2
  %i.acn = add nuw nsw i64 %i.acm, 4
  %i.aco = mul i64 %i.acn, %i.mz
  %scevgep3298.i = getelementptr i8, ptr %.1752.lcssa.i, i64 %i.aco
  %i.acp = add i32 %.1757.lcssa.i, 2
  %i.acq = and i32 %i.acj, -2
  %i.acr = add i32 %i.acp, %i.acq
  br label %.preheader2509.i

.preheader2506.us.us.preheader.i:                 ; preds = %.preheader2506.lr.ph.split.us.i
  %i.acs = zext nneg i32 %.fr3166.i to i64        ; 2 uses
  %i.act = zext i32 %.1757.lcssa.i to i64
  %i.acu = zext nneg i32 %i.abo to i64
  br label %.preheader2506.us.us.i

.preheader2506.us.us.i:                           ; preds = %._crit_edge.split.us.us2691.us.i, %.preheader2506.us.us.preheader.i
  %indvars.iv3309.i = phi i64 [ %i.act, %.preheader2506.us.us.preheader.i ], [ %indvars.iv.next3310.i, %._crit_edge.split.us.us2691.us.i ] ; 2 uses
  %i.acv = phi i64 [ %i.acu, %.preheader2506.us.us.preheader.i ], [ %i.aep, %._crit_edge.split.us.us2691.us.i ]
  %.27532677.us.us.i = phi ptr [ %.1752.lcssa.i, %.preheader2506.us.us.preheader.i ], [ %i.aeo, %._crit_edge.split.us.us2691.us.i ] ; 2 uses
  %.1123262675.us.us.i = phi <4 x float> [ %.62322.lcssa.i, %.preheader2506.us.us.preheader.i ], [ %.152328.us.us.us.i, %._crit_edge.split.us.us2691.us.i ]
  %.1023392674.us.us.i = phi <4 x float> [ %.52334.lcssa.i, %.preheader2506.us.us.preheader.i ], [ %.142343.us.us.us.i, %._crit_edge.split.us.us2691.us.i ]
  br label %bb.bl

bb.bl:                                            ; preds = %..loopexit2500_crit_edge.us.us.us.i, %.preheader2506.us.us.i
  %indvars.iv3304.i = phi i64 [ %indvars.iv.next3305.i, %..loopexit2500_crit_edge.us.us.us.i ], [ 0, %.preheader2506.us.us.i ] ; 3 uses
  %.122664.us.us.us.i = phi <4 x float> [ %.152328.us.us.us.i, %..loopexit2500_crit_edge.us.us.us.i ], [ %.1123262675.us.us.i, %.preheader2506.us.us.i ] ; 3 uses
  %.1123402663.us.us.us.i = phi <4 x float> [ %.142343.us.us.us.i, %..loopexit2500_crit_edge.us.us.us.i ], [ %.1023392674.us.us.i, %.preheader2506.us.us.i ] ; 3 uses
  %i.acw = trunc i64 %indvars.iv3304.i to i32
  %i.acx = mul i32 %i.abq, %i.acw
  %.reass2670.us.us.us.i = add i32 %i.acx, %invariant.op2669.i ; 3 uses
  %i.acy = icmp slt i32 %.reass2670.us.us.us.i, 0
  br i1 %i.acy, label %..loopexit2500_crit_edge.us.us.us.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.acz = srem i32 %.reass2670.us.us.us.i, %i.abs
  %i.ada = sdiv exact i32 %.reass2670.us.us.us.i, %i.abs ; 2 uses
  %.not926.us.us.us.i = icmp eq i32 %i.acz, 0
  %.not927.us.us.us.i = icmp slt i32 %i.ada, %i.lk
  %or.cond417 = select i1 %.not926.us.us.us.i, i1 %.not927.us.us.us.i, i1 false
  br i1 %or.cond417, label %.preheader2499.us.us.us.i, label %..loopexit2500_crit_edge.us.us.us.i

.preheader2499.us.us.us.i:                        ; preds = %bb.bm
  %i.adb = mul nuw nsw i64 %indvars.iv3304.i, %i.acs
  %i.adc = sext i32 %i.ada to i64
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bp, %.preheader2499.us.us.us.i
  %indvars.iv3299.i = phi i64 [ %indvars.iv.next3300.i, %bb.bp ], [ 0, %.preheader2499.us.us.us.i ] ; 3 uses
  %.1323272658.us.us.us.i = phi <4 x float> [ %.14.us.us.us.i, %bb.bp ], [ %.122664.us.us.us.i, %.preheader2499.us.us.us.i ] ; 3 uses
  %.1223412657.us.us.us.i = phi <4 x float> [ %.132342.us.us.us.i, %bb.bp ], [ %.1123402663.us.us.us.i, %.preheader2499.us.us.us.i ] ; 3 uses
  %i.add = trunc i64 %indvars.iv3299.i to i32
  %i.ade = mul i32 %i.abu, %i.add
  %.reass.us.us2690.us.i = add i32 %invariant.op2662.i, %i.ade ; 3 uses
  %i.adf = icmp slt i32 %.reass.us.us2690.us.i, 0
  br i1 %i.adf, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.adg = srem i32 %.reass.us.us2690.us.i, %i.abw
  %i.adh = sdiv exact i32 %.reass.us.us2690.us.i, %i.abw ; 2 uses
  %.not928.us.us.us.i = icmp eq i32 %i.adg, 0
  %.not929.us.us.us.i = icmp slt i32 %i.adh, %i.lj
  %or.cond418 = select i1 %.not928.us.us.us.i, i1 %.not929.us.us.us.i, i1 false
  br i1 %or.cond418, label %_ZN4ncnn3MatD2Ev.exit960.us.us.us.i, label %bb.bp

_ZN4ncnn3MatD2Ev.exit960.us.us.us.i:              ; preds = %bb.bo
  %i.adi = add nuw nsw i64 %indvars.iv3299.i, %i.adb
  %i.adj = shl i64 %i.adi, 3
  %i.adk = and i64 %i.adj, 4294967288
  %i.adl = getelementptr inbounds nuw [4 x i8], ptr %.27532677.us.us.i, i64 %i.adk ; 2 uses
  %i.adm = load i32, ptr %i.ag, align 4, !tbaa !54, !noalias !430
  %i.adn = load ptr, ptr %1, align 8, !tbaa !20, !noalias !430 ; 2 uses
  %i.ado = load i64, ptr %i.jt, align 8, !tbaa !21, !noalias !430
  %i.adp = load i64, ptr %i.ai, align 8, !tbaa !55, !noalias !430 ; 2 uses
  %i.adq = mul i64 %i.adp, %i.ado                 ; 2 uses
  %i.adr = mul i64 %i.adq, %indvars.iv3309.i
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adn, i64 %i.adr
  %i.adt = sext i32 %i.adm to i64
  %i.adu = mul nsw i64 %i.adt, %i.adc
  %i.adv = mul i64 %i.adu, %i.adp                 ; 2 uses
  %i.adw = getelementptr inbounds nuw i8, ptr %i.ads, i64 %i.adv
  %i.adx = sext i32 %i.adh to i64                 ; 2 uses
  %i.ady = getelementptr inbounds [4 x i8], ptr %i.adw, i64 %i.adx
  %i.adz = mul i64 %i.adq, %i.acv
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adn, i64 %i.adz
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.aea, i64 %i.adv
  %i.aec = getelementptr inbounds [4 x i8], ptr %i.aeb, i64 %i.adx
  %i.aed = load float, ptr %i.ady, align 4, !tbaa !39
  %i.aee = insertelement <4 x float> poison, float %i.aed, i64 0
  %i.aef = shufflevector <4 x float> %i.aee, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aeg = load float, ptr %i.aec, align 4, !tbaa !39
  %i.aeh = insertelement <4 x float> poison, float %i.aeg, i64 0
  %i.aei = shufflevector <4 x float> %i.aeh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aej = load <4 x float>, ptr %i.adl, align 16, !tbaa !82
  %i.aek = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aef, <4 x float> nofpclass(nan inf) %i.aej, <4 x float> nofpclass(nan inf) %.1323272658.us.us.us.i)
  %i.ael = getelementptr inbounds nuw i8, ptr %i.adl, i64 16
  %i.aem = load <4 x float>, ptr %i.ael, align 16, !tbaa !82
  %i.aen = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aei, <4 x float> nofpclass(nan inf) %i.aem, <4 x float> nofpclass(nan inf) %.1223412657.us.us.us.i)
  br label %bb.bp

bb.bp:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit960.us.us.us.i, %bb.bo, %bb.bn
  %.132342.us.us.us.i = phi nsz <4 x float> [ %.1223412657.us.us.us.i, %bb.bn ], [ %i.aen, %_ZN4ncnn3MatD2Ev.exit960.us.us.us.i ], [ %.1223412657.us.us.us.i, %bb.bo ] ; 2 uses
  %.14.us.us.us.i = phi nsz <4 x float> [ %.1323272658.us.us.us.i, %bb.bn ], [ %i.aek, %_ZN4ncnn3MatD2Ev.exit960.us.us.us.i ], [ %.1323272658.us.us.us.i, %bb.bo ] ; 2 uses
  %indvars.iv.next3300.i = add nuw nsw i64 %indvars.iv3299.i, 1 ; 2 uses
  %exitcond3303.not.i = icmp eq i64 %indvars.iv.next3300.i, %i.acs
  br i1 %exitcond3303.not.i, label %..loopexit2500_crit_edge.us.us.us.i, label %bb.bn, !llvm.loop !347

..loopexit2500_crit_edge.us.us.us.i:              ; preds = %bb.bp, %bb.bm, %bb.bl
  %.142343.us.us.us.i = phi nsz <4 x float> [ %.1123402663.us.us.us.i, %bb.bl ], [ %.1123402663.us.us.us.i, %bb.bm ], [ %.132342.us.us.us.i, %bb.bp ] ; 3 uses
  %.152328.us.us.us.i = phi nsz <4 x float> [ %.122664.us.us.us.i, %bb.bl ], [ %.122664.us.us.us.i, %bb.bm ], [ %.14.us.us.us.i, %bb.bp ] ; 3 uses
  %indvars.iv.next3305.i = add nuw nsw i64 %indvars.iv3304.i, 1 ; 2 uses
  %exitcond3308.not.i = icmp eq i64 %indvars.iv.next3305.i, %wide.trip.count3269.i
  br i1 %exitcond3308.not.i, label %._crit_edge.split.us.us2691.us.i, label %bb.bl, !llvm.loop !348

._crit_edge.split.us.us2691.us.i:                 ; preds = %..loopexit2500_crit_edge.us.us.us.i
  %i.aeo = getelementptr inbounds [4 x i8], ptr %.27532677.us.us.i, i64 %i.mz ; 2 uses
  %indvars.iv.next3310.i = add nuw nsw i64 %indvars.iv3309.i, 2 ; 3 uses
  %i.aep = or disjoint i64 %indvars.iv.next3310.i, 1 ; 2 uses
  %i.aeq = trunc nuw i64 %i.aep to i32
  %i.aer = icmp sgt i32 %i.li, %i.aeq
  br i1 %i.aer, label %.preheader2506.us.us.i, label %.preheader2509.loopexit.i, !llvm.loop !349

.preheader2509.loopexit.i:                        ; preds = %._crit_edge.split.us.us2691.us.i
  %i.aes = trunc nuw i64 %indvars.iv.next3310.i to i32
  br label %.preheader2509.i

.preheader2509.i:                                 ; preds = %.preheader2509.loopexit.i, %.preheader2506.us.preheader.i, %.preheader2506.preheader.i, %.preheader2510.i
  %.102339.lcssa.i = phi <4 x float> [ %.52334.lcssa.i, %.preheader2510.i ], [ %.142343.us.us.us.i, %.preheader2509.loopexit.i ], [ %.52334.lcssa.i, %.preheader2506.us.preheader.i ], [ %.52334.lcssa.i, %.preheader2506.preheader.i ]
  %.112326.lcssa.i = phi <4 x float> [ %.62322.lcssa.i, %.preheader2510.i ], [ %.152328.us.us.us.i, %.preheader2509.loopexit.i ], [ %.62322.lcssa.i, %.preheader2506.us.preheader.i ], [ %.62322.lcssa.i, %.preheader2506.preheader.i ] ; 3 uses
  %.2758.lcssa.i = phi i32 [ %.1757.lcssa.i, %.preheader2510.i ], [ %i.aes, %.preheader2509.loopexit.i ], [ %i.acr, %.preheader2506.us.preheader.i ], [ %i.acg, %.preheader2506.preheader.i ] ; 2 uses
  %.2753.lcssa.i = phi ptr [ %.1752.lcssa.i, %.preheader2510.i ], [ %i.aeo, %.preheader2509.loopexit.i ], [ %scevgep3298.i, %.preheader2506.us.preheader.i ], [ %scevgep3296.i, %.preheader2506.preheader.i ]
  %i.aet = icmp slt i32 %.2758.lcssa.i, %i.li
  br i1 %i.aet, label %.preheader2505.lr.ph.i, label %._crit_edge2717.i

.preheader2505.lr.ph.i:                           ; preds = %.preheader2509.i
  %i.aeu = load i32, ptr %i.d, align 4
  %i.aev = load i32, ptr %i.j, align 4
  %invariant.op2709.i = sub i32 %.neg2466.i, %i.aev
  %i.aew = load i32, ptr %i.f, align 4            ; 2 uses
  %i.aex = load i32, ptr %i.a, align 4
  %.fr3167.i = freeze i32 %i.aex                  ; 2 uses
  %i.aey = load i32, ptr %i.c, align 4
  %i.aez = load i32, ptr %i.i, align 4
  %.neg2456.i = add nuw nsw i32 %.07482731.i, 1
  %invariant.op2704.i = sub i32 %.neg2456.i, %i.aez
  %i.afa = load i32, ptr %i.e, align 4            ; 2 uses
  %i.afb = icmp sgt i32 %.fr3167.i, 0
  %or.cond.i = and i1 %i.ms, %i.afb
  br i1 %or.cond.i, label %.preheader2505.us.us.preheader.i, label %._crit_edge2717.i

.preheader2505.us.us.preheader.i:                 ; preds = %.preheader2505.lr.ph.i
  %i.afc = zext nneg i32 %.fr3167.i to i64        ; 2 uses
  %i.afd = zext i32 %.2758.lcssa.i to i64
  br label %.preheader2505.us.us.i

.preheader2505.us.us.i:                           ; preds = %._crit_edge.split.us.us2727.us.i, %.preheader2505.us.us.preheader.i
  %indvars.iv3322.i = phi i64 [ %i.afd, %.preheader2505.us.us.preheader.i ], [ %indvars.iv.next3323.i, %._crit_edge.split.us.us2727.us.i ] ; 2 uses
  %.37542715.us.us.i = phi ptr [ %.2753.lcssa.i, %.preheader2505.us.us.preheader.i ], [ %i.agm, %._crit_edge.split.us.us2727.us.i ] ; 2 uses
  %.162713.us.us.i = phi <4 x float> [ %.112326.lcssa.i, %.preheader2505.us.us.preheader.i ], [ %.20.us.us.us.i, %._crit_edge.split.us.us2727.us.i ]
  br label %bb.bq

bb.bq:                                            ; preds = %..loopexit2498_crit_edge.us.us.us.i, %.preheader2505.us.us.i
  %indvars.iv3317.i = phi i64 [ %indvars.iv.next3318.i, %..loopexit2498_crit_edge.us.us.us.i ], [ 0, %.preheader2505.us.us.i ] ; 3 uses
  %.172705.us.us.us.i = phi <4 x float> [ %.20.us.us.us.i, %..loopexit2498_crit_edge.us.us.us.i ], [ %.162713.us.us.i, %.preheader2505.us.us.i ] ; 3 uses
  %i.afe = trunc i64 %indvars.iv3317.i to i32
  %i.aff = mul i32 %i.aeu, %i.afe
  %.reass2710.us.us.us.i = add i32 %i.aff, %invariant.op2709.i ; 3 uses
  %i.afg = icmp slt i32 %.reass2710.us.us.us.i, 0
  br i1 %i.afg, label %..loopexit2498_crit_edge.us.us.us.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.afh = srem i32 %.reass2710.us.us.us.i, %i.aew
  %i.afi = sdiv exact i32 %.reass2710.us.us.us.i, %i.aew ; 2 uses
  %.not922.us.us.us.i = icmp eq i32 %i.afh, 0
  %.not923.us.us.us.i = icmp slt i32 %i.afi, %i.lk
  %or.cond419 = select i1 %.not922.us.us.us.i, i1 %.not923.us.us.us.i, i1 false
  br i1 %or.cond419, label %.preheader2497.us.us.us.i, label %..loopexit2498_crit_edge.us.us.us.i

.preheader2497.us.us.us.i:                        ; preds = %bb.br
  %i.afj = mul nuw nsw i64 %indvars.iv3317.i, %i.afc
  %i.afk = sext i32 %i.afi to i64
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bu, %.preheader2497.us.us.us.i
  %indvars.iv3312.i = phi i64 [ %indvars.iv.next3313.i, %bb.bu ], [ 0, %.preheader2497.us.us.us.i ] ; 3 uses
  %.182701.us.us.us.i = phi <4 x float> [ %.19.us.us.us.i, %bb.bu ], [ %.172705.us.us.us.i, %.preheader2497.us.us.us.i ] ; 3 uses
  %i.afl = trunc i64 %indvars.iv3312.i to i32
  %i.afm = mul i32 %i.aey, %i.afl
  %.reass.us.us2726.us.i = add i32 %invariant.op2704.i, %i.afm ; 3 uses
  %i.afn = icmp slt i32 %.reass.us.us2726.us.i, 0
  br i1 %i.afn, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.afo = srem i32 %.reass.us.us2726.us.i, %i.afa
  %i.afp = sdiv exact i32 %.reass.us.us2726.us.i, %i.afa ; 2 uses
  %.not924.us.us.us.i = icmp eq i32 %i.afo, 0
  %.not925.us.us.us.i = icmp slt i32 %i.afp, %i.lj
  %or.cond420 = select i1 %.not924.us.us.us.i, i1 %.not925.us.us.us.i, i1 false
  br i1 %or.cond420, label %_ZN4ncnn3MatD2Ev.exit958.us.us.us.i, label %bb.bu

_ZN4ncnn3MatD2Ev.exit958.us.us.us.i:              ; preds = %bb.bt
  %i.afq = add nuw nsw i64 %indvars.iv3312.i, %i.afj
  %i.afr = shl i64 %i.afq, 2
  %i.afs = and i64 %i.afr, 4294967292
  %i.aft = getelementptr inbounds nuw [4 x i8], ptr %.37542715.us.us.i, i64 %i.afs
  %i.afu = load i32, ptr %i.ag, align 4, !tbaa !54, !noalias !431
  %i.afv = load ptr, ptr %1, align 8, !tbaa !20, !noalias !431
  %i.afw = load i64, ptr %i.jt, align 8, !tbaa !21, !noalias !431
  %i.afx = mul i64 %i.afw, %indvars.iv3322.i
  %i.afy = load i64, ptr %i.ai, align 8, !tbaa !55, !noalias !431 ; 2 uses
  %i.afz = mul i64 %i.afx, %i.afy
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afv, i64 %i.afz
  %i.agb = sext i32 %i.afu to i64
  %i.agc = mul nsw i64 %i.agb, %i.afk
  %i.agd = mul i64 %i.agc, %i.afy
  %i.age = getelementptr inbounds nuw i8, ptr %i.aga, i64 %i.agd
  %i.agf = sext i32 %i.afp to i64
  %i.agg = getelementptr inbounds [4 x i8], ptr %i.age, i64 %i.agf
  %i.agh = load float, ptr %i.agg, align 4, !tbaa !39
  %i.agi = insertelement <4 x float> poison, float %i.agh, i64 0
  %i.agj = shufflevector <4 x float> %i.agi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.agk = load <4 x float>, ptr %i.aft, align 16, !tbaa !82
  %i.agl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.agj, <4 x float> nofpclass(nan inf) %i.agk, <4 x float> nofpclass(nan inf) %.182701.us.us.us.i)
  br label %bb.bu

bb.bu:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit958.us.us.us.i, %bb.bt, %bb.bs
  %.19.us.us.us.i = phi nsz <4 x float> [ %.182701.us.us.us.i, %bb.bs ], [ %i.agl, %_ZN4ncnn3MatD2Ev.exit958.us.us.us.i ], [ %.182701.us.us.us.i, %bb.bt ] ; 2 uses
  %indvars.iv.next3313.i = add nuw nsw i64 %indvars.iv3312.i, 1 ; 2 uses
  %exitcond3316.not.i = icmp eq i64 %indvars.iv.next3313.i, %i.afc
  br i1 %exitcond3316.not.i, label %..loopexit2498_crit_edge.us.us.us.i, label %bb.bs, !llvm.loop !352

..loopexit2498_crit_edge.us.us.us.i:              ; preds = %bb.bu, %bb.br, %bb.bq
  %.20.us.us.us.i = phi nsz <4 x float> [ %.172705.us.us.us.i, %bb.bq ], [ %.172705.us.us.us.i, %bb.br ], [ %.19.us.us.us.i, %bb.bu ] ; 3 uses
  %indvars.iv.next3318.i = add nuw nsw i64 %indvars.iv3317.i, 1 ; 2 uses
  %exitcond3321.not.i = icmp eq i64 %indvars.iv.next3318.i, %wide.trip.count3269.i
  br i1 %exitcond3321.not.i, label %._crit_edge.split.us.us2727.us.i, label %bb.bq, !llvm.loop !353

._crit_edge.split.us.us2727.us.i:                 ; preds = %..loopexit2498_crit_edge.us.us.us.i
  %i.agm = getelementptr inbounds [4 x i8], ptr %.37542715.us.us.i, i64 %i.nb
  %indvars.iv.next3323.i = add nuw nsw i64 %indvars.iv3322.i, 1 ; 2 uses
  %i.agn = trunc nuw i64 %indvars.iv.next3323.i to i32
  %i.ago = icmp sgt i32 %i.li, %i.agn
  br i1 %i.ago, label %.preheader2505.us.us.i, label %._crit_edge2717.i, !llvm.loop !354

._crit_edge2717.i:                                ; preds = %._crit_edge.split.us.us2727.us.i, %.preheader2505.lr.ph.i, %.preheader2509.i
  %.16.lcssa.i = phi <4 x float> [ %.112326.lcssa.i, %.preheader2509.i ], [ %.112326.lcssa.i, %.preheader2505.lr.ph.i ], [ %.20.us.us.us.i, %._crit_edge.split.us.us2727.us.i ]
  %i.agp = fadd fast <4 x float> %.52349.lcssa.i, %.52359.lcssa.i
  %i.agq = fadd fast <4 x float> %i.agp, %.102339.lcssa.i
  %i.agr = fadd fast <4 x float> %i.agq, %.16.lcssa.i ; 10 uses
  switch i32 %i.mb, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i [
    i32 1, label %bb.bv
    i32 2, label %bb.bw
    i32 3, label %bb.bx
    i32 4, label %bb.by
    i32 5, label %bb.bz
    i32 6, label %bb.ca
  ]

bb.bv:                                            ; preds = %._crit_edge2717.i
  %i.ags = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.agr, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i

bb.bw:                                            ; preds = %._crit_edge2717.i
  %i.agt = load ptr, ptr %i.iu, align 8, !tbaa !20
  %i.agu = load float, ptr %i.agt, align 4, !tbaa !39
  %i.agv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.agr)
  %i.agw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.agr)
  %i.agx = insertelement <4 x float> poison, float %i.agu, i64 0
  %i.agy = shufflevector <4 x float> %i.agx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.agz = fmul fast <4 x float> %i.agy, %i.agw
  %i.aha = fadd fast <4 x float> %i.agz, %i.agv
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i

bb.bx:                                            ; preds = %._crit_edge2717.i
  %i.ahb = load ptr, ptr %i.iu, align 8, !tbaa !20 ; 2 uses
  %i.ahc = load float, ptr %i.ahb, align 4, !tbaa !39
  %i.ahd = insertelement <4 x float> poison, float %i.ahc, i64 0
  %i.ahe = shufflevector <4 x float> %i.ahd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.ahb, i64 4
  %i.ahg = load float, ptr %i.ahf, align 4, !tbaa !39
  %i.ahh = insertelement <4 x float> poison, float %i.ahg, i64 0
  %i.ahi = shufflevector <4 x float> %i.ahh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ahj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.agr, <4 x float> nofpclass(nan inf) %i.ahe)
  %i.ahk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ahj, <4 x float> nofpclass(nan inf) %i.ahi)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i

bb.by:                                            ; preds = %._crit_edge2717.i
  %i.ahl = fneg fast <4 x float> %i.agr
  %i.ahm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ahl, <4 x float> splat (float f0x42B0C0A5))
  %i.ahn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ahm, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.aho = fmul fast <4 x float> %i.ahn, splat (float f0x3FB8AA3B)
  %i.ahp = fadd fast <4 x float> %i.aho, splat (float 5.000000e-01) ; 2 uses
  %i.ahq = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ahp)
  %i.ahr = sitofp fast <4 x i32> %i.ahq to <4 x float> ; 2 uses
  %i.ahs = fcmp fast olt <4 x float> %i.ahp, %i.ahr
  %i.aht = select <4 x i1> %i.ahs, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ahu = fsub fast <4 x float> %i.ahr, %i.aht   ; 2 uses
  %i.ahv = fneg fast <4 x float> %i.ahu           ; 2 uses
  %i.ahw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.ahv, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.ahn)
  %i.ahx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.ahv, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.ahw) ; 8 uses
  %i.ahy = fmul fast <4 x float> %i.ahx, %i.ahx
  %i.ahz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ahx, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.aia = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ahz, <4 x float> nofpclass(nan inf) %i.ahx, <4 x float> splat (float f0x3C088908))
  %i.aib = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aia, <4 x float> nofpclass(nan inf) %i.ahx, <4 x float> splat (float f0x3D2AA9C1))
  %i.aic = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aib, <4 x float> nofpclass(nan inf) %i.ahx, <4 x float> splat (float f0x3E2AAAAA))
  %i.aid = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aic, <4 x float> nofpclass(nan inf) %i.ahx, <4 x float> splat (float 5.000000e-01))
  %i.aie = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aid, <4 x float> nofpclass(nan inf) %i.ahy, <4 x float> nofpclass(nan inf) %i.ahx)
  %i.aif = fadd fast <4 x float> %i.aie, splat (float 1.000000e+00)
  %i.aig = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ahu)
  %i.aih = shl <4 x i32> %i.aig, splat (i32 23)
  %i.aii = add <4 x i32> %i.aih, splat (i32 1065353216)
  %i.aij = bitcast <4 x i32> %i.aii to <4 x float>
  %i.aik = fmul fast <4 x float> %i.aif, %i.aij
  %i.ail = fadd fast <4 x float> %i.aik, splat (float 1.000000e+00)
  %i.aim = fdiv fast <4 x float> splat (float 1.000000e+00), %i.ail
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i

bb.bz:                                            ; preds = %._crit_edge2717.i
  %i.ain = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.agr, <4 x float> splat (float f0x42B0C0A5))
  %i.aio = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ain, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.aip = fmul fast <4 x float> %i.aio, splat (float f0x3FB8AA3B)
  %i.aiq = fadd fast <4 x float> %i.aip, splat (float 5.000000e-01) ; 2 uses
  %i.air = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aiq)
  %i.ais = sitofp fast <4 x i32> %i.air to <4 x float> ; 2 uses
  %i.ait = fcmp fast olt <4 x float> %i.aiq, %i.ais
  %i.aiu = select <4 x i1> %i.ait, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.aiv = fsub fast <4 x float> %i.ais, %i.aiu   ; 2 uses
  %i.aiw = fneg fast <4 x float> %i.aiv           ; 2 uses
  %i.aix = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.aiw, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.aio)
  %i.aiy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.aiw, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.aix) ; 8 uses
  %i.aiz = fmul fast <4 x float> %i.aiy, %i.aiy
  %i.aja = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aiy, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.ajb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aja, <4 x float> nofpclass(nan inf) %i.aiy, <4 x float> splat (float f0x3C088908))
  %i.ajc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ajb, <4 x float> nofpclass(nan inf) %i.aiy, <4 x float> splat (float f0x3D2AA9C1))
  %i.ajd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ajc, <4 x float> nofpclass(nan inf) %i.aiy, <4 x float> splat (float f0x3E2AAAAA))
  %i.aje = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ajd, <4 x float> nofpclass(nan inf) %i.aiy, <4 x float> splat (float 5.000000e-01))
  %i.ajf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aje, <4 x float> nofpclass(nan inf) %i.aiz, <4 x float> nofpclass(nan inf) %i.aiy)
  %i.ajg = fadd fast <4 x float> %i.ajf, splat (float 1.000000e+00)
  %i.ajh = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aiv)
  %i.aji = shl <4 x i32> %i.ajh, splat (i32 23)
  %i.ajj = add <4 x i32> %i.aji, splat (i32 1065353216)
  %i.ajk = bitcast <4 x i32> %i.ajj to <4 x float>
  %i.ajl = fmul fast <4 x float> %i.ajg, %i.ajk
  %i.ajm = fadd fast <4 x float> %i.ajl, splat (float 1.000000e+00) ; 2 uses
  %i.ajn = fcmp fast ole <4 x float> %i.ajm, zeroinitializer
  %i.ajo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ajm, <4 x float> splat (float f0x00800000))
  %i.ajp = bitcast <4 x float> %i.ajo to <4 x i32> ; 2 uses
  %i.ajq = lshr <4 x i32> %i.ajp, splat (i32 23)
  %i.ajr = and <4 x i32> %i.ajp, splat (i32 -2139095041)
  %i.ajs = or disjoint <4 x i32> %i.ajr, splat (i32 1056964608)
  %i.ajt = bitcast <4 x i32> %i.ajs to <4 x float> ; 3 uses
  %i.aju = add nsw <4 x i32> %i.ajq, splat (i32 -127)
  %i.ajv = sitofp fast <4 x i32> %i.aju to <4 x float> ; 2 uses
  %i.ajw = fadd fast <4 x float> %i.ajv, splat (float 1.000000e+00)
  %i.ajx = fcmp fast olt <4 x float> %i.ajt, splat (float f0x3F3504F3) ; 2 uses
  %i.ajy = select <4 x i1> %i.ajx, <4 x float> %i.ajt, <4 x float> zeroinitializer
  %i.ajz = fadd fast <4 x float> %i.ajt, splat (float -1.000000e+00)
  %i.aka = select fast <4 x i1> %i.ajx, <4 x float> %i.ajv, <4 x float> %i.ajw ; 2 uses
  %i.akb = fadd fast <4 x float> %i.ajz, %i.ajy   ; 12 uses
  %i.akc = fmul fast <4 x float> %i.akb, %i.akb   ; 2 uses
  %i.akd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.akb, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.ake = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.akd, <4 x float> nofpclass(nan inf) %i.akb, <4 x float> splat (float f0x3DEF251A))
  %i.akf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ake, <4 x float> nofpclass(nan inf) %i.akb, <4 x float> splat (float f0xBDFE5D4F))
  %i.akg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.akf, <4 x float> nofpclass(nan inf) %i.akb, <4 x float> splat (float f0x3E11E9BF))
  %i.akh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.akg, <4 x float> nofpclass(nan inf) %i.akb, <4 x float> splat (float f0xBE2AAE50))
  %i.aki = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.akh, <4 x float> nofpclass(nan inf) %i.akb, <4 x float> splat (float f0x3E4CCEAC))
  %i.akj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aki, <4 x float> nofpclass(nan inf) %i.akb, <4 x float> splat (float f0xBE7FFFFC))
  %i.akk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.akj, <4 x float> nofpclass(nan inf) %i.akb, <4 x float> splat (float f0x3EAAAAAA))
  %i.akl = fmul fast <4 x float> %i.akc, %i.akb
  %i.akm = fmul fast <4 x float> %i.akl, %i.akk
  %i.akn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aka, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.akm)
  %i.ako = fneg fast <4 x float> %i.akc
  %i.akp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.ako, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.akn)
  %i.akq = fadd fast <4 x float> %i.akp, %i.akb
  %i.akr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aka, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.akq)
  %.neg.i = fmul fast <4 x float> %i.akr, splat (float -2.000000e+00)
  %i.aks = select fast <4 x i1> %i.ajn, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg.i
  %i.akt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.aks, <4 x float> splat (float f0x42B0C0A5))
  %i.aku = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.akt, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.akv = fmul fast <4 x float> %i.aku, splat (float f0x3FB8AA3B)
  %i.akw = fadd fast <4 x float> %i.akv, splat (float 5.000000e-01) ; 2 uses
  %i.akx = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.akw)
  %i.aky = sitofp fast <4 x i32> %i.akx to <4 x float> ; 2 uses
  %i.akz = fcmp fast olt <4 x float> %i.akw, %i.aky
  %i.ala = select <4 x i1> %i.akz, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.alb = fsub fast <4 x float> %i.aky, %i.ala   ; 2 uses
  %i.alc = fneg fast <4 x float> %i.alb           ; 2 uses
  %i.ald = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.alc, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.aku)
  %i.ale = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.alc, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.ald) ; 8 uses
  %i.alf = fmul fast <4 x float> %i.ale, %i.ale
  %i.alg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ale, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.alh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.alg, <4 x float> nofpclass(nan inf) %i.ale, <4 x float> splat (float f0x3C088908))
  %i.ali = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.alh, <4 x float> nofpclass(nan inf) %i.ale, <4 x float> splat (float f0x3D2AA9C1))
  %i.alj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ali, <4 x float> nofpclass(nan inf) %i.ale, <4 x float> splat (float f0x3E2AAAAA))
  %i.alk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.alj, <4 x float> nofpclass(nan inf) %i.ale, <4 x float> splat (float 5.000000e-01))
end_hunk_0
begin_hunk_1_@_ZNK4ncnn21Deconvolution_x86_fma7forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a
.thread.i:                                        ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i
  store <4 x float> %.0.i.i, ptr %.17402732.i, align 1, !tbaa !82
  %i.amj = getelementptr inbounds nuw i8, ptr %.17402732.i, i64 16
  br label %bb.cc

bb.cb:                                            ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i
  %.sroa.01678.0.vec.extract.i = extractelement <4 x float> %.0.i.i, i64 0
  store float %.sroa.01678.0.vec.extract.i, ptr %.17402732.i, align 4, !tbaa !39
  %.sroa.01678.4.vec.extract.i = extractelement <4 x float> %.0.i.i, i64 1
  %i.amk = getelementptr inbounds nuw [4 x i8], ptr %.17402732.i, i64 %i.nc
  store float %.sroa.01678.4.vec.extract.i, ptr %i.amk, align 4, !tbaa !39
  %.sroa.01678.8.vec.extract.i = extractelement <4 x float> %.0.i.i, i64 2
  %i.aml = getelementptr inbounds nuw i8, ptr %.17402732.i, i64 %.idx.i
  store float %.sroa.01678.8.vec.extract.i, ptr %i.aml, align 4, !tbaa !39
  %.sroa.01678.12.vec.extract.i = extractelement <4 x float> %.0.i.i, i64 3
  %i.amm = getelementptr inbounds nuw i8, ptr %.17402732.i, i64 %.idx921.i
  store float %.sroa.01678.12.vec.extract.i, ptr %i.amm, align 4, !tbaa !39
  %i.amn = getelementptr inbounds nuw i8, ptr %.17402732.i, i64 4
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %.thread.i, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i
  %.3742.i = phi ptr [ %i.amn, %bb.cb ], [ %.17402732.i, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i ], [ %i.amj, %.thread.i ] ; 2 uses
  %i.amo = add nuw nsw i32 %.07482731.i, 1        ; 2 uses
  %exitcond3325.not.i = icmp eq i32 %i.amo, %i.ll
  br i1 %exitcond3325.not.i, label %._crit_edge.i, label %bb.ay, !llvm.loop !355

._crit_edge2964.split.i:                          ; preds = %._crit_edge2962.i, %_ZN4ncnn3MatD2Ev.exit957.lr.ph.i, %._crit_edge2737.i
  %i.amp = shl nsw i32 %i.ka, 1                   ; 2 uses
  %i.amq = add nsw i32 %i.amp, %i.jy
  %i.amr = icmp slt i32 %i.amq, %i.iw
  br i1 %i.amr, label %_ZN4ncnn3MatD2Ev.exit946.lr.ph.i, label %_ZN4ncnnL20deconvolution_packedERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.exit

_ZN4ncnn3MatD2Ev.exit946.lr.ph.i:                 ; preds = %._crit_edge2964.split.i
  %i.ams = load i32, ptr %i.ak, align 8, !tbaa !60
  %.fr3034.i = freeze i32 %i.ams                  ; 3 uses
  %i.amt = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.amu = load i32, ptr %i.amt, align 8, !tbaa !62
  %i.amv = mul i32 %i.amu, %.fr3034.i             ; 14 uses
  %i.amw = load i32, ptr %i.ag, align 4, !tbaa !54 ; 6 uses
  %i.amx = load i32, ptr %i.ah, align 8, !tbaa !66 ; 5 uses
  %i.amy = load i32, ptr %i.ci, align 4, !tbaa !54 ; 2 uses
  %i.amz = load i32, ptr %i.cj, align 16, !tbaa !66 ; 2 uses
  %i.ana = load ptr, ptr %4, align 16, !tbaa !20, !noalias !432
  %i.anb = load i64, ptr %i.cl, align 16, !tbaa !21, !noalias !432
  %i.anc = load i64, ptr %i.ce, align 16, !tbaa !55, !noalias !432
  %factor.op.mul3155.i = mul i64 %i.anc, %i.anb
  %i.and = icmp slt i32 %i.amz, 1
  %i.ane = icmp slt i32 %i.amy, 1
  %i.anf = icmp sgt i32 %i.amv, 7
  %i.ang = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 7 uses
  %brmerge3164.i = select i1 %i.and, i1 true, i1 %i.ane
  br i1 %brmerge3164.i, label %_ZN4ncnnL20deconvolution_packedERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.exit, label %_ZN4ncnn3MatD2Ev.exit946.lr.ph.split.split.i

_ZN4ncnn3MatD2Ev.exit946.lr.ph.split.split.i:     ; preds = %_ZN4ncnn3MatD2Ev.exit946.lr.ph.i
  %i.anh = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.ani = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.anj = load ptr, ptr %i.im, align 8, !tbaa !20, !noalias !433
  %i.ank = load i64, ptr %i.ani, align 8, !tbaa !21, !noalias !433
  %i.anl = load i64, ptr %i.anh, align 8, !tbaa !55, !noalias !433
  %factor.op.mul3158.i = mul i64 %i.anl, %i.ank
  %i.anm = add i32 %i.amv, -8                     ; 2 uses
  %i.ann = lshr i32 %i.anm, 1
  %i.ano = and i32 %i.ann, 2147483644
  %narrow3574.i = add nuw i32 %i.ano, 4
  %i.anp = zext i32 %narrow3574.i to i64
  %i.anq = and i32 %i.anm, -8
  %i.anr = add nuw i32 %i.anq, 8
  %i.ans = sext i32 %i.amv to i64
  %i.ant = sext i32 %i.jy to i64
  %i.anu = sext i32 %i.amp to i64
  %i.anv = add nsw i64 %i.anu, %i.ant
  %i.anw = sext i32 %i.iw to i64
  %invariant.op3592.i = add nsw i64 %i.ans, -7
  %i.anx = sext i32 %i.amw to i64                 ; 5 uses
  %i.any = and i32 %i.amv, -8
  br label %_ZN4ncnn3MatD2Ev.exit946.i

_ZN4ncnn3MatD2Ev.exit957.i:                       ; preds = %._crit_edge2962.i, %_ZN4ncnn3MatD2Ev.exit957.lr.ph.split.split.i
  %indvars.iv3414.i = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit957.lr.ph.split.split.i ], [ %indvars.iv.next3415.i, %._crit_edge2962.i ] ; 2 uses
  %i.anz = shl nuw nsw i64 %indvars.iv3414.i, 1
  %i.aoa = add nsw i64 %i.anz, %i.ld              ; 4 uses
  %.reass.i = mul i64 %i.aoa, %factor.op.mul.i
  %i.aob = getelementptr inbounds nuw i8, ptr %i.kk, i64 %.reass.i
  %i.aoc = add nsw i64 %i.aoa, 1
  %.reass2967.i = mul i64 %i.aoc, %factor.op.mul.i
  %i.aod = getelementptr inbounds nuw i8, ptr %i.kk, i64 %.reass2967.i
  %i.aoe = load ptr, ptr %i.l, align 8            ; 2 uses
  %.not903.i = icmp eq ptr %i.aoe, null
  %i.aof = getelementptr inbounds [4 x i8], ptr %i.aoe, i64 %i.aoa
  %i.aog = trunc nsw i64 %i.aoa to i32            ; 3 uses
  %i.aoh = sdiv i32 %i.aog, 8
  %i.aoi = srem i32 %i.aog, 8
  %.lhs.trunc2410.i = trunc nsw i32 %i.aoi to i8
  %i.aoj = sdiv i8 %.lhs.trunc2410.i, 4
  %.sext2411.i = sext i8 %i.aoj to i32
  %i.aok = add nsw i32 %i.aoh, %.sext2411.i
  %i.aol = srem i32 %i.aog, 4
  %.lhs.trunc2412.i = trunc nsw i32 %i.aol to i8
  %i.aom = sdiv i8 %.lhs.trunc2412.i, 2
  %.sext2413.i = sext i8 %i.aom to i32
  %i.aon = add nsw i32 %i.aok, %.sext2413.i
  %i.aoo = sext i32 %i.aon to i64
  %i.aop = load i32, ptr %i.g, align 4
  %.reass2971.i = mul i64 %factor.op.mul2970.i, %i.aoo
  %i.aoq = getelementptr i8, ptr %i.kt, i64 %.reass2971.i ; 3 uses
  br label %.preheader2496.i

.preheader2496.i:                                 ; preds = %._crit_edge2956.i, %_ZN4ncnn3MatD2Ev.exit957.i
  %.08042961.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit957.i ], [ %.neg2450.i, %._crit_edge2956.i ]
  %.08052960.i = phi ptr [ %i.aod, %_ZN4ncnn3MatD2Ev.exit957.i ], [ %i.bej, %._crit_edge2956.i ]
  %.08072959.i = phi ptr [ %i.aob, %_ZN4ncnn3MatD2Ev.exit957.i ], [ %i.bei, %._crit_edge2956.i ]
  %i.aor = load i32, ptr %i.b, align 4            ; 2 uses
  %i.aos = icmp sgt i32 %i.aor, 0                 ; 4 uses
  %.neg2450.i = add nuw nsw i32 %.08042961.i, 1   ; 6 uses
  %i.aot = load i32, ptr %i.k, align 4            ; 4 uses
  %i.aou = shl i32 %i.aot, 4
  %i.aov = sext i32 %i.aou to i64                 ; 2 uses
  %i.aow = shl i32 %i.aot, 3
  %i.aox = sext i32 %i.aow to i64                 ; 3 uses
  %i.aoy = shl i32 %i.aot, 2
  %i.aoz = sext i32 %i.aoy to i64                 ; 3 uses
  %i.apa = shl nsw i32 %i.aot, 1
  %i.apb = sext i32 %i.apa to i64
  %i.apc = mul nsw i64 %i.aov, %i.kz
  %scevgep3333.i = getelementptr i8, ptr %i.aoq, i64 %i.apc
  %wide.trip.count3348.i = zext nneg i32 %i.aor to i64 ; 5 uses
  br label %bb.cd

._crit_edge2962.i:                                ; preds = %._crit_edge2956.i
  %indvars.iv.next3415.i = add nuw nsw i64 %indvars.iv3414.i, 1 ; 2 uses
  %exitcond3418.not.i = icmp eq i64 %indvars.iv.next3415.i, %wide.trip.count3417.i
  br i1 %exitcond3418.not.i, label %._crit_edge2964.split.i, label %_ZN4ncnn3MatD2Ev.exit957.i, !llvm.loop !360

._crit_edge2956.i:                                ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i
  %exitcond3413.not.i = icmp eq i32 %.neg2450.i, %i.kj
  br i1 %exitcond3413.not.i, label %._crit_edge2962.i, label %.preheader2496.i, !llvm.loop !361

bb.cd:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i, %.preheader2496.i
  %.08032955.i = phi i32 [ 0, %.preheader2496.i ], [ %i.bek, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i ] ; 5 uses
  %.18062954.i = phi ptr [ %.08052960.i, %.preheader2496.i ], [ %i.bej, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i ] ; 2 uses
  %.18082953.i = phi ptr [ %.08072959.i, %.preheader2496.i ], [ %i.bei, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i ] ; 2 uses
  br i1 %.not903.i, label %_ZN4ncnn3MatD2Ev.exit955.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.apd = load <2 x float>, ptr %i.aof, align 4, !tbaa !39
  br label %_ZN4ncnn3MatD2Ev.exit955.i

_ZN4ncnn3MatD2Ev.exit955.i:                       ; preds = %bb.ce, %bb.cd
  %i.ape = phi <2 x float> [ %i.apd, %bb.ce ], [ zeroinitializer, %bb.cd ]
  br i1 %i.kp, label %.preheader2494.lr.ph.i, label %._crit_edge2768.i

.preheader2494.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit955.i
  %i.apf = load i32, ptr %i.d, align 4
  %i.apg = load i32, ptr %i.j, align 4
  %invariant.op2757.i = sub i32 %.neg2450.i, %i.apg
  %i.aph = load i32, ptr %i.f, align 4            ; 2 uses
  %i.api = load i32, ptr %i.a, align 4
  %.fr3168.i = freeze i32 %i.api                  ; 2 uses
  %i.apj = load i32, ptr %i.c, align 4
  %i.apk = load i32, ptr %i.i, align 4
  %.neg2452.i = add nuw nsw i32 %.08032955.i, 1
  %invariant.op2748.i = sub i32 %.neg2452.i, %i.apk
  %i.apl = load i32, ptr %i.e, align 4            ; 2 uses
  %i.apm = icmp sgt i32 %.fr3168.i, 0
  %or.cond3620.i = and i1 %i.aos, %i.apm
  br i1 %or.cond3620.i, label %.preheader2494.us.us.preheader.i, label %._crit_edge2768.i

.preheader2494.us.us.preheader.i:                 ; preds = %.preheader2494.lr.ph.i
  %i.apn = zext nneg i32 %.fr3168.i to i64        ; 2 uses
  br label %.preheader2494.us.us.i

.preheader2494.us.us.i:                           ; preds = %._crit_edge2754.split.us.us.us.i, %.preheader2494.us.us.preheader.i
  %indvars.iv3350.i = phi i64 [ 0, %.preheader2494.us.us.preheader.i ], [ %indvars.iv.next3351.i, %._crit_edge2754.split.us.us.us.i ] ; 11 uses
  %.07672764.us.us.i = phi ptr [ %i.aoq, %.preheader2494.us.us.preheader.i ], [ %i.asl, %._crit_edge2754.split.us.us.us.i ] ; 2 uses
  %.023792763.us.us.i = phi <8 x float> [ zeroinitializer, %.preheader2494.us.us.preheader.i ], [ %.42383.us.us.us.i, %._crit_edge2754.split.us.us.us.i ]
  %.023842762.us.us.i = phi <8 x float> [ zeroinitializer, %.preheader2494.us.us.preheader.i ], [ %.42388.us.us.us.i, %._crit_edge2754.split.us.us.us.i ]
  %i.apo = lshr exact i64 %indvars.iv3350.i, 2    ; 2 uses
  %i.app = or disjoint i64 %i.apo, 1
  %i.apq = lshr exact i64 %indvars.iv3350.i, 3
  %i.apr = or disjoint i64 %indvars.iv3350.i, 1
  %i.aps = or disjoint i64 %indvars.iv3350.i, 2
  %i.apt = or disjoint i64 %indvars.iv3350.i, 3
  %i.apu = or disjoint i64 %indvars.iv3350.i, 4
  %i.apv = or disjoint i64 %indvars.iv3350.i, 5
  %i.apw = or disjoint i64 %indvars.iv3350.i, 6
  %i.apx = or disjoint i64 %indvars.iv3350.i, 7
  br label %bb.cf

bb.cf:                                            ; preds = %..loopexit2490_crit_edge.us.us.us.i, %.preheader2494.us.us.i
  %indvars.iv3345.i = phi i64 [ %indvars.iv.next3346.i, %..loopexit2490_crit_edge.us.us.us.i ], [ 0, %.preheader2494.us.us.i ] ; 3 uses
  %.123802751.us.us.us.i = phi <8 x float> [ %.42383.us.us.us.i, %..loopexit2490_crit_edge.us.us.us.i ], [ %.023792763.us.us.i, %.preheader2494.us.us.i ] ; 3 uses
  %.123852750.us.us.us.i = phi <8 x float> [ %.42388.us.us.us.i, %..loopexit2490_crit_edge.us.us.us.i ], [ %.023842762.us.us.i, %.preheader2494.us.us.i ] ; 3 uses
  %i.apy = trunc i64 %indvars.iv3345.i to i32
  %i.apz = mul i32 %i.apf, %i.apy
  %.reass2758.us.us.us.i = add i32 %i.apz, %invariant.op2757.i ; 3 uses
  %i.aqa = icmp slt i32 %.reass2758.us.us.us.i, 0
  br i1 %i.aqa, label %..loopexit2490_crit_edge.us.us.us.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.aqb = srem i32 %.reass2758.us.us.us.i, %i.aph
  %i.aqc = sdiv exact i32 %.reass2758.us.us.us.i, %i.aph ; 2 uses
  %.not916.us.us.us.i = icmp eq i32 %i.aqb, 0
  %.not917.us.us.us.i = icmp slt i32 %i.aqc, %i.kh
  %or.cond421 = select i1 %.not916.us.us.us.i, i1 %.not917.us.us.us.i, i1 false
  br i1 %or.cond421, label %.preheader2489.us.us.us.i, label %..loopexit2490_crit_edge.us.us.us.i

.preheader2489.us.us.us.i:                        ; preds = %bb.cg
  %i.aqd = mul nuw nsw i64 %indvars.iv3345.i, %i.apn
  %i.aqe = sext i32 %i.aqc to i64
  %i.aqf = mul nsw i64 %i.aqe, %i.le              ; 3 uses
  br label %bb.ch

bb.ch:                                            ; preds = %bb.ck, %.preheader2489.us.us.us.i
  %indvars.iv3340.i = phi i64 [ %indvars.iv.next3341.i, %bb.ck ], [ 0, %.preheader2489.us.us.us.i ] ; 3 uses
  %.223812744.us.us.us.i = phi <8 x float> [ %.32382.us.us.us.i, %bb.ck ], [ %.123802751.us.us.us.i, %.preheader2489.us.us.us.i ] ; 4 uses
  %.223862743.us.us.us.i = phi <8 x float> [ %.32387.us.us.us.i, %bb.ck ], [ %.123852750.us.us.us.i, %.preheader2489.us.us.us.i ] ; 4 uses
  %i.aqg = trunc i64 %indvars.iv3340.i to i32
  %i.aqh = mul i32 %i.apj, %i.aqg
  %.reass2749.us.us.us.i = add i32 %invariant.op2748.i, %i.aqh ; 3 uses
  %i.aqi = icmp slt i32 %.reass2749.us.us.us.i, 0
  br i1 %i.aqi, label %bb.ck, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.aqj = srem i32 %.reass2749.us.us.us.i, %i.apl
  %i.aqk = sdiv exact i32 %.reass2749.us.us.us.i, %i.apl ; 4 uses
  %.not918.us.us.us.i = icmp eq i32 %i.aqj, 0
  %.not919.us.us.us.i = icmp slt i32 %i.aqk, %i.kg
  %or.cond422 = select i1 %.not918.us.us.us.i, i1 %.not919.us.us.us.i, i1 false
  br i1 %or.cond422, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.aql = add nuw nsw i64 %indvars.iv3340.i, %i.aqd
  %i.aqm = shl i64 %i.aql, 4
  %i.aqn = and i64 %i.aqm, 4294967280
  %i.aqo = getelementptr inbounds nuw [4 x i8], ptr %.07672764.us.us.i, i64 %i.aqn ; 2 uses
  switch i32 %.fr2814.i, label %bb.ck [
    i32 8, label %_ZN4ncnn3MatD2Ev.exit954.us.us.us.i
    i32 4, label %_ZN4ncnn3MatD2Ev.exit953.us.us.us.i
    i32 1, label %_ZN4ncnn3MatD2Ev.exit951.us.us.us.i
  ]

_ZN4ncnn3MatD2Ev.exit951.us.us.us.i:              ; preds = %bb.cj
  %i.aqp = load ptr, ptr %1, align 8, !tbaa !20, !noalias !434
  %i.aqq = load i64, ptr %i.kq, align 8, !tbaa !21, !noalias !434
  %i.aqr = load i64, ptr %i.ai, align 8, !tbaa !55, !noalias !434 ; 2 uses
  %factor.op.mul.us.us.us.i = mul i64 %i.aqr, %i.aqq ; 8 uses
  %i.aqs = mul i64 %i.aqf, %i.aqr
  %invariant.gep.us.us.us.i = getelementptr i8, ptr %i.aqp, i64 %i.aqs
  %i.aqt = sext i32 %i.aqk to i64
  %invariant.gep2740.us.us.us.i = getelementptr [4 x i8], ptr %invariant.gep.us.us.us.i, i64 %i.aqt ; 8 uses
  %.reass.us.us2780.us.i = mul i64 %factor.op.mul.us.us.us.i, %indvars.iv3350.i
  %gep2741.us.us.us.i = getelementptr i8, ptr %invariant.gep2740.us.us.us.i, i64 %.reass.us.us2780.us.i
  %i.aqu = load float, ptr %gep2741.us.us.us.i, align 4, !tbaa !39
  %.sroa.03509.0.vec.insert.i = insertelement <8 x float> poison, float %i.aqu, i64 0
  %.reass.us.us2780.us.1.i = mul i64 %factor.op.mul.us.us.us.i, %i.apr
  %gep2741.us.us.us.1.i = getelementptr i8, ptr %invariant.gep2740.us.us.us.i, i64 %.reass.us.us2780.us.1.i
  %i.aqv = load float, ptr %gep2741.us.us.us.1.i, align 4, !tbaa !39
  %.sroa.03509.4.vec.insert.i = insertelement <8 x float> %.sroa.03509.0.vec.insert.i, float %i.aqv, i64 1
  %.reass.us.us2780.us.2.i = mul i64 %factor.op.mul.us.us.us.i, %i.aps
  %gep2741.us.us.us.2.i = getelementptr i8, ptr %invariant.gep2740.us.us.us.i, i64 %.reass.us.us2780.us.2.i
  %i.aqw = load float, ptr %gep2741.us.us.us.2.i, align 4, !tbaa !39
  %.sroa.03509.8.vec.insert.i = insertelement <8 x float> %.sroa.03509.4.vec.insert.i, float %i.aqw, i64 2
  %.reass.us.us2780.us.3.i = mul i64 %factor.op.mul.us.us.us.i, %i.apt
  %gep2741.us.us.us.3.i = getelementptr i8, ptr %invariant.gep2740.us.us.us.i, i64 %.reass.us.us2780.us.3.i
  %i.aqx = load float, ptr %gep2741.us.us.us.3.i, align 4, !tbaa !39
  %.sroa.03509.12.vec.insert.i = insertelement <8 x float> %.sroa.03509.8.vec.insert.i, float %i.aqx, i64 3
  %.reass.us.us2780.us.4.i = mul i64 %factor.op.mul.us.us.us.i, %i.apu
  %gep2741.us.us.us.4.i = getelementptr i8, ptr %invariant.gep2740.us.us.us.i, i64 %.reass.us.us2780.us.4.i
  %i.aqy = load float, ptr %gep2741.us.us.us.4.i, align 4, !tbaa !39
  %.sroa.03509.16.vec.insert.i = insertelement <8 x float> %.sroa.03509.12.vec.insert.i, float %i.aqy, i64 4
  %.reass.us.us2780.us.5.i = mul i64 %factor.op.mul.us.us.us.i, %i.apv
  %gep2741.us.us.us.5.i = getelementptr i8, ptr %invariant.gep2740.us.us.us.i, i64 %.reass.us.us2780.us.5.i
  %i.aqz = load float, ptr %gep2741.us.us.us.5.i, align 4, !tbaa !39
  %.sroa.03509.20.vec.insert.i = insertelement <8 x float> %.sroa.03509.16.vec.insert.i, float %i.aqz, i64 5
  %.reass.us.us2780.us.6.i = mul i64 %factor.op.mul.us.us.us.i, %i.apw
  %gep2741.us.us.us.6.i = getelementptr i8, ptr %invariant.gep2740.us.us.us.i, i64 %.reass.us.us2780.us.6.i
  %i.ara = load float, ptr %gep2741.us.us.us.6.i, align 4, !tbaa !39
  %.sroa.03509.24.vec.insert.i = insertelement <8 x float> %.sroa.03509.20.vec.insert.i, float %i.ara, i64 6
  %.reass.us.us2780.us.7.i = mul i64 %factor.op.mul.us.us.us.i, %i.apx
  %gep2741.us.us.us.7.i = getelementptr i8, ptr %invariant.gep2740.us.us.us.i, i64 %.reass.us.us2780.us.7.i
  %i.arb = load float, ptr %gep2741.us.us.us.7.i, align 4, !tbaa !39
  %.sroa.03509.28.vec.insert.i = insertelement <8 x float> %.sroa.03509.24.vec.insert.i, float %i.arb, i64 7
  br label %.sink.split3621.i

_ZN4ncnn3MatD2Ev.exit953.us.us.us.i:              ; preds = %bb.cj
  %i.arc = load ptr, ptr %1, align 8, !tbaa !20, !noalias !435 ; 2 uses
  %i.ard = load i64, ptr %i.kq, align 8, !tbaa !21, !noalias !435
  %i.are = load i64, ptr %i.ai, align 8, !tbaa !55, !noalias !435 ; 2 uses
  %i.arf = mul i64 %i.are, %i.ard                 ; 2 uses
  %i.arg = mul i64 %i.arf, %i.apo
  %i.arh = getelementptr inbounds nuw i8, ptr %i.arc, i64 %i.arg
  %i.ari = mul i64 %i.aqf, %i.are                 ; 2 uses
  %i.arj = getelementptr inbounds nuw i8, ptr %i.arh, i64 %i.ari
  %i.ark = shl nsw i32 %i.aqk, 2
  %i.arl = sext i32 %i.ark to i64                 ; 2 uses
  %i.arm = getelementptr inbounds [4 x i8], ptr %i.arj, i64 %i.arl
  %i.arn = mul i64 %i.arf, %i.app
  %i.aro = getelementptr inbounds nuw i8, ptr %i.arc, i64 %i.arn
  %i.arp = getelementptr inbounds nuw i8, ptr %i.aro, i64 %i.ari
  %i.arq = getelementptr inbounds [4 x i8], ptr %i.arp, i64 %i.arl
  %i.arr = load <4 x float>, ptr %i.arm, align 16, !tbaa !82
  %i.ars = load <4 x float>, ptr %i.arq, align 16, !tbaa !82
  %i.art = shufflevector <4 x float> %i.arr, <4 x float> %i.ars, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %.sink.split3621.i

_ZN4ncnn3MatD2Ev.exit954.us.us.us.i:              ; preds = %bb.cj
  %i.aru = load ptr, ptr %1, align 8, !tbaa !20, !noalias !436
  %i.arv = load i64, ptr %i.kq, align 8, !tbaa !21, !noalias !436
  %i.arw = mul i64 %i.arv, %i.apq
  %i.arx = load i64, ptr %i.ai, align 8, !tbaa !55, !noalias !436 ; 2 uses
  %i.ary = mul i64 %i.arw, %i.arx
  %i.arz = getelementptr inbounds nuw i8, ptr %i.aru, i64 %i.ary
  %i.asa = mul i64 %i.aqf, %i.arx
  %i.asb = getelementptr inbounds nuw i8, ptr %i.arz, i64 %i.asa
  %i.asc = shl nsw i32 %i.aqk, 3
  %i.asd = sext i32 %i.asc to i64
  %i.ase = getelementptr inbounds [4 x i8], ptr %i.asb, i64 %i.asd
  %i.asf = load <8 x float>, ptr %i.ase, align 32, !tbaa !82
  br label %.sink.split3621.i

.sink.split3621.i:                                ; preds = %_ZN4ncnn3MatD2Ev.exit954.us.us.us.i, %_ZN4ncnn3MatD2Ev.exit953.us.us.us.i, %_ZN4ncnn3MatD2Ev.exit951.us.us.us.i
  %.sink3625.i = phi <8 x float> [ %i.asf, %_ZN4ncnn3MatD2Ev.exit954.us.us.us.i ], [ %i.art, %_ZN4ncnn3MatD2Ev.exit953.us.us.us.i ], [ %.sroa.03509.28.vec.insert.i, %_ZN4ncnn3MatD2Ev.exit951.us.us.us.i ] ; 2 uses
  %i.asg = load <8 x float>, ptr %i.aqo, align 32, !tbaa !82
  %i.ash = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.sink3625.i, <8 x float> nofpclass(nan inf) %i.asg, <8 x float> nofpclass(nan inf) %.223862743.us.us.us.i)
  %i.asi = getelementptr inbounds nuw i8, ptr %i.aqo, i64 32
  %i.asj = load <8 x float>, ptr %i.asi, align 32, !tbaa !82
  %i.ask = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.sink3625.i, <8 x float> nofpclass(nan inf) %i.asj, <8 x float> nofpclass(nan inf) %.223812744.us.us.us.i)
  br label %bb.ck

bb.ck:                                            ; preds = %.sink.split3621.i, %bb.cj, %bb.ci, %bb.ch
  %.32387.us.us.us.i = phi nsz <8 x float> [ %.223862743.us.us.us.i, %bb.ch ], [ %.223862743.us.us.us.i, %bb.cj ], [ %.223862743.us.us.us.i, %bb.ci ], [ %i.ash, %.sink.split3621.i ] ; 2 uses
  %.32382.us.us.us.i = phi nsz <8 x float> [ %.223812744.us.us.us.i, %bb.ch ], [ %.223812744.us.us.us.i, %bb.cj ], [ %.223812744.us.us.us.i, %bb.ci ], [ %i.ask, %.sink.split3621.i ] ; 2 uses
  %indvars.iv.next3341.i = add nuw nsw i64 %indvars.iv3340.i, 1 ; 2 uses
  %exitcond3344.not.i = icmp eq i64 %indvars.iv.next3341.i, %i.apn
  br i1 %exitcond3344.not.i, label %..loopexit2490_crit_edge.us.us.us.i, label %bb.ch, !llvm.loop !368

..loopexit2490_crit_edge.us.us.us.i:              ; preds = %bb.ck, %bb.cg, %bb.cf
  %.42388.us.us.us.i = phi nsz <8 x float> [ %.123852750.us.us.us.i, %bb.cf ], [ %.123852750.us.us.us.i, %bb.cg ], [ %.32387.us.us.us.i, %bb.ck ] ; 3 uses
  %.42383.us.us.us.i = phi nsz <8 x float> [ %.123802751.us.us.us.i, %bb.cf ], [ %.123802751.us.us.us.i, %bb.cg ], [ %.32382.us.us.us.i, %bb.ck ] ; 3 uses
  %indvars.iv.next3346.i = add nuw nsw i64 %indvars.iv3345.i, 1 ; 2 uses
  %exitcond3349.not.i = icmp eq i64 %indvars.iv.next3346.i, %wide.trip.count3348.i
  br i1 %exitcond3349.not.i, label %._crit_edge2754.split.us.us.us.i, label %bb.cf, !llvm.loop !369

._crit_edge2754.split.us.us.us.i:                 ; preds = %..loopexit2490_crit_edge.us.us.us.i
  %i.asl = getelementptr inbounds [4 x i8], ptr %.07672764.us.us.i, i64 %i.aov ; 2 uses
  %indvars.iv.next3351.i = add nuw nsw i64 %indvars.iv3350.i, 8 ; 2 uses
  %i.asm = icmp slt i64 %indvars.iv.next3351.i, %invariant.op3591.i
  br i1 %i.asm, label %.preheader2494.us.us.i, label %._crit_edge2768.i, !llvm.loop !370

._crit_edge2768.i:                                ; preds = %._crit_edge2754.split.us.us.us.i, %.preheader2494.lr.ph.i, %_ZN4ncnn3MatD2Ev.exit955.i
  %.02384.lcssa.i = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit955.i ], [ zeroinitializer, %.preheader2494.lr.ph.i ], [ %.42388.us.us.us.i, %._crit_edge2754.split.us.us.us.i ] ; 2 uses
  %.02379.lcssa.i = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit955.i ], [ zeroinitializer, %.preheader2494.lr.ph.i ], [ %.42383.us.us.us.i, %._crit_edge2754.split.us.us.us.i ] ; 2 uses
  %.0767.lcssa.i = phi ptr [ %i.aoq, %_ZN4ncnn3MatD2Ev.exit955.i ], [ %scevgep3333.i, %.preheader2494.lr.ph.i ], [ %i.asl, %._crit_edge2754.split.us.us.us.i ] ; 4 uses
  %.0763.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit955.i ], [ %i.lb, %.preheader2494.lr.ph.i ], [ %i.lf, %._crit_edge2754.split.us.us.us.i ] ; 9 uses
  %i.asn = shufflevector <8 x float> %.02384.lcssa.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.aso = shufflevector <8 x float> %.02384.lcssa.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.asp = fadd fast <4 x float> %i.asn, %i.aso   ; 2 uses
  %i.asq = shufflevector <4 x float> %i.asp, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.asr = fadd fast <4 x float> %i.asq, %i.asp   ; 2 uses
  %i.ass = shufflevector <8 x float> %.02379.lcssa.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ast = shufflevector <8 x float> %.02379.lcssa.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.asu = fadd fast <4 x float> %i.ass, %i.ast   ; 2 uses
  %i.asv = shufflevector <4 x float> %i.asu, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.asw = fadd fast <4 x float> %i.asv, %i.asu   ; 2 uses
  %i.asx = or disjoint i32 %.0763.lcssa.i, 3
  %i.asy = icmp slt i32 %i.asx, %i.kf
  br i1 %i.asy, label %.preheader2493.lr.ph.i, label %._crit_edge2841.i

.preheader2493.lr.ph.i:                           ; preds = %._crit_edge2768.i
  %i.asz = load i32, ptr %i.d, align 4            ; 2 uses
  %i.ata = load i32, ptr %i.j, align 4
  %invariant.op2822.i = sub i32 %.neg2450.i, %i.ata ; 2 uses
  %i.atb = load i32, ptr %i.f, align 4            ; 4 uses
  %i.atc = load i32, ptr %i.a, align 4
  %.fr3169.i = freeze i32 %i.atc                  ; 2 uses
  %i.atd = load i32, ptr %i.c, align 4            ; 2 uses
  %i.ate = load i32, ptr %i.i, align 4
  %.neg2448.i = add nuw nsw i32 %.08032955.i, 1
  %invariant.op2797.i = sub i32 %.neg2448.i, %i.ate ; 2 uses
  %i.atf = load i32, ptr %i.e, align 4            ; 4 uses
  br i1 %i.aos, label %.preheader2493.lr.ph.split.us.i, label %.preheader2493.preheader.i

.preheader2493.preheader.i:                       ; preds = %.preheader2493.lr.ph.i
  %i.atg = add i32 %.0763.lcssa.i, 7
  %smax3353.i = call i32 @llvm.smax.i32(i32 %i.kf, i32 %i.atg)
  %reass.sub216 = sub i32 %smax3353.i, %.0763.lcssa.i
  %i.ath = and i32 %reass.sub216, -4              ; 2 uses
  %i.ati = add i32 %i.ath, -4
  %i.atj = zext i32 %i.ati to i64
  %i.atk = add nuw nsw i64 %i.atj, 4
  %i.atl = mul nsw i64 %i.atk, %i.aox
  %scevgep3354.i = getelementptr i8, ptr %.0767.lcssa.i, i64 %i.atl
  %i.atm = add i32 %.0763.lcssa.i, %i.ath
  br label %._crit_edge2841.i

.preheader2493.lr.ph.split.us.i:                  ; preds = %.preheader2493.lr.ph.i
  %i.atn = icmp sgt i32 %.fr3169.i, 0
  br i1 %i.atn, label %.preheader2493.us.us.preheader.i, label %.preheader2493.us.preheader.i

.preheader2493.us.preheader.i:                    ; preds = %.preheader2493.lr.ph.split.us.i
  %i.ato = add i32 %.0763.lcssa.i, 7
  %smax3355.i = call i32 @llvm.smax.i32(i32 %i.kf, i32 %i.ato)
  %reass.sub217 = sub i32 %smax3355.i, %.0763.lcssa.i
  %i.atp = and i32 %reass.sub217, -4              ; 2 uses
  %i.atq = add i32 %i.atp, -4
  %i.atr = zext i32 %i.atq to i64
  %i.ats = add nuw nsw i64 %i.atr, 4
  %i.att = mul nsw i64 %i.ats, %i.aox
  %scevgep3356.i = getelementptr i8, ptr %.0767.lcssa.i, i64 %i.att
  %i.atu = add i32 %.0763.lcssa.i, %i.atp
  br label %._crit_edge2841.i

.preheader2493.us.us.preheader.i:                 ; preds = %.preheader2493.lr.ph.split.us.i
  %i.atv = zext nneg i32 %.fr3169.i to i64        ; 4 uses
  %i.atw = zext i32 %.0763.lcssa.i to i64
  br label %.preheader2493.us.us.i

.preheader2493.us.us.i:                           ; preds = %._crit_edge2819.split.us.us.us.i, %.preheader2493.us.us.preheader.i
  %indvars.iv3376.i = phi i64 [ %i.atw, %.preheader2493.us.us.preheader.i ], [ %indvars.iv.next3377.i, %._crit_edge2819.split.us.us.us.i ] ; 6 uses
  %.17682837.us.us.i = phi ptr [ %.0767.lcssa.i, %.preheader2493.us.us.preheader.i ], [ %i.awp, %._crit_edge2819.split.us.us.us.i ] ; 3 uses
  %.023692836.us.us.i = phi <4 x float> [ zeroinitializer, %.preheader2493.us.us.preheader.i ], [ %.us-phi181, %._crit_edge2819.split.us.us.us.i ] ; 3 uses
  %.023742835.us.us.i = phi <4 x float> [ zeroinitializer, %.preheader2493.us.us.preheader.i ], [ %.us-phi180, %._crit_edge2819.split.us.us.us.i ] ; 3 uses
  %i.atx = lshr exact i64 %indvars.iv3376.i, 2
  %i.aty = and i64 %i.atx, 1073741823
  %i.atz = add nuw nsw i64 %indvars.iv3376.i, 1
  %i.aua = add nuw nsw i64 %indvars.iv3376.i, 2
  %i.aub = add nuw nsw i64 %indvars.iv3376.i, 3
  switch i32 %.fr2814.i, label %._crit_edge2819.split.us.us.us.i [
    i32 4, label %.preheader2493.us.us.i.split.us
    i32 1, label %.preheader2493.us.us.i.split.us182
  ]

.preheader2493.us.us.i.split.us:                  ; preds = %.preheader2493.us.us.i, %..loopexit2488_crit_edge.us.us.us.i.us
  %indvars.iv3371.i.us = phi i64 [ %indvars.iv.next3372.i.us, %..loopexit2488_crit_edge.us.us.us.i.us ], [ 0, %.preheader2493.us.us.i ] ; 3 uses
  %.123702816.us.us.us.i.us = phi <4 x float> [ %.42373.us.us.us.i.us, %..loopexit2488_crit_edge.us.us.us.i.us ], [ %.023692836.us.us.i, %.preheader2493.us.us.i ] ; 3 uses
  %.123752815.us.us.us.i.us = phi <4 x float> [ %.42378.us.us.us.i.us, %..loopexit2488_crit_edge.us.us.us.i.us ], [ %.023742835.us.us.i, %.preheader2493.us.us.i ] ; 3 uses
  %i.auc = trunc i64 %indvars.iv3371.i.us to i32
  %i.aud = mul i32 %i.asz, %i.auc
  %.reass.us2823.us.us.i.us = add i32 %i.aud, %invariant.op2822.i ; 3 uses
  %i.aue = icmp slt i32 %.reass.us2823.us.us.i.us, 0
  br i1 %i.aue, label %..loopexit2488_crit_edge.us.us.us.i.us, label %bb.cl

bb.cl:                                            ; preds = %.preheader2493.us.us.i.split.us
  %i.auf = srem i32 %.reass.us2823.us.us.i.us, %i.atb
  %i.aug = sdiv exact i32 %.reass.us2823.us.us.i.us, %i.atb ; 2 uses
  %.not912.us.us.us.i.us = icmp eq i32 %i.auf, 0
  %.not913.us.us.us.i.us = icmp slt i32 %i.aug, %i.kh
  %or.cond423 = select i1 %.not912.us.us.us.i.us, i1 %.not913.us.us.us.i.us, i1 false
  br i1 %or.cond423, label %.preheader2487.us.us.us.i.us, label %..loopexit2488_crit_edge.us.us.us.i.us

.preheader2487.us.us.us.i.us:                     ; preds = %bb.cl
  %i.auh = mul nuw nsw i64 %indvars.iv3371.i.us, %i.atv
  %i.aui = sext i32 %i.aug to i64
  %i.auj = mul nsw i64 %i.aui, %i.le
  br label %.lr.ph.split.us.us.us.us2858.i.us

.lr.ph.split.us.us.us.us2858.i.us:                ; preds = %bb.cn, %.preheader2487.us.us.us.i.us
  %indvars.iv3366.i.us = phi i64 [ %indvars.iv.next3367.i.us, %bb.cn ], [ 0, %.preheader2487.us.us.us.i.us ] ; 3 uses
  %.223712793.us.us.us.us.i.us = phi <4 x float> [ %.32372.us.us.us.us.i.us, %bb.cn ], [ %.123702816.us.us.us.i.us, %.preheader2487.us.us.us.i.us ] ; 3 uses
  %.223762792.us.us.us.us.i.us = phi <4 x float> [ %.32377.us.us.us.us.i.us, %bb.cn ], [ %.123752815.us.us.us.i.us, %.preheader2487.us.us.us.i.us ] ; 3 uses
  %i.auk = trunc i64 %indvars.iv3366.i.us to i32
  %i.aul = mul i32 %i.atd, %i.auk
  %.reass2798.us.us.us.us.i.us = add i32 %i.aul, %invariant.op2797.i ; 3 uses
  %i.aum = icmp slt i32 %.reass2798.us.us.us.us.i.us, 0
  br i1 %i.aum, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %.lr.ph.split.us.us.us.us2858.i.us
  %i.aun = srem i32 %.reass2798.us.us.us.us.i.us, %i.atf
  %i.auo = sdiv exact i32 %.reass2798.us.us.us.us.i.us, %i.atf ; 2 uses
  %.not914.us.us.us.us.i.us = icmp eq i32 %i.aun, 0
  %.not915.us.us.us.us.i.us = icmp slt i32 %i.auo, %i.kg
  %or.cond424 = select i1 %.not914.us.us.us.us.i.us, i1 %.not915.us.us.us.us.i.us, i1 false
  br i1 %or.cond424, label %_ZN4ncnn3MatD2Ev.exit950.us.us.us.us.i.us, label %bb.cn

_ZN4ncnn3MatD2Ev.exit950.us.us.us.us.i.us:        ; preds = %bb.cm
  %i.aup = add nuw nsw i64 %indvars.iv3366.i.us, %i.auh
  %i.auq = shl i64 %i.aup, 3
  %i.aur = and i64 %i.auq, 4294967288
  %i.aus = getelementptr inbounds nuw [4 x i8], ptr %.17682837.us.us.i, i64 %i.aur ; 2 uses
  %i.aut = load ptr, ptr %1, align 8, !tbaa !20, !noalias !437
  %i.auu = load i64, ptr %i.kq, align 8, !tbaa !21, !noalias !437
  %i.auv = mul i64 %i.auu, %i.aty
  %i.auw = load i64, ptr %i.ai, align 8, !tbaa !55, !noalias !437 ; 2 uses
  %i.aux = mul i64 %i.auv, %i.auw
  %i.auy = getelementptr inbounds nuw i8, ptr %i.aut, i64 %i.aux
  %i.auz = mul i64 %i.auj, %i.auw
  %i.ava = getelementptr inbounds nuw i8, ptr %i.auy, i64 %i.auz
  %i.avb = shl nsw i32 %i.auo, 2
  %i.avc = sext i32 %i.avb to i64
  %i.avd = getelementptr inbounds [4 x i8], ptr %i.ava, i64 %i.avc
  %i.ave = load <4 x float>, ptr %i.avd, align 16, !tbaa !82 ; 2 uses
  %i.avf = load <4 x float>, ptr %i.aus, align 16, !tbaa !82
  %i.avg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ave, <4 x float> nofpclass(nan inf) %i.avf, <4 x float> nofpclass(nan inf) %.223762792.us.us.us.us.i.us)
  %i.avh = getelementptr inbounds nuw i8, ptr %i.aus, i64 16
  %i.avi = load <4 x float>, ptr %i.avh, align 16, !tbaa !82
  %i.avj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ave, <4 x float> nofpclass(nan inf) %i.avi, <4 x float> nofpclass(nan inf) %.223712793.us.us.us.us.i.us)
  br label %bb.cn

bb.cn:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit950.us.us.us.us.i.us, %bb.cm, %.lr.ph.split.us.us.us.us2858.i.us
  %.32377.us.us.us.us.i.us = phi nsz <4 x float> [ %.223762792.us.us.us.us.i.us, %.lr.ph.split.us.us.us.us2858.i.us ], [ %.223762792.us.us.us.us.i.us, %bb.cm ], [ %i.avg, %_ZN4ncnn3MatD2Ev.exit950.us.us.us.us.i.us ] ; 2 uses
  %.32372.us.us.us.us.i.us = phi nsz <4 x float> [ %.223712793.us.us.us.us.i.us, %.lr.ph.split.us.us.us.us2858.i.us ], [ %.223712793.us.us.us.us.i.us, %bb.cm ], [ %i.avj, %_ZN4ncnn3MatD2Ev.exit950.us.us.us.us.i.us ] ; 2 uses
  %indvars.iv.next3367.i.us = add nuw nsw i64 %indvars.iv3366.i.us, 1 ; 2 uses
  %exitcond3370.not.i.us = icmp eq i64 %indvars.iv.next3367.i.us, %i.atv
  br i1 %exitcond3370.not.i.us, label %..loopexit2488_crit_edge.us.us.us.i.us, label %.lr.ph.split.us.us.us.us2858.i.us, !llvm.loop !373

..loopexit2488_crit_edge.us.us.us.i.us:           ; preds = %bb.cn, %bb.cl, %.preheader2493.us.us.i.split.us
  %.42378.us.us.us.i.us = phi nsz <4 x float> [ %.123752815.us.us.us.i.us, %.preheader2493.us.us.i.split.us ], [ %.123752815.us.us.us.i.us, %bb.cl ], [ %.32377.us.us.us.us.i.us, %bb.cn ] ; 2 uses
  %.42373.us.us.us.i.us = phi nsz <4 x float> [ %.123702816.us.us.us.i.us, %.preheader2493.us.us.i.split.us ], [ %.123702816.us.us.us.i.us, %bb.cl ], [ %.32372.us.us.us.us.i.us, %bb.cn ] ; 2 uses
  %indvars.iv.next3372.i.us = add nuw nsw i64 %indvars.iv3371.i.us, 1 ; 2 uses
  %exitcond3375.not.i.us = icmp eq i64 %indvars.iv.next3372.i.us, %wide.trip.count3348.i
  br i1 %exitcond3375.not.i.us, label %._crit_edge2819.split.us.us.us.i, label %.preheader2493.us.us.i.split.us, !llvm.loop !374

.preheader2493.us.us.i.split.us182:               ; preds = %.preheader2493.us.us.i, %..loopexit2488_crit_edge.us.us.us.i.us190
  %indvars.iv3371.i.us183 = phi i64 [ %indvars.iv.next3372.i.us193, %..loopexit2488_crit_edge.us.us.us.i.us190 ], [ 0, %.preheader2493.us.us.i ] ; 3 uses
  %.123702816.us.us.us.i.us184 = phi <4 x float> [ %.42373.us.us.us.i.us192, %..loopexit2488_crit_edge.us.us.us.i.us190 ], [ %.023692836.us.us.i, %.preheader2493.us.us.i ] ; 3 uses
  %.123752815.us.us.us.i.us185 = phi <4 x float> [ %.42378.us.us.us.i.us191, %..loopexit2488_crit_edge.us.us.us.i.us190 ], [ %.023742835.us.us.i, %.preheader2493.us.us.i ] ; 3 uses
  %i.avk = trunc i64 %indvars.iv3371.i.us183 to i32
  %i.avl = mul i32 %i.asz, %i.avk
  %.reass.us2823.us.us.i.us186 = add i32 %i.avl, %invariant.op2822.i ; 3 uses
  %i.avm = icmp slt i32 %.reass.us2823.us.us.i.us186, 0
  br i1 %i.avm, label %..loopexit2488_crit_edge.us.us.us.i.us190, label %bb.co

bb.co:                                            ; preds = %.preheader2493.us.us.i.split.us182
  %i.avn = srem i32 %.reass.us2823.us.us.i.us186, %i.atb
  %i.avo = sdiv exact i32 %.reass.us2823.us.us.i.us186, %i.atb ; 2 uses
  %.not912.us.us.us.i.us187 = icmp eq i32 %i.avn, 0
  %.not913.us.us.us.i.us188 = icmp slt i32 %i.avo, %i.kh
  %or.cond425 = select i1 %.not912.us.us.us.i.us187, i1 %.not913.us.us.us.i.us188, i1 false
  br i1 %or.cond425, label %.preheader2487.us.us.us.i.us189, label %..loopexit2488_crit_edge.us.us.us.i.us190

.preheader2487.us.us.us.i.us189:                  ; preds = %bb.co
  %i.avp = mul nuw nsw i64 %indvars.iv3371.i.us183, %i.atv
  %i.avq = sext i32 %i.avo to i64
  %i.avr = mul nsw i64 %i.avq, %i.le
  br label %.lr.ph.split.us2801.us.us.us.i.us

.lr.ph.split.us2801.us.us.us.i.us:                ; preds = %bb.cq, %.preheader2487.us.us.us.i.us189
  %indvars.iv3361.i.us = phi i64 [ %indvars.iv.next3362.i.us, %bb.cq ], [ 0, %.preheader2487.us.us.us.i.us189 ] ; 3 uses
  %.223712793.us2803.us.us.us.i.us = phi <4 x float> [ %.32372.us2809.us.us.us.i.us, %bb.cq ], [ %.123702816.us.us.us.i.us184, %.preheader2487.us.us.us.i.us189 ] ; 3 uses
  %.223762792.us2804.us.us.us.i.us = phi <4 x float> [ %.32377.us2808.us.us.us.i.us, %bb.cq ], [ %.123752815.us.us.us.i.us185, %.preheader2487.us.us.us.i.us189 ] ; 3 uses
  %i.avs = trunc i64 %indvars.iv3361.i.us to i32
  %i.avt = mul i32 %i.atd, %i.avs
  %.reass2798.us2805.us.us.us.i.us = add i32 %i.avt, %invariant.op2797.i ; 3 uses
  %i.avu = icmp slt i32 %.reass2798.us2805.us.us.us.i.us, 0
  br i1 %i.avu, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %.lr.ph.split.us2801.us.us.us.i.us
  %i.avv = srem i32 %.reass2798.us2805.us.us.us.i.us, %i.atf
  %i.avw = sdiv exact i32 %.reass2798.us2805.us.us.us.i.us, %i.atf ; 2 uses
  %.not914.us2806.us.us.us.i.us = icmp eq i32 %i.avv, 0
  %.not915.us2807.us.us.us.i.us = icmp slt i32 %i.avw, %i.kg
  %or.cond426 = select i1 %.not914.us2806.us.us.us.i.us, i1 %.not915.us2807.us.us.us.i.us, i1 false
  br i1 %or.cond426, label %_ZN4ncnn3MatD2Ev.exit949.us.us.us.us.i.us, label %bb.cq

_ZN4ncnn3MatD2Ev.exit949.us.us.us.us.i.us:        ; preds = %bb.cp
  %i.avx = load ptr, ptr %1, align 8, !tbaa !20, !noalias !438
  %i.avy = load i64, ptr %i.kq, align 8, !tbaa !21, !noalias !438
  %i.avz = load i64, ptr %i.ai, align 8, !tbaa !55, !noalias !438 ; 2 uses
  %factor.op.mul.us.us.us2852.us.i.us = mul i64 %i.avz, %i.avy ; 4 uses
  %i.awa = mul i64 %i.avr, %i.avz
  %invariant.gep.us.us.us2853.us.i.us = getelementptr i8, ptr %i.avx, i64 %i.awa
  %i.awb = sext i32 %i.avw to i64
  %invariant.gep2789.us.us.us.us.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.us.us2853.us.i.us, i64 %i.awb ; 4 uses
  %.reass.us.us2824.us.us.i.us = mul i64 %factor.op.mul.us.us.us2852.us.i.us, %indvars.iv3376.i
  %gep2790.us.us.us.us.i.us = getelementptr i8, ptr %invariant.gep2789.us.us.us.us.i.us, i64 %.reass.us.us2824.us.us.i.us
  %i.awc = load float, ptr %gep2790.us.us.us.us.i.us, align 4, !tbaa !39
  %.sroa.03507.0.vec.insert.i.us = insertelement <4 x float> poison, float %i.awc, i64 0
  %.reass.us.us2824.us.us.1.i.us = mul i64 %factor.op.mul.us.us.us2852.us.i.us, %i.atz
  %gep2790.us.us.us.us.1.i.us = getelementptr i8, ptr %invariant.gep2789.us.us.us.us.i.us, i64 %.reass.us.us2824.us.us.1.i.us
  %i.awd = load float, ptr %gep2790.us.us.us.us.1.i.us, align 4, !tbaa !39
  %.sroa.03507.4.vec.insert.i.us = insertelement <4 x float> %.sroa.03507.0.vec.insert.i.us, float %i.awd, i64 1
  %.reass.us.us2824.us.us.2.i.us = mul i64 %factor.op.mul.us.us.us2852.us.i.us, %i.aua
  %gep2790.us.us.us.us.2.i.us = getelementptr i8, ptr %invariant.gep2789.us.us.us.us.i.us, i64 %.reass.us.us2824.us.us.2.i.us
  %i.awe = load float, ptr %gep2790.us.us.us.us.2.i.us, align 4, !tbaa !39
  %.sroa.03507.8.vec.insert.i.us = insertelement <4 x float> %.sroa.03507.4.vec.insert.i.us, float %i.awe, i64 2
  %.reass.us.us2824.us.us.3.i.us = mul i64 %factor.op.mul.us.us.us2852.us.i.us, %i.aub
  %gep2790.us.us.us.us.3.i.us = getelementptr i8, ptr %invariant.gep2789.us.us.us.us.i.us, i64 %.reass.us.us2824.us.us.3.i.us
  %i.awf = load float, ptr %gep2790.us.us.us.us.3.i.us, align 4, !tbaa !39
  %.sroa.03507.12.vec.insert.i.us = insertelement <4 x float> %.sroa.03507.8.vec.insert.i.us, float %i.awf, i64 3 ; 2 uses
  %i.awg = add nuw nsw i64 %indvars.iv3361.i.us, %i.avp
  %i.awh = shl i64 %i.awg, 3
  %i.awi = and i64 %i.awh, 4294967288
  %i.awj = getelementptr inbounds nuw [4 x i8], ptr %.17682837.us.us.i, i64 %i.awi ; 2 uses
  %i.awk = load <4 x float>, ptr %i.awj, align 16, !tbaa !82
  %i.awl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sroa.03507.12.vec.insert.i.us, <4 x float> nofpclass(nan inf) %i.awk, <4 x float> nofpclass(nan inf) %.223762792.us2804.us.us.us.i.us)
  %i.awm = getelementptr inbounds nuw i8, ptr %i.awj, i64 16
  %i.awn = load <4 x float>, ptr %i.awm, align 16, !tbaa !82
  %i.awo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sroa.03507.12.vec.insert.i.us, <4 x float> nofpclass(nan inf) %i.awn, <4 x float> nofpclass(nan inf) %.223712793.us2803.us.us.us.i.us)
  br label %bb.cq

bb.cq:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit949.us.us.us.us.i.us, %bb.cp, %.lr.ph.split.us2801.us.us.us.i.us
  %.32377.us2808.us.us.us.i.us = phi nsz <4 x float> [ %.223762792.us2804.us.us.us.i.us, %.lr.ph.split.us2801.us.us.us.i.us ], [ %i.awl, %_ZN4ncnn3MatD2Ev.exit949.us.us.us.us.i.us ], [ %.223762792.us2804.us.us.us.i.us, %bb.cp ] ; 2 uses
  %.32372.us2809.us.us.us.i.us = phi nsz <4 x float> [ %.223712793.us2803.us.us.us.i.us, %.lr.ph.split.us2801.us.us.us.i.us ], [ %i.awo, %_ZN4ncnn3MatD2Ev.exit949.us.us.us.us.i.us ], [ %.223712793.us2803.us.us.us.i.us, %bb.cp ] ; 2 uses
  %indvars.iv.next3362.i.us = add nuw nsw i64 %indvars.iv3361.i.us, 1 ; 2 uses
  %exitcond3365.not.i.us = icmp eq i64 %indvars.iv.next3362.i.us, %i.atv
  br i1 %exitcond3365.not.i.us, label %..loopexit2488_crit_edge.us.us.us.i.us190, label %.lr.ph.split.us2801.us.us.us.i.us, !llvm.loop !373

..loopexit2488_crit_edge.us.us.us.i.us190:        ; preds = %bb.cq, %bb.co, %.preheader2493.us.us.i.split.us182
  %.42378.us.us.us.i.us191 = phi nsz <4 x float> [ %.123752815.us.us.us.i.us185, %.preheader2493.us.us.i.split.us182 ], [ %.123752815.us.us.us.i.us185, %bb.co ], [ %.32377.us2808.us.us.us.i.us, %bb.cq ] ; 2 uses
  %.42373.us.us.us.i.us192 = phi nsz <4 x float> [ %.123702816.us.us.us.i.us184, %.preheader2493.us.us.i.split.us182 ], [ %.123702816.us.us.us.i.us184, %bb.co ], [ %.32372.us2809.us.us.us.i.us, %bb.cq ] ; 2 uses
  %indvars.iv.next3372.i.us193 = add nuw nsw i64 %indvars.iv3371.i.us183, 1 ; 2 uses
  %exitcond3375.not.i.us194 = icmp eq i64 %indvars.iv.next3372.i.us193, %wide.trip.count3348.i
  br i1 %exitcond3375.not.i.us194, label %._crit_edge2819.split.us.us.us.i, label %.preheader2493.us.us.i.split.us182, !llvm.loop !374

._crit_edge2819.split.us.us.us.i:                 ; preds = %..loopexit2488_crit_edge.us.us.us.i.us190, %..loopexit2488_crit_edge.us.us.us.i.us, %.preheader2493.us.us.i
  %.us-phi180 = phi <4 x float> [ %.42378.us.us.us.i.us, %..loopexit2488_crit_edge.us.us.us.i.us ], [ %.023742835.us.us.i, %.preheader2493.us.us.i ], [ %.42378.us.us.us.i.us191, %..loopexit2488_crit_edge.us.us.us.i.us190 ] ; 2 uses
  %.us-phi181 = phi <4 x float> [ %.42373.us.us.us.i.us, %..loopexit2488_crit_edge.us.us.us.i.us ], [ %.023692836.us.us.i, %.preheader2493.us.us.i ], [ %.42373.us.us.us.i.us192, %..loopexit2488_crit_edge.us.us.us.i.us190 ] ; 2 uses
  %i.awp = getelementptr inbounds [4 x i8], ptr %.17682837.us.us.i, i64 %i.aox ; 2 uses
  %indvars.iv.next3377.i = add nuw nsw i64 %indvars.iv3376.i, 4 ; 2 uses
  %i.awq = trunc i64 %indvars.iv.next3377.i to i32 ; 2 uses
  %i.awr = or i32 %i.awq, 3
  %i.aws = icmp slt i32 %i.awr, %i.kf
  br i1 %i.aws, label %.preheader2493.us.us.i, label %._crit_edge2841.i, !llvm.loop !377

._crit_edge2841.i:                                ; preds = %._crit_edge2819.split.us.us.us.i, %.preheader2493.us.preheader.i, %.preheader2493.preheader.i, %._crit_edge2768.i
  %.02374.lcssa.i = phi <4 x float> [ zeroinitializer, %._crit_edge2768.i ], [ zeroinitializer, %.preheader2493.preheader.i ], [ zeroinitializer, %.preheader2493.us.preheader.i ], [ %.us-phi180, %._crit_edge2819.split.us.us.us.i ] ; 2 uses
  %.02369.lcssa.i = phi <4 x float> [ zeroinitializer, %._crit_edge2768.i ], [ zeroinitializer, %.preheader2493.preheader.i ], [ zeroinitializer, %.preheader2493.us.preheader.i ], [ %.us-phi181, %._crit_edge2819.split.us.us.us.i ] ; 2 uses
  %.1768.lcssa.i = phi ptr [ %.0767.lcssa.i, %._crit_edge2768.i ], [ %scevgep3354.i, %.preheader2493.preheader.i ], [ %scevgep3356.i, %.preheader2493.us.preheader.i ], [ %i.awp, %._crit_edge2819.split.us.us.us.i ] ; 4 uses
  %.1764.lcssa.i = phi i32 [ %.0763.lcssa.i, %._crit_edge2768.i ], [ %i.atm, %.preheader2493.preheader.i ], [ %i.atu, %.preheader2493.us.preheader.i ], [ %i.awq, %._crit_edge2819.split.us.us.us.i ] ; 9 uses
  %i.awt = shufflevector <4 x float> %.02374.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.awu = fadd fast <4 x float> %i.awt, %.02374.lcssa.i ; 2 uses
  %i.awv = shufflevector <4 x float> %i.asr, <4 x float> %i.asw, <2 x i32> <i32 1, i32 5>
  %i.aww = fadd fast <2 x float> %i.awv, %i.ape
  %i.awx = shufflevector <4 x float> %.02369.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.awy = fadd fast <4 x float> %i.awx, %.02369.lcssa.i ; 2 uses
  %i.awz = shufflevector <4 x float> %i.asr, <4 x float> %i.asw, <2 x i32> <i32 0, i32 4>
  %i.axa = fadd fast <2 x float> %i.aww, %i.awz
  %i.axb = shufflevector <4 x float> %i.awu, <4 x float> %i.awy, <2 x i32> <i32 1, i32 5>
  %i.axc = fadd fast <2 x float> %i.axa, %i.axb
  %i.axd = shufflevector <4 x float> %i.awu, <4 x float> %i.awy, <2 x i32> <i32 0, i32 4>
  %i.axe = fadd fast <2 x float> %i.axc, %i.axd   ; 4 uses
  %i.axf = or disjoint i32 %.1764.lcssa.i, 1
  %i.axg = icmp slt i32 %i.axf, %i.kf
  br i1 %i.axg, label %.preheader2492.lr.ph.i, label %.preheader2495.i

.preheader2492.lr.ph.i:                           ; preds = %._crit_edge2841.i
  %i.axh = load i32, ptr %i.d, align 4
  %i.axi = load i32, ptr %i.j, align 4
  %invariant.op2882.i = sub i32 %.neg2450.i, %i.axi
  %i.axj = load i32, ptr %i.f, align 4            ; 2 uses
  %i.axk = load i32, ptr %i.a, align 4
  %.fr3170.i = freeze i32 %i.axk                  ; 2 uses
  %i.axl = load i32, ptr %i.c, align 4
  %i.axm = load i32, ptr %i.i, align 4
  %.neg2444.i = add nuw nsw i32 %.08032955.i, 1
  %invariant.op2873.i = sub i32 %.neg2444.i, %i.axm
  %i.axn = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.aos, label %.preheader2492.lr.ph.split.us.i, label %.preheader2492.preheader.i

.preheader2492.preheader.i:                       ; preds = %.preheader2492.lr.ph.i
  %i.axo = add i32 %.1764.lcssa.i, 3
  %smax3379.i = call i32 @llvm.smax.i32(i32 %i.kf, i32 %i.axo)
  %reass.sub218 = sub i32 %smax3379.i, %.1764.lcssa.i
  %i.axp = add i32 %reass.sub218, -2              ; 2 uses
  %i.axq = lshr i32 %i.axp, 1
  %i.axr = zext nneg i32 %i.axq to i64
  %i.axs = shl nuw nsw i64 %i.axr, 2
  %i.axt = add nuw nsw i64 %i.axs, 4
  %i.axu = mul i64 %i.axt, %i.aoz
  %scevgep3380.i = getelementptr i8, ptr %.1768.lcssa.i, i64 %i.axu
  %i.axv = add i32 %.1764.lcssa.i, 2
  %i.axw = and i32 %i.axp, -2
  %i.axx = add i32 %i.axv, %i.axw
  br label %.preheader2495.i

.preheader2492.lr.ph.split.us.i:                  ; preds = %.preheader2492.lr.ph.i
  %i.axy = icmp sgt i32 %.fr3170.i, 0
  br i1 %i.axy, label %.preheader2492.us.us.preheader.i, label %.preheader2492.us.preheader.i

.preheader2492.us.preheader.i:                    ; preds = %.preheader2492.lr.ph.split.us.i
  %i.axz = add i32 %.1764.lcssa.i, 3
  %smax3381.i = call i32 @llvm.smax.i32(i32 %i.kf, i32 %i.axz)
  %reass.sub219 = sub i32 %smax3381.i, %.1764.lcssa.i
  %i.aya = add i32 %reass.sub219, -2              ; 2 uses
  %i.ayb = lshr i32 %i.aya, 1
  %i.ayc = zext nneg i32 %i.ayb to i64
  %i.ayd = shl nuw nsw i64 %i.ayc, 2
  %i.aye = add nuw nsw i64 %i.ayd, 4
  %i.ayf = mul i64 %i.aye, %i.aoz
  %scevgep3382.i = getelementptr i8, ptr %.1768.lcssa.i, i64 %i.ayf
  %i.ayg = add i32 %.1764.lcssa.i, 2
  %i.ayh = and i32 %i.aya, -2
  %i.ayi = add i32 %i.ayg, %i.ayh
  br label %.preheader2495.i

.preheader2492.us.us.preheader.i:                 ; preds = %.preheader2492.lr.ph.split.us.i
  %i.ayj = zext nneg i32 %.fr3170.i to i64        ; 2 uses
  %i.ayk = zext i32 %.1764.lcssa.i to i64
  br label %.preheader2492.us.us.i

.preheader2492.us.us.i:                           ; preds = %._crit_edge2879.split.us.us.us.i, %.preheader2492.us.us.preheader.i
  %indvars.iv3396.i = phi i64 [ %i.ayk, %.preheader2492.us.us.preheader.i ], [ %indvars.iv.next3397.i, %._crit_edge2879.split.us.us.us.i ] ; 3 uses
  %.27692890.us.us.i = phi ptr [ %.1768.lcssa.i, %.preheader2492.us.us.preheader.i ], [ %i.baa, %._crit_edge2879.split.us.us.us.i ] ; 2 uses
  %i.ayl = phi <2 x float> [ %i.axe, %.preheader2492.us.us.preheader.i ], [ %i.azz, %._crit_edge2879.split.us.us.us.i ]
  %i.aym = add nuw nsw i64 %indvars.iv3396.i, 1
  br label %bb.cr

bb.cr:                                            ; preds = %..loopexit2486_crit_edge.us.us.us.i, %.preheader2492.us.us.i
  %indvars.iv3391.i = phi i64 [ %indvars.iv.next3392.i, %..loopexit2486_crit_edge.us.us.us.i ], [ 0, %.preheader2492.us.us.i ] ; 3 uses
  %i.ayn = phi <2 x float> [ %i.azz, %..loopexit2486_crit_edge.us.us.us.i ], [ %i.ayl, %.preheader2492.us.us.i ] ; 3 uses
  %i.ayo = trunc i64 %indvars.iv3391.i to i32
  %i.ayp = mul i32 %i.axh, %i.ayo
  %.reass2883.us.us.us.i = add i32 %i.ayp, %invariant.op2882.i ; 3 uses
  %i.ayq = icmp slt i32 %.reass2883.us.us.us.i, 0
  br i1 %i.ayq, label %..loopexit2486_crit_edge.us.us.us.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ayr = srem i32 %.reass2883.us.us.us.i, %i.axj
  %i.ays = sdiv exact i32 %.reass2883.us.us.us.i, %i.axj ; 2 uses
  %.not908.us.us.us.i = icmp eq i32 %i.ayr, 0
  %.not909.us.us.us.i = icmp slt i32 %i.ays, %i.kh
  %or.cond427 = select i1 %.not908.us.us.us.i, i1 %.not909.us.us.us.i, i1 false
  br i1 %or.cond427, label %.preheader2485.us.us.us.i, label %..loopexit2486_crit_edge.us.us.us.i

.preheader2485.us.us.us.i:                        ; preds = %bb.cs
  %i.ayt = mul nuw nsw i64 %indvars.iv3391.i, %i.ayj
  %i.ayu = sext i32 %i.ays to i64
  %i.ayv = mul nsw i64 %i.ayu, %i.le
  br label %bb.ct

bb.ct:                                            ; preds = %.loopexit2482.us.us.us.i, %.preheader2485.us.us.us.i
  %indvars.iv3386.i = phi i64 [ %indvars.iv.next3387.i, %.loopexit2482.us.us.us.i ], [ 0, %.preheader2485.us.us.us.i ] ; 3 uses
  %i.ayw = phi <2 x float> [ %i.azy, %.loopexit2482.us.us.us.i ], [ %i.ayn, %.preheader2485.us.us.us.i ] ; 3 uses
  %i.ayx = trunc i64 %indvars.iv3386.i to i32
  %i.ayy = mul i32 %i.axl, %i.ayx
  %.reass2874.us.us.us.i = add i32 %invariant.op2873.i, %i.ayy ; 3 uses
  %i.ayz = icmp slt i32 %.reass2874.us.us.us.i, 0
  br i1 %i.ayz, label %.loopexit2482.us.us.us.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.aza = srem i32 %.reass2874.us.us.us.i, %i.axn
  %i.azb = sdiv exact i32 %.reass2874.us.us.us.i, %i.axn ; 2 uses
  %.not910.us.us.us.i = icmp eq i32 %i.aza, 0
  %.not911.us.us.us.i = icmp slt i32 %i.azb, %i.kg
  %or.cond428 = select i1 %.not910.us.us.us.i, i1 %.not911.us.us.us.i, i1 false
  br i1 %or.cond428, label %_ZN4ncnn3MatD2Ev.exit948.us.us.us.i, label %.loopexit2482.us.us.us.i

_ZN4ncnn3MatD2Ev.exit948.us.us.us.i:              ; preds = %bb.cu
  %i.azc = add nuw nsw i64 %indvars.iv3386.i, %i.ayt
  %i.azd = shl i64 %i.azc, 2
  %i.aze = and i64 %i.azd, 4294967292
  %i.azf = getelementptr inbounds nuw [4 x i8], ptr %.27692890.us.us.i, i64 %i.aze
  %i.azg = load ptr, ptr %1, align 8, !tbaa !20, !noalias !439
  %i.azh = load i64, ptr %i.kq, align 8, !tbaa !21, !noalias !439
  %i.azi = load i64, ptr %i.ai, align 8, !tbaa !55, !noalias !439 ; 2 uses
  %factor.op.mul.us.us.us2909.i = mul i64 %i.azi, %i.azh ; 2 uses
  %i.azj = mul i64 %i.ayv, %i.azi
  %invariant.gep.us.us.us2910.i = getelementptr i8, ptr %i.azg, i64 %i.azj
  %i.azk = sext i32 %i.azb to i64
  %invariant.gep2863.us.us.us.i = getelementptr [4 x i8], ptr %invariant.gep.us.us.us2910.i, i64 %i.azk ; 2 uses
  %.reass.us2884.us.us.i = mul i64 %factor.op.mul.us.us.us2909.i, %indvars.iv3396.i
  %gep2864.us.us.us.i = getelementptr i8, ptr %invariant.gep2863.us.us.us.i, i64 %.reass.us2884.us.us.i
  %i.azl = load float, ptr %gep2864.us.us.us.i, align 4, !tbaa !39
  %.reass.us2884.us.us.1.i = mul i64 %factor.op.mul.us.us.us2909.i, %i.aym
  %gep2864.us.us.us.1.i = getelementptr i8, ptr %invariant.gep2863.us.us.us.i, i64 %.reass.us2884.us.us.1.i
  %i.azm = load float, ptr %gep2864.us.us.us.1.i, align 4, !tbaa !39
  %i.azn = load <4 x float>, ptr %i.azf, align 4, !tbaa !39 ; 2 uses
  %i.azo = shufflevector <4 x float> %i.azn, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.azp = insertelement <2 x float> poison, float %i.azl, i64 0
  %i.azq = shufflevector <2 x float> %i.azp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.azr = fmul fast <2 x float> %i.azo, %i.azq
  %i.azs = fadd fast <2 x float> %i.ayw, %i.azr
  %i.azt = shufflevector <4 x float> %i.azn, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.azu = insertelement <2 x float> poison, float %i.azm, i64 0
  %i.azv = shufflevector <2 x float> %i.azu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.azw = fmul fast <2 x float> %i.azt, %i.azv
  %i.azx = fadd fast <2 x float> %i.azw, %i.azs
  br label %.loopexit2482.us.us.us.i

.loopexit2482.us.us.us.i:                         ; preds = %_ZN4ncnn3MatD2Ev.exit948.us.us.us.i, %bb.cu, %bb.ct
  %i.azy = phi <2 x float> [ %i.ayw, %bb.ct ], [ %i.ayw, %bb.cu ], [ %i.azx, %_ZN4ncnn3MatD2Ev.exit948.us.us.us.i ] ; 2 uses
  %indvars.iv.next3387.i = add nuw nsw i64 %indvars.iv3386.i, 1 ; 2 uses
  %exitcond3390.not.i = icmp eq i64 %indvars.iv.next3387.i, %i.ayj
  br i1 %exitcond3390.not.i, label %..loopexit2486_crit_edge.us.us.us.i, label %bb.ct, !llvm.loop !380

..loopexit2486_crit_edge.us.us.us.i:              ; preds = %.loopexit2482.us.us.us.i, %bb.cs, %bb.cr
  %i.azz = phi <2 x float> [ %i.ayn, %bb.cr ], [ %i.ayn, %bb.cs ], [ %i.azy, %.loopexit2482.us.us.us.i ] ; 3 uses
  %indvars.iv.next3392.i = add nuw nsw i64 %indvars.iv3391.i, 1 ; 2 uses
  %exitcond3395.not.i = icmp eq i64 %indvars.iv.next3392.i, %wide.trip.count3348.i
  br i1 %exitcond3395.not.i, label %._crit_edge2879.split.us.us.us.i, label %bb.cr, !llvm.loop !381

._crit_edge2879.split.us.us.us.i:                 ; preds = %..loopexit2486_crit_edge.us.us.us.i
  %i.baa = getelementptr inbounds [4 x i8], ptr %.27692890.us.us.i, i64 %i.aoz ; 2 uses
  %indvars.iv.next3397.i = add nuw nsw i64 %indvars.iv3396.i, 2 ; 2 uses
  %i.bab = trunc i64 %indvars.iv.next3397.i to i32 ; 2 uses
  %i.bac = or i32 %i.bab, 1
  %i.bad = icmp slt i32 %i.bac, %i.kf
  br i1 %i.bad, label %.preheader2492.us.us.i, label %.preheader2495.i, !llvm.loop !382

.preheader2495.i:                                 ; preds = %._crit_edge2879.split.us.us.us.i, %.preheader2492.us.preheader.i, %.preheader2492.preheader.i, %._crit_edge2841.i
  %.2769.lcssa.i = phi ptr [ %.1768.lcssa.i, %._crit_edge2841.i ], [ %scevgep3380.i, %.preheader2492.preheader.i ], [ %scevgep3382.i, %.preheader2492.us.preheader.i ], [ %i.baa, %._crit_edge2879.split.us.us.us.i ]
  %.2765.lcssa.i = phi i32 [ %.1764.lcssa.i, %._crit_edge2841.i ], [ %i.axx, %.preheader2492.preheader.i ], [ %i.ayi, %.preheader2492.us.preheader.i ], [ %i.bab, %._crit_edge2879.split.us.us.us.i ] ; 2 uses
  %i.bae = phi <2 x float> [ %i.axe, %._crit_edge2841.i ], [ %i.axe, %.preheader2492.preheader.i ], [ %i.axe, %.preheader2492.us.preheader.i ], [ %i.azz, %._crit_edge2879.split.us.us.us.i ] ; 3 uses
  %i.baf = icmp slt i32 %.2765.lcssa.i, %i.kf
  br i1 %i.baf, label %.preheader2491.lr.ph.i, label %._crit_edge2939.i

.preheader2491.lr.ph.i:                           ; preds = %.preheader2495.i
  %i.bag = load i32, ptr %i.d, align 4
  %i.bah = load i32, ptr %i.j, align 4
  %invariant.op2928.i = sub i32 %.neg2450.i, %i.bah
  %i.bai = load i32, ptr %i.f, align 4            ; 2 uses
  %i.baj = load i32, ptr %i.a, align 4
  %.fr3171.i = freeze i32 %i.baj                  ; 2 uses
  %i.bak = load i32, ptr %i.c, align 4
  %i.bal = load i32, ptr %i.i, align 4
  %.neg2440.i = add nuw nsw i32 %.08032955.i, 1
  %invariant.op2920.i = sub i32 %.neg2440.i, %i.bal
  %i.bam = load i32, ptr %i.e, align 4            ; 2 uses
  %i.ban = icmp sgt i32 %.fr3171.i, 0
  %or.cond3627.i = and i1 %i.aos, %i.ban
  br i1 %or.cond3627.i, label %.preheader2491.us.us.preheader.i, label %._crit_edge2939.i

.preheader2491.us.us.preheader.i:                 ; preds = %.preheader2491.lr.ph.i
  %i.bao = zext nneg i32 %.fr3171.i to i64        ; 2 uses
  %i.bap = zext i32 %.2765.lcssa.i to i64
  br label %.preheader2491.us.us.i

.preheader2491.us.us.i:                           ; preds = %._crit_edge2925.split.us.us.us.i, %.preheader2491.us.us.preheader.i
  %indvars.iv3409.i = phi i64 [ %i.bap, %.preheader2491.us.us.preheader.i ], [ %indvars.iv.next3410.i, %._crit_edge2925.split.us.us.us.i ] ; 2 uses
  %.37702936.us.us.i = phi ptr [ %.2769.lcssa.i, %.preheader2491.us.us.preheader.i ], [ %i.bca, %._crit_edge2925.split.us.us.us.i ] ; 2 uses
  %i.baq = phi <2 x float> [ %i.bae, %.preheader2491.us.us.preheader.i ], [ %i.bbz, %._crit_edge2925.split.us.us.us.i ]
  br label %bb.cv

bb.cv:                                            ; preds = %..loopexit2484_crit_edge.us.us.us.i, %.preheader2491.us.us.i
  %indvars.iv3404.i = phi i64 [ %indvars.iv.next3405.i, %..loopexit2484_crit_edge.us.us.us.i ], [ 0, %.preheader2491.us.us.i ] ; 3 uses
  %i.bar = phi <2 x float> [ %i.bbz, %..loopexit2484_crit_edge.us.us.us.i ], [ %i.baq, %.preheader2491.us.us.i ] ; 3 uses
  %i.bas = trunc i64 %indvars.iv3404.i to i32
  %i.bat = mul i32 %i.bag, %i.bas
  %.reass2929.us.us.us.i = add i32 %i.bat, %invariant.op2928.i ; 3 uses
  %i.bau = icmp slt i32 %.reass2929.us.us.us.i, 0
  br i1 %i.bau, label %..loopexit2484_crit_edge.us.us.us.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.bav = srem i32 %.reass2929.us.us.us.i, %i.bai
  %i.baw = sdiv exact i32 %.reass2929.us.us.us.i, %i.bai ; 2 uses
  %.not904.us.us.us.i = icmp eq i32 %i.bav, 0
  %.not905.us.us.us.i = icmp slt i32 %i.baw, %i.kh
  %or.cond429 = select i1 %.not904.us.us.us.i, i1 %.not905.us.us.us.i, i1 false
  br i1 %or.cond429, label %.preheader2483.us.us.us.i, label %..loopexit2484_crit_edge.us.us.us.i

.preheader2483.us.us.us.i:                        ; preds = %bb.cw
  %i.bax = mul nuw nsw i64 %indvars.iv3404.i, %i.bao
  %i.bay = sext i32 %i.baw to i64
  %i.baz = mul nsw i64 %i.bay, %i.le
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cz, %.preheader2483.us.us.us.i
  %indvars.iv3399.i = phi i64 [ %indvars.iv.next3400.i, %bb.cz ], [ 0, %.preheader2483.us.us.us.i ] ; 3 uses
  %i.bba = phi <2 x float> [ %i.bby, %bb.cz ], [ %i.bar, %.preheader2483.us.us.us.i ] ; 3 uses
  %i.bbb = trunc i64 %indvars.iv3399.i to i32
  %i.bbc = mul i32 %i.bak, %i.bbb
  %.reass.us2930.us.us.i = add i32 %invariant.op2920.i, %i.bbc ; 3 uses
  %i.bbd = icmp slt i32 %.reass.us2930.us.us.i, 0
  br i1 %i.bbd, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.bbe = srem i32 %.reass.us2930.us.us.i, %i.bam
  %i.bbf = sdiv exact i32 %.reass.us2930.us.us.i, %i.bam ; 2 uses
  %.not906.us.us.us.i = icmp eq i32 %i.bbe, 0
  %.not907.us.us.us.i = icmp slt i32 %i.bbf, %i.kg
  %or.cond430 = select i1 %.not906.us.us.us.i, i1 %.not907.us.us.us.i, i1 false
  br i1 %or.cond430, label %_ZN4ncnn3MatD2Ev.exit947.us.us.us.i, label %bb.cz

_ZN4ncnn3MatD2Ev.exit947.us.us.us.i:              ; preds = %bb.cy
  %i.bbg = add nuw nsw i64 %indvars.iv3399.i, %i.bax
  %.idx3573.i = shl nuw nsw i64 %i.bbg, 3
  %i.bbh = getelementptr inbounds nuw i8, ptr %.37702936.us.us.i, i64 %.idx3573.i
  %i.bbi = load ptr, ptr %1, align 8, !tbaa !20, !noalias !440
  %i.bbj = load i64, ptr %i.kq, align 8, !tbaa !21, !noalias !440
  %i.bbk = mul i64 %i.bbj, %indvars.iv3409.i
  %i.bbl = load i64, ptr %i.ai, align 8, !tbaa !55, !noalias !440 ; 2 uses
  %i.bbm = mul i64 %i.bbk, %i.bbl
  %i.bbn = getelementptr inbounds nuw i8, ptr %i.bbi, i64 %i.bbm
  %i.bbo = mul i64 %i.baz, %i.bbl
  %i.bbp = getelementptr inbounds nuw i8, ptr %i.bbn, i64 %i.bbo
  %i.bbq = sext i32 %i.bbf to i64
  %i.bbr = getelementptr inbounds [4 x i8], ptr %i.bbp, i64 %i.bbq
  %i.bbs = load float, ptr %i.bbr, align 4, !tbaa !39
  %i.bbt = load <2 x float>, ptr %i.bbh, align 4, !tbaa !39
  %i.bbu = insertelement <2 x float> poison, float %i.bbs, i64 0
  %i.bbv = shufflevector <2 x float> %i.bbu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bbw = fmul fast <2 x float> %i.bbt, %i.bbv
  %i.bbx = fadd fast <2 x float> %i.bbw, %i.bba
  br label %bb.cz

bb.cz:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit947.us.us.us.i, %bb.cy, %bb.cx
  %i.bby = phi <2 x float> [ %i.bba, %bb.cx ], [ %i.bba, %bb.cy ], [ %i.bbx, %_ZN4ncnn3MatD2Ev.exit947.us.us.us.i ] ; 2 uses
  %indvars.iv.next3400.i = add nuw nsw i64 %indvars.iv3399.i, 1 ; 2 uses
  %exitcond3403.not.i = icmp eq i64 %indvars.iv.next3400.i, %i.bao
  br i1 %exitcond3403.not.i, label %..loopexit2484_crit_edge.us.us.us.i, label %bb.cx, !llvm.loop !385

..loopexit2484_crit_edge.us.us.us.i:              ; preds = %bb.cz, %bb.cw, %bb.cv
  %i.bbz = phi <2 x float> [ %i.bar, %bb.cv ], [ %i.bar, %bb.cw ], [ %i.bby, %bb.cz ] ; 3 uses
  %indvars.iv.next3405.i = add nuw nsw i64 %indvars.iv3404.i, 1 ; 2 uses
  %exitcond3408.not.i = icmp eq i64 %indvars.iv.next3405.i, %wide.trip.count3348.i
  br i1 %exitcond3408.not.i, label %._crit_edge2925.split.us.us.us.i, label %bb.cv, !llvm.loop !386

._crit_edge2925.split.us.us.us.i:                 ; preds = %..loopexit2484_crit_edge.us.us.us.i
  %i.bca = getelementptr inbounds [4 x i8], ptr %.37702936.us.us.i, i64 %i.apb
  %indvars.iv.next3410.i = add nuw nsw i64 %indvars.iv3409.i, 1 ; 2 uses
  %i.bcb = trunc nuw i64 %indvars.iv.next3410.i to i32
  %i.bcc = icmp sgt i32 %i.kf, %i.bcb
  br i1 %i.bcc, label %.preheader2491.us.us.i, label %._crit_edge2939.i, !llvm.loop !387

._crit_edge2939.i:                                ; preds = %._crit_edge2925.split.us.us.us.i, %.preheader2491.lr.ph.i, %.preheader2495.i
  %i.bcd = phi <2 x float> [ %i.bae, %.preheader2495.i ], [ %i.bae, %.preheader2491.lr.ph.i ], [ %i.bbz, %._crit_edge2925.split.us.us.us.i ] ; 12 uses
  switch i32 %i.aop, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2398.i
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2401.i
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2395.i
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2404.i
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2407.i
    i32 6, label %bb.da
  ]

_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2398.i: ; preds = %._crit_edge2939.i
  %i.bce = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bcd, <2 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2401.i: ; preds = %._crit_edge2939.i
  %i.bcf = load ptr, ptr %i.iu, align 8, !tbaa !20
  %i.bcg = load float, ptr %i.bcf, align 4, !tbaa !39
  %i.bch = fcmp fast ogt <2 x float> %i.bcd, zeroinitializer
  %i.bci = insertelement <2 x float> poison, float %i.bcg, i64 0
  %i.bcj = shufflevector <2 x float> %i.bci, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bck = select <2 x i1> %i.bch, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bcj
  %i.bcl = fmul fast <2 x float> %i.bck, %i.bcd
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2395.i: ; preds = %._crit_edge2939.i
  %i.bcm = load ptr, ptr %i.iu, align 8, !tbaa !20 ; 2 uses
  %i.bcn = load float, ptr %i.bcm, align 4, !tbaa !39 ; 2 uses
  %i.bco = getelementptr inbounds nuw i8, ptr %i.bcm, i64 4
  %i.bcp = load float, ptr %i.bco, align 4, !tbaa !39 ; 3 uses
  %i.bcq = extractelement <2 x float> %i.bcd, i64 0
  %spec.select.i = call nnan ninf nsz float @llvm.maxnum.f32(float %i.bcq, float %i.bcn) ; 2 uses
  %i.bcr = fcmp fast ogt float %spec.select.i, %i.bcp
  %.123072397.i = select i1 %i.bcr, float %i.bcp, float %spec.select.i
  %i.bcs = extractelement <2 x float> %i.bcd, i64 1
  %.02308.i = call nnan ninf nsz float @llvm.maxnum.f32(float %i.bcs, float %i.bcn)
  %spec.select2420.i = call nnan ninf nsz float @llvm.minnum.f32(float %.02308.i, float %i.bcp)
  %i.bct = insertelement <2 x float> poison, float %.123072397.i, i64 0
  %i.bcu = insertelement <2 x float> %i.bct, float %spec.select2420.i, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2404.i: ; preds = %._crit_edge2939.i
  %i.bcv = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.bcd, <2 x float> splat (float f0x42B0C0A5))
  %i.bcw = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bcv, <2 x float> splat (float f0xC2B0C0A5))
  %i.bcx = fneg fast <2 x float> %i.bcw
  %i.bcy = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.bcx)
  %i.bcz = fadd fast <2 x float> %i.bcy, splat (float 1.000000e+00)
  %i.bda = fdiv fast <2 x float> splat (float 1.000000e+00), %i.bcz
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2407.i: ; preds = %._crit_edge2939.i
  %i.bdb = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.bcd)
  %i.bdc = fadd fast <2 x float> %i.bdb, splat (float 1.000000e+00)
  %i.bdd = call fast <2 x float> @llvm.log.v2f32(<2 x float> %i.bdc)
  %i.bde = call fast <2 x float> @llvm.tanh.v2f32(<2 x float> %i.bdd)
  %i.bdf = fmul fast <2 x float> %i.bde, %i.bcd
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i

bb.da:                                            ; preds = %._crit_edge2939.i
  %i.bdg = load ptr, ptr %i.iu, align 8, !tbaa !20 ; 2 uses
  %i.bdh = load float, ptr %i.bdg, align 4, !tbaa !39 ; 5 uses
  %i.bdi = getelementptr inbounds nuw i8, ptr %i.bdg, i64 4
  %i.bdj = load float, ptr %i.bdi, align 4, !tbaa !39 ; 3 uses
  %i.bdk = fneg fast float %i.bdj
  %i.bdl = fdiv fast float %i.bdk, %i.bdh         ; 4 uses
  %i.bdm = extractelement <2 x float> %i.bcd, i64 0 ; 5 uses
  %i.bdn = fcmp fast olt float %i.bdm, %i.bdl
  br i1 %i.bdn, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread.i, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.bdo = fdiv fast float 1.000000e+00, %i.bdh
  %i.bdp = fadd fast float %i.bdl, %i.bdo
  %i.bdq = fcmp fast ogt float %i.bdm, %i.bdp
  br i1 %i.bdq, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread.i, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.bdr = fmul fast float %i.bdh, %i.bdm
  %i.bds = fadd fast float %i.bdr, %i.bdj
  %i.bdt = fmul fast float %i.bds, %i.bdm
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread.i: ; preds = %bb.dc, %bb.db, %bb.da
  %.123072391.i = phi float [ %i.bdt, %bb.dc ], [ 0.000000e+00, %bb.da ], [ %i.bdm, %bb.db ] ; 2 uses
  %i.bdu = extractelement <2 x float> %i.bcd, i64 1 ; 4 uses
  %i.bdv = fcmp fast olt float %i.bdu, %i.bdl
  %i.bdw = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.123072391.i, i64 0 ; 2 uses
  br i1 %i.bdv, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i, label %bb.dd

bb.dd:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread.i
  %i.bdx = fdiv fast float 1.000000e+00, %i.bdh
  %i.bdy = fadd fast float %i.bdl, %i.bdx
  %i.bdz = fcmp fast ogt float %i.bdu, %i.bdy
  %i.bea = insertelement <2 x float> %i.bcd, float %.123072391.i, i64 0
  br i1 %i.bdz, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.beb = fmul fast float %i.bdh, %i.bdu
  %i.bec = fadd fast float %i.beb, %i.bdj
  %i.bed = fmul fast float %i.bec, %i.bdu
  %i.bee = insertelement <2 x float> %i.bdw, float %i.bed, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i:     ; preds = %bb.de, %bb.dd, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2407.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2404.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2395.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2401.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2398.i, %._crit_edge2939.i
  %i.bef = phi <2 x float> [ %i.bdw, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread.i ], [ %i.bce, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2398.i ], [ %i.bcl, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2401.i ], [ %i.bcd, %._crit_edge2939.i ], [ %i.bcu, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2395.i ], [ %i.bda, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2404.i ], [ %i.bdf, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2407.i ], [ %i.bee, %bb.de ], [ %i.bea, %bb.dd ] ; 2 uses
  %i.beg = extractelement <2 x float> %i.bef, i64 0
  store float %i.beg, ptr %.18082953.i, align 4, !tbaa !39
  %i.beh = extractelement <2 x float> %i.bef, i64 1
  store float %i.beh, ptr %.18062954.i, align 4, !tbaa !39
  %i.bei = getelementptr inbounds nuw i8, ptr %.18082953.i, i64 4 ; 2 uses
  %i.bej = getelementptr inbounds nuw i8, ptr %.18062954.i, i64 4 ; 2 uses
  %i.bek = add nuw nsw i32 %.08032955.i, 1        ; 2 uses
  %exitcond3412.not.i = icmp eq i32 %i.bek, %i.ki
  br i1 %exitcond3412.not.i, label %._crit_edge2956.i, label %bb.cd, !llvm.loop !388

_ZN4ncnn3MatD2Ev.exit946.i:                       ; preds = %._crit_edge3152.i, %_ZN4ncnn3MatD2Ev.exit946.lr.ph.split.split.i
  %indvars.iv3501.i = phi i64 [ %i.anv, %_ZN4ncnn3MatD2Ev.exit946.lr.ph.split.split.i ], [ %indvars.iv.next3502.i, %._crit_edge3152.i ] ; 4 uses
  %.reass3156.i = mul i64 %factor.op.mul3155.i, %indvars.iv3501.i
  %i.bel = getelementptr inbounds nuw i8, ptr %i.ana, i64 %.reass3156.i
  %i.bem = load ptr, ptr %i.l, align 8            ; 2 uses
  %.not.i121 = icmp eq ptr %i.bem, null
  %i.ben = getelementptr inbounds [4 x i8], ptr %i.bem, i64 %indvars.iv3501.i
  %i.beo = trunc nsw i64 %indvars.iv3501.i to i32 ; 4 uses
  %i.bep = sdiv i32 %i.beo, 8
  %i.beq = srem i32 %i.beo, 8
  %.lhs.trunc2414.i = trunc nsw i32 %i.beq to i8
  %i.ber = sdiv i8 %.lhs.trunc2414.i, 4
  %.sext2415.i = sext i8 %i.ber to i32
  %i.bes = srem i32 %i.beo, 4
  %.lhs.trunc2416.i = trunc nsw i32 %i.bes to i8
  %i.bet = sdiv i8 %.lhs.trunc2416.i, 2
  %.sext2417.i = sext i8 %i.bet to i32
  %i.beu = srem i32 %i.beo, 2
  %i.bev = add nsw i32 %i.beu, %i.bep
  %i.bew = add nsw i32 %i.bev, %.sext2415.i
  %i.bex = add nsw i32 %i.bew, %.sext2417.i
  %i.bey = sext i32 %i.bex to i64
  %i.bez = load i32, ptr %i.g, align 4
  %.reass3159.i = mul i64 %factor.op.mul3158.i, %i.bey
  %i.bfa = getelementptr i8, ptr %i.anj, i64 %.reass3159.i ; 3 uses
  br label %.preheader2481.i

.preheader2481.i:                                 ; preds = %._crit_edge3148.i, %_ZN4ncnn3MatD2Ev.exit946.i
  %.07333151.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit946.i ], [ %.neg2434.i, %._crit_edge3148.i ]
  %.07343150.i = phi ptr [ %i.bel, %_ZN4ncnn3MatD2Ev.exit946.i ], [ %i.bsa, %._crit_edge3148.i ]
  %i.bfb = load i32, ptr %i.b, align 4            ; 2 uses
  %i.bfc = icmp sgt i32 %i.bfb, 0                 ; 4 uses
  %.neg2434.i = add nuw nsw i32 %.07333151.i, 1   ; 6 uses
  %i.bfd = load i32, ptr %i.k, align 4            ; 4 uses
  %i.bfe = shl i32 %i.bfd, 3
  %i.bff = sext i32 %i.bfe to i64                 ; 2 uses
  %i.bfg = shl i32 %i.bfd, 2
  %i.bfh = sext i32 %i.bfg to i64                 ; 3 uses
  %i.bfi = shl i32 %i.bfd, 1
  %i.bfj = sext i32 %i.bfi to i64                 ; 3 uses
  %i.bfk = sext i32 %i.bfd to i64
  %i.bfl = mul nsw i64 %i.bff, %i.anp
  %scevgep3420.i = getelementptr i8, ptr %i.bfa, i64 %i.bfl
  %wide.trip.count3435.i = zext nneg i32 %i.bfb to i64 ; 5 uses
  br label %bb.df

._crit_edge3152.i:                                ; preds = %._crit_edge3148.i
  %indvars.iv.next3502.i = add nsw i64 %indvars.iv3501.i, 1 ; 2 uses
  %i.bfm = icmp slt i64 %indvars.iv.next3502.i, %i.anw
  br i1 %i.bfm, label %_ZN4ncnn3MatD2Ev.exit946.i, label %_ZN4ncnnL20deconvolution_packedERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.exit, !llvm.loop !389

._crit_edge3148.i:                                ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i
  %exitcond3500.not.i = icmp eq i32 %.neg2434.i, %i.amz
  br i1 %exitcond3500.not.i, label %._crit_edge3152.i, label %.preheader2481.i, !llvm.loop !390

bb.df:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i, %.preheader2481.i
  %.07323147.i = phi i32 [ 0, %.preheader2481.i ], [ %i.bsb, %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i ] ; 5 uses
  %.17353146.i = phi ptr [ %.07343150.i, %.preheader2481.i ], [ %i.bsa, %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i ] ; 2 uses
  br i1 %.not.i121, label %_ZN4ncnn3MatD2Ev.exit945.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.bfn = load float, ptr %i.ben, align 4, !tbaa !39
  br label %_ZN4ncnn3MatD2Ev.exit945.i

_ZN4ncnn3MatD2Ev.exit945.i:                       ; preds = %bb.dg, %bb.df
  %.0728.i = phi nsz float [ %i.bfn, %bb.dg ], [ 0.000000e+00, %bb.df ]
  br i1 %i.anf, label %.preheader2479.lr.ph.i, label %._crit_edge2996.i

.preheader2479.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit945.i
  %i.bfo = load i32, ptr %i.d, align 4
  %i.bfp = load i32, ptr %i.j, align 4
  %invariant.op2987.i = sub i32 %.neg2434.i, %i.bfp
  %i.bfq = load i32, ptr %i.f, align 4            ; 2 uses
  %i.bfr = load i32, ptr %i.a, align 4
  %.fr3172.i = freeze i32 %i.bfr                  ; 2 uses
  %i.bfs = load i32, ptr %i.c, align 4
  %i.bft = load i32, ptr %i.i, align 4
  %.neg2436.i = add nuw nsw i32 %.07323147.i, 1
  %invariant.op2980.i = sub i32 %.neg2436.i, %i.bft
  %i.bfu = load i32, ptr %i.e, align 4            ; 2 uses
  %i.bfv = icmp sgt i32 %.fr3172.i, 0
  %or.cond3628.i = and i1 %i.bfc, %i.bfv
  br i1 %or.cond3628.i, label %.preheader2479.us.us.preheader.i, label %._crit_edge2996.i

.preheader2479.us.us.preheader.i:                 ; preds = %.preheader2479.lr.ph.i
  %i.bfw = zext nneg i32 %.fr3172.i to i64        ; 2 uses
  br label %.preheader2479.us.us.i

.preheader2479.us.us.i:                           ; preds = %._crit_edge2985.split.us.us.us.i, %.preheader2479.us.us.preheader.i
  %indvars.iv3437.i = phi i64 [ 0, %.preheader2479.us.us.preheader.i ], [ %indvars.iv.next3438.i, %._crit_edge2985.split.us.us.us.i ] ; 11 uses
  %.07242992.us.us.i = phi ptr [ %i.bfa, %.preheader2479.us.us.preheader.i ], [ %i.bir, %._crit_edge2985.split.us.us.us.i ] ; 2 uses
  %.023642991.us.us.i = phi <8 x float> [ zeroinitializer, %.preheader2479.us.us.preheader.i ], [ %.42368.us.us.us.i, %._crit_edge2985.split.us.us.us.i ]
  %i.bfx = lshr exact i64 %indvars.iv3437.i, 2    ; 2 uses
  %i.bfy = or disjoint i64 %i.bfx, 1
  %i.bfz = lshr exact i64 %indvars.iv3437.i, 3
  %i.bga = or disjoint i64 %indvars.iv3437.i, 1
  %i.bgb = or disjoint i64 %indvars.iv3437.i, 2
  %i.bgc = or disjoint i64 %indvars.iv3437.i, 3
  %i.bgd = or disjoint i64 %indvars.iv3437.i, 4
  %i.bge = or disjoint i64 %indvars.iv3437.i, 5
  %i.bgf = or disjoint i64 %indvars.iv3437.i, 6
  %i.bgg = or disjoint i64 %indvars.iv3437.i, 7
  br label %bb.dh

bb.dh:                                            ; preds = %..loopexit2475_crit_edge.us.us.us.i, %.preheader2479.us.us.i
  %indvars.iv3432.i = phi i64 [ %indvars.iv.next3433.i, %..loopexit2475_crit_edge.us.us.us.i ], [ 0, %.preheader2479.us.us.i ] ; 3 uses
  %.123652982.us.us.us.i = phi <8 x float> [ %.42368.us.us.us.i, %..loopexit2475_crit_edge.us.us.us.i ], [ %.023642991.us.us.i, %.preheader2479.us.us.i ] ; 3 uses
  %i.bgh = trunc i64 %indvars.iv3432.i to i32
  %i.bgi = mul i32 %i.bfo, %i.bgh
  %.reass2988.us.us.us.i = add i32 %i.bgi, %invariant.op2987.i ; 3 uses
  %i.bgj = icmp slt i32 %.reass2988.us.us.us.i, 0
  br i1 %i.bgj, label %..loopexit2475_crit_edge.us.us.us.i, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.bgk = srem i32 %.reass2988.us.us.us.i, %i.bfq
  %i.bgl = sdiv exact i32 %.reass2988.us.us.us.i, %i.bfq ; 2 uses
  %.not899.us.us.us.i = icmp eq i32 %i.bgk, 0
  %.not900.us.us.us.i = icmp slt i32 %i.bgl, %i.amx
  %or.cond431 = select i1 %.not899.us.us.us.i, i1 %.not900.us.us.us.i, i1 false
  br i1 %or.cond431, label %.preheader2474.us.us.us.i, label %..loopexit2475_crit_edge.us.us.us.i

.preheader2474.us.us.us.i:                        ; preds = %bb.di
  %i.bgm = mul nuw nsw i64 %indvars.iv3432.i, %i.bfw
  %i.bgn = sext i32 %i.bgl to i64
  %i.bgo = mul nsw i64 %i.bgn, %i.anx             ; 3 uses
  br label %bb.dj

bb.dj:                                            ; preds = %bb.dm, %.preheader2474.us.us.us.i
  %indvars.iv3427.i = phi i64 [ %indvars.iv.next3428.i, %bb.dm ], [ 0, %.preheader2474.us.us.us.i ] ; 3 uses
  %.223662977.us.us.us.i = phi <8 x float> [ %.32367.us.us.us.i, %bb.dm ], [ %.123652982.us.us.us.i, %.preheader2474.us.us.us.i ] ; 4 uses
  %i.bgp = trunc i64 %indvars.iv3427.i to i32
  %i.bgq = mul i32 %i.bfs, %i.bgp
  %.reass2981.us.us.us.i = add i32 %invariant.op2980.i, %i.bgq ; 3 uses
  %i.bgr = icmp slt i32 %.reass2981.us.us.us.i, 0
  br i1 %i.bgr, label %bb.dm, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.bgs = srem i32 %.reass2981.us.us.us.i, %i.bfu
  %i.bgt = sdiv exact i32 %.reass2981.us.us.us.i, %i.bfu ; 4 uses
  %.not901.us.us.us.i = icmp eq i32 %i.bgs, 0
  %.not902.us.us.us.i = icmp slt i32 %i.bgt, %i.amw
  %or.cond432 = select i1 %.not901.us.us.us.i, i1 %.not902.us.us.us.i, i1 false
  br i1 %or.cond432, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.bgu = add nuw nsw i64 %indvars.iv3427.i, %i.bgm
  %i.bgv = shl i64 %i.bgu, 3
  %i.bgw = and i64 %i.bgv, 4294967288
  %i.bgx = getelementptr inbounds nuw [4 x i8], ptr %.07242992.us.us.i, i64 %i.bgw
  switch i32 %.fr3034.i, label %bb.dm [
    i32 8, label %_ZN4ncnn3MatD2Ev.exit944.us.us.us.i
    i32 4, label %_ZN4ncnn3MatD2Ev.exit943.us.us.us.i
    i32 1, label %_ZN4ncnn3MatD2Ev.exit941.us.us.us.i
  ]

_ZN4ncnn3MatD2Ev.exit941.us.us.us.i:              ; preds = %bb.dl
  %i.bgy = load ptr, ptr %1, align 8, !tbaa !20, !noalias !441
  %i.bgz = load i64, ptr %i.ang, align 8, !tbaa !21, !noalias !441
  %i.bha = load i64, ptr %i.ai, align 8, !tbaa !55, !noalias !441 ; 2 uses
  %factor.op.mul2972.us.us.us.i = mul i64 %i.bha, %i.bgz ; 8 uses
  %i.bhb = mul i64 %i.bgo, %i.bha
  %invariant.gep.us.us.us3010.i = getelementptr i8, ptr %i.bgy, i64 %i.bhb
  %i.bhc = sext i32 %i.bgt to i64
  %invariant.gep2974.us.us.us.i = getelementptr [4 x i8], ptr %invariant.gep.us.us.us3010.i, i64 %i.bhc ; 8 uses
  %.reass2973.us.us.us.i = mul i64 %factor.op.mul2972.us.us.us.i, %indvars.iv3437.i
  %gep2975.us.us.us.i = getelementptr i8, ptr %invariant.gep2974.us.us.us.i, i64 %.reass2973.us.us.us.i
  %i.bhd = load float, ptr %gep2975.us.us.us.i, align 4, !tbaa !39
  %.sroa.03505.0.vec.insert.i = insertelement <8 x float> poison, float %i.bhd, i64 0
  %.reass2973.us.us.us.1.i = mul i64 %factor.op.mul2972.us.us.us.i, %i.bga
  %gep2975.us.us.us.1.i = getelementptr i8, ptr %invariant.gep2974.us.us.us.i, i64 %.reass2973.us.us.us.1.i
  %i.bhe = load float, ptr %gep2975.us.us.us.1.i, align 4, !tbaa !39
  %.sroa.03505.4.vec.insert.i = insertelement <8 x float> %.sroa.03505.0.vec.insert.i, float %i.bhe, i64 1
  %.reass2973.us.us.us.2.i = mul i64 %factor.op.mul2972.us.us.us.i, %i.bgb
  %gep2975.us.us.us.2.i = getelementptr i8, ptr %invariant.gep2974.us.us.us.i, i64 %.reass2973.us.us.us.2.i
  %i.bhf = load float, ptr %gep2975.us.us.us.2.i, align 4, !tbaa !39
  %.sroa.03505.8.vec.insert.i = insertelement <8 x float> %.sroa.03505.4.vec.insert.i, float %i.bhf, i64 2
  %.reass2973.us.us.us.3.i = mul i64 %factor.op.mul2972.us.us.us.i, %i.bgc
  %gep2975.us.us.us.3.i = getelementptr i8, ptr %invariant.gep2974.us.us.us.i, i64 %.reass2973.us.us.us.3.i
  %i.bhg = load float, ptr %gep2975.us.us.us.3.i, align 4, !tbaa !39
  %.sroa.03505.12.vec.insert.i = insertelement <8 x float> %.sroa.03505.8.vec.insert.i, float %i.bhg, i64 3
  %.reass2973.us.us.us.4.i = mul i64 %factor.op.mul2972.us.us.us.i, %i.bgd
  %gep2975.us.us.us.4.i = getelementptr i8, ptr %invariant.gep2974.us.us.us.i, i64 %.reass2973.us.us.us.4.i
  %i.bhh = load float, ptr %gep2975.us.us.us.4.i, align 4, !tbaa !39
  %.sroa.03505.16.vec.insert.i = insertelement <8 x float> %.sroa.03505.12.vec.insert.i, float %i.bhh, i64 4
  %.reass2973.us.us.us.5.i = mul i64 %factor.op.mul2972.us.us.us.i, %i.bge
  %gep2975.us.us.us.5.i = getelementptr i8, ptr %invariant.gep2974.us.us.us.i, i64 %.reass2973.us.us.us.5.i
  %i.bhi = load float, ptr %gep2975.us.us.us.5.i, align 4, !tbaa !39
  %.sroa.03505.20.vec.insert.i = insertelement <8 x float> %.sroa.03505.16.vec.insert.i, float %i.bhi, i64 5
  %.reass2973.us.us.us.6.i = mul i64 %factor.op.mul2972.us.us.us.i, %i.bgf
  %gep2975.us.us.us.6.i = getelementptr i8, ptr %invariant.gep2974.us.us.us.i, i64 %.reass2973.us.us.us.6.i
  %i.bhj = load float, ptr %gep2975.us.us.us.6.i, align 4, !tbaa !39
  %.sroa.03505.24.vec.insert.i = insertelement <8 x float> %.sroa.03505.20.vec.insert.i, float %i.bhj, i64 6
  %.reass2973.us.us.us.7.i = mul i64 %factor.op.mul2972.us.us.us.i, %i.bgg
  %gep2975.us.us.us.7.i = getelementptr i8, ptr %invariant.gep2974.us.us.us.i, i64 %.reass2973.us.us.us.7.i
  %i.bhk = load float, ptr %gep2975.us.us.us.7.i, align 4, !tbaa !39
  %.sroa.03505.28.vec.insert.i = insertelement <8 x float> %.sroa.03505.24.vec.insert.i, float %i.bhk, i64 7
  br label %.sink.split3629.i

_ZN4ncnn3MatD2Ev.exit943.us.us.us.i:              ; preds = %bb.dl
  %i.bhl = load ptr, ptr %1, align 8, !tbaa !20, !noalias !442 ; 2 uses
  %i.bhm = load i64, ptr %i.ang, align 8, !tbaa !21, !noalias !442
  %i.bhn = load i64, ptr %i.ai, align 8, !tbaa !55, !noalias !442 ; 2 uses
  %i.bho = mul i64 %i.bhn, %i.bhm                 ; 2 uses
  %i.bhp = mul i64 %i.bho, %i.bfx
  %i.bhq = getelementptr inbounds nuw i8, ptr %i.bhl, i64 %i.bhp
  %i.bhr = mul i64 %i.bgo, %i.bhn                 ; 2 uses
  %i.bhs = getelementptr inbounds nuw i8, ptr %i.bhq, i64 %i.bhr
  %i.bht = shl nsw i32 %i.bgt, 2
  %i.bhu = sext i32 %i.bht to i64                 ; 2 uses
  %i.bhv = getelementptr inbounds [4 x i8], ptr %i.bhs, i64 %i.bhu
  %i.bhw = mul i64 %i.bho, %i.bfy
  %i.bhx = getelementptr inbounds nuw i8, ptr %i.bhl, i64 %i.bhw
  %i.bhy = getelementptr inbounds nuw i8, ptr %i.bhx, i64 %i.bhr
  %i.bhz = getelementptr inbounds [4 x i8], ptr %i.bhy, i64 %i.bhu
  %i.bia = load <4 x float>, ptr %i.bhv, align 16, !tbaa !82
  %i.bib = load <4 x float>, ptr %i.bhz, align 16, !tbaa !82
  %i.bic = shufflevector <4 x float> %i.bia, <4 x float> %i.bib, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %.sink.split3629.i

_ZN4ncnn3MatD2Ev.exit944.us.us.us.i:              ; preds = %bb.dl
  %i.bid = load ptr, ptr %1, align 8, !tbaa !20, !noalias !443
  %i.bie = load i64, ptr %i.ang, align 8, !tbaa !21, !noalias !443
  %i.bif = mul i64 %i.bie, %i.bfz
  %i.big = load i64, ptr %i.ai, align 8, !tbaa !55, !noalias !443 ; 2 uses
  %i.bih = mul i64 %i.bif, %i.big
  %i.bii = getelementptr inbounds nuw i8, ptr %i.bid, i64 %i.bih
  %i.bij = mul i64 %i.bgo, %i.big
  %i.bik = getelementptr inbounds nuw i8, ptr %i.bii, i64 %i.bij
  %i.bil = shl nsw i32 %i.bgt, 3
  %i.bim = sext i32 %i.bil to i64
  %i.bin = getelementptr inbounds [4 x i8], ptr %i.bik, i64 %i.bim
  %i.bio = load <8 x float>, ptr %i.bin, align 32, !tbaa !82
  br label %.sink.split3629.i

.sink.split3629.i:                                ; preds = %_ZN4ncnn3MatD2Ev.exit944.us.us.us.i, %_ZN4ncnn3MatD2Ev.exit943.us.us.us.i, %_ZN4ncnn3MatD2Ev.exit941.us.us.us.i
  %.sink3630.i = phi <8 x float> [ %i.bio, %_ZN4ncnn3MatD2Ev.exit944.us.us.us.i ], [ %i.bic, %_ZN4ncnn3MatD2Ev.exit943.us.us.us.i ], [ %.sroa.03505.28.vec.insert.i, %_ZN4ncnn3MatD2Ev.exit941.us.us.us.i ]
  %i.bip = load <8 x float>, ptr %i.bgx, align 32, !tbaa !82
  %i.biq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.sink3630.i, <8 x float> nofpclass(nan inf) %i.bip, <8 x float> nofpclass(nan inf) %.223662977.us.us.us.i)
  br label %bb.dm

bb.dm:                                            ; preds = %.sink.split3629.i, %bb.dl, %bb.dk, %bb.dj
  %.32367.us.us.us.i = phi nsz <8 x float> [ %.223662977.us.us.us.i, %bb.dj ], [ %.223662977.us.us.us.i, %bb.dl ], [ %.223662977.us.us.us.i, %bb.dk ], [ %i.biq, %.sink.split3629.i ] ; 2 uses
  %indvars.iv.next3428.i = add nuw nsw i64 %indvars.iv3427.i, 1 ; 2 uses
  %exitcond3431.not.i = icmp eq i64 %indvars.iv.next3428.i, %i.bfw
  br i1 %exitcond3431.not.i, label %..loopexit2475_crit_edge.us.us.us.i, label %bb.dj, !llvm.loop !397

..loopexit2475_crit_edge.us.us.us.i:              ; preds = %bb.dm, %bb.di, %bb.dh
  %.42368.us.us.us.i = phi nsz <8 x float> [ %.123652982.us.us.us.i, %bb.dh ], [ %.123652982.us.us.us.i, %bb.di ], [ %.32367.us.us.us.i, %bb.dm ] ; 3 uses
  %indvars.iv.next3433.i = add nuw nsw i64 %indvars.iv3432.i, 1 ; 2 uses
  %exitcond3436.not.i = icmp eq i64 %indvars.iv.next3433.i, %wide.trip.count3435.i
  br i1 %exitcond3436.not.i, label %._crit_edge2985.split.us.us.us.i, label %bb.dh, !llvm.loop !398

._crit_edge2985.split.us.us.us.i:                 ; preds = %..loopexit2475_crit_edge.us.us.us.i
  %i.bir = getelementptr inbounds [4 x i8], ptr %.07242992.us.us.i, i64 %i.bff ; 2 uses
  %indvars.iv.next3438.i = add nuw nsw i64 %indvars.iv3437.i, 8 ; 2 uses
  %i.bis = icmp slt i64 %indvars.iv.next3438.i, %invariant.op3592.i
  br i1 %i.bis, label %.preheader2479.us.us.i, label %._crit_edge2996.i, !llvm.loop !399

._crit_edge2996.i:                                ; preds = %._crit_edge2985.split.us.us.us.i, %.preheader2479.lr.ph.i, %_ZN4ncnn3MatD2Ev.exit945.i
  %.02364.lcssa.i = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit945.i ], [ zeroinitializer, %.preheader2479.lr.ph.i ], [ %.42368.us.us.us.i, %._crit_edge2985.split.us.us.us.i ] ; 2 uses
  %.0724.lcssa.i = phi ptr [ %i.bfa, %_ZN4ncnn3MatD2Ev.exit945.i ], [ %scevgep3420.i, %.preheader2479.lr.ph.i ], [ %i.bir, %._crit_edge2985.split.us.us.us.i ] ; 4 uses
  %.0723.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit945.i ], [ %i.anr, %.preheader2479.lr.ph.i ], [ %i.any, %._crit_edge2985.split.us.us.us.i ] ; 9 uses
  %i.bit = shufflevector <8 x float> %.02364.lcssa.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.biu = shufflevector <8 x float> %.02364.lcssa.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.biv = fadd fast <4 x float> %i.bit, %i.biu   ; 2 uses
  %i.biw = or disjoint i32 %.0723.lcssa.i, 3
  %i.bix = icmp slt i32 %i.biw, %i.amv
  br i1 %i.bix, label %.preheader2478.lr.ph.i, label %._crit_edge3056.i

.preheader2478.lr.ph.i:                           ; preds = %._crit_edge2996.i
  %i.biy = load i32, ptr %i.d, align 4            ; 2 uses
  %i.biz = load i32, ptr %i.j, align 4
  %invariant.op3040.i = sub i32 %.neg2434.i, %i.biz ; 2 uses
  %i.bja = load i32, ptr %i.f, align 4            ; 4 uses
  %i.bjb = load i32, ptr %i.a, align 4
  %.fr3173.i = freeze i32 %i.bjb                  ; 2 uses
  %i.bjc = load i32, ptr %i.c, align 4            ; 2 uses
  %i.bjd = load i32, ptr %i.i, align 4
  %.neg2432.i = add nuw nsw i32 %.07323147.i, 1
  %invariant.op3022.i = sub i32 %.neg2432.i, %i.bjd ; 2 uses
  %i.bje = load i32, ptr %i.e, align 4            ; 4 uses
  br i1 %i.bfc, label %.preheader2478.lr.ph.split.us.i, label %.preheader2478.preheader.i

.preheader2478.preheader.i:                       ; preds = %.preheader2478.lr.ph.i
  %i.bjf = add i32 %.0723.lcssa.i, 7
  %smax3440.i = call i32 @llvm.smax.i32(i32 %i.amv, i32 %i.bjf)
  %reass.sub220 = sub i32 %smax3440.i, %.0723.lcssa.i
  %i.bjg = and i32 %reass.sub220, -4              ; 2 uses
  %i.bjh = add i32 %i.bjg, -4
  %i.bji = zext i32 %i.bjh to i64
  %i.bjj = add nuw nsw i64 %i.bji, 4
  %i.bjk = mul nsw i64 %i.bjj, %i.bfh
  %scevgep3441.i = getelementptr i8, ptr %.0724.lcssa.i, i64 %i.bjk
  %i.bjl = add i32 %.0723.lcssa.i, %i.bjg
  br label %._crit_edge3056.i

.preheader2478.lr.ph.split.us.i:                  ; preds = %.preheader2478.lr.ph.i
  %i.bjm = icmp sgt i32 %.fr3173.i, 0
  br i1 %i.bjm, label %.preheader2478.us.us.preheader.i, label %.preheader2478.us.preheader.i

.preheader2478.us.preheader.i:                    ; preds = %.preheader2478.lr.ph.split.us.i
  %i.bjn = add i32 %.0723.lcssa.i, 7
  %smax3442.i = call i32 @llvm.smax.i32(i32 %i.amv, i32 %i.bjn)
  %reass.sub221 = sub i32 %smax3442.i, %.0723.lcssa.i
  %i.bjo = and i32 %reass.sub221, -4              ; 2 uses
  %i.bjp = add i32 %i.bjo, -4
  %i.bjq = zext i32 %i.bjp to i64
  %i.bjr = add nuw nsw i64 %i.bjq, 4
  %i.bjs = mul nsw i64 %i.bjr, %i.bfh
  %scevgep3443.i = getelementptr i8, ptr %.0724.lcssa.i, i64 %i.bjs
  %i.bjt = add i32 %.0723.lcssa.i, %i.bjo
  br label %._crit_edge3056.i

.preheader2478.us.us.preheader.i:                 ; preds = %.preheader2478.lr.ph.split.us.i
  %i.bju = zext nneg i32 %.fr3173.i to i64        ; 4 uses
  %i.bjv = zext i32 %.0723.lcssa.i to i64
  br label %.preheader2478.us.us.i

.preheader2478.us.us.i:                           ; preds = %._crit_edge3038.split.us.us.us.i, %.preheader2478.us.us.preheader.i
  %indvars.iv3463.i = phi i64 [ %i.bjv, %.preheader2478.us.us.preheader.i ], [ %indvars.iv.next3464.i, %._crit_edge3038.split.us.us.us.i ] ; 6 uses
  %.17253052.us.us.i = phi ptr [ %.0724.lcssa.i, %.preheader2478.us.us.preheader.i ], [ %i.bmi, %._crit_edge3038.split.us.us.us.i ] ; 3 uses
  %.023123051.us.us.i = phi <4 x float> [ zeroinitializer, %.preheader2478.us.us.preheader.i ], [ %.us-phi199, %._crit_edge3038.split.us.us.us.i ] ; 3 uses
  %i.bjw = lshr exact i64 %indvars.iv3463.i, 2
  %i.bjx = and i64 %i.bjw, 1073741823
  %i.bjy = add nuw nsw i64 %indvars.iv3463.i, 1
  %i.bjz = add nuw nsw i64 %indvars.iv3463.i, 2
  %i.bka = add nuw nsw i64 %indvars.iv3463.i, 3
  switch i32 %.fr3034.i, label %._crit_edge3038.split.us.us.us.i [
    i32 4, label %.preheader2478.us.us.i.split.us
    i32 1, label %.preheader2478.us.us.i.split.us200
  ]

.preheader2478.us.us.i.split.us:                  ; preds = %.preheader2478.us.us.i, %..loopexit2473_crit_edge.us.us.us.i.us
  %indvars.iv3458.i.us = phi i64 [ %indvars.iv.next3459.i.us, %..loopexit2473_crit_edge.us.us.us.i.us ], [ 0, %.preheader2478.us.us.i ] ; 3 uses
  %.123133035.us.us.us.i.us = phi <4 x float> [ %.42316.us.us.us.i.us, %..loopexit2473_crit_edge.us.us.us.i.us ], [ %.023123051.us.us.i, %.preheader2478.us.us.i ] ; 3 uses
  %i.bkb = trunc i64 %indvars.iv3458.i.us to i32
  %i.bkc = mul i32 %i.biy, %i.bkb
  %.reass3041.us.us.us.i.us = add i32 %i.bkc, %invariant.op3040.i ; 3 uses
  %i.bkd = icmp slt i32 %.reass3041.us.us.us.i.us, 0
  br i1 %i.bkd, label %..loopexit2473_crit_edge.us.us.us.i.us, label %bb.dn

bb.dn:                                            ; preds = %.preheader2478.us.us.i.split.us
  %i.bke = srem i32 %.reass3041.us.us.us.i.us, %i.bja
  %i.bkf = sdiv exact i32 %.reass3041.us.us.us.i.us, %i.bja ; 2 uses
  %.not895.us.us.us.i.us = icmp eq i32 %i.bke, 0
  %.not896.us.us.us.i.us = icmp slt i32 %i.bkf, %i.amx
  %or.cond433 = select i1 %.not895.us.us.us.i.us, i1 %.not896.us.us.us.i.us, i1 false
  br i1 %or.cond433, label %.preheader2472.us.us.us.i.us, label %..loopexit2473_crit_edge.us.us.us.i.us

.preheader2472.us.us.us.i.us:                     ; preds = %bb.dn
  %i.bkg = mul nuw nsw i64 %indvars.iv3458.i.us, %i.bju
  %i.bkh = sext i32 %i.bkf to i64
  %i.bki = mul nsw i64 %i.bkh, %i.anx
  br label %.lr.ph.split.us.us.us.us3071.i.us

.lr.ph.split.us.us.us.us3071.i.us:                ; preds = %bb.dp, %.preheader2472.us.us.us.i.us
  %indvars.iv3453.i.us = phi i64 [ %indvars.iv.next3454.i.us, %bb.dp ], [ 0, %.preheader2472.us.us.us.i.us ] ; 3 uses
  %.223143019.us.us.us.us.i.us = phi <4 x float> [ %.32315.us.us.us.us.i.us, %bb.dp ], [ %.123133035.us.us.us.i.us, %.preheader2472.us.us.us.i.us ] ; 3 uses
  %i.bkj = trunc i64 %indvars.iv3453.i.us to i32
  %i.bkk = mul i32 %i.bjc, %i.bkj
  %.reass3023.us.us.us.us.i.us = add i32 %i.bkk, %invariant.op3022.i ; 3 uses
  %i.bkl = icmp slt i32 %.reass3023.us.us.us.us.i.us, 0
  br i1 %i.bkl, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %.lr.ph.split.us.us.us.us3071.i.us
  %i.bkm = srem i32 %.reass3023.us.us.us.us.i.us, %i.bje
  %i.bkn = sdiv exact i32 %.reass3023.us.us.us.us.i.us, %i.bje ; 2 uses
  %.not897.us.us.us.us.i.us = icmp eq i32 %i.bkm, 0
  %.not898.us.us.us.us.i.us = icmp slt i32 %i.bkn, %i.amw
  %or.cond434 = select i1 %.not897.us.us.us.us.i.us, i1 %.not898.us.us.us.us.i.us, i1 false
  br i1 %or.cond434, label %_ZN4ncnn3MatD2Ev.exit940.us.us.us.us.i.us, label %bb.dp

_ZN4ncnn3MatD2Ev.exit940.us.us.us.us.i.us:        ; preds = %bb.do
  %i.bko = add nuw nsw i64 %indvars.iv3453.i.us, %i.bkg
  %i.bkp = shl i64 %i.bko, 2
  %i.bkq = and i64 %i.bkp, 4294967292
  %i.bkr = getelementptr inbounds nuw [4 x i8], ptr %.17253052.us.us.i, i64 %i.bkq
  %i.bks = load ptr, ptr %1, align 8, !tbaa !20, !noalias !444
  %i.bkt = load i64, ptr %i.ang, align 8, !tbaa !21, !noalias !444
  %i.bku = mul i64 %i.bkt, %i.bjx
  %i.bkv = load i64, ptr %i.ai, align 8, !tbaa !55, !noalias !444 ; 2 uses
  %i.bkw = mul i64 %i.bku, %i.bkv
  %i.bkx = getelementptr inbounds nuw i8, ptr %i.bks, i64 %i.bkw
  %i.bky = mul i64 %i.bki, %i.bkv
  %i.bkz = getelementptr inbounds nuw i8, ptr %i.bkx, i64 %i.bky
  %i.bla = shl nsw i32 %i.bkn, 2
  %i.blb = sext i32 %i.bla to i64
  %i.blc = getelementptr inbounds [4 x i8], ptr %i.bkz, i64 %i.blb
  %i.bld = load <4 x float>, ptr %i.blc, align 16, !tbaa !82
  %i.ble = load <4 x float>, ptr %i.bkr, align 16, !tbaa !82
  %i.blf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bld, <4 x float> nofpclass(nan inf) %i.ble, <4 x float> nofpclass(nan inf) %.223143019.us.us.us.us.i.us)
  br label %bb.dp

bb.dp:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit940.us.us.us.us.i.us, %bb.do, %.lr.ph.split.us.us.us.us3071.i.us
  %.32315.us.us.us.us.i.us = phi nsz <4 x float> [ %.223143019.us.us.us.us.i.us, %.lr.ph.split.us.us.us.us3071.i.us ], [ %.223143019.us.us.us.us.i.us, %bb.do ], [ %i.blf, %_ZN4ncnn3MatD2Ev.exit940.us.us.us.us.i.us ] ; 2 uses
  %indvars.iv.next3454.i.us = add nuw nsw i64 %indvars.iv3453.i.us, 1 ; 2 uses
  %exitcond3457.not.i.us = icmp eq i64 %indvars.iv.next3454.i.us, %i.bju
  br i1 %exitcond3457.not.i.us, label %..loopexit2473_crit_edge.us.us.us.i.us, label %.lr.ph.split.us.us.us.us3071.i.us, !llvm.loop !402

..loopexit2473_crit_edge.us.us.us.i.us:           ; preds = %bb.dp, %bb.dn, %.preheader2478.us.us.i.split.us
  %.42316.us.us.us.i.us = phi nsz <4 x float> [ %.123133035.us.us.us.i.us, %.preheader2478.us.us.i.split.us ], [ %.123133035.us.us.us.i.us, %bb.dn ], [ %.32315.us.us.us.us.i.us, %bb.dp ] ; 2 uses
  %indvars.iv.next3459.i.us = add nuw nsw i64 %indvars.iv3458.i.us, 1 ; 2 uses
  %exitcond3462.not.i.us = icmp eq i64 %indvars.iv.next3459.i.us, %wide.trip.count3435.i
  br i1 %exitcond3462.not.i.us, label %._crit_edge3038.split.us.us.us.i, label %.preheader2478.us.us.i.split.us, !llvm.loop !403

.preheader2478.us.us.i.split.us200:               ; preds = %.preheader2478.us.us.i, %..loopexit2473_crit_edge.us.us.us.i.us207
  %indvars.iv3458.i.us201 = phi i64 [ %indvars.iv.next3459.i.us209, %..loopexit2473_crit_edge.us.us.us.i.us207 ], [ 0, %.preheader2478.us.us.i ] ; 3 uses
  %.123133035.us.us.us.i.us202 = phi <4 x float> [ %.42316.us.us.us.i.us208, %..loopexit2473_crit_edge.us.us.us.i.us207 ], [ %.023123051.us.us.i, %.preheader2478.us.us.i ] ; 3 uses
  %i.blg = trunc i64 %indvars.iv3458.i.us201 to i32
  %i.blh = mul i32 %i.biy, %i.blg
  %.reass3041.us.us.us.i.us203 = add i32 %i.blh, %invariant.op3040.i ; 3 uses
  %i.bli = icmp slt i32 %.reass3041.us.us.us.i.us203, 0
  br i1 %i.bli, label %..loopexit2473_crit_edge.us.us.us.i.us207, label %bb.dq

bb.dq:                                            ; preds = %.preheader2478.us.us.i.split.us200
  %i.blj = srem i32 %.reass3041.us.us.us.i.us203, %i.bja
  %i.blk = sdiv exact i32 %.reass3041.us.us.us.i.us203, %i.bja ; 2 uses
  %.not895.us.us.us.i.us204 = icmp eq i32 %i.blj, 0
  %.not896.us.us.us.i.us205 = icmp slt i32 %i.blk, %i.amx
  %or.cond435 = select i1 %.not895.us.us.us.i.us204, i1 %.not896.us.us.us.i.us205, i1 false
  br i1 %or.cond435, label %.preheader2472.us.us.us.i.us206, label %..loopexit2473_crit_edge.us.us.us.i.us207

.preheader2472.us.us.us.i.us206:                  ; preds = %bb.dq
  %i.bll = mul nuw nsw i64 %indvars.iv3458.i.us201, %i.bju
  %i.blm = sext i32 %i.blk to i64
  %i.bln = mul nsw i64 %i.blm, %i.anx
  br label %.lr.ph.split.us3025.us.us.us.i.us

.lr.ph.split.us3025.us.us.us.i.us:                ; preds = %bb.ds, %.preheader2472.us.us.us.i.us206
  %indvars.iv3448.i.us = phi i64 [ %indvars.iv.next3449.i.us, %bb.ds ], [ 0, %.preheader2472.us.us.us.i.us206 ] ; 3 uses
  %.223143019.us3027.us.us.us.i.us = phi <4 x float> [ %.32315.us3031.us.us.us.i.us, %bb.ds ], [ %.123133035.us.us.us.i.us202, %.preheader2472.us.us.us.i.us206 ] ; 3 uses
  %i.blo = trunc i64 %indvars.iv3448.i.us to i32
  %i.blp = mul i32 %i.bjc, %i.blo
  %.reass3023.us3028.us.us.us.i.us = add i32 %i.blp, %invariant.op3022.i ; 3 uses
  %i.blq = icmp slt i32 %.reass3023.us3028.us.us.us.i.us, 0
  br i1 %i.blq, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %.lr.ph.split.us3025.us.us.us.i.us
  %i.blr = srem i32 %.reass3023.us3028.us.us.us.i.us, %i.bje
  %i.bls = sdiv exact i32 %.reass3023.us3028.us.us.us.i.us, %i.bje ; 2 uses
  %.not897.us3029.us.us.us.i.us = icmp eq i32 %i.blr, 0
  %.not898.us3030.us.us.us.i.us = icmp slt i32 %i.bls, %i.amw
  %or.cond436 = select i1 %.not897.us3029.us.us.us.i.us, i1 %.not898.us3030.us.us.us.i.us, i1 false
  br i1 %or.cond436, label %_ZN4ncnn3MatD2Ev.exit939.us.us.us.us.i.us, label %bb.ds

_ZN4ncnn3MatD2Ev.exit939.us.us.us.us.i.us:        ; preds = %bb.dr
  %i.blt = load ptr, ptr %1, align 8, !tbaa !20, !noalias !445
  %i.blu = load i64, ptr %i.ang, align 8, !tbaa !21, !noalias !445
  %i.blv = load i64, ptr %i.ai, align 8, !tbaa !55, !noalias !445 ; 2 uses
  %factor.op.mul3014.us.us.us.us.i.us = mul i64 %i.blv, %i.blu ; 4 uses
  %i.blw = mul i64 %i.bln, %i.blv
  %invariant.gep.us.us.us3067.us.i.us = getelementptr i8, ptr %i.blt, i64 %i.blw
  %i.blx = sext i32 %i.bls to i64
  %invariant.gep3016.us.us.us.us.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.us.us3067.us.i.us, i64 %i.blx ; 4 uses
  %.reass3015.us.us.us.us.i.us = mul i64 %factor.op.mul3014.us.us.us.us.i.us, %indvars.iv3463.i
  %gep3017.us.us.us.us.i.us = getelementptr i8, ptr %invariant.gep3016.us.us.us.us.i.us, i64 %.reass3015.us.us.us.us.i.us
  %i.bly = load float, ptr %gep3017.us.us.us.us.i.us, align 4, !tbaa !39
  %.sroa.0.0.vec.insert.i.us = insertelement <4 x float> poison, float %i.bly, i64 0
  %.reass3015.us.us.us.us.1.i.us = mul i64 %factor.op.mul3014.us.us.us.us.i.us, %i.bjy
  %gep3017.us.us.us.us.1.i.us = getelementptr i8, ptr %invariant.gep3016.us.us.us.us.i.us, i64 %.reass3015.us.us.us.us.1.i.us
  %i.blz = load float, ptr %gep3017.us.us.us.us.1.i.us, align 4, !tbaa !39
  %.sroa.0.4.vec.insert.i.us = insertelement <4 x float> %.sroa.0.0.vec.insert.i.us, float %i.blz, i64 1
  %.reass3015.us.us.us.us.2.i.us = mul i64 %factor.op.mul3014.us.us.us.us.i.us, %i.bjz
  %gep3017.us.us.us.us.2.i.us = getelementptr i8, ptr %invariant.gep3016.us.us.us.us.i.us, i64 %.reass3015.us.us.us.us.2.i.us
  %i.bma = load float, ptr %gep3017.us.us.us.us.2.i.us, align 4, !tbaa !39
  %.sroa.0.8.vec.insert.i.us = insertelement <4 x float> %.sroa.0.4.vec.insert.i.us, float %i.bma, i64 2
  %.reass3015.us.us.us.us.3.i.us = mul i64 %factor.op.mul3014.us.us.us.us.i.us, %i.bka
  %gep3017.us.us.us.us.3.i.us = getelementptr i8, ptr %invariant.gep3016.us.us.us.us.i.us, i64 %.reass3015.us.us.us.us.3.i.us
  %i.bmb = load float, ptr %gep3017.us.us.us.us.3.i.us, align 4, !tbaa !39
  %.sroa.0.12.vec.insert.i.us = insertelement <4 x float> %.sroa.0.8.vec.insert.i.us, float %i.bmb, i64 3
  %i.bmc = add nuw nsw i64 %indvars.iv3448.i.us, %i.bll
  %i.bmd = shl i64 %i.bmc, 2
  %i.bme = and i64 %i.bmd, 4294967292
  %i.bmf = getelementptr inbounds nuw [4 x i8], ptr %.17253052.us.us.i, i64 %i.bme
  %i.bmg = load <4 x float>, ptr %i.bmf, align 16, !tbaa !82
  %i.bmh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sroa.0.12.vec.insert.i.us, <4 x float> nofpclass(nan inf) %i.bmg, <4 x float> nofpclass(nan inf) %.223143019.us3027.us.us.us.i.us)
  br label %bb.ds

bb.ds:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit939.us.us.us.us.i.us, %bb.dr, %.lr.ph.split.us3025.us.us.us.i.us
  %.32315.us3031.us.us.us.i.us = phi nsz <4 x float> [ %.223143019.us3027.us.us.us.i.us, %.lr.ph.split.us3025.us.us.us.i.us ], [ %i.bmh, %_ZN4ncnn3MatD2Ev.exit939.us.us.us.us.i.us ], [ %.223143019.us3027.us.us.us.i.us, %bb.dr ] ; 2 uses
  %indvars.iv.next3449.i.us = add nuw nsw i64 %indvars.iv3448.i.us, 1 ; 2 uses
  %exitcond3452.not.i.us = icmp eq i64 %indvars.iv.next3449.i.us, %i.bju
  br i1 %exitcond3452.not.i.us, label %..loopexit2473_crit_edge.us.us.us.i.us207, label %.lr.ph.split.us3025.us.us.us.i.us, !llvm.loop !402

..loopexit2473_crit_edge.us.us.us.i.us207:        ; preds = %bb.ds, %bb.dq, %.preheader2478.us.us.i.split.us200
  %.42316.us.us.us.i.us208 = phi nsz <4 x float> [ %.123133035.us.us.us.i.us202, %.preheader2478.us.us.i.split.us200 ], [ %.123133035.us.us.us.i.us202, %bb.dq ], [ %.32315.us3031.us.us.us.i.us, %bb.ds ] ; 2 uses
  %indvars.iv.next3459.i.us209 = add nuw nsw i64 %indvars.iv3458.i.us201, 1 ; 2 uses
  %exitcond3462.not.i.us210 = icmp eq i64 %indvars.iv.next3459.i.us209, %wide.trip.count3435.i
  br i1 %exitcond3462.not.i.us210, label %._crit_edge3038.split.us.us.us.i, label %.preheader2478.us.us.i.split.us200, !llvm.loop !403

._crit_edge3038.split.us.us.us.i:                 ; preds = %..loopexit2473_crit_edge.us.us.us.i.us207, %..loopexit2473_crit_edge.us.us.us.i.us, %.preheader2478.us.us.i
  %.us-phi199 = phi <4 x float> [ %.42316.us.us.us.i.us, %..loopexit2473_crit_edge.us.us.us.i.us ], [ %.023123051.us.us.i, %.preheader2478.us.us.i ], [ %.42316.us.us.us.i.us208, %..loopexit2473_crit_edge.us.us.us.i.us207 ] ; 2 uses
  %i.bmi = getelementptr inbounds [4 x i8], ptr %.17253052.us.us.i, i64 %i.bfh ; 2 uses
  %indvars.iv.next3464.i = add nuw nsw i64 %indvars.iv3463.i, 4 ; 2 uses
  %i.bmj = trunc i64 %indvars.iv.next3464.i to i32 ; 2 uses
  %i.bmk = or i32 %i.bmj, 3
  %i.bml = icmp slt i32 %i.bmk, %i.amv
  br i1 %i.bml, label %.preheader2478.us.us.i, label %._crit_edge3056.i, !llvm.loop !406

._crit_edge3056.i:                                ; preds = %._crit_edge3038.split.us.us.us.i, %.preheader2478.us.preheader.i, %.preheader2478.preheader.i, %._crit_edge2996.i
  %.02312.lcssa.i = phi <4 x float> [ zeroinitializer, %._crit_edge2996.i ], [ zeroinitializer, %.preheader2478.preheader.i ], [ zeroinitializer, %.preheader2478.us.preheader.i ], [ %.us-phi199, %._crit_edge3038.split.us.us.us.i ] ; 2 uses
  %.1725.lcssa.i = phi ptr [ %.0724.lcssa.i, %._crit_edge2996.i ], [ %scevgep3441.i, %.preheader2478.preheader.i ], [ %scevgep3443.i, %.preheader2478.us.preheader.i ], [ %i.bmi, %._crit_edge3038.split.us.us.us.i ] ; 4 uses
  %.1.lcssa.i = phi i32 [ %.0723.lcssa.i, %._crit_edge2996.i ], [ %i.bjl, %.preheader2478.preheader.i ], [ %i.bjt, %.preheader2478.us.preheader.i ], [ %i.bmj, %._crit_edge3038.split.us.us.us.i ] ; 9 uses
  %i.bmm = shufflevector <4 x float> %.02312.lcssa.i, <4 x float> %i.biv, <4 x i32> <i32 3, i32 2, i32 7, i32 6>
  %i.bmn = shufflevector <4 x float> %.02312.lcssa.i, <4 x float> %i.biv, <4 x i32> <i32 1, i32 0, i32 5, i32 4>
  %i.bmo = fadd fast <4 x float> %i.bmm, %i.bmn
  %op.rdx = call fast float @llvm.vector.reduce.fadd.v4f32(float %.0728.i, <4 x float> %i.bmo) ; 4 uses
  %i.bmp = or disjoint i32 %.1.lcssa.i, 1
  %i.bmq = icmp slt i32 %i.bmp, %i.amv
  br i1 %i.bmq, label %.preheader2477.lr.ph.i, label %.preheader2480.i

.preheader2477.lr.ph.i:                           ; preds = %._crit_edge3056.i
  %i.bmr = load i32, ptr %i.d, align 4
  %i.bms = load i32, ptr %i.j, align 4
  %invariant.op3091.i = sub i32 %.neg2434.i, %i.bms
  %i.bmt = load i32, ptr %i.f, align 4            ; 2 uses
  %i.bmu = load i32, ptr %i.a, align 4
  %.fr3174.i = freeze i32 %i.bmu                  ; 2 uses
  %i.bmv = load i32, ptr %i.c, align 4
  %i.bmw = load i32, ptr %i.i, align 4
  %.neg2428.i = add nuw nsw i32 %.07323147.i, 1
  %invariant.op3084.i = sub i32 %.neg2428.i, %i.bmw
  %i.bmx = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.bfc, label %.preheader2477.lr.ph.split.us.i, label %.preheader2477.preheader.i

.preheader2477.preheader.i:                       ; preds = %.preheader2477.lr.ph.i
  %i.bmy = add i32 %.1.lcssa.i, 3
  %smax3466.i = call i32 @llvm.smax.i32(i32 %i.amv, i32 %i.bmy)
  %reass.sub222 = sub i32 %smax3466.i, %.1.lcssa.i
  %i.bmz = add i32 %reass.sub222, -2              ; 2 uses
  %i.bna = lshr i32 %i.bmz, 1
  %i.bnb = zext nneg i32 %i.bna to i64
  %i.bnc = shl nuw nsw i64 %i.bnb, 2
  %i.bnd = add nuw nsw i64 %i.bnc, 4
  %i.bne = mul i64 %i.bnd, %i.bfj
  %scevgep3467.i = getelementptr i8, ptr %.1725.lcssa.i, i64 %i.bne
  %i.bnf = add i32 %.1.lcssa.i, 2
  %i.bng = and i32 %i.bmz, -2
  %i.bnh = add i32 %i.bnf, %i.bng
  br label %.preheader2480.i

.preheader2477.lr.ph.split.us.i:                  ; preds = %.preheader2477.lr.ph.i
  %i.bni = icmp sgt i32 %.fr3174.i, 0
  br i1 %i.bni, label %.preheader2477.us.us.preheader.i, label %.preheader2477.us.preheader.i

.preheader2477.us.preheader.i:                    ; preds = %.preheader2477.lr.ph.split.us.i
  %i.bnj = add i32 %.1.lcssa.i, 3
  %smax3468.i = call i32 @llvm.smax.i32(i32 %i.amv, i32 %i.bnj)
  %reass.sub223 = sub i32 %smax3468.i, %.1.lcssa.i
  %i.bnk = add i32 %reass.sub223, -2              ; 2 uses
  %i.bnl = lshr i32 %i.bnk, 1
  %i.bnm = zext nneg i32 %i.bnl to i64
  %i.bnn = shl nuw nsw i64 %i.bnm, 2
  %i.bno = add nuw nsw i64 %i.bnn, 4
  %i.bnp = mul i64 %i.bno, %i.bfj
  %scevgep3469.i = getelementptr i8, ptr %.1725.lcssa.i, i64 %i.bnp
  %i.bnq = add i32 %.1.lcssa.i, 2
  %i.bnr = and i32 %i.bnk, -2
  %i.bns = add i32 %i.bnq, %i.bnr
  br label %.preheader2480.i

.preheader2477.us.us.preheader.i:                 ; preds = %.preheader2477.lr.ph.split.us.i
  %i.bnt = zext nneg i32 %.fr3174.i to i64        ; 2 uses
  %i.bnu = zext i32 %.1.lcssa.i to i64
  br label %.preheader2477.us.us.i

.preheader2477.us.us.i:                           ; preds = %._crit_edge3089.split.us.us.us.i, %.preheader2477.us.us.preheader.i
  %indvars.iv3483.i = phi i64 [ %i.bnu, %.preheader2477.us.us.preheader.i ], [ %indvars.iv.next3484.i, %._crit_edge3089.split.us.us.us.i ] ; 3 uses
  %.27263096.us.us.i = phi ptr [ %.1725.lcssa.i, %.preheader2477.us.us.preheader.i ], [ %i.boz, %._crit_edge3089.split.us.us.us.i ] ; 2 uses
  %.17293095.us.us.i = phi float [ %op.rdx, %.preheader2477.us.us.preheader.i ], [ %.8.us.us.us.i, %._crit_edge3089.split.us.us.us.i ]
  %i.bnv = add nuw nsw i64 %indvars.iv3483.i, 1
  br label %bb.dt

bb.dt:                                            ; preds = %..loopexit2471_crit_edge.us.us.us.i, %.preheader2477.us.us.i
  %indvars.iv3478.i = phi i64 [ %indvars.iv.next3479.i, %..loopexit2471_crit_edge.us.us.us.i ], [ 0, %.preheader2477.us.us.i ] ; 3 uses
  %.27303086.us.us.us.i = phi float [ %.8.us.us.us.i, %..loopexit2471_crit_edge.us.us.us.i ], [ %.17293095.us.us.i, %.preheader2477.us.us.i ] ; 3 uses
  %i.bnw = trunc i64 %indvars.iv3478.i to i32
  %i.bnx = mul i32 %i.bmr, %i.bnw
  %.reass3092.us.us.us.i = add i32 %i.bnx, %invariant.op3091.i ; 3 uses
  %i.bny = icmp slt i32 %.reass3092.us.us.us.i, 0
  br i1 %i.bny, label %..loopexit2471_crit_edge.us.us.us.i, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.bnz = srem i32 %.reass3092.us.us.us.i, %i.bmt
  %i.boa = sdiv exact i32 %.reass3092.us.us.us.i, %i.bmt ; 2 uses
  %.not891.us.us.us.i = icmp eq i32 %i.bnz, 0
  %.not892.us.us.us.i = icmp slt i32 %i.boa, %i.amx
  %or.cond437 = select i1 %.not891.us.us.us.i, i1 %.not892.us.us.us.i, i1 false
  br i1 %or.cond437, label %.preheader2470.us.us.us.i, label %..loopexit2471_crit_edge.us.us.us.i

.preheader2470.us.us.us.i:                        ; preds = %bb.du
  %i.bob = mul nuw nsw i64 %indvars.iv3478.i, %i.bnt
  %i.boc = sext i32 %i.boa to i64
  %i.bod = mul nsw i64 %i.boc, %i.anx
  br label %bb.dv

bb.dv:                                            ; preds = %.loopexit.us.us.us.i, %.preheader2470.us.us.us.i
  %indvars.iv3473.i = phi i64 [ %indvars.iv.next3474.i, %.loopexit.us.us.us.i ], [ 0, %.preheader2470.us.us.us.i ] ; 3 uses
  %.37313081.us.us.us.i = phi float [ %.6.us.us.us.i, %.loopexit.us.us.us.i ], [ %.27303086.us.us.us.i, %.preheader2470.us.us.us.i ] ; 3 uses
  %i.boe = trunc i64 %indvars.iv3473.i to i32
  %i.bof = mul i32 %i.bmv, %i.boe
  %.reass3085.us.us.us.i = add i32 %invariant.op3084.i, %i.bof ; 3 uses
  %i.bog = icmp slt i32 %.reass3085.us.us.us.i, 0
  br i1 %i.bog, label %.loopexit.us.us.us.i, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.boh = srem i32 %.reass3085.us.us.us.i, %i.bmx
  %i.boi = sdiv exact i32 %.reass3085.us.us.us.i, %i.bmx ; 2 uses
  %.not893.us.us.us.i = icmp eq i32 %i.boh, 0
  %.not894.us.us.us.i = icmp slt i32 %i.boi, %i.amw
  %or.cond438 = select i1 %.not893.us.us.us.i, i1 %.not894.us.us.us.i, i1 false
  br i1 %or.cond438, label %_ZN4ncnn3MatD2Ev.exit938.us.us.us.i, label %.loopexit.us.us.us.i

_ZN4ncnn3MatD2Ev.exit938.us.us.us.i:              ; preds = %bb.dw
  %i.boj = add nuw nsw i64 %indvars.iv3473.i, %i.bob
  %.idx3575.i = shl nuw nsw i64 %i.boj, 3
  %i.bok = getelementptr inbounds nuw i8, ptr %.27263096.us.us.i, i64 %.idx3575.i ; 2 uses
  %i.bol = load ptr, ptr %1, align 8, !tbaa !20, !noalias !446
  %i.bom = load i64, ptr %i.ang, align 8, !tbaa !21, !noalias !446
  %i.bon = load i64, ptr %i.ai, align 8, !tbaa !55, !noalias !446 ; 2 uses
  %factor.op.mul3075.us.us.us.i = mul i64 %i.bon, %i.bom ; 2 uses
  %i.boo = mul i64 %i.bod, %i.bon
  %invariant.gep.us.us.us3113.i = getelementptr i8, ptr %i.bol, i64 %i.boo
  %i.bop = sext i32 %i.boi to i64
  %invariant.gep3077.us.us.us.i = getelementptr [4 x i8], ptr %invariant.gep.us.us.us3113.i, i64 %i.bop ; 2 uses
  %.reass3076.us.us.us.i = mul i64 %factor.op.mul3075.us.us.us.i, %indvars.iv3483.i
  %gep3078.us.us.us.i = getelementptr i8, ptr %invariant.gep3077.us.us.us.i, i64 %.reass3076.us.us.us.i
  %i.boq = load float, ptr %gep3078.us.us.us.i, align 4, !tbaa !39
  %i.bor = load float, ptr %i.bok, align 4, !tbaa !39
  %i.bos = fmul fast float %i.bor, %i.boq
  %i.bot = fadd fast float %.37313081.us.us.us.i, %i.bos
  %.reass3076.us.us.us.1.i = mul i64 %factor.op.mul3075.us.us.us.i, %i.bnv
  %gep3078.us.us.us.1.i = getelementptr i8, ptr %invariant.gep3077.us.us.us.i, i64 %.reass3076.us.us.us.1.i
  %i.bou = load float, ptr %gep3078.us.us.us.1.i, align 4, !tbaa !39
  %i.bov = getelementptr inbounds nuw i8, ptr %i.bok, i64 4
  %i.bow = load float, ptr %i.bov, align 4, !tbaa !39
  %i.box = fmul fast float %i.bow, %i.bou
  %i.boy = fadd fast float %i.box, %i.bot
  br label %.loopexit.us.us.us.i

.loopexit.us.us.us.i:                             ; preds = %_ZN4ncnn3MatD2Ev.exit938.us.us.us.i, %bb.dw, %bb.dv
  %.6.us.us.us.i = phi nsz float [ %.37313081.us.us.us.i, %bb.dv ], [ %.37313081.us.us.us.i, %bb.dw ], [ %i.boy, %_ZN4ncnn3MatD2Ev.exit938.us.us.us.i ] ; 2 uses
  %indvars.iv.next3474.i = add nuw nsw i64 %indvars.iv3473.i, 1 ; 2 uses
  %exitcond3477.not.i = icmp eq i64 %indvars.iv.next3474.i, %i.bnt
  br i1 %exitcond3477.not.i, label %..loopexit2471_crit_edge.us.us.us.i, label %bb.dv, !llvm.loop !409

..loopexit2471_crit_edge.us.us.us.i:              ; preds = %.loopexit.us.us.us.i, %bb.du, %bb.dt
  %.8.us.us.us.i = phi nsz float [ %.27303086.us.us.us.i, %bb.dt ], [ %.27303086.us.us.us.i, %bb.du ], [ %.6.us.us.us.i, %.loopexit.us.us.us.i ] ; 3 uses
  %indvars.iv.next3479.i = add nuw nsw i64 %indvars.iv3478.i, 1 ; 2 uses
  %exitcond3482.not.i = icmp eq i64 %indvars.iv.next3479.i, %wide.trip.count3435.i
  br i1 %exitcond3482.not.i, label %._crit_edge3089.split.us.us.us.i, label %bb.dt, !llvm.loop !410

._crit_edge3089.split.us.us.us.i:                 ; preds = %..loopexit2471_crit_edge.us.us.us.i
  %i.boz = getelementptr inbounds [4 x i8], ptr %.27263096.us.us.i, i64 %i.bfj ; 2 uses
  %indvars.iv.next3484.i = add nuw nsw i64 %indvars.iv3483.i, 2 ; 2 uses
  %i.bpa = trunc i64 %indvars.iv.next3484.i to i32 ; 2 uses
  %i.bpb = or i32 %i.bpa, 1
  %i.bpc = icmp slt i32 %i.bpb, %i.amv
  br i1 %i.bpc, label %.preheader2477.us.us.i, label %.preheader2480.i, !llvm.loop !411

.preheader2480.i:                                 ; preds = %._crit_edge3089.split.us.us.us.i, %.preheader2477.us.preheader.i, %.preheader2477.preheader.i, %._crit_edge3056.i
  %.1729.lcssa.i = phi float [ %op.rdx, %._crit_edge3056.i ], [ %op.rdx, %.preheader2477.preheader.i ], [ %op.rdx, %.preheader2477.us.preheader.i ], [ %.8.us.us.us.i, %._crit_edge3089.split.us.us.us.i ] ; 3 uses
  %.2726.lcssa.i = phi ptr [ %.1725.lcssa.i, %._crit_edge3056.i ], [ %scevgep3467.i, %.preheader2477.preheader.i ], [ %scevgep3469.i, %.preheader2477.us.preheader.i ], [ %i.boz, %._crit_edge3089.split.us.us.us.i ]
  %.2.lcssa.i = phi i32 [ %.1.lcssa.i, %._crit_edge3056.i ], [ %i.bnh, %.preheader2477.preheader.i ], [ %i.bns, %.preheader2477.us.preheader.i ], [ %i.bpa, %._crit_edge3089.split.us.us.us.i ] ; 2 uses
  %i.bpd = icmp slt i32 %.2.lcssa.i, %i.amv
  br i1 %i.bpd, label %.preheader2476.lr.ph.i, label %._crit_edge3135.i

.preheader2476.lr.ph.i:                           ; preds = %.preheader2480.i
  %i.bpe = load i32, ptr %i.d, align 4
  %i.bpf = load i32, ptr %i.j, align 4
  %invariant.op3127.i = sub i32 %.neg2434.i, %i.bpf
  %i.bpg = load i32, ptr %i.f, align 4            ; 2 uses
  %i.bph = load i32, ptr %i.a, align 4
  %.fr3175.i = freeze i32 %i.bph                  ; 2 uses
  %i.bpi = load i32, ptr %i.c, align 4
  %i.bpj = load i32, ptr %i.i, align 4
  %.neg2424.i = add nuw nsw i32 %.07323147.i, 1
  %invariant.op3120.i = sub i32 %.neg2424.i, %i.bpj
  %i.bpk = load i32, ptr %i.e, align 4            ; 2 uses
  %i.bpl = icmp sgt i32 %.fr3175.i, 0
  %or.cond3632.i = and i1 %i.bfc, %i.bpl
  br i1 %or.cond3632.i, label %.preheader2476.us.us.preheader.i, label %._crit_edge3135.i

.preheader2476.us.us.preheader.i:                 ; preds = %.preheader2476.lr.ph.i
  %i.bpm = zext nneg i32 %.fr3175.i to i64        ; 2 uses
  %i.bpn = zext i32 %.2.lcssa.i to i64
  br label %.preheader2476.us.us.i

.preheader2476.us.us.i:                           ; preds = %._crit_edge3125.split.us.us.us.i, %.preheader2476.us.us.preheader.i
  %indvars.iv3496.i = phi i64 [ %i.bpn, %.preheader2476.us.us.preheader.i ], [ %indvars.iv.next3497.i, %._crit_edge3125.split.us.us.us.i ] ; 2 uses
  %.37273132.us.us.i = phi ptr [ %.2726.lcssa.i, %.preheader2476.us.us.preheader.i ], [ %i.bqr, %._crit_edge3125.split.us.us.us.i ] ; 2 uses
  %.93131.us.us.i = phi float [ %.1729.lcssa.i, %.preheader2476.us.us.preheader.i ], [ %.15.us.us.us.i, %._crit_edge3125.split.us.us.us.i ]
  br label %bb.dx

bb.dx:                                            ; preds = %..loopexit2469_crit_edge.us.us.us.i, %.preheader2476.us.us.i
  %indvars.iv3491.i = phi i64 [ %indvars.iv.next3492.i, %..loopexit2469_crit_edge.us.us.us.i ], [ 0, %.preheader2476.us.us.i ] ; 3 uses
  %.103122.us.us.us.i = phi float [ %.15.us.us.us.i, %..loopexit2469_crit_edge.us.us.us.i ], [ %.93131.us.us.i, %.preheader2476.us.us.i ] ; 3 uses
  %i.bpo = trunc i64 %indvars.iv3491.i to i32
  %i.bpp = mul i32 %i.bpe, %i.bpo
  %.reass3128.us.us.us.i = add i32 %i.bpp, %invariant.op3127.i ; 3 uses
  %i.bpq = icmp slt i32 %.reass3128.us.us.us.i, 0
  br i1 %i.bpq, label %..loopexit2469_crit_edge.us.us.us.i, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.bpr = srem i32 %.reass3128.us.us.us.i, %i.bpg
  %i.bps = sdiv exact i32 %.reass3128.us.us.us.i, %i.bpg ; 2 uses
  %.not887.us.us.us.i = icmp eq i32 %i.bpr, 0
  %.not888.us.us.us.i = icmp slt i32 %i.bps, %i.amx
  %or.cond439 = select i1 %.not887.us.us.us.i, i1 %.not888.us.us.us.i, i1 false
  br i1 %or.cond439, label %.preheader.us.us.us.i, label %..loopexit2469_crit_edge.us.us.us.i

.preheader.us.us.us.i:                            ; preds = %bb.dy
  %i.bpt = mul nuw nsw i64 %indvars.iv3491.i, %i.bpm
  %i.bpu = sext i32 %i.bps to i64
  %i.bpv = getelementptr inbounds nuw [4 x i8], ptr %.37273132.us.us.i, i64 %i.bpt
  %i.bpw = mul nsw i64 %i.bpu, %i.anx
  br label %bb.dz

bb.dz:                                            ; preds = %bb.eb, %.preheader.us.us.us.i
  %indvars.iv3486.i = phi i64 [ %indvars.iv.next3487.i, %bb.eb ], [ 0, %.preheader.us.us.us.i ] ; 3 uses
  %.113117.us.us.us.i = phi float [ %.13.us.us.us.i, %bb.eb ], [ %.103122.us.us.us.i, %.preheader.us.us.us.i ] ; 3 uses
  %i.bpx = trunc i64 %indvars.iv3486.i to i32
  %i.bpy = mul i32 %i.bpi, %i.bpx
  %.reass3121.us.us.us.i = add i32 %invariant.op3120.i, %i.bpy ; 3 uses
  %i.bpz = icmp slt i32 %.reass3121.us.us.us.i, 0
  br i1 %i.bpz, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.bqa = srem i32 %.reass3121.us.us.us.i, %i.bpk
  %i.bqb = sdiv exact i32 %.reass3121.us.us.us.i, %i.bpk ; 2 uses
  %.not889.us.us.us.i = icmp eq i32 %i.bqa, 0
  %.not890.us.us.us.i = icmp slt i32 %i.bqb, %i.amw
  %or.cond440 = select i1 %.not889.us.us.us.i, i1 %.not890.us.us.us.i, i1 false
  br i1 %or.cond440, label %_ZN4ncnn3MatD2Ev.exit.us.us.us.i, label %bb.eb

_ZN4ncnn3MatD2Ev.exit.us.us.us.i:                 ; preds = %bb.ea
  %i.bqc = load ptr, ptr %1, align 8, !tbaa !20, !noalias !447
  %i.bqd = load i64, ptr %i.ang, align 8, !tbaa !21, !noalias !447
  %i.bqe = mul i64 %i.bqd, %indvars.iv3496.i
  %i.bqf = load i64, ptr %i.ai, align 8, !tbaa !55, !noalias !447 ; 2 uses
  %i.bqg = mul i64 %i.bqe, %i.bqf
  %i.bqh = getelementptr inbounds nuw i8, ptr %i.bqc, i64 %i.bqg
  %i.bqi = mul i64 %i.bpw, %i.bqf
  %i.bqj = getelementptr inbounds nuw i8, ptr %i.bqh, i64 %i.bqi
  %i.bqk = sext i32 %i.bqb to i64
  %i.bql = getelementptr inbounds [4 x i8], ptr %i.bqj, i64 %i.bqk
  %i.bqm = load float, ptr %i.bql, align 4, !tbaa !39
  %i.bqn = getelementptr inbounds nuw [4 x i8], ptr %i.bpv, i64 %indvars.iv3486.i
  %i.bqo = load float, ptr %i.bqn, align 4, !tbaa !39
  %i.bqp = fmul fast float %i.bqo, %i.bqm
  %i.bqq = fadd fast float %i.bqp, %.113117.us.us.us.i
  br label %bb.eb

bb.eb:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.us.us.us.i, %bb.ea, %bb.dz
  %.13.us.us.us.i = phi nsz float [ %.113117.us.us.us.i, %bb.dz ], [ %.113117.us.us.us.i, %bb.ea ], [ %i.bqq, %_ZN4ncnn3MatD2Ev.exit.us.us.us.i ] ; 2 uses
  %indvars.iv.next3487.i = add nuw nsw i64 %indvars.iv3486.i, 1 ; 2 uses
  %exitcond3490.not.i = icmp eq i64 %indvars.iv.next3487.i, %i.bpm
  br i1 %exitcond3490.not.i, label %..loopexit2469_crit_edge.us.us.us.i, label %bb.dz, !llvm.loop !414

..loopexit2469_crit_edge.us.us.us.i:              ; preds = %bb.eb, %bb.dy, %bb.dx
  %.15.us.us.us.i = phi nsz float [ %.103122.us.us.us.i, %bb.dx ], [ %.103122.us.us.us.i, %bb.dy ], [ %.13.us.us.us.i, %bb.eb ] ; 3 uses
  %indvars.iv.next3492.i = add nuw nsw i64 %indvars.iv3491.i, 1 ; 2 uses
  %exitcond3495.not.i = icmp eq i64 %indvars.iv.next3492.i, %wide.trip.count3435.i
  br i1 %exitcond3495.not.i, label %._crit_edge3125.split.us.us.us.i, label %bb.dx, !llvm.loop !415

._crit_edge3125.split.us.us.us.i:                 ; preds = %..loopexit2469_crit_edge.us.us.us.i
  %i.bqr = getelementptr inbounds [4 x i8], ptr %.37273132.us.us.i, i64 %i.bfk
  %indvars.iv.next3497.i = add nuw nsw i64 %indvars.iv3496.i, 1 ; 2 uses
  %i.bqs = trunc nuw i64 %indvars.iv.next3497.i to i32
  %i.bqt = icmp sgt i32 %i.amv, %i.bqs
  br i1 %i.bqt, label %.preheader2476.us.us.i, label %._crit_edge3135.i, !llvm.loop !416

._crit_edge3135.i:                                ; preds = %._crit_edge3125.split.us.us.us.i, %.preheader2476.lr.ph.i, %.preheader2480.i
  %.9.lcssa.i = phi float [ %.1729.lcssa.i, %.preheader2480.i ], [ %.1729.lcssa.i, %.preheader2476.lr.ph.i ], [ %.15.us.us.us.i, %._crit_edge3125.split.us.us.us.i ] ; 13 uses
  switch i32 %i.bez, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i [
    i32 1, label %bb.ec
    i32 2, label %bb.ed
    i32 3, label %bb.ee
    i32 4, label %bb.ef
    i32 5, label %bb.eg
    i32 6, label %bb.eh
  ]

bb.ec:                                            ; preds = %._crit_edge3135.i
  %i.bqu = call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %.9.lcssa.i, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.ed:                                            ; preds = %._crit_edge3135.i
  %i.bqv = load ptr, ptr %i.iu, align 8, !tbaa !20
  %i.bqw = load float, ptr %i.bqv, align 4, !tbaa !39
  %i.bqx = fcmp fast ogt float %.9.lcssa.i, 0.000000e+00
  %i.bqy = select fast i1 %i.bqx, float 1.000000e+00, float %i.bqw
  %i.bqz = fmul fast float %i.bqy, %.9.lcssa.i
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.ee:                                            ; preds = %._crit_edge3135.i
  %i.bra = load ptr, ptr %i.iu, align 8, !tbaa !20 ; 2 uses
  %i.brb = load float, ptr %i.bra, align 4, !tbaa !39
  %i.brc = getelementptr inbounds nuw i8, ptr %i.bra, i64 4
  %i.brd = load float, ptr %i.brc, align 4, !tbaa !39
  %spec.select2418.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.9.lcssa.i, float %i.brb)
  %spec.select2419.i = call nnan ninf nsz float @llvm.minnum.f32(float %spec.select2418.i, float %i.brd)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.ef:                                            ; preds = %._crit_edge3135.i
  %.sroa.speculated2165.i = call nnan ninf nsz float @llvm.minnum.f32(float %.9.lcssa.i, float f0x42B0C0A5)
  %.sroa.speculated.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated2165.i, float f0xC2B0C0A5)
  %i.bre = fneg fast float %.sroa.speculated.i
  %i.brf = call fast float @llvm.exp.f32(float %i.bre)
  %i.brg = fadd fast float %i.brf, 1.000000e+00
  %i.brh = fdiv fast float 1.000000e+00, %i.brg
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.eg:                                            ; preds = %._crit_edge3135.i
  %i.bri = call fast float @llvm.exp.f32(float nofpclass(nan inf) %.9.lcssa.i)
  %i.brj = fadd fast float %i.bri, 1.000000e+00
  %i.brk = call fast float @llvm.log.f32(float %i.brj)
  %i.brl = call fast float @llvm.tanh.f32(float %i.brk)
  %i.brm = fmul fast float %i.brl, %.9.lcssa.i
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.eh:                                            ; preds = %._crit_edge3135.i
  %i.brn = load ptr, ptr %i.iu, align 8, !tbaa !20 ; 2 uses
  %i.bro = load float, ptr %i.brn, align 4, !tbaa !39 ; 3 uses
  %i.brp = getelementptr inbounds nuw i8, ptr %i.brn, i64 4
  %i.brq = load float, ptr %i.brp, align 4, !tbaa !39 ; 2 uses
  %i.brr = fneg fast float %i.brq
  %i.brs = fdiv fast float %i.brr, %i.bro         ; 2 uses
  %i.brt = fcmp fast olt float %.9.lcssa.i, %i.brs
  br i1 %i.brt, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.bru = fdiv fast float 1.000000e+00, %i.bro
  %i.brv = fadd fast float %i.brs, %i.bru
  %i.brw = fcmp fast ogt float %.9.lcssa.i, %i.brv
  br i1 %i.brw, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.brx = fmul fast float %i.bro, %.9.lcssa.i
  %i.bry = fadd fast float %i.brx, %i.brq
  %i.brz = fmul fast float %i.bry, %.9.lcssa.i
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit.i:         ; preds = %bb.ej, %bb.ei, %bb.eh, %bb.eg, %bb.ef, %bb.ee, %bb.ed, %bb.ec, %._crit_edge3135.i
  %.12311.i = phi nsz float [ %.9.lcssa.i, %._crit_edge3135.i ], [ %i.bqu, %bb.ec ], [ %i.bqz, %bb.ed ], [ 0.000000e+00, %bb.eh ], [ %spec.select2419.i, %bb.ee ], [ %i.brh, %bb.ef ], [ %i.brm, %bb.eg ], [ %i.brz, %bb.ej ], [ %.9.lcssa.i, %bb.ei ]
  store float %.12311.i, ptr %.17353146.i, align 4, !tbaa !39
  %i.bsa = getelementptr inbounds nuw i8, ptr %.17353146.i, i64 4 ; 2 uses
  %i.bsb = add nuw nsw i32 %.07323147.i, 1        ; 2 uses
  %exitcond3499.not.i = icmp eq i32 %i.bsb, %i.amy
  br i1 %exitcond3499.not.i, label %._crit_edge3148.i, label %bb.df, !llvm.loop !417

_ZN4ncnnL20deconvolution_packedERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.exit: ; preds = %._crit_edge3152.i, %._crit_edge2964.split.i, %_ZN4ncnn3MatD2Ev.exit946.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.el

bb.ek:                                            ; preds = %bb.el
  %i.bsc = landingpad { ptr, i32 }
          cleanup
  br label %bb.fa

bb.el:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit70, %_ZN4ncnnL20deconvolution_packedERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.exit
  invoke void @_ZNK4ncnn13Deconvolution11cut_paddingERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.em unwind label %bb.ek

bb.em:                                            ; preds = %bb.el
  %i.bsd = load ptr, ptr %2, align 8, !tbaa !20
  %i.bse = icmp eq ptr %i.bsd, null
  br i1 %i.bse, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.em
  %i.bsf = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bsg = load i64, ptr %i.bsf, align 8, !tbaa !21
  %i.bsh = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bsi = load i32, ptr %i.bsh, align 8, !tbaa !62
  %i.bsj = sext i32 %i.bsi to i64
  %i.bsk = mul i64 %i.bsg, %i.bsj
  %.fr = freeze i64 %i.bsk
  %i.bsl = icmp eq i64 %.fr, 0
  br i1 %i.bsl, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %bb.ez

_ZNK4ncnn3Mat5emptyEv.exit.thread:                ; preds = %bb.em, %_ZNK4ncnn3Mat5emptyEv.exit
  br label %bb.ez

.critedge:                                        ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  %i.bsm = load ptr, ptr %i.fv, align 8, !tbaa !18 ; 2 uses
  %.not.i93 = icmp eq ptr %i.bsm, null
  br i1 %.not.i93, label %_ZN4ncnn3MatD2Ev.exit66, label %bb.en

bb.en:                                            ; preds = %.critedge
  %i.bsn = atomicrmw add ptr %i.bsm, i32 -1 acq_rel, align 4
  %i.bso = icmp eq i32 %i.bsn, 1
  br i1 %i.bso, label %bb.eo, label %_ZN4ncnn3MatD2Ev.exit66

bb.eo:                                            ; preds = %bb.en
  %i.bsp = load ptr, ptr %i.fw, align 8, !tbaa !19 ; 3 uses
  %.not3.i94 = icmp eq ptr %i.bsp, null
  %i.bsq = load ptr, ptr %6, align 8, !tbaa !20   ; 3 uses
  br i1 %.not3.i94, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.bsr = load ptr, ptr %i.bsp, align 8, !tbaa !12
  %i.bss = getelementptr inbounds nuw i8, ptr %i.bsr, i64 24
  %i.bst = load ptr, ptr %i.bss, align 8
  invoke void %i.bst(ptr noundef nonnull align 8 dereferenceable(8) %i.bsp, ptr noundef %i.bsq)
          to label %_ZN4ncnn3MatD2Ev.exit66 unwind label %bb.es, !inline_history !0

bb.eq:                                            ; preds = %bb.eo
  %.not.i102 = icmp eq ptr %i.bsq, null
  br i1 %.not.i102, label %_ZN4ncnn3MatD2Ev.exit66, label %bb.er

bb.er:                                            ; preds = %bb.eq
  call void @free(ptr noundef nonnull %i.bsq) #10
  br label %_ZN4ncnn3MatD2Ev.exit66

bb.es:                                            ; preds = %bb.ep
  %i.bsu = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_ZNK4ncnn21Deconvolution_x86_fma13forward_bf16sERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %.fr2884.i = freeze i32 %i.fv                   ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !62
  %i.fy = mul i32 %i.fx, %.fr2884.i               ; 14 uses
  %i.fz = load i32, ptr %i.o, align 4, !tbaa !54  ; 6 uses
  %i.ga = load i32, ptr %i.p, align 8, !tbaa !66  ; 5 uses
  %i.gb = load i32, ptr %i.bj, align 4, !tbaa !54 ; 2 uses
  %i.gc = load i32, ptr %i.bk, align 16, !tbaa !66 ; 2 uses
  %i.gd = load ptr, ptr %4, align 16, !tbaa !20, !noalias !618 ; 2 uses
  %i.ge = load i64, ptr %i.bm, align 16, !tbaa !21, !noalias !618
  %i.gf = load i64, ptr %i.bf, align 16, !tbaa !55, !noalias !618
  %factor.op.mul.i = mul i64 %i.gf, %i.ge         ; 2 uses
  %i.gg = icmp slt i32 %i.gc, 1
  %i.gh = icmp slt i32 %i.gb, 1
  %i.gi = icmp sgt i32 %i.fy, 7
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 7 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %brmerge.i = select i1 %i.gg, i1 true, i1 %i.gh
  br i1 %brmerge.i, label %._crit_edge3034.split.i, label %_ZN4ncnn3MatD2Ev.exit957.lr.ph.split.split.i

_ZN4ncnn3MatD2Ev.exit957.lr.ph.split.split.i:     ; preds = %_ZN4ncnn3MatD2Ev.exit957.lr.ph.i
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.gn = load ptr, ptr %i.dw, align 8, !tbaa !20, !noalias !619
  %i.go = load i64, ptr %i.gm, align 8, !tbaa !21, !noalias !619
  %i.gp = load i64, ptr %i.gl, align 8, !tbaa !55, !noalias !619
  %factor.op.mul3040.i = mul i64 %i.gp, %i.go
  %i.gq = add i32 %i.fy, -8                       ; 2 uses
  %i.gr = lshr i32 %i.gq, 2
  %i.gs = and i32 %i.gr, 1073741822
  %narrow3645.i = add nuw nsw i32 %i.gs, 2
  %i.gt = zext nneg i32 %narrow3645.i to i64
  %i.gu = and i32 %i.gq, -8
  %i.gv = add nuw i32 %i.gu, 8
  %i.gw = sext i32 %i.fy to i64
  %i.gx = sext i32 %i.fq to i64
  %wide.trip.count3487.i = zext nneg i32 %i.fs to i64
  %invariant.op3668.i = add nsw i64 %i.gw, -7
  %i.gy = sext i32 %i.fz to i64                   ; 5 uses
  %i.gz = and i32 %i.fy, -8
  br label %_ZN4ncnn3MatD2Ev.exit957.i

_ZN4ncnn3MatD2Ev.exit978.i:                       ; preds = %._crit_edge2805.split.i, %_ZN4ncnn3MatD2Ev.exit978.preheader.i
  %indvars.iv3397.i = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit978.preheader.i ], [ %indvars.iv.next3398.i, %._crit_edge2805.split.i ] ; 2 uses
  %i.ha = load i32, ptr %i.fg, align 8, !tbaa !60
  %.fr2667.i = freeze i32 %i.ha                   ; 3 uses
  %i.hb = load i32, ptr %i.fh, align 8, !tbaa !62
  %i.hc = mul i32 %i.hb, %.fr2667.i               ; 13 uses
  %i.hd = load i32, ptr %i.o, align 4, !tbaa !54  ; 5 uses
  %i.he = load i32, ptr %i.p, align 8, !tbaa !66  ; 5 uses
  %i.hf = load i32, ptr %i.bj, align 4, !tbaa !54 ; 2 uses
  %i.hg = load i32, ptr %i.bk, align 16, !tbaa !66 ; 2 uses
  %i.hh = load i32, ptr %i.bg, align 8, !tbaa !60 ; 2 uses
  %i.hi = icmp sgt i32 %i.hg, 0
  br i1 %i.hi, label %.preheader2582.lr.ph.i, label %._crit_edge2805.split.i

.preheader2582.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit978.i
  %i.hj = shl nuw nsw i64 %indvars.iv3397.i, 2
  %i.hk = add nsw i64 %i.hj, %i.fo                ; 2 uses
  %i.hl = trunc nsw i64 %i.hk to i32              ; 3 uses
  %i.hm = icmp sgt i32 %i.hf, 0
  %i.hn = sdiv i32 %i.hl, 8
  %i.ho = srem i32 %i.hl, 8
  %.lhs.trunc.i = trunc nsw i32 %i.ho to i8
  %i.hp = sdiv i8 %.lhs.trunc.i, 4
  %.sext.i = sext i8 %i.hp to i32
  %i.hq = add nsw i32 %i.hn, %.sext.i
  %i.hr = sext i32 %i.hq to i64
  %i.hs = icmp sgt i32 %i.hc, 7
  %i.ht = load i32, ptr %i.g, align 4
  br i1 %i.hm, label %.preheader2582.preheader.i, label %._crit_edge2805.split.i

.preheader2582.preheader.i:                       ; preds = %.preheader2582.lr.ph.i
  %i.hu = load ptr, ptr %4, align 16, !tbaa !20, !noalias !620
  %i.hv = load i64, ptr %i.bm, align 16, !tbaa !21, !noalias !620
  %i.hw = sdiv i32 %i.hl, %i.hh
  %i.hx = sext i32 %i.hw to i64
  %i.hy = mul i64 %i.hv, %i.hx
  %i.hz = load i64, ptr %i.bf, align 16, !tbaa !55, !noalias !620
  %i.ia = mul i64 %i.hy, %i.hz
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hu, i64 %i.ia
  %i.ic = add i32 %i.hc, -8                       ; 2 uses
  %i.id = lshr i32 %i.ic, 2
  %i.ie = and i32 %i.id, 1073741822
  %narrow.i = add nuw nsw i32 %i.ie, 2
  %i.if = zext nneg i32 %narrow.i to i64
  %i.ig = and i32 %i.ic, -8
  %i.ih = add i32 %i.ig, 8                        ; 2 uses
  %i.ii = sext i32 %i.hc to i64
  %invariant.op3667.i = add nsw i64 %i.ii, -7
  br label %.preheader2582.i

.preheader2582.i:                                 ; preds = %._crit_edge.i, %.preheader2582.preheader.i
  %.07392804.i = phi ptr [ %.3742.i, %._crit_edge.i ], [ %i.ib, %.preheader2582.preheader.i ]
  %.07462803.i = phi i32 [ %.neg2536.i, %._crit_edge.i ], [ 0, %.preheader2582.preheader.i ]
  %i.ij = load i32, ptr %i.b, align 4             ; 2 uses
  %i.ik = icmp sgt i32 %i.ij, 0                   ; 4 uses
  %.neg2536.i = add nuw nsw i32 %.07462803.i, 1   ; 6 uses
  %i.il = load i32, ptr %i.k, align 4             ; 4 uses
  %i.im = shl i32 %i.il, 5
  %i.in = sext i32 %i.im to i64                   ; 2 uses
  %i.io = shl i32 %i.il, 4
  %i.ip = sext i32 %i.io to i64                   ; 3 uses
  %i.iq = shl i32 %i.il, 3
  %i.ir = sext i32 %i.iq to i64                   ; 3 uses
  %i.is = shl nsw i32 %i.il, 2
  %i.it = sext i32 %i.is to i64
  %i.iu = mul nsw i64 %i.in, %i.if
  %wide.trip.count3339.i = zext nneg i32 %i.ij to i64 ; 5 uses
  %.pre169 = load ptr, ptr %i.l, align 8, !tbaa !86
  br label %bb.x

._crit_edge2805.split.i:                          ; preds = %._crit_edge.i, %.preheader2582.lr.ph.i, %_ZN4ncnn3MatD2Ev.exit978.i
  %indvars.iv.next3398.i = add nuw nsw i64 %indvars.iv3397.i, 1 ; 2 uses
  %exitcond3401.not.i = icmp eq i64 %indvars.iv.next3398.i, %wide.trip.count3400.i
  br i1 %exitcond3401.not.i, label %._crit_edge2807.i, label %_ZN4ncnn3MatD2Ev.exit978.i, !llvm.loop !525

._crit_edge.i:                                    ; preds = %bb.bb
  %exitcond3396.not.i = icmp eq i32 %.neg2536.i, %i.hg
  br i1 %exitcond3396.not.i, label %._crit_edge2805.split.i, label %.preheader2582.i, !llvm.loop !526

bb.x:                                             ; preds = %bb.bb, %.preheader2582.i
  %i.iv = phi ptr [ %.pre169, %.preheader2582.i ], [ %i.aot, %bb.bb ] ; 4 uses
  %.17402802.i = phi ptr [ %.07392804.i, %.preheader2582.i ], [ %.3742.i, %bb.bb ] ; 8 uses
  %.07482801.i = phi i32 [ 0, %.preheader2582.i ], [ %i.aou, %bb.bb ] ; 5 uses
  %.not920.i = icmp eq ptr %i.iv, null
  br i1 %.not920.i, label %_ZN4ncnn3MatD2Ev.exit977.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.iw = getelementptr inbounds [4 x i8], ptr %i.iv, i64 %i.hk
  %i.ix = load <4 x float>, ptr %i.iw, align 1, !tbaa !82
  br label %_ZN4ncnn3MatD2Ev.exit977.i

_ZN4ncnn3MatD2Ev.exit977.i:                       ; preds = %bb.y, %bb.x
  %.02382.i = phi nsz <4 x float> [ zeroinitializer, %bb.x ], [ %i.ix, %bb.y ] ; 3 uses
  %i.iy = load ptr, ptr %i.dw, align 8, !tbaa !20, !noalias !621 ; 2 uses
  %i.iz = load i64, ptr %i.fi, align 8, !tbaa !21, !noalias !621
  %i.ja = mul i64 %i.iz, %i.hr
  %i.jb = load i64, ptr %i.fj, align 8, !tbaa !55, !noalias !621
  %i.jc = mul i64 %i.ja, %i.jb                    ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iy, i64 %i.jc ; 2 uses
  br i1 %i.hs, label %.preheader2578.lr.ph.i, label %.preheader2581.i

.preheader2578.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit977.i
  %i.je = load i32, ptr %i.j, align 4
  %invariant.op2602.i = sub i32 %.neg2536.i, %i.je
  %i.jf = load i32, ptr %i.f, align 4             ; 2 uses
  %i.jg = load i32, ptr %i.a, align 4
  %.fr3235.i = freeze i32 %i.jg                   ; 2 uses
  %i.jh = icmp sgt i32 %.fr3235.i, 0
  %i.ji = load i32, ptr %i.i, align 4
  %.neg2538.i = add nuw nsw i32 %.07482801.i, 1
  %invariant.op.i = sub i32 %.neg2538.i, %i.ji
  %i.jj = load i32, ptr %i.e, align 4             ; 2 uses
  br i1 %i.ik, label %.preheader2578.us.preheader.i, label %.preheader2578.preheader.i

.preheader2578.preheader.i:                       ; preds = %.preheader2578.lr.ph.i
  %scevgep.i = getelementptr i8, ptr %i.iy, i64 %i.iu
  %scevgep3334.i = getelementptr i8, ptr %scevgep.i, i64 %i.jc
  br label %.preheader2581.i

.preheader2578.us.preheader.i:                    ; preds = %.preheader2578.lr.ph.i
  %i.jk = load i32, ptr %i.c, align 4
  %i.jl = load i32, ptr %i.d, align 4
  %i.jm = zext i32 %.fr3235.i to i64              ; 2 uses
  br label %.preheader2578.us.i

.preheader2578.us.i:                              ; preds = %._crit_edge.us.i, %.preheader2578.us.preheader.i
  %indvars.iv3341.i = phi i64 [ 0, %.preheader2578.us.preheader.i ], [ %indvars.iv.next3342.i, %._crit_edge.us.i ] ; 11 uses
  %.07512612.us.i = phi ptr [ %i.jd, %.preheader2578.us.preheader.i ], [ %i.uj, %._crit_edge.us.i ] ; 2 uses
  %.123832610.us.i = phi <4 x float> [ %.02382.i, %.preheader2578.us.preheader.i ], [ %.us-phi2606.us.i, %._crit_edge.us.i ] ; 2 uses
  %.023992609.us.i = phi <4 x float> [ zeroinitializer, %.preheader2578.us.preheader.i ], [ %.us-phi2605.us.i, %._crit_edge.us.i ] ; 2 uses
  %.024142608.us.i = phi <4 x float> [ zeroinitializer, %.preheader2578.us.preheader.i ], [ %.us-phi2604.us.i, %._crit_edge.us.i ] ; 2 uses
  %.024242607.us.i = phi <4 x float> [ zeroinitializer, %.preheader2578.us.preheader.i ], [ %.us-phi.us.i, %._crit_edge.us.i ] ; 2 uses
  %i.jn = or disjoint i64 %indvars.iv3341.i, 7
  %i.jo = or disjoint i64 %indvars.iv3341.i, 1
  %i.jp = or disjoint i64 %indvars.iv3341.i, 2
  %i.jq = or disjoint i64 %indvars.iv3341.i, 3
  %i.jr = or disjoint i64 %indvars.iv3341.i, 4
  %i.js = or disjoint i64 %indvars.iv3341.i, 5
  %i.jt = or disjoint i64 %indvars.iv3341.i, 6
  %i.ju = lshr exact i64 %indvars.iv3341.i, 2     ; 2 uses
  %i.jv = or disjoint i64 %i.ju, 1
  %i.jw = lshr exact i64 %indvars.iv3341.i, 3
  br i1 %i.jh, label %.lr.ph2597.split.us.us.i, label %._crit_edge.us.i

.lr.ph2597.split.us.us.i:                         ; preds = %.preheader2578.us.i, %..loopexit2574_crit_edge.us.us.i
  %indvars.iv3336.i = phi i64 [ %indvars.iv.next3337.i, %..loopexit2574_crit_edge.us.us.i ], [ 0, %.preheader2578.us.i ] ; 3 uses
  %.223842595.us.us.i = phi <4 x float> [ %.5.us.us.i, %..loopexit2574_crit_edge.us.us.i ], [ %.123832610.us.i, %.preheader2578.us.i ] ; 3 uses
  %.124002594.us.us.i = phi <4 x float> [ %.42403.us.us.i, %..loopexit2574_crit_edge.us.us.i ], [ %.023992609.us.i, %.preheader2578.us.i ] ; 3 uses
  %.124152593.us.us.i = phi <4 x float> [ %.42418.us.us.i, %..loopexit2574_crit_edge.us.us.i ], [ %.024142608.us.i, %.preheader2578.us.i ] ; 3 uses
  %.124252592.us.us.i = phi <4 x float> [ %.42428.us.us.i, %..loopexit2574_crit_edge.us.us.i ], [ %.024242607.us.i, %.preheader2578.us.i ] ; 3 uses
  %i.jx = trunc i64 %indvars.iv3336.i to i32
  %i.jy = mul i32 %i.jl, %i.jx
  %.reass2603.us.us.i = add i32 %i.jy, %invariant.op2602.i ; 3 uses
  %i.jz = icmp slt i32 %.reass2603.us.us.i, 0
  br i1 %i.jz, label %..loopexit2574_crit_edge.us.us.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph2597.split.us.us.i
  %i.ka = srem i32 %.reass2603.us.us.i, %i.jf
  %i.kb = sdiv exact i32 %.reass2603.us.us.i, %i.jf ; 2 uses
  %.not934.us.us.i = icmp eq i32 %i.ka, 0
  %.not935.us.us.i = icmp slt i32 %i.kb, %i.he
  %or.cond = select i1 %.not934.us.us.i, i1 %.not935.us.us.i, i1 false
  br i1 %or.cond, label %.preheader2573.us.us.i, label %..loopexit2574_crit_edge.us.us.i

.preheader2573.us.us.i:                           ; preds = %bb.z
  %i.kc = mul nuw nsw i64 %indvars.iv3336.i, %i.jm
  %i.kd = sext i32 %i.kb to i64                   ; 3 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ad, %.preheader2573.us.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.ad ], [ 0, %.preheader2573.us.us.i ] ; 3 uses
  %.323852587.us.us.i = phi <4 x float> [ %.42386.us.us.i, %bb.ad ], [ %.223842595.us.us.i, %.preheader2573.us.us.i ] ; 4 uses
  %.224012586.us.us.i = phi <4 x float> [ %.32402.us.us.i, %bb.ad ], [ %.124002594.us.us.i, %.preheader2573.us.us.i ] ; 4 uses
  %.224162585.us.us.i = phi <4 x float> [ %.32417.us.us.i, %bb.ad ], [ %.124152593.us.us.i, %.preheader2573.us.us.i ] ; 4 uses
  %.224262584.us.us.i = phi <4 x float> [ %.32427.us.us.i, %bb.ad ], [ %.124252592.us.us.i, %.preheader2573.us.us.i ] ; 4 uses
  %i.ke = trunc i64 %indvars.iv.i to i32
  %i.kf = mul i32 %i.jk, %i.ke
  %.reass.us.us.i = add i32 %invariant.op.i, %i.kf ; 3 uses
  %i.kg = icmp slt i32 %.reass.us.us.i, 0
  br i1 %i.kg, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.kh = srem i32 %.reass.us.us.i, %i.jj
  %i.ki = sdiv exact i32 %.reass.us.us.i, %i.jj   ; 4 uses
  %.not936.us.us.i = icmp eq i32 %i.kh, 0
  %.not937.us.us.i = icmp slt i32 %i.ki, %i.hd
  %or.cond312 = select i1 %.not936.us.us.i, i1 %.not937.us.us.i, i1 false
  br i1 %or.cond312, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.kj = add nuw nsw i64 %indvars.iv.i, %i.kc
  %i.kk = shl i64 %i.kj, 5
  %i.kl = and i64 %i.kk, 4294967264
  %i.km = getelementptr inbounds nuw [2 x i8], ptr %.07512612.us.i, i64 %i.kl ; 8 uses
  switch i32 %.fr2667.i, label %bb.ad [
    i32 8, label %_ZN4ncnn3MatD2Ev.exit976.us.us.i
    i32 4, label %_ZN4ncnn3MatD2Ev.exit975.us.us.i
    i32 1, label %_ZN4ncnn3MatD2Ev.exit973.us.us.i
  ]

_ZN4ncnn3MatD2Ev.exit973.us.us.i:                 ; preds = %bb.ac
  %i.kn = load i32, ptr %i.o, align 4, !tbaa !54, !noalias !622
  %i.ko = load ptr, ptr %1, align 8, !tbaa !20, !noalias !622 ; 8 uses
  %i.kp = load i64, ptr %i.fk, align 8, !tbaa !21, !noalias !622
  %i.kq = load i64, ptr %i.fl, align 8, !tbaa !55, !noalias !622 ; 2 uses
  %i.kr = mul i64 %i.kq, %i.kp                    ; 8 uses
  %i.ks = mul i64 %i.kr, %indvars.iv3341.i
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ko, i64 %i.ks
  %i.ku = sext i32 %i.kn to i64
  %i.kv = mul nsw i64 %i.ku, %i.kd
  %i.kw = mul i64 %i.kv, %i.kq                    ; 8 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kt, i64 %i.kw
  %i.ky = sext i32 %i.ki to i64                   ; 8 uses
  %i.kz = getelementptr inbounds [2 x i8], ptr %i.kx, i64 %i.ky
  %i.la = load i16, ptr %i.kz, align 2, !tbaa !89
  %i.lb = zext i16 %i.la to i32
  %i.lc = shl nuw i32 %i.lb, 16
  %i.ld = insertelement <4 x i32> poison, i32 %i.lc, i64 0
  %i.le = bitcast <4 x i32> %i.ld to <4 x float>
  %i.lf = shufflevector <4 x float> %i.le, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lg = mul i64 %i.kr, %i.jo
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ko, i64 %i.lg
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.kw
  %i.lj = getelementptr inbounds [2 x i8], ptr %i.li, i64 %i.ky
  %i.lk = load i16, ptr %i.lj, align 2, !tbaa !89
  %i.ll = zext i16 %i.lk to i32
  %i.lm = shl nuw i32 %i.ll, 16
  %i.ln = insertelement <4 x i32> poison, i32 %i.lm, i64 0
  %i.lo = bitcast <4 x i32> %i.ln to <4 x float>
  %i.lp = shufflevector <4 x float> %i.lo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lq = mul i64 %i.kr, %i.jp
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ko, i64 %i.lq
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 %i.kw
  %i.lt = getelementptr inbounds [2 x i8], ptr %i.ls, i64 %i.ky
  %i.lu = load i16, ptr %i.lt, align 2, !tbaa !89
  %i.lv = zext i16 %i.lu to i32
  %i.lw = shl nuw i32 %i.lv, 16
  %i.lx = insertelement <4 x i32> poison, i32 %i.lw, i64 0
  %i.ly = bitcast <4 x i32> %i.lx to <4 x float>
  %i.lz = shufflevector <4 x float> %i.ly, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ma = mul i64 %i.kr, %i.jq
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ko, i64 %i.ma
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 %i.kw
  %i.md = getelementptr inbounds [2 x i8], ptr %i.mc, i64 %i.ky
  %i.me = load i16, ptr %i.md, align 2, !tbaa !89
  %i.mf = zext i16 %i.me to i32
  %i.mg = shl nuw i32 %i.mf, 16
  %i.mh = insertelement <4 x i32> poison, i32 %i.mg, i64 0
  %i.mi = bitcast <4 x i32> %i.mh to <4 x float>
  %i.mj = shufflevector <4 x float> %i.mi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mk = mul i64 %i.kr, %i.jr
  %i.ml = getelementptr inbounds nuw i8, ptr %i.ko, i64 %i.mk
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 %i.kw
  %i.mn = getelementptr inbounds [2 x i8], ptr %i.mm, i64 %i.ky
  %i.mo = load i16, ptr %i.mn, align 2, !tbaa !89
  %i.mp = zext i16 %i.mo to i32
  %i.mq = shl nuw i32 %i.mp, 16
  %i.mr = insertelement <4 x i32> poison, i32 %i.mq, i64 0
  %i.ms = bitcast <4 x i32> %i.mr to <4 x float>
  %i.mt = shufflevector <4 x float> %i.ms, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mu = mul i64 %i.kr, %i.js
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ko, i64 %i.mu
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 %i.kw
  %i.mx = getelementptr inbounds [2 x i8], ptr %i.mw, i64 %i.ky
  %i.my = load i16, ptr %i.mx, align 2, !tbaa !89
  %i.mz = zext i16 %i.my to i32
  %i.na = shl nuw i32 %i.mz, 16
  %i.nb = insertelement <4 x i32> poison, i32 %i.na, i64 0
  %i.nc = bitcast <4 x i32> %i.nb to <4 x float>
  %i.nd = shufflevector <4 x float> %i.nc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ne = mul i64 %i.kr, %i.jt
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ko, i64 %i.ne
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 %i.kw
  %i.nh = getelementptr inbounds [2 x i8], ptr %i.ng, i64 %i.ky
  %i.ni = load i16, ptr %i.nh, align 2, !tbaa !89
  %i.nj = zext i16 %i.ni to i32
  %i.nk = shl nuw i32 %i.nj, 16
  %i.nl = insertelement <4 x i32> poison, i32 %i.nk, i64 0
  %i.nm = bitcast <4 x i32> %i.nl to <4 x float>
  %i.nn = shufflevector <4 x float> %i.nm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.no = mul i64 %i.kr, %i.jn
  %i.np = getelementptr inbounds nuw i8, ptr %i.ko, i64 %i.no
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 %i.kw
  %i.nr = getelementptr inbounds [2 x i8], ptr %i.nq, i64 %i.ky
  br label %.sink.split.i

_ZN4ncnn3MatD2Ev.exit975.us.us.i:                 ; preds = %bb.ac
  %i.ns = load i32, ptr %i.o, align 4, !tbaa !54, !noalias !623
  %i.nt = load ptr, ptr %1, align 8, !tbaa !20, !noalias !623 ; 2 uses
  %i.nu = load i64, ptr %i.fk, align 8, !tbaa !21, !noalias !623
  %i.nv = load i64, ptr %i.fl, align 8, !tbaa !55, !noalias !623 ; 2 uses
  %i.nw = mul i64 %i.nv, %i.nu                    ; 2 uses
  %i.nx = mul i64 %i.nw, %i.ju
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.nx
  %i.nz = sext i32 %i.ns to i64
  %i.oa = mul nsw i64 %i.nz, %i.kd
  %i.ob = mul i64 %i.oa, %i.nv                    ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ny, i64 %i.ob
  %i.od = shl nsw i32 %i.ki, 2
  %i.oe = sext i32 %i.od to i64                   ; 2 uses
  %i.of = getelementptr inbounds [2 x i8], ptr %i.oc, i64 %i.oe ; 4 uses
  %i.og = mul i64 %i.nw, %i.jv
  %i.oh = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.og
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 %i.ob
  %i.oj = getelementptr inbounds [2 x i8], ptr %i.oi, i64 %i.oe ; 4 uses
  %i.ok = load i16, ptr %i.of, align 2, !tbaa !89
  %i.ol = zext i16 %i.ok to i32
  %i.om = shl nuw i32 %i.ol, 16
  %i.on = insertelement <4 x i32> poison, i32 %i.om, i64 0
  %i.oo = bitcast <4 x i32> %i.on to <4 x float>
  %i.op = shufflevector <4 x float> %i.oo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.oq = getelementptr inbounds nuw i8, ptr %i.of, i64 2
  %i.or = load i16, ptr %i.oq, align 2, !tbaa !89
  %i.os = zext i16 %i.or to i32
  %i.ot = shl nuw i32 %i.os, 16
  %i.ou = insertelement <4 x i32> poison, i32 %i.ot, i64 0
  %i.ov = bitcast <4 x i32> %i.ou to <4 x float>
  %i.ow = shufflevector <4 x float> %i.ov, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ox = getelementptr inbounds nuw i8, ptr %i.of, i64 4
  %i.oy = load i16, ptr %i.ox, align 2, !tbaa !89
  %i.oz = zext i16 %i.oy to i32
  %i.pa = shl nuw i32 %i.oz, 16
  %i.pb = insertelement <4 x i32> poison, i32 %i.pa, i64 0
  %i.pc = bitcast <4 x i32> %i.pb to <4 x float>
  %i.pd = shufflevector <4 x float> %i.pc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pe = getelementptr inbounds nuw i8, ptr %i.of, i64 6
  %i.pf = load i16, ptr %i.pe, align 2, !tbaa !89
  %i.pg = zext i16 %i.pf to i32
  %i.ph = shl nuw i32 %i.pg, 16
  %i.pi = insertelement <4 x i32> poison, i32 %i.ph, i64 0
  %i.pj = bitcast <4 x i32> %i.pi to <4 x float>
  %i.pk = shufflevector <4 x float> %i.pj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pl = load i16, ptr %i.oj, align 2, !tbaa !89
  %i.pm = zext i16 %i.pl to i32
  %i.pn = shl nuw i32 %i.pm, 16
  %i.po = insertelement <4 x i32> poison, i32 %i.pn, i64 0
  %i.pp = bitcast <4 x i32> %i.po to <4 x float>
  %i.pq = shufflevector <4 x float> %i.pp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pr = getelementptr inbounds nuw i8, ptr %i.oj, i64 2
  %i.ps = load i16, ptr %i.pr, align 2, !tbaa !89
  %i.pt = zext i16 %i.ps to i32
  %i.pu = shl nuw i32 %i.pt, 16
  %i.pv = insertelement <4 x i32> poison, i32 %i.pu, i64 0
  %i.pw = bitcast <4 x i32> %i.pv to <4 x float>
  %i.px = shufflevector <4 x float> %i.pw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.py = getelementptr inbounds nuw i8, ptr %i.oj, i64 4
  %i.pz = load i16, ptr %i.py, align 2, !tbaa !89
  %i.qa = zext i16 %i.pz to i32
  %i.qb = shl nuw i32 %i.qa, 16
  %i.qc = insertelement <4 x i32> poison, i32 %i.qb, i64 0
  %i.qd = bitcast <4 x i32> %i.qc to <4 x float>
  %i.qe = shufflevector <4 x float> %i.qd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qf = getelementptr inbounds nuw i8, ptr %i.oj, i64 6
  br label %.sink.split.i

_ZN4ncnn3MatD2Ev.exit976.us.us.i:                 ; preds = %bb.ac
  %i.qg = load i32, ptr %i.o, align 4, !tbaa !54, !noalias !624
  %i.qh = load ptr, ptr %1, align 8, !tbaa !20, !noalias !624
  %i.qi = load i64, ptr %i.fk, align 8, !tbaa !21, !noalias !624
  %i.qj = mul i64 %i.qi, %i.jw
  %i.qk = load i64, ptr %i.fl, align 8, !tbaa !55, !noalias !624 ; 2 uses
  %i.ql = mul i64 %i.qj, %i.qk
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qh, i64 %i.ql
  %i.qn = sext i32 %i.qg to i64
  %i.qo = mul nsw i64 %i.qn, %i.kd
  %i.qp = mul i64 %i.qo, %i.qk
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qm, i64 %i.qp
  %i.qr = shl nsw i32 %i.ki, 3
  %i.qs = sext i32 %i.qr to i64
  %i.qt = getelementptr inbounds [2 x i8], ptr %i.qq, i64 %i.qs ; 5 uses
  %i.qu = load i16, ptr %i.qt, align 2, !tbaa !89
  %i.qv = zext i16 %i.qu to i32
  %i.qw = shl nuw i32 %i.qv, 16
  %i.qx = insertelement <4 x i32> poison, i32 %i.qw, i64 0
  %i.qy = bitcast <4 x i32> %i.qx to <4 x float>
  %i.qz = shufflevector <4 x float> %i.qy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qt, i64 2
  %i.rb = load i16, ptr %i.ra, align 2, !tbaa !89
  %i.rc = zext i16 %i.rb to i32
  %i.rd = shl nuw i32 %i.rc, 16
  %i.re = insertelement <4 x i32> poison, i32 %i.rd, i64 0
  %i.rf = bitcast <4 x i32> %i.re to <4 x float>
  %i.rg = shufflevector <4 x float> %i.rf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rh = getelementptr inbounds nuw i8, ptr %i.qt, i64 4
end_hunk_2
begin_hunk_3_@_ZNK4ncnn21Deconvolution_x86_fma13forward_bf16sERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %i.sa = getelementptr inbounds nuw i8, ptr %i.qt, i64 14
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit976.us.us.i, %_ZN4ncnn3MatD2Ev.exit975.us.us.i, %_ZN4ncnn3MatD2Ev.exit973.us.us.i
  %.sink3730.in.i = phi ptr [ %i.sa, %_ZN4ncnn3MatD2Ev.exit976.us.us.i ], [ %i.qf, %_ZN4ncnn3MatD2Ev.exit975.us.us.i ], [ %i.nr, %_ZN4ncnn3MatD2Ev.exit973.us.us.i ]
  %.sink3722.i = phi <4 x float> [ %i.qz, %_ZN4ncnn3MatD2Ev.exit976.us.us.i ], [ %i.op, %_ZN4ncnn3MatD2Ev.exit975.us.us.i ], [ %i.lf, %_ZN4ncnn3MatD2Ev.exit973.us.us.i ]
  %.sink3715.i = phi <4 x float> [ %i.rg, %_ZN4ncnn3MatD2Ev.exit976.us.us.i ], [ %i.ow, %_ZN4ncnn3MatD2Ev.exit975.us.us.i ], [ %i.lp, %_ZN4ncnn3MatD2Ev.exit973.us.us.i ]
  %.sink3708.i = phi <4 x float> [ %i.rn, %_ZN4ncnn3MatD2Ev.exit976.us.us.i ], [ %i.pd, %_ZN4ncnn3MatD2Ev.exit975.us.us.i ], [ %i.lz, %_ZN4ncnn3MatD2Ev.exit973.us.us.i ]
  %.sink3701.i = phi <4 x float> [ %i.rt, %_ZN4ncnn3MatD2Ev.exit976.us.us.i ], [ %i.pk, %_ZN4ncnn3MatD2Ev.exit975.us.us.i ], [ %i.mj, %_ZN4ncnn3MatD2Ev.exit973.us.us.i ]
  %.sink3693.i = phi <4 x float> [ %i.rv, %_ZN4ncnn3MatD2Ev.exit976.us.us.i ], [ %i.pq, %_ZN4ncnn3MatD2Ev.exit975.us.us.i ], [ %i.mt, %_ZN4ncnn3MatD2Ev.exit973.us.us.i ]
  %.sink3685.i = phi <4 x float> [ %i.rx, %_ZN4ncnn3MatD2Ev.exit976.us.us.i ], [ %i.px, %_ZN4ncnn3MatD2Ev.exit975.us.us.i ], [ %i.nd, %_ZN4ncnn3MatD2Ev.exit973.us.us.i ]
  %.sink3677.i = phi <4 x float> [ %i.rz, %_ZN4ncnn3MatD2Ev.exit976.us.us.i ], [ %i.qe, %_ZN4ncnn3MatD2Ev.exit975.us.us.i ], [ %i.nn, %_ZN4ncnn3MatD2Ev.exit973.us.us.i ]
  %.sink3730.i = load i16, ptr %.sink3730.in.i, align 2, !tbaa !89
  %i.sb = zext i16 %.sink3730.i to i32
  %i.sc = shl nuw i32 %i.sb, 16
  %i.sd = insertelement <4 x i32> poison, i32 %i.sc, i64 0
  %i.se = bitcast <4 x i32> %i.sd to <4 x float>
  %i.sf = shufflevector <4 x float> %i.se, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sg = load i64, ptr %i.km, align 1, !tbaa !82
  %i.sh = insertelement <2 x i64> poison, i64 %i.sg, i64 0
  %i.si = bitcast <2 x i64> %i.sh to <8 x i16>
  %i.sj = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.si, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.sk = bitcast <8 x i16> %i.sj to <4 x float>
  %i.sl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sink3722.i, <4 x float> nofpclass(nan inf) %i.sk, <4 x float> nofpclass(nan inf) %.323852587.us.us.i)
  %i.sm = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %i.sn = load i64, ptr %i.sm, align 1, !tbaa !82
  %i.so = insertelement <2 x i64> poison, i64 %i.sn, i64 0
  %i.sp = bitcast <2 x i64> %i.so to <8 x i16>
  %i.sq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.sp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.sr = bitcast <8 x i16> %i.sq to <4 x float>
  %i.ss = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sink3715.i, <4 x float> nofpclass(nan inf) %i.sr, <4 x float> nofpclass(nan inf) %.224012586.us.us.i)
  %i.st = getelementptr inbounds nuw i8, ptr %i.km, i64 16
  %i.su = load i64, ptr %i.st, align 1, !tbaa !82
  %i.sv = insertelement <2 x i64> poison, i64 %i.su, i64 0
  %i.sw = bitcast <2 x i64> %i.sv to <8 x i16>
  %i.sx = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.sw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.sy = bitcast <8 x i16> %i.sx to <4 x float>
  %i.sz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sink3708.i, <4 x float> nofpclass(nan inf) %i.sy, <4 x float> nofpclass(nan inf) %.224162585.us.us.i)
  %i.ta = getelementptr inbounds nuw i8, ptr %i.km, i64 24
  %i.tb = load i64, ptr %i.ta, align 1, !tbaa !82
  %i.tc = insertelement <2 x i64> poison, i64 %i.tb, i64 0
  %i.td = bitcast <2 x i64> %i.tc to <8 x i16>
  %i.te = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.td, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.tf = bitcast <8 x i16> %i.te to <4 x float>
  %i.tg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sink3701.i, <4 x float> nofpclass(nan inf) %i.tf, <4 x float> nofpclass(nan inf) %.224262584.us.us.i)
  %i.th = getelementptr inbounds nuw i8, ptr %i.km, i64 32
  %i.ti = load i64, ptr %i.th, align 1, !tbaa !82
  %i.tj = insertelement <2 x i64> poison, i64 %i.ti, i64 0
  %i.tk = bitcast <2 x i64> %i.tj to <8 x i16>
  %i.tl = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.tk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.tm = bitcast <8 x i16> %i.tl to <4 x float>
  %i.tn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sink3693.i, <4 x float> nofpclass(nan inf) %i.tm, <4 x float> nofpclass(nan inf) %i.sl)
  %i.to = getelementptr inbounds nuw i8, ptr %i.km, i64 40
  %i.tp = load i64, ptr %i.to, align 1, !tbaa !82
  %i.tq = insertelement <2 x i64> poison, i64 %i.tp, i64 0
  %i.tr = bitcast <2 x i64> %i.tq to <8 x i16>
  %i.ts = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.tr, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.tt = bitcast <8 x i16> %i.ts to <4 x float>
  %i.tu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sink3685.i, <4 x float> nofpclass(nan inf) %i.tt, <4 x float> nofpclass(nan inf) %i.ss)
  %i.tv = getelementptr inbounds nuw i8, ptr %i.km, i64 48
  %i.tw = load i64, ptr %i.tv, align 1, !tbaa !82
  %i.tx = insertelement <2 x i64> poison, i64 %i.tw, i64 0
  %i.ty = bitcast <2 x i64> %i.tx to <8 x i16>
  %i.tz = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ty, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ua = bitcast <8 x i16> %i.tz to <4 x float>
  %i.ub = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sink3677.i, <4 x float> nofpclass(nan inf) %i.ua, <4 x float> nofpclass(nan inf) %i.sz)
  %i.uc = getelementptr inbounds nuw i8, ptr %i.km, i64 56
  %i.ud = load i64, ptr %i.uc, align 1, !tbaa !82
  %i.ue = insertelement <2 x i64> poison, i64 %i.ud, i64 0
  %i.uf = bitcast <2 x i64> %i.ue to <8 x i16>
  %i.ug = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.uf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.uh = bitcast <8 x i16> %i.ug to <4 x float>
  %i.ui = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.sf, <4 x float> nofpclass(nan inf) %i.uh, <4 x float> nofpclass(nan inf) %i.tg)
  br label %bb.ad

bb.ad:                                            ; preds = %.sink.split.i, %bb.ac, %bb.ab, %bb.aa
  %.32427.us.us.i = phi nsz <4 x float> [ %.224262584.us.us.i, %bb.aa ], [ %.224262584.us.us.i, %bb.ac ], [ %.224262584.us.us.i, %bb.ab ], [ %i.ui, %.sink.split.i ] ; 2 uses
  %.32417.us.us.i = phi nsz <4 x float> [ %.224162585.us.us.i, %bb.aa ], [ %.224162585.us.us.i, %bb.ac ], [ %.224162585.us.us.i, %bb.ab ], [ %i.ub, %.sink.split.i ] ; 2 uses
  %.32402.us.us.i = phi nsz <4 x float> [ %.224012586.us.us.i, %bb.aa ], [ %.224012586.us.us.i, %bb.ac ], [ %.224012586.us.us.i, %bb.ab ], [ %i.tu, %.sink.split.i ] ; 2 uses
  %.42386.us.us.i = phi nsz <4 x float> [ %.323852587.us.us.i, %bb.aa ], [ %.323852587.us.us.i, %bb.ac ], [ %.323852587.us.us.i, %bb.ab ], [ %i.tn, %.sink.split.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.jm
  br i1 %exitcond.not.i, label %..loopexit2574_crit_edge.us.us.i, label %bb.aa, !llvm.loop !535

..loopexit2574_crit_edge.us.us.i:                 ; preds = %bb.ad, %bb.z, %.lr.ph2597.split.us.us.i
  %.42428.us.us.i = phi nsz <4 x float> [ %.124252592.us.us.i, %.lr.ph2597.split.us.us.i ], [ %.124252592.us.us.i, %bb.z ], [ %.32427.us.us.i, %bb.ad ] ; 2 uses
  %.42418.us.us.i = phi nsz <4 x float> [ %.124152593.us.us.i, %.lr.ph2597.split.us.us.i ], [ %.124152593.us.us.i, %bb.z ], [ %.32417.us.us.i, %bb.ad ] ; 2 uses
  %.42403.us.us.i = phi nsz <4 x float> [ %.124002594.us.us.i, %.lr.ph2597.split.us.us.i ], [ %.124002594.us.us.i, %bb.z ], [ %.32402.us.us.i, %bb.ad ] ; 2 uses
  %.5.us.us.i = phi nsz <4 x float> [ %.223842595.us.us.i, %.lr.ph2597.split.us.us.i ], [ %.223842595.us.us.i, %bb.z ], [ %.42386.us.us.i, %bb.ad ] ; 2 uses
  %indvars.iv.next3337.i = add nuw nsw i64 %indvars.iv3336.i, 1 ; 2 uses
  %exitcond3340.not.i = icmp eq i64 %indvars.iv.next3337.i, %wide.trip.count3339.i
  br i1 %exitcond3340.not.i, label %._crit_edge.us.i, label %.lr.ph2597.split.us.us.i, !llvm.loop !536

._crit_edge.us.i:                                 ; preds = %..loopexit2574_crit_edge.us.us.i, %.preheader2578.us.i
  %.us-phi.us.i = phi <4 x float> [ %.024242607.us.i, %.preheader2578.us.i ], [ %.42428.us.us.i, %..loopexit2574_crit_edge.us.us.i ] ; 2 uses
  %.us-phi2604.us.i = phi <4 x float> [ %.024142608.us.i, %.preheader2578.us.i ], [ %.42418.us.us.i, %..loopexit2574_crit_edge.us.us.i ] ; 2 uses
  %.us-phi2605.us.i = phi <4 x float> [ %.023992609.us.i, %.preheader2578.us.i ], [ %.42403.us.us.i, %..loopexit2574_crit_edge.us.us.i ] ; 2 uses
  %.us-phi2606.us.i = phi <4 x float> [ %.123832610.us.i, %.preheader2578.us.i ], [ %.5.us.us.i, %..loopexit2574_crit_edge.us.us.i ] ; 2 uses
  %i.uj = getelementptr inbounds [2 x i8], ptr %.07512612.us.i, i64 %i.in ; 2 uses
  %indvars.iv.next3342.i = add nuw nsw i64 %indvars.iv3341.i, 8 ; 2 uses
  %i.uk = icmp slt i64 %indvars.iv.next3342.i, %invariant.op3667.i
  br i1 %i.uk, label %.preheader2578.us.i, label %.preheader2581.i, !llvm.loop !537

.preheader2581.i:                                 ; preds = %._crit_edge.us.i, %.preheader2578.preheader.i, %_ZN4ncnn3MatD2Ev.exit977.i
  %.02424.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit977.i ], [ zeroinitializer, %.preheader2578.preheader.i ], [ %.us-phi.us.i, %._crit_edge.us.i ] ; 4 uses
  %.02414.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit977.i ], [ zeroinitializer, %.preheader2578.preheader.i ], [ %.us-phi2604.us.i, %._crit_edge.us.i ] ; 4 uses
  %.02399.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit977.i ], [ zeroinitializer, %.preheader2578.preheader.i ], [ %.us-phi2605.us.i, %._crit_edge.us.i ] ; 4 uses
  %.12383.lcssa.i = phi <4 x float> [ %.02382.i, %_ZN4ncnn3MatD2Ev.exit977.i ], [ %.02382.i, %.preheader2578.preheader.i ], [ %.us-phi2606.us.i, %._crit_edge.us.i ] ; 4 uses
  %.0756.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit977.i ], [ %i.ih, %.preheader2578.preheader.i ], [ %i.ih, %._crit_edge.us.i ] ; 9 uses
  %.0751.lcssa.i = phi ptr [ %i.jd, %_ZN4ncnn3MatD2Ev.exit977.i ], [ %scevgep3334.i, %.preheader2578.preheader.i ], [ %i.uj, %._crit_edge.us.i ] ; 4 uses
  %i.ul = or disjoint i32 %.0756.lcssa.i, 3       ; 2 uses
  %i.um = icmp slt i32 %i.ul, %i.hc
  br i1 %i.um, label %.preheader2577.lr.ph.i, label %.preheader2580.i

.preheader2577.lr.ph.i:                           ; preds = %.preheader2581.i
  %i.un = load i32, ptr %i.d, align 4             ; 2 uses
  %i.uo = load i32, ptr %i.j, align 4
  %invariant.op2678.i = sub i32 %.neg2536.i, %i.uo ; 2 uses
  %i.up = load i32, ptr %i.f, align 4             ; 4 uses
  %i.uq = load i32, ptr %i.a, align 4
  %.fr.i = freeze i32 %i.uq                       ; 2 uses
  %i.ur = load i32, ptr %i.c, align 4             ; 2 uses
  %i.us = load i32, ptr %i.i, align 4
  %.neg2534.i = add nuw nsw i32 %.07482801.i, 1
  %invariant.op2642.i = sub i32 %.neg2534.i, %i.us ; 2 uses
  %i.ut = load i32, ptr %i.e, align 4             ; 4 uses
  br i1 %i.ik, label %.preheader2577.lr.ph.split.us.i, label %.preheader2577.preheader.i

.preheader2577.preheader.i:                       ; preds = %.preheader2577.lr.ph.i
  %i.uu = add i32 %.0756.lcssa.i, 7
  %smax.i = call i32 @llvm.smax.i32(i32 %i.hc, i32 %i.uu)
  %reass.sub = sub i32 %smax.i, %.0756.lcssa.i
  %i.uv = add i32 %reass.sub, -4                  ; 2 uses
  %i.uw = lshr i32 %i.uv, 1
  %i.ux = and i32 %i.uw, 2147483646
  %narrow3643.i = add nuw i32 %i.ux, 2
  %i.uy = zext i32 %narrow3643.i to i64
  %i.uz = mul nsw i64 %i.uy, %i.ip
  %scevgep3344.i = getelementptr i8, ptr %.0751.lcssa.i, i64 %i.uz
  %i.va = add i32 %.0756.lcssa.i, 4
  %i.vb = and i32 %i.uv, -4
  %i.vc = add i32 %i.va, %i.vb
  br label %.preheader2580.i

.preheader2577.lr.ph.split.us.i:                  ; preds = %.preheader2577.lr.ph.i
  %i.vd = icmp sgt i32 %.fr.i, 0
  br i1 %i.vd, label %.preheader2577.us.us.preheader.i, label %.preheader2577.us.preheader.i

.preheader2577.us.preheader.i:                    ; preds = %.preheader2577.lr.ph.split.us.i
  %i.ve = add i32 %.0756.lcssa.i, 7
  %smax3345.i = call i32 @llvm.smax.i32(i32 %i.hc, i32 %i.ve)
  %reass.sub135 = sub i32 %smax3345.i, %.0756.lcssa.i
  %i.vf = add i32 %reass.sub135, -4               ; 2 uses
  %i.vg = lshr i32 %i.vf, 1
  %i.vh = and i32 %i.vg, 2147483646
  %narrow3644.i = add nuw i32 %i.vh, 2
  %i.vi = zext i32 %narrow3644.i to i64
  %i.vj = mul nsw i64 %i.vi, %i.ip
  %scevgep3346.i = getelementptr i8, ptr %.0751.lcssa.i, i64 %i.vj
  %i.vk = add i32 %.0756.lcssa.i, 4
  %i.vl = and i32 %i.vf, -4
  %i.vm = add i32 %i.vk, %i.vl
  br label %.preheader2580.i

.preheader2577.us.us.preheader.i:                 ; preds = %.preheader2577.lr.ph.split.us.i
  %i.vn = zext nneg i32 %.fr.i to i64             ; 4 uses
  %i.vo = zext i32 %.0756.lcssa.i to i64
  %i.vp = zext nneg i32 %i.ul to i64
  br label %.preheader2577.us.us.i

.preheader2577.us.us.i:                           ; preds = %._crit_edge.split.us.us2714.us.i, %.preheader2577.us.us.preheader.i
  %indvars.iv3362.i = phi i64 [ %i.vo, %.preheader2577.us.us.preheader.i ], [ %indvars.iv.next3363.i, %._crit_edge.split.us.us2714.us.i ] ; 5 uses
  %i.vq = phi i64 [ %i.vp, %.preheader2577.us.us.preheader.i ], [ %i.acp, %._crit_edge.split.us.us2714.us.i ]
  %.17522699.us.us.i = phi ptr [ %.0751.lcssa.i, %.preheader2577.us.us.preheader.i ], [ %i.aco, %._crit_edge.split.us.us2714.us.i ] ; 3 uses
  %.623872697.us.us.i = phi <4 x float> [ %.12383.lcssa.i, %.preheader2577.us.us.preheader.i ], [ %.us-phi76, %._crit_edge.split.us.us2714.us.i ] ; 3 uses
  %.524042696.us.us.i = phi <4 x float> [ %.02399.lcssa.i, %.preheader2577.us.us.preheader.i ], [ %.us-phi75, %._crit_edge.split.us.us2714.us.i ] ; 3 uses
  %.524192695.us.us.i = phi <4 x float> [ %.02414.lcssa.i, %.preheader2577.us.us.preheader.i ], [ %.us-phi74, %._crit_edge.split.us.us2714.us.i ] ; 3 uses
  %.524292694.us.us.i = phi <4 x float> [ %.02424.lcssa.i, %.preheader2577.us.us.preheader.i ], [ %.us-phi, %._crit_edge.split.us.us2714.us.i ] ; 3 uses
  %i.vr = add nuw nsw i64 %indvars.iv3362.i, 1
  %i.vs = add nuw nsw i64 %indvars.iv3362.i, 2
  %i.vt = lshr exact i64 %indvars.iv3362.i, 2
  switch i32 %.fr2667.i, label %._crit_edge.split.us.us2714.us.i [
    i32 4, label %.preheader2577.us.us.i.split.us
    i32 1, label %.preheader2577.us.us.i.split.us77
  ]

.preheader2577.us.us.i.split.us:                  ; preds = %.preheader2577.us.us.i, %..loopexit2572_crit_edge.us.us.us.i.us
  %indvars.iv3357.i.us = phi i64 [ %indvars.iv.next3358.i.us, %..loopexit2572_crit_edge.us.us.us.i.us ], [ 0, %.preheader2577.us.us.i ] ; 3 uses
  %.72671.us.us.us.i.us = phi <4 x float> [ %.102390.us.us.us.i.us, %..loopexit2572_crit_edge.us.us.us.i.us ], [ %.623872697.us.us.i, %.preheader2577.us.us.i ] ; 3 uses
  %.624052670.us.us.us.i.us = phi <4 x float> [ %.92408.us.us.us.i.us, %..loopexit2572_crit_edge.us.us.us.i.us ], [ %.524042696.us.us.i, %.preheader2577.us.us.i ] ; 3 uses
  %.624202669.us.us.us.i.us = phi <4 x float> [ %.92423.us.us.us.i.us, %..loopexit2572_crit_edge.us.us.us.i.us ], [ %.524192695.us.us.i, %.preheader2577.us.us.i ] ; 3 uses
  %.624302668.us.us.us.i.us = phi <4 x float> [ %.92433.us.us.us.i.us, %..loopexit2572_crit_edge.us.us.us.i.us ], [ %.524292694.us.us.i, %.preheader2577.us.us.i ] ; 3 uses
  %i.vu = trunc i64 %indvars.iv3357.i.us to i32
  %i.vv = mul i32 %i.un, %i.vu
  %.reass2679.us.us.us.i.us = add i32 %i.vv, %invariant.op2678.i ; 3 uses
  %i.vw = icmp slt i32 %.reass2679.us.us.us.i.us, 0
  br i1 %i.vw, label %..loopexit2572_crit_edge.us.us.us.i.us, label %bb.ae

bb.ae:                                            ; preds = %.preheader2577.us.us.i.split.us
  %i.vx = srem i32 %.reass2679.us.us.us.i.us, %i.up
  %i.vy = sdiv exact i32 %.reass2679.us.us.us.i.us, %i.up ; 2 uses
  %.not930.us.us.us.i.us = icmp eq i32 %i.vx, 0
  %.not931.us.us.us.i.us = icmp slt i32 %i.vy, %i.he
  %or.cond313 = select i1 %.not930.us.us.us.i.us, i1 %.not931.us.us.us.i.us, i1 false
  br i1 %or.cond313, label %.preheader2571.us.us.us.i.us, label %..loopexit2572_crit_edge.us.us.us.i.us

.preheader2571.us.us.us.i.us:                     ; preds = %bb.ae
  %i.vz = mul nuw nsw i64 %indvars.iv3357.i.us, %i.vn
  %i.wa = sext i32 %i.vy to i64
  br label %.lr.ph.split.us.us.us.us.i.us

.lr.ph.split.us.us.us.us.i.us:                    ; preds = %.preheader2571.us.us.us.i.us, %bb.ag
  %indvars.iv3352.i.us = phi i64 [ %indvars.iv.next3353.i.us, %bb.ag ], [ 0, %.preheader2571.us.us.us.i.us ] ; 3 uses
  %.823882636.us.us.us.us.i.us = phi <4 x float> [ %.92389.us.us.us.us.i.us, %bb.ag ], [ %.72671.us.us.us.i.us, %.preheader2571.us.us.us.i.us ] ; 3 uses
  %.724062635.us.us.us.us.i.us = phi <4 x float> [ %.82407.us.us.us.us.i.us, %bb.ag ], [ %.624052670.us.us.us.i.us, %.preheader2571.us.us.us.i.us ] ; 3 uses
  %.724212634.us.us.us.us.i.us = phi <4 x float> [ %.82422.us.us.us.us.i.us, %bb.ag ], [ %.624202669.us.us.us.i.us, %.preheader2571.us.us.us.i.us ] ; 3 uses
  %.724312633.us.us.us.us.i.us = phi <4 x float> [ %.82432.us.us.us.us.i.us, %bb.ag ], [ %.624302668.us.us.us.i.us, %.preheader2571.us.us.us.i.us ] ; 3 uses
  %i.wb = trunc i64 %indvars.iv3352.i.us to i32
  %i.wc = mul i32 %i.ur, %i.wb
  %.reass.us.us2680.us.us.i.us = add i32 %i.wc, %invariant.op2642.i ; 3 uses
  %i.wd = icmp slt i32 %.reass.us.us2680.us.us.i.us, 0
  br i1 %i.wd, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.lr.ph.split.us.us.us.us.i.us
  %i.we = srem i32 %.reass.us.us2680.us.us.i.us, %i.ut
  %i.wf = sdiv exact i32 %.reass.us.us2680.us.us.i.us, %i.ut ; 2 uses
  %.not932.us.us.us.us.i.us = icmp eq i32 %i.we, 0
  %.not933.us.us.us.us.i.us = icmp slt i32 %i.wf, %i.hd
  %or.cond314 = select i1 %.not932.us.us.us.us.i.us, i1 %.not933.us.us.us.us.i.us, i1 false
  br i1 %or.cond314, label %_ZN4ncnn3MatD2Ev.exit965.us.us.us.us.i.us, label %bb.ag

_ZN4ncnn3MatD2Ev.exit965.us.us.us.us.i.us:        ; preds = %bb.af
  %i.wg = add nuw nsw i64 %indvars.iv3352.i.us, %i.vz
  %i.wh = shl i64 %i.wg, 4
  %i.wi = and i64 %i.wh, 4294967280
  %i.wj = getelementptr inbounds nuw [2 x i8], ptr %.17522699.us.us.i, i64 %i.wi ; 4 uses
  %i.wk = load i32, ptr %i.o, align 4, !tbaa !54, !noalias !625
  %i.wl = load ptr, ptr %1, align 8, !tbaa !20, !noalias !625
  %i.wm = load i64, ptr %i.fk, align 8, !tbaa !21, !noalias !625
  %i.wn = mul i64 %i.wm, %i.vt
  %i.wo = load i64, ptr %i.fl, align 8, !tbaa !55, !noalias !625 ; 2 uses
  %i.wp = mul i64 %i.wn, %i.wo
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wl, i64 %i.wp
  %i.wr = sext i32 %i.wk to i64
  %i.ws = mul nsw i64 %i.wr, %i.wa
  %i.wt = mul i64 %i.ws, %i.wo
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wq, i64 %i.wt
  %i.wv = shl nsw i32 %i.wf, 2
  %i.ww = sext i32 %i.wv to i64
  %i.wx = getelementptr inbounds [2 x i8], ptr %i.wu, i64 %i.ww ; 4 uses
  %i.wy = load i16, ptr %i.wx, align 2, !tbaa !89
  %i.wz = zext i16 %i.wy to i32
  %i.xa = shl nuw i32 %i.wz, 16
  %i.xb = insertelement <4 x i32> poison, i32 %i.xa, i64 0
  %i.xc = bitcast <4 x i32> %i.xb to <4 x float>
  %i.xd = shufflevector <4 x float> %i.xc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xe = getelementptr inbounds nuw i8, ptr %i.wx, i64 2
  %i.xf = load i16, ptr %i.xe, align 2, !tbaa !89
  %i.xg = zext i16 %i.xf to i32
  %i.xh = shl nuw i32 %i.xg, 16
  %i.xi = insertelement <4 x i32> poison, i32 %i.xh, i64 0
  %i.xj = bitcast <4 x i32> %i.xi to <4 x float>
  %i.xk = shufflevector <4 x float> %i.xj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xl = getelementptr inbounds nuw i8, ptr %i.wx, i64 4
  %i.xm = load i16, ptr %i.xl, align 2, !tbaa !89
  %i.xn = zext i16 %i.xm to i32
  %i.xo = shl nuw i32 %i.xn, 16
  %i.xp = insertelement <4 x i32> poison, i32 %i.xo, i64 0
  %i.xq = bitcast <4 x i32> %i.xp to <4 x float>
  %i.xr = shufflevector <4 x float> %i.xq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xs = getelementptr inbounds nuw i8, ptr %i.wx, i64 6
  %i.xt = load i16, ptr %i.xs, align 2, !tbaa !89
  %i.xu = zext i16 %i.xt to i32
  %i.xv = shl nuw i32 %i.xu, 16
  %i.xw = insertelement <4 x i32> poison, i32 %i.xv, i64 0
  %i.xx = bitcast <4 x i32> %i.xw to <4 x float>
  %i.xy = shufflevector <4 x float> %i.xx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xz = load i64, ptr %i.wj, align 1, !tbaa !82
  %i.ya = insertelement <2 x i64> poison, i64 %i.xz, i64 0
  %i.yb = bitcast <2 x i64> %i.ya to <8 x i16>
  %i.yc = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.yb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.yd = bitcast <8 x i16> %i.yc to <4 x float>
  %i.ye = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.xd, <4 x float> nofpclass(nan inf) %i.yd, <4 x float> nofpclass(nan inf) %.823882636.us.us.us.us.i.us)
  %i.yf = getelementptr inbounds nuw i8, ptr %i.wj, i64 8
  %i.yg = load i64, ptr %i.yf, align 1, !tbaa !82
  %i.yh = insertelement <2 x i64> poison, i64 %i.yg, i64 0
  %i.yi = bitcast <2 x i64> %i.yh to <8 x i16>
  %i.yj = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.yi, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.yk = bitcast <8 x i16> %i.yj to <4 x float>
  %i.yl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.xk, <4 x float> nofpclass(nan inf) %i.yk, <4 x float> nofpclass(nan inf) %.724062635.us.us.us.us.i.us)
  %i.ym = getelementptr inbounds nuw i8, ptr %i.wj, i64 16
  %i.yn = load i64, ptr %i.ym, align 1, !tbaa !82
  %i.yo = insertelement <2 x i64> poison, i64 %i.yn, i64 0
  %i.yp = bitcast <2 x i64> %i.yo to <8 x i16>
  %i.yq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.yp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.yr = bitcast <8 x i16> %i.yq to <4 x float>
  %i.ys = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.xr, <4 x float> nofpclass(nan inf) %i.yr, <4 x float> nofpclass(nan inf) %.724212634.us.us.us.us.i.us)
  %i.yt = getelementptr inbounds nuw i8, ptr %i.wj, i64 24
  %i.yu = load i64, ptr %i.yt, align 1, !tbaa !82
  %i.yv = insertelement <2 x i64> poison, i64 %i.yu, i64 0
  %i.yw = bitcast <2 x i64> %i.yv to <8 x i16>
  %i.yx = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.yw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.yy = bitcast <8 x i16> %i.yx to <4 x float>
  %i.yz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.xy, <4 x float> nofpclass(nan inf) %i.yy, <4 x float> nofpclass(nan inf) %.724312633.us.us.us.us.i.us)
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit965.us.us.us.us.i.us, %bb.af, %.lr.ph.split.us.us.us.us.i.us
  %.82432.us.us.us.us.i.us = phi nsz <4 x float> [ %.724312633.us.us.us.us.i.us, %.lr.ph.split.us.us.us.us.i.us ], [ %.724312633.us.us.us.us.i.us, %bb.af ], [ %i.yz, %_ZN4ncnn3MatD2Ev.exit965.us.us.us.us.i.us ] ; 2 uses
  %.82422.us.us.us.us.i.us = phi nsz <4 x float> [ %.724212634.us.us.us.us.i.us, %.lr.ph.split.us.us.us.us.i.us ], [ %.724212634.us.us.us.us.i.us, %bb.af ], [ %i.ys, %_ZN4ncnn3MatD2Ev.exit965.us.us.us.us.i.us ] ; 2 uses
  %.82407.us.us.us.us.i.us = phi nsz <4 x float> [ %.724062635.us.us.us.us.i.us, %.lr.ph.split.us.us.us.us.i.us ], [ %.724062635.us.us.us.us.i.us, %bb.af ], [ %i.yl, %_ZN4ncnn3MatD2Ev.exit965.us.us.us.us.i.us ] ; 2 uses
  %.92389.us.us.us.us.i.us = phi nsz <4 x float> [ %.823882636.us.us.us.us.i.us, %.lr.ph.split.us.us.us.us.i.us ], [ %.823882636.us.us.us.us.i.us, %bb.af ], [ %i.ye, %_ZN4ncnn3MatD2Ev.exit965.us.us.us.us.i.us ] ; 2 uses
  %indvars.iv.next3353.i.us = add nuw nsw i64 %indvars.iv3352.i.us, 1 ; 2 uses
  %exitcond3356.not.i.us = icmp eq i64 %indvars.iv.next3353.i.us, %i.vn
  br i1 %exitcond3356.not.i.us, label %..loopexit2572_crit_edge.us.us.us.i.us, label %.lr.ph.split.us.us.us.us.i.us, !llvm.loop !540

..loopexit2572_crit_edge.us.us.us.i.us:           ; preds = %bb.ag, %bb.ae, %.preheader2577.us.us.i.split.us
  %.92433.us.us.us.i.us = phi nsz <4 x float> [ %.624302668.us.us.us.i.us, %.preheader2577.us.us.i.split.us ], [ %.624302668.us.us.us.i.us, %bb.ae ], [ %.82432.us.us.us.us.i.us, %bb.ag ] ; 2 uses
  %.92423.us.us.us.i.us = phi nsz <4 x float> [ %.624202669.us.us.us.i.us, %.preheader2577.us.us.i.split.us ], [ %.624202669.us.us.us.i.us, %bb.ae ], [ %.82422.us.us.us.us.i.us, %bb.ag ] ; 2 uses
  %.92408.us.us.us.i.us = phi nsz <4 x float> [ %.624052670.us.us.us.i.us, %.preheader2577.us.us.i.split.us ], [ %.624052670.us.us.us.i.us, %bb.ae ], [ %.82407.us.us.us.us.i.us, %bb.ag ] ; 2 uses
  %.102390.us.us.us.i.us = phi nsz <4 x float> [ %.72671.us.us.us.i.us, %.preheader2577.us.us.i.split.us ], [ %.72671.us.us.us.i.us, %bb.ae ], [ %.92389.us.us.us.us.i.us, %bb.ag ] ; 2 uses
  %indvars.iv.next3358.i.us = add nuw nsw i64 %indvars.iv3357.i.us, 1 ; 2 uses
  %exitcond3361.not.i.us = icmp eq i64 %indvars.iv.next3358.i.us, %wide.trip.count3339.i
  br i1 %exitcond3361.not.i.us, label %._crit_edge.split.us.us2714.us.i, label %.preheader2577.us.us.i.split.us, !llvm.loop !541

.preheader2577.us.us.i.split.us77:                ; preds = %.preheader2577.us.us.i, %..loopexit2572_crit_edge.us.us.us.i.us87
  %indvars.iv3357.i.us78 = phi i64 [ %indvars.iv.next3358.i.us92, %..loopexit2572_crit_edge.us.us.us.i.us87 ], [ 0, %.preheader2577.us.us.i ] ; 3 uses
  %.72671.us.us.us.i.us79 = phi <4 x float> [ %.102390.us.us.us.i.us91, %..loopexit2572_crit_edge.us.us.us.i.us87 ], [ %.623872697.us.us.i, %.preheader2577.us.us.i ] ; 3 uses
  %.624052670.us.us.us.i.us80 = phi <4 x float> [ %.92408.us.us.us.i.us90, %..loopexit2572_crit_edge.us.us.us.i.us87 ], [ %.524042696.us.us.i, %.preheader2577.us.us.i ] ; 3 uses
  %.624202669.us.us.us.i.us81 = phi <4 x float> [ %.92423.us.us.us.i.us89, %..loopexit2572_crit_edge.us.us.us.i.us87 ], [ %.524192695.us.us.i, %.preheader2577.us.us.i ] ; 3 uses
  %.624302668.us.us.us.i.us82 = phi <4 x float> [ %.92433.us.us.us.i.us88, %..loopexit2572_crit_edge.us.us.us.i.us87 ], [ %.524292694.us.us.i, %.preheader2577.us.us.i ] ; 3 uses
  %i.za = trunc i64 %indvars.iv3357.i.us78 to i32
  %i.zb = mul i32 %i.un, %i.za
  %.reass2679.us.us.us.i.us83 = add i32 %i.zb, %invariant.op2678.i ; 3 uses
  %i.zc = icmp slt i32 %.reass2679.us.us.us.i.us83, 0
  br i1 %i.zc, label %..loopexit2572_crit_edge.us.us.us.i.us87, label %bb.ah

bb.ah:                                            ; preds = %.preheader2577.us.us.i.split.us77
  %i.zd = srem i32 %.reass2679.us.us.us.i.us83, %i.up
  %i.ze = sdiv exact i32 %.reass2679.us.us.us.i.us83, %i.up ; 2 uses
  %.not930.us.us.us.i.us84 = icmp eq i32 %i.zd, 0
  %.not931.us.us.us.i.us85 = icmp slt i32 %i.ze, %i.he
  %or.cond315 = select i1 %.not930.us.us.us.i.us84, i1 %.not931.us.us.us.i.us85, i1 false
  br i1 %or.cond315, label %.preheader2571.us.us.us.i.us86, label %..loopexit2572_crit_edge.us.us.us.i.us87

.preheader2571.us.us.us.i.us86:                   ; preds = %bb.ah
  %i.zf = mul nuw nsw i64 %indvars.iv3357.i.us78, %i.vn
  %i.zg = sext i32 %i.ze to i64
  br label %.lr.ph.split.us2646.us.us.us.i.us

.lr.ph.split.us2646.us.us.us.i.us:                ; preds = %.preheader2571.us.us.us.i.us86, %bb.aj
  %indvars.iv3347.i.us = phi i64 [ %indvars.iv.next3348.i.us, %bb.aj ], [ 0, %.preheader2571.us.us.us.i.us86 ] ; 3 uses
  %.823882636.us2648.us.us.us.i.us = phi <4 x float> [ %.92389.us2658.us.us.us.i.us, %bb.aj ], [ %.72671.us.us.us.i.us79, %.preheader2571.us.us.us.i.us86 ] ; 3 uses
  %.724062635.us2649.us.us.us.i.us = phi <4 x float> [ %.82407.us2657.us.us.us.i.us, %bb.aj ], [ %.624052670.us.us.us.i.us80, %.preheader2571.us.us.us.i.us86 ] ; 3 uses
  %.724212634.us2650.us.us.us.i.us = phi <4 x float> [ %.82422.us2656.us.us.us.i.us, %bb.aj ], [ %.624202669.us.us.us.i.us81, %.preheader2571.us.us.us.i.us86 ] ; 3 uses
  %.724312633.us2651.us.us.us.i.us = phi <4 x float> [ %.82432.us2655.us.us.us.i.us, %bb.aj ], [ %.624302668.us.us.us.i.us82, %.preheader2571.us.us.us.i.us86 ] ; 3 uses
  %i.zh = trunc i64 %indvars.iv3347.i.us to i32
  %i.zi = mul i32 %i.ur, %i.zh
  %.reass.us2652.us.us.us.i.us = add i32 %i.zi, %invariant.op2642.i ; 3 uses
  %i.zj = icmp slt i32 %.reass.us2652.us.us.us.i.us, 0
  br i1 %i.zj, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.split.us2646.us.us.us.i.us
  %i.zk = srem i32 %.reass.us2652.us.us.us.i.us, %i.ut
  %i.zl = sdiv exact i32 %.reass.us2652.us.us.us.i.us, %i.ut ; 2 uses
  %.not932.us2653.us.us.us.i.us = icmp eq i32 %i.zk, 0
  %.not933.us2654.us.us.us.i.us = icmp slt i32 %i.zl, %i.hd
  %or.cond316 = select i1 %.not932.us2653.us.us.us.i.us, i1 %.not933.us2654.us.us.us.i.us, i1 false
  br i1 %or.cond316, label %_ZN4ncnn3MatD2Ev.exit964.us.us.us.us.i.us, label %bb.aj

_ZN4ncnn3MatD2Ev.exit964.us.us.us.us.i.us:        ; preds = %bb.ai
  %i.zm = add nuw nsw i64 %indvars.iv3347.i.us, %i.zf
  %i.zn = shl i64 %i.zm, 4
  %i.zo = and i64 %i.zn, 4294967280
  %i.zp = getelementptr inbounds nuw [2 x i8], ptr %.17522699.us.us.i, i64 %i.zo ; 4 uses
  %i.zq = load i32, ptr %i.o, align 4, !tbaa !54, !noalias !626
  %i.zr = load ptr, ptr %1, align 8, !tbaa !20, !noalias !626 ; 4 uses
  %i.zs = load i64, ptr %i.fk, align 8, !tbaa !21, !noalias !626
  %i.zt = load i64, ptr %i.fl, align 8, !tbaa !55, !noalias !626 ; 2 uses
  %i.zu = mul i64 %i.zt, %i.zs                    ; 4 uses
  %i.zv = mul i64 %i.zu, %indvars.iv3362.i
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zr, i64 %i.zv
  %i.zx = sext i32 %i.zq to i64
  %i.zy = mul nsw i64 %i.zx, %i.zg
  %i.zz = mul i64 %i.zy, %i.zt                    ; 4 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zw, i64 %i.zz
  %i.aab = sext i32 %i.zl to i64                  ; 4 uses
  %i.aac = getelementptr inbounds [2 x i8], ptr %i.aaa, i64 %i.aab
  %i.aad = load i16, ptr %i.aac, align 2, !tbaa !89
  %i.aae = zext i16 %i.aad to i32
  %i.aaf = shl nuw i32 %i.aae, 16
  %i.aag = insertelement <4 x i32> poison, i32 %i.aaf, i64 0
  %i.aah = bitcast <4 x i32> %i.aag to <4 x float>
  %i.aai = shufflevector <4 x float> %i.aah, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aaj = mul i64 %i.zu, %i.vr
  %i.aak = getelementptr inbounds nuw i8, ptr %i.zr, i64 %i.aaj
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 %i.zz
  %i.aam = getelementptr inbounds [2 x i8], ptr %i.aal, i64 %i.aab
  %i.aan = load i16, ptr %i.aam, align 2, !tbaa !89
  %i.aao = zext i16 %i.aan to i32
  %i.aap = shl nuw i32 %i.aao, 16
  %i.aaq = insertelement <4 x i32> poison, i32 %i.aap, i64 0
  %i.aar = bitcast <4 x i32> %i.aaq to <4 x float>
  %i.aas = shufflevector <4 x float> %i.aar, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aat = mul i64 %i.zu, %i.vs
  %i.aau = getelementptr inbounds nuw i8, ptr %i.zr, i64 %i.aat
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aau, i64 %i.zz
  %i.aaw = getelementptr inbounds [2 x i8], ptr %i.aav, i64 %i.aab
  %i.aax = load i16, ptr %i.aaw, align 2, !tbaa !89
  %i.aay = zext i16 %i.aax to i32
  %i.aaz = shl nuw i32 %i.aay, 16
  %i.aba = insertelement <4 x i32> poison, i32 %i.aaz, i64 0
  %i.abb = bitcast <4 x i32> %i.aba to <4 x float>
  %i.abc = shufflevector <4 x float> %i.abb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.abd = mul i64 %i.zu, %i.vq
  %i.abe = getelementptr inbounds nuw i8, ptr %i.zr, i64 %i.abd
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abe, i64 %i.zz
  %i.abg = getelementptr inbounds [2 x i8], ptr %i.abf, i64 %i.aab
  %i.abh = load i16, ptr %i.abg, align 2, !tbaa !89
  %i.abi = zext i16 %i.abh to i32
  %i.abj = shl nuw i32 %i.abi, 16
  %i.abk = insertelement <4 x i32> poison, i32 %i.abj, i64 0
  %i.abl = bitcast <4 x i32> %i.abk to <4 x float>
  %i.abm = shufflevector <4 x float> %i.abl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.abn = load i64, ptr %i.zp, align 1, !tbaa !82
  %i.abo = insertelement <2 x i64> poison, i64 %i.abn, i64 0
  %i.abp = bitcast <2 x i64> %i.abo to <8 x i16>
  %i.abq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.abp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.abr = bitcast <8 x i16> %i.abq to <4 x float>
  %i.abs = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aai, <4 x float> nofpclass(nan inf) %i.abr, <4 x float> nofpclass(nan inf) %.823882636.us2648.us.us.us.i.us)
  %i.abt = getelementptr inbounds nuw i8, ptr %i.zp, i64 8
  %i.abu = load i64, ptr %i.abt, align 1, !tbaa !82
  %i.abv = insertelement <2 x i64> poison, i64 %i.abu, i64 0
  %i.abw = bitcast <2 x i64> %i.abv to <8 x i16>
  %i.abx = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.abw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aby = bitcast <8 x i16> %i.abx to <4 x float>
  %i.abz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aas, <4 x float> nofpclass(nan inf) %i.aby, <4 x float> nofpclass(nan inf) %.724062635.us2649.us.us.us.i.us)
  %i.aca = getelementptr inbounds nuw i8, ptr %i.zp, i64 16
  %i.acb = load i64, ptr %i.aca, align 1, !tbaa !82
  %i.acc = insertelement <2 x i64> poison, i64 %i.acb, i64 0
  %i.acd = bitcast <2 x i64> %i.acc to <8 x i16>
  %i.ace = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.acd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.acf = bitcast <8 x i16> %i.ace to <4 x float>
  %i.acg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.abc, <4 x float> nofpclass(nan inf) %i.acf, <4 x float> nofpclass(nan inf) %.724212634.us2650.us.us.us.i.us)
  %i.ach = getelementptr inbounds nuw i8, ptr %i.zp, i64 24
  %i.aci = load i64, ptr %i.ach, align 1, !tbaa !82
  %i.acj = insertelement <2 x i64> poison, i64 %i.aci, i64 0
  %i.ack = bitcast <2 x i64> %i.acj to <8 x i16>
  %i.acl = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ack, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.acm = bitcast <8 x i16> %i.acl to <4 x float>
  %i.acn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.abm, <4 x float> nofpclass(nan inf) %i.acm, <4 x float> nofpclass(nan inf) %.724312633.us2651.us.us.us.i.us)
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit964.us.us.us.us.i.us, %bb.ai, %.lr.ph.split.us2646.us.us.us.i.us
  %.82432.us2655.us.us.us.i.us = phi nsz <4 x float> [ %.724312633.us2651.us.us.us.i.us, %.lr.ph.split.us2646.us.us.us.i.us ], [ %i.acn, %_ZN4ncnn3MatD2Ev.exit964.us.us.us.us.i.us ], [ %.724312633.us2651.us.us.us.i.us, %bb.ai ] ; 2 uses
  %.82422.us2656.us.us.us.i.us = phi nsz <4 x float> [ %.724212634.us2650.us.us.us.i.us, %.lr.ph.split.us2646.us.us.us.i.us ], [ %i.acg, %_ZN4ncnn3MatD2Ev.exit964.us.us.us.us.i.us ], [ %.724212634.us2650.us.us.us.i.us, %bb.ai ] ; 2 uses
  %.82407.us2657.us.us.us.i.us = phi nsz <4 x float> [ %.724062635.us2649.us.us.us.i.us, %.lr.ph.split.us2646.us.us.us.i.us ], [ %i.abz, %_ZN4ncnn3MatD2Ev.exit964.us.us.us.us.i.us ], [ %.724062635.us2649.us.us.us.i.us, %bb.ai ] ; 2 uses
  %.92389.us2658.us.us.us.i.us = phi nsz <4 x float> [ %.823882636.us2648.us.us.us.i.us, %.lr.ph.split.us2646.us.us.us.i.us ], [ %i.abs, %_ZN4ncnn3MatD2Ev.exit964.us.us.us.us.i.us ], [ %.823882636.us2648.us.us.us.i.us, %bb.ai ] ; 2 uses
  %indvars.iv.next3348.i.us = add nuw nsw i64 %indvars.iv3347.i.us, 1 ; 2 uses
  %exitcond3351.not.i.us = icmp eq i64 %indvars.iv.next3348.i.us, %i.vn
  br i1 %exitcond3351.not.i.us, label %..loopexit2572_crit_edge.us.us.us.i.us87, label %.lr.ph.split.us2646.us.us.us.i.us, !llvm.loop !540

..loopexit2572_crit_edge.us.us.us.i.us87:         ; preds = %bb.aj, %bb.ah, %.preheader2577.us.us.i.split.us77
  %.92433.us.us.us.i.us88 = phi nsz <4 x float> [ %.624302668.us.us.us.i.us82, %.preheader2577.us.us.i.split.us77 ], [ %.624302668.us.us.us.i.us82, %bb.ah ], [ %.82432.us2655.us.us.us.i.us, %bb.aj ] ; 2 uses
  %.92423.us.us.us.i.us89 = phi nsz <4 x float> [ %.624202669.us.us.us.i.us81, %.preheader2577.us.us.i.split.us77 ], [ %.624202669.us.us.us.i.us81, %bb.ah ], [ %.82422.us2656.us.us.us.i.us, %bb.aj ] ; 2 uses
  %.92408.us.us.us.i.us90 = phi nsz <4 x float> [ %.624052670.us.us.us.i.us80, %.preheader2577.us.us.i.split.us77 ], [ %.624052670.us.us.us.i.us80, %bb.ah ], [ %.82407.us2657.us.us.us.i.us, %bb.aj ] ; 2 uses
  %.102390.us.us.us.i.us91 = phi nsz <4 x float> [ %.72671.us.us.us.i.us79, %.preheader2577.us.us.i.split.us77 ], [ %.72671.us.us.us.i.us79, %bb.ah ], [ %.92389.us2658.us.us.us.i.us, %bb.aj ] ; 2 uses
  %indvars.iv.next3358.i.us92 = add nuw nsw i64 %indvars.iv3357.i.us78, 1 ; 2 uses
  %exitcond3361.not.i.us93 = icmp eq i64 %indvars.iv.next3358.i.us92, %wide.trip.count3339.i
  br i1 %exitcond3361.not.i.us93, label %._crit_edge.split.us.us2714.us.i, label %.preheader2577.us.us.i.split.us77, !llvm.loop !541

._crit_edge.split.us.us2714.us.i:                 ; preds = %..loopexit2572_crit_edge.us.us.us.i.us87, %..loopexit2572_crit_edge.us.us.us.i.us, %.preheader2577.us.us.i
  %.us-phi = phi <4 x float> [ %.92433.us.us.us.i.us, %..loopexit2572_crit_edge.us.us.us.i.us ], [ %.524292694.us.us.i, %.preheader2577.us.us.i ], [ %.92433.us.us.us.i.us88, %..loopexit2572_crit_edge.us.us.us.i.us87 ] ; 2 uses
  %.us-phi74 = phi <4 x float> [ %.92423.us.us.us.i.us, %..loopexit2572_crit_edge.us.us.us.i.us ], [ %.524192695.us.us.i, %.preheader2577.us.us.i ], [ %.92423.us.us.us.i.us89, %..loopexit2572_crit_edge.us.us.us.i.us87 ] ; 2 uses
  %.us-phi75 = phi <4 x float> [ %.92408.us.us.us.i.us, %..loopexit2572_crit_edge.us.us.us.i.us ], [ %.524042696.us.us.i, %.preheader2577.us.us.i ], [ %.92408.us.us.us.i.us90, %..loopexit2572_crit_edge.us.us.us.i.us87 ] ; 2 uses
  %.us-phi76 = phi <4 x float> [ %.102390.us.us.us.i.us, %..loopexit2572_crit_edge.us.us.us.i.us ], [ %.623872697.us.us.i, %.preheader2577.us.us.i ], [ %.102390.us.us.us.i.us91, %..loopexit2572_crit_edge.us.us.us.i.us87 ] ; 2 uses
  %i.aco = getelementptr inbounds [2 x i8], ptr %.17522699.us.us.i, i64 %i.ip ; 2 uses
  %indvars.iv.next3363.i = add nuw nsw i64 %indvars.iv3362.i, 4 ; 3 uses
  %i.acp = or disjoint i64 %indvars.iv.next3363.i, 3 ; 2 uses
  %i.acq = trunc nuw i64 %i.acp to i32
  %i.acr = icmp sgt i32 %i.hc, %i.acq
  br i1 %i.acr, label %.preheader2577.us.us.i, label %.preheader2580.loopexit.i, !llvm.loop !544

.preheader2580.loopexit.i:                        ; preds = %._crit_edge.split.us.us2714.us.i
  %i.acs = trunc nuw i64 %indvars.iv.next3363.i to i32
  br label %.preheader2580.i

.preheader2580.i:                                 ; preds = %.preheader2580.loopexit.i, %.preheader2577.us.preheader.i, %.preheader2577.preheader.i, %.preheader2581.i
  %.52429.lcssa.i = phi <4 x float> [ %.02424.lcssa.i, %.preheader2581.i ], [ %.us-phi, %.preheader2580.loopexit.i ], [ %.02424.lcssa.i, %.preheader2577.us.preheader.i ], [ %.02424.lcssa.i, %.preheader2577.preheader.i ]
  %.52419.lcssa.i = phi <4 x float> [ %.02414.lcssa.i, %.preheader2581.i ], [ %.us-phi74, %.preheader2580.loopexit.i ], [ %.02414.lcssa.i, %.preheader2577.us.preheader.i ], [ %.02414.lcssa.i, %.preheader2577.preheader.i ]
  %.52404.lcssa.i = phi <4 x float> [ %.02399.lcssa.i, %.preheader2581.i ], [ %.us-phi75, %.preheader2580.loopexit.i ], [ %.02399.lcssa.i, %.preheader2577.us.preheader.i ], [ %.02399.lcssa.i, %.preheader2577.preheader.i ] ; 4 uses
  %.62387.lcssa.i = phi <4 x float> [ %.12383.lcssa.i, %.preheader2581.i ], [ %.us-phi76, %.preheader2580.loopexit.i ], [ %.12383.lcssa.i, %.preheader2577.us.preheader.i ], [ %.12383.lcssa.i, %.preheader2577.preheader.i ] ; 4 uses
  %.1757.lcssa.i = phi i32 [ %.0756.lcssa.i, %.preheader2581.i ], [ %i.acs, %.preheader2580.loopexit.i ], [ %i.vm, %.preheader2577.us.preheader.i ], [ %i.vc, %.preheader2577.preheader.i ] ; 9 uses
  %.1752.lcssa.i = phi ptr [ %.0751.lcssa.i, %.preheader2581.i ], [ %i.aco, %.preheader2580.loopexit.i ], [ %scevgep3346.i, %.preheader2577.us.preheader.i ], [ %scevgep3344.i, %.preheader2577.preheader.i ] ; 4 uses
  %i.act = or disjoint i32 %.1757.lcssa.i, 1      ; 2 uses
  %i.acu = icmp slt i32 %i.act, %i.hc
  br i1 %i.acu, label %.preheader2576.lr.ph.i, label %.preheader2579.i

.preheader2576.lr.ph.i:                           ; preds = %.preheader2580.i
  %i.acv = load i32, ptr %i.d, align 4
  %i.acw = load i32, ptr %i.j, align 4
  %invariant.op2739.i = sub i32 %.neg2536.i, %i.acw
  %i.acx = load i32, ptr %i.f, align 4            ; 2 uses
  %i.acy = load i32, ptr %i.a, align 4
  %.fr3236.i = freeze i32 %i.acy                  ; 2 uses
  %i.acz = load i32, ptr %i.c, align 4
  %i.ada = load i32, ptr %i.i, align 4
  %.neg2530.i = add nuw nsw i32 %.07482801.i, 1
  %invariant.op2732.i = sub i32 %.neg2530.i, %i.ada
  %i.adb = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.ik, label %.preheader2576.lr.ph.split.us.i, label %.preheader2576.preheader.i

.preheader2576.preheader.i:                       ; preds = %.preheader2576.lr.ph.i
  %i.adc = add i32 %.1757.lcssa.i, 3
  %smax3365.i = call i32 @llvm.smax.i32(i32 %i.hc, i32 %i.adc)
  %reass.sub136 = sub i32 %smax3365.i, %.1757.lcssa.i
  %i.add = and i32 %reass.sub136, -2              ; 2 uses
  %i.ade = add i32 %i.add, -2
  %i.adf = zext i32 %i.ade to i64
  %i.adg = add nuw nsw i64 %i.adf, 2
  %i.adh = mul nsw i64 %i.adg, %i.ir
  %scevgep3366.i = getelementptr i8, ptr %.1752.lcssa.i, i64 %i.adh
  %i.adi = add i32 %.1757.lcssa.i, %i.add
  br label %.preheader2579.i

.preheader2576.lr.ph.split.us.i:                  ; preds = %.preheader2576.lr.ph.i
  %i.adj = icmp sgt i32 %.fr3236.i, 0
  br i1 %i.adj, label %.preheader2576.us.us.preheader.i, label %.preheader2576.us.preheader.i

.preheader2576.us.preheader.i:                    ; preds = %.preheader2576.lr.ph.split.us.i
  %i.adk = add i32 %.1757.lcssa.i, 3
  %smax3367.i = call i32 @llvm.smax.i32(i32 %i.hc, i32 %i.adk)
  %reass.sub137 = sub i32 %smax3367.i, %.1757.lcssa.i
  %i.adl = and i32 %reass.sub137, -2              ; 2 uses
  %i.adm = add i32 %i.adl, -2
  %i.adn = zext i32 %i.adm to i64
  %i.ado = add nuw nsw i64 %i.adn, 2
  %i.adp = mul nsw i64 %i.ado, %i.ir
  %scevgep3368.i = getelementptr i8, ptr %.1752.lcssa.i, i64 %i.adp
  %i.adq = add i32 %.1757.lcssa.i, %i.adl
  br label %.preheader2579.i

.preheader2576.us.us.preheader.i:                 ; preds = %.preheader2576.lr.ph.split.us.i
  %i.adr = zext nneg i32 %.fr3236.i to i64        ; 2 uses
  %i.ads = zext i32 %.1757.lcssa.i to i64
  %i.adt = zext nneg i32 %i.act to i64
  br label %.preheader2576.us.us.i

.preheader2576.us.us.i:                           ; preds = %._crit_edge.split.us.us2761.us.i, %.preheader2576.us.us.preheader.i
  %indvars.iv3379.i = phi i64 [ %i.ads, %.preheader2576.us.us.preheader.i ], [ %indvars.iv.next3380.i, %._crit_edge.split.us.us2761.us.i ] ; 2 uses
  %i.adu = phi i64 [ %i.adt, %.preheader2576.us.us.preheader.i ], [ %i.agc, %._crit_edge.split.us.us2761.us.i ]
  %.27532747.us.us.i = phi ptr [ %.1752.lcssa.i, %.preheader2576.us.us.preheader.i ], [ %i.agb, %._crit_edge.split.us.us2761.us.i ] ; 2 uses
  %.1123912745.us.us.i = phi <4 x float> [ %.62387.lcssa.i, %.preheader2576.us.us.preheader.i ], [ %.152393.us.us.us.i, %._crit_edge.split.us.us2761.us.i ]
  %.1024092744.us.us.i = phi <4 x float> [ %.52404.lcssa.i, %.preheader2576.us.us.preheader.i ], [ %.142413.us.us.us.i, %._crit_edge.split.us.us2761.us.i ]
  br label %bb.ak

bb.ak:                                            ; preds = %..loopexit2570_crit_edge.us.us.us.i, %.preheader2576.us.us.i
  %indvars.iv3374.i = phi i64 [ %indvars.iv.next3375.i, %..loopexit2570_crit_edge.us.us.us.i ], [ 0, %.preheader2576.us.us.i ] ; 3 uses
  %.122734.us.us.us.i = phi <4 x float> [ %.152393.us.us.us.i, %..loopexit2570_crit_edge.us.us.us.i ], [ %.1123912745.us.us.i, %.preheader2576.us.us.i ] ; 3 uses
  %.1124102733.us.us.us.i = phi <4 x float> [ %.142413.us.us.us.i, %..loopexit2570_crit_edge.us.us.us.i ], [ %.1024092744.us.us.i, %.preheader2576.us.us.i ] ; 3 uses
  %i.adv = trunc i64 %indvars.iv3374.i to i32
  %i.adw = mul i32 %i.acv, %i.adv
  %.reass2740.us.us.us.i = add i32 %i.adw, %invariant.op2739.i ; 3 uses
  %i.adx = icmp slt i32 %.reass2740.us.us.us.i, 0
  br i1 %i.adx, label %..loopexit2570_crit_edge.us.us.us.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ady = srem i32 %.reass2740.us.us.us.i, %i.acx
  %i.adz = sdiv exact i32 %.reass2740.us.us.us.i, %i.acx ; 2 uses
  %.not926.us.us.us.i = icmp eq i32 %i.ady, 0
  %.not927.us.us.us.i = icmp slt i32 %i.adz, %i.he
  %or.cond317 = select i1 %.not926.us.us.us.i, i1 %.not927.us.us.us.i, i1 false
  br i1 %or.cond317, label %.preheader2569.us.us.us.i, label %..loopexit2570_crit_edge.us.us.us.i

.preheader2569.us.us.us.i:                        ; preds = %bb.al
  %i.aea = mul nuw nsw i64 %indvars.iv3374.i, %i.adr
  %i.aeb = sext i32 %i.adz to i64
  br label %bb.am

bb.am:                                            ; preds = %bb.ao, %.preheader2569.us.us.us.i
  %indvars.iv3369.i = phi i64 [ %indvars.iv.next3370.i, %bb.ao ], [ 0, %.preheader2569.us.us.us.i ] ; 3 uses
  %.1323922728.us.us.us.i = phi <4 x float> [ %.14.us.us.us.i, %bb.ao ], [ %.122734.us.us.us.i, %.preheader2569.us.us.us.i ] ; 3 uses
  %.1224112727.us.us.us.i = phi <4 x float> [ %.132412.us.us.us.i, %bb.ao ], [ %.1124102733.us.us.us.i, %.preheader2569.us.us.us.i ] ; 3 uses
  %i.aec = trunc i64 %indvars.iv3369.i to i32
  %i.aed = mul i32 %i.acz, %i.aec
  %.reass.us.us2760.us.i = add i32 %invariant.op2732.i, %i.aed ; 3 uses
  %i.aee = icmp slt i32 %.reass.us.us2760.us.i, 0
  br i1 %i.aee, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.aef = srem i32 %.reass.us.us2760.us.i, %i.adb
  %i.aeg = sdiv exact i32 %.reass.us.us2760.us.i, %i.adb ; 2 uses
  %.not928.us.us.us.i = icmp eq i32 %i.aef, 0
  %.not929.us.us.us.i = icmp slt i32 %i.aeg, %i.hd
  %or.cond318 = select i1 %.not928.us.us.us.i, i1 %.not929.us.us.us.i, i1 false
  br i1 %or.cond318, label %_ZN4ncnn3MatD2Ev.exit960.us.us.us.i, label %bb.ao

_ZN4ncnn3MatD2Ev.exit960.us.us.us.i:              ; preds = %bb.an
  %i.aeh = add nuw nsw i64 %indvars.iv3369.i, %i.aea
  %i.aei = shl i64 %i.aeh, 3
  %i.aej = and i64 %i.aei, 4294967288
  %i.aek = getelementptr inbounds nuw [2 x i8], ptr %.27532747.us.us.i, i64 %i.aej ; 2 uses
  %i.ael = load i32, ptr %i.o, align 4, !tbaa !54, !noalias !627
  %i.aem = load ptr, ptr %1, align 8, !tbaa !20, !noalias !627 ; 2 uses
  %i.aen = load i64, ptr %i.fk, align 8, !tbaa !21, !noalias !627
  %i.aeo = load i64, ptr %i.fl, align 8, !tbaa !55, !noalias !627 ; 2 uses
  %i.aep = mul i64 %i.aeo, %i.aen                 ; 2 uses
  %i.aeq = mul i64 %i.aep, %indvars.iv3379.i
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aem, i64 %i.aeq
  %i.aes = sext i32 %i.ael to i64
  %i.aet = mul nsw i64 %i.aes, %i.aeb
  %i.aeu = mul i64 %i.aet, %i.aeo                 ; 2 uses
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aer, i64 %i.aeu
  %i.aew = sext i32 %i.aeg to i64                 ; 2 uses
  %i.aex = getelementptr inbounds [2 x i8], ptr %i.aev, i64 %i.aew
  %i.aey = mul i64 %i.aep, %i.adu
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aem, i64 %i.aey
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aez, i64 %i.aeu
  %i.afb = getelementptr inbounds [2 x i8], ptr %i.afa, i64 %i.aew
  %i.afc = load i16, ptr %i.aex, align 2, !tbaa !89
  %i.afd = zext i16 %i.afc to i32
  %i.afe = shl nuw i32 %i.afd, 16
  %i.aff = insertelement <4 x i32> poison, i32 %i.afe, i64 0
  %i.afg = bitcast <4 x i32> %i.aff to <4 x float>
  %i.afh = shufflevector <4 x float> %i.afg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.afi = load i16, ptr %i.afb, align 2, !tbaa !89
  %i.afj = zext i16 %i.afi to i32
  %i.afk = shl nuw i32 %i.afj, 16
  %i.afl = insertelement <4 x i32> poison, i32 %i.afk, i64 0
  %i.afm = bitcast <4 x i32> %i.afl to <4 x float>
  %i.afn = shufflevector <4 x float> %i.afm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.afo = load i64, ptr %i.aek, align 1, !tbaa !82
  %i.afp = insertelement <2 x i64> poison, i64 %i.afo, i64 0
  %i.afq = bitcast <2 x i64> %i.afp to <8 x i16>
  %i.afr = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.afq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.afs = bitcast <8 x i16> %i.afr to <4 x float>
  %i.aft = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.afh, <4 x float> nofpclass(nan inf) %i.afs, <4 x float> nofpclass(nan inf) %.1323922728.us.us.us.i)
  %i.afu = getelementptr inbounds nuw i8, ptr %i.aek, i64 8
  %i.afv = load i64, ptr %i.afu, align 1, !tbaa !82
  %i.afw = insertelement <2 x i64> poison, i64 %i.afv, i64 0
  %i.afx = bitcast <2 x i64> %i.afw to <8 x i16>
  %i.afy = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.afx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.afz = bitcast <8 x i16> %i.afy to <4 x float>
  %i.aga = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.afn, <4 x float> nofpclass(nan inf) %i.afz, <4 x float> nofpclass(nan inf) %.1224112727.us.us.us.i)
  br label %bb.ao

bb.ao:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit960.us.us.us.i, %bb.an, %bb.am
  %.132412.us.us.us.i = phi nsz <4 x float> [ %.1224112727.us.us.us.i, %bb.am ], [ %i.aga, %_ZN4ncnn3MatD2Ev.exit960.us.us.us.i ], [ %.1224112727.us.us.us.i, %bb.an ] ; 2 uses
  %.14.us.us.us.i = phi nsz <4 x float> [ %.1323922728.us.us.us.i, %bb.am ], [ %i.aft, %_ZN4ncnn3MatD2Ev.exit960.us.us.us.i ], [ %.1323922728.us.us.us.i, %bb.an ] ; 2 uses
  %indvars.iv.next3370.i = add nuw nsw i64 %indvars.iv3369.i, 1 ; 2 uses
  %exitcond3373.not.i = icmp eq i64 %indvars.iv.next3370.i, %i.adr
  br i1 %exitcond3373.not.i, label %..loopexit2570_crit_edge.us.us.us.i, label %bb.am, !llvm.loop !547

..loopexit2570_crit_edge.us.us.us.i:              ; preds = %bb.ao, %bb.al, %bb.ak
  %.142413.us.us.us.i = phi nsz <4 x float> [ %.1124102733.us.us.us.i, %bb.ak ], [ %.1124102733.us.us.us.i, %bb.al ], [ %.132412.us.us.us.i, %bb.ao ] ; 3 uses
  %.152393.us.us.us.i = phi nsz <4 x float> [ %.122734.us.us.us.i, %bb.ak ], [ %.122734.us.us.us.i, %bb.al ], [ %.14.us.us.us.i, %bb.ao ] ; 3 uses
  %indvars.iv.next3375.i = add nuw nsw i64 %indvars.iv3374.i, 1 ; 2 uses
  %exitcond3378.not.i = icmp eq i64 %indvars.iv.next3375.i, %wide.trip.count3339.i
  br i1 %exitcond3378.not.i, label %._crit_edge.split.us.us2761.us.i, label %bb.ak, !llvm.loop !548

._crit_edge.split.us.us2761.us.i:                 ; preds = %..loopexit2570_crit_edge.us.us.us.i
  %i.agb = getelementptr inbounds [2 x i8], ptr %.27532747.us.us.i, i64 %i.ir ; 2 uses
  %indvars.iv.next3380.i = add nuw nsw i64 %indvars.iv3379.i, 2 ; 3 uses
  %i.agc = or disjoint i64 %indvars.iv.next3380.i, 1 ; 2 uses
  %i.agd = trunc nuw i64 %i.agc to i32
  %i.age = icmp sgt i32 %i.hc, %i.agd
  br i1 %i.age, label %.preheader2576.us.us.i, label %.preheader2579.loopexit.i, !llvm.loop !549

.preheader2579.loopexit.i:                        ; preds = %._crit_edge.split.us.us2761.us.i
  %i.agf = trunc nuw i64 %indvars.iv.next3380.i to i32
  br label %.preheader2579.i

.preheader2579.i:                                 ; preds = %.preheader2579.loopexit.i, %.preheader2576.us.preheader.i, %.preheader2576.preheader.i, %.preheader2580.i
  %.102409.lcssa.i = phi <4 x float> [ %.52404.lcssa.i, %.preheader2580.i ], [ %.142413.us.us.us.i, %.preheader2579.loopexit.i ], [ %.52404.lcssa.i, %.preheader2576.us.preheader.i ], [ %.52404.lcssa.i, %.preheader2576.preheader.i ]
  %.112391.lcssa.i = phi <4 x float> [ %.62387.lcssa.i, %.preheader2580.i ], [ %.152393.us.us.us.i, %.preheader2579.loopexit.i ], [ %.62387.lcssa.i, %.preheader2576.us.preheader.i ], [ %.62387.lcssa.i, %.preheader2576.preheader.i ] ; 3 uses
  %.2758.lcssa.i = phi i32 [ %.1757.lcssa.i, %.preheader2580.i ], [ %i.agf, %.preheader2579.loopexit.i ], [ %i.adq, %.preheader2576.us.preheader.i ], [ %i.adi, %.preheader2576.preheader.i ] ; 2 uses
  %.2753.lcssa.i = phi ptr [ %.1752.lcssa.i, %.preheader2580.i ], [ %i.agb, %.preheader2579.loopexit.i ], [ %scevgep3368.i, %.preheader2576.us.preheader.i ], [ %scevgep3366.i, %.preheader2576.preheader.i ]
  %i.agg = icmp slt i32 %.2758.lcssa.i, %i.hc
  br i1 %i.agg, label %.preheader2575.lr.ph.i, label %._crit_edge2787.i

.preheader2575.lr.ph.i:                           ; preds = %.preheader2579.i
  %i.agh = load i32, ptr %i.d, align 4
  %i.agi = load i32, ptr %i.j, align 4
  %invariant.op2779.i = sub i32 %.neg2536.i, %i.agi
  %i.agj = load i32, ptr %i.f, align 4            ; 2 uses
  %i.agk = load i32, ptr %i.a, align 4
  %.fr3237.i = freeze i32 %i.agk                  ; 2 uses
  %i.agl = load i32, ptr %i.c, align 4
  %i.agm = load i32, ptr %i.i, align 4
  %.neg2526.i = add nuw nsw i32 %.07482801.i, 1
  %invariant.op2774.i = sub i32 %.neg2526.i, %i.agm
  %i.agn = load i32, ptr %i.e, align 4            ; 2 uses
  %i.ago = icmp sgt i32 %.fr3237.i, 0
  %or.cond.i = and i1 %i.ik, %i.ago
  br i1 %or.cond.i, label %.preheader2575.us.us.preheader.i, label %._crit_edge2787.i

.preheader2575.us.us.preheader.i:                 ; preds = %.preheader2575.lr.ph.i
  %i.agp = zext nneg i32 %.fr3237.i to i64        ; 2 uses
  %i.agq = zext i32 %.2758.lcssa.i to i64
  br label %.preheader2575.us.us.i

.preheader2575.us.us.i:                           ; preds = %._crit_edge.split.us.us2797.us.i, %.preheader2575.us.us.preheader.i
  %indvars.iv3392.i = phi i64 [ %i.agq, %.preheader2575.us.us.preheader.i ], [ %indvars.iv.next3393.i, %._crit_edge.split.us.us2797.us.i ] ; 2 uses
  %.37542785.us.us.i = phi ptr [ %.2753.lcssa.i, %.preheader2575.us.us.preheader.i ], [ %i.aig, %._crit_edge.split.us.us2797.us.i ] ; 2 uses
  %.162783.us.us.i = phi <4 x float> [ %.112391.lcssa.i, %.preheader2575.us.us.preheader.i ], [ %.20.us.us.us.i, %._crit_edge.split.us.us2797.us.i ]
  br label %bb.ap

bb.ap:                                            ; preds = %..loopexit2568_crit_edge.us.us.us.i, %.preheader2575.us.us.i
  %indvars.iv3387.i = phi i64 [ %indvars.iv.next3388.i, %..loopexit2568_crit_edge.us.us.us.i ], [ 0, %.preheader2575.us.us.i ] ; 3 uses
  %.172775.us.us.us.i = phi <4 x float> [ %.20.us.us.us.i, %..loopexit2568_crit_edge.us.us.us.i ], [ %.162783.us.us.i, %.preheader2575.us.us.i ] ; 3 uses
  %i.agr = trunc i64 %indvars.iv3387.i to i32
  %i.ags = mul i32 %i.agh, %i.agr
  %.reass2780.us.us.us.i = add i32 %i.ags, %invariant.op2779.i ; 3 uses
  %i.agt = icmp slt i32 %.reass2780.us.us.us.i, 0
  br i1 %i.agt, label %..loopexit2568_crit_edge.us.us.us.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.agu = srem i32 %.reass2780.us.us.us.i, %i.agj
  %i.agv = sdiv exact i32 %.reass2780.us.us.us.i, %i.agj ; 2 uses
  %.not922.us.us.us.i = icmp eq i32 %i.agu, 0
  %.not923.us.us.us.i = icmp slt i32 %i.agv, %i.he
  %or.cond319 = select i1 %.not922.us.us.us.i, i1 %.not923.us.us.us.i, i1 false
  br i1 %or.cond319, label %.preheader2567.us.us.us.i, label %..loopexit2568_crit_edge.us.us.us.i

.preheader2567.us.us.us.i:                        ; preds = %bb.aq
  %i.agw = mul nuw nsw i64 %indvars.iv3387.i, %i.agp
  %i.agx = sext i32 %i.agv to i64
  br label %bb.ar

bb.ar:                                            ; preds = %bb.at, %.preheader2567.us.us.us.i
  %indvars.iv3382.i = phi i64 [ %indvars.iv.next3383.i, %bb.at ], [ 0, %.preheader2567.us.us.us.i ] ; 3 uses
  %.182771.us.us.us.i = phi <4 x float> [ %.19.us.us.us.i, %bb.at ], [ %.172775.us.us.us.i, %.preheader2567.us.us.us.i ] ; 3 uses
  %i.agy = trunc i64 %indvars.iv3382.i to i32
  %i.agz = mul i32 %i.agl, %i.agy
  %.reass.us.us2796.us.i = add i32 %invariant.op2774.i, %i.agz ; 3 uses
  %i.aha = icmp slt i32 %.reass.us.us2796.us.i, 0
  br i1 %i.aha, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ahb = srem i32 %.reass.us.us2796.us.i, %i.agn
  %i.ahc = sdiv exact i32 %.reass.us.us2796.us.i, %i.agn ; 2 uses
  %.not924.us.us.us.i = icmp eq i32 %i.ahb, 0
  %.not925.us.us.us.i = icmp slt i32 %i.ahc, %i.hd
  %or.cond320 = select i1 %.not924.us.us.us.i, i1 %.not925.us.us.us.i, i1 false
  br i1 %or.cond320, label %_ZN4ncnn3MatD2Ev.exit958.us.us.us.i, label %bb.at

_ZN4ncnn3MatD2Ev.exit958.us.us.us.i:              ; preds = %bb.as
  %i.ahd = add nuw nsw i64 %indvars.iv3382.i, %i.agw
  %i.ahe = shl i64 %i.ahd, 2
  %i.ahf = and i64 %i.ahe, 4294967292
  %i.ahg = getelementptr inbounds nuw [2 x i8], ptr %.37542785.us.us.i, i64 %i.ahf
  %i.ahh = load i32, ptr %i.o, align 4, !tbaa !54, !noalias !628
  %i.ahi = load ptr, ptr %1, align 8, !tbaa !20, !noalias !628
  %i.ahj = load i64, ptr %i.fk, align 8, !tbaa !21, !noalias !628
  %i.ahk = mul i64 %i.ahj, %indvars.iv3392.i
  %i.ahl = load i64, ptr %i.fl, align 8, !tbaa !55, !noalias !628 ; 2 uses
  %i.ahm = mul i64 %i.ahk, %i.ahl
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahi, i64 %i.ahm
  %i.aho = sext i32 %i.ahh to i64
  %i.ahp = mul nsw i64 %i.aho, %i.agx
  %i.ahq = mul i64 %i.ahp, %i.ahl
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahn, i64 %i.ahq
  %i.ahs = sext i32 %i.ahc to i64
  %i.aht = getelementptr inbounds [2 x i8], ptr %i.ahr, i64 %i.ahs
  %i.ahu = load i16, ptr %i.aht, align 2, !tbaa !89
  %i.ahv = zext i16 %i.ahu to i32
  %i.ahw = shl nuw i32 %i.ahv, 16
  %i.ahx = insertelement <4 x i32> poison, i32 %i.ahw, i64 0
  %i.ahy = bitcast <4 x i32> %i.ahx to <4 x float>
  %i.ahz = shufflevector <4 x float> %i.ahy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aia = load i64, ptr %i.ahg, align 1, !tbaa !82
  %i.aib = insertelement <2 x i64> poison, i64 %i.aia, i64 0
  %i.aic = bitcast <2 x i64> %i.aib to <8 x i16>
  %i.aid = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aic, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aie = bitcast <8 x i16> %i.aid to <4 x float>
  %i.aif = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ahz, <4 x float> nofpclass(nan inf) %i.aie, <4 x float> nofpclass(nan inf) %.182771.us.us.us.i)
  br label %bb.at

bb.at:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit958.us.us.us.i, %bb.as, %bb.ar
  %.19.us.us.us.i = phi nsz <4 x float> [ %.182771.us.us.us.i, %bb.ar ], [ %i.aif, %_ZN4ncnn3MatD2Ev.exit958.us.us.us.i ], [ %.182771.us.us.us.i, %bb.as ] ; 2 uses
  %indvars.iv.next3383.i = add nuw nsw i64 %indvars.iv3382.i, 1 ; 2 uses
  %exitcond3386.not.i = icmp eq i64 %indvars.iv.next3383.i, %i.agp
  br i1 %exitcond3386.not.i, label %..loopexit2568_crit_edge.us.us.us.i, label %bb.ar, !llvm.loop !552

..loopexit2568_crit_edge.us.us.us.i:              ; preds = %bb.at, %bb.aq, %bb.ap
  %.20.us.us.us.i = phi nsz <4 x float> [ %.172775.us.us.us.i, %bb.ap ], [ %.172775.us.us.us.i, %bb.aq ], [ %.19.us.us.us.i, %bb.at ] ; 3 uses
  %indvars.iv.next3388.i = add nuw nsw i64 %indvars.iv3387.i, 1 ; 2 uses
  %exitcond3391.not.i = icmp eq i64 %indvars.iv.next3388.i, %wide.trip.count3339.i
  br i1 %exitcond3391.not.i, label %._crit_edge.split.us.us2797.us.i, label %bb.ap, !llvm.loop !553

._crit_edge.split.us.us2797.us.i:                 ; preds = %..loopexit2568_crit_edge.us.us.us.i
  %i.aig = getelementptr inbounds [2 x i8], ptr %.37542785.us.us.i, i64 %i.it
  %indvars.iv.next3393.i = add nuw nsw i64 %indvars.iv3392.i, 1 ; 2 uses
  %i.aih = trunc nuw i64 %indvars.iv.next3393.i to i32
  %i.aii = icmp sgt i32 %i.hc, %i.aih
  br i1 %i.aii, label %.preheader2575.us.us.i, label %._crit_edge2787.i, !llvm.loop !554

._crit_edge2787.i:                                ; preds = %._crit_edge.split.us.us2797.us.i, %.preheader2575.lr.ph.i, %.preheader2579.i
  %.16.lcssa.i = phi <4 x float> [ %.112391.lcssa.i, %.preheader2579.i ], [ %.112391.lcssa.i, %.preheader2575.lr.ph.i ], [ %.20.us.us.us.i, %._crit_edge.split.us.us2797.us.i ]
  %i.aij = fadd fast <4 x float> %.52419.lcssa.i, %.52429.lcssa.i
  %i.aik = fadd fast <4 x float> %i.aij, %.102409.lcssa.i
  %i.ail = fadd fast <4 x float> %i.aik, %.16.lcssa.i ; 10 uses
  switch i32 %i.ht, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i [
    i32 1, label %bb.au
    i32 2, label %bb.av
    i32 3, label %bb.aw
    i32 4, label %bb.ax
    i32 5, label %bb.ay
    i32 6, label %bb.az
  ]

bb.au:                                            ; preds = %._crit_edge2787.i
  %i.aim = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ail, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i

bb.av:                                            ; preds = %._crit_edge2787.i
  %i.ain = load ptr, ptr %i.eg, align 8, !tbaa !20
  %i.aio = load float, ptr %i.ain, align 4, !tbaa !39
  %i.aip = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.ail)
  %i.aiq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.ail)
  %i.air = insertelement <4 x float> poison, float %i.aio, i64 0
  %i.ais = shufflevector <4 x float> %i.air, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ait = fmul fast <4 x float> %i.ais, %i.aiq
  %i.aiu = fadd fast <4 x float> %i.ait, %i.aip
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i

bb.aw:                                            ; preds = %._crit_edge2787.i
  %i.aiv = load ptr, ptr %i.eg, align 8, !tbaa !20 ; 2 uses
  %i.aiw = load float, ptr %i.aiv, align 4, !tbaa !39
  %i.aix = insertelement <4 x float> poison, float %i.aiw, i64 0
  %i.aiy = shufflevector <4 x float> %i.aix, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aiv, i64 4
  %i.aja = load float, ptr %i.aiz, align 4, !tbaa !39
  %i.ajb = insertelement <4 x float> poison, float %i.aja, i64 0
  %i.ajc = shufflevector <4 x float> %i.ajb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ajd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ail, <4 x float> nofpclass(nan inf) %i.aiy)
  %i.aje = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ajd, <4 x float> nofpclass(nan inf) %i.ajc)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i

bb.ax:                                            ; preds = %._crit_edge2787.i
  %i.ajf = fneg fast <4 x float> %i.ail
  %i.ajg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ajf, <4 x float> splat (float f0x42B0C0A5))
  %i.ajh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ajg, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.aji = fmul fast <4 x float> %i.ajh, splat (float f0x3FB8AA3B)
  %i.ajj = fadd fast <4 x float> %i.aji, splat (float 5.000000e-01) ; 2 uses
  %i.ajk = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ajj)
  %i.ajl = sitofp fast <4 x i32> %i.ajk to <4 x float> ; 2 uses
  %i.ajm = fcmp fast olt <4 x float> %i.ajj, %i.ajl
  %i.ajn = select <4 x i1> %i.ajm, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ajo = fsub fast <4 x float> %i.ajl, %i.ajn   ; 2 uses
  %i.ajp = fneg fast <4 x float> %i.ajo           ; 2 uses
  %i.ajq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.ajp, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.ajh)
  %i.ajr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.ajp, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.ajq) ; 8 uses
  %i.ajs = fmul fast <4 x float> %i.ajr, %i.ajr
  %i.ajt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ajr, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.aju = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ajt, <4 x float> nofpclass(nan inf) %i.ajr, <4 x float> splat (float f0x3C088908))
  %i.ajv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aju, <4 x float> nofpclass(nan inf) %i.ajr, <4 x float> splat (float f0x3D2AA9C1))
  %i.ajw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ajv, <4 x float> nofpclass(nan inf) %i.ajr, <4 x float> splat (float f0x3E2AAAAA))
  %i.ajx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ajw, <4 x float> nofpclass(nan inf) %i.ajr, <4 x float> splat (float 5.000000e-01))
  %i.ajy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ajx, <4 x float> nofpclass(nan inf) %i.ajs, <4 x float> nofpclass(nan inf) %i.ajr)
  %i.ajz = fadd fast <4 x float> %i.ajy, splat (float 1.000000e+00)
  %i.aka = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ajo)
  %i.akb = shl <4 x i32> %i.aka, splat (i32 23)
  %i.akc = add <4 x i32> %i.akb, splat (i32 1065353216)
  %i.akd = bitcast <4 x i32> %i.akc to <4 x float>
  %i.ake = fmul fast <4 x float> %i.ajz, %i.akd
  %i.akf = fadd fast <4 x float> %i.ake, splat (float 1.000000e+00)
  %i.akg = fdiv fast <4 x float> splat (float 1.000000e+00), %i.akf
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i

bb.ay:                                            ; preds = %._crit_edge2787.i
  %i.akh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ail, <4 x float> splat (float f0x42B0C0A5))
  %i.aki = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.akh, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.akj = fmul fast <4 x float> %i.aki, splat (float f0x3FB8AA3B)
  %i.akk = fadd fast <4 x float> %i.akj, splat (float 5.000000e-01) ; 2 uses
  %i.akl = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.akk)
  %i.akm = sitofp fast <4 x i32> %i.akl to <4 x float> ; 2 uses
  %i.akn = fcmp fast olt <4 x float> %i.akk, %i.akm
  %i.ako = select <4 x i1> %i.akn, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.akp = fsub fast <4 x float> %i.akm, %i.ako   ; 2 uses
  %i.akq = fneg fast <4 x float> %i.akp           ; 2 uses
  %i.akr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.akq, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.aki)
  %i.aks = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.akq, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.akr) ; 8 uses
  %i.akt = fmul fast <4 x float> %i.aks, %i.aks
  %i.aku = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aks, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.akv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aku, <4 x float> nofpclass(nan inf) %i.aks, <4 x float> splat (float f0x3C088908))
  %i.akw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.akv, <4 x float> nofpclass(nan inf) %i.aks, <4 x float> splat (float f0x3D2AA9C1))
  %i.akx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.akw, <4 x float> nofpclass(nan inf) %i.aks, <4 x float> splat (float f0x3E2AAAAA))
  %i.aky = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.akx, <4 x float> nofpclass(nan inf) %i.aks, <4 x float> splat (float 5.000000e-01))
  %i.akz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aky, <4 x float> nofpclass(nan inf) %i.akt, <4 x float> nofpclass(nan inf) %i.aks)
  %i.ala = fadd fast <4 x float> %i.akz, splat (float 1.000000e+00)
  %i.alb = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.akp)
  %i.alc = shl <4 x i32> %i.alb, splat (i32 23)
  %i.ald = add <4 x i32> %i.alc, splat (i32 1065353216)
  %i.ale = bitcast <4 x i32> %i.ald to <4 x float>
  %i.alf = fmul fast <4 x float> %i.ala, %i.ale
  %i.alg = fadd fast <4 x float> %i.alf, splat (float 1.000000e+00) ; 2 uses
  %i.alh = fcmp fast ole <4 x float> %i.alg, zeroinitializer
  %i.ali = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.alg, <4 x float> splat (float f0x00800000))
  %i.alj = bitcast <4 x float> %i.ali to <4 x i32> ; 2 uses
  %i.alk = lshr <4 x i32> %i.alj, splat (i32 23)
  %i.all = and <4 x i32> %i.alj, splat (i32 -2139095041)
  %i.alm = or disjoint <4 x i32> %i.all, splat (i32 1056964608)
  %i.aln = bitcast <4 x i32> %i.alm to <4 x float> ; 3 uses
  %i.alo = add nsw <4 x i32> %i.alk, splat (i32 -127)
  %i.alp = sitofp fast <4 x i32> %i.alo to <4 x float> ; 2 uses
  %i.alq = fadd fast <4 x float> %i.alp, splat (float 1.000000e+00)
  %i.alr = fcmp fast olt <4 x float> %i.aln, splat (float f0x3F3504F3) ; 2 uses
  %i.als = select <4 x i1> %i.alr, <4 x float> %i.aln, <4 x float> zeroinitializer
  %i.alt = fadd fast <4 x float> %i.aln, splat (float -1.000000e+00)
  %i.alu = select fast <4 x i1> %i.alr, <4 x float> %i.alp, <4 x float> %i.alq ; 2 uses
  %i.alv = fadd fast <4 x float> %i.alt, %i.als   ; 12 uses
  %i.alw = fmul fast <4 x float> %i.alv, %i.alv   ; 2 uses
  %i.alx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.alv, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.aly = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.alx, <4 x float> nofpclass(nan inf) %i.alv, <4 x float> splat (float f0x3DEF251A))
  %i.alz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aly, <4 x float> nofpclass(nan inf) %i.alv, <4 x float> splat (float f0xBDFE5D4F))
  %i.ama = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.alz, <4 x float> nofpclass(nan inf) %i.alv, <4 x float> splat (float f0x3E11E9BF))
  %i.amb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ama, <4 x float> nofpclass(nan inf) %i.alv, <4 x float> splat (float f0xBE2AAE50))
  %i.amc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.amb, <4 x float> nofpclass(nan inf) %i.alv, <4 x float> splat (float f0x3E4CCEAC))
  %i.amd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.amc, <4 x float> nofpclass(nan inf) %i.alv, <4 x float> splat (float f0xBE7FFFFC))
  %i.ame = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.amd, <4 x float> nofpclass(nan inf) %i.alv, <4 x float> splat (float f0x3EAAAAAA))
  %i.amf = fmul fast <4 x float> %i.alw, %i.alv
  %i.amg = fmul fast <4 x float> %i.amf, %i.ame
  %i.amh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.alu, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.amg)
  %i.ami = fneg fast <4 x float> %i.alw
  %i.amj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.ami, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.amh)
  %i.amk = fadd fast <4 x float> %i.amj, %i.alv
  %i.aml = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.alu, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.amk)
  %.neg.i = fmul fast <4 x float> %i.aml, splat (float -2.000000e+00)
  %i.amm = select fast <4 x i1> %i.alh, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg.i
  %i.amn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.amm, <4 x float> splat (float f0x42B0C0A5))
  %i.amo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.amn, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.amp = fmul fast <4 x float> %i.amo, splat (float f0x3FB8AA3B)
  %i.amq = fadd fast <4 x float> %i.amp, splat (float 5.000000e-01) ; 2 uses
  %i.amr = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.amq)
  %i.ams = sitofp fast <4 x i32> %i.amr to <4 x float> ; 2 uses
  %i.amt = fcmp fast olt <4 x float> %i.amq, %i.ams
  %i.amu = select <4 x i1> %i.amt, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.amv = fsub fast <4 x float> %i.ams, %i.amu   ; 2 uses
  %i.amw = fneg fast <4 x float> %i.amv           ; 2 uses
  %i.amx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.amw, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.amo)
end_hunk_3
begin_hunk_4_@_ZNK4ncnn21Deconvolution_x86_fma13forward_bf16sERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %i.aok = extractelement <8 x i16> %i.aoj, i64 1
  store i16 %i.aok, ptr %.17402802.i, align 2, !tbaa !89
  %i.aol = extractelement <8 x i16> %i.aoj, i64 3
  %i.aom = load i64, ptr %i.h, align 8, !tbaa !84 ; 3 uses
  %i.aon = getelementptr inbounds nuw [2 x i8], ptr %.17402802.i, i64 %i.aom
  store i16 %i.aol, ptr %i.aon, align 2, !tbaa !89
  %i.aoo = extractelement <8 x i16> %i.aoj, i64 5
  %.idx.i = shl i64 %i.aom, 2
  %i.aop = getelementptr inbounds nuw i8, ptr %.17402802.i, i64 %.idx.i
  store i16 %i.aoo, ptr %i.aop, align 2, !tbaa !89
  %i.aoq = extractelement <8 x i16> %i.aoj, i64 7
  %.idx921.i = mul i64 %i.aom, 6
  %i.aor = getelementptr inbounds nuw i8, ptr %.17402802.i, i64 %.idx921.i
  store i16 %i.aoq, ptr %i.aor, align 2, !tbaa !89
  %i.aos = getelementptr inbounds nuw i8, ptr %.17402802.i, i64 2
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %.thread.i, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i
  %i.aot = phi ptr [ %i.iv, %bb.ba ], [ %i.iv, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i ], [ %.pre168, %.thread.i ]
  %.3742.i = phi ptr [ %i.aos, %bb.ba ], [ %.17402802.i, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i ], [ %i.aoi, %.thread.i ] ; 2 uses
  %i.aou = add nuw nsw i32 %.07482801.i, 1        ; 2 uses
  %exitcond3395.not.i = icmp eq i32 %i.aou, %i.hf
  br i1 %exitcond3395.not.i, label %._crit_edge.i, label %bb.x, !llvm.loop !555

._crit_edge3034.split.i:                          ; preds = %._crit_edge3032.i, %_ZN4ncnn3MatD2Ev.exit957.lr.ph.i, %._crit_edge2807.i
  %i.aov = shl nsw i32 %i.fs, 1                   ; 2 uses
  %i.aow = add nsw i32 %i.aov, %i.fq
  %i.aox = icmp slt i32 %i.aow, %i.ek
  br i1 %i.aox, label %_ZN4ncnn3MatD2Ev.exit946.lr.ph.i, label %.loopexit

_ZN4ncnn3MatD2Ev.exit946.lr.ph.i:                 ; preds = %._crit_edge3034.split.i
  %i.aoy = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aoz = load i32, ptr %i.aoy, align 8, !tbaa !60
  %.fr3104.i = freeze i32 %i.aoz                  ; 3 uses
  %i.apa = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.apb = load i32, ptr %i.apa, align 8, !tbaa !62
  %i.apc = mul i32 %i.apb, %.fr3104.i             ; 14 uses
  %i.apd = load i32, ptr %i.o, align 4, !tbaa !54 ; 6 uses
  %i.ape = load i32, ptr %i.p, align 8, !tbaa !66 ; 5 uses
  %i.apf = load i32, ptr %i.bj, align 4, !tbaa !54 ; 2 uses
  %i.apg = load i32, ptr %i.bk, align 16, !tbaa !66 ; 2 uses
  %i.aph = load ptr, ptr %4, align 16, !tbaa !20, !noalias !629
  %i.api = load i64, ptr %i.bm, align 16, !tbaa !21, !noalias !629
  %i.apj = load i64, ptr %i.bf, align 16, !tbaa !55, !noalias !629
  %factor.op.mul3225.i = mul i64 %i.apj, %i.api
  %i.apk = icmp slt i32 %i.apg, 1
  %i.apl = icmp slt i32 %i.apf, 1
  %i.apm = icmp sgt i32 %i.apc, 7
  %i.apn = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 7 uses
  %i.apo = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %brmerge3234.i = select i1 %i.apk, i1 true, i1 %i.apl
  br i1 %brmerge3234.i, label %.loopexit, label %_ZN4ncnn3MatD2Ev.exit946.lr.ph.split.split.i

_ZN4ncnn3MatD2Ev.exit946.lr.ph.split.split.i:     ; preds = %_ZN4ncnn3MatD2Ev.exit946.lr.ph.i
  %i.app = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.apq = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.apr = load ptr, ptr %i.dw, align 8, !tbaa !20, !noalias !630
  %i.aps = load i64, ptr %i.apq, align 8, !tbaa !21, !noalias !630
  %i.apt = load i64, ptr %i.app, align 8, !tbaa !55, !noalias !630
  %factor.op.mul3228.i = mul i64 %i.apt, %i.aps
  %i.apu = add i32 %i.apc, -8                     ; 2 uses
  %i.apv = lshr i32 %i.apu, 2
  %i.apw = and i32 %i.apv, 1073741822
  %narrow3649.i = add nuw nsw i32 %i.apw, 2
  %i.apx = zext nneg i32 %narrow3649.i to i64
  %i.apy = and i32 %i.apu, -8
  %i.apz = add nuw i32 %i.apy, 8
  %i.aqa = sext i32 %i.apc to i64
  %i.aqb = sext i32 %i.fq to i64
  %i.aqc = sext i32 %i.aov to i64
  %i.aqd = add nsw i64 %i.aqc, %i.aqb
  %i.aqe = sext i32 %i.ek to i64
  %invariant.op3669.i = add nsw i64 %i.aqa, -7
  %i.aqf = sext i32 %i.apd to i64                 ; 5 uses
  %i.aqg = and i32 %i.apc, -8
  br label %_ZN4ncnn3MatD2Ev.exit946.i

_ZN4ncnn3MatD2Ev.exit957.i:                       ; preds = %._crit_edge3032.i, %_ZN4ncnn3MatD2Ev.exit957.lr.ph.split.split.i
  %indvars.iv3484.i = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit957.lr.ph.split.split.i ], [ %indvars.iv.next3485.i, %._crit_edge3032.i ] ; 2 uses
  %i.aqh = shl nuw nsw i64 %indvars.iv3484.i, 1
  %i.aqi = add nsw i64 %i.aqh, %i.gx              ; 4 uses
  %.reass.i = mul i64 %i.aqi, %factor.op.mul.i
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.gd, i64 %.reass.i
  %i.aqk = add nsw i64 %i.aqi, 1
  %.reass3037.i = mul i64 %i.aqk, %factor.op.mul.i
  %i.aql = getelementptr inbounds nuw i8, ptr %i.gd, i64 %.reass3037.i
  %i.aqm = load ptr, ptr %i.l, align 8            ; 2 uses
  %.not903.i = icmp eq ptr %i.aqm, null
  %i.aqn = getelementptr inbounds [4 x i8], ptr %i.aqm, i64 %i.aqi
  %i.aqo = trunc nsw i64 %i.aqi to i32            ; 3 uses
  %i.aqp = sdiv i32 %i.aqo, 8
  %i.aqq = srem i32 %i.aqo, 8
  %.lhs.trunc2480.i = trunc nsw i32 %i.aqq to i8
  %i.aqr = sdiv i8 %.lhs.trunc2480.i, 4
  %.sext2481.i = sext i8 %i.aqr to i32
  %i.aqs = add nsw i32 %i.aqp, %.sext2481.i
  %i.aqt = srem i32 %i.aqo, 4
  %.lhs.trunc2482.i = trunc nsw i32 %i.aqt to i8
  %i.aqu = sdiv i8 %.lhs.trunc2482.i, 2
  %.sext2483.i = sext i8 %i.aqu to i32
  %i.aqv = add nsw i32 %i.aqs, %.sext2483.i
  %i.aqw = sext i32 %i.aqv to i64
  %i.aqx = load i32, ptr %i.g, align 4
  %.reass3041.i = mul i64 %factor.op.mul3040.i, %i.aqw
  %i.aqy = getelementptr i8, ptr %i.gn, i64 %.reass3041.i ; 3 uses
  br label %.preheader2566.i

.preheader2566.i:                                 ; preds = %._crit_edge3026.i, %_ZN4ncnn3MatD2Ev.exit957.i
  %.08043031.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit957.i ], [ %.neg2520.i, %._crit_edge3026.i ]
  %.08053030.i = phi ptr [ %i.aql, %_ZN4ncnn3MatD2Ev.exit957.i ], [ %i.bjr, %._crit_edge3026.i ]
  %.08073029.i = phi ptr [ %i.aqj, %_ZN4ncnn3MatD2Ev.exit957.i ], [ %i.bjq, %._crit_edge3026.i ]
  %i.aqz = load i32, ptr %i.b, align 4            ; 2 uses
  %i.ara = icmp sgt i32 %i.aqz, 0                 ; 4 uses
  %.neg2520.i = add nuw nsw i32 %.08043031.i, 1   ; 6 uses
  %i.arb = load i32, ptr %i.k, align 4            ; 4 uses
  %i.arc = shl i32 %i.arb, 4
  %i.ard = sext i32 %i.arc to i64                 ; 2 uses
  %i.are = shl i32 %i.arb, 3
  %i.arf = sext i32 %i.are to i64                 ; 3 uses
  %i.arg = shl i32 %i.arb, 2
  %i.arh = sext i32 %i.arg to i64                 ; 3 uses
  %i.ari = shl nsw i32 %i.arb, 1
  %i.arj = sext i32 %i.ari to i64
  %i.ark = mul nsw i64 %i.ard, %i.gt
  %scevgep3403.i = getelementptr i8, ptr %i.aqy, i64 %i.ark
  %wide.trip.count3418.i = zext nneg i32 %i.aqz to i64 ; 5 uses
  br label %bb.bc

._crit_edge3032.i:                                ; preds = %._crit_edge3026.i
  %indvars.iv.next3485.i = add nuw nsw i64 %indvars.iv3484.i, 1 ; 2 uses
  %exitcond3488.not.i = icmp eq i64 %indvars.iv.next3485.i, %wide.trip.count3487.i
  br i1 %exitcond3488.not.i, label %._crit_edge3034.split.i, label %_ZN4ncnn3MatD2Ev.exit957.i, !llvm.loop !560

._crit_edge3026.i:                                ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i
  %exitcond3483.not.i = icmp eq i32 %.neg2520.i, %i.gc
  br i1 %exitcond3483.not.i, label %._crit_edge3032.i, label %.preheader2566.i, !llvm.loop !561

bb.bc:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i, %.preheader2566.i
  %.08033025.i = phi i32 [ 0, %.preheader2566.i ], [ %i.bjs, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i ] ; 5 uses
  %.18063024.i = phi ptr [ %.08053030.i, %.preheader2566.i ], [ %i.bjr, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i ] ; 2 uses
  %.18083023.i = phi ptr [ %.08073029.i, %.preheader2566.i ], [ %i.bjq, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i ] ; 2 uses
  br i1 %.not903.i, label %_ZN4ncnn3MatD2Ev.exit955.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.arl = load <2 x float>, ptr %i.aqn, align 4, !tbaa !39
  br label %_ZN4ncnn3MatD2Ev.exit955.i

_ZN4ncnn3MatD2Ev.exit955.i:                       ; preds = %bb.bd, %bb.bc
  %i.arm = phi <2 x float> [ %i.arl, %bb.bd ], [ zeroinitializer, %bb.bc ]
  br i1 %i.gi, label %.preheader2564.lr.ph.i, label %._crit_edge2838.i

.preheader2564.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit955.i
  %i.arn = load i32, ptr %i.d, align 4
  %i.aro = load i32, ptr %i.j, align 4
  %invariant.op2827.i = sub i32 %.neg2520.i, %i.aro
  %i.arp = load i32, ptr %i.f, align 4            ; 2 uses
  %i.arq = load i32, ptr %i.a, align 4
  %.fr3238.i = freeze i32 %i.arq                  ; 2 uses
  %i.arr = load i32, ptr %i.c, align 4
  %i.ars = load i32, ptr %i.i, align 4
  %.neg2522.i = add nuw nsw i32 %.08033025.i, 1
  %invariant.op2818.i = sub i32 %.neg2522.i, %i.ars
  %i.art = load i32, ptr %i.e, align 4            ; 2 uses
  %i.aru = icmp sgt i32 %.fr3238.i, 0
  %or.cond3731.i = and i1 %i.ara, %i.aru
  br i1 %or.cond3731.i, label %.preheader2564.us.us.preheader.i, label %._crit_edge2838.i

.preheader2564.us.us.preheader.i:                 ; preds = %.preheader2564.lr.ph.i
  %i.arv = zext nneg i32 %.fr3238.i to i64        ; 2 uses
  br label %.preheader2564.us.us.i

.preheader2564.us.us.i:                           ; preds = %._crit_edge2824.split.us.us.us.i, %.preheader2564.us.us.preheader.i
  %indvars.iv3420.i = phi i64 [ 0, %.preheader2564.us.us.preheader.i ], [ %indvars.iv.next3421.i, %._crit_edge2824.split.us.us.us.i ] ; 11 uses
  %.07672834.us.us.i = phi ptr [ %i.aqy, %.preheader2564.us.us.preheader.i ], [ %i.awc, %._crit_edge2824.split.us.us.us.i ] ; 2 uses
  %.024492833.us.us.i = phi <8 x float> [ zeroinitializer, %.preheader2564.us.us.preheader.i ], [ %.42453.us.us.us.i, %._crit_edge2824.split.us.us.us.i ]
  %.024542832.us.us.i = phi <8 x float> [ zeroinitializer, %.preheader2564.us.us.preheader.i ], [ %.42458.us.us.us.i, %._crit_edge2824.split.us.us.us.i ]
  %i.arw = lshr exact i64 %indvars.iv3420.i, 2    ; 2 uses
  %i.arx = or disjoint i64 %i.arw, 1
  %i.ary = lshr exact i64 %indvars.iv3420.i, 3
  %i.arz = or disjoint i64 %indvars.iv3420.i, 1
  %i.asa = or disjoint i64 %indvars.iv3420.i, 2
  %i.asb = or disjoint i64 %indvars.iv3420.i, 3
  %i.asc = or disjoint i64 %indvars.iv3420.i, 4
  %i.asd = or disjoint i64 %indvars.iv3420.i, 5
  %i.ase = or disjoint i64 %indvars.iv3420.i, 6
  %i.asf = or disjoint i64 %indvars.iv3420.i, 7
  br label %bb.be

bb.be:                                            ; preds = %..loopexit2560_crit_edge.us.us.us.i, %.preheader2564.us.us.i
  %indvars.iv3415.i = phi i64 [ %indvars.iv.next3416.i, %..loopexit2560_crit_edge.us.us.us.i ], [ 0, %.preheader2564.us.us.i ] ; 3 uses
  %.124502821.us.us.us.i = phi <8 x float> [ %.42453.us.us.us.i, %..loopexit2560_crit_edge.us.us.us.i ], [ %.024492833.us.us.i, %.preheader2564.us.us.i ] ; 3 uses
  %.124552820.us.us.us.i = phi <8 x float> [ %.42458.us.us.us.i, %..loopexit2560_crit_edge.us.us.us.i ], [ %.024542832.us.us.i, %.preheader2564.us.us.i ] ; 3 uses
  %i.asg = trunc i64 %indvars.iv3415.i to i32
  %i.ash = mul i32 %i.arn, %i.asg
  %.reass2828.us.us.us.i = add i32 %i.ash, %invariant.op2827.i ; 3 uses
  %i.asi = icmp slt i32 %.reass2828.us.us.us.i, 0
  br i1 %i.asi, label %..loopexit2560_crit_edge.us.us.us.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.asj = srem i32 %.reass2828.us.us.us.i, %i.arp
  %i.ask = sdiv exact i32 %.reass2828.us.us.us.i, %i.arp ; 2 uses
  %.not916.us.us.us.i = icmp eq i32 %i.asj, 0
  %.not917.us.us.us.i = icmp slt i32 %i.ask, %i.ga
  %or.cond321 = select i1 %.not916.us.us.us.i, i1 %.not917.us.us.us.i, i1 false
  br i1 %or.cond321, label %.preheader2559.us.us.us.i, label %..loopexit2560_crit_edge.us.us.us.i

.preheader2559.us.us.us.i:                        ; preds = %bb.bf
  %i.asl = mul nuw nsw i64 %indvars.iv3415.i, %i.arv
  %i.asm = sext i32 %i.ask to i64
  %i.asn = mul nsw i64 %i.asm, %i.gy              ; 3 uses
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bj, %.preheader2559.us.us.us.i
  %indvars.iv3410.i = phi i64 [ %indvars.iv.next3411.i, %bb.bj ], [ 0, %.preheader2559.us.us.us.i ] ; 3 uses
  %.224512814.us.us.us.i = phi <8 x float> [ %.32452.us.us.us.i, %bb.bj ], [ %.124502821.us.us.us.i, %.preheader2559.us.us.us.i ] ; 4 uses
  %.224562813.us.us.us.i = phi <8 x float> [ %.32457.us.us.us.i, %bb.bj ], [ %.124552820.us.us.us.i, %.preheader2559.us.us.us.i ] ; 4 uses
  %i.aso = trunc i64 %indvars.iv3410.i to i32
  %i.asp = mul i32 %i.arr, %i.aso
  %.reass2819.us.us.us.i = add i32 %invariant.op2818.i, %i.asp ; 3 uses
  %i.asq = icmp slt i32 %.reass2819.us.us.us.i, 0
  br i1 %i.asq, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.asr = srem i32 %.reass2819.us.us.us.i, %i.art
  %i.ass = sdiv exact i32 %.reass2819.us.us.us.i, %i.art ; 4 uses
  %.not918.us.us.us.i = icmp eq i32 %i.asr, 0
  %.not919.us.us.us.i = icmp slt i32 %i.ass, %i.fz
  %or.cond322 = select i1 %.not918.us.us.us.i, i1 %.not919.us.us.us.i, i1 false
  br i1 %or.cond322, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.ast = add nuw nsw i64 %indvars.iv3410.i, %i.asl
  %i.asu = shl i64 %i.ast, 4
  %i.asv = and i64 %i.asu, 4294967280
  %i.asw = getelementptr inbounds nuw [2 x i8], ptr %.07672834.us.us.i, i64 %i.asv ; 2 uses
  switch i32 %.fr2884.i, label %bb.bj [
    i32 8, label %_ZN4ncnn3MatD2Ev.exit954.us.us.us.i
    i32 4, label %_ZN4ncnn3MatD2Ev.exit953.us.us.us.i
    i32 1, label %_ZN4ncnn3MatD2Ev.exit951.us.us.us.i
  ]

_ZN4ncnn3MatD2Ev.exit951.us.us.us.i:              ; preds = %bb.bi
  %i.asx = load ptr, ptr %1, align 8, !tbaa !20, !noalias !631
  %i.asy = load i64, ptr %i.gj, align 8, !tbaa !21, !noalias !631
  %i.asz = load i64, ptr %i.gk, align 8, !tbaa !55, !noalias !631 ; 2 uses
  %factor.op.mul.us.us.us.i = mul i64 %i.asz, %i.asy ; 8 uses
  %i.ata = mul i64 %i.asn, %i.asz
  %invariant.gep.us.us.us.i = getelementptr i8, ptr %i.asx, i64 %i.ata
  %i.atb = sext i32 %i.ass to i64
  %invariant.gep2810.us.us.us.i = getelementptr [2 x i8], ptr %invariant.gep.us.us.us.i, i64 %i.atb ; 8 uses
  %.reass.us.us2850.us.i = mul i64 %factor.op.mul.us.us.us.i, %indvars.iv3420.i
  %gep2811.us.us.us.i = getelementptr i8, ptr %invariant.gep2810.us.us.us.i, i64 %.reass.us.us2850.us.i
  %i.atc = load i16, ptr %gep2811.us.us.us.i, align 2, !tbaa !89
  %.reass.us.us2850.us.1.i = mul i64 %factor.op.mul.us.us.us.i, %i.arz
  %gep2811.us.us.us.1.i = getelementptr i8, ptr %invariant.gep2810.us.us.us.i, i64 %.reass.us.us2850.us.1.i
  %i.atd = load i16, ptr %gep2811.us.us.us.1.i, align 2, !tbaa !89
  %.reass.us.us2850.us.2.i = mul i64 %factor.op.mul.us.us.us.i, %i.asa
  %gep2811.us.us.us.2.i = getelementptr i8, ptr %invariant.gep2810.us.us.us.i, i64 %.reass.us.us2850.us.2.i
  %i.ate = load i16, ptr %gep2811.us.us.us.2.i, align 2, !tbaa !89
  %.reass.us.us2850.us.3.i = mul i64 %factor.op.mul.us.us.us.i, %i.asb
  %gep2811.us.us.us.3.i = getelementptr i8, ptr %invariant.gep2810.us.us.us.i, i64 %.reass.us.us2850.us.3.i
  %i.atf = load i16, ptr %gep2811.us.us.us.3.i, align 2, !tbaa !89
  %.reass.us.us2850.us.4.i = mul i64 %factor.op.mul.us.us.us.i, %i.asc
  %gep2811.us.us.us.4.i = getelementptr i8, ptr %invariant.gep2810.us.us.us.i, i64 %.reass.us.us2850.us.4.i
  %i.atg = load i16, ptr %gep2811.us.us.us.4.i, align 2, !tbaa !89
  %.reass.us.us2850.us.5.i = mul i64 %factor.op.mul.us.us.us.i, %i.asd
  %gep2811.us.us.us.5.i = getelementptr i8, ptr %invariant.gep2810.us.us.us.i, i64 %.reass.us.us2850.us.5.i
  %i.ath = load i16, ptr %gep2811.us.us.us.5.i, align 2, !tbaa !89
  %.reass.us.us2850.us.6.i = mul i64 %factor.op.mul.us.us.us.i, %i.ase
  %gep2811.us.us.us.6.i = getelementptr i8, ptr %invariant.gep2810.us.us.us.i, i64 %.reass.us.us2850.us.6.i
  %i.ati = load i16, ptr %gep2811.us.us.us.6.i, align 2, !tbaa !89
  %.reass.us.us2850.us.7.i = mul i64 %factor.op.mul.us.us.us.i, %i.asf
  %gep2811.us.us.us.7.i = getelementptr i8, ptr %invariant.gep2810.us.us.us.i, i64 %.reass.us.us2850.us.7.i
  %i.atj = load i16, ptr %gep2811.us.us.us.7.i, align 2, !tbaa !89
  %i.atk = insertelement <4 x i16> poison, i16 %i.atg, i64 0
  %i.atl = insertelement <4 x i16> %i.atk, i16 %i.ath, i64 1
  %i.atm = insertelement <4 x i16> %i.atl, i16 %i.ati, i64 2
  %i.atn = insertelement <4 x i16> %i.atm, i16 %i.atj, i64 3
  %i.ato = zext <4 x i16> %i.atn to <4 x i32>
  %i.atp = zext i16 %i.atf to i32
  %i.atq = zext i16 %i.ate to i32
  %i.atr = zext i16 %i.atd to i32
  %i.ats = zext i16 %i.atc to i32
  %i.att = insertelement <8 x i32> poison, i32 %i.ats, i64 0
  %i.atu = insertelement <8 x i32> %i.att, i32 %i.atr, i64 1
  %i.atv = insertelement <8 x i32> %i.atu, i32 %i.atq, i64 2
  %i.atw = insertelement <8 x i32> %i.atv, i32 %i.atp, i64 3
  %i.atx = shufflevector <4 x i32> %i.ato, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aty = shufflevector <8 x i32> %i.atw, <8 x i32> %i.atx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.atz = shl nuw <8 x i32> %i.aty, splat (i32 16)
  %.sroa.03579.28.vec.insert.i = bitcast <8 x i32> %i.atz to <8 x float>
  br label %.sink.split3732.i

_ZN4ncnn3MatD2Ev.exit953.us.us.us.i:              ; preds = %bb.bi
  %i.aua = load ptr, ptr %1, align 8, !tbaa !20, !noalias !632 ; 2 uses
  %i.aub = load i64, ptr %i.gj, align 8, !tbaa !21, !noalias !632
  %i.auc = load i64, ptr %i.gk, align 8, !tbaa !55, !noalias !632 ; 2 uses
  %i.aud = mul i64 %i.auc, %i.aub                 ; 2 uses
  %i.aue = mul i64 %i.aud, %i.arw
  %i.auf = getelementptr inbounds nuw i8, ptr %i.aua, i64 %i.aue
  %i.aug = mul i64 %i.asn, %i.auc                 ; 2 uses
  %i.auh = getelementptr inbounds nuw i8, ptr %i.auf, i64 %i.aug
  %i.aui = shl nsw i32 %i.ass, 2
  %i.auj = sext i32 %i.aui to i64                 ; 2 uses
  %i.auk = getelementptr inbounds [2 x i8], ptr %i.auh, i64 %i.auj
  %i.aul = mul i64 %i.aud, %i.arx
  %i.aum = getelementptr inbounds nuw i8, ptr %i.aua, i64 %i.aul
  %i.aun = getelementptr inbounds nuw i8, ptr %i.aum, i64 %i.aug
  %i.auo = getelementptr inbounds [2 x i8], ptr %i.aun, i64 %i.auj
  %i.aup = load i64, ptr %i.auk, align 1, !tbaa !82
  %i.auq = insertelement <2 x i64> poison, i64 %i.aup, i64 0
  %i.aur = bitcast <2 x i64> %i.auq to <8 x i16>
  %i.aus = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aur, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aut = load i64, ptr %i.auo, align 1, !tbaa !82
  %i.auu = insertelement <2 x i64> poison, i64 %i.aut, i64 0
  %i.auv = bitcast <2 x i64> %i.auu to <8 x i16>
  %i.auw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.auv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aux = shufflevector <8 x i16> %i.aus, <8 x i16> %i.auw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.auy = bitcast <16 x i16> %i.aux to <8 x float>
  br label %.sink.split3732.i

_ZN4ncnn3MatD2Ev.exit954.us.us.us.i:              ; preds = %bb.bi
  %i.auz = load ptr, ptr %1, align 8, !tbaa !20, !noalias !633
  %i.ava = load i64, ptr %i.gj, align 8, !tbaa !21, !noalias !633
  %i.avb = mul i64 %i.ava, %i.ary
  %i.avc = load i64, ptr %i.gk, align 8, !tbaa !55, !noalias !633 ; 2 uses
  %i.avd = mul i64 %i.avb, %i.avc
  %i.ave = getelementptr inbounds nuw i8, ptr %i.auz, i64 %i.avd
  %i.avf = mul i64 %i.asn, %i.avc
  %i.avg = getelementptr inbounds nuw i8, ptr %i.ave, i64 %i.avf
  %i.avh = shl nsw i32 %i.ass, 3
  %i.avi = sext i32 %i.avh to i64
  %i.avj = getelementptr inbounds [2 x i8], ptr %i.avg, i64 %i.avi
  %i.avk = load <8 x i16>, ptr %i.avj, align 16, !tbaa !82 ; 2 uses
  %i.avl = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.avk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.avm = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.avk, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.avn = shufflevector <8 x i16> %i.avl, <8 x i16> %i.avm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.avo = bitcast <16 x i16> %i.avn to <8 x float>
  br label %.sink.split3732.i

.sink.split3732.i:                                ; preds = %_ZN4ncnn3MatD2Ev.exit954.us.us.us.i, %_ZN4ncnn3MatD2Ev.exit953.us.us.us.i, %_ZN4ncnn3MatD2Ev.exit951.us.us.us.i
  %.sink3745.i = phi <8 x float> [ %i.avo, %_ZN4ncnn3MatD2Ev.exit954.us.us.us.i ], [ %i.auy, %_ZN4ncnn3MatD2Ev.exit953.us.us.us.i ], [ %.sroa.03579.28.vec.insert.i, %_ZN4ncnn3MatD2Ev.exit951.us.us.us.i ] ; 2 uses
  %i.avp = load <8 x i16>, ptr %i.asw, align 16, !tbaa !82 ; 2 uses
  %i.avq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.avp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.avr = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.avp, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.avs = shufflevector <8 x i16> %i.avq, <8 x i16> %i.avr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.avt = bitcast <16 x i16> %i.avs to <8 x float>
  %i.avu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.sink3745.i, <8 x float> nofpclass(nan inf) %i.avt, <8 x float> nofpclass(nan inf) %.224562813.us.us.us.i)
  %i.avv = getelementptr inbounds nuw i8, ptr %i.asw, i64 16
  %i.avw = load <8 x i16>, ptr %i.avv, align 16, !tbaa !82 ; 2 uses
  %i.avx = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.avw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.avy = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.avw, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.avz = shufflevector <8 x i16> %i.avx, <8 x i16> %i.avy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.awa = bitcast <16 x i16> %i.avz to <8 x float>
  %i.awb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.sink3745.i, <8 x float> nofpclass(nan inf) %i.awa, <8 x float> nofpclass(nan inf) %.224512814.us.us.us.i)
  br label %bb.bj

bb.bj:                                            ; preds = %.sink.split3732.i, %bb.bi, %bb.bh, %bb.bg
  %.32457.us.us.us.i = phi nsz <8 x float> [ %.224562813.us.us.us.i, %bb.bg ], [ %.224562813.us.us.us.i, %bb.bi ], [ %.224562813.us.us.us.i, %bb.bh ], [ %i.avu, %.sink.split3732.i ] ; 2 uses
  %.32452.us.us.us.i = phi nsz <8 x float> [ %.224512814.us.us.us.i, %bb.bg ], [ %.224512814.us.us.us.i, %bb.bi ], [ %.224512814.us.us.us.i, %bb.bh ], [ %i.awb, %.sink.split3732.i ] ; 2 uses
  %indvars.iv.next3411.i = add nuw nsw i64 %indvars.iv3410.i, 1 ; 2 uses
  %exitcond3414.not.i = icmp eq i64 %indvars.iv.next3411.i, %i.arv
  br i1 %exitcond3414.not.i, label %..loopexit2560_crit_edge.us.us.us.i, label %bb.bg, !llvm.loop !568

..loopexit2560_crit_edge.us.us.us.i:              ; preds = %bb.bj, %bb.bf, %bb.be
  %.42458.us.us.us.i = phi nsz <8 x float> [ %.124552820.us.us.us.i, %bb.be ], [ %.124552820.us.us.us.i, %bb.bf ], [ %.32457.us.us.us.i, %bb.bj ] ; 3 uses
  %.42453.us.us.us.i = phi nsz <8 x float> [ %.124502821.us.us.us.i, %bb.be ], [ %.124502821.us.us.us.i, %bb.bf ], [ %.32452.us.us.us.i, %bb.bj ] ; 3 uses
  %indvars.iv.next3416.i = add nuw nsw i64 %indvars.iv3415.i, 1 ; 2 uses
  %exitcond3419.not.i = icmp eq i64 %indvars.iv.next3416.i, %wide.trip.count3418.i
  br i1 %exitcond3419.not.i, label %._crit_edge2824.split.us.us.us.i, label %bb.be, !llvm.loop !569

._crit_edge2824.split.us.us.us.i:                 ; preds = %..loopexit2560_crit_edge.us.us.us.i
  %i.awc = getelementptr inbounds [2 x i8], ptr %.07672834.us.us.i, i64 %i.ard ; 2 uses
  %indvars.iv.next3421.i = add nuw nsw i64 %indvars.iv3420.i, 8 ; 2 uses
  %i.awd = icmp slt i64 %indvars.iv.next3421.i, %invariant.op3668.i
  br i1 %i.awd, label %.preheader2564.us.us.i, label %._crit_edge2838.i, !llvm.loop !570

._crit_edge2838.i:                                ; preds = %._crit_edge2824.split.us.us.us.i, %.preheader2564.lr.ph.i, %_ZN4ncnn3MatD2Ev.exit955.i
  %.02454.lcssa.i = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit955.i ], [ zeroinitializer, %.preheader2564.lr.ph.i ], [ %.42458.us.us.us.i, %._crit_edge2824.split.us.us.us.i ] ; 2 uses
  %.02449.lcssa.i = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit955.i ], [ zeroinitializer, %.preheader2564.lr.ph.i ], [ %.42453.us.us.us.i, %._crit_edge2824.split.us.us.us.i ] ; 2 uses
  %.0767.lcssa.i = phi ptr [ %i.aqy, %_ZN4ncnn3MatD2Ev.exit955.i ], [ %scevgep3403.i, %.preheader2564.lr.ph.i ], [ %i.awc, %._crit_edge2824.split.us.us.us.i ] ; 4 uses
  %.0763.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit955.i ], [ %i.gv, %.preheader2564.lr.ph.i ], [ %i.gz, %._crit_edge2824.split.us.us.us.i ] ; 9 uses
  %i.awe = shufflevector <8 x float> %.02454.lcssa.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.awf = shufflevector <8 x float> %.02454.lcssa.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.awg = fadd fast <4 x float> %i.awe, %i.awf   ; 2 uses
  %i.awh = shufflevector <4 x float> %i.awg, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.awi = fadd fast <4 x float> %i.awh, %i.awg   ; 2 uses
  %i.awj = shufflevector <8 x float> %.02449.lcssa.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.awk = shufflevector <8 x float> %.02449.lcssa.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.awl = fadd fast <4 x float> %i.awj, %i.awk   ; 2 uses
  %i.awm = shufflevector <4 x float> %i.awl, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.awn = fadd fast <4 x float> %i.awm, %i.awl   ; 2 uses
  %i.awo = or disjoint i32 %.0763.lcssa.i, 3
  %i.awp = icmp slt i32 %i.awo, %i.fy
  br i1 %i.awp, label %.preheader2563.lr.ph.i, label %._crit_edge2911.i

.preheader2563.lr.ph.i:                           ; preds = %._crit_edge2838.i
  %i.awq = load i32, ptr %i.d, align 4            ; 2 uses
  %i.awr = load i32, ptr %i.j, align 4
  %invariant.op2892.i = sub i32 %.neg2520.i, %i.awr ; 2 uses
  %i.aws = load i32, ptr %i.f, align 4            ; 4 uses
  %i.awt = load i32, ptr %i.a, align 4
  %.fr3239.i = freeze i32 %i.awt                  ; 2 uses
  %i.awu = load i32, ptr %i.c, align 4            ; 2 uses
  %i.awv = load i32, ptr %i.i, align 4
  %.neg2518.i = add nuw nsw i32 %.08033025.i, 1
  %invariant.op2867.i = sub i32 %.neg2518.i, %i.awv ; 2 uses
  %i.aww = load i32, ptr %i.e, align 4            ; 4 uses
  br i1 %i.ara, label %.preheader2563.lr.ph.split.us.i, label %.preheader2563.preheader.i

.preheader2563.preheader.i:                       ; preds = %.preheader2563.lr.ph.i
  %i.awx = add i32 %.0763.lcssa.i, 7
  %smax3423.i = call i32 @llvm.smax.i32(i32 %i.fy, i32 %i.awx)
  %reass.sub138 = sub i32 %smax3423.i, %.0763.lcssa.i
  %i.awy = add i32 %reass.sub138, -4              ; 2 uses
  %i.awz = lshr i32 %i.awy, 1
  %i.axa = and i32 %i.awz, 2147483646
  %narrow3646.i = add nuw i32 %i.axa, 2
  %i.axb = zext i32 %narrow3646.i to i64
  %i.axc = mul nsw i64 %i.axb, %i.arf
  %scevgep3424.i = getelementptr i8, ptr %.0767.lcssa.i, i64 %i.axc
  %i.axd = add i32 %.0763.lcssa.i, 4
  %i.axe = and i32 %i.awy, -4
  %i.axf = add i32 %i.axd, %i.axe
  br label %._crit_edge2911.i

.preheader2563.lr.ph.split.us.i:                  ; preds = %.preheader2563.lr.ph.i
  %i.axg = icmp sgt i32 %.fr3239.i, 0
  br i1 %i.axg, label %.preheader2563.us.us.preheader.i, label %.preheader2563.us.preheader.i

.preheader2563.us.preheader.i:                    ; preds = %.preheader2563.lr.ph.split.us.i
  %i.axh = add i32 %.0763.lcssa.i, 7
  %smax3425.i = call i32 @llvm.smax.i32(i32 %i.fy, i32 %i.axh)
  %reass.sub139 = sub i32 %smax3425.i, %.0763.lcssa.i
  %i.axi = add i32 %reass.sub139, -4              ; 2 uses
  %i.axj = lshr i32 %i.axi, 1
  %i.axk = and i32 %i.axj, 2147483646
  %narrow3647.i = add nuw i32 %i.axk, 2
  %i.axl = zext i32 %narrow3647.i to i64
  %i.axm = mul nsw i64 %i.axl, %i.arf
  %scevgep3426.i = getelementptr i8, ptr %.0767.lcssa.i, i64 %i.axm
  %i.axn = add i32 %.0763.lcssa.i, 4
  %i.axo = and i32 %i.axi, -4
  %i.axp = add i32 %i.axn, %i.axo
  br label %._crit_edge2911.i

.preheader2563.us.us.preheader.i:                 ; preds = %.preheader2563.lr.ph.split.us.i
  %i.axq = zext nneg i32 %.fr3239.i to i64        ; 4 uses
  %i.axr = zext i32 %.0763.lcssa.i to i64
  br label %.preheader2563.us.us.i

.preheader2563.us.us.i:                           ; preds = %._crit_edge2889.split.us.us.us.i, %.preheader2563.us.us.preheader.i
  %indvars.iv3446.i = phi i64 [ %i.axr, %.preheader2563.us.us.preheader.i ], [ %indvars.iv.next3447.i, %._crit_edge2889.split.us.us.us.i ] ; 6 uses
  %.17682907.us.us.i = phi ptr [ %.0767.lcssa.i, %.preheader2563.us.us.preheader.i ], [ %i.bbn, %._crit_edge2889.split.us.us.us.i ] ; 3 uses
  %.024392906.us.us.i = phi <4 x float> [ zeroinitializer, %.preheader2563.us.us.preheader.i ], [ %.us-phi103, %._crit_edge2889.split.us.us.us.i ] ; 3 uses
  %.024442905.us.us.i = phi <4 x float> [ zeroinitializer, %.preheader2563.us.us.preheader.i ], [ %.us-phi102, %._crit_edge2889.split.us.us.us.i ] ; 3 uses
  %i.axs = lshr exact i64 %indvars.iv3446.i, 2
  %i.axt = and i64 %i.axs, 1073741823
  %i.axu = add nuw nsw i64 %indvars.iv3446.i, 1
  %i.axv = add nuw nsw i64 %indvars.iv3446.i, 2
  %i.axw = add nuw nsw i64 %indvars.iv3446.i, 3
  switch i32 %.fr2884.i, label %._crit_edge2889.split.us.us.us.i [
    i32 4, label %.preheader2563.us.us.i.split.us
    i32 1, label %.preheader2563.us.us.i.split.us104
  ]

.preheader2563.us.us.i.split.us:                  ; preds = %.preheader2563.us.us.i, %..loopexit2558_crit_edge.us.us.us.i.us
  %indvars.iv3441.i.us = phi i64 [ %indvars.iv.next3442.i.us, %..loopexit2558_crit_edge.us.us.us.i.us ], [ 0, %.preheader2563.us.us.i ] ; 3 uses
  %.124402886.us.us.us.i.us = phi <4 x float> [ %.42443.us.us.us.i.us, %..loopexit2558_crit_edge.us.us.us.i.us ], [ %.024392906.us.us.i, %.preheader2563.us.us.i ] ; 3 uses
  %.124452885.us.us.us.i.us = phi <4 x float> [ %.42448.us.us.us.i.us, %..loopexit2558_crit_edge.us.us.us.i.us ], [ %.024442905.us.us.i, %.preheader2563.us.us.i ] ; 3 uses
  %i.axx = trunc i64 %indvars.iv3441.i.us to i32
  %i.axy = mul i32 %i.awq, %i.axx
  %.reass.us2893.us.us.i.us = add i32 %i.axy, %invariant.op2892.i ; 3 uses
  %i.axz = icmp slt i32 %.reass.us2893.us.us.i.us, 0
  br i1 %i.axz, label %..loopexit2558_crit_edge.us.us.us.i.us, label %bb.bk

bb.bk:                                            ; preds = %.preheader2563.us.us.i.split.us
  %i.aya = srem i32 %.reass.us2893.us.us.i.us, %i.aws
  %i.ayb = sdiv exact i32 %.reass.us2893.us.us.i.us, %i.aws ; 2 uses
  %.not912.us.us.us.i.us = icmp eq i32 %i.aya, 0
  %.not913.us.us.us.i.us = icmp slt i32 %i.ayb, %i.ga
  %or.cond323 = select i1 %.not912.us.us.us.i.us, i1 %.not913.us.us.us.i.us, i1 false
  br i1 %or.cond323, label %.preheader2557.us.us.us.i.us, label %..loopexit2558_crit_edge.us.us.us.i.us

.preheader2557.us.us.us.i.us:                     ; preds = %bb.bk
  %i.ayc = mul nuw nsw i64 %indvars.iv3441.i.us, %i.axq
  %i.ayd = sext i32 %i.ayb to i64
  %i.aye = mul nsw i64 %i.ayd, %i.gy
  br label %.lr.ph.split.us.us.us.us2928.i.us

.lr.ph.split.us.us.us.us2928.i.us:                ; preds = %bb.bm, %.preheader2557.us.us.us.i.us
  %indvars.iv3436.i.us = phi i64 [ %indvars.iv.next3437.i.us, %bb.bm ], [ 0, %.preheader2557.us.us.us.i.us ] ; 3 uses
  %.224412863.us.us.us.us.i.us = phi <4 x float> [ %.32442.us.us.us.us.i.us, %bb.bm ], [ %.124402886.us.us.us.i.us, %.preheader2557.us.us.us.i.us ] ; 3 uses
  %.224462862.us.us.us.us.i.us = phi <4 x float> [ %.32447.us.us.us.us.i.us, %bb.bm ], [ %.124452885.us.us.us.i.us, %.preheader2557.us.us.us.i.us ] ; 3 uses
  %i.ayf = trunc i64 %indvars.iv3436.i.us to i32
  %i.ayg = mul i32 %i.awu, %i.ayf
  %.reass2868.us.us.us.us.i.us = add i32 %i.ayg, %invariant.op2867.i ; 3 uses
  %i.ayh = icmp slt i32 %.reass2868.us.us.us.us.i.us, 0
  br i1 %i.ayh, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %.lr.ph.split.us.us.us.us2928.i.us
  %i.ayi = srem i32 %.reass2868.us.us.us.us.i.us, %i.aww
  %i.ayj = sdiv exact i32 %.reass2868.us.us.us.us.i.us, %i.aww ; 2 uses
  %.not914.us.us.us.us.i.us = icmp eq i32 %i.ayi, 0
  %.not915.us.us.us.us.i.us = icmp slt i32 %i.ayj, %i.fz
  %or.cond324 = select i1 %.not914.us.us.us.us.i.us, i1 %.not915.us.us.us.us.i.us, i1 false
  br i1 %or.cond324, label %_ZN4ncnn3MatD2Ev.exit950.us.us.us.us.i.us, label %bb.bm

_ZN4ncnn3MatD2Ev.exit950.us.us.us.us.i.us:        ; preds = %bb.bl
  %i.ayk = add nuw nsw i64 %indvars.iv3436.i.us, %i.ayc
  %i.ayl = shl i64 %i.ayk, 3
  %i.aym = and i64 %i.ayl, 4294967288
  %i.ayn = getelementptr inbounds nuw [2 x i8], ptr %.17682907.us.us.i, i64 %i.aym ; 2 uses
  %i.ayo = load ptr, ptr %1, align 8, !tbaa !20, !noalias !634
  %i.ayp = load i64, ptr %i.gj, align 8, !tbaa !21, !noalias !634
  %i.ayq = mul i64 %i.ayp, %i.axt
  %i.ayr = load i64, ptr %i.gk, align 8, !tbaa !55, !noalias !634 ; 2 uses
  %i.ays = mul i64 %i.ayq, %i.ayr
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.ayo, i64 %i.ays
  %i.ayu = mul i64 %i.aye, %i.ayr
  %i.ayv = getelementptr inbounds nuw i8, ptr %i.ayt, i64 %i.ayu
  %i.ayw = shl nsw i32 %i.ayj, 2
  %i.ayx = sext i32 %i.ayw to i64
  %i.ayy = getelementptr inbounds [2 x i8], ptr %i.ayv, i64 %i.ayx
  %i.ayz = load i64, ptr %i.ayy, align 1, !tbaa !82
  %i.aza = insertelement <2 x i64> poison, i64 %i.ayz, i64 0
  %i.azb = bitcast <2 x i64> %i.aza to <8 x i16>
  %i.azc = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.azb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.azd = bitcast <8 x i16> %i.azc to <4 x float> ; 2 uses
  %i.aze = load i64, ptr %i.ayn, align 1, !tbaa !82
  %i.azf = insertelement <2 x i64> poison, i64 %i.aze, i64 0
  %i.azg = bitcast <2 x i64> %i.azf to <8 x i16>
  %i.azh = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.azg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.azi = bitcast <8 x i16> %i.azh to <4 x float>
  %i.azj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.azd, <4 x float> nofpclass(nan inf) %i.azi, <4 x float> nofpclass(nan inf) %.224462862.us.us.us.us.i.us)
  %i.azk = getelementptr inbounds nuw i8, ptr %i.ayn, i64 8
  %i.azl = load i64, ptr %i.azk, align 1, !tbaa !82
  %i.azm = insertelement <2 x i64> poison, i64 %i.azl, i64 0
  %i.azn = bitcast <2 x i64> %i.azm to <8 x i16>
  %i.azo = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.azn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.azp = bitcast <8 x i16> %i.azo to <4 x float>
  %i.azq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.azd, <4 x float> nofpclass(nan inf) %i.azp, <4 x float> nofpclass(nan inf) %.224412863.us.us.us.us.i.us)
  br label %bb.bm

bb.bm:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit950.us.us.us.us.i.us, %bb.bl, %.lr.ph.split.us.us.us.us2928.i.us
  %.32447.us.us.us.us.i.us = phi nsz <4 x float> [ %.224462862.us.us.us.us.i.us, %.lr.ph.split.us.us.us.us2928.i.us ], [ %.224462862.us.us.us.us.i.us, %bb.bl ], [ %i.azj, %_ZN4ncnn3MatD2Ev.exit950.us.us.us.us.i.us ] ; 2 uses
  %.32442.us.us.us.us.i.us = phi nsz <4 x float> [ %.224412863.us.us.us.us.i.us, %.lr.ph.split.us.us.us.us2928.i.us ], [ %.224412863.us.us.us.us.i.us, %bb.bl ], [ %i.azq, %_ZN4ncnn3MatD2Ev.exit950.us.us.us.us.i.us ] ; 2 uses
  %indvars.iv.next3437.i.us = add nuw nsw i64 %indvars.iv3436.i.us, 1 ; 2 uses
  %exitcond3440.not.i.us = icmp eq i64 %indvars.iv.next3437.i.us, %i.axq
  br i1 %exitcond3440.not.i.us, label %..loopexit2558_crit_edge.us.us.us.i.us, label %.lr.ph.split.us.us.us.us2928.i.us, !llvm.loop !573

..loopexit2558_crit_edge.us.us.us.i.us:           ; preds = %bb.bm, %bb.bk, %.preheader2563.us.us.i.split.us
  %.42448.us.us.us.i.us = phi nsz <4 x float> [ %.124452885.us.us.us.i.us, %.preheader2563.us.us.i.split.us ], [ %.124452885.us.us.us.i.us, %bb.bk ], [ %.32447.us.us.us.us.i.us, %bb.bm ] ; 2 uses
  %.42443.us.us.us.i.us = phi nsz <4 x float> [ %.124402886.us.us.us.i.us, %.preheader2563.us.us.i.split.us ], [ %.124402886.us.us.us.i.us, %bb.bk ], [ %.32442.us.us.us.us.i.us, %bb.bm ] ; 2 uses
  %indvars.iv.next3442.i.us = add nuw nsw i64 %indvars.iv3441.i.us, 1 ; 2 uses
  %exitcond3445.not.i.us = icmp eq i64 %indvars.iv.next3442.i.us, %wide.trip.count3418.i
  br i1 %exitcond3445.not.i.us, label %._crit_edge2889.split.us.us.us.i, label %.preheader2563.us.us.i.split.us, !llvm.loop !574

.preheader2563.us.us.i.split.us104:               ; preds = %.preheader2563.us.us.i, %..loopexit2558_crit_edge.us.us.us.i.us112
  %indvars.iv3441.i.us105 = phi i64 [ %indvars.iv.next3442.i.us115, %..loopexit2558_crit_edge.us.us.us.i.us112 ], [ 0, %.preheader2563.us.us.i ] ; 3 uses
  %.124402886.us.us.us.i.us106 = phi <4 x float> [ %.42443.us.us.us.i.us114, %..loopexit2558_crit_edge.us.us.us.i.us112 ], [ %.024392906.us.us.i, %.preheader2563.us.us.i ] ; 3 uses
  %.124452885.us.us.us.i.us107 = phi <4 x float> [ %.42448.us.us.us.i.us113, %..loopexit2558_crit_edge.us.us.us.i.us112 ], [ %.024442905.us.us.i, %.preheader2563.us.us.i ] ; 3 uses
  %i.azr = trunc i64 %indvars.iv3441.i.us105 to i32
  %i.azs = mul i32 %i.awq, %i.azr
  %.reass.us2893.us.us.i.us108 = add i32 %i.azs, %invariant.op2892.i ; 3 uses
  %i.azt = icmp slt i32 %.reass.us2893.us.us.i.us108, 0
  br i1 %i.azt, label %..loopexit2558_crit_edge.us.us.us.i.us112, label %bb.bn

bb.bn:                                            ; preds = %.preheader2563.us.us.i.split.us104
  %i.azu = srem i32 %.reass.us2893.us.us.i.us108, %i.aws
  %i.azv = sdiv exact i32 %.reass.us2893.us.us.i.us108, %i.aws ; 2 uses
  %.not912.us.us.us.i.us109 = icmp eq i32 %i.azu, 0
  %.not913.us.us.us.i.us110 = icmp slt i32 %i.azv, %i.ga
  %or.cond325 = select i1 %.not912.us.us.us.i.us109, i1 %.not913.us.us.us.i.us110, i1 false
  br i1 %or.cond325, label %.preheader2557.us.us.us.i.us111, label %..loopexit2558_crit_edge.us.us.us.i.us112

.preheader2557.us.us.us.i.us111:                  ; preds = %bb.bn
  %i.azw = mul nuw nsw i64 %indvars.iv3441.i.us105, %i.axq
  %i.azx = sext i32 %i.azv to i64
  %i.azy = mul nsw i64 %i.azx, %i.gy
  br label %.lr.ph.split.us2871.us.us.us.i.us

.lr.ph.split.us2871.us.us.us.i.us:                ; preds = %bb.bp, %.preheader2557.us.us.us.i.us111
  %indvars.iv3431.i.us = phi i64 [ %indvars.iv.next3432.i.us, %bb.bp ], [ 0, %.preheader2557.us.us.us.i.us111 ] ; 3 uses
  %.224412863.us2873.us.us.us.i.us = phi <4 x float> [ %.32442.us2879.us.us.us.i.us, %bb.bp ], [ %.124402886.us.us.us.i.us106, %.preheader2557.us.us.us.i.us111 ] ; 3 uses
  %.224462862.us2874.us.us.us.i.us = phi <4 x float> [ %.32447.us2878.us.us.us.i.us, %bb.bp ], [ %.124452885.us.us.us.i.us107, %.preheader2557.us.us.us.i.us111 ] ; 3 uses
  %i.azz = trunc i64 %indvars.iv3431.i.us to i32
  %i.baa = mul i32 %i.awu, %i.azz
  %.reass2868.us2875.us.us.us.i.us = add i32 %i.baa, %invariant.op2867.i ; 3 uses
  %i.bab = icmp slt i32 %.reass2868.us2875.us.us.us.i.us, 0
  br i1 %i.bab, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %.lr.ph.split.us2871.us.us.us.i.us
  %i.bac = srem i32 %.reass2868.us2875.us.us.us.i.us, %i.aww
  %i.bad = sdiv exact i32 %.reass2868.us2875.us.us.us.i.us, %i.aww ; 2 uses
  %.not914.us2876.us.us.us.i.us = icmp eq i32 %i.bac, 0
  %.not915.us2877.us.us.us.i.us = icmp slt i32 %i.bad, %i.fz
  %or.cond326 = select i1 %.not914.us2876.us.us.us.i.us, i1 %.not915.us2877.us.us.us.i.us, i1 false
  br i1 %or.cond326, label %_ZN4ncnn3MatD2Ev.exit949.us.us.us.us.i.us, label %bb.bp

_ZN4ncnn3MatD2Ev.exit949.us.us.us.us.i.us:        ; preds = %bb.bo
  %i.bae = load ptr, ptr %1, align 8, !tbaa !20, !noalias !635
  %i.baf = load i64, ptr %i.gj, align 8, !tbaa !21, !noalias !635
  %i.bag = load i64, ptr %i.gk, align 8, !tbaa !55, !noalias !635 ; 2 uses
  %factor.op.mul.us.us.us2922.us.i.us = mul i64 %i.bag, %i.baf ; 4 uses
  %i.bah = mul i64 %i.azy, %i.bag
  %invariant.gep.us.us.us2923.us.i.us = getelementptr i8, ptr %i.bae, i64 %i.bah
  %i.bai = sext i32 %i.bad to i64
  %invariant.gep2859.us.us.us.us.i.us = getelementptr [2 x i8], ptr %invariant.gep.us.us.us2923.us.i.us, i64 %i.bai ; 4 uses
  %.reass.us.us2894.us.us.i.us = mul i64 %factor.op.mul.us.us.us2922.us.i.us, %indvars.iv3446.i
  %gep2860.us.us.us.us.i.us = getelementptr i8, ptr %invariant.gep2859.us.us.us.us.i.us, i64 %.reass.us.us2894.us.us.i.us
  %i.baj = load i16, ptr %gep2860.us.us.us.us.i.us, align 2, !tbaa !89
  %.reass.us.us2894.us.us.1.i.us = mul i64 %factor.op.mul.us.us.us2922.us.i.us, %i.axu
  %gep2860.us.us.us.us.1.i.us = getelementptr i8, ptr %invariant.gep2859.us.us.us.us.i.us, i64 %.reass.us.us2894.us.us.1.i.us
  %i.bak = load i16, ptr %gep2860.us.us.us.us.1.i.us, align 2, !tbaa !89
  %.reass.us.us2894.us.us.2.i.us = mul i64 %factor.op.mul.us.us.us2922.us.i.us, %i.axv
  %gep2860.us.us.us.us.2.i.us = getelementptr i8, ptr %invariant.gep2859.us.us.us.us.i.us, i64 %.reass.us.us2894.us.us.2.i.us
  %i.bal = load i16, ptr %gep2860.us.us.us.us.2.i.us, align 2, !tbaa !89
  %.reass.us.us2894.us.us.3.i.us = mul i64 %factor.op.mul.us.us.us2922.us.i.us, %i.axw
  %gep2860.us.us.us.us.3.i.us = getelementptr i8, ptr %invariant.gep2859.us.us.us.us.i.us, i64 %.reass.us.us2894.us.us.3.i.us
  %i.bam = load i16, ptr %gep2860.us.us.us.us.3.i.us, align 2, !tbaa !89
  %i.ban = zext i16 %i.bam to i32
  %i.bao = zext i16 %i.bal to i32
  %i.bap = zext i16 %i.bak to i32
  %i.baq = zext i16 %i.baj to i32
  %i.bar = insertelement <4 x i32> poison, i32 %i.baq, i64 0
  %i.bas = insertelement <4 x i32> %i.bar, i32 %i.bap, i64 1
  %i.bat = insertelement <4 x i32> %i.bas, i32 %i.bao, i64 2
  %i.bau = insertelement <4 x i32> %i.bat, i32 %i.ban, i64 3
  %i.bav = shl nuw <4 x i32> %i.bau, splat (i32 16)
  %.sroa.03577.12.vec.insert.i.us = bitcast <4 x i32> %i.bav to <4 x float> ; 2 uses
  %i.baw = add nuw nsw i64 %indvars.iv3431.i.us, %i.azw
  %i.bax = shl i64 %i.baw, 3
  %i.bay = and i64 %i.bax, 4294967288
  %i.baz = getelementptr inbounds nuw [2 x i8], ptr %.17682907.us.us.i, i64 %i.bay ; 2 uses
  %i.bba = load i64, ptr %i.baz, align 1, !tbaa !82
  %i.bbb = insertelement <2 x i64> poison, i64 %i.bba, i64 0
  %i.bbc = bitcast <2 x i64> %i.bbb to <8 x i16>
  %i.bbd = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bbc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bbe = bitcast <8 x i16> %i.bbd to <4 x float>
  %i.bbf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sroa.03577.12.vec.insert.i.us, <4 x float> nofpclass(nan inf) %i.bbe, <4 x float> nofpclass(nan inf) %.224462862.us2874.us.us.us.i.us)
  %i.bbg = getelementptr inbounds nuw i8, ptr %i.baz, i64 8
  %i.bbh = load i64, ptr %i.bbg, align 1, !tbaa !82
  %i.bbi = insertelement <2 x i64> poison, i64 %i.bbh, i64 0
  %i.bbj = bitcast <2 x i64> %i.bbi to <8 x i16>
  %i.bbk = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bbj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bbl = bitcast <8 x i16> %i.bbk to <4 x float>
  %i.bbm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sroa.03577.12.vec.insert.i.us, <4 x float> nofpclass(nan inf) %i.bbl, <4 x float> nofpclass(nan inf) %.224412863.us2873.us.us.us.i.us)
  br label %bb.bp

bb.bp:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit949.us.us.us.us.i.us, %bb.bo, %.lr.ph.split.us2871.us.us.us.i.us
  %.32447.us2878.us.us.us.i.us = phi nsz <4 x float> [ %.224462862.us2874.us.us.us.i.us, %.lr.ph.split.us2871.us.us.us.i.us ], [ %i.bbf, %_ZN4ncnn3MatD2Ev.exit949.us.us.us.us.i.us ], [ %.224462862.us2874.us.us.us.i.us, %bb.bo ] ; 2 uses
  %.32442.us2879.us.us.us.i.us = phi nsz <4 x float> [ %.224412863.us2873.us.us.us.i.us, %.lr.ph.split.us2871.us.us.us.i.us ], [ %i.bbm, %_ZN4ncnn3MatD2Ev.exit949.us.us.us.us.i.us ], [ %.224412863.us2873.us.us.us.i.us, %bb.bo ] ; 2 uses
  %indvars.iv.next3432.i.us = add nuw nsw i64 %indvars.iv3431.i.us, 1 ; 2 uses
  %exitcond3435.not.i.us = icmp eq i64 %indvars.iv.next3432.i.us, %i.axq
  br i1 %exitcond3435.not.i.us, label %..loopexit2558_crit_edge.us.us.us.i.us112, label %.lr.ph.split.us2871.us.us.us.i.us, !llvm.loop !573

..loopexit2558_crit_edge.us.us.us.i.us112:        ; preds = %bb.bp, %bb.bn, %.preheader2563.us.us.i.split.us104
  %.42448.us.us.us.i.us113 = phi nsz <4 x float> [ %.124452885.us.us.us.i.us107, %.preheader2563.us.us.i.split.us104 ], [ %.124452885.us.us.us.i.us107, %bb.bn ], [ %.32447.us2878.us.us.us.i.us, %bb.bp ] ; 2 uses
  %.42443.us.us.us.i.us114 = phi nsz <4 x float> [ %.124402886.us.us.us.i.us106, %.preheader2563.us.us.i.split.us104 ], [ %.124402886.us.us.us.i.us106, %bb.bn ], [ %.32442.us2879.us.us.us.i.us, %bb.bp ] ; 2 uses
  %indvars.iv.next3442.i.us115 = add nuw nsw i64 %indvars.iv3441.i.us105, 1 ; 2 uses
  %exitcond3445.not.i.us116 = icmp eq i64 %indvars.iv.next3442.i.us115, %wide.trip.count3418.i
  br i1 %exitcond3445.not.i.us116, label %._crit_edge2889.split.us.us.us.i, label %.preheader2563.us.us.i.split.us104, !llvm.loop !574

._crit_edge2889.split.us.us.us.i:                 ; preds = %..loopexit2558_crit_edge.us.us.us.i.us112, %..loopexit2558_crit_edge.us.us.us.i.us, %.preheader2563.us.us.i
  %.us-phi102 = phi <4 x float> [ %.42448.us.us.us.i.us, %..loopexit2558_crit_edge.us.us.us.i.us ], [ %.024442905.us.us.i, %.preheader2563.us.us.i ], [ %.42448.us.us.us.i.us113, %..loopexit2558_crit_edge.us.us.us.i.us112 ] ; 2 uses
  %.us-phi103 = phi <4 x float> [ %.42443.us.us.us.i.us, %..loopexit2558_crit_edge.us.us.us.i.us ], [ %.024392906.us.us.i, %.preheader2563.us.us.i ], [ %.42443.us.us.us.i.us114, %..loopexit2558_crit_edge.us.us.us.i.us112 ] ; 2 uses
  %i.bbn = getelementptr inbounds [2 x i8], ptr %.17682907.us.us.i, i64 %i.arf ; 2 uses
  %indvars.iv.next3447.i = add nuw nsw i64 %indvars.iv3446.i, 4 ; 2 uses
  %i.bbo = trunc i64 %indvars.iv.next3447.i to i32 ; 2 uses
  %i.bbp = or i32 %i.bbo, 3
  %i.bbq = icmp slt i32 %i.bbp, %i.fy
  br i1 %i.bbq, label %.preheader2563.us.us.i, label %._crit_edge2911.i, !llvm.loop !577

._crit_edge2911.i:                                ; preds = %._crit_edge2889.split.us.us.us.i, %.preheader2563.us.preheader.i, %.preheader2563.preheader.i, %._crit_edge2838.i
  %.02444.lcssa.i = phi <4 x float> [ zeroinitializer, %._crit_edge2838.i ], [ zeroinitializer, %.preheader2563.preheader.i ], [ zeroinitializer, %.preheader2563.us.preheader.i ], [ %.us-phi102, %._crit_edge2889.split.us.us.us.i ] ; 2 uses
  %.02439.lcssa.i = phi <4 x float> [ zeroinitializer, %._crit_edge2838.i ], [ zeroinitializer, %.preheader2563.preheader.i ], [ zeroinitializer, %.preheader2563.us.preheader.i ], [ %.us-phi103, %._crit_edge2889.split.us.us.us.i ] ; 2 uses
  %.1768.lcssa.i = phi ptr [ %.0767.lcssa.i, %._crit_edge2838.i ], [ %scevgep3424.i, %.preheader2563.preheader.i ], [ %scevgep3426.i, %.preheader2563.us.preheader.i ], [ %i.bbn, %._crit_edge2889.split.us.us.us.i ] ; 4 uses
  %.1764.lcssa.i = phi i32 [ %.0763.lcssa.i, %._crit_edge2838.i ], [ %i.axf, %.preheader2563.preheader.i ], [ %i.axp, %.preheader2563.us.preheader.i ], [ %i.bbo, %._crit_edge2889.split.us.us.us.i ] ; 9 uses
  %i.bbr = shufflevector <4 x float> %.02444.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.bbs = fadd fast <4 x float> %i.bbr, %.02444.lcssa.i ; 2 uses
  %i.bbt = shufflevector <4 x float> %i.awi, <4 x float> %i.awn, <2 x i32> <i32 1, i32 5>
  %i.bbu = fadd fast <2 x float> %i.bbt, %i.arm
  %i.bbv = shufflevector <4 x float> %.02439.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.bbw = fadd fast <4 x float> %i.bbv, %.02439.lcssa.i ; 2 uses
  %i.bbx = shufflevector <4 x float> %i.awi, <4 x float> %i.awn, <2 x i32> <i32 0, i32 4>
  %i.bby = fadd fast <2 x float> %i.bbu, %i.bbx
  %i.bbz = shufflevector <4 x float> %i.bbs, <4 x float> %i.bbw, <2 x i32> <i32 1, i32 5>
  %i.bca = fadd fast <2 x float> %i.bby, %i.bbz
  %i.bcb = shufflevector <4 x float> %i.bbs, <4 x float> %i.bbw, <2 x i32> <i32 0, i32 4>
  %i.bcc = fadd fast <2 x float> %i.bca, %i.bcb   ; 4 uses
  %i.bcd = or disjoint i32 %.1764.lcssa.i, 1
  %i.bce = icmp slt i32 %i.bcd, %i.fy
  br i1 %i.bce, label %.preheader2562.lr.ph.i, label %.preheader2565.i

.preheader2562.lr.ph.i:                           ; preds = %._crit_edge2911.i
  %i.bcf = load i32, ptr %i.d, align 4
  %i.bcg = load i32, ptr %i.j, align 4
  %invariant.op2952.i = sub i32 %.neg2520.i, %i.bcg
  %i.bch = load i32, ptr %i.f, align 4            ; 2 uses
  %i.bci = load i32, ptr %i.a, align 4
  %.fr3240.i = freeze i32 %i.bci                  ; 2 uses
  %i.bcj = load i32, ptr %i.c, align 4
  %i.bck = load i32, ptr %i.i, align 4
  %.neg2514.i = add nuw nsw i32 %.08033025.i, 1
  %invariant.op2943.i = sub i32 %.neg2514.i, %i.bck
  %i.bcl = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.ara, label %.preheader2562.lr.ph.split.us.i, label %.preheader2562.preheader.i

.preheader2562.preheader.i:                       ; preds = %.preheader2562.lr.ph.i
  %i.bcm = add i32 %.1764.lcssa.i, 3
  %smax3449.i = call i32 @llvm.smax.i32(i32 %i.fy, i32 %i.bcm)
  %reass.sub140 = sub i32 %smax3449.i, %.1764.lcssa.i
  %i.bcn = and i32 %reass.sub140, -2              ; 2 uses
  %i.bco = add i32 %i.bcn, -2
  %i.bcp = zext i32 %i.bco to i64
  %i.bcq = add nuw nsw i64 %i.bcp, 2
  %i.bcr = mul nsw i64 %i.bcq, %i.arh
  %scevgep3450.i = getelementptr i8, ptr %.1768.lcssa.i, i64 %i.bcr
  %i.bcs = add i32 %.1764.lcssa.i, %i.bcn
  br label %.preheader2565.i

.preheader2562.lr.ph.split.us.i:                  ; preds = %.preheader2562.lr.ph.i
  %i.bct = icmp sgt i32 %.fr3240.i, 0
  br i1 %i.bct, label %.preheader2562.us.us.preheader.i, label %.preheader2562.us.preheader.i

.preheader2562.us.preheader.i:                    ; preds = %.preheader2562.lr.ph.split.us.i
  %i.bcu = add i32 %.1764.lcssa.i, 3
  %smax3451.i = call i32 @llvm.smax.i32(i32 %i.fy, i32 %i.bcu)
  %reass.sub141 = sub i32 %smax3451.i, %.1764.lcssa.i
  %i.bcv = and i32 %reass.sub141, -2              ; 2 uses
  %i.bcw = add i32 %i.bcv, -2
  %i.bcx = zext i32 %i.bcw to i64
  %i.bcy = add nuw nsw i64 %i.bcx, 2
  %i.bcz = mul nsw i64 %i.bcy, %i.arh
  %scevgep3452.i = getelementptr i8, ptr %.1768.lcssa.i, i64 %i.bcz
  %i.bda = add i32 %.1764.lcssa.i, %i.bcv
  br label %.preheader2565.i

.preheader2562.us.us.preheader.i:                 ; preds = %.preheader2562.lr.ph.split.us.i
  %i.bdb = zext nneg i32 %.fr3240.i to i64        ; 2 uses
  %i.bdc = zext i32 %.1764.lcssa.i to i64
  br label %.preheader2562.us.us.i

.preheader2562.us.us.i:                           ; preds = %._crit_edge2949.split.us.us.us.i, %.preheader2562.us.us.preheader.i
  %indvars.iv3466.i = phi i64 [ %i.bdc, %.preheader2562.us.us.preheader.i ], [ %indvars.iv.next3467.i, %._crit_edge2949.split.us.us.us.i ] ; 3 uses
  %.27692960.us.us.i = phi ptr [ %.1768.lcssa.i, %.preheader2562.us.us.preheader.i ], [ %i.bez, %._crit_edge2949.split.us.us.us.i ] ; 2 uses
  %i.bdd = phi <2 x float> [ %i.bcc, %.preheader2562.us.us.preheader.i ], [ %i.bey, %._crit_edge2949.split.us.us.us.i ]
  %i.bde = add nuw nsw i64 %indvars.iv3466.i, 1
  br label %bb.bq

bb.bq:                                            ; preds = %..loopexit2556_crit_edge.us.us.us.i, %.preheader2562.us.us.i
  %indvars.iv3461.i = phi i64 [ %indvars.iv.next3462.i, %..loopexit2556_crit_edge.us.us.us.i ], [ 0, %.preheader2562.us.us.i ] ; 3 uses
  %i.bdf = phi <2 x float> [ %i.bey, %..loopexit2556_crit_edge.us.us.us.i ], [ %i.bdd, %.preheader2562.us.us.i ] ; 3 uses
  %i.bdg = trunc i64 %indvars.iv3461.i to i32
  %i.bdh = mul i32 %i.bcf, %i.bdg
  %.reass2953.us.us.us.i = add i32 %i.bdh, %invariant.op2952.i ; 3 uses
  %i.bdi = icmp slt i32 %.reass2953.us.us.us.i, 0
  br i1 %i.bdi, label %..loopexit2556_crit_edge.us.us.us.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.bdj = srem i32 %.reass2953.us.us.us.i, %i.bch
  %i.bdk = sdiv exact i32 %.reass2953.us.us.us.i, %i.bch ; 2 uses
  %.not908.us.us.us.i = icmp eq i32 %i.bdj, 0
  %.not909.us.us.us.i = icmp slt i32 %i.bdk, %i.ga
  %or.cond327 = select i1 %.not908.us.us.us.i, i1 %.not909.us.us.us.i, i1 false
  br i1 %or.cond327, label %.preheader2555.us.us.us.i, label %..loopexit2556_crit_edge.us.us.us.i

.preheader2555.us.us.us.i:                        ; preds = %bb.br
  %i.bdl = mul nuw nsw i64 %indvars.iv3461.i, %i.bdb
  %i.bdm = sext i32 %i.bdk to i64
  %i.bdn = mul nsw i64 %i.bdm, %i.gy
  br label %bb.bs

bb.bs:                                            ; preds = %.loopexit2552.us.us.us.i, %.preheader2555.us.us.us.i
  %indvars.iv3456.i = phi i64 [ %indvars.iv.next3457.i, %.loopexit2552.us.us.us.i ], [ 0, %.preheader2555.us.us.us.i ] ; 3 uses
  %i.bdo = phi <2 x float> [ %i.bex, %.loopexit2552.us.us.us.i ], [ %i.bdf, %.preheader2555.us.us.us.i ] ; 3 uses
  %i.bdp = trunc i64 %indvars.iv3456.i to i32
  %i.bdq = mul i32 %i.bcj, %i.bdp
  %.reass2944.us.us.us.i = add i32 %invariant.op2943.i, %i.bdq ; 3 uses
  %i.bdr = icmp slt i32 %.reass2944.us.us.us.i, 0
  br i1 %i.bdr, label %.loopexit2552.us.us.us.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.bds = srem i32 %.reass2944.us.us.us.i, %i.bcl
  %i.bdt = sdiv exact i32 %.reass2944.us.us.us.i, %i.bcl ; 2 uses
  %.not910.us.us.us.i = icmp eq i32 %i.bds, 0
  %.not911.us.us.us.i = icmp slt i32 %i.bdt, %i.fz
  %or.cond328 = select i1 %.not910.us.us.us.i, i1 %.not911.us.us.us.i, i1 false
  br i1 %or.cond328, label %_ZN4ncnn3MatD2Ev.exit948.us.us.us.i, label %.loopexit2552.us.us.us.i

_ZN4ncnn3MatD2Ev.exit948.us.us.us.i:              ; preds = %bb.bt
  %i.bdu = add nuw nsw i64 %indvars.iv3456.i, %i.bdl
  %i.bdv = shl i64 %i.bdu, 2
  %i.bdw = and i64 %i.bdv, 4294967292
  %i.bdx = getelementptr inbounds nuw [2 x i8], ptr %.27692960.us.us.i, i64 %i.bdw
  %i.bdy = load ptr, ptr %1, align 8, !tbaa !20, !noalias !636
  %i.bdz = load i64, ptr %i.gj, align 8, !tbaa !21, !noalias !636
  %i.bea = load i64, ptr %i.gk, align 8, !tbaa !55, !noalias !636 ; 2 uses
  %factor.op.mul.us.us.us2979.i = mul i64 %i.bea, %i.bdz ; 2 uses
  %i.beb = mul i64 %i.bdn, %i.bea
  %invariant.gep.us.us.us2980.i = getelementptr i8, ptr %i.bdy, i64 %i.beb
  %i.bec = sext i32 %i.bdt to i64
  %invariant.gep2933.us.us.us.i = getelementptr [2 x i8], ptr %invariant.gep.us.us.us2980.i, i64 %i.bec ; 2 uses
  %.reass.us2954.us.us.i = mul i64 %factor.op.mul.us.us.us2979.i, %indvars.iv3466.i
  %gep2934.us.us.us.i = getelementptr i8, ptr %invariant.gep2933.us.us.us.i, i64 %.reass.us2954.us.us.i
  %i.bed = load i16, ptr %gep2934.us.us.us.i, align 2, !tbaa !89
  %.reass.us2954.us.us.1.i = mul i64 %factor.op.mul.us.us.us2979.i, %i.bde
  %gep2934.us.us.us.1.i = getelementptr i8, ptr %invariant.gep2933.us.us.us.i, i64 %.reass.us2954.us.us.1.i
  %i.bee = load i16, ptr %gep2934.us.us.us.1.i, align 2, !tbaa !89
  %i.bef = load <4 x i16>, ptr %i.bdx, align 2, !tbaa !89
  %i.beg = freeze <4 x i16> %i.bef
  %i.beh = bitcast <4 x i16> %i.beg to <2 x i32>  ; 2 uses
  %i.bei = and <2 x i32> %i.beh, splat (i32 -65536)
  %i.bej = shl <2 x i32> %i.beh, splat (i32 16)
  %i.bek = bitcast <2 x i32> %i.bej to <2 x float>
  %i.bel = insertelement <2 x i16> poison, i16 %i.bee, i64 0
  %i.bem = insertelement <2 x i16> %i.bel, i16 %i.bed, i64 1
  %i.ben = zext <2 x i16> %i.bem to <2 x i32>
  %i.beo = shl nuw <2 x i32> %i.ben, splat (i32 16)
  %i.bep = bitcast <2 x i32> %i.beo to <2 x float> ; 2 uses
  %i.beq = shufflevector <2 x float> %i.bep, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ber = fmul fast <2 x float> %i.beq, %i.bek
  %i.bes = fadd fast <2 x float> %i.bdo, %i.ber
  %i.bet = bitcast <2 x i32> %i.bei to <2 x float>
  %i.beu = shufflevector <2 x float> %i.bep, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bev = fmul fast <2 x float> %i.beu, %i.bet
  %i.bew = fadd fast <2 x float> %i.bev, %i.bes
  br label %.loopexit2552.us.us.us.i

.loopexit2552.us.us.us.i:                         ; preds = %_ZN4ncnn3MatD2Ev.exit948.us.us.us.i, %bb.bt, %bb.bs
  %i.bex = phi <2 x float> [ %i.bdo, %bb.bs ], [ %i.bdo, %bb.bt ], [ %i.bew, %_ZN4ncnn3MatD2Ev.exit948.us.us.us.i ] ; 2 uses
  %indvars.iv.next3457.i = add nuw nsw i64 %indvars.iv3456.i, 1 ; 2 uses
  %exitcond3460.not.i = icmp eq i64 %indvars.iv.next3457.i, %i.bdb
  br i1 %exitcond3460.not.i, label %..loopexit2556_crit_edge.us.us.us.i, label %bb.bs, !llvm.loop !580

..loopexit2556_crit_edge.us.us.us.i:              ; preds = %.loopexit2552.us.us.us.i, %bb.br, %bb.bq
  %i.bey = phi <2 x float> [ %i.bdf, %bb.bq ], [ %i.bdf, %bb.br ], [ %i.bex, %.loopexit2552.us.us.us.i ] ; 3 uses
  %indvars.iv.next3462.i = add nuw nsw i64 %indvars.iv3461.i, 1 ; 2 uses
  %exitcond3465.not.i = icmp eq i64 %indvars.iv.next3462.i, %wide.trip.count3418.i
  br i1 %exitcond3465.not.i, label %._crit_edge2949.split.us.us.us.i, label %bb.bq, !llvm.loop !581

._crit_edge2949.split.us.us.us.i:                 ; preds = %..loopexit2556_crit_edge.us.us.us.i
  %i.bez = getelementptr inbounds [2 x i8], ptr %.27692960.us.us.i, i64 %i.arh ; 2 uses
  %indvars.iv.next3467.i = add nuw nsw i64 %indvars.iv3466.i, 2 ; 2 uses
  %i.bfa = trunc i64 %indvars.iv.next3467.i to i32 ; 2 uses
  %i.bfb = or i32 %i.bfa, 1
  %i.bfc = icmp slt i32 %i.bfb, %i.fy
  br i1 %i.bfc, label %.preheader2562.us.us.i, label %.preheader2565.i, !llvm.loop !582

.preheader2565.i:                                 ; preds = %._crit_edge2949.split.us.us.us.i, %.preheader2562.us.preheader.i, %.preheader2562.preheader.i, %._crit_edge2911.i
  %.2769.lcssa.i = phi ptr [ %.1768.lcssa.i, %._crit_edge2911.i ], [ %scevgep3450.i, %.preheader2562.preheader.i ], [ %scevgep3452.i, %.preheader2562.us.preheader.i ], [ %i.bez, %._crit_edge2949.split.us.us.us.i ]
  %.2765.lcssa.i = phi i32 [ %.1764.lcssa.i, %._crit_edge2911.i ], [ %i.bcs, %.preheader2562.preheader.i ], [ %i.bda, %.preheader2562.us.preheader.i ], [ %i.bfa, %._crit_edge2949.split.us.us.us.i ] ; 2 uses
  %i.bfd = phi <2 x float> [ %i.bcc, %._crit_edge2911.i ], [ %i.bcc, %.preheader2562.preheader.i ], [ %i.bcc, %.preheader2562.us.preheader.i ], [ %i.bey, %._crit_edge2949.split.us.us.us.i ] ; 3 uses
  %i.bfe = icmp slt i32 %.2765.lcssa.i, %i.fy
  br i1 %i.bfe, label %.preheader2561.lr.ph.i, label %._crit_edge3009.i

.preheader2561.lr.ph.i:                           ; preds = %.preheader2565.i
  %i.bff = load i32, ptr %i.d, align 4
  %i.bfg = load i32, ptr %i.j, align 4
  %invariant.op2998.i = sub i32 %.neg2520.i, %i.bfg
  %i.bfh = load i32, ptr %i.f, align 4            ; 2 uses
  %i.bfi = load i32, ptr %i.a, align 4
  %.fr3241.i = freeze i32 %i.bfi                  ; 2 uses
  %i.bfj = load i32, ptr %i.c, align 4
  %i.bfk = load i32, ptr %i.i, align 4
  %.neg2510.i = add nuw nsw i32 %.08033025.i, 1
  %invariant.op2990.i = sub i32 %.neg2510.i, %i.bfk
  %i.bfl = load i32, ptr %i.e, align 4            ; 2 uses
  %i.bfm = icmp sgt i32 %.fr3241.i, 0
  %or.cond3757.i = and i1 %i.ara, %i.bfm
  br i1 %or.cond3757.i, label %.preheader2561.us.us.preheader.i, label %._crit_edge3009.i

.preheader2561.us.us.preheader.i:                 ; preds = %.preheader2561.lr.ph.i
  %i.bfn = zext nneg i32 %.fr3241.i to i64        ; 2 uses
  %i.bfo = zext i32 %.2765.lcssa.i to i64
  br label %.preheader2561.us.us.i

.preheader2561.us.us.i:                           ; preds = %._crit_edge2995.split.us.us.us.i, %.preheader2561.us.us.preheader.i
  %indvars.iv3479.i = phi i64 [ %i.bfo, %.preheader2561.us.us.preheader.i ], [ %indvars.iv.next3480.i, %._crit_edge2995.split.us.us.us.i ] ; 2 uses
  %.37703006.us.us.i = phi ptr [ %.2769.lcssa.i, %.preheader2561.us.us.preheader.i ], [ %i.bhf, %._crit_edge2995.split.us.us.us.i ] ; 2 uses
  %i.bfp = phi <2 x float> [ %i.bfd, %.preheader2561.us.us.preheader.i ], [ %i.bhe, %._crit_edge2995.split.us.us.us.i ]
  br label %bb.bu

bb.bu:                                            ; preds = %..loopexit2554_crit_edge.us.us.us.i, %.preheader2561.us.us.i
  %indvars.iv3474.i = phi i64 [ %indvars.iv.next3475.i, %..loopexit2554_crit_edge.us.us.us.i ], [ 0, %.preheader2561.us.us.i ] ; 3 uses
  %i.bfq = phi <2 x float> [ %i.bhe, %..loopexit2554_crit_edge.us.us.us.i ], [ %i.bfp, %.preheader2561.us.us.i ] ; 3 uses
  %i.bfr = trunc i64 %indvars.iv3474.i to i32
  %i.bfs = mul i32 %i.bff, %i.bfr
  %.reass2999.us.us.us.i = add i32 %i.bfs, %invariant.op2998.i ; 3 uses
  %i.bft = icmp slt i32 %.reass2999.us.us.us.i, 0
  br i1 %i.bft, label %..loopexit2554_crit_edge.us.us.us.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.bfu = srem i32 %.reass2999.us.us.us.i, %i.bfh
  %i.bfv = sdiv exact i32 %.reass2999.us.us.us.i, %i.bfh ; 2 uses
  %.not904.us.us.us.i = icmp eq i32 %i.bfu, 0
  %.not905.us.us.us.i = icmp slt i32 %i.bfv, %i.ga
  %or.cond329 = select i1 %.not904.us.us.us.i, i1 %.not905.us.us.us.i, i1 false
  br i1 %or.cond329, label %.preheader2553.us.us.us.i, label %..loopexit2554_crit_edge.us.us.us.i

.preheader2553.us.us.us.i:                        ; preds = %bb.bv
  %i.bfw = mul nuw nsw i64 %indvars.iv3474.i, %i.bfn
  %i.bfx = sext i32 %i.bfv to i64
  %i.bfy = mul nsw i64 %i.bfx, %i.gy
  br label %bb.bw

bb.bw:                                            ; preds = %bb.by, %.preheader2553.us.us.us.i
  %indvars.iv3469.i = phi i64 [ %indvars.iv.next3470.i, %bb.by ], [ 0, %.preheader2553.us.us.us.i ] ; 3 uses
  %i.bfz = phi <2 x float> [ %i.bhd, %bb.by ], [ %i.bfq, %.preheader2553.us.us.us.i ] ; 3 uses
  %i.bga = trunc i64 %indvars.iv3469.i to i32
  %i.bgb = mul i32 %i.bfj, %i.bga
  %.reass.us3000.us.us.i = add i32 %invariant.op2990.i, %i.bgb ; 3 uses
  %i.bgc = icmp slt i32 %.reass.us3000.us.us.i, 0
  br i1 %i.bgc, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.bgd = srem i32 %.reass.us3000.us.us.i, %i.bfl
  %i.bge = sdiv exact i32 %.reass.us3000.us.us.i, %i.bfl ; 2 uses
  %.not906.us.us.us.i = icmp eq i32 %i.bgd, 0
  %.not907.us.us.us.i = icmp slt i32 %i.bge, %i.fz
  %or.cond330 = select i1 %.not906.us.us.us.i, i1 %.not907.us.us.us.i, i1 false
  br i1 %or.cond330, label %_ZN4ncnn3MatD2Ev.exit947.us.us.us.i, label %bb.by

_ZN4ncnn3MatD2Ev.exit947.us.us.us.i:              ; preds = %bb.bx
  %i.bgf = add nuw nsw i64 %indvars.iv3469.i, %i.bfw
  %.idx3648.i = shl nuw nsw i64 %i.bgf, 2
  %i.bgg = getelementptr inbounds nuw i8, ptr %.37703006.us.us.i, i64 %.idx3648.i
  %i.bgh = load ptr, ptr %1, align 8, !tbaa !20, !noalias !637
  %i.bgi = load i64, ptr %i.gj, align 8, !tbaa !21, !noalias !637
  %i.bgj = mul i64 %i.bgi, %indvars.iv3479.i
  %i.bgk = load i64, ptr %i.gk, align 8, !tbaa !55, !noalias !637 ; 2 uses
  %i.bgl = mul i64 %i.bgj, %i.bgk
  %i.bgm = getelementptr inbounds nuw i8, ptr %i.bgh, i64 %i.bgl
  %i.bgn = mul i64 %i.bfy, %i.bgk
  %i.bgo = getelementptr inbounds nuw i8, ptr %i.bgm, i64 %i.bgn
  %i.bgp = sext i32 %i.bge to i64
  %i.bgq = getelementptr inbounds [2 x i8], ptr %i.bgo, i64 %i.bgp
  %i.bgr = load i16, ptr %i.bgq, align 2, !tbaa !89
  %i.bgs = zext i16 %i.bgr to i32
  %i.bgt = shl nuw i32 %i.bgs, 16
  %i.bgu = load <2 x i16>, ptr %i.bgg, align 2, !tbaa !89
  %i.bgv = zext <2 x i16> %i.bgu to <2 x i32>
  %i.bgw = shl nuw <2 x i32> %i.bgv, splat (i32 16)
  %i.bgx = bitcast <2 x i32> %i.bgw to <2 x float>
  %i.bgy = insertelement <2 x i32> poison, i32 %i.bgt, i64 0
  %i.bgz = bitcast <2 x i32> %i.bgy to <2 x float>
  %i.bha = shufflevector <2 x float> %i.bgz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bhb = fmul fast <2 x float> %i.bha, %i.bgx
  %i.bhc = fadd fast <2 x float> %i.bhb, %i.bfz
  br label %bb.by

bb.by:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit947.us.us.us.i, %bb.bx, %bb.bw
  %i.bhd = phi <2 x float> [ %i.bfz, %bb.bw ], [ %i.bfz, %bb.bx ], [ %i.bhc, %_ZN4ncnn3MatD2Ev.exit947.us.us.us.i ] ; 2 uses
  %indvars.iv.next3470.i = add nuw nsw i64 %indvars.iv3469.i, 1 ; 2 uses
  %exitcond3473.not.i = icmp eq i64 %indvars.iv.next3470.i, %i.bfn
  br i1 %exitcond3473.not.i, label %..loopexit2554_crit_edge.us.us.us.i, label %bb.bw, !llvm.loop !585

..loopexit2554_crit_edge.us.us.us.i:              ; preds = %bb.by, %bb.bv, %bb.bu
  %i.bhe = phi <2 x float> [ %i.bfq, %bb.bu ], [ %i.bfq, %bb.bv ], [ %i.bhd, %bb.by ] ; 3 uses
  %indvars.iv.next3475.i = add nuw nsw i64 %indvars.iv3474.i, 1 ; 2 uses
  %exitcond3478.not.i = icmp eq i64 %indvars.iv.next3475.i, %wide.trip.count3418.i
  br i1 %exitcond3478.not.i, label %._crit_edge2995.split.us.us.us.i, label %bb.bu, !llvm.loop !586

._crit_edge2995.split.us.us.us.i:                 ; preds = %..loopexit2554_crit_edge.us.us.us.i
  %i.bhf = getelementptr inbounds [2 x i8], ptr %.37703006.us.us.i, i64 %i.arj
  %indvars.iv.next3480.i = add nuw nsw i64 %indvars.iv3479.i, 1 ; 2 uses
  %i.bhg = trunc nuw i64 %indvars.iv.next3480.i to i32
  %i.bhh = icmp sgt i32 %i.fy, %i.bhg
  br i1 %i.bhh, label %.preheader2561.us.us.i, label %._crit_edge3009.i, !llvm.loop !587

._crit_edge3009.i:                                ; preds = %._crit_edge2995.split.us.us.us.i, %.preheader2561.lr.ph.i, %.preheader2565.i
  %i.bhi = phi <2 x float> [ %i.bfd, %.preheader2565.i ], [ %i.bfd, %.preheader2561.lr.ph.i ], [ %i.bhe, %._crit_edge2995.split.us.us.us.i ] ; 12 uses
  switch i32 %i.aqx, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2468.i
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2471.i
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2465.i
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2474.i
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2477.i
    i32 6, label %bb.bz
  ]

_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2468.i: ; preds = %._crit_edge3009.i
  %i.bhj = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bhi, <2 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2471.i: ; preds = %._crit_edge3009.i
  %i.bhk = load ptr, ptr %i.eg, align 8, !tbaa !20
  %i.bhl = load float, ptr %i.bhk, align 4, !tbaa !39
  %i.bhm = fcmp fast ogt <2 x float> %i.bhi, zeroinitializer
  %i.bhn = insertelement <2 x float> poison, float %i.bhl, i64 0
  %i.bho = shufflevector <2 x float> %i.bhn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bhp = select <2 x i1> %i.bhm, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bho
  %i.bhq = fmul fast <2 x float> %i.bhp, %i.bhi
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2465.i: ; preds = %._crit_edge3009.i
  %i.bhr = load ptr, ptr %i.eg, align 8, !tbaa !20 ; 2 uses
  %i.bhs = load float, ptr %i.bhr, align 4, !tbaa !39 ; 2 uses
  %i.bht = getelementptr inbounds nuw i8, ptr %i.bhr, i64 4
  %i.bhu = load float, ptr %i.bht, align 4, !tbaa !39 ; 3 uses
  %i.bhv = extractelement <2 x float> %i.bhi, i64 0
  %spec.select.i = call nnan ninf nsz float @llvm.maxnum.f32(float %i.bhv, float %i.bhs) ; 2 uses
  %i.bhw = fcmp fast ogt float %spec.select.i, %i.bhu
  %.123772467.i = select i1 %i.bhw, float %i.bhu, float %spec.select.i
  %i.bhx = extractelement <2 x float> %i.bhi, i64 1
  %.02378.i = call nnan ninf nsz float @llvm.maxnum.f32(float %i.bhx, float %i.bhs)
  %spec.select2490.i = call nnan ninf nsz float @llvm.minnum.f32(float %.02378.i, float %i.bhu)
  %i.bhy = insertelement <2 x float> poison, float %.123772467.i, i64 0
  %i.bhz = insertelement <2 x float> %i.bhy, float %spec.select2490.i, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2474.i: ; preds = %._crit_edge3009.i
  %i.bia = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.bhi, <2 x float> splat (float f0x42B0C0A5))
  %i.bib = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bia, <2 x float> splat (float f0xC2B0C0A5))
  %i.bic = fneg fast <2 x float> %i.bib
  %i.bid = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.bic)
  %i.bie = fadd fast <2 x float> %i.bid, splat (float 1.000000e+00)
  %i.bif = fdiv fast <2 x float> splat (float 1.000000e+00), %i.bie
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2477.i: ; preds = %._crit_edge3009.i
  %i.big = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.bhi)
  %i.bih = fadd fast <2 x float> %i.big, splat (float 1.000000e+00)
  %i.bii = call fast <2 x float> @llvm.log.v2f32(<2 x float> %i.bih)
  %i.bij = call fast <2 x float> @llvm.tanh.v2f32(<2 x float> %i.bii)
  %i.bik = fmul fast <2 x float> %i.bij, %i.bhi
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i

bb.bz:                                            ; preds = %._crit_edge3009.i
  %i.bil = load ptr, ptr %i.eg, align 8, !tbaa !20 ; 2 uses
  %i.bim = load float, ptr %i.bil, align 4, !tbaa !39 ; 5 uses
  %i.bin = getelementptr inbounds nuw i8, ptr %i.bil, i64 4
  %i.bio = load float, ptr %i.bin, align 4, !tbaa !39 ; 3 uses
  %i.bip = fneg fast float %i.bio
  %i.biq = fdiv fast float %i.bip, %i.bim         ; 4 uses
  %i.bir = extractelement <2 x float> %i.bhi, i64 0 ; 5 uses
  %i.bis = fcmp fast olt float %i.bir, %i.biq
  br i1 %i.bis, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.bit = fdiv fast float 1.000000e+00, %i.bim
  %i.biu = fadd fast float %i.biq, %i.bit
  %i.biv = fcmp fast ogt float %i.bir, %i.biu
  br i1 %i.biv, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.biw = fmul fast float %i.bim, %i.bir
  %i.bix = fadd fast float %i.biw, %i.bio
  %i.biy = fmul fast float %i.bix, %i.bir
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread.i: ; preds = %bb.cb, %bb.ca, %bb.bz
  %.123772461.i = phi float [ %i.biy, %bb.cb ], [ 0.000000e+00, %bb.bz ], [ %i.bir, %bb.ca ] ; 2 uses
  %i.biz = extractelement <2 x float> %i.bhi, i64 1 ; 4 uses
  %i.bja = fcmp fast olt float %i.biz, %i.biq
  %i.bjb = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.123772461.i, i64 0 ; 2 uses
  br i1 %i.bja, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i, label %bb.cc

bb.cc:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread.i
  %i.bjc = fdiv fast float 1.000000e+00, %i.bim
  %i.bjd = fadd fast float %i.biq, %i.bjc
  %i.bje = fcmp fast ogt float %i.biz, %i.bjd
  %i.bjf = insertelement <2 x float> %i.bhi, float %.123772461.i, i64 0
  br i1 %i.bje, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.bjg = fmul fast float %i.bim, %i.biz
  %i.bjh = fadd fast float %i.bjg, %i.bio
  %i.bji = fmul fast float %i.bjh, %i.biz
  %i.bjj = insertelement <2 x float> %i.bjb, float %i.bji, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i:     ; preds = %bb.cd, %bb.cc, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2477.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2474.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2465.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2471.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2468.i, %._crit_edge3009.i
  %i.bjk = phi <2 x float> [ %i.bjb, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread.i ], [ %i.bhj, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2468.i ], [ %i.bhq, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2471.i ], [ %i.bhi, %._crit_edge3009.i ], [ %i.bhz, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2465.i ], [ %i.bif, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2474.i ], [ %i.bik, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2477.i ], [ %i.bjj, %bb.cd ], [ %i.bjf, %bb.cc ]
  %i.bjl = bitcast <2 x float> %i.bjk to <2 x i32>
  %i.bjm = lshr <2 x i32> %i.bjl, splat (i32 16)
  %i.bjn = trunc nuw <2 x i32> %i.bjm to <2 x i16> ; 2 uses
  %i.bjo = extractelement <2 x i16> %i.bjn, i64 0
  store i16 %i.bjo, ptr %.18083023.i, align 2, !tbaa !89
  %i.bjp = extractelement <2 x i16> %i.bjn, i64 1
  store i16 %i.bjp, ptr %.18063024.i, align 2, !tbaa !89
  %i.bjq = getelementptr inbounds nuw i8, ptr %.18083023.i, i64 2 ; 2 uses
  %i.bjr = getelementptr inbounds nuw i8, ptr %.18063024.i, i64 2 ; 2 uses
  %i.bjs = add nuw nsw i32 %.08033025.i, 1        ; 2 uses
  %exitcond3482.not.i = icmp eq i32 %i.bjs, %i.gb
  br i1 %exitcond3482.not.i, label %._crit_edge3026.i, label %bb.bc, !llvm.loop !588

_ZN4ncnn3MatD2Ev.exit946.i:                       ; preds = %._crit_edge3222.i, %_ZN4ncnn3MatD2Ev.exit946.lr.ph.split.split.i
  %indvars.iv3571.i = phi i64 [ %i.aqd, %_ZN4ncnn3MatD2Ev.exit946.lr.ph.split.split.i ], [ %indvars.iv.next3572.i, %._crit_edge3222.i ] ; 4 uses
  %.reass3226.i = mul i64 %factor.op.mul3225.i, %indvars.iv3571.i
  %i.bjt = getelementptr inbounds nuw i8, ptr %i.aph, i64 %.reass3226.i
  %i.bju = load ptr, ptr %i.l, align 8            ; 2 uses
  %.not.i43 = icmp eq ptr %i.bju, null
  %i.bjv = getelementptr inbounds [4 x i8], ptr %i.bju, i64 %indvars.iv3571.i
  %i.bjw = trunc nsw i64 %indvars.iv3571.i to i32 ; 4 uses
  %i.bjx = sdiv i32 %i.bjw, 8
  %i.bjy = srem i32 %i.bjw, 8
  %.lhs.trunc2484.i = trunc nsw i32 %i.bjy to i8
  %i.bjz = sdiv i8 %.lhs.trunc2484.i, 4
  %.sext2485.i = sext i8 %i.bjz to i32
  %i.bka = srem i32 %i.bjw, 4
  %.lhs.trunc2486.i = trunc nsw i32 %i.bka to i8
  %i.bkb = sdiv i8 %.lhs.trunc2486.i, 2
  %.sext2487.i = sext i8 %i.bkb to i32
  %i.bkc = srem i32 %i.bjw, 2
  %i.bkd = add nsw i32 %i.bkc, %i.bjx
  %i.bke = add nsw i32 %i.bkd, %.sext2485.i
  %i.bkf = add nsw i32 %i.bke, %.sext2487.i
  %i.bkg = sext i32 %i.bkf to i64
  %i.bkh = load i32, ptr %i.g, align 4
  %.reass3229.i = mul i64 %factor.op.mul3228.i, %i.bkg
  %i.bki = getelementptr i8, ptr %i.apr, i64 %.reass3229.i ; 3 uses
  br label %.preheader2551.i

.preheader2551.i:                                 ; preds = %._crit_edge3218.i, %_ZN4ncnn3MatD2Ev.exit946.i
  %.07333221.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit946.i ], [ %.neg2504.i, %._crit_edge3218.i ]
  %.07343220.i = phi ptr [ %i.bjt, %_ZN4ncnn3MatD2Ev.exit946.i ], [ %i.cab, %._crit_edge3218.i ]
  %i.bkj = load i32, ptr %i.b, align 4            ; 2 uses
  %i.bkk = icmp sgt i32 %i.bkj, 0                 ; 4 uses
  %.neg2504.i = add nuw nsw i32 %.07333221.i, 1   ; 6 uses
  %i.bkl = load i32, ptr %i.k, align 4            ; 4 uses
  %i.bkm = shl i32 %i.bkl, 3
  %i.bkn = sext i32 %i.bkm to i64                 ; 2 uses
  %i.bko = shl i32 %i.bkl, 2
  %i.bkp = sext i32 %i.bko to i64                 ; 3 uses
  %i.bkq = shl i32 %i.bkl, 1
  %i.bkr = sext i32 %i.bkq to i64                 ; 3 uses
  %i.bks = sext i32 %i.bkl to i64
  %i.bkt = mul nsw i64 %i.bkn, %i.apx
  %scevgep3490.i = getelementptr i8, ptr %i.bki, i64 %i.bkt
  %wide.trip.count3505.i = zext nneg i32 %i.bkj to i64 ; 5 uses
  br label %bb.ce

._crit_edge3222.i:                                ; preds = %._crit_edge3218.i
  %indvars.iv.next3572.i = add nsw i64 %indvars.iv3571.i, 1 ; 2 uses
  %i.bku = icmp slt i64 %indvars.iv.next3572.i, %i.aqe
  br i1 %i.bku, label %_ZN4ncnn3MatD2Ev.exit946.i, label %.loopexit, !llvm.loop !589

._crit_edge3218.i:                                ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i
  %exitcond3570.not.i = icmp eq i32 %.neg2504.i, %i.apg
  br i1 %exitcond3570.not.i, label %._crit_edge3222.i, label %.preheader2551.i, !llvm.loop !590

bb.ce:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i, %.preheader2551.i
  %.07323217.i = phi i32 [ 0, %.preheader2551.i ], [ %i.cac, %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i ] ; 5 uses
  %.17353216.i = phi ptr [ %.07343220.i, %.preheader2551.i ], [ %i.cab, %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i ] ; 2 uses
  br i1 %.not.i43, label %_ZN4ncnn3MatD2Ev.exit945.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.bkv = load float, ptr %i.bjv, align 4, !tbaa !39
  br label %_ZN4ncnn3MatD2Ev.exit945.i

_ZN4ncnn3MatD2Ev.exit945.i:                       ; preds = %bb.cf, %bb.ce
  %.0728.i = phi nsz float [ %i.bkv, %bb.cf ], [ 0.000000e+00, %bb.ce ]
  br i1 %i.apm, label %.preheader2549.lr.ph.i, label %._crit_edge3066.i

.preheader2549.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit945.i
  %i.bkw = load i32, ptr %i.d, align 4
  %i.bkx = load i32, ptr %i.j, align 4
  %invariant.op3057.i = sub i32 %.neg2504.i, %i.bkx
  %i.bky = load i32, ptr %i.f, align 4            ; 2 uses
  %i.bkz = load i32, ptr %i.a, align 4
  %.fr3242.i = freeze i32 %i.bkz                  ; 2 uses
  %i.bla = load i32, ptr %i.c, align 4
  %i.blb = load i32, ptr %i.i, align 4
  %.neg2506.i = add nuw nsw i32 %.07323217.i, 1
  %invariant.op3050.i = sub i32 %.neg2506.i, %i.blb
  %i.blc = load i32, ptr %i.e, align 4            ; 2 uses
  %i.bld = icmp sgt i32 %.fr3242.i, 0
  %or.cond3758.i = and i1 %i.bkk, %i.bld
  br i1 %or.cond3758.i, label %.preheader2549.us.us.preheader.i, label %._crit_edge3066.i

.preheader2549.us.us.preheader.i:                 ; preds = %.preheader2549.lr.ph.i
  %i.ble = zext nneg i32 %.fr3242.i to i64        ; 2 uses
  br label %.preheader2549.us.us.i

.preheader2549.us.us.i:                           ; preds = %._crit_edge3055.split.us.us.us.i, %.preheader2549.us.us.preheader.i
  %indvars.iv3507.i = phi i64 [ 0, %.preheader2549.us.us.preheader.i ], [ %indvars.iv.next3508.i, %._crit_edge3055.split.us.us.us.i ] ; 11 uses
  %.07243062.us.us.i = phi ptr [ %i.bki, %.preheader2549.us.us.preheader.i ], [ %i.bpe, %._crit_edge3055.split.us.us.us.i ] ; 2 uses
  %.024343061.us.us.i = phi <8 x float> [ zeroinitializer, %.preheader2549.us.us.preheader.i ], [ %.42438.us.us.us.i, %._crit_edge3055.split.us.us.us.i ]
  %i.blf = lshr exact i64 %indvars.iv3507.i, 2    ; 2 uses
  %i.blg = or disjoint i64 %i.blf, 1
  %i.blh = lshr exact i64 %indvars.iv3507.i, 3
  %i.bli = or disjoint i64 %indvars.iv3507.i, 1
  %i.blj = or disjoint i64 %indvars.iv3507.i, 2
  %i.blk = or disjoint i64 %indvars.iv3507.i, 3
  %i.bll = or disjoint i64 %indvars.iv3507.i, 4
  %i.blm = or disjoint i64 %indvars.iv3507.i, 5
  %i.bln = or disjoint i64 %indvars.iv3507.i, 6
  %i.blo = or disjoint i64 %indvars.iv3507.i, 7
  br label %bb.cg

bb.cg:                                            ; preds = %..loopexit2545_crit_edge.us.us.us.i, %.preheader2549.us.us.i
  %indvars.iv3502.i = phi i64 [ %indvars.iv.next3503.i, %..loopexit2545_crit_edge.us.us.us.i ], [ 0, %.preheader2549.us.us.i ] ; 3 uses
  %.124353052.us.us.us.i = phi <8 x float> [ %.42438.us.us.us.i, %..loopexit2545_crit_edge.us.us.us.i ], [ %.024343061.us.us.i, %.preheader2549.us.us.i ] ; 3 uses
  %i.blp = trunc i64 %indvars.iv3502.i to i32
  %i.blq = mul i32 %i.bkw, %i.blp
  %.reass3058.us.us.us.i = add i32 %i.blq, %invariant.op3057.i ; 3 uses
  %i.blr = icmp slt i32 %.reass3058.us.us.us.i, 0
  br i1 %i.blr, label %..loopexit2545_crit_edge.us.us.us.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.bls = srem i32 %.reass3058.us.us.us.i, %i.bky
  %i.blt = sdiv exact i32 %.reass3058.us.us.us.i, %i.bky ; 2 uses
  %.not899.us.us.us.i = icmp eq i32 %i.bls, 0
  %.not900.us.us.us.i = icmp slt i32 %i.blt, %i.ape
  %or.cond331 = select i1 %.not899.us.us.us.i, i1 %.not900.us.us.us.i, i1 false
  br i1 %or.cond331, label %.preheader2544.us.us.us.i, label %..loopexit2545_crit_edge.us.us.us.i

.preheader2544.us.us.us.i:                        ; preds = %bb.ch
  %i.blu = mul nuw nsw i64 %indvars.iv3502.i, %i.ble
  %i.blv = sext i32 %i.blt to i64
  %i.blw = mul nsw i64 %i.blv, %i.aqf             ; 3 uses
  br label %bb.ci

bb.ci:                                            ; preds = %bb.cl, %.preheader2544.us.us.us.i
  %indvars.iv3497.i = phi i64 [ %indvars.iv.next3498.i, %bb.cl ], [ 0, %.preheader2544.us.us.us.i ] ; 3 uses
  %.224363047.us.us.us.i = phi <8 x float> [ %.32437.us.us.us.i, %bb.cl ], [ %.124353052.us.us.us.i, %.preheader2544.us.us.us.i ] ; 4 uses
  %i.blx = trunc i64 %indvars.iv3497.i to i32
  %i.bly = mul i32 %i.bla, %i.blx
  %.reass3051.us.us.us.i = add i32 %invariant.op3050.i, %i.bly ; 3 uses
  %i.blz = icmp slt i32 %.reass3051.us.us.us.i, 0
  br i1 %i.blz, label %bb.cl, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.bma = srem i32 %.reass3051.us.us.us.i, %i.blc
  %i.bmb = sdiv exact i32 %.reass3051.us.us.us.i, %i.blc ; 4 uses
  %.not901.us.us.us.i = icmp eq i32 %i.bma, 0
  %.not902.us.us.us.i = icmp slt i32 %i.bmb, %i.apd
  %or.cond332 = select i1 %.not901.us.us.us.i, i1 %.not902.us.us.us.i, i1 false
  br i1 %or.cond332, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.bmc = add nuw nsw i64 %indvars.iv3497.i, %i.blu
  %i.bmd = shl i64 %i.bmc, 3
  %i.bme = and i64 %i.bmd, 4294967288
  %i.bmf = getelementptr inbounds nuw [2 x i8], ptr %.07243062.us.us.i, i64 %i.bme
  switch i32 %.fr3104.i, label %bb.cl [
    i32 8, label %_ZN4ncnn3MatD2Ev.exit944.us.us.us.i
    i32 4, label %_ZN4ncnn3MatD2Ev.exit943.us.us.us.i
    i32 1, label %_ZN4ncnn3MatD2Ev.exit941.us.us.us.i
  ]

_ZN4ncnn3MatD2Ev.exit941.us.us.us.i:              ; preds = %bb.ck
  %i.bmg = load ptr, ptr %1, align 8, !tbaa !20, !noalias !638
  %i.bmh = load i64, ptr %i.apn, align 8, !tbaa !21, !noalias !638
  %i.bmi = load i64, ptr %i.apo, align 8, !tbaa !55, !noalias !638 ; 2 uses
  %factor.op.mul3042.us.us.us.i = mul i64 %i.bmi, %i.bmh ; 8 uses
  %i.bmj = mul i64 %i.blw, %i.bmi
  %invariant.gep.us.us.us3080.i = getelementptr i8, ptr %i.bmg, i64 %i.bmj
  %i.bmk = sext i32 %i.bmb to i64
  %invariant.gep3044.us.us.us.i = getelementptr [2 x i8], ptr %invariant.gep.us.us.us3080.i, i64 %i.bmk ; 8 uses
  %.reass3043.us.us.us.i = mul i64 %factor.op.mul3042.us.us.us.i, %indvars.iv3507.i
  %gep3045.us.us.us.i = getelementptr i8, ptr %invariant.gep3044.us.us.us.i, i64 %.reass3043.us.us.us.i
  %i.bml = load i16, ptr %gep3045.us.us.us.i, align 2, !tbaa !89
  %.reass3043.us.us.us.1.i = mul i64 %factor.op.mul3042.us.us.us.i, %i.bli
  %gep3045.us.us.us.1.i = getelementptr i8, ptr %invariant.gep3044.us.us.us.i, i64 %.reass3043.us.us.us.1.i
  %i.bmm = load i16, ptr %gep3045.us.us.us.1.i, align 2, !tbaa !89
  %.reass3043.us.us.us.2.i = mul i64 %factor.op.mul3042.us.us.us.i, %i.blj
  %gep3045.us.us.us.2.i = getelementptr i8, ptr %invariant.gep3044.us.us.us.i, i64 %.reass3043.us.us.us.2.i
  %i.bmn = load i16, ptr %gep3045.us.us.us.2.i, align 2, !tbaa !89
  %.reass3043.us.us.us.3.i = mul i64 %factor.op.mul3042.us.us.us.i, %i.blk
  %gep3045.us.us.us.3.i = getelementptr i8, ptr %invariant.gep3044.us.us.us.i, i64 %.reass3043.us.us.us.3.i
  %i.bmo = load i16, ptr %gep3045.us.us.us.3.i, align 2, !tbaa !89
  %.reass3043.us.us.us.4.i = mul i64 %factor.op.mul3042.us.us.us.i, %i.bll
  %gep3045.us.us.us.4.i = getelementptr i8, ptr %invariant.gep3044.us.us.us.i, i64 %.reass3043.us.us.us.4.i
  %i.bmp = load i16, ptr %gep3045.us.us.us.4.i, align 2, !tbaa !89
  %.reass3043.us.us.us.5.i = mul i64 %factor.op.mul3042.us.us.us.i, %i.blm
  %gep3045.us.us.us.5.i = getelementptr i8, ptr %invariant.gep3044.us.us.us.i, i64 %.reass3043.us.us.us.5.i
  %i.bmq = load i16, ptr %gep3045.us.us.us.5.i, align 2, !tbaa !89
  %.reass3043.us.us.us.6.i = mul i64 %factor.op.mul3042.us.us.us.i, %i.bln
  %gep3045.us.us.us.6.i = getelementptr i8, ptr %invariant.gep3044.us.us.us.i, i64 %.reass3043.us.us.us.6.i
  %i.bmr = load i16, ptr %gep3045.us.us.us.6.i, align 2, !tbaa !89
  %.reass3043.us.us.us.7.i = mul i64 %factor.op.mul3042.us.us.us.i, %i.blo
  %gep3045.us.us.us.7.i = getelementptr i8, ptr %invariant.gep3044.us.us.us.i, i64 %.reass3043.us.us.us.7.i
  %i.bms = load i16, ptr %gep3045.us.us.us.7.i, align 2, !tbaa !89
  %i.bmt = insertelement <4 x i16> poison, i16 %i.bmp, i64 0
  %i.bmu = insertelement <4 x i16> %i.bmt, i16 %i.bmq, i64 1
  %i.bmv = insertelement <4 x i16> %i.bmu, i16 %i.bmr, i64 2
  %i.bmw = insertelement <4 x i16> %i.bmv, i16 %i.bms, i64 3
  %i.bmx = zext <4 x i16> %i.bmw to <4 x i32>
  %i.bmy = zext i16 %i.bmo to i32
  %i.bmz = zext i16 %i.bmn to i32
  %i.bna = zext i16 %i.bmm to i32
  %i.bnb = zext i16 %i.bml to i32
  %i.bnc = insertelement <8 x i32> poison, i32 %i.bnb, i64 0
  %i.bnd = insertelement <8 x i32> %i.bnc, i32 %i.bna, i64 1
  %i.bne = insertelement <8 x i32> %i.bnd, i32 %i.bmz, i64 2
  %i.bnf = insertelement <8 x i32> %i.bne, i32 %i.bmy, i64 3
  %i.bng = shufflevector <4 x i32> %i.bmx, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bnh = shufflevector <8 x i32> %i.bnf, <8 x i32> %i.bng, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.bni = shl nuw <8 x i32> %i.bnh, splat (i32 16)
  %.sroa.03575.28.vec.insert.i = bitcast <8 x i32> %i.bni to <8 x float>
  br label %.sink.split3759.i

_ZN4ncnn3MatD2Ev.exit943.us.us.us.i:              ; preds = %bb.ck
  %i.bnj = load ptr, ptr %1, align 8, !tbaa !20, !noalias !639 ; 2 uses
  %i.bnk = load i64, ptr %i.apn, align 8, !tbaa !21, !noalias !639
  %i.bnl = load i64, ptr %i.apo, align 8, !tbaa !55, !noalias !639 ; 2 uses
  %i.bnm = mul i64 %i.bnl, %i.bnk                 ; 2 uses
  %i.bnn = mul i64 %i.bnm, %i.blf
  %i.bno = getelementptr inbounds nuw i8, ptr %i.bnj, i64 %i.bnn
  %i.bnp = mul i64 %i.blw, %i.bnl                 ; 2 uses
  %i.bnq = getelementptr inbounds nuw i8, ptr %i.bno, i64 %i.bnp
  %i.bnr = shl nsw i32 %i.bmb, 2
  %i.bns = sext i32 %i.bnr to i64                 ; 2 uses
  %i.bnt = getelementptr inbounds [2 x i8], ptr %i.bnq, i64 %i.bns
  %i.bnu = mul i64 %i.bnm, %i.blg
  %i.bnv = getelementptr inbounds nuw i8, ptr %i.bnj, i64 %i.bnu
  %i.bnw = getelementptr inbounds nuw i8, ptr %i.bnv, i64 %i.bnp
  %i.bnx = getelementptr inbounds [2 x i8], ptr %i.bnw, i64 %i.bns
  %i.bny = load i64, ptr %i.bnt, align 1, !tbaa !82
  %i.bnz = insertelement <2 x i64> poison, i64 %i.bny, i64 0
  %i.boa = bitcast <2 x i64> %i.bnz to <8 x i16>
  %i.bob = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.boa, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.boc = load i64, ptr %i.bnx, align 1, !tbaa !82
  %i.bod = insertelement <2 x i64> poison, i64 %i.boc, i64 0
  %i.boe = bitcast <2 x i64> %i.bod to <8 x i16>
  %i.bof = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.boe, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bog = shufflevector <8 x i16> %i.bob, <8 x i16> %i.bof, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.boh = bitcast <16 x i16> %i.bog to <8 x float>
  br label %.sink.split3759.i

_ZN4ncnn3MatD2Ev.exit944.us.us.us.i:              ; preds = %bb.ck
  %i.boi = load ptr, ptr %1, align 8, !tbaa !20, !noalias !640
  %i.boj = load i64, ptr %i.apn, align 8, !tbaa !21, !noalias !640
  %i.bok = mul i64 %i.boj, %i.blh
  %i.bol = load i64, ptr %i.apo, align 8, !tbaa !55, !noalias !640 ; 2 uses
  %i.bom = mul i64 %i.bok, %i.bol
  %i.bon = getelementptr inbounds nuw i8, ptr %i.boi, i64 %i.bom
  %i.boo = mul i64 %i.blw, %i.bol
  %i.bop = getelementptr inbounds nuw i8, ptr %i.bon, i64 %i.boo
  %i.boq = shl nsw i32 %i.bmb, 3
  %i.bor = sext i32 %i.boq to i64
  %i.bos = getelementptr inbounds [2 x i8], ptr %i.bop, i64 %i.bor
  %i.bot = load <8 x i16>, ptr %i.bos, align 16, !tbaa !82 ; 2 uses
  %i.bou = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bot, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bov = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.bot, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bow = shufflevector <8 x i16> %i.bou, <8 x i16> %i.bov, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.box = bitcast <16 x i16> %i.bow to <8 x float>
  br label %.sink.split3759.i

.sink.split3759.i:                                ; preds = %_ZN4ncnn3MatD2Ev.exit944.us.us.us.i, %_ZN4ncnn3MatD2Ev.exit943.us.us.us.i, %_ZN4ncnn3MatD2Ev.exit941.us.us.us.i
  %.sink3760.i = phi <8 x float> [ %i.box, %_ZN4ncnn3MatD2Ev.exit944.us.us.us.i ], [ %i.boh, %_ZN4ncnn3MatD2Ev.exit943.us.us.us.i ], [ %.sroa.03575.28.vec.insert.i, %_ZN4ncnn3MatD2Ev.exit941.us.us.us.i ]
  %i.boy = load <8 x i16>, ptr %i.bmf, align 16, !tbaa !82 ; 2 uses
  %i.boz = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.boy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bpa = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.boy, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bpb = shufflevector <8 x i16> %i.boz, <8 x i16> %i.bpa, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bpc = bitcast <16 x i16> %i.bpb to <8 x float>
  %i.bpd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.sink3760.i, <8 x float> nofpclass(nan inf) %i.bpc, <8 x float> nofpclass(nan inf) %.224363047.us.us.us.i)
  br label %bb.cl

bb.cl:                                            ; preds = %.sink.split3759.i, %bb.ck, %bb.cj, %bb.ci
  %.32437.us.us.us.i = phi nsz <8 x float> [ %.224363047.us.us.us.i, %bb.ci ], [ %.224363047.us.us.us.i, %bb.ck ], [ %.224363047.us.us.us.i, %bb.cj ], [ %i.bpd, %.sink.split3759.i ] ; 2 uses
  %indvars.iv.next3498.i = add nuw nsw i64 %indvars.iv3497.i, 1 ; 2 uses
  %exitcond3501.not.i = icmp eq i64 %indvars.iv.next3498.i, %i.ble
  br i1 %exitcond3501.not.i, label %..loopexit2545_crit_edge.us.us.us.i, label %bb.ci, !llvm.loop !597

..loopexit2545_crit_edge.us.us.us.i:              ; preds = %bb.cl, %bb.ch, %bb.cg
  %.42438.us.us.us.i = phi nsz <8 x float> [ %.124353052.us.us.us.i, %bb.cg ], [ %.124353052.us.us.us.i, %bb.ch ], [ %.32437.us.us.us.i, %bb.cl ] ; 3 uses
  %indvars.iv.next3503.i = add nuw nsw i64 %indvars.iv3502.i, 1 ; 2 uses
  %exitcond3506.not.i = icmp eq i64 %indvars.iv.next3503.i, %wide.trip.count3505.i
  br i1 %exitcond3506.not.i, label %._crit_edge3055.split.us.us.us.i, label %bb.cg, !llvm.loop !598

._crit_edge3055.split.us.us.us.i:                 ; preds = %..loopexit2545_crit_edge.us.us.us.i
  %i.bpe = getelementptr inbounds [2 x i8], ptr %.07243062.us.us.i, i64 %i.bkn ; 2 uses
  %indvars.iv.next3508.i = add nuw nsw i64 %indvars.iv3507.i, 8 ; 2 uses
  %i.bpf = icmp slt i64 %indvars.iv.next3508.i, %invariant.op3669.i
  br i1 %i.bpf, label %.preheader2549.us.us.i, label %._crit_edge3066.i, !llvm.loop !599

._crit_edge3066.i:                                ; preds = %._crit_edge3055.split.us.us.us.i, %.preheader2549.lr.ph.i, %_ZN4ncnn3MatD2Ev.exit945.i
  %.02434.lcssa.i = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit945.i ], [ zeroinitializer, %.preheader2549.lr.ph.i ], [ %.42438.us.us.us.i, %._crit_edge3055.split.us.us.us.i ] ; 2 uses
  %.0724.lcssa.i = phi ptr [ %i.bki, %_ZN4ncnn3MatD2Ev.exit945.i ], [ %scevgep3490.i, %.preheader2549.lr.ph.i ], [ %i.bpe, %._crit_edge3055.split.us.us.us.i ] ; 4 uses
  %.0723.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit945.i ], [ %i.apz, %.preheader2549.lr.ph.i ], [ %i.aqg, %._crit_edge3055.split.us.us.us.i ] ; 9 uses
  %i.bpg = shufflevector <8 x float> %.02434.lcssa.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bph = shufflevector <8 x float> %.02434.lcssa.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bpi = fadd fast <4 x float> %i.bpg, %i.bph   ; 2 uses
  %i.bpj = or disjoint i32 %.0723.lcssa.i, 3
  %i.bpk = icmp slt i32 %i.bpj, %i.apc
  br i1 %i.bpk, label %.preheader2548.lr.ph.i, label %._crit_edge3126.i

.preheader2548.lr.ph.i:                           ; preds = %._crit_edge3066.i
  %i.bpl = load i32, ptr %i.d, align 4            ; 2 uses
  %i.bpm = load i32, ptr %i.j, align 4
  %invariant.op3110.i = sub i32 %.neg2504.i, %i.bpm ; 2 uses
  %i.bpn = load i32, ptr %i.f, align 4            ; 4 uses
  %i.bpo = load i32, ptr %i.a, align 4
  %.fr3243.i = freeze i32 %i.bpo                  ; 2 uses
  %i.bpp = load i32, ptr %i.c, align 4            ; 2 uses
  %i.bpq = load i32, ptr %i.i, align 4
  %.neg2502.i = add nuw nsw i32 %.07323217.i, 1
  %invariant.op3092.i = sub i32 %.neg2502.i, %i.bpq ; 2 uses
  %i.bpr = load i32, ptr %i.e, align 4            ; 4 uses
  br i1 %i.bkk, label %.preheader2548.lr.ph.split.us.i, label %.preheader2548.preheader.i

.preheader2548.preheader.i:                       ; preds = %.preheader2548.lr.ph.i
  %i.bps = add i32 %.0723.lcssa.i, 7
  %smax3510.i = call i32 @llvm.smax.i32(i32 %i.apc, i32 %i.bps)
  %reass.sub142 = sub i32 %smax3510.i, %.0723.lcssa.i
  %i.bpt = add i32 %reass.sub142, -4              ; 2 uses
  %i.bpu = lshr i32 %i.bpt, 1
  %i.bpv = and i32 %i.bpu, 2147483646
  %narrow3650.i = add nuw i32 %i.bpv, 2
  %i.bpw = zext i32 %narrow3650.i to i64
  %i.bpx = mul nsw i64 %i.bpw, %i.bkp
  %scevgep3511.i = getelementptr i8, ptr %.0724.lcssa.i, i64 %i.bpx
  %i.bpy = add i32 %.0723.lcssa.i, 4
  %i.bpz = and i32 %i.bpt, -4
  %i.bqa = add i32 %i.bpy, %i.bpz
  br label %._crit_edge3126.i

.preheader2548.lr.ph.split.us.i:                  ; preds = %.preheader2548.lr.ph.i
  %i.bqb = icmp sgt i32 %.fr3243.i, 0
  br i1 %i.bqb, label %.preheader2548.us.us.preheader.i, label %.preheader2548.us.preheader.i

.preheader2548.us.preheader.i:                    ; preds = %.preheader2548.lr.ph.split.us.i
  %i.bqc = add i32 %.0723.lcssa.i, 7
  %smax3512.i = call i32 @llvm.smax.i32(i32 %i.apc, i32 %i.bqc)
  %reass.sub143 = sub i32 %smax3512.i, %.0723.lcssa.i
  %i.bqd = add i32 %reass.sub143, -4              ; 2 uses
  %i.bqe = lshr i32 %i.bqd, 1
  %i.bqf = and i32 %i.bqe, 2147483646
  %narrow3651.i = add nuw i32 %i.bqf, 2
  %i.bqg = zext i32 %narrow3651.i to i64
  %i.bqh = mul nsw i64 %i.bqg, %i.bkp
  %scevgep3513.i = getelementptr i8, ptr %.0724.lcssa.i, i64 %i.bqh
  %i.bqi = add i32 %.0723.lcssa.i, 4
  %i.bqj = and i32 %i.bqd, -4
  %i.bqk = add i32 %i.bqi, %i.bqj
  br label %._crit_edge3126.i

.preheader2548.us.us.preheader.i:                 ; preds = %.preheader2548.lr.ph.split.us.i
  %i.bql = zext nneg i32 %.fr3243.i to i64        ; 4 uses
  %i.bqm = zext i32 %.0723.lcssa.i to i64
  br label %.preheader2548.us.us.i

.preheader2548.us.us.i:                           ; preds = %._crit_edge3108.split.us.us.us.i, %.preheader2548.us.us.preheader.i
  %indvars.iv3533.i = phi i64 [ %i.bqm, %.preheader2548.us.us.preheader.i ], [ %indvars.iv.next3534.i, %._crit_edge3108.split.us.us.us.i ] ; 6 uses
  %.17253122.us.us.i = phi ptr [ %.0724.lcssa.i, %.preheader2548.us.us.preheader.i ], [ %i.btu, %._crit_edge3108.split.us.us.us.i ] ; 3 uses
  %.023943121.us.us.i = phi <4 x float> [ zeroinitializer, %.preheader2548.us.us.preheader.i ], [ %.us-phi121, %._crit_edge3108.split.us.us.us.i ] ; 3 uses
  %i.bqn = lshr exact i64 %indvars.iv3533.i, 2
  %i.bqo = and i64 %i.bqn, 1073741823
  %i.bqp = add nuw nsw i64 %indvars.iv3533.i, 1
  %i.bqq = add nuw nsw i64 %indvars.iv3533.i, 2
  %i.bqr = add nuw nsw i64 %indvars.iv3533.i, 3
  switch i32 %.fr3104.i, label %._crit_edge3108.split.us.us.us.i [
    i32 4, label %.preheader2548.us.us.i.split.us
    i32 1, label %.preheader2548.us.us.i.split.us122
  ]

.preheader2548.us.us.i.split.us:                  ; preds = %.preheader2548.us.us.i, %..loopexit2543_crit_edge.us.us.us.i.us
  %indvars.iv3528.i.us = phi i64 [ %indvars.iv.next3529.i.us, %..loopexit2543_crit_edge.us.us.us.i.us ], [ 0, %.preheader2548.us.us.i ] ; 3 uses
  %.123953105.us.us.us.i.us = phi <4 x float> [ %.42398.us.us.us.i.us, %..loopexit2543_crit_edge.us.us.us.i.us ], [ %.023943121.us.us.i, %.preheader2548.us.us.i ] ; 3 uses
  %i.bqs = trunc i64 %indvars.iv3528.i.us to i32
  %i.bqt = mul i32 %i.bpl, %i.bqs
  %.reass3111.us.us.us.i.us = add i32 %i.bqt, %invariant.op3110.i ; 3 uses
  %i.bqu = icmp slt i32 %.reass3111.us.us.us.i.us, 0
  br i1 %i.bqu, label %..loopexit2543_crit_edge.us.us.us.i.us, label %bb.cm

bb.cm:                                            ; preds = %.preheader2548.us.us.i.split.us
  %i.bqv = srem i32 %.reass3111.us.us.us.i.us, %i.bpn
  %i.bqw = sdiv exact i32 %.reass3111.us.us.us.i.us, %i.bpn ; 2 uses
  %.not895.us.us.us.i.us = icmp eq i32 %i.bqv, 0
  %.not896.us.us.us.i.us = icmp slt i32 %i.bqw, %i.ape
  %or.cond333 = select i1 %.not895.us.us.us.i.us, i1 %.not896.us.us.us.i.us, i1 false
  br i1 %or.cond333, label %.preheader2542.us.us.us.i.us, label %..loopexit2543_crit_edge.us.us.us.i.us

.preheader2542.us.us.us.i.us:                     ; preds = %bb.cm
  %i.bqx = mul nuw nsw i64 %indvars.iv3528.i.us, %i.bql
  %i.bqy = sext i32 %i.bqw to i64
  %i.bqz = mul nsw i64 %i.bqy, %i.aqf
  br label %.lr.ph.split.us.us.us.us3141.i.us

.lr.ph.split.us.us.us.us3141.i.us:                ; preds = %bb.co, %.preheader2542.us.us.us.i.us
  %indvars.iv3523.i.us = phi i64 [ %indvars.iv.next3524.i.us, %bb.co ], [ 0, %.preheader2542.us.us.us.i.us ] ; 3 uses
  %.223963089.us.us.us.us.i.us = phi <4 x float> [ %.32397.us.us.us.us.i.us, %bb.co ], [ %.123953105.us.us.us.i.us, %.preheader2542.us.us.us.i.us ] ; 3 uses
  %i.bra = trunc i64 %indvars.iv3523.i.us to i32
  %i.brb = mul i32 %i.bpp, %i.bra
  %.reass3093.us.us.us.us.i.us = add i32 %i.brb, %invariant.op3092.i ; 3 uses
  %i.brc = icmp slt i32 %.reass3093.us.us.us.us.i.us, 0
  br i1 %i.brc, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %.lr.ph.split.us.us.us.us3141.i.us
  %i.brd = srem i32 %.reass3093.us.us.us.us.i.us, %i.bpr
  %i.bre = sdiv exact i32 %.reass3093.us.us.us.us.i.us, %i.bpr ; 2 uses
  %.not897.us.us.us.us.i.us = icmp eq i32 %i.brd, 0
  %.not898.us.us.us.us.i.us = icmp slt i32 %i.bre, %i.apd
  %or.cond334 = select i1 %.not897.us.us.us.us.i.us, i1 %.not898.us.us.us.us.i.us, i1 false
  br i1 %or.cond334, label %_ZN4ncnn3MatD2Ev.exit940.us.us.us.us.i.us, label %bb.co

_ZN4ncnn3MatD2Ev.exit940.us.us.us.us.i.us:        ; preds = %bb.cn
  %i.brf = add nuw nsw i64 %indvars.iv3523.i.us, %i.bqx
  %i.brg = shl i64 %i.brf, 2
  %i.brh = and i64 %i.brg, 4294967292
  %i.bri = getelementptr inbounds nuw [2 x i8], ptr %.17253122.us.us.i, i64 %i.brh
  %i.brj = load ptr, ptr %1, align 8, !tbaa !20, !noalias !641
  %i.brk = load i64, ptr %i.apn, align 8, !tbaa !21, !noalias !641
  %i.brl = mul i64 %i.brk, %i.bqo
  %i.brm = load i64, ptr %i.apo, align 8, !tbaa !55, !noalias !641 ; 2 uses
  %i.brn = mul i64 %i.brl, %i.brm
  %i.bro = getelementptr inbounds nuw i8, ptr %i.brj, i64 %i.brn
  %i.brp = mul i64 %i.bqz, %i.brm
  %i.brq = getelementptr inbounds nuw i8, ptr %i.bro, i64 %i.brp
  %i.brr = shl nsw i32 %i.bre, 2
  %i.brs = sext i32 %i.brr to i64
  %i.brt = getelementptr inbounds [2 x i8], ptr %i.brq, i64 %i.brs
  %i.bru = load i64, ptr %i.brt, align 1, !tbaa !82
  %i.brv = insertelement <2 x i64> poison, i64 %i.bru, i64 0
  %i.brw = bitcast <2 x i64> %i.brv to <8 x i16>
  %i.brx = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.brw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bry = bitcast <8 x i16> %i.brx to <4 x float>
  %i.brz = load i64, ptr %i.bri, align 1, !tbaa !82
  %i.bsa = insertelement <2 x i64> poison, i64 %i.brz, i64 0
  %i.bsb = bitcast <2 x i64> %i.bsa to <8 x i16>
  %i.bsc = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bsb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bsd = bitcast <8 x i16> %i.bsc to <4 x float>
  %i.bse = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bry, <4 x float> nofpclass(nan inf) %i.bsd, <4 x float> nofpclass(nan inf) %.223963089.us.us.us.us.i.us)
  br label %bb.co

bb.co:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit940.us.us.us.us.i.us, %bb.cn, %.lr.ph.split.us.us.us.us3141.i.us
  %.32397.us.us.us.us.i.us = phi nsz <4 x float> [ %.223963089.us.us.us.us.i.us, %.lr.ph.split.us.us.us.us3141.i.us ], [ %.223963089.us.us.us.us.i.us, %bb.cn ], [ %i.bse, %_ZN4ncnn3MatD2Ev.exit940.us.us.us.us.i.us ] ; 2 uses
  %indvars.iv.next3524.i.us = add nuw nsw i64 %indvars.iv3523.i.us, 1 ; 2 uses
  %exitcond3527.not.i.us = icmp eq i64 %indvars.iv.next3524.i.us, %i.bql
  br i1 %exitcond3527.not.i.us, label %..loopexit2543_crit_edge.us.us.us.i.us, label %.lr.ph.split.us.us.us.us3141.i.us, !llvm.loop !602

..loopexit2543_crit_edge.us.us.us.i.us:           ; preds = %bb.co, %bb.cm, %.preheader2548.us.us.i.split.us
  %.42398.us.us.us.i.us = phi nsz <4 x float> [ %.123953105.us.us.us.i.us, %.preheader2548.us.us.i.split.us ], [ %.123953105.us.us.us.i.us, %bb.cm ], [ %.32397.us.us.us.us.i.us, %bb.co ] ; 2 uses
  %indvars.iv.next3529.i.us = add nuw nsw i64 %indvars.iv3528.i.us, 1 ; 2 uses
  %exitcond3532.not.i.us = icmp eq i64 %indvars.iv.next3529.i.us, %wide.trip.count3505.i
  br i1 %exitcond3532.not.i.us, label %._crit_edge3108.split.us.us.us.i, label %.preheader2548.us.us.i.split.us, !llvm.loop !603

.preheader2548.us.us.i.split.us122:               ; preds = %.preheader2548.us.us.i, %..loopexit2543_crit_edge.us.us.us.i.us129
  %indvars.iv3528.i.us123 = phi i64 [ %indvars.iv.next3529.i.us131, %..loopexit2543_crit_edge.us.us.us.i.us129 ], [ 0, %.preheader2548.us.us.i ] ; 3 uses
  %.123953105.us.us.us.i.us124 = phi <4 x float> [ %.42398.us.us.us.i.us130, %..loopexit2543_crit_edge.us.us.us.i.us129 ], [ %.023943121.us.us.i, %.preheader2548.us.us.i ] ; 3 uses
  %i.bsf = trunc i64 %indvars.iv3528.i.us123 to i32
  %i.bsg = mul i32 %i.bpl, %i.bsf
  %.reass3111.us.us.us.i.us125 = add i32 %i.bsg, %invariant.op3110.i ; 3 uses
  %i.bsh = icmp slt i32 %.reass3111.us.us.us.i.us125, 0
  br i1 %i.bsh, label %..loopexit2543_crit_edge.us.us.us.i.us129, label %bb.cp

bb.cp:                                            ; preds = %.preheader2548.us.us.i.split.us122
  %i.bsi = srem i32 %.reass3111.us.us.us.i.us125, %i.bpn
  %i.bsj = sdiv exact i32 %.reass3111.us.us.us.i.us125, %i.bpn ; 2 uses
  %.not895.us.us.us.i.us126 = icmp eq i32 %i.bsi, 0
  %.not896.us.us.us.i.us127 = icmp slt i32 %i.bsj, %i.ape
  %or.cond335 = select i1 %.not895.us.us.us.i.us126, i1 %.not896.us.us.us.i.us127, i1 false
  br i1 %or.cond335, label %.preheader2542.us.us.us.i.us128, label %..loopexit2543_crit_edge.us.us.us.i.us129

.preheader2542.us.us.us.i.us128:                  ; preds = %bb.cp
  %i.bsk = mul nuw nsw i64 %indvars.iv3528.i.us123, %i.bql
  %i.bsl = sext i32 %i.bsj to i64
  %i.bsm = mul nsw i64 %i.bsl, %i.aqf
  br label %.lr.ph.split.us3095.us.us.us.i.us

.lr.ph.split.us3095.us.us.us.i.us:                ; preds = %bb.cr, %.preheader2542.us.us.us.i.us128
  %indvars.iv3518.i.us = phi i64 [ %indvars.iv.next3519.i.us, %bb.cr ], [ 0, %.preheader2542.us.us.us.i.us128 ] ; 3 uses
  %.223963089.us3097.us.us.us.i.us = phi <4 x float> [ %.32397.us3101.us.us.us.i.us, %bb.cr ], [ %.123953105.us.us.us.i.us124, %.preheader2542.us.us.us.i.us128 ] ; 3 uses
  %i.bsn = trunc i64 %indvars.iv3518.i.us to i32
  %i.bso = mul i32 %i.bpp, %i.bsn
  %.reass3093.us3098.us.us.us.i.us = add i32 %i.bso, %invariant.op3092.i ; 3 uses
  %i.bsp = icmp slt i32 %.reass3093.us3098.us.us.us.i.us, 0
  br i1 %i.bsp, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %.lr.ph.split.us3095.us.us.us.i.us
  %i.bsq = srem i32 %.reass3093.us3098.us.us.us.i.us, %i.bpr
  %i.bsr = sdiv exact i32 %.reass3093.us3098.us.us.us.i.us, %i.bpr ; 2 uses
  %.not897.us3099.us.us.us.i.us = icmp eq i32 %i.bsq, 0
  %.not898.us3100.us.us.us.i.us = icmp slt i32 %i.bsr, %i.apd
  %or.cond336 = select i1 %.not897.us3099.us.us.us.i.us, i1 %.not898.us3100.us.us.us.i.us, i1 false
  br i1 %or.cond336, label %_ZN4ncnn3MatD2Ev.exit939.us.us.us.us.i.us, label %bb.cr

_ZN4ncnn3MatD2Ev.exit939.us.us.us.us.i.us:        ; preds = %bb.cq
  %i.bss = load ptr, ptr %1, align 8, !tbaa !20, !noalias !642
  %i.bst = load i64, ptr %i.apn, align 8, !tbaa !21, !noalias !642
  %i.bsu = load i64, ptr %i.apo, align 8, !tbaa !55, !noalias !642 ; 2 uses
  %factor.op.mul3084.us.us.us.us.i.us = mul i64 %i.bsu, %i.bst ; 4 uses
  %i.bsv = mul i64 %i.bsm, %i.bsu
  %invariant.gep.us.us.us3137.us.i.us = getelementptr i8, ptr %i.bss, i64 %i.bsv
  %i.bsw = sext i32 %i.bsr to i64
  %invariant.gep3086.us.us.us.us.i.us = getelementptr [2 x i8], ptr %invariant.gep.us.us.us3137.us.i.us, i64 %i.bsw ; 4 uses
  %.reass3085.us.us.us.us.i.us = mul i64 %factor.op.mul3084.us.us.us.us.i.us, %indvars.iv3533.i
  %gep3087.us.us.us.us.i.us = getelementptr i8, ptr %invariant.gep3086.us.us.us.us.i.us, i64 %.reass3085.us.us.us.us.i.us
  %i.bsx = load i16, ptr %gep3087.us.us.us.us.i.us, align 2, !tbaa !89
  %.reass3085.us.us.us.us.1.i.us = mul i64 %factor.op.mul3084.us.us.us.us.i.us, %i.bqp
  %gep3087.us.us.us.us.1.i.us = getelementptr i8, ptr %invariant.gep3086.us.us.us.us.i.us, i64 %.reass3085.us.us.us.us.1.i.us
  %i.bsy = load i16, ptr %gep3087.us.us.us.us.1.i.us, align 2, !tbaa !89
  %.reass3085.us.us.us.us.2.i.us = mul i64 %factor.op.mul3084.us.us.us.us.i.us, %i.bqq
  %gep3087.us.us.us.us.2.i.us = getelementptr i8, ptr %invariant.gep3086.us.us.us.us.i.us, i64 %.reass3085.us.us.us.us.2.i.us
  %i.bsz = load i16, ptr %gep3087.us.us.us.us.2.i.us, align 2, !tbaa !89
  %.reass3085.us.us.us.us.3.i.us = mul i64 %factor.op.mul3084.us.us.us.us.i.us, %i.bqr
  %gep3087.us.us.us.us.3.i.us = getelementptr i8, ptr %invariant.gep3086.us.us.us.us.i.us, i64 %.reass3085.us.us.us.us.3.i.us
  %i.bta = load i16, ptr %gep3087.us.us.us.us.3.i.us, align 2, !tbaa !89
  %i.btb = zext i16 %i.bta to i32
  %i.btc = zext i16 %i.bsz to i32
  %i.btd = zext i16 %i.bsy to i32
  %i.bte = zext i16 %i.bsx to i32
  %i.btf = insertelement <4 x i32> poison, i32 %i.bte, i64 0
  %i.btg = insertelement <4 x i32> %i.btf, i32 %i.btd, i64 1
  %i.bth = insertelement <4 x i32> %i.btg, i32 %i.btc, i64 2
  %i.bti = insertelement <4 x i32> %i.bth, i32 %i.btb, i64 3
  %i.btj = shl nuw <4 x i32> %i.bti, splat (i32 16)
  %.sroa.0.12.vec.insert.i.us = bitcast <4 x i32> %i.btj to <4 x float>
  %i.btk = add nuw nsw i64 %indvars.iv3518.i.us, %i.bsk
  %i.btl = shl i64 %i.btk, 2
  %i.btm = and i64 %i.btl, 4294967292
  %i.btn = getelementptr inbounds nuw [2 x i8], ptr %.17253122.us.us.i, i64 %i.btm
  %i.bto = load i64, ptr %i.btn, align 1, !tbaa !82
  %i.btp = insertelement <2 x i64> poison, i64 %i.bto, i64 0
  %i.btq = bitcast <2 x i64> %i.btp to <8 x i16>
  %i.btr = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.btq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bts = bitcast <8 x i16> %i.btr to <4 x float>
  %i.btt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sroa.0.12.vec.insert.i.us, <4 x float> nofpclass(nan inf) %i.bts, <4 x float> nofpclass(nan inf) %.223963089.us3097.us.us.us.i.us)
  br label %bb.cr

bb.cr:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit939.us.us.us.us.i.us, %bb.cq, %.lr.ph.split.us3095.us.us.us.i.us
  %.32397.us3101.us.us.us.i.us = phi nsz <4 x float> [ %.223963089.us3097.us.us.us.i.us, %.lr.ph.split.us3095.us.us.us.i.us ], [ %i.btt, %_ZN4ncnn3MatD2Ev.exit939.us.us.us.us.i.us ], [ %.223963089.us3097.us.us.us.i.us, %bb.cq ] ; 2 uses
  %indvars.iv.next3519.i.us = add nuw nsw i64 %indvars.iv3518.i.us, 1 ; 2 uses
  %exitcond3522.not.i.us = icmp eq i64 %indvars.iv.next3519.i.us, %i.bql
  br i1 %exitcond3522.not.i.us, label %..loopexit2543_crit_edge.us.us.us.i.us129, label %.lr.ph.split.us3095.us.us.us.i.us, !llvm.loop !602

..loopexit2543_crit_edge.us.us.us.i.us129:        ; preds = %bb.cr, %bb.cp, %.preheader2548.us.us.i.split.us122
  %.42398.us.us.us.i.us130 = phi nsz <4 x float> [ %.123953105.us.us.us.i.us124, %.preheader2548.us.us.i.split.us122 ], [ %.123953105.us.us.us.i.us124, %bb.cp ], [ %.32397.us3101.us.us.us.i.us, %bb.cr ] ; 2 uses
  %indvars.iv.next3529.i.us131 = add nuw nsw i64 %indvars.iv3528.i.us123, 1 ; 2 uses
  %exitcond3532.not.i.us132 = icmp eq i64 %indvars.iv.next3529.i.us131, %wide.trip.count3505.i
  br i1 %exitcond3532.not.i.us132, label %._crit_edge3108.split.us.us.us.i, label %.preheader2548.us.us.i.split.us122, !llvm.loop !603

._crit_edge3108.split.us.us.us.i:                 ; preds = %..loopexit2543_crit_edge.us.us.us.i.us129, %..loopexit2543_crit_edge.us.us.us.i.us, %.preheader2548.us.us.i
  %.us-phi121 = phi <4 x float> [ %.42398.us.us.us.i.us, %..loopexit2543_crit_edge.us.us.us.i.us ], [ %.023943121.us.us.i, %.preheader2548.us.us.i ], [ %.42398.us.us.us.i.us130, %..loopexit2543_crit_edge.us.us.us.i.us129 ] ; 2 uses
  %i.btu = getelementptr inbounds [2 x i8], ptr %.17253122.us.us.i, i64 %i.bkp ; 2 uses
  %indvars.iv.next3534.i = add nuw nsw i64 %indvars.iv3533.i, 4 ; 2 uses
  %i.btv = trunc i64 %indvars.iv.next3534.i to i32 ; 2 uses
  %i.btw = or i32 %i.btv, 3
  %i.btx = icmp slt i32 %i.btw, %i.apc
  br i1 %i.btx, label %.preheader2548.us.us.i, label %._crit_edge3126.i, !llvm.loop !606

._crit_edge3126.i:                                ; preds = %._crit_edge3108.split.us.us.us.i, %.preheader2548.us.preheader.i, %.preheader2548.preheader.i, %._crit_edge3066.i
  %.02394.lcssa.i = phi <4 x float> [ zeroinitializer, %._crit_edge3066.i ], [ zeroinitializer, %.preheader2548.preheader.i ], [ zeroinitializer, %.preheader2548.us.preheader.i ], [ %.us-phi121, %._crit_edge3108.split.us.us.us.i ] ; 2 uses
  %.1725.lcssa.i = phi ptr [ %.0724.lcssa.i, %._crit_edge3066.i ], [ %scevgep3511.i, %.preheader2548.preheader.i ], [ %scevgep3513.i, %.preheader2548.us.preheader.i ], [ %i.btu, %._crit_edge3108.split.us.us.us.i ] ; 4 uses
  %.1.lcssa.i = phi i32 [ %.0723.lcssa.i, %._crit_edge3066.i ], [ %i.bqa, %.preheader2548.preheader.i ], [ %i.bqk, %.preheader2548.us.preheader.i ], [ %i.btv, %._crit_edge3108.split.us.us.us.i ] ; 9 uses
  %i.bty = shufflevector <4 x float> %.02394.lcssa.i, <4 x float> %i.bpi, <4 x i32> <i32 3, i32 2, i32 7, i32 6>
  %i.btz = shufflevector <4 x float> %.02394.lcssa.i, <4 x float> %i.bpi, <4 x i32> <i32 1, i32 0, i32 5, i32 4>
  %i.bua = fadd fast <4 x float> %i.bty, %i.btz
  %op.rdx = call fast float @llvm.vector.reduce.fadd.v4f32(float %.0728.i, <4 x float> %i.bua) ; 4 uses
  %i.bub = or disjoint i32 %.1.lcssa.i, 1
  %i.buc = icmp slt i32 %i.bub, %i.apc
  br i1 %i.buc, label %.preheader2547.lr.ph.i, label %.preheader2550.i

.preheader2547.lr.ph.i:                           ; preds = %._crit_edge3126.i
  %i.bud = load i32, ptr %i.d, align 4
  %i.bue = load i32, ptr %i.j, align 4
  %invariant.op3161.i = sub i32 %.neg2504.i, %i.bue
  %i.buf = load i32, ptr %i.f, align 4            ; 2 uses
  %i.bug = load i32, ptr %i.a, align 4
  %.fr3244.i = freeze i32 %i.bug                  ; 2 uses
  %i.buh = load i32, ptr %i.c, align 4
  %i.bui = load i32, ptr %i.i, align 4
  %.neg2498.i = add nuw nsw i32 %.07323217.i, 1
  %invariant.op3154.i = sub i32 %.neg2498.i, %i.bui
  %i.buj = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.bkk, label %.preheader2547.lr.ph.split.us.i, label %.preheader2547.preheader.i

.preheader2547.preheader.i:                       ; preds = %.preheader2547.lr.ph.i
  %i.buk = add i32 %.1.lcssa.i, 3
  %smax3536.i = call i32 @llvm.smax.i32(i32 %i.apc, i32 %i.buk)
  %reass.sub144 = sub i32 %smax3536.i, %.1.lcssa.i
  %i.bul = and i32 %reass.sub144, -2              ; 2 uses
  %i.bum = add i32 %i.bul, -2
  %i.bun = zext i32 %i.bum to i64
  %i.buo = add nuw nsw i64 %i.bun, 2
  %i.bup = mul nsw i64 %i.buo, %i.bkr
  %scevgep3537.i = getelementptr i8, ptr %.1725.lcssa.i, i64 %i.bup
  %i.buq = add i32 %.1.lcssa.i, %i.bul
  br label %.preheader2550.i

.preheader2547.lr.ph.split.us.i:                  ; preds = %.preheader2547.lr.ph.i
  %i.bur = icmp sgt i32 %.fr3244.i, 0
  br i1 %i.bur, label %.preheader2547.us.us.preheader.i, label %.preheader2547.us.preheader.i

.preheader2547.us.preheader.i:                    ; preds = %.preheader2547.lr.ph.split.us.i
  %i.bus = add i32 %.1.lcssa.i, 3
  %smax3538.i = call i32 @llvm.smax.i32(i32 %i.apc, i32 %i.bus)
  %reass.sub145 = sub i32 %smax3538.i, %.1.lcssa.i
  %i.but = and i32 %reass.sub145, -2              ; 2 uses
  %i.buu = add i32 %i.but, -2
  %i.buv = zext i32 %i.buu to i64
  %i.buw = add nuw nsw i64 %i.buv, 2
  %i.bux = mul nsw i64 %i.buw, %i.bkr
  %scevgep3539.i = getelementptr i8, ptr %.1725.lcssa.i, i64 %i.bux
  %i.buy = add i32 %.1.lcssa.i, %i.but
  br label %.preheader2550.i

.preheader2547.us.us.preheader.i:                 ; preds = %.preheader2547.lr.ph.split.us.i
  %i.buz = zext nneg i32 %.fr3244.i to i64        ; 2 uses
  %i.bva = zext i32 %.1.lcssa.i to i64
  br label %.preheader2547.us.us.i

.preheader2547.us.us.i:                           ; preds = %._crit_edge3159.split.us.us.us.i, %.preheader2547.us.us.preheader.i
  %indvars.iv3553.i = phi i64 [ %i.bva, %.preheader2547.us.us.preheader.i ], [ %indvars.iv.next3554.i, %._crit_edge3159.split.us.us.us.i ] ; 3 uses
  %.27263166.us.us.i = phi ptr [ %.1725.lcssa.i, %.preheader2547.us.us.preheader.i ], [ %i.bwr, %._crit_edge3159.split.us.us.us.i ] ; 2 uses
  %.17293165.us.us.i = phi float [ %op.rdx, %.preheader2547.us.us.preheader.i ], [ %.8.us.us.us.i, %._crit_edge3159.split.us.us.us.i ]
  %i.bvb = add nuw nsw i64 %indvars.iv3553.i, 1
  br label %bb.cs

bb.cs:                                            ; preds = %..loopexit2541_crit_edge.us.us.us.i, %.preheader2547.us.us.i
  %indvars.iv3548.i = phi i64 [ %indvars.iv.next3549.i, %..loopexit2541_crit_edge.us.us.us.i ], [ 0, %.preheader2547.us.us.i ] ; 3 uses
  %.27303156.us.us.us.i = phi float [ %.8.us.us.us.i, %..loopexit2541_crit_edge.us.us.us.i ], [ %.17293165.us.us.i, %.preheader2547.us.us.i ] ; 3 uses
  %i.bvc = trunc i64 %indvars.iv3548.i to i32
  %i.bvd = mul i32 %i.bud, %i.bvc
  %.reass3162.us.us.us.i = add i32 %i.bvd, %invariant.op3161.i ; 3 uses
  %i.bve = icmp slt i32 %.reass3162.us.us.us.i, 0
  br i1 %i.bve, label %..loopexit2541_crit_edge.us.us.us.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.bvf = srem i32 %.reass3162.us.us.us.i, %i.buf
  %i.bvg = sdiv exact i32 %.reass3162.us.us.us.i, %i.buf ; 2 uses
  %.not891.us.us.us.i = icmp eq i32 %i.bvf, 0
  %.not892.us.us.us.i = icmp slt i32 %i.bvg, %i.ape
  %or.cond337 = select i1 %.not891.us.us.us.i, i1 %.not892.us.us.us.i, i1 false
  br i1 %or.cond337, label %.preheader2540.us.us.us.i, label %..loopexit2541_crit_edge.us.us.us.i

.preheader2540.us.us.us.i:                        ; preds = %bb.ct
  %i.bvh = mul nuw nsw i64 %indvars.iv3548.i, %i.buz
  %i.bvi = sext i32 %i.bvg to i64
  %i.bvj = mul nsw i64 %i.bvi, %i.aqf
  br label %bb.cu

bb.cu:                                            ; preds = %.loopexit.us.us.us.i, %.preheader2540.us.us.us.i
  %indvars.iv3543.i = phi i64 [ %indvars.iv.next3544.i, %.loopexit.us.us.us.i ], [ 0, %.preheader2540.us.us.us.i ] ; 3 uses
  %.37313151.us.us.us.i = phi float [ %.6.us.us.us.i, %.loopexit.us.us.us.i ], [ %.27303156.us.us.us.i, %.preheader2540.us.us.us.i ] ; 3 uses
  %i.bvk = trunc i64 %indvars.iv3543.i to i32
  %i.bvl = mul i32 %i.buh, %i.bvk
  %.reass3155.us.us.us.i = add i32 %invariant.op3154.i, %i.bvl ; 3 uses
  %i.bvm = icmp slt i32 %.reass3155.us.us.us.i, 0
  br i1 %i.bvm, label %.loopexit.us.us.us.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.bvn = srem i32 %.reass3155.us.us.us.i, %i.buj
  %i.bvo = sdiv exact i32 %.reass3155.us.us.us.i, %i.buj ; 2 uses
  %.not893.us.us.us.i = icmp eq i32 %i.bvn, 0
  %.not894.us.us.us.i = icmp slt i32 %i.bvo, %i.apd
  %or.cond338 = select i1 %.not893.us.us.us.i, i1 %.not894.us.us.us.i, i1 false
  br i1 %or.cond338, label %_ZN4ncnn3MatD2Ev.exit938.us.us.us.i, label %.loopexit.us.us.us.i

_ZN4ncnn3MatD2Ev.exit938.us.us.us.i:              ; preds = %bb.cv
  %i.bvp = add nuw nsw i64 %indvars.iv3543.i, %i.bvh
  %.idx3652.i = shl nuw nsw i64 %i.bvp, 2
  %i.bvq = getelementptr inbounds nuw i8, ptr %.27263166.us.us.i, i64 %.idx3652.i ; 2 uses
  %i.bvr = load ptr, ptr %1, align 8, !tbaa !20, !noalias !643
  %i.bvs = load i64, ptr %i.apn, align 8, !tbaa !21, !noalias !643
  %i.bvt = load i64, ptr %i.apo, align 8, !tbaa !55, !noalias !643 ; 2 uses
  %factor.op.mul3145.us.us.us.i = mul i64 %i.bvt, %i.bvs ; 2 uses
  %i.bvu = mul i64 %i.bvj, %i.bvt
  %invariant.gep.us.us.us3183.i = getelementptr i8, ptr %i.bvr, i64 %i.bvu
  %i.bvv = sext i32 %i.bvo to i64
  %invariant.gep3147.us.us.us.i = getelementptr [2 x i8], ptr %invariant.gep.us.us.us3183.i, i64 %i.bvv ; 2 uses
  %.reass3146.us.us.us.i = mul i64 %factor.op.mul3145.us.us.us.i, %indvars.iv3553.i
  %gep3148.us.us.us.i = getelementptr i8, ptr %invariant.gep3147.us.us.us.i, i64 %.reass3146.us.us.us.i
  %i.bvw = load i16, ptr %gep3148.us.us.us.i, align 2, !tbaa !89
  %i.bvx = zext i16 %i.bvw to i32
  %i.bvy = shl nuw i32 %i.bvx, 16
  %i.bvz = bitcast i32 %i.bvy to float
  %i.bwa = load i16, ptr %i.bvq, align 2, !tbaa !89
  %i.bwb = zext i16 %i.bwa to i32
  %i.bwc = shl nuw i32 %i.bwb, 16
  %i.bwd = bitcast i32 %i.bwc to float
  %i.bwe = fmul fast float %i.bwd, %i.bvz
  %i.bwf = fadd fast float %.37313151.us.us.us.i, %i.bwe
  %.reass3146.us.us.us.1.i = mul i64 %factor.op.mul3145.us.us.us.i, %i.bvb
  %gep3148.us.us.us.1.i = getelementptr i8, ptr %invariant.gep3147.us.us.us.i, i64 %.reass3146.us.us.us.1.i
  %i.bwg = load i16, ptr %gep3148.us.us.us.1.i, align 2, !tbaa !89
  %i.bwh = zext i16 %i.bwg to i32
  %i.bwi = shl nuw i32 %i.bwh, 16
  %i.bwj = bitcast i32 %i.bwi to float
  %i.bwk = getelementptr inbounds nuw i8, ptr %i.bvq, i64 2
  %i.bwl = load i16, ptr %i.bwk, align 2, !tbaa !89
  %i.bwm = zext i16 %i.bwl to i32
  %i.bwn = shl nuw i32 %i.bwm, 16
  %i.bwo = bitcast i32 %i.bwn to float
  %i.bwp = fmul fast float %i.bwo, %i.bwj
  %i.bwq = fadd fast float %i.bwp, %i.bwf
  br label %.loopexit.us.us.us.i

.loopexit.us.us.us.i:                             ; preds = %_ZN4ncnn3MatD2Ev.exit938.us.us.us.i, %bb.cv, %bb.cu
  %.6.us.us.us.i = phi nsz float [ %.37313151.us.us.us.i, %bb.cu ], [ %.37313151.us.us.us.i, %bb.cv ], [ %i.bwq, %_ZN4ncnn3MatD2Ev.exit938.us.us.us.i ] ; 2 uses
  %indvars.iv.next3544.i = add nuw nsw i64 %indvars.iv3543.i, 1 ; 2 uses
  %exitcond3547.not.i = icmp eq i64 %indvars.iv.next3544.i, %i.buz
  br i1 %exitcond3547.not.i, label %..loopexit2541_crit_edge.us.us.us.i, label %bb.cu, !llvm.loop !609

..loopexit2541_crit_edge.us.us.us.i:              ; preds = %.loopexit.us.us.us.i, %bb.ct, %bb.cs
  %.8.us.us.us.i = phi nsz float [ %.27303156.us.us.us.i, %bb.cs ], [ %.27303156.us.us.us.i, %bb.ct ], [ %.6.us.us.us.i, %.loopexit.us.us.us.i ] ; 3 uses
  %indvars.iv.next3549.i = add nuw nsw i64 %indvars.iv3548.i, 1 ; 2 uses
  %exitcond3552.not.i = icmp eq i64 %indvars.iv.next3549.i, %wide.trip.count3505.i
  br i1 %exitcond3552.not.i, label %._crit_edge3159.split.us.us.us.i, label %bb.cs, !llvm.loop !610

._crit_edge3159.split.us.us.us.i:                 ; preds = %..loopexit2541_crit_edge.us.us.us.i
  %i.bwr = getelementptr inbounds [2 x i8], ptr %.27263166.us.us.i, i64 %i.bkr ; 2 uses
  %indvars.iv.next3554.i = add nuw nsw i64 %indvars.iv3553.i, 2 ; 2 uses
  %i.bws = trunc i64 %indvars.iv.next3554.i to i32 ; 2 uses
  %i.bwt = or i32 %i.bws, 1
  %i.bwu = icmp slt i32 %i.bwt, %i.apc
  br i1 %i.bwu, label %.preheader2547.us.us.i, label %.preheader2550.i, !llvm.loop !611

.preheader2550.i:                                 ; preds = %._crit_edge3159.split.us.us.us.i, %.preheader2547.us.preheader.i, %.preheader2547.preheader.i, %._crit_edge3126.i
  %.1729.lcssa.i = phi float [ %op.rdx, %._crit_edge3126.i ], [ %op.rdx, %.preheader2547.preheader.i ], [ %op.rdx, %.preheader2547.us.preheader.i ], [ %.8.us.us.us.i, %._crit_edge3159.split.us.us.us.i ] ; 3 uses
  %.2726.lcssa.i = phi ptr [ %.1725.lcssa.i, %._crit_edge3126.i ], [ %scevgep3537.i, %.preheader2547.preheader.i ], [ %scevgep3539.i, %.preheader2547.us.preheader.i ], [ %i.bwr, %._crit_edge3159.split.us.us.us.i ]
  %.2.lcssa.i = phi i32 [ %.1.lcssa.i, %._crit_edge3126.i ], [ %i.buq, %.preheader2547.preheader.i ], [ %i.buy, %.preheader2547.us.preheader.i ], [ %i.bws, %._crit_edge3159.split.us.us.us.i ] ; 2 uses
  %i.bwv = icmp slt i32 %.2.lcssa.i, %i.apc
  br i1 %i.bwv, label %.preheader2546.lr.ph.i, label %._crit_edge3205.i

.preheader2546.lr.ph.i:                           ; preds = %.preheader2550.i
  %i.bww = load i32, ptr %i.d, align 4
  %i.bwx = load i32, ptr %i.j, align 4
  %invariant.op3197.i = sub i32 %.neg2504.i, %i.bwx
  %i.bwy = load i32, ptr %i.f, align 4            ; 2 uses
  %i.bwz = load i32, ptr %i.a, align 4
  %.fr3245.i = freeze i32 %i.bwz                  ; 2 uses
  %i.bxa = load i32, ptr %i.c, align 4
  %i.bxb = load i32, ptr %i.i, align 4
  %.neg2494.i = add nuw nsw i32 %.07323217.i, 1
  %invariant.op3190.i = sub i32 %.neg2494.i, %i.bxb
  %i.bxc = load i32, ptr %i.e, align 4            ; 2 uses
  %i.bxd = icmp sgt i32 %.fr3245.i, 0
  %or.cond3772.i = and i1 %i.bkk, %i.bxd
  br i1 %or.cond3772.i, label %.preheader2546.us.us.preheader.i, label %._crit_edge3205.i

.preheader2546.us.us.preheader.i:                 ; preds = %.preheader2546.lr.ph.i
  %i.bxe = zext nneg i32 %.fr3245.i to i64        ; 2 uses
  %i.bxf = zext i32 %.2.lcssa.i to i64
  br label %.preheader2546.us.us.i

.preheader2546.us.us.i:                           ; preds = %._crit_edge3195.split.us.us.us.i, %.preheader2546.us.us.preheader.i
  %indvars.iv3566.i = phi i64 [ %i.bxf, %.preheader2546.us.us.preheader.i ], [ %indvars.iv.next3567.i, %._crit_edge3195.split.us.us.us.i ] ; 2 uses
  %.37273202.us.us.i = phi ptr [ %.2726.lcssa.i, %.preheader2546.us.us.preheader.i ], [ %i.byp, %._crit_edge3195.split.us.us.us.i ] ; 2 uses
  %.93201.us.us.i = phi float [ %.1729.lcssa.i, %.preheader2546.us.us.preheader.i ], [ %.15.us.us.us.i, %._crit_edge3195.split.us.us.us.i ]
  br label %bb.cw

bb.cw:                                            ; preds = %..loopexit2539_crit_edge.us.us.us.i, %.preheader2546.us.us.i
  %indvars.iv3561.i = phi i64 [ %indvars.iv.next3562.i, %..loopexit2539_crit_edge.us.us.us.i ], [ 0, %.preheader2546.us.us.i ] ; 3 uses
  %.103192.us.us.us.i = phi float [ %.15.us.us.us.i, %..loopexit2539_crit_edge.us.us.us.i ], [ %.93201.us.us.i, %.preheader2546.us.us.i ] ; 3 uses
  %i.bxg = trunc i64 %indvars.iv3561.i to i32
  %i.bxh = mul i32 %i.bww, %i.bxg
  %.reass3198.us.us.us.i = add i32 %i.bxh, %invariant.op3197.i ; 3 uses
  %i.bxi = icmp slt i32 %.reass3198.us.us.us.i, 0
  br i1 %i.bxi, label %..loopexit2539_crit_edge.us.us.us.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.bxj = srem i32 %.reass3198.us.us.us.i, %i.bwy
  %i.bxk = sdiv exact i32 %.reass3198.us.us.us.i, %i.bwy ; 2 uses
  %.not887.us.us.us.i = icmp eq i32 %i.bxj, 0
  %.not888.us.us.us.i = icmp slt i32 %i.bxk, %i.ape
  %or.cond339 = select i1 %.not887.us.us.us.i, i1 %.not888.us.us.us.i, i1 false
  br i1 %or.cond339, label %.preheader.us.us.us.i, label %..loopexit2539_crit_edge.us.us.us.i

.preheader.us.us.us.i:                            ; preds = %bb.cx
  %i.bxl = mul nuw nsw i64 %indvars.iv3561.i, %i.bxe
  %i.bxm = sext i32 %i.bxk to i64
  %i.bxn = getelementptr inbounds nuw [2 x i8], ptr %.37273202.us.us.i, i64 %i.bxl
  %i.bxo = mul nsw i64 %i.bxm, %i.aqf
  br label %bb.cy

bb.cy:                                            ; preds = %bb.da, %.preheader.us.us.us.i
  %indvars.iv3556.i = phi i64 [ %indvars.iv.next3557.i, %bb.da ], [ 0, %.preheader.us.us.us.i ] ; 3 uses
  %.113187.us.us.us.i = phi float [ %.13.us.us.us.i, %bb.da ], [ %.103192.us.us.us.i, %.preheader.us.us.us.i ] ; 3 uses
  %i.bxp = trunc i64 %indvars.iv3556.i to i32
  %i.bxq = mul i32 %i.bxa, %i.bxp
  %.reass3191.us.us.us.i = add i32 %invariant.op3190.i, %i.bxq ; 3 uses
  %i.bxr = icmp slt i32 %.reass3191.us.us.us.i, 0
  br i1 %i.bxr, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.bxs = srem i32 %.reass3191.us.us.us.i, %i.bxc
  %i.bxt = sdiv exact i32 %.reass3191.us.us.us.i, %i.bxc ; 2 uses
  %.not889.us.us.us.i = icmp eq i32 %i.bxs, 0
  %.not890.us.us.us.i = icmp slt i32 %i.bxt, %i.apd
  %or.cond340 = select i1 %.not889.us.us.us.i, i1 %.not890.us.us.us.i, i1 false
  br i1 %or.cond340, label %_ZN4ncnn3MatD2Ev.exit.us.us.us.i, label %bb.da

_ZN4ncnn3MatD2Ev.exit.us.us.us.i:                 ; preds = %bb.cz
  %i.bxu = load ptr, ptr %1, align 8, !tbaa !20, !noalias !644
  %i.bxv = load i64, ptr %i.apn, align 8, !tbaa !21, !noalias !644
  %i.bxw = mul i64 %i.bxv, %indvars.iv3566.i
  %i.bxx = load i64, ptr %i.apo, align 8, !tbaa !55, !noalias !644 ; 2 uses
  %i.bxy = mul i64 %i.bxw, %i.bxx
  %i.bxz = getelementptr inbounds nuw i8, ptr %i.bxu, i64 %i.bxy
  %i.bya = mul i64 %i.bxo, %i.bxx
  %i.byb = getelementptr inbounds nuw i8, ptr %i.bxz, i64 %i.bya
  %i.byc = sext i32 %i.bxt to i64
  %i.byd = getelementptr inbounds [2 x i8], ptr %i.byb, i64 %i.byc
  %i.bye = load i16, ptr %i.byd, align 2, !tbaa !89
  %i.byf = zext i16 %i.bye to i32
  %i.byg = shl nuw i32 %i.byf, 16
  %i.byh = bitcast i32 %i.byg to float
  %i.byi = getelementptr inbounds nuw [2 x i8], ptr %i.bxn, i64 %indvars.iv3556.i
  %i.byj = load i16, ptr %i.byi, align 2, !tbaa !89
  %i.byk = zext i16 %i.byj to i32
  %i.byl = shl nuw i32 %i.byk, 16
  %i.bym = bitcast i32 %i.byl to float
  %i.byn = fmul fast float %i.bym, %i.byh
  %i.byo = fadd fast float %i.byn, %.113187.us.us.us.i
  br label %bb.da

bb.da:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.us.us.us.i, %bb.cz, %bb.cy
  %.13.us.us.us.i = phi nsz float [ %.113187.us.us.us.i, %bb.cy ], [ %.113187.us.us.us.i, %bb.cz ], [ %i.byo, %_ZN4ncnn3MatD2Ev.exit.us.us.us.i ] ; 2 uses
  %indvars.iv.next3557.i = add nuw nsw i64 %indvars.iv3556.i, 1 ; 2 uses
  %exitcond3560.not.i = icmp eq i64 %indvars.iv.next3557.i, %i.bxe
  br i1 %exitcond3560.not.i, label %..loopexit2539_crit_edge.us.us.us.i, label %bb.cy, !llvm.loop !614

..loopexit2539_crit_edge.us.us.us.i:              ; preds = %bb.da, %bb.cx, %bb.cw
  %.15.us.us.us.i = phi nsz float [ %.103192.us.us.us.i, %bb.cw ], [ %.103192.us.us.us.i, %bb.cx ], [ %.13.us.us.us.i, %bb.da ] ; 3 uses
  %indvars.iv.next3562.i = add nuw nsw i64 %indvars.iv3561.i, 1 ; 2 uses
  %exitcond3565.not.i = icmp eq i64 %indvars.iv.next3562.i, %wide.trip.count3505.i
  br i1 %exitcond3565.not.i, label %._crit_edge3195.split.us.us.us.i, label %bb.cw, !llvm.loop !615

._crit_edge3195.split.us.us.us.i:                 ; preds = %..loopexit2539_crit_edge.us.us.us.i
  %i.byp = getelementptr inbounds [2 x i8], ptr %.37273202.us.us.i, i64 %i.bks
  %indvars.iv.next3567.i = add nuw nsw i64 %indvars.iv3566.i, 1 ; 2 uses
  %i.byq = trunc nuw i64 %indvars.iv.next3567.i to i32
  %i.byr = icmp sgt i32 %i.apc, %i.byq
  br i1 %i.byr, label %.preheader2546.us.us.i, label %._crit_edge3205.i, !llvm.loop !616

._crit_edge3205.i:                                ; preds = %._crit_edge3195.split.us.us.us.i, %.preheader2546.lr.ph.i, %.preheader2550.i
  %.9.lcssa.i = phi float [ %.1729.lcssa.i, %.preheader2550.i ], [ %.1729.lcssa.i, %.preheader2546.lr.ph.i ], [ %.15.us.us.us.i, %._crit_edge3195.split.us.us.us.i ] ; 13 uses
  switch i32 %i.bkh, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i [
    i32 1, label %bb.db
    i32 2, label %bb.dc
    i32 3, label %bb.dd
    i32 4, label %bb.de
    i32 5, label %bb.df
    i32 6, label %bb.dg
  ]

bb.db:                                            ; preds = %._crit_edge3205.i
  %i.bys = call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %.9.lcssa.i, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.dc:                                            ; preds = %._crit_edge3205.i
  %i.byt = load ptr, ptr %i.eg, align 8, !tbaa !20
  %i.byu = load float, ptr %i.byt, align 4, !tbaa !39
  %i.byv = fcmp fast ogt float %.9.lcssa.i, 0.000000e+00
  %i.byw = select fast i1 %i.byv, float 1.000000e+00, float %i.byu
  %i.byx = fmul fast float %i.byw, %.9.lcssa.i
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.dd:                                            ; preds = %._crit_edge3205.i
  %i.byy = load ptr, ptr %i.eg, align 8, !tbaa !20 ; 2 uses
  %i.byz = load float, ptr %i.byy, align 4, !tbaa !39
  %i.bza = getelementptr inbounds nuw i8, ptr %i.byy, i64 4
  %i.bzb = load float, ptr %i.bza, align 4, !tbaa !39
  %spec.select2488.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.9.lcssa.i, float %i.byz)
  %spec.select2489.i = call nnan ninf nsz float @llvm.minnum.f32(float %spec.select2488.i, float %i.bzb)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.de:                                            ; preds = %._crit_edge3205.i
  %.sroa.speculated2235.i = call nnan ninf nsz float @llvm.minnum.f32(float %.9.lcssa.i, float f0x42B0C0A5)
  %.sroa.speculated.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated2235.i, float f0xC2B0C0A5)
  %i.bzc = fneg fast float %.sroa.speculated.i
  %i.bzd = call fast float @llvm.exp.f32(float %i.bzc)
  %i.bze = fadd fast float %i.bzd, 1.000000e+00
  %i.bzf = fdiv fast float 1.000000e+00, %i.bze
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.df:                                            ; preds = %._crit_edge3205.i
  %i.bzg = call fast float @llvm.exp.f32(float nofpclass(nan inf) %.9.lcssa.i)
  %i.bzh = fadd fast float %i.bzg, 1.000000e+00
  %i.bzi = call fast float @llvm.log.f32(float %i.bzh)
  %i.bzj = call fast float @llvm.tanh.f32(float %i.bzi)
  %i.bzk = fmul fast float %i.bzj, %.9.lcssa.i
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.dg:                                            ; preds = %._crit_edge3205.i
  %i.bzl = load ptr, ptr %i.eg, align 8, !tbaa !20 ; 2 uses
  %i.bzm = load float, ptr %i.bzl, align 4, !tbaa !39 ; 3 uses
  %i.bzn = getelementptr inbounds nuw i8, ptr %i.bzl, i64 4
  %i.bzo = load float, ptr %i.bzn, align 4, !tbaa !39 ; 2 uses
  %i.bzp = fneg fast float %i.bzo
  %i.bzq = fdiv fast float %i.bzp, %i.bzm         ; 2 uses
  %i.bzr = fcmp fast olt float %.9.lcssa.i, %i.bzq
  br i1 %i.bzr, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.bzs = fdiv fast float 1.000000e+00, %i.bzm
  %i.bzt = fadd fast float %i.bzq, %i.bzs
  %i.bzu = fcmp fast ogt float %.9.lcssa.i, %i.bzt
  br i1 %i.bzu, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.bzv = fmul fast float %i.bzm, %.9.lcssa.i
  %i.bzw = fadd fast float %i.bzv, %i.bzo
  %i.bzx = fmul fast float %i.bzw, %.9.lcssa.i
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit.i:         ; preds = %bb.di, %bb.dh, %bb.dg, %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.db, %._crit_edge3205.i
  %.12381.i = phi nsz float [ %.9.lcssa.i, %._crit_edge3205.i ], [ %i.bys, %bb.db ], [ %i.byx, %bb.dc ], [ 0.000000e+00, %bb.dg ], [ %spec.select2489.i, %bb.dd ], [ %i.bzf, %bb.de ], [ %i.bzk, %bb.df ], [ %i.bzx, %bb.di ], [ %.9.lcssa.i, %bb.dh ]
  %i.bzy = bitcast float %.12381.i to i32
  %i.bzz = lshr i32 %i.bzy, 16
  %i.caa = trunc nuw i32 %i.bzz to i16
  store i16 %i.caa, ptr %.17353216.i, align 2, !tbaa !89
  %i.cab = getelementptr inbounds nuw i8, ptr %.17353216.i, i64 2 ; 2 uses
  %i.cac = add nuw nsw i32 %.07323217.i, 1        ; 2 uses
  %exitcond3569.not.i = icmp eq i32 %i.cac, %i.apf
  br i1 %exitcond3569.not.i, label %._crit_edge3218.i, label %bb.ce, !llvm.loop !617

.loopexit:                                        ; preds = %._crit_edge3222.i, %_ZN4ncnn3MatD2Ev.exit946.lr.ph.i, %._crit_edge3034.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke void @_ZNK4ncnn13Deconvolution11cut_paddingERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.dj unwind label %bb.h

bb.dj:                                            ; preds = %.loopexit
  %i.cad = load ptr, ptr %2, align 8, !tbaa !20
  %i.cae = icmp eq ptr %i.cad, null
  br i1 %i.cae, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.dj
  %i.caf = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.cag = load i64, ptr %i.caf, align 8, !tbaa !21
  %i.cah = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.cai = load i32, ptr %i.cah, align 8, !tbaa !62
  %i.caj = sext i32 %i.cai to i64
  %i.cak = mul i64 %i.cag, %i.caj
  %.fr = freeze i64 %i.cak
  %i.cal = icmp eq i64 %.fr, 0
  br i1 %i.cal, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %_ZNK4ncnn3Mat5emptyEv.exit42.thread

_ZNK4ncnn3Mat5emptyEv.exit.thread:                ; preds = %bb.dj, %_ZNK4ncnn3Mat5emptyEv.exit
  br label %_ZNK4ncnn3Mat5emptyEv.exit42.thread

_ZNK4ncnn3Mat5emptyEv.exit42.thread:              ; preds = %bb.v, %_ZNK4ncnn3Mat5emptyEv.exit.thread, %_ZNK4ncnn3Mat5emptyEv.exit, %_ZNK4ncnn3Mat5emptyEv.exit42
  %.0 = phi i32 [ -100, %_ZNK4ncnn3Mat5emptyEv.exit42 ], [ 0, %_ZNK4ncnn3Mat5emptyEv.exit ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit.thread ], [ -100, %bb.v ]
  %i.cam = load ptr, ptr %i.be, align 8, !tbaa !18 ; 2 uses
  %.not.i33 = icmp eq ptr %i.cam, null
  br i1 %.not.i33, label %_ZN4ncnn3MatD2Ev.exit, label %bb.dk

bb.dk:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit42.thread
  %i.can = atomicrmw add ptr %i.cam, i32 -1 acq_rel, align 4
  %i.cao = icmp eq i32 %i.can, 1
  br i1 %i.cao, label %bb.dl, label %_ZN4ncnn3MatD2Ev.exit

bb.dl:                                            ; preds = %bb.dk
  %i.cap = load ptr, ptr %i.bh, align 16, !tbaa !19 ; 3 uses
  %.not3.i34 = icmp eq ptr %i.cap, null
  %i.caq = load ptr, ptr %4, align 16, !tbaa !20  ; 3 uses
  br i1 %.not3.i34, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.car = load ptr, ptr %i.cap, align 8, !tbaa !12
  %i.cas = getelementptr inbounds nuw i8, ptr %i.car, i64 24
  %i.cat = load ptr, ptr %i.cas, align 8
  invoke void %i.cat(ptr noundef nonnull align 8 dereferenceable(8) %i.cap, ptr noundef %i.caq)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.dp, !inline_history !0

bb.dn:                                            ; preds = %bb.dl
  %.not.i37 = icmp eq ptr %i.caq, null
  br i1 %.not.i37, label %_ZN4ncnn3MatD2Ev.exit, label %bb.do

bb.do:                                            ; preds = %bb.dn
  call void @free(ptr noundef nonnull %i.caq) #10
  br label %_ZN4ncnn3MatD2Ev.exit

bb.dp:                                            ; preds = %bb.dm
end_hunk_4
begin_hunk_5_@_ZNK4ncnn21Deconvolution_x86_fma7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.2:bb.a
._crit_edge:                                      ; preds = %._ZN4ncnn3Mat4fillEf.exit.preheader_crit_edge.us115, %.noexc44.us108.us.prol.loopexit, %.noexc44.us108.us, %.noexc44.us98.prol.loopexit, %.noexc44.us98, %_ZN4ncnn3Mat4fillEf.exit._ZN4ncnn3MatD2Ev.exit_crit_edge.split.us, %.noexc44.lr.ph.split.split, %.noexc44.lr.ph.split.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

declare void @_ZNK4ncnn13Deconvolution11cut_paddingERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(504), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL20deconvolution_packedERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %14, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %15, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %16, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %17, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %18, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %19) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !61     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.ag

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.g, ptr %i.b, align 4, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 1, ptr %i.c, align 4, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !tbaa !61
  %i.h = load i32, ptr %0, align 4, !tbaa !61     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !61
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !61
  %i.k = load i32, ptr %i.a, align 4, !tbaa !61   ; 2 uses
  %.not1424 = icmp sgt i32 %i.k, %i.j
  br i1 %.not1424, label %._crit_edge1426, label %.noexc527.lr.ph

.noexc527.lr.ph:                                  ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.y = load i32, ptr %i.q, align 8, !tbaa !66
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.noexc527, label %._crit_edge1426

.noexc527:                                        ; preds = %.noexc527.lr.ph, %._crit_edge1423.split
  %.03391425 = phi i32 [ %i.bi, %._crit_edge1423.split ], [ %i.k, %.noexc527.lr.ph ] ; 3 uses
  %i.aa = load i32, ptr %i.l, align 8, !tbaa !60
  %.fr = freeze i32 %i.aa                         ; 3 uses
  %i.ab = load i32, ptr %i.m, align 8, !tbaa !62
  %i.ac = mul i32 %i.ab, %.fr                     ; 11 uses
  %i.ad = load i32, ptr %i.n, align 4, !tbaa !54  ; 5 uses
  %i.ae = load i32, ptr %i.o, align 8, !tbaa !66  ; 4 uses
  %i.af = load i32, ptr %i.p, align 4, !tbaa !54  ; 2 uses
  %i.ag = load i32, ptr %i.q, align 8, !tbaa !66  ; 2 uses
  %i.ah = load i32, ptr %i.r, align 8, !tbaa !60  ; 2 uses
  %i.ai = icmp sgt i32 %i.ag, 0
  br i1 %i.ai, label %.preheader1258.lr.ph, label %._crit_edge1423.split

.preheader1258.lr.ph:                             ; preds = %.noexc527
  %i.aj = load i32, ptr %3, align 4, !tbaa !61
  %i.ak = shl nsw i32 %.03391425, 3
  %i.al = add nsw i32 %i.aj, %i.ak                ; 3 uses
  %i.am = icmp sgt i32 %i.af, 0
  %i.an = sext i32 %i.al to i64
  %i.ao = sdiv i32 %i.al, 8
  %i.ap = sext i32 %i.ao to i64
  %i.aq = icmp sgt i32 %i.ac, 7
  br i1 %i.am, label %.preheader1258.preheader, label %._crit_edge1423.split

.preheader1258.preheader:                         ; preds = %.preheader1258.lr.ph
  %i.ar = load ptr, ptr %5, align 8, !tbaa !20, !noalias !712
  %i.as = load i64, ptr %i.s, align 8, !tbaa !21, !noalias !712
  %i.at = sdiv i32 %i.al, %i.ah
  %i.au = sext i32 %i.at to i64
  %i.av = mul i64 %i.as, %i.au
  %i.aw = load i64, ptr %i.t, align 8, !tbaa !55, !noalias !712
  %i.ax = mul i64 %i.av, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ax
  %i.az = add i32 %i.ac, -8                       ; 3 uses
  %i.ba = lshr i32 %i.az, 1
  %i.bb = and i32 %i.ba, 2147483644
  %narrow = add nuw i32 %i.bb, 4
  %i.bc = zext i32 %narrow to i64
  %i.bd = and i32 %i.az, -8
  %i.be = add nuw i32 %i.bd, 8
  %i.bf = sext i32 %i.ac to i64
  %i.bg = and i32 %i.az, -8
  %i.bh = add i32 %i.bg, 8
  %invariant.op = add nsw i64 %i.bf, -7
  br label %.preheader1258

.preheader1258:                                   ; preds = %.preheader1258.preheader, %._crit_edge
  %.03341422 = phi i32 [ %.neg1242, %._crit_edge ], [ 0, %.preheader1258.preheader ]
  %.03351421 = phi ptr [ %.4, %._crit_edge ], [ %i.ay, %.preheader1258.preheader ]
  %.neg1242 = add nuw nsw i32 %.03341422, 1       ; 6 uses
  br label %bb.c

._crit_edge1423.split:                            ; preds = %._crit_edge, %.preheader1258.lr.ph, %.noexc527
  %i.bi = add i32 %.03391425, 1
  %exitcond1487.not = icmp eq i32 %.03391425, %i.j
  br i1 %exitcond1487.not, label %._crit_edge1426, label %.noexc527, !llvm.loop !681

._crit_edge:                                      ; preds = %.thread1227
  %exitcond1486.not = icmp eq i32 %.neg1242, %i.ag
  br i1 %exitcond1486.not, label %._crit_edge1423.split, label %.preheader1258, !llvm.loop !682

bb.c:                                             ; preds = %.preheader1258, %.thread1227
  %.03331420 = phi i32 [ 0, %.preheader1258 ], [ %i.abq, %.thread1227 ] ; 5 uses
  %.13361419 = phi ptr [ %.03351421, %.preheader1258 ], [ %.4, %.thread1227 ] ; 15 uses
  %i.bj = load ptr, ptr %6, align 8, !tbaa !86    ; 2 uses
  %.not364 = icmp eq ptr %i.bj, null
  br i1 %.not364, label %_ZN4ncnn3MatD2Ev.exit404, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.an
  %i.bl = load <8 x float>, ptr %i.bk, align 1, !tbaa !82
  br label %_ZN4ncnn3MatD2Ev.exit404

_ZN4ncnn3MatD2Ev.exit404:                         ; preds = %bb.d, %bb.c
  %.01177 = phi nsz <8 x float> [ zeroinitializer, %bb.c ], [ %i.bl, %bb.d ] ; 3 uses
  %i.bm = load ptr, ptr %7, align 8, !tbaa !20, !noalias !713 ; 2 uses
  %i.bn = load i64, ptr %i.u, align 8, !tbaa !21, !noalias !713
  %i.bo = mul i64 %i.bn, %i.ap
  %i.bp = load i64, ptr %i.v, align 8, !tbaa !55, !noalias !713
  %i.bq = mul i64 %i.bo, %i.bp                    ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bq ; 2 uses
  br i1 %i.aq, label %.preheader1254.lr.ph, label %.preheader1257

.preheader1254.lr.ph:                             ; preds = %_ZN4ncnn3MatD2Ev.exit404
  %i.bs = load i32, ptr %8, align 4, !tbaa !61    ; 2 uses
  %i.bt = icmp sgt i32 %i.bs, 0
  %.neg1244 = add nuw nsw i32 %.03331420, 1
  %i.bu = load i32, ptr %16, align 4, !tbaa !61
  %i.bv = shl i32 %i.bu, 6
  %i.bw = sext i32 %i.bv to i64                   ; 2 uses
  br i1 %i.bt, label %.preheader1254.lr.ph.split.us, label %.preheader1254.preheader

.preheader1254.preheader:                         ; preds = %.preheader1254.lr.ph
  %i.bx = mul nsw i64 %i.bc, %i.bw
  %i.by = getelementptr i8, ptr %i.bm, i64 %i.bq
  %scevgep = getelementptr i8, ptr %i.by, i64 %i.bx
  br label %.preheader1257

.preheader1254.lr.ph.split.us:                    ; preds = %.preheader1254.lr.ph
  %i.bz = load i32, ptr %9, align 4, !tbaa !61
  %i.ca = load i32, ptr %10, align 4, !tbaa !61
  %invariant.op1277.us = sub i32 %.neg1242, %i.ca
  br label %.preheader1254.us

.preheader1254.us:                                ; preds = %._crit_edge.us, %.preheader1254.lr.ph.split.us
  %indvars.iv1447 = phi i64 [ %indvars.iv.next1448, %._crit_edge.us ], [ 0, %.preheader1254.lr.ph.split.us ] ; 11 uses
  %.03291283.us = phi ptr [ %i.ki, %._crit_edge.us ], [ %i.br, %.preheader1254.lr.ph.split.us ] ; 2 uses
  %.111781282.us = phi <8 x float> [ %.7.us, %._crit_edge.us ], [ %.01177, %.preheader1254.lr.ph.split.us ]
  %.011821281.us = phi <8 x float> [ %.61188.us, %._crit_edge.us ], [ zeroinitializer, %.preheader1254.lr.ph.split.us ]
  %.012001280.us = phi <8 x float> [ %.61206.us, %._crit_edge.us ], [ zeroinitializer, %.preheader1254.lr.ph.split.us ]
  %.012131279.us = phi <8 x float> [ %.61219.us, %._crit_edge.us ], [ zeroinitializer, %.preheader1254.lr.ph.split.us ]
  %i.cb = or disjoint i64 %indvars.iv1447, 7
  %i.cc = or disjoint i64 %indvars.iv1447, 1
  %i.cd = or disjoint i64 %indvars.iv1447, 2
  %i.ce = or disjoint i64 %indvars.iv1447, 3
  %i.cf = or disjoint i64 %indvars.iv1447, 4
  %i.cg = or disjoint i64 %indvars.iv1447, 5
  %i.ch = or disjoint i64 %indvars.iv1447, 6
  %i.ci = lshr exact i64 %indvars.iv1447, 2       ; 2 uses
  %i.cj = or disjoint i64 %i.ci, 1
  %i.ck = lshr exact i64 %indvars.iv1447, 3
  br label %bb.e

bb.e:                                             ; preds = %.preheader1254.us, %.loopexit1250.us
  %.03271271.us = phi i32 [ 0, %.preheader1254.us ], [ %i.kb, %.loopexit1250.us ] ; 3 uses
  %.211791270.us = phi <8 x float> [ %.111781282.us, %.preheader1254.us ], [ %.7.us, %.loopexit1250.us ] ; 4 uses
  %.111831269.us = phi <8 x float> [ %.011821281.us, %.preheader1254.us ], [ %.61188.us, %.loopexit1250.us ] ; 4 uses
  %.112011268.us = phi <8 x float> [ %.012001280.us, %.preheader1254.us ], [ %.61206.us, %.loopexit1250.us ] ; 4 uses
  %.112141267.us = phi <8 x float> [ %.012131279.us, %.preheader1254.us ], [ %.61219.us, %.loopexit1250.us ] ; 4 uses
  %i.cl = mul nsw i32 %i.bz, %.03271271.us
  %.reass1278.us = add i32 %i.cl, %invariant.op1277.us ; 3 uses
  %i.cm = icmp slt i32 %.reass1278.us, 0
  br i1 %i.cm, label %.loopexit1250.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cn = load i32, ptr %11, align 4, !tbaa !61   ; 2 uses
  %i.co = srem i32 %.reass1278.us, %i.cn
  %i.cp = sdiv exact i32 %.reass1278.us, %i.cn    ; 2 uses
  %.not382.us = icmp eq i32 %i.co, 0
  %.not383.us = icmp slt i32 %i.cp, %i.ae
  %or.cond = select i1 %.not382.us, i1 %.not383.us, i1 false
  br i1 %or.cond, label %.preheader1249.us, label %.loopexit1250.us

bb.g:                                             ; preds = %.lr.ph.us, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next, %bb.k ] ; 3 uses
  %.311801262.us = phi <8 x float> [ %.211791270.us, %.lr.ph.us ], [ %.6.us, %bb.k ] ; 4 uses
  %.211841261.us = phi <8 x float> [ %.111831269.us, %.lr.ph.us ], [ %.51187.us, %bb.k ] ; 4 uses
  %.212021260.us = phi <8 x float> [ %.112011268.us, %.lr.ph.us ], [ %.51205.us, %bb.k ] ; 4 uses
  %.212151259.us = phi <8 x float> [ %.112141267.us, %.lr.ph.us ], [ %.51218.us, %bb.k ] ; 4 uses
  %i.cq = trunc i64 %indvars.iv to i32
  %i.cr = mul i32 %i.ke, %i.cq
  %.reass.us = add i32 %i.cr, %invariant.op.us    ; 3 uses
  %i.cs = icmp slt i32 %.reass.us, 0
  br i1 %i.cs, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ct = load i32, ptr %15, align 4, !tbaa !61   ; 2 uses
  %i.cu = srem i32 %.reass.us, %i.ct
  %i.cv = sdiv exact i32 %.reass.us, %i.ct        ; 4 uses
  %.not384.us = icmp eq i32 %i.cu, 0
  %.not385.us = icmp slt i32 %i.cv, %i.ad
  %or.cond1559 = select i1 %.not384.us, i1 %.not385.us, i1 false
  br i1 %or.cond1559, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.cw = trunc i64 %indvars.iv to i32
  %i.cx = add i32 %i.kg, %i.cw
  %i.cy = shl nsw i32 %i.cx, 6
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %.03291283.us, i64 %i.cz ; 8 uses
  switch i32 %.fr, label %bb.k [
    i32 8, label %bb.j
    i32 4, label %_ZN4ncnn3MatD2Ev.exit402.us
    i32 1, label %_ZN4ncnn3MatD2Ev.exit400.us
  ]

_ZN4ncnn3MatD2Ev.exit400.us:                      ; preds = %bb.i
  %i.db = load i32, ptr %i.n, align 4, !tbaa !54, !noalias !714
  %i.dc = load ptr, ptr %4, align 8, !tbaa !20, !noalias !714 ; 8 uses
  %i.dd = load i64, ptr %i.w, align 8, !tbaa !21, !noalias !714 ; 8 uses
  %i.de = mul i64 %i.dd, %indvars.iv1447
  %i.df = load i64, ptr %i.x, align 8, !tbaa !55, !noalias !714 ; 9 uses
  %i.dg = mul i64 %i.de, %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.dg
  %i.di = sext i32 %i.db to i64
  %i.dj = mul nsw i64 %i.di, %i.kh
  %i.dk = mul i64 %i.dj, %i.df                    ; 8 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dk
  %i.dm = sext i32 %i.cv to i64                   ; 8 uses
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.dl, i64 %i.dm
  %i.do = mul i64 %i.dd, %i.cc
  %i.dp = mul i64 %i.do, %i.df
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.dk
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.dr, i64 %i.dm
  %i.dt = mul i64 %i.dd, %i.cd
  %i.du = mul i64 %i.dt, %i.df
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dk
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.dm
  %i.dy = mul i64 %i.dd, %i.ce
  %i.dz = mul i64 %i.dy, %i.df
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.dk
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.eb, i64 %i.dm
  %i.ed = mul i64 %i.dd, %i.cf
  %i.ee = mul i64 %i.ed, %i.df
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.dk
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.dm
  %i.ei = mul i64 %i.dd, %i.cg
  %i.ej = mul i64 %i.ei, %i.df
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.dk
  %i.em = getelementptr inbounds [4 x i8], ptr %i.el, i64 %i.dm
  %i.en = mul i64 %i.dd, %i.ch
  %i.eo = mul i64 %i.en, %i.df
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.dk
  %i.er = mul i64 %i.dd, %i.cb
  %i.es = mul i64 %i.er, %i.df
  %i.et = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.es
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %i.dm
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.dk
  %i.ew = getelementptr inbounds [4 x i8], ptr %i.ev, i64 %i.dm
  %i.ex = load float, ptr %i.dn, align 1, !tbaa !82
  %i.ey = insertelement <8 x float> poison, float %i.ex, i64 0
  %i.ez = shufflevector <8 x float> %i.ey, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fa = load float, ptr %i.ds, align 1, !tbaa !82
  %i.fb = insertelement <8 x float> poison, float %i.fa, i64 0
  %i.fc = shufflevector <8 x float> %i.fb, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fd = load float, ptr %i.dx, align 1, !tbaa !82
  %i.fe = insertelement <8 x float> poison, float %i.fd, i64 0
  %i.ff = shufflevector <8 x float> %i.fe, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fg = load float, ptr %i.ec, align 1, !tbaa !82
  %i.fh = insertelement <8 x float> poison, float %i.fg, i64 0
  %i.fi = shufflevector <8 x float> %i.fh, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fj = load float, ptr %i.eh, align 1, !tbaa !82
  %i.fk = insertelement <8 x float> poison, float %i.fj, i64 0
  %i.fl = shufflevector <8 x float> %i.fk, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fm = load float, ptr %i.em, align 1, !tbaa !82
  %i.fn = insertelement <8 x float> poison, float %i.fm, i64 0
  %i.fo = shufflevector <8 x float> %i.fn, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fp = load float, ptr %i.eu, align 1, !tbaa !82
  %i.fq = insertelement <8 x float> poison, float %i.fp, i64 0
  %i.fr = shufflevector <8 x float> %i.fq, <8 x float> poison, <8 x i32> zeroinitializer
  br label %.sink.split

_ZN4ncnn3MatD2Ev.exit402.us:                      ; preds = %bb.i
  %i.fs = load i32, ptr %i.n, align 4, !tbaa !54, !noalias !715
  %i.ft = load ptr, ptr %4, align 8, !tbaa !20, !noalias !715 ; 2 uses
  %i.fu = load i64, ptr %i.w, align 8, !tbaa !21, !noalias !715 ; 2 uses
  %i.fv = mul i64 %i.fu, %i.ci
  %i.fw = load i64, ptr %i.x, align 8, !tbaa !55, !noalias !715 ; 3 uses
  %i.fx = mul i64 %i.fv, %i.fw
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fx
  %i.fz = sext i32 %i.fs to i64
  %i.ga = mul nsw i64 %i.fz, %i.kh
  %i.gb = mul i64 %i.ga, %i.fw                    ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.gb
  %i.gd = mul i64 %i.fu, %i.cj
  %i.ge = mul i64 %i.gd, %i.fw
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.ge
  %i.gg = shl nsw i32 %i.cv, 2
  %i.gh = sext i32 %i.gg to i64                   ; 2 uses
  %i.gi = getelementptr inbounds [4 x i8], ptr %i.gc, i64 %i.gh ; 4 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.gb
  %i.gk = getelementptr inbounds [4 x i8], ptr %i.gj, i64 %i.gh ; 4 uses
  %i.gl = load float, ptr %i.gi, align 1, !tbaa !82
  %i.gm = insertelement <8 x float> poison, float %i.gl, i64 0
  %i.gn = shufflevector <8 x float> %i.gm, <8 x float> poison, <8 x i32> zeroinitializer
  %i.go = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  %i.gp = load float, ptr %i.go, align 1, !tbaa !82
  %i.gq = insertelement <8 x float> poison, float %i.gp, i64 0
  %i.gr = shufflevector <8 x float> %i.gq, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gt = load float, ptr %i.gs, align 1, !tbaa !82
  %i.gu = insertelement <8 x float> poison, float %i.gt, i64 0
  %i.gv = shufflevector <8 x float> %i.gu, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gi, i64 12
  %i.gx = load float, ptr %i.gw, align 1, !tbaa !82
  %i.gy = insertelement <8 x float> poison, float %i.gx, i64 0
  %i.gz = shufflevector <8 x float> %i.gy, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ha = load float, ptr %i.gk, align 1, !tbaa !82
  %i.hb = insertelement <8 x float> poison, float %i.ha, i64 0
  %i.hc = shufflevector <8 x float> %i.hb, <8 x float> poison, <8 x i32> zeroinitializer
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gk, i64 4
  %i.he = load float, ptr %i.hd, align 1, !tbaa !82
  %i.hf = insertelement <8 x float> poison, float %i.he, i64 0
  %i.hg = shufflevector <8 x float> %i.hf, <8 x float> poison, <8 x i32> zeroinitializer
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.hi = load float, ptr %i.hh, align 1, !tbaa !82
  %i.hj = insertelement <8 x float> poison, float %i.hi, i64 0
  %i.hk = shufflevector <8 x float> %i.hj, <8 x float> poison, <8 x i32> zeroinitializer
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gk, i64 12
  br label %.sink.split

bb.j:                                             ; preds = %bb.i
  %i.hm = load i32, ptr %i.n, align 4, !tbaa !54, !noalias !716
  %i.hn = load ptr, ptr %4, align 8, !tbaa !20, !noalias !716
  %i.ho = load i64, ptr %i.w, align 8, !tbaa !21, !noalias !716
  %i.hp = mul i64 %i.ho, %i.ck
  %i.hq = load i64, ptr %i.x, align 8, !tbaa !55, !noalias !716 ; 2 uses
  %i.hr = mul i64 %i.hp, %i.hq
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.hr
  %i.ht = sext i32 %i.hm to i64
  %i.hu = mul nsw i64 %i.ht, %i.kh
  %i.hv = mul i64 %i.hu, %i.hq
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.hv
  %i.hx = shl nsw i32 %i.cv, 3
  %i.hy = sext i32 %i.hx to i64
  %i.hz = getelementptr inbounds [4 x i8], ptr %i.hw, i64 %i.hy ; 8 uses
  %i.ia = load float, ptr %i.hz, align 1, !tbaa !82
  %i.ib = insertelement <8 x float> poison, float %i.ia, i64 0
  %i.ic = shufflevector <8 x float> %i.ib, <8 x float> poison, <8 x i32> zeroinitializer
  %i.id = getelementptr inbounds nuw i8, ptr %i.hz, i64 4
  %i.ie = load float, ptr %i.id, align 1, !tbaa !82
  %i.if = insertelement <8 x float> poison, float %i.ie, i64 0
  %i.ig = shufflevector <8 x float> %i.if, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %i.ii = load float, ptr %i.ih, align 1, !tbaa !82
  %i.ij = insertelement <8 x float> poison, float %i.ii, i64 0
  %i.ik = shufflevector <8 x float> %i.ij, <8 x float> poison, <8 x i32> zeroinitializer
  %i.il = getelementptr inbounds nuw i8, ptr %i.hz, i64 12
  %i.im = load float, ptr %i.il, align 1, !tbaa !82
  %i.in = insertelement <8 x float> poison, float %i.im, i64 0
  %i.io = shufflevector <8 x float> %i.in, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  %i.iq = load float, ptr %i.ip, align 1, !tbaa !82
  %i.ir = insertelement <8 x float> poison, float %i.iq, i64 0
  %i.is = shufflevector <8 x float> %i.ir, <8 x float> poison, <8 x i32> zeroinitializer
  %i.it = getelementptr inbounds nuw i8, ptr %i.hz, i64 20
  %i.iu = load float, ptr %i.it, align 1, !tbaa !82
  %i.iv = insertelement <8 x float> poison, float %i.iu, i64 0
  %i.iw = shufflevector <8 x float> %i.iv, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ix = getelementptr inbounds nuw i8, ptr %i.hz, i64 24
  %i.iy = load float, ptr %i.ix, align 1, !tbaa !82
  %i.iz = insertelement <8 x float> poison, float %i.iy, i64 0
  %i.ja = shufflevector <8 x float> %i.iz, <8 x float> poison, <8 x i32> zeroinitializer
  %i.jb = getelementptr inbounds nuw i8, ptr %i.hz, i64 28
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit400.us, %_ZN4ncnn3MatD2Ev.exit402.us, %bb.j
  %.sink.in = phi ptr [ %i.jb, %bb.j ], [ %i.hl, %_ZN4ncnn3MatD2Ev.exit402.us ], [ %i.ew, %_ZN4ncnn3MatD2Ev.exit400.us ]
  %.sink1548 = phi <8 x float> [ %i.ic, %bb.j ], [ %i.gn, %_ZN4ncnn3MatD2Ev.exit402.us ], [ %i.ez, %_ZN4ncnn3MatD2Ev.exit400.us ]
  %.sink1545 = phi <8 x float> [ %i.ig, %bb.j ], [ %i.gr, %_ZN4ncnn3MatD2Ev.exit402.us ], [ %i.fc, %_ZN4ncnn3MatD2Ev.exit400.us ]
  %.sink1542 = phi <8 x float> [ %i.ik, %bb.j ], [ %i.gv, %_ZN4ncnn3MatD2Ev.exit402.us ], [ %i.ff, %_ZN4ncnn3MatD2Ev.exit400.us ]
  %.sink1539 = phi <8 x float> [ %i.io, %bb.j ], [ %i.gz, %_ZN4ncnn3MatD2Ev.exit402.us ], [ %i.fi, %_ZN4ncnn3MatD2Ev.exit400.us ]
  %.sink1535 = phi <8 x float> [ %i.is, %bb.j ], [ %i.hc, %_ZN4ncnn3MatD2Ev.exit402.us ], [ %i.fl, %_ZN4ncnn3MatD2Ev.exit400.us ]
  %.sink1531 = phi <8 x float> [ %i.iw, %bb.j ], [ %i.hg, %_ZN4ncnn3MatD2Ev.exit402.us ], [ %i.fo, %_ZN4ncnn3MatD2Ev.exit400.us ]
  %.sink1527 = phi <8 x float> [ %i.ja, %bb.j ], [ %i.hk, %_ZN4ncnn3MatD2Ev.exit402.us ], [ %i.fr, %_ZN4ncnn3MatD2Ev.exit400.us ]
  %.sink = load float, ptr %.sink.in, align 1, !tbaa !82
  %i.jc = insertelement <8 x float> poison, float %.sink, i64 0
  %i.jd = shufflevector <8 x float> %i.jc, <8 x float> poison, <8 x i32> zeroinitializer
  %i.je = load <8 x float>, ptr %i.da, align 32, !tbaa !82
  %i.jf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.sink1548, <8 x float> nofpclass(nan inf) %i.je, <8 x float> nofpclass(nan inf) %.311801262.us)
  %i.jg = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  %i.jh = load <8 x float>, ptr %i.jg, align 32, !tbaa !82
  %i.ji = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.sink1545, <8 x float> nofpclass(nan inf) %i.jh, <8 x float> nofpclass(nan inf) %.211841261.us)
  %i.jj = getelementptr inbounds nuw i8, ptr %i.da, i64 64
  %i.jk = load <8 x float>, ptr %i.jj, align 32, !tbaa !82
  %i.jl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.sink1542, <8 x float> nofpclass(nan inf) %i.jk, <8 x float> nofpclass(nan inf) %.212021260.us)
  %i.jm = getelementptr inbounds nuw i8, ptr %i.da, i64 96
  %i.jn = load <8 x float>, ptr %i.jm, align 32, !tbaa !82
  %i.jo = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.sink1539, <8 x float> nofpclass(nan inf) %i.jn, <8 x float> nofpclass(nan inf) %.212151259.us)
  %i.jp = getelementptr inbounds nuw i8, ptr %i.da, i64 128
  %i.jq = load <8 x float>, ptr %i.jp, align 32, !tbaa !82
  %i.jr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.sink1535, <8 x float> nofpclass(nan inf) %i.jq, <8 x float> nofpclass(nan inf) %i.jf)
  %i.js = getelementptr inbounds nuw i8, ptr %i.da, i64 160
  %i.jt = load <8 x float>, ptr %i.js, align 32, !tbaa !82
  %i.ju = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.sink1531, <8 x float> nofpclass(nan inf) %i.jt, <8 x float> nofpclass(nan inf) %i.ji)
  %i.jv = getelementptr inbounds nuw i8, ptr %i.da, i64 192
  %i.jw = load <8 x float>, ptr %i.jv, align 32, !tbaa !82
  %i.jx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.sink1527, <8 x float> nofpclass(nan inf) %i.jw, <8 x float> nofpclass(nan inf) %i.jl)
  %i.jy = getelementptr inbounds nuw i8, ptr %i.da, i64 224
  %i.jz = load <8 x float>, ptr %i.jy, align 32, !tbaa !82
  %i.ka = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jd, <8 x float> nofpclass(nan inf) %i.jz, <8 x float> nofpclass(nan inf) %i.jo)
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.i, %bb.h, %bb.g
  %.51218.us = phi nsz <8 x float> [ %.212151259.us, %bb.g ], [ %.212151259.us, %bb.i ], [ %.212151259.us, %bb.h ], [ %i.ka, %.sink.split ] ; 2 uses
  %.51205.us = phi nsz <8 x float> [ %.212021260.us, %bb.g ], [ %.212021260.us, %bb.i ], [ %.212021260.us, %bb.h ], [ %i.jx, %.sink.split ] ; 2 uses
  %.51187.us = phi nsz <8 x float> [ %.211841261.us, %bb.g ], [ %.211841261.us, %bb.i ], [ %.211841261.us, %bb.h ], [ %i.ju, %.sink.split ] ; 2 uses
  %.6.us = phi nsz <8 x float> [ %.311801262.us, %bb.g ], [ %.311801262.us, %bb.i ], [ %.311801262.us, %bb.h ], [ %i.jr, %.sink.split ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit1250.us, label %bb.g, !llvm.loop !691

.loopexit1250.us:                                 ; preds = %bb.k, %.preheader1249.us, %bb.f, %bb.e
  %.61219.us = phi nsz <8 x float> [ %.112141267.us, %bb.e ], [ %.112141267.us, %bb.f ], [ %.112141267.us, %.preheader1249.us ], [ %.51218.us, %bb.k ] ; 3 uses
  %.61206.us = phi nsz <8 x float> [ %.112011268.us, %bb.e ], [ %.112011268.us, %bb.f ], [ %.112011268.us, %.preheader1249.us ], [ %.51205.us, %bb.k ] ; 3 uses
  %.61188.us = phi nsz <8 x float> [ %.111831269.us, %bb.e ], [ %.111831269.us, %bb.f ], [ %.111831269.us, %.preheader1249.us ], [ %.51187.us, %bb.k ] ; 3 uses
  %.7.us = phi nsz <8 x float> [ %.211791270.us, %bb.e ], [ %.211791270.us, %bb.f ], [ %.211791270.us, %.preheader1249.us ], [ %.6.us, %bb.k ] ; 3 uses
  %i.kb = add nuw nsw i32 %.03271271.us, 1        ; 2 uses
  %exitcond1446.not = icmp eq i32 %i.kb, %i.bs
  br i1 %exitcond1446.not, label %._crit_edge.us, label %bb.e, !llvm.loop !692

.preheader1249.us:                                ; preds = %bb.f
  %i.kc = load i32, ptr %12, align 4, !tbaa !61   ; 3 uses
  %i.kd = icmp sgt i32 %i.kc, 0
  br i1 %i.kd, label %.lr.ph.us, label %.loopexit1250.us

.lr.ph.us:                                        ; preds = %.preheader1249.us
  %i.ke = load i32, ptr %13, align 4, !tbaa !61
  %i.kf = load i32, ptr %14, align 4, !tbaa !61
  %invariant.op.us = sub i32 %.neg1244, %i.kf
  %i.kg = mul nuw nsw i32 %i.kc, %.03271271.us
  %i.kh = sext i32 %i.cp to i64                   ; 3 uses
  %wide.trip.count = zext nneg i32 %i.kc to i64
  br label %bb.g

._crit_edge.us:                                   ; preds = %.loopexit1250.us
  %i.ki = getelementptr inbounds [4 x i8], ptr %.03291283.us, i64 %i.bw ; 2 uses
  %indvars.iv.next1448 = add nuw nsw i64 %indvars.iv1447, 8 ; 2 uses
  %i.kj = icmp slt i64 %indvars.iv.next1448, %invariant.op
  br i1 %i.kj, label %.preheader1254.us, label %.preheader1257, !llvm.loop !693

.preheader1257:                                   ; preds = %._crit_edge.us, %.preheader1254.preheader, %_ZN4ncnn3MatD2Ev.exit404
  %.01213.lcssa = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit404 ], [ zeroinitializer, %.preheader1254.preheader ], [ %.61219.us, %._crit_edge.us ] ; 3 uses
  %.01200.lcssa = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit404 ], [ zeroinitializer, %.preheader1254.preheader ], [ %.61206.us, %._crit_edge.us ] ; 3 uses
  %.01182.lcssa = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit404 ], [ zeroinitializer, %.preheader1254.preheader ], [ %.61188.us, %._crit_edge.us ] ; 3 uses
  %.11178.lcssa = phi <8 x float> [ %.01177, %_ZN4ncnn3MatD2Ev.exit404 ], [ %.01177, %.preheader1254.preheader ], [ %.7.us, %._crit_edge.us ] ; 3 uses
  %.0329.lcssa = phi ptr [ %i.br, %_ZN4ncnn3MatD2Ev.exit404 ], [ %scevgep, %.preheader1254.preheader ], [ %i.ki, %._crit_edge.us ] ; 3 uses
  %.0328.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit404 ], [ %i.be, %.preheader1254.preheader ], [ %i.bh, %._crit_edge.us ] ; 6 uses
  %i.kk = or disjoint i32 %.0328.lcssa, 3         ; 2 uses
  %i.kl = icmp slt i32 %i.kk, %i.ac
  br i1 %i.kl, label %.preheader1253.lr.ph, label %.preheader1256

.preheader1253.lr.ph:                             ; preds = %.preheader1257
  %i.km = load i32, ptr %8, align 4, !tbaa !61    ; 2 uses
  %i.kn = icmp sgt i32 %i.km, 0
  %.neg1240 = add nuw nsw i32 %.03331420, 1
  %i.ko = load i32, ptr %16, align 4, !tbaa !61
  %i.kp = shl i32 %i.ko, 5
  %i.kq = sext i32 %i.kp to i64                   ; 2 uses
  br i1 %i.kn, label %.preheader1253.lr.ph.split.us, label %.preheader1253.preheader

.preheader1253.preheader:                         ; preds = %.preheader1253.lr.ph
  %i.kr = add i32 %.0328.lcssa, 7
  %smax = call i32 @llvm.smax.i32(i32 %i.ac, i32 %i.kr)
  %i.ks = add i32 %smax, -4
  %i.kt = sub i32 %i.ks, %.0328.lcssa             ; 2 uses
  %i.ku = and i32 %i.kt, -4
  %i.kv = zext i32 %i.ku to i64
  %i.kw = add nuw nsw i64 %i.kv, 4
  %i.kx = mul nsw i64 %i.kw, %i.kq
  %scevgep1450 = getelementptr i8, ptr %.0329.lcssa, i64 %i.kx
  %i.ky = add i32 %.0328.lcssa, 4
  %i.kz = and i32 %i.kt, -4
  %i.la = add i32 %i.ky, %i.kz
  br label %.preheader1256

.preheader1253.lr.ph.split.us:                    ; preds = %.preheader1253.lr.ph
  %i.lb = load i32, ptr %9, align 4, !tbaa !61
  %i.lc = load i32, ptr %10, align 4, !tbaa !61
  %invariant.op1340.us = sub i32 %.neg1242, %i.lc
  %i.ld = zext i32 %.0328.lcssa to i64
  %i.le = zext nneg i32 %i.kk to i64
  br label %.preheader1253.us

.preheader1253.us:                                ; preds = %._crit_edge.us1363, %.preheader1253.lr.ph.split.us
  %indvars.iv1462 = phi i64 [ %indvars.iv.next1463, %._crit_edge.us1363 ], [ %i.ld, %.preheader1253.lr.ph.split.us ] ; 5 uses
  %i.lf = phi i64 [ %i.qf, %._crit_edge.us1363 ], [ %i.le, %.preheader1253.lr.ph.split.us ]
  %.13301346.us = phi ptr [ %i.qe, %._crit_edge.us1363 ], [ %.0329.lcssa, %.preheader1253.lr.ph.split.us ] ; 3 uses
  %.81345.us = phi <8 x float> [ %.13.us, %._crit_edge.us1363 ], [ %.11178.lcssa, %.preheader1253.lr.ph.split.us ]
  %.711891344.us = phi <8 x float> [ %.121194.us, %._crit_edge.us1363 ], [ %.01182.lcssa, %.preheader1253.lr.ph.split.us ]
  %.712071343.us = phi <8 x float> [ %.121212.us, %._crit_edge.us1363 ], [ %.01200.lcssa, %.preheader1253.lr.ph.split.us ]
  %.712201342.us = phi <8 x float> [ %.121225.us, %._crit_edge.us1363 ], [ %.01213.lcssa, %.preheader1253.lr.ph.split.us ]
  %i.lg = or disjoint i64 %indvars.iv1462, 1
  %i.lh = or disjoint i64 %indvars.iv1462, 2
  %i.li = lshr exact i64 %indvars.iv1462, 2
  br label %bb.l

bb.l:                                             ; preds = %.preheader1253.us, %.loopexit1248.us
  %.03251335.us = phi i32 [ 0, %.preheader1253.us ], [ %i.qd, %.loopexit1248.us ] ; 3 uses
  %.91334.us = phi <8 x float> [ %.81345.us, %.preheader1253.us ], [ %.13.us, %.loopexit1248.us ] ; 6 uses
  %.811901333.us = phi <8 x float> [ %.711891344.us, %.preheader1253.us ], [ %.121194.us, %.loopexit1248.us ] ; 6 uses
  %.812081332.us = phi <8 x float> [ %.712071343.us, %.preheader1253.us ], [ %.121212.us, %.loopexit1248.us ] ; 6 uses
  %.812211331.us = phi <8 x float> [ %.712201342.us, %.preheader1253.us ], [ %.121225.us, %.loopexit1248.us ] ; 6 uses
  %i.lj = mul nsw i32 %i.lb, %.03251335.us
  %.reass1341.us = add i32 %i.lj, %invariant.op1340.us ; 3 uses
  %i.lk = icmp slt i32 %.reass1341.us, 0
  br i1 %i.lk, label %.loopexit1248.us, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ll = load i32, ptr %11, align 4, !tbaa !61   ; 2 uses
  %i.lm = srem i32 %.reass1341.us, %i.ll
  %i.ln = sdiv exact i32 %.reass1341.us, %i.ll    ; 2 uses
  %.not378.us = icmp eq i32 %i.lm, 0
  %.not379.us = icmp slt i32 %i.ln, %i.ae
  %or.cond1560 = select i1 %.not378.us, i1 %.not379.us, i1 false
  br i1 %or.cond1560, label %.preheader1247.us, label %.loopexit1248.us

.preheader1247.us:                                ; preds = %bb.m
  %i.lo = load i32, ptr %12, align 4, !tbaa !61   ; 4 uses
  %i.lp = icmp sgt i32 %i.lo, 0
  br i1 %i.lp, label %.lr.ph.us1354, label %.loopexit1248.us

.lr.ph.us1354:                                    ; preds = %.preheader1247.us
  %i.lq = load i32, ptr %13, align 4, !tbaa !61   ; 2 uses
  %i.lr = load i32, ptr %14, align 4, !tbaa !61
  %invariant.op.us1355 = sub i32 %.neg1240, %i.lr ; 2 uses
  %i.ls = mul nuw nsw i32 %i.lo, %.03251335.us    ; 2 uses
  %i.lt = sext i32 %i.ln to i64                   ; 2 uses
  switch i32 %.fr, label %.loopexit1248.us [
    i32 4, label %.lr.ph.split.us.us.preheader
    i32 1, label %.lr.ph.split.us1310.us.preheader
  ]

.lr.ph.split.us1310.us.preheader:                 ; preds = %.lr.ph.us1354
  %wide.trip.count1454 = zext nneg i32 %i.lo to i64
  br label %.lr.ph.split.us1310.us

.lr.ph.split.us.us.preheader:                     ; preds = %.lr.ph.us1354
  %wide.trip.count1459 = zext nneg i32 %i.lo to i64
  br label %.lr.ph.split.us.us

.lr.ph.split.us1310.us:                           ; preds = %.lr.ph.split.us1310.us.preheader, %bb.o
  %indvars.iv1451 = phi i64 [ 0, %.lr.ph.split.us1310.us.preheader ], [ %indvars.iv.next1452, %bb.o ] ; 3 uses
  %.101299.us1312.us = phi <8 x float> [ %.91334.us, %.lr.ph.split.us1310.us.preheader ], [ %.12.us1322.us, %bb.o ] ; 3 uses
  %.911911298.us1313.us = phi <8 x float> [ %.811901333.us, %.lr.ph.split.us1310.us.preheader ], [ %.111193.us1321.us, %bb.o ] ; 3 uses
  %.912091297.us1314.us = phi <8 x float> [ %.812081332.us, %.lr.ph.split.us1310.us.preheader ], [ %.111211.us1320.us, %bb.o ] ; 3 uses
  %.912221296.us1315.us = phi <8 x float> [ %.812211331.us, %.lr.ph.split.us1310.us.preheader ], [ %.111224.us1319.us, %bb.o ] ; 3 uses
  %i.lu = trunc i64 %indvars.iv1451 to i32
  %i.lv = mul i32 %i.lq, %i.lu
  %.reass.us1316.us = add i32 %i.lv, %invariant.op.us1355 ; 3 uses
  %i.lw = icmp slt i32 %.reass.us1316.us, 0
  br i1 %i.lw, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split.us1310.us
  %i.lx = load i32, ptr %15, align 4, !tbaa !61   ; 2 uses
  %i.ly = srem i32 %.reass.us1316.us, %i.lx
  %i.lz = sdiv exact i32 %.reass.us1316.us, %i.lx ; 2 uses
  %.not380.us1317.us = icmp eq i32 %i.ly, 0
  %.not381.us1318.us = icmp slt i32 %i.lz, %i.ad
  %or.cond1561 = select i1 %.not380.us1317.us, i1 %.not381.us1318.us, i1 false
  br i1 %or.cond1561, label %_ZN4ncnn3MatD2Ev.exit391.us.us, label %bb.o

_ZN4ncnn3MatD2Ev.exit391.us.us:                   ; preds = %bb.n
  %i.ma = trunc i64 %indvars.iv1451 to i32
  %i.mb = add i32 %i.ls, %i.ma
  %i.mc = shl nsw i32 %i.mb, 5
  %i.md = zext nneg i32 %i.mc to i64
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %.13301346.us, i64 %i.md ; 4 uses
  %i.mf = load i32, ptr %i.n, align 4, !tbaa !54, !noalias !717
  %i.mg = load ptr, ptr %4, align 8, !tbaa !20, !noalias !717 ; 4 uses
  %i.mh = load i64, ptr %i.w, align 8, !tbaa !21, !noalias !717 ; 4 uses
  %i.mi = mul i64 %i.mh, %indvars.iv1462
  %i.mj = load i64, ptr %i.x, align 8, !tbaa !55, !noalias !717 ; 5 uses
  %i.mk = mul i64 %i.mi, %i.mj
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mg, i64 %i.mk
  %i.mm = sext i32 %i.mf to i64
  %i.mn = mul nsw i64 %i.mm, %i.lt
  %i.mo = mul i64 %i.mn, %i.mj                    ; 4 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ml, i64 %i.mo
  %i.mq = sext i32 %i.lz to i64                   ; 4 uses
  %i.mr = getelementptr inbounds [4 x i8], ptr %i.mp, i64 %i.mq
  %i.ms = mul i64 %i.mh, %i.lg
  %i.mt = mul i64 %i.ms, %i.mj
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mg, i64 %i.mt
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 %i.mo
  %i.mw = getelementptr inbounds [4 x i8], ptr %i.mv, i64 %i.mq
  %i.mx = mul i64 %i.mh, %i.lh
  %i.my = mul i64 %i.mx, %i.mj
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mg, i64 %i.my
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 %i.mo
  %i.nb = mul i64 %i.mh, %i.lf
  %i.nc = mul i64 %i.nb, %i.mj
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mg, i64 %i.nc
  %i.ne = getelementptr inbounds [4 x i8], ptr %i.na, i64 %i.mq
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nd, i64 %i.mo
  %i.ng = getelementptr inbounds [4 x i8], ptr %i.nf, i64 %i.mq
  %i.nh = load float, ptr %i.mr, align 1, !tbaa !82
  %i.ni = insertelement <8 x float> poison, float %i.nh, i64 0
  %i.nj = shufflevector <8 x float> %i.ni, <8 x float> poison, <8 x i32> zeroinitializer
  %i.nk = load float, ptr %i.mw, align 1, !tbaa !82
  %i.nl = insertelement <8 x float> poison, float %i.nk, i64 0
  %i.nm = shufflevector <8 x float> %i.nl, <8 x float> poison, <8 x i32> zeroinitializer
  %i.nn = load float, ptr %i.ne, align 1, !tbaa !82
  %i.no = insertelement <8 x float> poison, float %i.nn, i64 0
  %i.np = shufflevector <8 x float> %i.no, <8 x float> poison, <8 x i32> zeroinitializer
  %i.nq = load float, ptr %i.ng, align 1, !tbaa !82
  %i.nr = insertelement <8 x float> poison, float %i.nq, i64 0
  %i.ns = shufflevector <8 x float> %i.nr, <8 x float> poison, <8 x i32> zeroinitializer
  %i.nt = load <8 x float>, ptr %i.me, align 32, !tbaa !82
  %i.nu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nj, <8 x float> nofpclass(nan inf) %i.nt, <8 x float> nofpclass(nan inf) %.101299.us1312.us)
  %i.nv = getelementptr inbounds nuw i8, ptr %i.me, i64 32
  %i.nw = load <8 x float>, ptr %i.nv, align 32, !tbaa !82
  %i.nx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nm, <8 x float> nofpclass(nan inf) %i.nw, <8 x float> nofpclass(nan inf) %.911911298.us1313.us)
  %i.ny = getelementptr inbounds nuw i8, ptr %i.me, i64 64
  %i.nz = load <8 x float>, ptr %i.ny, align 32, !tbaa !82
  %i.oa = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.np, <8 x float> nofpclass(nan inf) %i.nz, <8 x float> nofpclass(nan inf) %.912091297.us1314.us)
  %i.ob = getelementptr inbounds nuw i8, ptr %i.me, i64 96
  %i.oc = load <8 x float>, ptr %i.ob, align 32, !tbaa !82
  %i.od = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ns, <8 x float> nofpclass(nan inf) %i.oc, <8 x float> nofpclass(nan inf) %.912221296.us1315.us)
  br label %bb.o

bb.o:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit391.us.us, %bb.n, %.lr.ph.split.us1310.us
  %.111224.us1319.us = phi nsz <8 x float> [ %.912221296.us1315.us, %.lr.ph.split.us1310.us ], [ %.912221296.us1315.us, %bb.n ], [ %i.od, %_ZN4ncnn3MatD2Ev.exit391.us.us ] ; 2 uses
  %.111211.us1320.us = phi nsz <8 x float> [ %.912091297.us1314.us, %.lr.ph.split.us1310.us ], [ %.912091297.us1314.us, %bb.n ], [ %i.oa, %_ZN4ncnn3MatD2Ev.exit391.us.us ] ; 2 uses
  %.111193.us1321.us = phi nsz <8 x float> [ %.911911298.us1313.us, %.lr.ph.split.us1310.us ], [ %.911911298.us1313.us, %bb.n ], [ %i.nx, %_ZN4ncnn3MatD2Ev.exit391.us.us ] ; 2 uses
  %.12.us1322.us = phi nsz <8 x float> [ %.101299.us1312.us, %.lr.ph.split.us1310.us ], [ %.101299.us1312.us, %bb.n ], [ %i.nu, %_ZN4ncnn3MatD2Ev.exit391.us.us ] ; 2 uses
  %indvars.iv.next1452 = add nuw nsw i64 %indvars.iv1451, 1 ; 2 uses
  %exitcond1455.not = icmp eq i64 %indvars.iv.next1452, %wide.trip.count1454
  br i1 %exitcond1455.not, label %.loopexit1248.us, label %.lr.ph.split.us1310.us, !llvm.loop !696

.lr.ph.split.us.us:                               ; preds = %.lr.ph.split.us.us.preheader, %bb.r
  %indvars.iv1456 = phi i64 [ 0, %.lr.ph.split.us.us.preheader ], [ %indvars.iv.next1457, %bb.r ] ; 3 uses
  %.101299.us.us = phi <8 x float> [ %.91334.us, %.lr.ph.split.us.us.preheader ], [ %.12.us.us, %bb.r ] ; 3 uses
  %.911911298.us.us = phi <8 x float> [ %.811901333.us, %.lr.ph.split.us.us.preheader ], [ %.111193.us.us, %bb.r ] ; 3 uses
  %.912091297.us.us = phi <8 x float> [ %.812081332.us, %.lr.ph.split.us.us.preheader ], [ %.111211.us.us, %bb.r ] ; 3 uses
  %.912221296.us.us = phi <8 x float> [ %.812211331.us, %.lr.ph.split.us.us.preheader ], [ %.111224.us.us, %bb.r ] ; 3 uses
  %i.oe = trunc i64 %indvars.iv1456 to i32
  %i.of = mul i32 %i.lq, %i.oe
  %.reass.us1304.us = add i32 %i.of, %invariant.op.us1355 ; 3 uses
  %i.og = icmp slt i32 %.reass.us1304.us, 0
  br i1 %i.og, label %bb.r, label %bb.p

bb.p:                                             ; preds = %.lr.ph.split.us.us
  %i.oh = load i32, ptr %15, align 4, !tbaa !61   ; 2 uses
  %i.oi = srem i32 %.reass.us1304.us, %i.oh
  %i.oj = sdiv exact i32 %.reass.us1304.us, %i.oh ; 2 uses
  %.not380.us.us = icmp eq i32 %i.oi, 0
  %.not381.us.us = icmp slt i32 %i.oj, %i.ad
  %or.cond1562 = select i1 %.not380.us.us, i1 %.not381.us.us, i1 false
  br i1 %or.cond1562, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ok = trunc i64 %indvars.iv1456 to i32
  %i.ol = add i32 %i.ls, %i.ok
  %i.om = shl nsw i32 %i.ol, 5
  %i.on = zext nneg i32 %i.om to i64
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %.13301346.us, i64 %i.on ; 4 uses
  %i.op = load i32, ptr %i.n, align 4, !tbaa !54, !noalias !718
  %i.oq = load ptr, ptr %4, align 8, !tbaa !20, !noalias !718
  %i.or = load i64, ptr %i.w, align 8, !tbaa !21, !noalias !718
  %i.os = mul i64 %i.or, %i.li
  %i.ot = load i64, ptr %i.x, align 8, !tbaa !55, !noalias !718 ; 2 uses
  %i.ou = mul i64 %i.os, %i.ot
  %i.ov = getelementptr inbounds nuw i8, ptr %i.oq, i64 %i.ou
  %i.ow = sext i32 %i.op to i64
  %i.ox = mul nsw i64 %i.ow, %i.lt
  %i.oy = mul i64 %i.ox, %i.ot
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ov, i64 %i.oy
  %i.pa = shl nsw i32 %i.oj, 2
  %i.pb = sext i32 %i.pa to i64
  %i.pc = getelementptr inbounds [4 x i8], ptr %i.oz, i64 %i.pb ; 4 uses
  %i.pd = load float, ptr %i.pc, align 1, !tbaa !82
  %i.pe = insertelement <8 x float> poison, float %i.pd, i64 0
  %i.pf = shufflevector <8 x float> %i.pe, <8 x float> poison, <8 x i32> zeroinitializer
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pc, i64 4
  %i.ph = load float, ptr %i.pg, align 1, !tbaa !82
  %i.pi = insertelement <8 x float> poison, float %i.ph, i64 0
  %i.pj = shufflevector <8 x float> %i.pi, <8 x float> poison, <8 x i32> zeroinitializer
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pc, i64 8
  %i.pl = load float, ptr %i.pk, align 1, !tbaa !82
  %i.pm = insertelement <8 x float> poison, float %i.pl, i64 0
  %i.pn = shufflevector <8 x float> %i.pm, <8 x float> poison, <8 x i32> zeroinitializer
  %i.po = getelementptr inbounds nuw i8, ptr %i.pc, i64 12
  %i.pp = load float, ptr %i.po, align 1, !tbaa !82
  %i.pq = insertelement <8 x float> poison, float %i.pp, i64 0
  %i.pr = shufflevector <8 x float> %i.pq, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ps = load <8 x float>, ptr %i.oo, align 32, !tbaa !82
  %i.pt = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pf, <8 x float> nofpclass(nan inf) %i.ps, <8 x float> nofpclass(nan inf) %.101299.us.us)
  %i.pu = getelementptr inbounds nuw i8, ptr %i.oo, i64 32
  %i.pv = load <8 x float>, ptr %i.pu, align 32, !tbaa !82
  %i.pw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pj, <8 x float> nofpclass(nan inf) %i.pv, <8 x float> nofpclass(nan inf) %.911911298.us.us)
  %i.px = getelementptr inbounds nuw i8, ptr %i.oo, i64 64
  %i.py = load <8 x float>, ptr %i.px, align 32, !tbaa !82
  %i.pz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pn, <8 x float> nofpclass(nan inf) %i.py, <8 x float> nofpclass(nan inf) %.912091297.us.us)
  %i.qa = getelementptr inbounds nuw i8, ptr %i.oo, i64 96
  %i.qb = load <8 x float>, ptr %i.qa, align 32, !tbaa !82
  %i.qc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pr, <8 x float> nofpclass(nan inf) %i.qb, <8 x float> nofpclass(nan inf) %.912221296.us.us)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %.lr.ph.split.us.us
  %.111224.us.us = phi nsz <8 x float> [ %.912221296.us.us, %.lr.ph.split.us.us ], [ %i.qc, %bb.q ], [ %.912221296.us.us, %bb.p ] ; 2 uses
  %.111211.us.us = phi nsz <8 x float> [ %.912091297.us.us, %.lr.ph.split.us.us ], [ %i.pz, %bb.q ], [ %.912091297.us.us, %bb.p ] ; 2 uses
  %.111193.us.us = phi nsz <8 x float> [ %.911911298.us.us, %.lr.ph.split.us.us ], [ %i.pw, %bb.q ], [ %.911911298.us.us, %bb.p ] ; 2 uses
  %.12.us.us = phi nsz <8 x float> [ %.101299.us.us, %.lr.ph.split.us.us ], [ %i.pt, %bb.q ], [ %.101299.us.us, %bb.p ] ; 2 uses
  %indvars.iv.next1457 = add nuw nsw i64 %indvars.iv1456, 1 ; 2 uses
  %exitcond1460.not = icmp eq i64 %indvars.iv.next1457, %wide.trip.count1459
  br i1 %exitcond1460.not, label %.loopexit1248.us, label %.lr.ph.split.us.us, !llvm.loop !696

.loopexit1248.us:                                 ; preds = %bb.o, %bb.r, %.lr.ph.us1354, %.preheader1247.us, %bb.m, %bb.l
  %.121225.us = phi nsz <8 x float> [ %.812211331.us, %bb.l ], [ %.812211331.us, %bb.m ], [ %.111224.us.us, %bb.r ], [ %.812211331.us, %.preheader1247.us ], [ %.812211331.us, %.lr.ph.us1354 ], [ %.111224.us1319.us, %bb.o ] ; 3 uses
  %.121212.us = phi nsz <8 x float> [ %.812081332.us, %bb.l ], [ %.812081332.us, %bb.m ], [ %.111211.us.us, %bb.r ], [ %.812081332.us, %.preheader1247.us ], [ %.812081332.us, %.lr.ph.us1354 ], [ %.111211.us1320.us, %bb.o ] ; 3 uses
  %.121194.us = phi nsz <8 x float> [ %.811901333.us, %bb.l ], [ %.811901333.us, %bb.m ], [ %.111193.us.us, %bb.r ], [ %.811901333.us, %.preheader1247.us ], [ %.811901333.us, %.lr.ph.us1354 ], [ %.111193.us1321.us, %bb.o ] ; 3 uses
  %.13.us = phi nsz <8 x float> [ %.91334.us, %bb.l ], [ %.91334.us, %bb.m ], [ %.12.us.us, %bb.r ], [ %.91334.us, %.preheader1247.us ], [ %.91334.us, %.lr.ph.us1354 ], [ %.12.us1322.us, %bb.o ] ; 3 uses
  %i.qd = add nuw nsw i32 %.03251335.us, 1        ; 2 uses
  %exitcond1461.not = icmp eq i32 %i.qd, %i.km
  br i1 %exitcond1461.not, label %._crit_edge.us1363, label %bb.l, !llvm.loop !699

._crit_edge.us1363:                               ; preds = %.loopexit1248.us
  %i.qe = getelementptr inbounds [4 x i8], ptr %.13301346.us, i64 %i.kq ; 2 uses
  %indvars.iv.next1463 = add nuw nsw i64 %indvars.iv1462, 4 ; 3 uses
  %i.qf = or disjoint i64 %indvars.iv.next1463, 3 ; 2 uses
  %i.qg = trunc nuw i64 %i.qf to i32
  %i.qh = icmp sgt i32 %i.ac, %i.qg
  br i1 %i.qh, label %.preheader1253.us, label %.preheader1256.loopexit, !llvm.loop !700

.preheader1256.loopexit:                          ; preds = %._crit_edge.us1363
  %i.qi = trunc nuw i64 %indvars.iv.next1463 to i32
  br label %.preheader1256

.preheader1256:                                   ; preds = %.preheader1253.preheader, %.preheader1256.loopexit, %.preheader1257
  %.71220.lcssa = phi <8 x float> [ %.01213.lcssa, %.preheader1257 ], [ %.121225.us, %.preheader1256.loopexit ], [ %.01213.lcssa, %.preheader1253.preheader ]
  %.71207.lcssa = phi <8 x float> [ %.01200.lcssa, %.preheader1257 ], [ %.121212.us, %.preheader1256.loopexit ], [ %.01200.lcssa, %.preheader1253.preheader ]
  %.71189.lcssa = phi <8 x float> [ %.01182.lcssa, %.preheader1257 ], [ %.121194.us, %.preheader1256.loopexit ], [ %.01182.lcssa, %.preheader1253.preheader ] ; 3 uses
  %.8.lcssa = phi <8 x float> [ %.11178.lcssa, %.preheader1257 ], [ %.13.us, %.preheader1256.loopexit ], [ %.11178.lcssa, %.preheader1253.preheader ] ; 3 uses
  %.1330.lcssa = phi ptr [ %.0329.lcssa, %.preheader1257 ], [ %i.qe, %.preheader1256.loopexit ], [ %scevgep1450, %.preheader1253.preheader ] ; 3 uses
  %.1.lcssa = phi i32 [ %.0328.lcssa, %.preheader1257 ], [ %i.qi, %.preheader1256.loopexit ], [ %i.la, %.preheader1253.preheader ] ; 6 uses
  %i.qj = or disjoint i32 %.1.lcssa, 1            ; 2 uses
  %i.qk = icmp slt i32 %i.qj, %i.ac
  br i1 %i.qk, label %.preheader1252.lr.ph, label %.preheader1255

.preheader1252.lr.ph:                             ; preds = %.preheader1256
  %i.ql = load i32, ptr %8, align 4, !tbaa !61    ; 2 uses
  %i.qm = icmp sgt i32 %i.ql, 0
  %.neg1236 = add nuw nsw i32 %.03331420, 1
  %i.qn = load i32, ptr %16, align 4, !tbaa !61
  %i.qo = shl i32 %i.qn, 4
  %i.qp = sext i32 %i.qo to i64                   ; 2 uses
  br i1 %i.qm, label %.preheader1252.lr.ph.split.us, label %.preheader1252.preheader

.preheader1252.preheader:                         ; preds = %.preheader1252.lr.ph
  %i.qq = add i32 %.1.lcssa, 3
  %smax1465 = call i32 @llvm.smax.i32(i32 %i.ac, i32 %i.qq)
  %i.qr = add i32 %smax1465, -2
  %i.qs = sub i32 %i.qr, %.1.lcssa                ; 2 uses
  %i.qt = lshr i32 %i.qs, 1
  %i.qu = zext nneg i32 %i.qt to i64
  %i.qv = shl nuw nsw i64 %i.qu, 2
  %i.qw = add nuw nsw i64 %i.qv, 4
  %i.qx = mul i64 %i.qw, %i.qp
  %scevgep1466 = getelementptr i8, ptr %.1330.lcssa, i64 %i.qx
  %i.qy = add i32 %.1.lcssa, 2
  %i.qz = and i32 %i.qs, -2
  %i.ra = add i32 %i.qy, %i.qz
  br label %.preheader1255

.preheader1252.lr.ph.split.us:                    ; preds = %.preheader1252.lr.ph
  %i.rb = load i32, ptr %9, align 4, !tbaa !61
  %i.rc = load i32, ptr %10, align 4, !tbaa !61
  %invariant.op1381.us = sub i32 %.neg1242, %i.rc
  %i.rd = zext i32 %.1.lcssa to i64
  %i.re = zext nneg i32 %i.qj to i64
  br label %.preheader1252.us

.preheader1252.us:                                ; preds = %._crit_edge.us1395, %.preheader1252.lr.ph.split.us
  %indvars.iv1473 = phi i64 [ %indvars.iv.next1474, %._crit_edge.us1395 ], [ %i.rd, %.preheader1252.lr.ph.split.us ] ; 2 uses
  %i.rf = phi i64 [ %i.th, %._crit_edge.us1395 ], [ %i.re, %.preheader1252.lr.ph.split.us ]
  %.23311385.us = phi ptr [ %i.tg, %._crit_edge.us1395 ], [ %.1330.lcssa, %.preheader1252.lr.ph.split.us ] ; 2 uses
  %.141384.us = phi <8 x float> [ %.18.us, %._crit_edge.us1395 ], [ %.8.lcssa, %.preheader1252.lr.ph.split.us ]
  %.1311951383.us = phi <8 x float> [ %.171199.us, %._crit_edge.us1395 ], [ %.71189.lcssa, %.preheader1252.lr.ph.split.us ]
  br label %bb.s

bb.s:                                             ; preds = %.preheader1252.us, %.loopexit1246.us
  %.03231377.us = phi i32 [ 0, %.preheader1252.us ], [ %i.tb, %.loopexit1246.us ] ; 3 uses
  %.151376.us = phi <8 x float> [ %.141384.us, %.preheader1252.us ], [ %.18.us, %.loopexit1246.us ] ; 4 uses
  %.1411961375.us = phi <8 x float> [ %.1311951383.us, %.preheader1252.us ], [ %.171199.us, %.loopexit1246.us ] ; 4 uses
  %i.rg = mul nsw i32 %i.rb, %.03231377.us
  %.reass1382.us = add i32 %i.rg, %invariant.op1381.us ; 3 uses
  %i.rh = icmp slt i32 %.reass1382.us, 0
  br i1 %i.rh, label %.loopexit1246.us, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ri = load i32, ptr %11, align 4, !tbaa !61   ; 2 uses
  %i.rj = srem i32 %.reass1382.us, %i.ri
  %i.rk = sdiv exact i32 %.reass1382.us, %i.ri    ; 2 uses
  %.not374.us = icmp eq i32 %i.rj, 0
  %.not375.us = icmp slt i32 %i.rk, %i.ae
  %or.cond1563 = select i1 %.not374.us, i1 %.not375.us, i1 false
  br i1 %or.cond1563, label %.preheader1245.us, label %.loopexit1246.us

.preheader1245.us:                                ; preds = %bb.t
  %i.rl = load i32, ptr %12, align 4, !tbaa !61   ; 3 uses
  %i.rm = icmp sgt i32 %i.rl, 0
  br i1 %i.rm, label %.lr.ph.us1392, label %.loopexit1246.us

bb.u:                                             ; preds = %.lr.ph.us1392, %bb.w
  %indvars.iv1467 = phi i64 [ 0, %.lr.ph.us1392 ], [ %indvars.iv.next1468, %bb.w ] ; 3 uses
  %.161372.us = phi <8 x float> [ %.151376.us, %.lr.ph.us1392 ], [ %.17.us, %bb.w ] ; 3 uses
  %.1511971371.us = phi <8 x float> [ %.1411961375.us, %.lr.ph.us1392 ], [ %.161198.us, %bb.w ] ; 3 uses
  %i.rn = trunc i64 %indvars.iv1467 to i32
  %i.ro = mul i32 %i.tc, %i.rn
  %.reass.us1391 = add i32 %i.ro, %invariant.op.us1393 ; 3 uses
  %i.rp = icmp slt i32 %.reass.us1391, 0
  br i1 %i.rp, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.rq = load i32, ptr %15, align 4, !tbaa !61   ; 2 uses
  %i.rr = srem i32 %.reass.us1391, %i.rq
  %i.rs = sdiv exact i32 %.reass.us1391, %i.rq    ; 2 uses
  %.not376.us = icmp eq i32 %i.rr, 0
  %.not377.us = icmp slt i32 %i.rs, %i.ad
  %or.cond1564 = select i1 %.not376.us, i1 %.not377.us, i1 false
  br i1 %or.cond1564, label %_ZN4ncnn3MatD2Ev.exit387.us, label %bb.w

_ZN4ncnn3MatD2Ev.exit387.us:                      ; preds = %bb.v
  %i.rt = trunc i64 %indvars.iv1467 to i32
  %i.ru = add i32 %i.te, %i.rt
  %i.rv = shl nsw i32 %i.ru, 4
  %i.rw = zext nneg i32 %i.rv to i64
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %.23311385.us, i64 %i.rw ; 2 uses
  %i.ry = load i32, ptr %i.n, align 4, !tbaa !54, !noalias !719
  %i.rz = load ptr, ptr %4, align 8, !tbaa !20, !noalias !719 ; 2 uses
  %i.sa = load i64, ptr %i.w, align 8, !tbaa !21, !noalias !719 ; 2 uses
  %i.sb = mul i64 %i.sa, %indvars.iv1473
  %i.sc = load i64, ptr %i.x, align 8, !tbaa !55, !noalias !719 ; 3 uses
  %i.sd = mul i64 %i.sb, %i.sc
  %i.se = getelementptr inbounds nuw i8, ptr %i.rz, i64 %i.sd
  %i.sf = sext i32 %i.ry to i64
  %i.sg = mul nsw i64 %i.sf, %i.tf
  %i.sh = mul i64 %i.sg, %i.sc                    ; 2 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.se, i64 %i.sh
  %i.sj = mul i64 %i.sa, %i.rf
  %i.sk = mul i64 %i.sj, %i.sc
  %i.sl = getelementptr inbounds nuw i8, ptr %i.rz, i64 %i.sk
  %i.sm = sext i32 %i.rs to i64                   ; 2 uses
  %i.sn = getelementptr inbounds [4 x i8], ptr %i.si, i64 %i.sm
  %i.so = getelementptr inbounds nuw i8, ptr %i.sl, i64 %i.sh
  %i.sp = getelementptr inbounds [4 x i8], ptr %i.so, i64 %i.sm
  %i.sq = load float, ptr %i.sn, align 1, !tbaa !82
  %i.sr = insertelement <8 x float> poison, float %i.sq, i64 0
  %i.ss = shufflevector <8 x float> %i.sr, <8 x float> poison, <8 x i32> zeroinitializer
  %i.st = load float, ptr %i.sp, align 1, !tbaa !82
  %i.su = insertelement <8 x float> poison, float %i.st, i64 0
  %i.sv = shufflevector <8 x float> %i.su, <8 x float> poison, <8 x i32> zeroinitializer
  %i.sw = load <8 x float>, ptr %i.rx, align 32, !tbaa !82
  %i.sx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ss, <8 x float> nofpclass(nan inf) %i.sw, <8 x float> nofpclass(nan inf) %.161372.us)
  %i.sy = getelementptr inbounds nuw i8, ptr %i.rx, i64 32
  %i.sz = load <8 x float>, ptr %i.sy, align 32, !tbaa !82
  %i.ta = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.sv, <8 x float> nofpclass(nan inf) %i.sz, <8 x float> nofpclass(nan inf) %.1511971371.us)
  br label %bb.w

bb.w:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit387.us, %bb.v, %bb.u
  %.161198.us = phi nsz <8 x float> [ %.1511971371.us, %bb.u ], [ %i.ta, %_ZN4ncnn3MatD2Ev.exit387.us ], [ %.1511971371.us, %bb.v ] ; 2 uses
  %.17.us = phi nsz <8 x float> [ %.161372.us, %bb.u ], [ %i.sx, %_ZN4ncnn3MatD2Ev.exit387.us ], [ %.161372.us, %bb.v ] ; 2 uses
  %indvars.iv.next1468 = add nuw nsw i64 %indvars.iv1467, 1 ; 2 uses
  %exitcond1471.not = icmp eq i64 %indvars.iv.next1468, %wide.trip.count1470
  br i1 %exitcond1471.not, label %.loopexit1246.us, label %bb.u, !llvm.loop !703

.loopexit1246.us:                                 ; preds = %bb.w, %.preheader1245.us, %bb.t, %bb.s
  %.171199.us = phi nsz <8 x float> [ %.1411961375.us, %bb.s ], [ %.1411961375.us, %bb.t ], [ %.1411961375.us, %.preheader1245.us ], [ %.161198.us, %bb.w ] ; 3 uses
  %.18.us = phi nsz <8 x float> [ %.151376.us, %bb.s ], [ %.151376.us, %bb.t ], [ %.151376.us, %.preheader1245.us ], [ %.17.us, %bb.w ] ; 3 uses
  %i.tb = add nuw nsw i32 %.03231377.us, 1        ; 2 uses
  %exitcond1472.not = icmp eq i32 %i.tb, %i.ql
  br i1 %exitcond1472.not, label %._crit_edge.us1395, label %bb.s, !llvm.loop !704

.lr.ph.us1392:                                    ; preds = %.preheader1245.us
  %i.tc = load i32, ptr %13, align 4, !tbaa !61
  %i.td = load i32, ptr %14, align 4, !tbaa !61
  %invariant.op.us1393 = sub i32 %.neg1236, %i.td
  %i.te = mul nuw nsw i32 %i.rl, %.03231377.us
  %i.tf = sext i32 %i.rk to i64
  %wide.trip.count1470 = zext nneg i32 %i.rl to i64
  br label %bb.u

._crit_edge.us1395:                               ; preds = %.loopexit1246.us
  %i.tg = getelementptr inbounds [4 x i8], ptr %.23311385.us, i64 %i.qp ; 2 uses
  %indvars.iv.next1474 = add nuw nsw i64 %indvars.iv1473, 2 ; 3 uses
  %i.th = or disjoint i64 %indvars.iv.next1474, 1 ; 2 uses
  %i.ti = trunc nuw i64 %i.th to i32
  %i.tj = icmp sgt i32 %i.ac, %i.ti
  br i1 %i.tj, label %.preheader1252.us, label %.preheader1255.loopexit, !llvm.loop !705

.preheader1255.loopexit:                          ; preds = %._crit_edge.us1395
  %i.tk = trunc nuw i64 %indvars.iv.next1474 to i32
  br label %.preheader1255

.preheader1255:                                   ; preds = %.preheader1252.preheader, %.preheader1255.loopexit, %.preheader1256
  %.131195.lcssa = phi <8 x float> [ %.71189.lcssa, %.preheader1256 ], [ %.171199.us, %.preheader1255.loopexit ], [ %.71189.lcssa, %.preheader1252.preheader ]
  %.14.lcssa = phi <8 x float> [ %.8.lcssa, %.preheader1256 ], [ %.18.us, %.preheader1255.loopexit ], [ %.8.lcssa, %.preheader1252.preheader ] ; 3 uses
  %.2331.lcssa = phi ptr [ %.1330.lcssa, %.preheader1256 ], [ %i.tg, %.preheader1255.loopexit ], [ %scevgep1466, %.preheader1252.preheader ]
  %.2.lcssa = phi i32 [ %.1.lcssa, %.preheader1256 ], [ %i.tk, %.preheader1255.loopexit ], [ %i.ra, %.preheader1252.preheader ] ; 2 uses
  %i.tl = icmp slt i32 %.2.lcssa, %i.ac
  br i1 %i.tl, label %.preheader1251.lr.ph, label %._crit_edge1411

.preheader1251.lr.ph:                             ; preds = %.preheader1255
  %i.tm = load i32, ptr %8, align 4, !tbaa !61    ; 2 uses
  %i.tn = icmp sgt i32 %i.tm, 0
  %.neg1232 = add nuw nsw i32 %.03331420, 1
  %i.to = load i32, ptr %16, align 4, !tbaa !61
  %i.tp = shl nsw i32 %i.to, 3
  %i.tq = sext i32 %i.tp to i64
  br i1 %i.tn, label %.preheader1251.lr.ph.split.us, label %._crit_edge1411

.preheader1251.lr.ph.split.us:                    ; preds = %.preheader1251.lr.ph
  %i.tr = load i32, ptr %9, align 4, !tbaa !61
  %i.ts = load i32, ptr %10, align 4, !tbaa !61
  %invariant.op1406.us = sub i32 %.neg1242, %i.ts
  %i.tt = zext i32 %.2.lcssa to i64
  br label %.preheader1251.us

.preheader1251.us:                                ; preds = %._crit_edge.us1417, %.preheader1251.lr.ph.split.us
  %indvars.iv1482 = phi i64 [ %indvars.iv.next1483, %._crit_edge.us1417 ], [ %i.tt, %.preheader1251.lr.ph.split.us ] ; 2 uses
  %.33321409.us = phi ptr [ %i.vj, %._crit_edge.us1417 ], [ %.2331.lcssa, %.preheader1251.lr.ph.split.us ] ; 2 uses
  %.191408.us = phi <8 x float> [ %.23.us, %._crit_edge.us1417 ], [ %.14.lcssa, %.preheader1251.lr.ph.split.us ]
  br label %bb.x

bb.x:                                             ; preds = %.preheader1251.us, %.loopexit.us
  %.03211403.us = phi i32 [ 0, %.preheader1251.us ], [ %i.ve, %.loopexit.us ] ; 3 uses
  %.201402.us = phi <8 x float> [ %.191408.us, %.preheader1251.us ], [ %.23.us, %.loopexit.us ] ; 4 uses
  %i.tu = mul nsw i32 %i.tr, %.03211403.us
  %.reass1407.us = add i32 %i.tu, %invariant.op1406.us ; 3 uses
  %i.tv = icmp slt i32 %.reass1407.us, 0
  br i1 %i.tv, label %.loopexit.us, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.tw = load i32, ptr %11, align 4, !tbaa !61   ; 2 uses
  %i.tx = srem i32 %.reass1407.us, %i.tw
  %i.ty = sdiv exact i32 %.reass1407.us, %i.tw    ; 2 uses
  %.not370.us = icmp eq i32 %i.tx, 0
  %.not371.us = icmp slt i32 %i.ty, %i.ae
  %or.cond1565 = select i1 %.not370.us, i1 %.not371.us, i1 false
  br i1 %or.cond1565, label %.preheader.us, label %.loopexit.us

.preheader.us:                                    ; preds = %bb.y
  %i.tz = load i32, ptr %12, align 4, !tbaa !61   ; 3 uses
  %i.ua = icmp sgt i32 %i.tz, 0
  br i1 %i.ua, label %.lr.ph.us1414, label %.loopexit.us

bb.z:                                             ; preds = %.lr.ph.us1414, %bb.ac
  %indvars.iv1476 = phi i64 [ 0, %.lr.ph.us1414 ], [ %indvars.iv.next1477, %bb.ac ] ; 3 uses
  %.211400.us = phi <8 x float> [ %.201402.us, %.lr.ph.us1414 ], [ %.22.us, %bb.ac ] ; 3 uses
  %i.ub = trunc i64 %indvars.iv1476 to i32
  %i.uc = mul i32 %i.vf, %i.ub
  %.reass.us1413 = add i32 %i.uc, %invariant.op.us1415 ; 3 uses
  %i.ud = icmp slt i32 %.reass.us1413, 0
  br i1 %i.ud, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ue = load i32, ptr %15, align 4, !tbaa !61   ; 2 uses
  %i.uf = srem i32 %.reass.us1413, %i.ue
  %i.ug = sdiv exact i32 %.reass.us1413, %i.ue    ; 2 uses
  %.not372.us = icmp eq i32 %i.uf, 0
  %.not373.us = icmp slt i32 %i.ug, %i.ad
  %or.cond1566 = select i1 %.not372.us, i1 %.not373.us, i1 false
  br i1 %or.cond1566, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.uh = load i32, ptr %i.n, align 4, !tbaa !54, !noalias !720
  %i.ui = load ptr, ptr %4, align 8, !tbaa !20, !noalias !720
  %i.uj = load i64, ptr %i.w, align 8, !tbaa !21, !noalias !720
  %i.uk = mul i64 %i.uj, %indvars.iv1482
  %i.ul = load i64, ptr %i.x, align 8, !tbaa !55, !noalias !720 ; 2 uses
  %i.um = mul i64 %i.uk, %i.ul
  %i.un = getelementptr inbounds nuw i8, ptr %i.ui, i64 %i.um
  %i.uo = sext i32 %i.uh to i64
  %i.up = trunc i64 %indvars.iv1476 to i32
  %i.uq = add i32 %i.vh, %i.up
  %i.ur = shl nsw i32 %i.uq, 3
  %i.us = zext nneg i32 %i.ur to i64
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %.33321409.us, i64 %i.us
  %i.uu = mul nsw i64 %i.uo, %i.vi
  %i.uv = mul i64 %i.uu, %i.ul
  %i.uw = getelementptr inbounds nuw i8, ptr %i.un, i64 %i.uv
  %i.ux = sext i32 %i.ug to i64
  %i.uy = getelementptr inbounds [4 x i8], ptr %i.uw, i64 %i.ux
  %i.uz = load float, ptr %i.uy, align 1, !tbaa !82
  %i.va = insertelement <8 x float> poison, float %i.uz, i64 0
  %i.vb = shufflevector <8 x float> %i.va, <8 x float> poison, <8 x i32> zeroinitializer
  %i.vc = load <8 x float>, ptr %i.ut, align 32, !tbaa !82
  %i.vd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.vb, <8 x float> nofpclass(nan inf) %i.vc, <8 x float> nofpclass(nan inf) %.211400.us)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %.22.us = phi nsz <8 x float> [ %.211400.us, %bb.z ], [ %i.vd, %bb.ab ], [ %.211400.us, %bb.aa ] ; 2 uses
  %indvars.iv.next1477 = add nuw nsw i64 %indvars.iv1476, 1 ; 2 uses
  %exitcond1480.not = icmp eq i64 %indvars.iv.next1477, %wide.trip.count1479
  br i1 %exitcond1480.not, label %.loopexit.us, label %bb.z, !llvm.loop !708

.loopexit.us:                                     ; preds = %bb.ac, %.preheader.us, %bb.y, %bb.x
  %.23.us = phi nsz <8 x float> [ %.201402.us, %bb.x ], [ %.201402.us, %bb.y ], [ %.201402.us, %.preheader.us ], [ %.22.us, %bb.ac ] ; 3 uses
  %i.ve = add nuw nsw i32 %.03211403.us, 1        ; 2 uses
  %exitcond1481.not = icmp eq i32 %i.ve, %i.tm
  br i1 %exitcond1481.not, label %._crit_edge.us1417, label %bb.x, !llvm.loop !709

.lr.ph.us1414:                                    ; preds = %.preheader.us
  %i.vf = load i32, ptr %13, align 4, !tbaa !61
  %i.vg = load i32, ptr %14, align 4, !tbaa !61
  %invariant.op.us1415 = sub i32 %.neg1232, %i.vg
  %i.vh = mul nuw nsw i32 %i.tz, %.03211403.us
  %i.vi = sext i32 %i.ty to i64
  %wide.trip.count1479 = zext nneg i32 %i.tz to i64
  br label %bb.z

._crit_edge.us1417:                               ; preds = %.loopexit.us
  %i.vj = getelementptr inbounds [4 x i8], ptr %.33321409.us, i64 %i.tq
  %indvars.iv.next1483 = add nuw nsw i64 %indvars.iv1482, 1 ; 2 uses
  %i.vk = trunc nuw i64 %indvars.iv.next1483 to i32
  %i.vl = icmp sgt i32 %i.ac, %i.vk
  br i1 %i.vl, label %.preheader1251.us, label %._crit_edge1411, !llvm.loop !710

._crit_edge1411:                                  ; preds = %._crit_edge.us1417, %.preheader1251.lr.ph, %.preheader1255
  %.19.lcssa = phi <8 x float> [ %.14.lcssa, %.preheader1255 ], [ %.14.lcssa, %.preheader1251.lr.ph ], [ %.23.us, %._crit_edge.us1417 ]
  %i.vm = fadd fast <8 x float> %.71207.lcssa, %.71220.lcssa
  %i.vn = fadd fast <8 x float> %i.vm, %.131195.lcssa
  %i.vo = fadd fast <8 x float> %i.vn, %.19.lcssa ; 10 uses
  %i.vp = load i32, ptr %17, align 4, !tbaa !61
  switch i32 %i.vp, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.ad
    i32 2, label %.noexc547
    i32 3, label %.noexc549
    i32 4, label %.noexc550
    i32 5, label %.noexc551
    i32 6, label %.noexc554
  ]

bb.ad:                                            ; preds = %._crit_edge1411
  %i.vq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.vo, <8 x float> zeroinitializer)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc547:                                        ; preds = %._crit_edge1411
  %i.vr = load ptr, ptr %18, align 8, !tbaa !20
  %i.vs = load float, ptr %i.vr, align 4, !tbaa !39
  %i.vt = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.vo)
  %i.vu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.vo)
  %i.vv = insertelement <8 x float> poison, float %i.vs, i64 0
  %i.vw = shufflevector <8 x float> %i.vv, <8 x float> poison, <8 x i32> zeroinitializer
  %i.vx = fmul fast <8 x float> %i.vw, %i.vu
  %i.vy = fadd fast <8 x float> %i.vx, %i.vt
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc549:                                        ; preds = %._crit_edge1411
  %i.vz = load ptr, ptr %18, align 8, !tbaa !20   ; 2 uses
  %i.wa = load float, ptr %i.vz, align 4, !tbaa !39
  %i.wb = insertelement <8 x float> poison, float %i.wa, i64 0
  %i.wc = shufflevector <8 x float> %i.wb, <8 x float> poison, <8 x i32> zeroinitializer
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vz, i64 4
  %i.we = load float, ptr %i.wd, align 4, !tbaa !39
  %i.wf = insertelement <8 x float> poison, float %i.we, i64 0
  %i.wg = shufflevector <8 x float> %i.wf, <8 x float> poison, <8 x i32> zeroinitializer
  %i.wh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.vo, <8 x float> nofpclass(nan inf) %i.wc)
  %i.wi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.wh, <8 x float> nofpclass(nan inf) %i.wg)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc550:                                        ; preds = %._crit_edge1411
  %i.wj = fneg fast <8 x float> %i.vo
  %i.wk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.wj, <8 x float> splat (float f0x42B0C0A5))
  %i.wl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.wk, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.wm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.wl, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.wn = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.wm, i32 1) ; 2 uses
  %i.wo = fcmp fast ogt <8 x float> %i.wn, %i.wm
  %i.wp = select <8 x i1> %i.wo, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.wq = fsub fast <8 x float> %i.wn, %i.wp      ; 2 uses
  %i.wr = fneg fast <8 x float> %i.wq             ; 2 uses
  %i.ws = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.wr, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.wl)
  %i.wt = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.wr, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.ws) ; 8 uses
  %i.wu = fmul fast <8 x float> %i.wt, %i.wt
  %i.wv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.wt, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.ww = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.wv, <8 x float> nofpclass(nan inf) %i.wt, <8 x float> splat (float f0x3C088908))
  %i.wx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ww, <8 x float> nofpclass(nan inf) %i.wt, <8 x float> splat (float f0x3D2AA9C1))
  %i.wy = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.wx, <8 x float> nofpclass(nan inf) %i.wt, <8 x float> splat (float f0x3E2AAAAA))
  %i.wz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.wy, <8 x float> nofpclass(nan inf) %i.wt, <8 x float> splat (float 5.000000e-01))
  %i.xa = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.wz, <8 x float> nofpclass(nan inf) %i.wu, <8 x float> nofpclass(nan inf) %i.wt)
  %i.xb = fadd fast <8 x float> %i.xa, splat (float 1.000000e+00)
  %i.xc = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.wq)
  %i.xd = shl <8 x i32> %i.xc, splat (i32 23)
  %i.xe = add <8 x i32> %i.xd, splat (i32 1065353216)
  %i.xf = bitcast <8 x i32> %i.xe to <8 x float>
  %i.xg = fmul fast <8 x float> %i.xb, %i.xf
  %i.xh = fadd fast <8 x float> %i.xg, splat (float 1.000000e+00)
  %i.xi = fdiv fast <8 x float> splat (float 1.000000e+00), %i.xh
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc551:                                        ; preds = %._crit_edge1411
  %i.xj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.vo, <8 x float> splat (float f0x42B0C0A5))
  %i.xk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.xj, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.xl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.xk, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.xm = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.xl, i32 1) ; 2 uses
  %i.xn = fcmp fast ogt <8 x float> %i.xm, %i.xl
  %i.xo = select <8 x i1> %i.xn, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.xp = fsub fast <8 x float> %i.xm, %i.xo      ; 2 uses
  %i.xq = fneg fast <8 x float> %i.xp             ; 2 uses
  %i.xr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.xq, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.xk)
  %i.xs = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.xq, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.xr) ; 8 uses
  %i.xt = fmul fast <8 x float> %i.xs, %i.xs
  %i.xu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.xs, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.xv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.xu, <8 x float> nofpclass(nan inf) %i.xs, <8 x float> splat (float f0x3C088908))
  %i.xw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.xv, <8 x float> nofpclass(nan inf) %i.xs, <8 x float> splat (float f0x3D2AA9C1))
  %i.xx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.xw, <8 x float> nofpclass(nan inf) %i.xs, <8 x float> splat (float f0x3E2AAAAA))
  %i.xy = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.xx, <8 x float> nofpclass(nan inf) %i.xs, <8 x float> splat (float 5.000000e-01))
  %i.xz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.xy, <8 x float> nofpclass(nan inf) %i.xt, <8 x float> nofpclass(nan inf) %i.xs)
  %i.ya = fadd fast <8 x float> %i.xz, splat (float 1.000000e+00)
  %i.yb = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.xp)
  %i.yc = shl <8 x i32> %i.yb, splat (i32 23)
  %i.yd = add <8 x i32> %i.yc, splat (i32 1065353216)
  %i.ye = bitcast <8 x i32> %i.yd to <8 x float>
  %i.yf = fmul fast <8 x float> %i.ya, %i.ye
  %i.yg = fadd fast <8 x float> %i.yf, splat (float 1.000000e+00) ; 2 uses
  %i.yh = fcmp fast ole <8 x float> %i.yg, zeroinitializer
  %i.yi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.yg, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.yj = bitcast <8 x float> %i.yi to <8 x i32>
  %i.yk = bitcast <8 x float> %i.yi to <8 x i32>
  %i.yl = and <8 x i32> %i.yk, splat (i32 -2139095041)
  %i.ym = or disjoint <8 x i32> %i.yl, splat (i32 1056964608)
  %i.yn = bitcast <8 x i32> %i.ym to <8 x float>  ; 3 uses
  %i.yo = lshr <8 x i32> %i.yj, splat (i32 23)
  %i.yp = add nsw <8 x i32> %i.yo, splat (i32 -127)
  %i.yq = sitofp fast <8 x i32> %i.yp to <8 x float> ; 2 uses
  %i.yr = fadd fast <8 x float> %i.yq, splat (float 1.000000e+00)
  %i.ys = fcmp fast olt <8 x float> %i.yn, splat (float f0x3F3504F3) ; 2 uses
  %i.yt = select <8 x i1> %i.ys, <8 x float> %i.yn, <8 x float> zeroinitializer
  %i.yu = fadd fast <8 x float> %i.yn, splat (float -1.000000e+00)
  %i.yv = select fast <8 x i1> %i.ys, <8 x float> %i.yq, <8 x float> %i.yr ; 2 uses
  %i.yw = fadd fast <8 x float> %i.yu, %i.yt      ; 12 uses
  %i.yx = fmul fast <8 x float> %i.yw, %i.yw      ; 2 uses
  %i.yy = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.yw, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.yz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.yy, <8 x float> nofpclass(nan inf) %i.yw, <8 x float> splat (float f0x3DEF251A))
  %i.za = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.yz, <8 x float> nofpclass(nan inf) %i.yw, <8 x float> splat (float f0xBDFE5D4F))
  %i.zb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.za, <8 x float> nofpclass(nan inf) %i.yw, <8 x float> splat (float f0x3E11E9BF))
  %i.zc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.zb, <8 x float> nofpclass(nan inf) %i.yw, <8 x float> splat (float f0xBE2AAE50))
  %i.zd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.zc, <8 x float> nofpclass(nan inf) %i.yw, <8 x float> splat (float f0x3E4CCEAC))
  %i.ze = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.zd, <8 x float> nofpclass(nan inf) %i.yw, <8 x float> splat (float f0xBE7FFFFC))
  %i.zf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ze, <8 x float> nofpclass(nan inf) %i.yw, <8 x float> splat (float f0x3EAAAAAA))
  %i.zg = fmul fast <8 x float> %i.yx, %i.yw
  %i.zh = fmul fast <8 x float> %i.zg, %i.zf
  %i.zi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.yv, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.zh)
  %i.zj = fneg fast <8 x float> %i.yx
  %i.zk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.zj, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.zi)
  %i.zl = fadd fast <8 x float> %i.zk, %i.yw
  %i.zm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.yv, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.zl)
  %.neg = fmul fast <8 x float> %i.zm, splat (float -2.000000e+00)
  %i.zn = select fast <8 x i1> %i.yh, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg
  %i.zo = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.zn, <8 x float> splat (float f0x42B0C0A5))
  %i.zp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.zo, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.zq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.zp, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.zr = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.zq, i32 1) ; 2 uses
  %i.zs = fcmp fast ogt <8 x float> %i.zr, %i.zq
  %i.zt = select <8 x i1> %i.zs, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.zu = fsub fast <8 x float> %i.zr, %i.zt      ; 2 uses
  %i.zv = fneg fast <8 x float> %i.zu             ; 2 uses
  %i.zw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.zv, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.zp)
  %i.zx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.zv, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.zw) ; 8 uses
end_hunk_5
begin_hunk_6_@llvm.exp.f32
declare float @llvm.exp.f32(float) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.tanh.f32(float) #15

declare void @_ZN4ncnn7flattenERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare void @_ZN4ncnn24cast_bfloat16_to_float32ERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare void @_ZN4ncnn9ParamDict3setEiRKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %14, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %15, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %16, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %17, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %18, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %19) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !61     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.ag

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.g, ptr %i.b, align 4, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 1, ptr %i.c, align 4, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !tbaa !61
  %i.h = load i32, ptr %0, align 4, !tbaa !61     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !61
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !61
  %i.k = load i32, ptr %i.a, align 4, !tbaa !61   ; 2 uses
  %.not1497 = icmp sgt i32 %i.k, %i.j
  br i1 %.not1497, label %._crit_edge1499, label %.noexc527.lr.ph

.noexc527.lr.ph:                                  ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.y = load i32, ptr %i.q, align 8, !tbaa !66
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.noexc527, label %._crit_edge1499

.noexc527:                                        ; preds = %.noexc527.lr.ph, %._crit_edge1496.split
  %.03391498 = phi i32 [ %i.bi, %._crit_edge1496.split ], [ %i.k, %.noexc527.lr.ph ] ; 3 uses
  %i.aa = load i32, ptr %i.l, align 8, !tbaa !60
  %.fr = freeze i32 %i.aa                         ; 3 uses
  %i.ab = load i32, ptr %i.m, align 8, !tbaa !62
  %i.ac = mul i32 %i.ab, %.fr                     ; 11 uses
  %i.ad = load i32, ptr %i.n, align 4, !tbaa !54  ; 5 uses
  %i.ae = load i32, ptr %i.o, align 8, !tbaa !66  ; 4 uses
  %i.af = load i32, ptr %i.p, align 4, !tbaa !54  ; 2 uses
  %i.ag = load i32, ptr %i.q, align 8, !tbaa !66  ; 2 uses
  %i.ah = load i32, ptr %i.r, align 8, !tbaa !60  ; 2 uses
  %i.ai = icmp sgt i32 %i.ag, 0
  br i1 %i.ai, label %.preheader1331.lr.ph, label %._crit_edge1496.split

.preheader1331.lr.ph:                             ; preds = %.noexc527
  %i.aj = load i32, ptr %3, align 4, !tbaa !61
  %i.ak = shl nsw i32 %.03391498, 3
  %i.al = add nsw i32 %i.aj, %i.ak                ; 3 uses
  %i.am = icmp sgt i32 %i.af, 0
  %i.an = sext i32 %i.al to i64
  %i.ao = sdiv i32 %i.al, 8
  %i.ap = sext i32 %i.ao to i64
  %i.aq = icmp sgt i32 %i.ac, 7
  br i1 %i.am, label %.preheader1331.preheader, label %._crit_edge1496.split

.preheader1331.preheader:                         ; preds = %.preheader1331.lr.ph
  %i.ar = load ptr, ptr %5, align 8, !tbaa !20, !noalias !754
  %i.as = load i64, ptr %i.s, align 8, !tbaa !21, !noalias !754
  %i.at = sdiv i32 %i.al, %i.ah
  %i.au = sext i32 %i.at to i64
  %i.av = mul i64 %i.as, %i.au
  %i.aw = load i64, ptr %i.t, align 8, !tbaa !55, !noalias !754
  %i.ax = mul i64 %i.av, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ax
  %i.az = add i32 %i.ac, -8                       ; 3 uses
  %i.ba = lshr i32 %i.az, 2
  %i.bb = and i32 %i.ba, 1073741822
  %narrow = add nuw nsw i32 %i.bb, 2
  %i.bc = zext nneg i32 %narrow to i64
  %i.bd = and i32 %i.az, -8
  %i.be = add nuw i32 %i.bd, 8
  %i.bf = sext i32 %i.ac to i64
  %i.bg = and i32 %i.az, -8
  %i.bh = add i32 %i.bg, 8
  %invariant.op = add nsw i64 %i.bf, -7
  br label %.preheader1331

.preheader1331:                                   ; preds = %.preheader1331.preheader, %._crit_edge
  %.03341495 = phi i32 [ %.neg1315, %._crit_edge ], [ 0, %.preheader1331.preheader ]
  %.03351494 = phi ptr [ %.4, %._crit_edge ], [ %i.ay, %.preheader1331.preheader ]
  %.neg1315 = add nuw nsw i32 %.03341495, 1       ; 6 uses
  br label %bb.c

._crit_edge1496.split:                            ; preds = %._crit_edge, %.preheader1331.lr.ph, %.noexc527
  %i.bi = add i32 %.03391498, 1
  %exitcond1560.not = icmp eq i32 %.03391498, %i.j
  br i1 %exitcond1560.not, label %._crit_edge1499, label %.noexc527, !llvm.loop !723

._crit_edge:                                      ; preds = %.thread1300
  %exitcond1559.not = icmp eq i32 %.neg1315, %i.ag
  br i1 %exitcond1559.not, label %._crit_edge1496.split, label %.preheader1331, !llvm.loop !724

bb.c:                                             ; preds = %.preheader1331, %.thread1300
  %.03331493 = phi i32 [ 0, %.preheader1331 ], [ %i.ail, %.thread1300 ] ; 5 uses
  %.13361492 = phi ptr [ %.03351494, %.preheader1331 ], [ %.4, %.thread1300 ] ; 15 uses
  %i.bj = load ptr, ptr %6, align 8, !tbaa !86    ; 2 uses
  %.not364 = icmp eq ptr %i.bj, null
  br i1 %.not364, label %_ZN4ncnn3MatD2Ev.exit404, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.an
  %i.bl = load <8 x float>, ptr %i.bk, align 1, !tbaa !82
  br label %_ZN4ncnn3MatD2Ev.exit404

_ZN4ncnn3MatD2Ev.exit404:                         ; preds = %bb.d, %bb.c
  %.01250 = phi nsz <8 x float> [ zeroinitializer, %bb.c ], [ %i.bl, %bb.d ] ; 3 uses
  %i.bm = load ptr, ptr %7, align 8, !tbaa !20, !noalias !755 ; 2 uses
  %i.bn = load i64, ptr %i.u, align 8, !tbaa !21, !noalias !755
  %i.bo = mul i64 %i.bn, %i.ap
  %i.bp = load i64, ptr %i.v, align 8, !tbaa !55, !noalias !755
  %i.bq = mul i64 %i.bo, %i.bp                    ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bq ; 2 uses
  br i1 %i.aq, label %.preheader1327.lr.ph, label %.preheader1330

.preheader1327.lr.ph:                             ; preds = %_ZN4ncnn3MatD2Ev.exit404
  %i.bs = load i32, ptr %8, align 4, !tbaa !61    ; 2 uses
  %i.bt = icmp sgt i32 %i.bs, 0
  %.neg1317 = add nuw nsw i32 %.03331493, 1
  %i.bu = load i32, ptr %16, align 4, !tbaa !61
  %i.bv = shl i32 %i.bu, 6
  %i.bw = sext i32 %i.bv to i64                   ; 2 uses
  br i1 %i.bt, label %.preheader1327.lr.ph.split.us, label %.preheader1327.preheader

.preheader1327.preheader:                         ; preds = %.preheader1327.lr.ph
  %i.bx = mul nsw i64 %i.bc, %i.bw
  %i.by = getelementptr i8, ptr %i.bm, i64 %i.bq
  %scevgep = getelementptr i8, ptr %i.by, i64 %i.bx
  br label %.preheader1330

.preheader1327.lr.ph.split.us:                    ; preds = %.preheader1327.lr.ph
  %i.bz = load i32, ptr %9, align 4, !tbaa !61
  %i.ca = load i32, ptr %10, align 4, !tbaa !61
  %invariant.op1350.us = sub i32 %.neg1315, %i.ca
  br label %.preheader1327.us

.preheader1327.us:                                ; preds = %._crit_edge.us, %.preheader1327.lr.ph.split.us
  %indvars.iv1520 = phi i64 [ %indvars.iv.next1521, %._crit_edge.us ], [ 0, %.preheader1327.lr.ph.split.us ] ; 11 uses
  %.03291356.us = phi ptr [ %i.nm, %._crit_edge.us ], [ %i.br, %.preheader1327.lr.ph.split.us ] ; 2 uses
  %.112511355.us = phi <8 x float> [ %.7.us, %._crit_edge.us ], [ %.01250, %.preheader1327.lr.ph.split.us ]
  %.012551354.us = phi <8 x float> [ %.61261.us, %._crit_edge.us ], [ zeroinitializer, %.preheader1327.lr.ph.split.us ]
  %.012731353.us = phi <8 x float> [ %.61279.us, %._crit_edge.us ], [ zeroinitializer, %.preheader1327.lr.ph.split.us ]
  %.012861352.us = phi <8 x float> [ %.61292.us, %._crit_edge.us ], [ zeroinitializer, %.preheader1327.lr.ph.split.us ]
  %i.cb = or disjoint i64 %indvars.iv1520, 7
  %i.cc = or disjoint i64 %indvars.iv1520, 1
  %i.cd = or disjoint i64 %indvars.iv1520, 2
  %i.ce = or disjoint i64 %indvars.iv1520, 3
  %i.cf = or disjoint i64 %indvars.iv1520, 4
  %i.cg = or disjoint i64 %indvars.iv1520, 5
  %i.ch = or disjoint i64 %indvars.iv1520, 6
  %i.ci = lshr exact i64 %indvars.iv1520, 2       ; 2 uses
  %i.cj = or disjoint i64 %i.ci, 1
  %i.ck = lshr exact i64 %indvars.iv1520, 3
  br label %bb.e

bb.e:                                             ; preds = %.preheader1327.us, %.loopexit1323.us
  %.03271344.us = phi i32 [ 0, %.preheader1327.us ], [ %i.nf, %.loopexit1323.us ] ; 3 uses
  %.212521343.us = phi <8 x float> [ %.112511355.us, %.preheader1327.us ], [ %.7.us, %.loopexit1323.us ] ; 4 uses
  %.112561342.us = phi <8 x float> [ %.012551354.us, %.preheader1327.us ], [ %.61261.us, %.loopexit1323.us ] ; 4 uses
  %.112741341.us = phi <8 x float> [ %.012731353.us, %.preheader1327.us ], [ %.61279.us, %.loopexit1323.us ] ; 4 uses
  %.112871340.us = phi <8 x float> [ %.012861352.us, %.preheader1327.us ], [ %.61292.us, %.loopexit1323.us ] ; 4 uses
  %i.cl = mul nsw i32 %i.bz, %.03271344.us
  %.reass1351.us = add i32 %i.cl, %invariant.op1350.us ; 3 uses
  %i.cm = icmp slt i32 %.reass1351.us, 0
  br i1 %i.cm, label %.loopexit1323.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cn = load i32, ptr %11, align 4, !tbaa !61   ; 2 uses
  %i.co = srem i32 %.reass1351.us, %i.cn
  %i.cp = sdiv exact i32 %.reass1351.us, %i.cn    ; 2 uses
  %.not382.us = icmp eq i32 %i.co, 0
  %.not383.us = icmp slt i32 %i.cp, %i.ae
  %or.cond = select i1 %.not382.us, i1 %.not383.us, i1 false
  br i1 %or.cond, label %.preheader1322.us, label %.loopexit1323.us

bb.g:                                             ; preds = %.lr.ph.us, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next, %bb.k ] ; 3 uses
  %.312531335.us = phi <8 x float> [ %.212521343.us, %.lr.ph.us ], [ %.6.us, %bb.k ] ; 4 uses
  %.212571334.us = phi <8 x float> [ %.112561342.us, %.lr.ph.us ], [ %.51260.us, %bb.k ] ; 4 uses
  %.212751333.us = phi <8 x float> [ %.112741341.us, %.lr.ph.us ], [ %.51278.us, %bb.k ] ; 4 uses
  %.212881332.us = phi <8 x float> [ %.112871340.us, %.lr.ph.us ], [ %.51291.us, %bb.k ] ; 4 uses
  %i.cq = trunc i64 %indvars.iv to i32
  %i.cr = mul i32 %i.ni, %i.cq
  %.reass.us = add i32 %i.cr, %invariant.op.us    ; 3 uses
  %i.cs = icmp slt i32 %.reass.us, 0
  br i1 %i.cs, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ct = load i32, ptr %15, align 4, !tbaa !61   ; 2 uses
  %i.cu = srem i32 %.reass.us, %i.ct
  %i.cv = sdiv exact i32 %.reass.us, %i.ct        ; 4 uses
  %.not384.us = icmp eq i32 %i.cu, 0
  %.not385.us = icmp slt i32 %i.cv, %i.ad
  %or.cond1715 = select i1 %.not384.us, i1 %.not385.us, i1 false
  br i1 %or.cond1715, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.cw = trunc i64 %indvars.iv to i32
  %i.cx = add i32 %i.nk, %i.cw
  %i.cy = shl nsw i32 %i.cx, 6
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %.03291356.us, i64 %i.cz ; 8 uses
  switch i32 %.fr, label %bb.k [
    i32 8, label %bb.j
    i32 4, label %_ZN4ncnn3MatD2Ev.exit402.us
    i32 1, label %_ZN4ncnn3MatD2Ev.exit400.us
  ]

_ZN4ncnn3MatD2Ev.exit400.us:                      ; preds = %bb.i
  %i.db = load i32, ptr %i.n, align 4, !tbaa !54, !noalias !756
  %i.dc = load ptr, ptr %4, align 8, !tbaa !20, !noalias !756 ; 8 uses
  %i.dd = load i64, ptr %i.w, align 8, !tbaa !21, !noalias !756 ; 8 uses
  %i.de = mul i64 %i.dd, %indvars.iv1520
  %i.df = load i64, ptr %i.x, align 8, !tbaa !55, !noalias !756 ; 9 uses
  %i.dg = mul i64 %i.de, %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.dg
  %i.di = sext i32 %i.db to i64
  %i.dj = mul nsw i64 %i.di, %i.nl
  %i.dk = mul i64 %i.dj, %i.df                    ; 8 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dk
  %i.dm = sext i32 %i.cv to i64                   ; 8 uses
  %i.dn = getelementptr inbounds [2 x i8], ptr %i.dl, i64 %i.dm
  %i.do = mul i64 %i.dd, %i.cc
  %i.dp = mul i64 %i.do, %i.df
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.dk
  %i.ds = getelementptr inbounds [2 x i8], ptr %i.dr, i64 %i.dm
  %i.dt = mul i64 %i.dd, %i.cd
  %i.du = mul i64 %i.dt, %i.df
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dk
  %i.dx = getelementptr inbounds [2 x i8], ptr %i.dw, i64 %i.dm
  %i.dy = mul i64 %i.dd, %i.ce
  %i.dz = mul i64 %i.dy, %i.df
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.dk
  %i.ec = getelementptr inbounds [2 x i8], ptr %i.eb, i64 %i.dm
  %i.ed = mul i64 %i.dd, %i.cf
  %i.ee = mul i64 %i.ed, %i.df
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.dk
  %i.eh = getelementptr inbounds [2 x i8], ptr %i.eg, i64 %i.dm
  %i.ei = mul i64 %i.dd, %i.cg
  %i.ej = mul i64 %i.ei, %i.df
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.dk
  %i.em = getelementptr inbounds [2 x i8], ptr %i.el, i64 %i.dm
  %i.en = mul i64 %i.dd, %i.ch
  %i.eo = mul i64 %i.en, %i.df
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.dk
  %i.er = getelementptr inbounds [2 x i8], ptr %i.eq, i64 %i.dm
  %i.es = mul i64 %i.dd, %i.cb
  %i.et = mul i64 %i.es, %i.df
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.et
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.dk
  %i.ew = getelementptr inbounds [2 x i8], ptr %i.ev, i64 %i.dm
  %i.ex = load i16, ptr %i.dn, align 2, !tbaa !89
  %i.ey = zext i16 %i.ex to i32
  %i.ez = shl nuw i32 %i.ey, 16
  %i.fa = insertelement <8 x i32> poison, i32 %i.ez, i64 0
  %i.fb = bitcast <8 x i32> %i.fa to <8 x float>
  %i.fc = shufflevector <8 x float> %i.fb, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fd = load i16, ptr %i.ds, align 2, !tbaa !89
  %i.fe = zext i16 %i.fd to i32
  %i.ff = shl nuw i32 %i.fe, 16
  %i.fg = insertelement <8 x i32> poison, i32 %i.ff, i64 0
  %i.fh = bitcast <8 x i32> %i.fg to <8 x float>
  %i.fi = shufflevector <8 x float> %i.fh, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fj = load i16, ptr %i.dx, align 2, !tbaa !89
  %i.fk = zext i16 %i.fj to i32
  %i.fl = shl nuw i32 %i.fk, 16
  %i.fm = insertelement <8 x i32> poison, i32 %i.fl, i64 0
  %i.fn = bitcast <8 x i32> %i.fm to <8 x float>
  %i.fo = shufflevector <8 x float> %i.fn, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fp = load i16, ptr %i.ec, align 2, !tbaa !89
  %i.fq = zext i16 %i.fp to i32
  %i.fr = shl nuw i32 %i.fq, 16
  %i.fs = insertelement <8 x i32> poison, i32 %i.fr, i64 0
  %i.ft = bitcast <8 x i32> %i.fs to <8 x float>
  %i.fu = shufflevector <8 x float> %i.ft, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fv = load i16, ptr %i.eh, align 2, !tbaa !89
  %i.fw = zext i16 %i.fv to i32
  %i.fx = shl nuw i32 %i.fw, 16
  %i.fy = insertelement <8 x i32> poison, i32 %i.fx, i64 0
  %i.fz = bitcast <8 x i32> %i.fy to <8 x float>
  %i.ga = shufflevector <8 x float> %i.fz, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gb = load i16, ptr %i.em, align 2, !tbaa !89
  %i.gc = zext i16 %i.gb to i32
  %i.gd = shl nuw i32 %i.gc, 16
  %i.ge = insertelement <8 x i32> poison, i32 %i.gd, i64 0
  %i.gf = bitcast <8 x i32> %i.ge to <8 x float>
  %i.gg = shufflevector <8 x float> %i.gf, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gh = load i16, ptr %i.er, align 2, !tbaa !89
  %i.gi = zext i16 %i.gh to i32
  %i.gj = shl nuw i32 %i.gi, 16
  %i.gk = insertelement <8 x i32> poison, i32 %i.gj, i64 0
  %i.gl = bitcast <8 x i32> %i.gk to <8 x float>
  %i.gm = shufflevector <8 x float> %i.gl, <8 x float> poison, <8 x i32> zeroinitializer
  br label %.sink.split

_ZN4ncnn3MatD2Ev.exit402.us:                      ; preds = %bb.i
  %i.gn = load i32, ptr %i.n, align 4, !tbaa !54, !noalias !757
  %i.go = load ptr, ptr %4, align 8, !tbaa !20, !noalias !757 ; 2 uses
  %i.gp = load i64, ptr %i.w, align 8, !tbaa !21, !noalias !757 ; 2 uses
  %i.gq = mul i64 %i.gp, %i.ci
  %i.gr = load i64, ptr %i.x, align 8, !tbaa !55, !noalias !757 ; 3 uses
  %i.gs = mul i64 %i.gq, %i.gr
  %i.gt = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.gs
  %i.gu = sext i32 %i.gn to i64
  %i.gv = mul nsw i64 %i.gu, %i.nl
  %i.gw = mul i64 %i.gv, %i.gr                    ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.gw
  %i.gy = shl nsw i32 %i.cv, 2
  %i.gz = sext i32 %i.gy to i64                   ; 2 uses
  %i.ha = getelementptr inbounds [2 x i8], ptr %i.gx, i64 %i.gz ; 4 uses
  %i.hb = mul i64 %i.gp, %i.cj
  %i.hc = mul i64 %i.hb, %i.gr
  %i.hd = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.hc
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.gw
  %i.hf = getelementptr inbounds [2 x i8], ptr %i.he, i64 %i.gz ; 4 uses
  %i.hg = load i16, ptr %i.ha, align 2, !tbaa !89
  %i.hh = zext i16 %i.hg to i32
  %i.hi = shl nuw i32 %i.hh, 16
  %i.hj = insertelement <8 x i32> poison, i32 %i.hi, i64 0
  %i.hk = bitcast <8 x i32> %i.hj to <8 x float>
  %i.hl = shufflevector <8 x float> %i.hk, <8 x float> poison, <8 x i32> zeroinitializer
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ha, i64 2
  %i.hn = load i16, ptr %i.hm, align 2, !tbaa !89
  %i.ho = zext i16 %i.hn to i32
  %i.hp = shl nuw i32 %i.ho, 16
  %i.hq = insertelement <8 x i32> poison, i32 %i.hp, i64 0
  %i.hr = bitcast <8 x i32> %i.hq to <8 x float>
  %i.hs = shufflevector <8 x float> %i.hr, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ha, i64 4
  %i.hu = load i16, ptr %i.ht, align 2, !tbaa !89
  %i.hv = zext i16 %i.hu to i32
  %i.hw = shl nuw i32 %i.hv, 16
  %i.hx = insertelement <8 x i32> poison, i32 %i.hw, i64 0
  %i.hy = bitcast <8 x i32> %i.hx to <8 x float>
  %i.hz = shufflevector <8 x float> %i.hy, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ha, i64 6
  %i.ib = load i16, ptr %i.ia, align 2, !tbaa !89
  %i.ic = zext i16 %i.ib to i32
  %i.id = shl nuw i32 %i.ic, 16
  %i.ie = insertelement <8 x i32> poison, i32 %i.id, i64 0
  %i.if = bitcast <8 x i32> %i.ie to <8 x float>
  %i.ig = shufflevector <8 x float> %i.if, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ih = load i16, ptr %i.hf, align 2, !tbaa !89
  %i.ii = zext i16 %i.ih to i32
  %i.ij = shl nuw i32 %i.ii, 16
  %i.ik = insertelement <8 x i32> poison, i32 %i.ij, i64 0
  %i.il = bitcast <8 x i32> %i.ik to <8 x float>
  %i.im = shufflevector <8 x float> %i.il, <8 x float> poison, <8 x i32> zeroinitializer
  %i.in = getelementptr inbounds nuw i8, ptr %i.hf, i64 2
  %i.io = load i16, ptr %i.in, align 2, !tbaa !89
  %i.ip = zext i16 %i.io to i32
  %i.iq = shl nuw i32 %i.ip, 16
  %i.ir = insertelement <8 x i32> poison, i32 %i.iq, i64 0
  %i.is = bitcast <8 x i32> %i.ir to <8 x float>
  %i.it = shufflevector <8 x float> %i.is, <8 x float> poison, <8 x i32> zeroinitializer
  %i.iu = getelementptr inbounds nuw i8, ptr %i.hf, i64 4
  %i.iv = load i16, ptr %i.iu, align 2, !tbaa !89
  %i.iw = zext i16 %i.iv to i32
  %i.ix = shl nuw i32 %i.iw, 16
  %i.iy = insertelement <8 x i32> poison, i32 %i.ix, i64 0
  %i.iz = bitcast <8 x i32> %i.iy to <8 x float>
  %i.ja = shufflevector <8 x float> %i.iz, <8 x float> poison, <8 x i32> zeroinitializer
  %i.jb = getelementptr inbounds nuw i8, ptr %i.hf, i64 6
  br label %.sink.split

bb.j:                                             ; preds = %bb.i
  %i.jc = load i32, ptr %i.n, align 4, !tbaa !54, !noalias !758
  %i.jd = load ptr, ptr %4, align 8, !tbaa !20, !noalias !758
  %i.je = load i64, ptr %i.w, align 8, !tbaa !21, !noalias !758
  %i.jf = mul i64 %i.je, %i.ck
  %i.jg = load i64, ptr %i.x, align 8, !tbaa !55, !noalias !758 ; 2 uses
  %i.jh = mul i64 %i.jf, %i.jg
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jd, i64 %i.jh
  %i.jj = sext i32 %i.jc to i64
  %i.jk = mul nsw i64 %i.jj, %i.nl
  %i.jl = mul i64 %i.jk, %i.jg
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.jl
  %i.jn = shl nsw i32 %i.cv, 3
  %i.jo = sext i32 %i.jn to i64
  %i.jp = getelementptr inbounds [2 x i8], ptr %i.jm, i64 %i.jo ; 5 uses
  %i.jq = load i16, ptr %i.jp, align 2, !tbaa !89
  %i.jr = zext i16 %i.jq to i32
  %i.js = shl nuw i32 %i.jr, 16
  %i.jt = insertelement <8 x i32> poison, i32 %i.js, i64 0
  %i.ju = bitcast <8 x i32> %i.jt to <8 x float>
end_hunk_6
begin_hunk_7_@_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined:bb.a
  %i.kg = shl nuw i32 %i.kf, 16
  %i.kh = insertelement <8 x i32> poison, i32 %i.kg, i64 0
  %i.ki = bitcast <8 x i32> %i.kh to <8 x float>
  %i.kj = shufflevector <8 x float> %i.ki, <8 x float> poison, <8 x i32> zeroinitializer
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jp, i64 6
  %i.kl = load <4 x i16>, ptr %i.kk, align 2, !tbaa !89
  %i.km = zext <4 x i16> %i.kl to <4 x i32>
  %i.kn = shl nuw <4 x i32> %i.km, splat (i32 16) ; 4 uses
  %i.ko = bitcast <4 x i32> %i.kn to <4 x float>
  %i.kp = shufflevector <4 x float> %i.ko, <4 x float> poison, <8 x i32> zeroinitializer
  %i.kq = bitcast <4 x i32> %i.kn to <4 x float>
  %i.kr = shufflevector <4 x float> %i.kq, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.ks = bitcast <4 x i32> %i.kn to <4 x float>
  %i.kt = shufflevector <4 x float> %i.ks, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.ku = bitcast <4 x i32> %i.kn to <4 x float>
  %i.kv = shufflevector <4 x float> %i.ku, <4 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.kw = getelementptr inbounds nuw i8, ptr %i.jp, i64 14
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit400.us, %_ZN4ncnn3MatD2Ev.exit402.us, %bb.j
  %.sink1706.in = phi ptr [ %i.kw, %bb.j ], [ %i.jb, %_ZN4ncnn3MatD2Ev.exit402.us ], [ %i.ew, %_ZN4ncnn3MatD2Ev.exit400.us ]
  %.sink1692 = phi <8 x float> [ %i.jv, %bb.j ], [ %i.hl, %_ZN4ncnn3MatD2Ev.exit402.us ], [ %i.fc, %_ZN4ncnn3MatD2Ev.exit400.us ]
  %.sink1679 = phi <8 x float> [ %i.kc, %bb.j ], [ %i.hs, %_ZN4ncnn3MatD2Ev.exit402.us ], [ %i.fi, %_ZN4ncnn3MatD2Ev.exit400.us ]
  %.sink1666 = phi <8 x float> [ %i.kj, %bb.j ], [ %i.hz, %_ZN4ncnn3MatD2Ev.exit402.us ], [ %i.fo, %_ZN4ncnn3MatD2Ev.exit400.us ]
  %.sink1653 = phi <8 x float> [ %i.kp, %bb.j ], [ %i.ig, %_ZN4ncnn3MatD2Ev.exit402.us ], [ %i.fu, %_ZN4ncnn3MatD2Ev.exit400.us ]
  %.sink1639 = phi <8 x float> [ %i.kr, %bb.j ], [ %i.im, %_ZN4ncnn3MatD2Ev.exit402.us ], [ %i.ga, %_ZN4ncnn3MatD2Ev.exit400.us ]
  %.sink1625 = phi <8 x float> [ %i.kt, %bb.j ], [ %i.it, %_ZN4ncnn3MatD2Ev.exit402.us ], [ %i.gg, %_ZN4ncnn3MatD2Ev.exit400.us ]
  %.sink1611 = phi <8 x float> [ %i.kv, %bb.j ], [ %i.ja, %_ZN4ncnn3MatD2Ev.exit402.us ], [ %i.gm, %_ZN4ncnn3MatD2Ev.exit400.us ]
  %.sink1706 = load i16, ptr %.sink1706.in, align 2, !tbaa !89
  %i.kx = zext i16 %.sink1706 to i32
  %i.ky = shl nuw i32 %i.kx, 16
  %i.kz = insertelement <8 x i32> poison, i32 %i.ky, i64 0
  %i.la = bitcast <8 x i32> %i.kz to <8 x float>
  %i.lb = shufflevector <8 x float> %i.la, <8 x float> poison, <8 x i32> zeroinitializer
  %i.lc = load <8 x i16>, ptr %i.da, align 16, !tbaa !82 ; 2 uses
  %i.ld = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.lc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.le = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.lc, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.lf = shufflevector <8 x i16> %i.ld, <8 x i16> %i.le, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.lg = bitcast <16 x i16> %i.lf to <8 x float>
  %i.lh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.sink1692, <8 x float> nofpclass(nan inf) %i.lg, <8 x float> nofpclass(nan inf) %.312531335.us)
  %i.li = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.lj = load <8 x i16>, ptr %i.li, align 16, !tbaa !82 ; 2 uses
  %i.lk = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.lj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ll = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.lj, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.lm = shufflevector <8 x i16> %i.lk, <8 x i16> %i.ll, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ln = bitcast <16 x i16> %i.lm to <8 x float>
  %i.lo = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.sink1679, <8 x float> nofpclass(nan inf) %i.ln, <8 x float> nofpclass(nan inf) %.212571334.us)
  %i.lp = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  %i.lq = load <8 x i16>, ptr %i.lp, align 16, !tbaa !82 ; 2 uses
  %i.lr = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.lq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ls = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.lq, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.lt = shufflevector <8 x i16> %i.lr, <8 x i16> %i.ls, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.lu = bitcast <16 x i16> %i.lt to <8 x float>
  %i.lv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.sink1666, <8 x float> nofpclass(nan inf) %i.lu, <8 x float> nofpclass(nan inf) %.212751333.us)
  %i.lw = getelementptr inbounds nuw i8, ptr %i.da, i64 48
  %i.lx = load <8 x i16>, ptr %i.lw, align 16, !tbaa !82 ; 2 uses
  %i.ly = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.lx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.lz = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.lx, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ma = shufflevector <8 x i16> %i.ly, <8 x i16> %i.lz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.mb = bitcast <16 x i16> %i.ma to <8 x float>
  %i.mc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.sink1653, <8 x float> nofpclass(nan inf) %i.mb, <8 x float> nofpclass(nan inf) %.212881332.us)
  %i.md = getelementptr inbounds nuw i8, ptr %i.da, i64 64
  %i.me = load <8 x i16>, ptr %i.md, align 16, !tbaa !82 ; 2 uses
  %i.mf = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.me, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.mg = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.me, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.mh = shufflevector <8 x i16> %i.mf, <8 x i16> %i.mg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.mi = bitcast <16 x i16> %i.mh to <8 x float>
  %i.mj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.sink1639, <8 x float> nofpclass(nan inf) %i.mi, <8 x float> nofpclass(nan inf) %i.lh)
  %i.mk = getelementptr inbounds nuw i8, ptr %i.da, i64 80
  %i.ml = load <8 x i16>, ptr %i.mk, align 16, !tbaa !82 ; 2 uses
  %i.mm = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ml, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.mn = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ml, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.mo = shufflevector <8 x i16> %i.mm, <8 x i16> %i.mn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.mp = bitcast <16 x i16> %i.mo to <8 x float>
  %i.mq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.sink1625, <8 x float> nofpclass(nan inf) %i.mp, <8 x float> nofpclass(nan inf) %i.lo)
  %i.mr = getelementptr inbounds nuw i8, ptr %i.da, i64 96
  %i.ms = load <8 x i16>, ptr %i.mr, align 16, !tbaa !82 ; 2 uses
  %i.mt = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ms, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.mu = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ms, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.mv = shufflevector <8 x i16> %i.mt, <8 x i16> %i.mu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.mw = bitcast <16 x i16> %i.mv to <8 x float>
  %i.mx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.sink1611, <8 x float> nofpclass(nan inf) %i.mw, <8 x float> nofpclass(nan inf) %i.lv)
  %i.my = getelementptr inbounds nuw i8, ptr %i.da, i64 112
  %i.mz = load <8 x i16>, ptr %i.my, align 16, !tbaa !82 ; 2 uses
  %i.na = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.mz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.nb = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.mz, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.nc = shufflevector <8 x i16> %i.na, <8 x i16> %i.nb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.nd = bitcast <16 x i16> %i.nc to <8 x float>
  %i.ne = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lb, <8 x float> nofpclass(nan inf) %i.nd, <8 x float> nofpclass(nan inf) %i.mc)
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.i, %bb.h, %bb.g
  %.51291.us = phi nsz <8 x float> [ %.212881332.us, %bb.g ], [ %.212881332.us, %bb.i ], [ %.212881332.us, %bb.h ], [ %i.ne, %.sink.split ] ; 2 uses
  %.51278.us = phi nsz <8 x float> [ %.212751333.us, %bb.g ], [ %.212751333.us, %bb.i ], [ %.212751333.us, %bb.h ], [ %i.mx, %.sink.split ] ; 2 uses
  %.51260.us = phi nsz <8 x float> [ %.212571334.us, %bb.g ], [ %.212571334.us, %bb.i ], [ %.212571334.us, %bb.h ], [ %i.mq, %.sink.split ] ; 2 uses
  %.6.us = phi nsz <8 x float> [ %.312531335.us, %bb.g ], [ %.312531335.us, %bb.i ], [ %.312531335.us, %bb.h ], [ %i.mj, %.sink.split ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit1323.us, label %bb.g, !llvm.loop !733

.loopexit1323.us:                                 ; preds = %bb.k, %.preheader1322.us, %bb.f, %bb.e
  %.61292.us = phi nsz <8 x float> [ %.112871340.us, %bb.e ], [ %.112871340.us, %bb.f ], [ %.112871340.us, %.preheader1322.us ], [ %.51291.us, %bb.k ] ; 3 uses
  %.61279.us = phi nsz <8 x float> [ %.112741341.us, %bb.e ], [ %.112741341.us, %bb.f ], [ %.112741341.us, %.preheader1322.us ], [ %.51278.us, %bb.k ] ; 3 uses
  %.61261.us = phi nsz <8 x float> [ %.112561342.us, %bb.e ], [ %.112561342.us, %bb.f ], [ %.112561342.us, %.preheader1322.us ], [ %.51260.us, %bb.k ] ; 3 uses
  %.7.us = phi nsz <8 x float> [ %.212521343.us, %bb.e ], [ %.212521343.us, %bb.f ], [ %.212521343.us, %.preheader1322.us ], [ %.6.us, %bb.k ] ; 3 uses
  %i.nf = add nuw nsw i32 %.03271344.us, 1        ; 2 uses
  %exitcond1519.not = icmp eq i32 %i.nf, %i.bs
  br i1 %exitcond1519.not, label %._crit_edge.us, label %bb.e, !llvm.loop !734

.preheader1322.us:                                ; preds = %bb.f
  %i.ng = load i32, ptr %12, align 4, !tbaa !61   ; 3 uses
  %i.nh = icmp sgt i32 %i.ng, 0
  br i1 %i.nh, label %.lr.ph.us, label %.loopexit1323.us

.lr.ph.us:                                        ; preds = %.preheader1322.us
  %i.ni = load i32, ptr %13, align 4, !tbaa !61
  %i.nj = load i32, ptr %14, align 4, !tbaa !61
  %invariant.op.us = sub i32 %.neg1317, %i.nj
  %i.nk = mul nuw nsw i32 %i.ng, %.03271344.us
  %i.nl = sext i32 %i.cp to i64                   ; 3 uses
  %wide.trip.count = zext nneg i32 %i.ng to i64
  br label %bb.g

._crit_edge.us:                                   ; preds = %.loopexit1323.us
  %i.nm = getelementptr inbounds [2 x i8], ptr %.03291356.us, i64 %i.bw ; 2 uses
  %indvars.iv.next1521 = add nuw nsw i64 %indvars.iv1520, 8 ; 2 uses
  %i.nn = icmp slt i64 %indvars.iv.next1521, %invariant.op
  br i1 %i.nn, label %.preheader1327.us, label %.preheader1330, !llvm.loop !735

.preheader1330:                                   ; preds = %._crit_edge.us, %.preheader1327.preheader, %_ZN4ncnn3MatD2Ev.exit404
  %.01286.lcssa = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit404 ], [ zeroinitializer, %.preheader1327.preheader ], [ %.61292.us, %._crit_edge.us ] ; 3 uses
  %.01273.lcssa = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit404 ], [ zeroinitializer, %.preheader1327.preheader ], [ %.61279.us, %._crit_edge.us ] ; 3 uses
  %.01255.lcssa = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit404 ], [ zeroinitializer, %.preheader1327.preheader ], [ %.61261.us, %._crit_edge.us ] ; 3 uses
  %.11251.lcssa = phi <8 x float> [ %.01250, %_ZN4ncnn3MatD2Ev.exit404 ], [ %.01250, %.preheader1327.preheader ], [ %.7.us, %._crit_edge.us ] ; 3 uses
  %.0329.lcssa = phi ptr [ %i.br, %_ZN4ncnn3MatD2Ev.exit404 ], [ %scevgep, %.preheader1327.preheader ], [ %i.nm, %._crit_edge.us ] ; 3 uses
  %.0328.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit404 ], [ %i.be, %.preheader1327.preheader ], [ %i.bh, %._crit_edge.us ] ; 6 uses
  %i.no = or disjoint i32 %.0328.lcssa, 3         ; 2 uses
  %i.np = icmp slt i32 %i.no, %i.ac
  br i1 %i.np, label %.preheader1326.lr.ph, label %.preheader1329

.preheader1326.lr.ph:                             ; preds = %.preheader1330
  %i.nq = load i32, ptr %8, align 4, !tbaa !61    ; 2 uses
  %i.nr = icmp sgt i32 %i.nq, 0
  %.neg1313 = add nuw nsw i32 %.03331493, 1
  %i.ns = load i32, ptr %16, align 4, !tbaa !61
  %i.nt = shl i32 %i.ns, 5
  %i.nu = sext i32 %i.nt to i64                   ; 2 uses
  br i1 %i.nr, label %.preheader1326.lr.ph.split.us, label %.preheader1326.preheader

.preheader1326.preheader:                         ; preds = %.preheader1326.lr.ph
  %i.nv = add i32 %.0328.lcssa, 7
  %smax = call i32 @llvm.smax.i32(i32 %i.ac, i32 %i.nv)
  %i.nw = add i32 %smax, -4
  %i.nx = sub i32 %i.nw, %.0328.lcssa             ; 2 uses
  %i.ny = lshr i32 %i.nx, 1
  %i.nz = and i32 %i.ny, 2147483646
  %narrow1594 = add nuw i32 %i.nz, 2
  %i.oa = zext i32 %narrow1594 to i64
  %i.ob = mul nsw i64 %i.oa, %i.nu
  %scevgep1523 = getelementptr i8, ptr %.0329.lcssa, i64 %i.ob
  %i.oc = add i32 %.0328.lcssa, 4
  %i.od = and i32 %i.nx, -4
  %i.oe = add i32 %i.oc, %i.od
  br label %.preheader1329

.preheader1326.lr.ph.split.us:                    ; preds = %.preheader1326.lr.ph
  %i.of = load i32, ptr %9, align 4, !tbaa !61
  %i.og = load i32, ptr %10, align 4, !tbaa !61
  %invariant.op1413.us = sub i32 %.neg1315, %i.og
  %i.oh = zext i32 %.0328.lcssa to i64
  %i.oi = zext nneg i32 %i.no to i64
  br label %.preheader1326.us

.preheader1326.us:                                ; preds = %._crit_edge.us1436, %.preheader1326.lr.ph.split.us
  %indvars.iv1535 = phi i64 [ %indvars.iv.next1536, %._crit_edge.us1436 ], [ %i.oh, %.preheader1326.lr.ph.split.us ] ; 5 uses
  %i.oj = phi i64 [ %i.vh, %._crit_edge.us1436 ], [ %i.oi, %.preheader1326.lr.ph.split.us ]
  %.13301419.us = phi ptr [ %i.vg, %._crit_edge.us1436 ], [ %.0329.lcssa, %.preheader1326.lr.ph.split.us ] ; 3 uses
  %.81418.us = phi <8 x float> [ %.13.us, %._crit_edge.us1436 ], [ %.11251.lcssa, %.preheader1326.lr.ph.split.us ]
  %.712621417.us = phi <8 x float> [ %.121267.us, %._crit_edge.us1436 ], [ %.01255.lcssa, %.preheader1326.lr.ph.split.us ]
  %.712801416.us = phi <8 x float> [ %.121285.us, %._crit_edge.us1436 ], [ %.01273.lcssa, %.preheader1326.lr.ph.split.us ]
  %.712931415.us = phi <8 x float> [ %.121298.us, %._crit_edge.us1436 ], [ %.01286.lcssa, %.preheader1326.lr.ph.split.us ]
  %i.ok = or disjoint i64 %indvars.iv1535, 1
  %i.ol = or disjoint i64 %indvars.iv1535, 2
  %i.om = lshr exact i64 %indvars.iv1535, 2
  br label %bb.l

bb.l:                                             ; preds = %.preheader1326.us, %.loopexit1321.us
  %.03251408.us = phi i32 [ 0, %.preheader1326.us ], [ %i.vf, %.loopexit1321.us ] ; 3 uses
  %.91407.us = phi <8 x float> [ %.81418.us, %.preheader1326.us ], [ %.13.us, %.loopexit1321.us ] ; 6 uses
  %.812631406.us = phi <8 x float> [ %.712621417.us, %.preheader1326.us ], [ %.121267.us, %.loopexit1321.us ] ; 6 uses
  %.812811405.us = phi <8 x float> [ %.712801416.us, %.preheader1326.us ], [ %.121285.us, %.loopexit1321.us ] ; 6 uses
  %.812941404.us = phi <8 x float> [ %.712931415.us, %.preheader1326.us ], [ %.121298.us, %.loopexit1321.us ] ; 6 uses
  %i.on = mul nsw i32 %i.of, %.03251408.us
  %.reass1414.us = add i32 %i.on, %invariant.op1413.us ; 3 uses
  %i.oo = icmp slt i32 %.reass1414.us, 0
  br i1 %i.oo, label %.loopexit1321.us, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.op = load i32, ptr %11, align 4, !tbaa !61   ; 2 uses
  %i.oq = srem i32 %.reass1414.us, %i.op
  %i.or = sdiv exact i32 %.reass1414.us, %i.op    ; 2 uses
  %.not378.us = icmp eq i32 %i.oq, 0
  %.not379.us = icmp slt i32 %i.or, %i.ae
  %or.cond1716 = select i1 %.not378.us, i1 %.not379.us, i1 false
  br i1 %or.cond1716, label %.preheader1320.us, label %.loopexit1321.us

.preheader1320.us:                                ; preds = %bb.m
  %i.os = load i32, ptr %12, align 4, !tbaa !61   ; 4 uses
  %i.ot = icmp sgt i32 %i.os, 0
  br i1 %i.ot, label %.lr.ph.us1427, label %.loopexit1321.us

.lr.ph.us1427:                                    ; preds = %.preheader1320.us
  %i.ou = load i32, ptr %13, align 4, !tbaa !61   ; 2 uses
  %i.ov = load i32, ptr %14, align 4, !tbaa !61
  %invariant.op.us1428 = sub i32 %.neg1313, %i.ov ; 2 uses
  %i.ow = mul nuw nsw i32 %i.os, %.03251408.us    ; 2 uses
  %i.ox = sext i32 %i.or to i64                   ; 2 uses
  switch i32 %.fr, label %.loopexit1321.us [
    i32 4, label %.lr.ph.split.us.us.preheader
    i32 1, label %.lr.ph.split.us1383.us.preheader
  ]

.lr.ph.split.us1383.us.preheader:                 ; preds = %.lr.ph.us1427
  %wide.trip.count1527 = zext nneg i32 %i.os to i64
  br label %.lr.ph.split.us1383.us

.lr.ph.split.us.us.preheader:                     ; preds = %.lr.ph.us1427
  %wide.trip.count1532 = zext nneg i32 %i.os to i64
  br label %.lr.ph.split.us.us

.lr.ph.split.us1383.us:                           ; preds = %.lr.ph.split.us1383.us.preheader, %bb.o
  %indvars.iv1524 = phi i64 [ 0, %.lr.ph.split.us1383.us.preheader ], [ %indvars.iv.next1525, %bb.o ] ; 3 uses
  %.101372.us1385.us = phi <8 x float> [ %.91407.us, %.lr.ph.split.us1383.us.preheader ], [ %.12.us1395.us, %bb.o ] ; 3 uses
  %.912641371.us1386.us = phi <8 x float> [ %.812631406.us, %.lr.ph.split.us1383.us.preheader ], [ %.111266.us1394.us, %bb.o ] ; 3 uses
  %.912821370.us1387.us = phi <8 x float> [ %.812811405.us, %.lr.ph.split.us1383.us.preheader ], [ %.111284.us1393.us, %bb.o ] ; 3 uses
  %.912951369.us1388.us = phi <8 x float> [ %.812941404.us, %.lr.ph.split.us1383.us.preheader ], [ %.111297.us1392.us, %bb.o ] ; 3 uses
  %i.oy = trunc i64 %indvars.iv1524 to i32
  %i.oz = mul i32 %i.ou, %i.oy
  %.reass.us1389.us = add i32 %i.oz, %invariant.op.us1428 ; 3 uses
  %i.pa = icmp slt i32 %.reass.us1389.us, 0
  br i1 %i.pa, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split.us1383.us
  %i.pb = load i32, ptr %15, align 4, !tbaa !61   ; 2 uses
  %i.pc = srem i32 %.reass.us1389.us, %i.pb
  %i.pd = sdiv exact i32 %.reass.us1389.us, %i.pb ; 2 uses
  %.not380.us1390.us = icmp eq i32 %i.pc, 0
  %.not381.us1391.us = icmp slt i32 %i.pd, %i.ad
  %or.cond1717 = select i1 %.not380.us1390.us, i1 %.not381.us1391.us, i1 false
  br i1 %or.cond1717, label %_ZN4ncnn3MatD2Ev.exit391.us.us, label %bb.o

_ZN4ncnn3MatD2Ev.exit391.us.us:                   ; preds = %bb.n
  %i.pe = trunc i64 %indvars.iv1524 to i32
  %i.pf = add i32 %i.ow, %i.pe
  %i.pg = shl nsw i32 %i.pf, 5
  %i.ph = zext nneg i32 %i.pg to i64
  %i.pi = getelementptr inbounds nuw [2 x i8], ptr %.13301419.us, i64 %i.ph ; 4 uses
  %i.pj = load i32, ptr %i.n, align 4, !tbaa !54, !noalias !759
  %i.pk = load ptr, ptr %4, align 8, !tbaa !20, !noalias !759 ; 4 uses
  %i.pl = load i64, ptr %i.w, align 8, !tbaa !21, !noalias !759 ; 4 uses
  %i.pm = mul i64 %i.pl, %indvars.iv1535
  %i.pn = load i64, ptr %i.x, align 8, !tbaa !55, !noalias !759 ; 5 uses
  %i.po = mul i64 %i.pm, %i.pn
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pk, i64 %i.po
  %i.pq = sext i32 %i.pj to i64
  %i.pr = mul nsw i64 %i.pq, %i.ox
  %i.ps = mul i64 %i.pr, %i.pn                    ; 4 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pp, i64 %i.ps
  %i.pu = sext i32 %i.pd to i64                   ; 4 uses
  %i.pv = getelementptr inbounds [2 x i8], ptr %i.pt, i64 %i.pu
  %i.pw = mul i64 %i.pl, %i.ok
  %i.px = mul i64 %i.pw, %i.pn
  %i.py = getelementptr inbounds nuw i8, ptr %i.pk, i64 %i.px
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 %i.ps
  %i.qa = getelementptr inbounds [2 x i8], ptr %i.pz, i64 %i.pu
  %i.qb = mul i64 %i.pl, %i.ol
  %i.qc = mul i64 %i.qb, %i.pn
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pk, i64 %i.qc
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 %i.ps
  %i.qf = getelementptr inbounds [2 x i8], ptr %i.qe, i64 %i.pu
  %i.qg = mul i64 %i.pl, %i.oj
  %i.qh = mul i64 %i.qg, %i.pn
  %i.qi = getelementptr inbounds nuw i8, ptr %i.pk, i64 %i.qh
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 %i.ps
  %i.qk = getelementptr inbounds [2 x i8], ptr %i.qj, i64 %i.pu
  %i.ql = load i16, ptr %i.pv, align 2, !tbaa !89
  %i.qm = zext i16 %i.ql to i32
  %i.qn = shl nuw i32 %i.qm, 16
  %i.qo = insertelement <8 x i32> poison, i32 %i.qn, i64 0
  %i.qp = bitcast <8 x i32> %i.qo to <8 x float>
  %i.qq = shufflevector <8 x float> %i.qp, <8 x float> poison, <8 x i32> zeroinitializer
  %i.qr = load i16, ptr %i.qa, align 2, !tbaa !89
  %i.qs = zext i16 %i.qr to i32
  %i.qt = shl nuw i32 %i.qs, 16
  %i.qu = insertelement <8 x i32> poison, i32 %i.qt, i64 0
  %i.qv = bitcast <8 x i32> %i.qu to <8 x float>
  %i.qw = shufflevector <8 x float> %i.qv, <8 x float> poison, <8 x i32> zeroinitializer
  %i.qx = load i16, ptr %i.qf, align 2, !tbaa !89
  %i.qy = zext i16 %i.qx to i32
  %i.qz = shl nuw i32 %i.qy, 16
  %i.ra = insertelement <8 x i32> poison, i32 %i.qz, i64 0
  %i.rb = bitcast <8 x i32> %i.ra to <8 x float>
  %i.rc = shufflevector <8 x float> %i.rb, <8 x float> poison, <8 x i32> zeroinitializer
  %i.rd = load i16, ptr %i.qk, align 2, !tbaa !89
  %i.re = zext i16 %i.rd to i32
  %i.rf = shl nuw i32 %i.re, 16
  %i.rg = insertelement <8 x i32> poison, i32 %i.rf, i64 0
  %i.rh = bitcast <8 x i32> %i.rg to <8 x float>
  %i.ri = shufflevector <8 x float> %i.rh, <8 x float> poison, <8 x i32> zeroinitializer
  %i.rj = load <8 x i16>, ptr %i.pi, align 16, !tbaa !82 ; 2 uses
  %i.rk = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.rj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.rl = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.rj, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.rm = shufflevector <8 x i16> %i.rk, <8 x i16> %i.rl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.rn = bitcast <16 x i16> %i.rm to <8 x float>
  %i.ro = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qq, <8 x float> nofpclass(nan inf) %i.rn, <8 x float> nofpclass(nan inf) %.101372.us1385.us)
  %i.rp = getelementptr inbounds nuw i8, ptr %i.pi, i64 16
  %i.rq = load <8 x i16>, ptr %i.rp, align 16, !tbaa !82 ; 2 uses
  %i.rr = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.rq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.rs = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.rq, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.rt = shufflevector <8 x i16> %i.rr, <8 x i16> %i.rs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ru = bitcast <16 x i16> %i.rt to <8 x float>
  %i.rv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qw, <8 x float> nofpclass(nan inf) %i.ru, <8 x float> nofpclass(nan inf) %.912641371.us1386.us)
  %i.rw = getelementptr inbounds nuw i8, ptr %i.pi, i64 32
  %i.rx = load <8 x i16>, ptr %i.rw, align 16, !tbaa !82 ; 2 uses
  %i.ry = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.rx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.rz = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.rx, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.sa = shufflevector <8 x i16> %i.ry, <8 x i16> %i.rz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.sb = bitcast <16 x i16> %i.sa to <8 x float>
  %i.sc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rc, <8 x float> nofpclass(nan inf) %i.sb, <8 x float> nofpclass(nan inf) %.912821370.us1387.us)
  %i.sd = getelementptr inbounds nuw i8, ptr %i.pi, i64 48
  %i.se = load <8 x i16>, ptr %i.sd, align 16, !tbaa !82 ; 2 uses
  %i.sf = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.se, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.sg = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.se, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.sh = shufflevector <8 x i16> %i.sf, <8 x i16> %i.sg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.si = bitcast <16 x i16> %i.sh to <8 x float>
  %i.sj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ri, <8 x float> nofpclass(nan inf) %i.si, <8 x float> nofpclass(nan inf) %.912951369.us1388.us)
  br label %bb.o

bb.o:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit391.us.us, %bb.n, %.lr.ph.split.us1383.us
  %.111297.us1392.us = phi nsz <8 x float> [ %.912951369.us1388.us, %.lr.ph.split.us1383.us ], [ %.912951369.us1388.us, %bb.n ], [ %i.sj, %_ZN4ncnn3MatD2Ev.exit391.us.us ] ; 2 uses
  %.111284.us1393.us = phi nsz <8 x float> [ %.912821370.us1387.us, %.lr.ph.split.us1383.us ], [ %.912821370.us1387.us, %bb.n ], [ %i.sc, %_ZN4ncnn3MatD2Ev.exit391.us.us ] ; 2 uses
  %.111266.us1394.us = phi nsz <8 x float> [ %.912641371.us1386.us, %.lr.ph.split.us1383.us ], [ %.912641371.us1386.us, %bb.n ], [ %i.rv, %_ZN4ncnn3MatD2Ev.exit391.us.us ] ; 2 uses
  %.12.us1395.us = phi nsz <8 x float> [ %.101372.us1385.us, %.lr.ph.split.us1383.us ], [ %.101372.us1385.us, %bb.n ], [ %i.ro, %_ZN4ncnn3MatD2Ev.exit391.us.us ] ; 2 uses
  %indvars.iv.next1525 = add nuw nsw i64 %indvars.iv1524, 1 ; 2 uses
  %exitcond1528.not = icmp eq i64 %indvars.iv.next1525, %wide.trip.count1527
  br i1 %exitcond1528.not, label %.loopexit1321.us, label %.lr.ph.split.us1383.us, !llvm.loop !738

.lr.ph.split.us.us:                               ; preds = %.lr.ph.split.us.us.preheader, %bb.r
  %indvars.iv1529 = phi i64 [ 0, %.lr.ph.split.us.us.preheader ], [ %indvars.iv.next1530, %bb.r ] ; 3 uses
  %.101372.us.us = phi <8 x float> [ %.91407.us, %.lr.ph.split.us.us.preheader ], [ %.12.us.us, %bb.r ] ; 3 uses
  %.912641371.us.us = phi <8 x float> [ %.812631406.us, %.lr.ph.split.us.us.preheader ], [ %.111266.us.us, %bb.r ] ; 3 uses
  %.912821370.us.us = phi <8 x float> [ %.812811405.us, %.lr.ph.split.us.us.preheader ], [ %.111284.us.us, %bb.r ] ; 3 uses
  %.912951369.us.us = phi <8 x float> [ %.812941404.us, %.lr.ph.split.us.us.preheader ], [ %.111297.us.us, %bb.r ] ; 3 uses
  %i.sk = trunc i64 %indvars.iv1529 to i32
  %i.sl = mul i32 %i.ou, %i.sk
  %.reass.us1377.us = add i32 %i.sl, %invariant.op.us1428 ; 3 uses
  %i.sm = icmp slt i32 %.reass.us1377.us, 0
  br i1 %i.sm, label %bb.r, label %bb.p

bb.p:                                             ; preds = %.lr.ph.split.us.us
  %i.sn = load i32, ptr %15, align 4, !tbaa !61   ; 2 uses
  %i.so = srem i32 %.reass.us1377.us, %i.sn
  %i.sp = sdiv exact i32 %.reass.us1377.us, %i.sn ; 2 uses
  %.not380.us.us = icmp eq i32 %i.so, 0
  %.not381.us.us = icmp slt i32 %i.sp, %i.ad
  %or.cond1718 = select i1 %.not380.us.us, i1 %.not381.us.us, i1 false
  br i1 %or.cond1718, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.sq = trunc i64 %indvars.iv1529 to i32
  %i.sr = add i32 %i.ow, %i.sq
  %i.ss = shl nsw i32 %i.sr, 5
  %i.st = zext nneg i32 %i.ss to i64
  %i.su = getelementptr inbounds nuw [2 x i8], ptr %.13301419.us, i64 %i.st ; 4 uses
  %i.sv = load i32, ptr %i.n, align 4, !tbaa !54, !noalias !760
  %i.sw = load ptr, ptr %4, align 8, !tbaa !20, !noalias !760
  %i.sx = load i64, ptr %i.w, align 8, !tbaa !21, !noalias !760
  %i.sy = mul i64 %i.sx, %i.om
  %i.sz = load i64, ptr %i.x, align 8, !tbaa !55, !noalias !760 ; 2 uses
  %i.ta = mul i64 %i.sy, %i.sz
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sw, i64 %i.ta
  %i.tc = sext i32 %i.sv to i64
  %i.td = mul nsw i64 %i.tc, %i.ox
  %i.te = mul i64 %i.td, %i.sz
  %i.tf = getelementptr inbounds nuw i8, ptr %i.tb, i64 %i.te
  %i.tg = shl nsw i32 %i.sp, 2
  %i.th = sext i32 %i.tg to i64
  %i.ti = getelementptr inbounds [2 x i8], ptr %i.tf, i64 %i.th ; 3 uses
  %i.tj = load i16, ptr %i.ti, align 2, !tbaa !89
  %i.tk = zext i16 %i.tj to i32
  %i.tl = shl nuw i32 %i.tk, 16
  %i.tm = insertelement <8 x i32> poison, i32 %i.tl, i64 0
  %i.tn = bitcast <8 x i32> %i.tm to <8 x float>
  %i.to = shufflevector <8 x float> %i.tn, <8 x float> poison, <8 x i32> zeroinitializer
  %i.tp = getelementptr inbounds nuw i8, ptr %i.ti, i64 2
  %i.tq = load i16, ptr %i.tp, align 2, !tbaa !89
  %i.tr = zext i16 %i.tq to i32
  %i.ts = shl nuw i32 %i.tr, 16
  %i.tt = insertelement <8 x i32> poison, i32 %i.ts, i64 0
  %i.tu = bitcast <8 x i32> %i.tt to <8 x float>
  %i.tv = shufflevector <8 x float> %i.tu, <8 x float> poison, <8 x i32> zeroinitializer
  %i.tw = getelementptr inbounds nuw i8, ptr %i.ti, i64 4
  %i.tx = load <2 x i16>, ptr %i.tw, align 2, !tbaa !89
  %i.ty = zext <2 x i16> %i.tx to <2 x i32>
  %i.tz = shl nuw <2 x i32> %i.ty, splat (i32 16) ; 2 uses
  %i.ua = bitcast <2 x i32> %i.tz to <2 x float>
  %i.ub = shufflevector <2 x float> %i.ua, <2 x float> poison, <8 x i32> zeroinitializer
  %i.uc = bitcast <2 x i32> %i.tz to <2 x float>
  %i.ud = shufflevector <2 x float> %i.uc, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.ue = load <8 x i16>, ptr %i.su, align 16, !tbaa !82 ; 2 uses
  %i.uf = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ue, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ug = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ue, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.uh = shufflevector <8 x i16> %i.uf, <8 x i16> %i.ug, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ui = bitcast <16 x i16> %i.uh to <8 x float>
  %i.uj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.to, <8 x float> nofpclass(nan inf) %i.ui, <8 x float> nofpclass(nan inf) %.101372.us.us)
  %i.uk = getelementptr inbounds nuw i8, ptr %i.su, i64 16
  %i.ul = load <8 x i16>, ptr %i.uk, align 16, !tbaa !82 ; 2 uses
  %i.um = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ul, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.un = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ul, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.uo = shufflevector <8 x i16> %i.um, <8 x i16> %i.un, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.up = bitcast <16 x i16> %i.uo to <8 x float>
  %i.uq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.tv, <8 x float> nofpclass(nan inf) %i.up, <8 x float> nofpclass(nan inf) %.912641371.us.us)
  %i.ur = getelementptr inbounds nuw i8, ptr %i.su, i64 32
  %i.us = load <8 x i16>, ptr %i.ur, align 16, !tbaa !82 ; 2 uses
  %i.ut = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.us, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.uu = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.us, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.uv = shufflevector <8 x i16> %i.ut, <8 x i16> %i.uu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.uw = bitcast <16 x i16> %i.uv to <8 x float>
  %i.ux = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ub, <8 x float> nofpclass(nan inf) %i.uw, <8 x float> nofpclass(nan inf) %.912821370.us.us)
  %i.uy = getelementptr inbounds nuw i8, ptr %i.su, i64 48
  %i.uz = load <8 x i16>, ptr %i.uy, align 16, !tbaa !82 ; 2 uses
  %i.va = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.uz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.vb = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.uz, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.vc = shufflevector <8 x i16> %i.va, <8 x i16> %i.vb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.vd = bitcast <16 x i16> %i.vc to <8 x float>
  %i.ve = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ud, <8 x float> nofpclass(nan inf) %i.vd, <8 x float> nofpclass(nan inf) %.912951369.us.us)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %.lr.ph.split.us.us
  %.111297.us.us = phi nsz <8 x float> [ %.912951369.us.us, %.lr.ph.split.us.us ], [ %i.ve, %bb.q ], [ %.912951369.us.us, %bb.p ] ; 2 uses
  %.111284.us.us = phi nsz <8 x float> [ %.912821370.us.us, %.lr.ph.split.us.us ], [ %i.ux, %bb.q ], [ %.912821370.us.us, %bb.p ] ; 2 uses
  %.111266.us.us = phi nsz <8 x float> [ %.912641371.us.us, %.lr.ph.split.us.us ], [ %i.uq, %bb.q ], [ %.912641371.us.us, %bb.p ] ; 2 uses
  %.12.us.us = phi nsz <8 x float> [ %.101372.us.us, %.lr.ph.split.us.us ], [ %i.uj, %bb.q ], [ %.101372.us.us, %bb.p ] ; 2 uses
  %indvars.iv.next1530 = add nuw nsw i64 %indvars.iv1529, 1 ; 2 uses
  %exitcond1533.not = icmp eq i64 %indvars.iv.next1530, %wide.trip.count1532
  br i1 %exitcond1533.not, label %.loopexit1321.us, label %.lr.ph.split.us.us, !llvm.loop !738

.loopexit1321.us:                                 ; preds = %bb.o, %bb.r, %.lr.ph.us1427, %.preheader1320.us, %bb.m, %bb.l
  %.121298.us = phi nsz <8 x float> [ %.812941404.us, %bb.l ], [ %.812941404.us, %bb.m ], [ %.111297.us.us, %bb.r ], [ %.812941404.us, %.preheader1320.us ], [ %.812941404.us, %.lr.ph.us1427 ], [ %.111297.us1392.us, %bb.o ] ; 3 uses
  %.121285.us = phi nsz <8 x float> [ %.812811405.us, %bb.l ], [ %.812811405.us, %bb.m ], [ %.111284.us.us, %bb.r ], [ %.812811405.us, %.preheader1320.us ], [ %.812811405.us, %.lr.ph.us1427 ], [ %.111284.us1393.us, %bb.o ] ; 3 uses
  %.121267.us = phi nsz <8 x float> [ %.812631406.us, %bb.l ], [ %.812631406.us, %bb.m ], [ %.111266.us.us, %bb.r ], [ %.812631406.us, %.preheader1320.us ], [ %.812631406.us, %.lr.ph.us1427 ], [ %.111266.us1394.us, %bb.o ] ; 3 uses
  %.13.us = phi nsz <8 x float> [ %.91407.us, %bb.l ], [ %.91407.us, %bb.m ], [ %.12.us.us, %bb.r ], [ %.91407.us, %.preheader1320.us ], [ %.91407.us, %.lr.ph.us1427 ], [ %.12.us1395.us, %bb.o ] ; 3 uses
  %i.vf = add nuw nsw i32 %.03251408.us, 1        ; 2 uses
  %exitcond1534.not = icmp eq i32 %i.vf, %i.nq
  br i1 %exitcond1534.not, label %._crit_edge.us1436, label %bb.l, !llvm.loop !741

._crit_edge.us1436:                               ; preds = %.loopexit1321.us
  %i.vg = getelementptr inbounds [2 x i8], ptr %.13301419.us, i64 %i.nu ; 2 uses
  %indvars.iv.next1536 = add nuw nsw i64 %indvars.iv1535, 4 ; 3 uses
  %i.vh = or disjoint i64 %indvars.iv.next1536, 3 ; 2 uses
  %i.vi = trunc nuw i64 %i.vh to i32
  %i.vj = icmp sgt i32 %i.ac, %i.vi
  br i1 %i.vj, label %.preheader1326.us, label %.preheader1329.loopexit, !llvm.loop !742

.preheader1329.loopexit:                          ; preds = %._crit_edge.us1436
  %i.vk = trunc nuw i64 %indvars.iv.next1536 to i32
  br label %.preheader1329

.preheader1329:                                   ; preds = %.preheader1326.preheader, %.preheader1329.loopexit, %.preheader1330
  %.71293.lcssa = phi <8 x float> [ %.01286.lcssa, %.preheader1330 ], [ %.121298.us, %.preheader1329.loopexit ], [ %.01286.lcssa, %.preheader1326.preheader ]
  %.71280.lcssa = phi <8 x float> [ %.01273.lcssa, %.preheader1330 ], [ %.121285.us, %.preheader1329.loopexit ], [ %.01273.lcssa, %.preheader1326.preheader ]
  %.71262.lcssa = phi <8 x float> [ %.01255.lcssa, %.preheader1330 ], [ %.121267.us, %.preheader1329.loopexit ], [ %.01255.lcssa, %.preheader1326.preheader ] ; 3 uses
  %.8.lcssa = phi <8 x float> [ %.11251.lcssa, %.preheader1330 ], [ %.13.us, %.preheader1329.loopexit ], [ %.11251.lcssa, %.preheader1326.preheader ] ; 3 uses
  %.1330.lcssa = phi ptr [ %.0329.lcssa, %.preheader1330 ], [ %i.vg, %.preheader1329.loopexit ], [ %scevgep1523, %.preheader1326.preheader ] ; 3 uses
  %.1.lcssa = phi i32 [ %.0328.lcssa, %.preheader1330 ], [ %i.vk, %.preheader1329.loopexit ], [ %i.oe, %.preheader1326.preheader ] ; 6 uses
  %i.vl = or disjoint i32 %.1.lcssa, 1            ; 2 uses
  %i.vm = icmp slt i32 %i.vl, %i.ac
  br i1 %i.vm, label %.preheader1325.lr.ph, label %.preheader1328

.preheader1325.lr.ph:                             ; preds = %.preheader1329
  %i.vn = load i32, ptr %8, align 4, !tbaa !61    ; 2 uses
  %i.vo = icmp sgt i32 %i.vn, 0
  %.neg1309 = add nuw nsw i32 %.03331493, 1
  %i.vp = load i32, ptr %16, align 4, !tbaa !61
  %i.vq = shl i32 %i.vp, 4
  %i.vr = sext i32 %i.vq to i64                   ; 2 uses
  br i1 %i.vo, label %.preheader1325.lr.ph.split.us, label %.preheader1325.preheader

.preheader1325.preheader:                         ; preds = %.preheader1325.lr.ph
  %i.vs = add i32 %.1.lcssa, 3
  %smax1538 = call i32 @llvm.smax.i32(i32 %i.ac, i32 %i.vs)
  %i.vt = add i32 %smax1538, -2
  %i.vu = sub i32 %i.vt, %.1.lcssa                ; 2 uses
  %i.vv = and i32 %i.vu, -2
  %i.vw = zext i32 %i.vv to i64
  %i.vx = add nuw nsw i64 %i.vw, 2
  %i.vy = mul nsw i64 %i.vx, %i.vr
  %scevgep1539 = getelementptr i8, ptr %.1330.lcssa, i64 %i.vy
  %i.vz = add i32 %.1.lcssa, 2
  %i.wa = and i32 %i.vu, -2
  %i.wb = add i32 %i.vz, %i.wa
  br label %.preheader1328

.preheader1325.lr.ph.split.us:                    ; preds = %.preheader1325.lr.ph
  %i.wc = load i32, ptr %9, align 4, !tbaa !61
  %i.wd = load i32, ptr %10, align 4, !tbaa !61
  %invariant.op1454.us = sub i32 %.neg1315, %i.wd
  %i.we = zext i32 %.1.lcssa to i64
  %i.wf = zext nneg i32 %i.vl to i64
  br label %.preheader1325.us

.preheader1325.us:                                ; preds = %._crit_edge.us1468, %.preheader1325.lr.ph.split.us
  %indvars.iv1546 = phi i64 [ %indvars.iv.next1547, %._crit_edge.us1468 ], [ %i.we, %.preheader1325.lr.ph.split.us ] ; 2 uses
  %i.wg = phi i64 [ %i.yw, %._crit_edge.us1468 ], [ %i.wf, %.preheader1325.lr.ph.split.us ]
  %.23311458.us = phi ptr [ %i.yv, %._crit_edge.us1468 ], [ %.1330.lcssa, %.preheader1325.lr.ph.split.us ] ; 2 uses
  %.141457.us = phi <8 x float> [ %.18.us, %._crit_edge.us1468 ], [ %.8.lcssa, %.preheader1325.lr.ph.split.us ]
  %.1312681456.us = phi <8 x float> [ %.171272.us, %._crit_edge.us1468 ], [ %.71262.lcssa, %.preheader1325.lr.ph.split.us ]
  br label %bb.s

bb.s:                                             ; preds = %.preheader1325.us, %.loopexit1319.us
  %.03231450.us = phi i32 [ 0, %.preheader1325.us ], [ %i.yq, %.loopexit1319.us ] ; 3 uses
  %.151449.us = phi <8 x float> [ %.141457.us, %.preheader1325.us ], [ %.18.us, %.loopexit1319.us ] ; 4 uses
  %.1412691448.us = phi <8 x float> [ %.1312681456.us, %.preheader1325.us ], [ %.171272.us, %.loopexit1319.us ] ; 4 uses
  %i.wh = mul nsw i32 %i.wc, %.03231450.us
  %.reass1455.us = add i32 %i.wh, %invariant.op1454.us ; 3 uses
  %i.wi = icmp slt i32 %.reass1455.us, 0
  br i1 %i.wi, label %.loopexit1319.us, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.wj = load i32, ptr %11, align 4, !tbaa !61   ; 2 uses
  %i.wk = srem i32 %.reass1455.us, %i.wj
  %i.wl = sdiv exact i32 %.reass1455.us, %i.wj    ; 2 uses
  %.not374.us = icmp eq i32 %i.wk, 0
  %.not375.us = icmp slt i32 %i.wl, %i.ae
  %or.cond1719 = select i1 %.not374.us, i1 %.not375.us, i1 false
  br i1 %or.cond1719, label %.preheader1318.us, label %.loopexit1319.us

.preheader1318.us:                                ; preds = %bb.t
  %i.wm = load i32, ptr %12, align 4, !tbaa !61   ; 3 uses
  %i.wn = icmp sgt i32 %i.wm, 0
  br i1 %i.wn, label %.lr.ph.us1465, label %.loopexit1319.us

bb.u:                                             ; preds = %.lr.ph.us1465, %bb.w
  %indvars.iv1540 = phi i64 [ 0, %.lr.ph.us1465 ], [ %indvars.iv.next1541, %bb.w ] ; 3 uses
  %.161445.us = phi <8 x float> [ %.151449.us, %.lr.ph.us1465 ], [ %.17.us, %bb.w ] ; 3 uses
  %.1512701444.us = phi <8 x float> [ %.1412691448.us, %.lr.ph.us1465 ], [ %.161271.us, %bb.w ] ; 3 uses
  %i.wo = trunc i64 %indvars.iv1540 to i32
  %i.wp = mul i32 %i.yr, %i.wo
  %.reass.us1464 = add i32 %i.wp, %invariant.op.us1466 ; 3 uses
  %i.wq = icmp slt i32 %.reass.us1464, 0
  br i1 %i.wq, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.wr = load i32, ptr %15, align 4, !tbaa !61   ; 2 uses
  %i.ws = srem i32 %.reass.us1464, %i.wr
  %i.wt = sdiv exact i32 %.reass.us1464, %i.wr    ; 2 uses
  %.not376.us = icmp eq i32 %i.ws, 0
  %.not377.us = icmp slt i32 %i.wt, %i.ad
  %or.cond1720 = select i1 %.not376.us, i1 %.not377.us, i1 false
  br i1 %or.cond1720, label %_ZN4ncnn3MatD2Ev.exit387.us, label %bb.w

_ZN4ncnn3MatD2Ev.exit387.us:                      ; preds = %bb.v
  %i.wu = trunc i64 %indvars.iv1540 to i32
  %i.wv = add i32 %i.yt, %i.wu
  %i.ww = shl nsw i32 %i.wv, 4
  %i.wx = zext nneg i32 %i.ww to i64
  %i.wy = getelementptr inbounds nuw [2 x i8], ptr %.23311458.us, i64 %i.wx ; 2 uses
  %i.wz = load i32, ptr %i.n, align 4, !tbaa !54, !noalias !761
  %i.xa = load ptr, ptr %4, align 8, !tbaa !20, !noalias !761 ; 2 uses
  %i.xb = load i64, ptr %i.w, align 8, !tbaa !21, !noalias !761 ; 2 uses
  %i.xc = mul i64 %i.xb, %indvars.iv1546
  %i.xd = load i64, ptr %i.x, align 8, !tbaa !55, !noalias !761 ; 3 uses
  %i.xe = mul i64 %i.xc, %i.xd
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xa, i64 %i.xe
  %i.xg = sext i32 %i.wz to i64
  %i.xh = mul nsw i64 %i.xg, %i.yu
  %i.xi = mul i64 %i.xh, %i.xd                    ; 2 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xf, i64 %i.xi
  %i.xk = mul i64 %i.xb, %i.wg
  %i.xl = mul i64 %i.xk, %i.xd
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xa, i64 %i.xl
  %i.xn = sext i32 %i.wt to i64                   ; 2 uses
  %i.xo = getelementptr inbounds [2 x i8], ptr %i.xj, i64 %i.xn
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xm, i64 %i.xi
  %i.xq = load i16, ptr %i.xo, align 2, !tbaa !89
  %i.xr = zext i16 %i.xq to i32
  %i.xs = shl nuw i32 %i.xr, 16
  %i.xt = insertelement <8 x i32> poison, i32 %i.xs, i64 0
  %i.xu = bitcast <8 x i32> %i.xt to <8 x float>
  %i.xv = shufflevector <8 x float> %i.xu, <8 x float> poison, <8 x i32> zeroinitializer
  %i.xw = getelementptr inbounds [2 x i8], ptr %i.xp, i64 %i.xn
  %i.xx = load i16, ptr %i.xw, align 2, !tbaa !89
  %i.xy = zext i16 %i.xx to i32
  %i.xz = shl nuw i32 %i.xy, 16
  %i.ya = insertelement <8 x i32> poison, i32 %i.xz, i64 0
  %i.yb = bitcast <8 x i32> %i.ya to <8 x float>
  %i.yc = shufflevector <8 x float> %i.yb, <8 x float> poison, <8 x i32> zeroinitializer
  %i.yd = load <8 x i16>, ptr %i.wy, align 16, !tbaa !82 ; 2 uses
  %i.ye = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.yd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.yf = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.yd, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.yg = shufflevector <8 x i16> %i.ye, <8 x i16> %i.yf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.yh = bitcast <16 x i16> %i.yg to <8 x float>
  %i.yi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.xv, <8 x float> nofpclass(nan inf) %i.yh, <8 x float> nofpclass(nan inf) %.161445.us)
  %i.yj = getelementptr inbounds nuw i8, ptr %i.wy, i64 16
  %i.yk = load <8 x i16>, ptr %i.yj, align 16, !tbaa !82 ; 2 uses
  %i.yl = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.yk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ym = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.yk, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.yn = shufflevector <8 x i16> %i.yl, <8 x i16> %i.ym, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.yo = bitcast <16 x i16> %i.yn to <8 x float>
  %i.yp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.yc, <8 x float> nofpclass(nan inf) %i.yo, <8 x float> nofpclass(nan inf) %.1512701444.us)
  br label %bb.w

bb.w:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit387.us, %bb.v, %bb.u
  %.161271.us = phi nsz <8 x float> [ %.1512701444.us, %bb.u ], [ %i.yp, %_ZN4ncnn3MatD2Ev.exit387.us ], [ %.1512701444.us, %bb.v ] ; 2 uses
  %.17.us = phi nsz <8 x float> [ %.161445.us, %bb.u ], [ %i.yi, %_ZN4ncnn3MatD2Ev.exit387.us ], [ %.161445.us, %bb.v ] ; 2 uses
  %indvars.iv.next1541 = add nuw nsw i64 %indvars.iv1540, 1 ; 2 uses
  %exitcond1544.not = icmp eq i64 %indvars.iv.next1541, %wide.trip.count1543
  br i1 %exitcond1544.not, label %.loopexit1319.us, label %bb.u, !llvm.loop !745

.loopexit1319.us:                                 ; preds = %bb.w, %.preheader1318.us, %bb.t, %bb.s
  %.171272.us = phi nsz <8 x float> [ %.1412691448.us, %bb.s ], [ %.1412691448.us, %bb.t ], [ %.1412691448.us, %.preheader1318.us ], [ %.161271.us, %bb.w ] ; 3 uses
  %.18.us = phi nsz <8 x float> [ %.151449.us, %bb.s ], [ %.151449.us, %bb.t ], [ %.151449.us, %.preheader1318.us ], [ %.17.us, %bb.w ] ; 3 uses
  %i.yq = add nuw nsw i32 %.03231450.us, 1        ; 2 uses
  %exitcond1545.not = icmp eq i32 %i.yq, %i.vn
  br i1 %exitcond1545.not, label %._crit_edge.us1468, label %bb.s, !llvm.loop !746

.lr.ph.us1465:                                    ; preds = %.preheader1318.us
  %i.yr = load i32, ptr %13, align 4, !tbaa !61
  %i.ys = load i32, ptr %14, align 4, !tbaa !61
  %invariant.op.us1466 = sub i32 %.neg1309, %i.ys
  %i.yt = mul nuw nsw i32 %i.wm, %.03231450.us
  %i.yu = sext i32 %i.wl to i64
  %wide.trip.count1543 = zext nneg i32 %i.wm to i64
  br label %bb.u

._crit_edge.us1468:                               ; preds = %.loopexit1319.us
  %i.yv = getelementptr inbounds [2 x i8], ptr %.23311458.us, i64 %i.vr ; 2 uses
  %indvars.iv.next1547 = add nuw nsw i64 %indvars.iv1546, 2 ; 3 uses
  %i.yw = or disjoint i64 %indvars.iv.next1547, 1 ; 2 uses
  %i.yx = trunc nuw i64 %i.yw to i32
  %i.yy = icmp sgt i32 %i.ac, %i.yx
  br i1 %i.yy, label %.preheader1325.us, label %.preheader1328.loopexit, !llvm.loop !747

.preheader1328.loopexit:                          ; preds = %._crit_edge.us1468
  %i.yz = trunc nuw i64 %indvars.iv.next1547 to i32
  br label %.preheader1328

.preheader1328:                                   ; preds = %.preheader1325.preheader, %.preheader1328.loopexit, %.preheader1329
  %.131268.lcssa = phi <8 x float> [ %.71262.lcssa, %.preheader1329 ], [ %.171272.us, %.preheader1328.loopexit ], [ %.71262.lcssa, %.preheader1325.preheader ]
  %.14.lcssa = phi <8 x float> [ %.8.lcssa, %.preheader1329 ], [ %.18.us, %.preheader1328.loopexit ], [ %.8.lcssa, %.preheader1325.preheader ] ; 3 uses
  %.2331.lcssa = phi ptr [ %.1330.lcssa, %.preheader1329 ], [ %i.yv, %.preheader1328.loopexit ], [ %scevgep1539, %.preheader1325.preheader ]
  %.2.lcssa = phi i32 [ %.1.lcssa, %.preheader1329 ], [ %i.yz, %.preheader1328.loopexit ], [ %i.wb, %.preheader1325.preheader ] ; 2 uses
  %i.za = icmp slt i32 %.2.lcssa, %i.ac
  br i1 %i.za, label %.preheader1324.lr.ph, label %._crit_edge1484

.preheader1324.lr.ph:                             ; preds = %.preheader1328
  %i.zb = load i32, ptr %8, align 4, !tbaa !61    ; 2 uses
  %i.zc = icmp sgt i32 %i.zb, 0
  %.neg1305 = add nuw nsw i32 %.03331493, 1
  %i.zd = load i32, ptr %16, align 4, !tbaa !61
  %i.ze = shl nsw i32 %i.zd, 3
  %i.zf = sext i32 %i.ze to i64
  br i1 %i.zc, label %.preheader1324.lr.ph.split.us, label %._crit_edge1484

.preheader1324.lr.ph.split.us:                    ; preds = %.preheader1324.lr.ph
  %i.zg = load i32, ptr %9, align 4, !tbaa !61
  %i.zh = load i32, ptr %10, align 4, !tbaa !61
  %invariant.op1479.us = sub i32 %.neg1315, %i.zh
  %i.zi = zext i32 %.2.lcssa to i64
  br label %.preheader1324.us

.preheader1324.us:                                ; preds = %._crit_edge.us1490, %.preheader1324.lr.ph.split.us
  %indvars.iv1555 = phi i64 [ %indvars.iv.next1556, %._crit_edge.us1490 ], [ %i.zi, %.preheader1324.lr.ph.split.us ] ; 2 uses
  %.33321482.us = phi ptr [ %i.abf, %._crit_edge.us1490 ], [ %.2331.lcssa, %.preheader1324.lr.ph.split.us ] ; 2 uses
  %.191481.us = phi <8 x float> [ %.23.us, %._crit_edge.us1490 ], [ %.14.lcssa, %.preheader1324.lr.ph.split.us ]
  br label %bb.x

bb.x:                                             ; preds = %.preheader1324.us, %.loopexit.us
  %.03211476.us = phi i32 [ 0, %.preheader1324.us ], [ %i.aba, %.loopexit.us ] ; 3 uses
  %.201475.us = phi <8 x float> [ %.191481.us, %.preheader1324.us ], [ %.23.us, %.loopexit.us ] ; 4 uses
  %i.zj = mul nsw i32 %i.zg, %.03211476.us
  %.reass1480.us = add i32 %i.zj, %invariant.op1479.us ; 3 uses
  %i.zk = icmp slt i32 %.reass1480.us, 0
  br i1 %i.zk, label %.loopexit.us, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.zl = load i32, ptr %11, align 4, !tbaa !61   ; 2 uses
  %i.zm = srem i32 %.reass1480.us, %i.zl
  %i.zn = sdiv exact i32 %.reass1480.us, %i.zl    ; 2 uses
  %.not370.us = icmp eq i32 %i.zm, 0
  %.not371.us = icmp slt i32 %i.zn, %i.ae
  %or.cond1721 = select i1 %.not370.us, i1 %.not371.us, i1 false
  br i1 %or.cond1721, label %.preheader.us, label %.loopexit.us

.preheader.us:                                    ; preds = %bb.y
  %i.zo = load i32, ptr %12, align 4, !tbaa !61   ; 3 uses
  %i.zp = icmp sgt i32 %i.zo, 0
  br i1 %i.zp, label %.lr.ph.us1487, label %.loopexit.us

bb.z:                                             ; preds = %.lr.ph.us1487, %bb.ac
  %indvars.iv1549 = phi i64 [ 0, %.lr.ph.us1487 ], [ %indvars.iv.next1550, %bb.ac ] ; 3 uses
  %.211473.us = phi <8 x float> [ %.201475.us, %.lr.ph.us1487 ], [ %.22.us, %bb.ac ] ; 3 uses
  %i.zq = trunc i64 %indvars.iv1549 to i32
  %i.zr = mul i32 %i.abb, %i.zq
  %.reass.us1486 = add i32 %i.zr, %invariant.op.us1488 ; 3 uses
  %i.zs = icmp slt i32 %.reass.us1486, 0
  br i1 %i.zs, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.zt = load i32, ptr %15, align 4, !tbaa !61   ; 2 uses
  %i.zu = srem i32 %.reass.us1486, %i.zt
  %i.zv = sdiv exact i32 %.reass.us1486, %i.zt    ; 2 uses
  %.not372.us = icmp eq i32 %i.zu, 0
  %.not373.us = icmp slt i32 %i.zv, %i.ad
  %or.cond1722 = select i1 %.not372.us, i1 %.not373.us, i1 false
  br i1 %or.cond1722, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.zw = trunc i64 %indvars.iv1549 to i32
  %i.zx = add i32 %i.abd, %i.zw
  %i.zy = shl nsw i32 %i.zx, 3
  %i.zz = zext nneg i32 %i.zy to i64
  %i.aaa = getelementptr inbounds nuw [2 x i8], ptr %.33321482.us, i64 %i.zz
  %i.aab = load i32, ptr %i.n, align 4, !tbaa !54, !noalias !762
  %i.aac = load ptr, ptr %4, align 8, !tbaa !20, !noalias !762
  %i.aad = load i64, ptr %i.w, align 8, !tbaa !21, !noalias !762
  %i.aae = mul i64 %i.aad, %indvars.iv1555
  %i.aaf = load i64, ptr %i.x, align 8, !tbaa !55, !noalias !762 ; 2 uses
  %i.aag = mul i64 %i.aae, %i.aaf
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aac, i64 %i.aag
  %i.aai = sext i32 %i.aab to i64
  %i.aaj = mul nsw i64 %i.aai, %i.abe
  %i.aak = mul i64 %i.aaj, %i.aaf
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aah, i64 %i.aak
  %i.aam = sext i32 %i.zv to i64
  %i.aan = getelementptr inbounds [2 x i8], ptr %i.aal, i64 %i.aam
  %i.aao = load i16, ptr %i.aan, align 2, !tbaa !89
  %i.aap = zext i16 %i.aao to i32
  %i.aaq = shl nuw i32 %i.aap, 16
  %i.aar = insertelement <8 x i32> poison, i32 %i.aaq, i64 0
  %i.aas = bitcast <8 x i32> %i.aar to <8 x float>
  %i.aat = shufflevector <8 x float> %i.aas, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aau = load <8 x i16>, ptr %i.aaa, align 16, !tbaa !82 ; 2 uses
  %i.aav = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aau, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aaw = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.aau, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.aax = shufflevector <8 x i16> %i.aav, <8 x i16> %i.aaw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aay = bitcast <16 x i16> %i.aax to <8 x float>
  %i.aaz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aat, <8 x float> nofpclass(nan inf) %i.aay, <8 x float> nofpclass(nan inf) %.211473.us)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %.22.us = phi nsz <8 x float> [ %.211473.us, %bb.z ], [ %i.aaz, %bb.ab ], [ %.211473.us, %bb.aa ] ; 2 uses
  %indvars.iv.next1550 = add nuw nsw i64 %indvars.iv1549, 1 ; 2 uses
  %exitcond1553.not = icmp eq i64 %indvars.iv.next1550, %wide.trip.count1552
  br i1 %exitcond1553.not, label %.loopexit.us, label %bb.z, !llvm.loop !750

.loopexit.us:                                     ; preds = %bb.ac, %.preheader.us, %bb.y, %bb.x
  %.23.us = phi nsz <8 x float> [ %.201475.us, %bb.x ], [ %.201475.us, %bb.y ], [ %.201475.us, %.preheader.us ], [ %.22.us, %bb.ac ] ; 3 uses
  %i.aba = add nuw nsw i32 %.03211476.us, 1       ; 2 uses
  %exitcond1554.not = icmp eq i32 %i.aba, %i.zb
  br i1 %exitcond1554.not, label %._crit_edge.us1490, label %bb.x, !llvm.loop !751

.lr.ph.us1487:                                    ; preds = %.preheader.us
  %i.abb = load i32, ptr %13, align 4, !tbaa !61
  %i.abc = load i32, ptr %14, align 4, !tbaa !61
  %invariant.op.us1488 = sub i32 %.neg1305, %i.abc
  %i.abd = mul nuw nsw i32 %i.zo, %.03211476.us
  %i.abe = sext i32 %i.zn to i64
  %wide.trip.count1552 = zext nneg i32 %i.zo to i64
  br label %bb.z

._crit_edge.us1490:                               ; preds = %.loopexit.us
  %i.abf = getelementptr inbounds [2 x i8], ptr %.33321482.us, i64 %i.zf
  %indvars.iv.next1556 = add nuw nsw i64 %indvars.iv1555, 1 ; 2 uses
  %i.abg = trunc nuw i64 %indvars.iv.next1556 to i32
  %i.abh = icmp sgt i32 %i.ac, %i.abg
  br i1 %i.abh, label %.preheader1324.us, label %._crit_edge1484, !llvm.loop !752

._crit_edge1484:                                  ; preds = %._crit_edge.us1490, %.preheader1324.lr.ph, %.preheader1328
  %.19.lcssa = phi <8 x float> [ %.14.lcssa, %.preheader1328 ], [ %.14.lcssa, %.preheader1324.lr.ph ], [ %.23.us, %._crit_edge.us1490 ]
  %i.abi = fadd fast <8 x float> %.71280.lcssa, %.71293.lcssa
  %i.abj = fadd fast <8 x float> %i.abi, %.131268.lcssa
  %i.abk = fadd fast <8 x float> %i.abj, %.19.lcssa ; 10 uses
  %i.abl = load i32, ptr %17, align 4, !tbaa !61
  switch i32 %i.abl, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.ad
    i32 2, label %.noexc547
    i32 3, label %.noexc549
    i32 4, label %.noexc550
    i32 5, label %.noexc551
    i32 6, label %.noexc554
  ]

bb.ad:                                            ; preds = %._crit_edge1484
  %i.abm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.abk, <8 x float> zeroinitializer)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc547:                                        ; preds = %._crit_edge1484
  %i.abn = load ptr, ptr %18, align 8, !tbaa !20
  %i.abo = load float, ptr %i.abn, align 4, !tbaa !39
  %i.abp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.abk)
  %i.abq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.abk)
  %i.abr = insertelement <8 x float> poison, float %i.abo, i64 0
  %i.abs = shufflevector <8 x float> %i.abr, <8 x float> poison, <8 x i32> zeroinitializer
  %i.abt = fmul fast <8 x float> %i.abs, %i.abq
  %i.abu = fadd fast <8 x float> %i.abt, %i.abp
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc549:                                        ; preds = %._crit_edge1484
  %i.abv = load ptr, ptr %18, align 8, !tbaa !20  ; 2 uses
  %i.abw = load float, ptr %i.abv, align 4, !tbaa !39
  %i.abx = insertelement <8 x float> poison, float %i.abw, i64 0
  %i.aby = shufflevector <8 x float> %i.abx, <8 x float> poison, <8 x i32> zeroinitializer
  %i.abz = getelementptr inbounds nuw i8, ptr %i.abv, i64 4
  %i.aca = load float, ptr %i.abz, align 4, !tbaa !39
  %i.acb = insertelement <8 x float> poison, float %i.aca, i64 0
  %i.acc = shufflevector <8 x float> %i.acb, <8 x float> poison, <8 x i32> zeroinitializer
  %i.acd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.abk, <8 x float> nofpclass(nan inf) %i.aby)
  %i.ace = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.acd, <8 x float> nofpclass(nan inf) %i.acc)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc550:                                        ; preds = %._crit_edge1484
  %i.acf = fneg fast <8 x float> %i.abk
  %i.acg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.acf, <8 x float> splat (float f0x42B0C0A5))
  %i.ach = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.acg, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.aci = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ach, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.acj = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.aci, i32 1) ; 2 uses
  %i.ack = fcmp fast ogt <8 x float> %i.acj, %i.aci
  %i.acl = select <8 x i1> %i.ack, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.acm = fsub fast <8 x float> %i.acj, %i.acl   ; 2 uses
  %i.acn = fneg fast <8 x float> %i.acm           ; 2 uses
  %i.aco = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.acn, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.ach)
  %i.acp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.acn, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.aco) ; 8 uses
  %i.acq = fmul fast <8 x float> %i.acp, %i.acp
  %i.acr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.acp, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.acs = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.acr, <8 x float> nofpclass(nan inf) %i.acp, <8 x float> splat (float f0x3C088908))
  %i.act = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.acs, <8 x float> nofpclass(nan inf) %i.acp, <8 x float> splat (float f0x3D2AA9C1))
  %i.acu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.act, <8 x float> nofpclass(nan inf) %i.acp, <8 x float> splat (float f0x3E2AAAAA))
  %i.acv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.acu, <8 x float> nofpclass(nan inf) %i.acp, <8 x float> splat (float 5.000000e-01))
  %i.acw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.acv, <8 x float> nofpclass(nan inf) %i.acq, <8 x float> nofpclass(nan inf) %i.acp)
  %i.acx = fadd fast <8 x float> %i.acw, splat (float 1.000000e+00)
  %i.acy = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.acm)
  %i.acz = shl <8 x i32> %i.acy, splat (i32 23)
  %i.ada = add <8 x i32> %i.acz, splat (i32 1065353216)
  %i.adb = bitcast <8 x i32> %i.ada to <8 x float>
  %i.adc = fmul fast <8 x float> %i.acx, %i.adb
  %i.add = fadd fast <8 x float> %i.adc, splat (float 1.000000e+00)
  %i.ade = fdiv fast <8 x float> splat (float 1.000000e+00), %i.add
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc551:                                        ; preds = %._crit_edge1484
  %i.adf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.abk, <8 x float> splat (float f0x42B0C0A5))
  %i.adg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.adf, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.adh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.adg, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.adi = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.adh, i32 1) ; 2 uses
  %i.adj = fcmp fast ogt <8 x float> %i.adi, %i.adh
  %i.adk = select <8 x i1> %i.adj, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.adl = fsub fast <8 x float> %i.adi, %i.adk   ; 2 uses
  %i.adm = fneg fast <8 x float> %i.adl           ; 2 uses
  %i.adn = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.adm, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.adg)
  %i.ado = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.adm, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.adn) ; 8 uses
  %i.adp = fmul fast <8 x float> %i.ado, %i.ado
  %i.adq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ado, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.adr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.adq, <8 x float> nofpclass(nan inf) %i.ado, <8 x float> splat (float f0x3C088908))
  %i.ads = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.adr, <8 x float> nofpclass(nan inf) %i.ado, <8 x float> splat (float f0x3D2AA9C1))
  %i.adt = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ads, <8 x float> nofpclass(nan inf) %i.ado, <8 x float> splat (float f0x3E2AAAAA))
  %i.adu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.adt, <8 x float> nofpclass(nan inf) %i.ado, <8 x float> splat (float 5.000000e-01))
  %i.adv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.adu, <8 x float> nofpclass(nan inf) %i.adp, <8 x float> nofpclass(nan inf) %i.ado)
  %i.adw = fadd fast <8 x float> %i.adv, splat (float 1.000000e+00)
  %i.adx = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.adl)
  %i.ady = shl <8 x i32> %i.adx, splat (i32 23)
  %i.adz = add <8 x i32> %i.ady, splat (i32 1065353216)
  %i.aea = bitcast <8 x i32> %i.adz to <8 x float>
  %i.aeb = fmul fast <8 x float> %i.adw, %i.aea
  %i.aec = fadd fast <8 x float> %i.aeb, splat (float 1.000000e+00) ; 2 uses
  %i.aed = fcmp fast ole <8 x float> %i.aec, zeroinitializer
  %i.aee = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.aec, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.aef = bitcast <8 x float> %i.aee to <8 x i32>
  %i.aeg = bitcast <8 x float> %i.aee to <8 x i32>
  %i.aeh = and <8 x i32> %i.aeg, splat (i32 -2139095041)
  %i.aei = or disjoint <8 x i32> %i.aeh, splat (i32 1056964608)
  %i.aej = bitcast <8 x i32> %i.aei to <8 x float> ; 3 uses
  %i.aek = lshr <8 x i32> %i.aef, splat (i32 23)
  %i.ael = add nsw <8 x i32> %i.aek, splat (i32 -127)
  %i.aem = sitofp fast <8 x i32> %i.ael to <8 x float> ; 2 uses
  %i.aen = fadd fast <8 x float> %i.aem, splat (float 1.000000e+00)
  %i.aeo = fcmp fast olt <8 x float> %i.aej, splat (float f0x3F3504F3) ; 2 uses
  %i.aep = select <8 x i1> %i.aeo, <8 x float> %i.aej, <8 x float> zeroinitializer
  %i.aeq = fadd fast <8 x float> %i.aej, splat (float -1.000000e+00)
  %i.aer = select fast <8 x i1> %i.aeo, <8 x float> %i.aem, <8 x float> %i.aen ; 2 uses
  %i.aes = fadd fast <8 x float> %i.aeq, %i.aep   ; 12 uses
  %i.aet = fmul fast <8 x float> %i.aes, %i.aes   ; 2 uses
  %i.aeu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aes, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.aev = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aeu, <8 x float> nofpclass(nan inf) %i.aes, <8 x float> splat (float f0x3DEF251A))
  %i.aew = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aev, <8 x float> nofpclass(nan inf) %i.aes, <8 x float> splat (float f0xBDFE5D4F))
  %i.aex = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aew, <8 x float> nofpclass(nan inf) %i.aes, <8 x float> splat (float f0x3E11E9BF))
  %i.aey = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aex, <8 x float> nofpclass(nan inf) %i.aes, <8 x float> splat (float f0xBE2AAE50))
  %i.aez = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aey, <8 x float> nofpclass(nan inf) %i.aes, <8 x float> splat (float f0x3E4CCEAC))
  %i.afa = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aez, <8 x float> nofpclass(nan inf) %i.aes, <8 x float> splat (float f0xBE7FFFFC))
  %i.afb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.afa, <8 x float> nofpclass(nan inf) %i.aes, <8 x float> splat (float f0x3EAAAAAA))
  %i.afc = fmul fast <8 x float> %i.aet, %i.aes
  %i.afd = fmul fast <8 x float> %i.afc, %i.afb
  %i.afe = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aer, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.afd)
  %i.aff = fneg fast <8 x float> %i.aet
  %i.afg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.aff, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.afe)
  %i.afh = fadd fast <8 x float> %i.afg, %i.aes
  %i.afi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aer, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.afh)
  %.neg = fmul fast <8 x float> %i.afi, splat (float -2.000000e+00)
  %i.afj = select fast <8 x i1> %i.aed, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg
  %i.afk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.afj, <8 x float> splat (float f0x42B0C0A5))
  %i.afl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.afk, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.afm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.afl, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
end_hunk_7
