Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/slice_x86_avx512?download=true
inline.NumInlined: 110
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK4ncnn16Slice_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
  %stride.check3553 = icmp slt i32 %i.ic, 0
  %n.vec3559 = and i64 %i.js, 2147483644          ; 5 uses
  %i.lx = trunc nuw nsw i64 %n.vec3559 to i32
  %i.ly = shl nuw nsw i64 %n.vec3559, 5
  %i.lz = shl nuw nsw i64 %n.vec3559, 4           ; 2 uses
  %cmp.n3576 = icmp eq i64 %n.vec3559, %i.js
  %min.iters.check3421 = icmp ult i32 %i.de, 4
  %stride.check3427 = icmp slt i32 %i.ic, 0
  %min.iters.check3457 = icmp ult i32 %i.de, 16
  %i.ma = and i64 %i.js, 12
  %n.vec3459 = and i64 %i.js, 2147483632          ; 6 uses
  %i.mb = trunc nuw nsw i64 %n.vec3459 to i32
  %i.mc = shl nuw nsw i64 %n.vec3459, 5
  %i.md = shl nuw nsw i64 %n.vec3459, 2           ; 8 uses
  %cmp.n3482 = icmp eq i64 %n.vec3459, %i.js
  %min.epilog.iters.check3486 = icmp eq i64 %i.ma, 0
  %n.vec3489 = and i64 %i.js, 2147483644          ; 5 uses
  %i.me = trunc nuw nsw i64 %n.vec3489 to i32
  %i.mf = shl nuw nsw i64 %n.vec3489, 5
  %i.mg = shl nuw nsw i64 %n.vec3489, 2           ; 8 uses
  %cmp.n3512 = icmp eq i64 %n.vec3489, %i.js
  %min.iters.check3280 = icmp ult i32 %i.de, 4
  %stride.check3281 = icmp slt i32 %i.ii, 0
  %min.iters.check3294 = icmp ult i32 %i.de, 16
  %i.mh = and i64 %i.js, 12
  %n.vec3296 = and i64 %i.js, 2147483632          ; 6 uses
  %i.mi = trunc nuw nsw i64 %n.vec3296 to i32
  %i.mj = shl nuw nsw i64 %n.vec3296, 4
  %i.mk = shl nuw nsw i64 %n.vec3296, 2           ; 4 uses
  %cmp.n3308 = icmp eq i64 %n.vec3296, %i.js
  %min.epilog.iters.check3312 = icmp eq i64 %i.mh, 0
  %n.vec3315 = and i64 %i.js, 2147483644          ; 5 uses
  %i.ml = trunc nuw nsw i64 %n.vec3315 to i32
  %i.mm = shl nuw nsw i64 %n.vec3315, 4
  %i.mn = shl nuw nsw i64 %n.vec3315, 2           ; 4 uses
  %cmp.n3330 = icmp eq i64 %n.vec3315, %i.js
  br label %bb.an

bb.an:                                            ; preds = %.lr.ph2707, %bb.av
  %i.mo = phi ptr [ %i.hz, %.lr.ph2707 ], [ %i.amh, %bb.av ] ; 2 uses
  %i.mp = phi ptr [ %i.hy, %.lr.ph2707 ], [ %i.ami, %bb.av ]
  %.011552705 = phi i64 [ 0, %.lr.ph2707 ], [ %i.amj, %bb.av ] ; 2 uses
  %.011562704 = phi ptr [ %i.ia, %.lr.ph2707 ], [ %.131169, %bb.av ] ; 4 uses
  %i.mq = getelementptr inbounds nuw [72 x i8], ptr %i.mo, i64 %.011552705 ; 28 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 24 ; 2 uses
  %i.ms = load i32, ptr %i.mr, align 8            ; 5 uses
  %i.mt = icmp eq i32 %i.ms, 16                   ; 3 uses
  %or.cond1333 = select i1 %i.ib, i1 %i.mt, i1 false
  br i1 %or.cond1333, label %.preheader2585, label %.loopexit2586

.preheader2585:                                   ; preds = %bb.an
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mq, i64 48
  %i.mv = load i32, ptr %i.mu, align 8, !tbaa !52 ; 3 uses
  %i.mw = icmp sgt i32 %i.mv, 0
  br i1 %i.mw, label %.lr.ph2612, label %.thread2543

.lr.ph2612:                                       ; preds = %.preheader2585
  %i.mx = load ptr, ptr %i.mq, align 8, !tbaa !19
  %i.my = getelementptr inbounds nuw i8, ptr %i.mq, i64 44
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !43
  %i.na = sext i32 %i.mz to i64
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mq, i64 16
  %i.nc = load i64, ptr %i.nb, align 8, !tbaa !25
  %factor.op.mul = mul i64 %i.nc, %i.na
  br i1 %i.ie, label %.lr.ph2608.us.preheader, label %.lr.ph2612.split.preheader

.lr.ph2612.split.preheader:                       ; preds = %.lr.ph2612
  %i.nd = add nsw i32 %i.mv, -1
  %i.ne = zext nneg i32 %i.nd to i64
  %i.nf = shl nuw nsw i64 %i.ne, 2
  %i.ng = add nuw nsw i64 %i.nf, 4
  %i.nh = mul i64 %i.ng, %i.ig
  %scevgep = getelementptr i8, ptr %.011562704, i64 %i.nh
  br label %.thread2543

.lr.ph2608.us.preheader:                          ; preds = %.lr.ph2612
  %wide.trip.count = zext nneg i32 %i.mv to i64
  br label %.lr.ph2608.us

.lr.ph2608.us:                                    ; preds = %.lr.ph2608.us.preheader, %._crit_edge2609.us
  %indvars.iv = phi i64 [ 0, %.lr.ph2608.us.preheader ], [ %indvars.iv.next, %._crit_edge2609.us ] ; 2 uses
  %.111572610.us = phi ptr [ %.011562704, %.lr.ph2608.us.preheader ], [ %i.ph, %._crit_edge2609.us ] ; 3 uses
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %.111572610.us, i64 %i.id
  %.reass.us = mul i64 %factor.op.mul, %indvars.iv
  %i.nj = getelementptr inbounds nuw i8, ptr %i.mx, i64 %.reass.us
  br label %bb.ao

bb.ao:                                            ; preds = %.lr.ph2608.us, %bb.ao
  %.011502606.us = phi i32 [ 0, %.lr.ph2608.us ], [ %i.pg, %bb.ao ]
  %.011512605.us = phi ptr [ %i.nj, %.lr.ph2608.us ], [ %i.pf, %bb.ao ] ; 17 uses
  %.011522604.us = phi ptr [ %i.ni, %.lr.ph2608.us ], [ %i.pe, %bb.ao ] ; 9 uses
  %.011532603.us = phi ptr [ %.111572610.us, %.lr.ph2608.us ], [ %i.pd, %bb.ao ] ; 9 uses
  %i.nk = load float, ptr %.011532603.us, align 4, !tbaa !233
  store float %i.nk, ptr %.011512605.us, align 4, !tbaa !233
  %i.nl = getelementptr inbounds nuw i8, ptr %.011532603.us, i64 4
  %i.nm = load float, ptr %i.nl, align 4, !tbaa !233
  %i.nn = getelementptr inbounds nuw i8, ptr %.011512605.us, i64 4
  store float %i.nm, ptr %i.nn, align 4, !tbaa !233
  %i.no = getelementptr inbounds nuw i8, ptr %.011532603.us, i64 8
  %i.np = load float, ptr %i.no, align 4, !tbaa !233
  %i.nq = getelementptr inbounds nuw i8, ptr %.011512605.us, i64 8
  store float %i.np, ptr %i.nq, align 4, !tbaa !233
  %i.nr = getelementptr inbounds nuw i8, ptr %.011532603.us, i64 12
  %i.ns = load float, ptr %i.nr, align 4, !tbaa !233
  %i.nt = getelementptr inbounds nuw i8, ptr %.011512605.us, i64 12
  store float %i.ns, ptr %i.nt, align 4, !tbaa !233
  %i.nu = getelementptr inbounds nuw i8, ptr %.011532603.us, i64 16
  %i.nv = load float, ptr %i.nu, align 4, !tbaa !233
  %i.nw = getelementptr inbounds nuw i8, ptr %.011512605.us, i64 16
  store float %i.nv, ptr %i.nw, align 4, !tbaa !233
  %i.nx = getelementptr inbounds nuw i8, ptr %.011532603.us, i64 20
  %i.ny = load float, ptr %i.nx, align 4, !tbaa !233
  %i.nz = getelementptr inbounds nuw i8, ptr %.011512605.us, i64 20
  store float %i.ny, ptr %i.nz, align 4, !tbaa !233
  %i.oa = getelementptr inbounds nuw i8, ptr %.011532603.us, i64 24
  %i.ob = load float, ptr %i.oa, align 4, !tbaa !233
  %i.oc = getelementptr inbounds nuw i8, ptr %.011512605.us, i64 24
  store float %i.ob, ptr %i.oc, align 4, !tbaa !233
  %i.od = getelementptr inbounds nuw i8, ptr %.011532603.us, i64 28
  %i.oe = load float, ptr %i.od, align 4, !tbaa !233
  %i.of = getelementptr inbounds nuw i8, ptr %.011512605.us, i64 28
  store float %i.oe, ptr %i.of, align 4, !tbaa !233
  %i.og = load float, ptr %.011522604.us, align 4, !tbaa !233
  %i.oh = getelementptr inbounds nuw i8, ptr %.011512605.us, i64 32
  store float %i.og, ptr %i.oh, align 4, !tbaa !233
  %i.oi = getelementptr inbounds nuw i8, ptr %.011522604.us, i64 4
  %i.oj = load float, ptr %i.oi, align 4, !tbaa !233
  %i.ok = getelementptr inbounds nuw i8, ptr %.011512605.us, i64 36
  store float %i.oj, ptr %i.ok, align 4, !tbaa !233
  %i.ol = getelementptr inbounds nuw i8, ptr %.011522604.us, i64 8
  %i.om = load float, ptr %i.ol, align 4, !tbaa !233
  %i.on = getelementptr inbounds nuw i8, ptr %.011512605.us, i64 40
  store float %i.om, ptr %i.on, align 4, !tbaa !233
  %i.oo = getelementptr inbounds nuw i8, ptr %.011522604.us, i64 12
  %i.op = load float, ptr %i.oo, align 4, !tbaa !233
  %i.oq = getelementptr inbounds nuw i8, ptr %.011512605.us, i64 44
  store float %i.op, ptr %i.oq, align 4, !tbaa !233
  %i.or = getelementptr inbounds nuw i8, ptr %.011522604.us, i64 16
  %i.os = load float, ptr %i.or, align 4, !tbaa !233
  %i.ot = getelementptr inbounds nuw i8, ptr %.011512605.us, i64 48
  store float %i.os, ptr %i.ot, align 4, !tbaa !233
  %i.ou = getelementptr inbounds nuw i8, ptr %.011522604.us, i64 20
  %i.ov = load float, ptr %i.ou, align 4, !tbaa !233
  %i.ow = getelementptr inbounds nuw i8, ptr %.011512605.us, i64 52
  store float %i.ov, ptr %i.ow, align 4, !tbaa !233
  %i.ox = getelementptr inbounds nuw i8, ptr %.011522604.us, i64 24
  %i.oy = load float, ptr %i.ox, align 4, !tbaa !233
  %i.oz = getelementptr inbounds nuw i8, ptr %.011512605.us, i64 56
  store float %i.oy, ptr %i.oz, align 4, !tbaa !233
  %i.pa = getelementptr inbounds nuw i8, ptr %.011522604.us, i64 28
  %i.pb = load float, ptr %i.pa, align 4, !tbaa !233
  %i.pc = getelementptr inbounds nuw i8, ptr %.011512605.us, i64 60
  store float %i.pb, ptr %i.pc, align 4, !tbaa !233
  %i.pd = getelementptr inbounds nuw i8, ptr %.011532603.us, i64 32
  %i.pe = getelementptr inbounds nuw i8, ptr %.011522604.us, i64 32
  %i.pf = getelementptr inbounds nuw i8, ptr %.011512605.us, i64 64
  %i.pg = add nuw nsw i32 %.011502606.us, 1       ; 2 uses
  %exitcond2930.not = icmp eq i32 %i.pg, %i.de
  br i1 %exitcond2930.not, label %._crit_edge2609.us, label %bb.ao, !llvm.loop !68

._crit_edge2609.us:                               ; preds = %bb.ao
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %.111572610.us, i64 %i.ig ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond2932.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond2932.not, label %.loopexit2586, label %.lr.ph2608.us, !llvm.loop !69

.loopexit2586:                                    ; preds = %._crit_edge2609.us, %bb.an
  %.21158 = phi ptr [ %.011562704, %bb.an ], [ %i.ph, %._crit_edge2609.us ] ; 13 uses
  br i1 %i.ih, label %bb.ap, label %.loopexit2584

bb.ap:                                            ; preds = %.loopexit2586
  br i1 %i.mt, label %.preheader2583, label %.thread2532

.preheader2583:                                   ; preds = %bb.ap
  %i.pi = getelementptr inbounds nuw i8, ptr %i.mq, i64 48
  %i.pj = load i32, ptr %i.pi, align 8, !tbaa !52 ; 3 uses
  %i.pk = icmp sgt i32 %i.pj, 0
  br i1 %i.pk, label %.lr.ph2625, label %.thread2543

.lr.ph2625:                                       ; preds = %.preheader2583
  %i.pl = load ptr, ptr %i.mq, align 8, !tbaa !19 ; 3 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.mq, i64 44
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !43
  %i.po = sext i32 %i.pn to i64                   ; 3 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.mq, i64 16
  %i.pq = load i64, ptr %i.pp, align 8, !tbaa !25 ; 3 uses
  %factor.op.mul2627 = mul i64 %i.pq, %i.po
  br i1 %i.ie, label %.lr.ph2621.us.preheader, label %.lr.ph2625.split.preheader

.lr.ph2625.split.preheader:                       ; preds = %.lr.ph2625
  %i.pr = add nsw i32 %i.pj, -1
  %i.ps = zext nneg i32 %i.pr to i64
  %i.pt = shl nuw nsw i64 %i.ps, 2
  %i.pu = add nuw nsw i64 %i.pt, 4
  %i.pv = mul i64 %i.pu, %i.ig
  %scevgep2933 = getelementptr i8, ptr %.21158, i64 %i.pv
  br label %.thread2543

.lr.ph2621.us.preheader:                          ; preds = %.lr.ph2625
  %wide.trip.count2938 = zext nneg i32 %i.pj to i64 ; 2 uses
  %6 = mul i64 %i.pq, %i.po
  %i.pw = getelementptr i8, ptr %.21158, i64 %i.lh
  %scevgep3981 = getelementptr i8, ptr %i.pw, i64 16
  %i.px = add nsw i64 %wide.trip.count2938, -1    ; 2 uses
  %i.py = mul i64 %i.li, %i.px                    ; 4 uses
  %scevgep3982 = getelementptr i8, ptr %scevgep3981, i64 %i.py
  %i.pz = getelementptr i8, ptr %.21158, i64 %i.lh
  %i.qa = getelementptr i8, ptr %i.pz, i64 %i.lj
  %scevgep3983 = getelementptr i8, ptr %i.qa, i64 16
  %scevgep3984 = getelementptr i8, ptr %scevgep3983, i64 %i.py
  %scevgep3985 = getelementptr i8, ptr %.21158, i64 %i.lj
  %i.qb = getelementptr i8, ptr %.21158, i64 %i.lh
  %i.qc = getelementptr i8, ptr %i.qb, i64 %i.lk
  %scevgep3986 = getelementptr i8, ptr %i.qc, i64 16
  %scevgep3987 = getelementptr i8, ptr %scevgep3986, i64 %i.py
  %scevgep3988 = getelementptr i8, ptr %.21158, i64 %i.lk
  %i.qd = getelementptr i8, ptr %.21158, i64 %i.lh
  %i.qe = getelementptr i8, ptr %i.qd, i64 %i.ll
  %scevgep3989 = getelementptr i8, ptr %i.qe, i64 16
  %scevgep3990 = getelementptr i8, ptr %scevgep3989, i64 %i.py
  %scevgep3991 = getelementptr i8, ptr %.21158, i64 %i.ll
  %i.qf = getelementptr i8, ptr %i.pl, i64 %i.lm
  %scevgep3992 = getelementptr i8, ptr %i.qf, i64 64
  %i.qg = mul i64 %i.pq, %i.px
  %i.qh = mul i64 %i.qg, %i.po
  %scevgep3993 = getelementptr i8, ptr %scevgep3992, i64 %i.qh
  %i.qi = insertelement <4 x ptr> poison, ptr %i.pl, i64 0
  %i.qj = shufflevector <4 x ptr> %i.qi, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.qk = insertelement <4 x ptr> poison, ptr %scevgep3990, i64 0
  %i.ql = insertelement <4 x ptr> %i.qk, ptr %scevgep3987, i64 1
  %i.qm = insertelement <4 x ptr> %i.ql, ptr %scevgep3984, i64 2
  %i.qn = insertelement <4 x ptr> %i.qm, ptr %scevgep3982, i64 3
  %i.qo = insertelement <4 x ptr> poison, ptr %scevgep3991, i64 0
  %i.qp = insertelement <4 x ptr> %i.qo, ptr %scevgep3988, i64 1
  %i.qq = insertelement <4 x ptr> %i.qp, ptr %scevgep3985, i64 2
  %i.qr = insertelement <4 x ptr> %i.qq, ptr %.21158, i64 3
  %i.qs = insertelement <4 x ptr> poison, ptr %scevgep3993, i64 0
  %i.qt = shufflevector <4 x ptr> %i.qs, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.qu = icmp ult <4 x ptr> %i.qj, %i.qn
  %i.qv = icmp ult <4 x ptr> %i.qr, %i.qt
  %stride.check4000 = icmp slt i64 %6, 0
  %i.qw = and <4 x i1> %i.qu, %i.qv
  %i.qx = bitcast <4 x i1> %i.qw to i4
  %i.qy = icmp ne i4 %i.qx, 0
  %op.rdx5001 = or i1 %i.qy, %stride.check4001
  %op.rdx5002 = or i1 %op.rdx5001, %stride.check4000
  br label %.lr.ph2621.us

.lr.ph2621.us:                                    ; preds = %.lr.ph2621.us.preheader, %._crit_edge2622.us
  %indvars.iv2935 = phi i64 [ 0, %.lr.ph2621.us.preheader ], [ %indvars.iv.next2936, %._crit_edge2622.us ] ; 2 uses
  %.311592623.us = phi ptr [ %.21158, %.lr.ph2621.us.preheader ], [ %i.th, %._crit_edge2622.us ] ; 8 uses
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %.311592623.us, i64 %i.ij ; 4 uses
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %.311592623.us, i64 %i.id ; 4 uses
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr %.311592623.us, i64 %i.il ; 4 uses
  %.reass.us2628 = mul i64 %factor.op.mul2627, %indvars.iv2935
  %i.rc = getelementptr inbounds nuw i8, ptr %i.pl, i64 %.reass.us2628 ; 4 uses
  br i1 %min.iters.check3995, label %scalar.ph3994.preheader, label %vector.memcheck3996

vector.memcheck3996:                              ; preds = %.lr.ph2621.us
  br i1 %op.rdx5002, label %scalar.ph3994.preheader, label %vector.ph4014

vector.ph4014:                                    ; preds = %vector.memcheck3996
  %i.rd = getelementptr i8, ptr %i.rc, i64 %i.lo
  %i.re = getelementptr i8, ptr %i.rb, i64 %i.lp
  %i.rf = getelementptr i8, ptr %i.ra, i64 %i.lp
  %i.rg = getelementptr i8, ptr %i.qz, i64 %i.lp
  %i.rh = getelementptr i8, ptr %.311592623.us, i64 %i.lp
  br label %vector.body4016

vector.body4016:                                  ; preds = %vector.body4016, %vector.ph4014
  %index4017 = phi i64 [ 0, %vector.ph4014 ], [ %index.next4059, %vector.body4016 ] ; 2 uses
  %pointer.phi4018 = phi ptr [ %i.rc, %vector.ph4014 ], [ %ptr.ind4060, %vector.body4016 ] ; 2 uses
  %vector.gep4019 = getelementptr i8, ptr %pointer.phi4018, <8 x i64> <i64 0, i64 64, i64 128, i64 192, i64 256, i64 320, i64 384, i64 448> ; 16 uses
  %i.ri = shl i64 %index4017, 4                   ; 4 uses
  %next.gep4020 = getelementptr i8, ptr %i.rb, i64 %i.ri
  %next.gep4021 = getelementptr i8, ptr %i.ra, i64 %i.ri
  %next.gep4022 = getelementptr i8, ptr %i.qz, i64 %i.ri
  %next.gep4023 = getelementptr i8, ptr %.311592623.us, i64 %i.ri
  %wide.vec4024 = load <32 x float>, ptr %next.gep4023, align 4, !tbaa !233, !alias.scope !234 ; 4 uses
  %strided.vec4025 = shufflevector <32 x float> %wide.vec4024, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec4026 = shufflevector <32 x float> %wide.vec4024, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec4027 = shufflevector <32 x float> %wide.vec4024, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec4028 = shufflevector <32 x float> %wide.vec4024, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec4025, <8 x ptr> align 4 %vector.gep4019, <8 x i1> splat (i1 true)), !tbaa !233, !alias.scope !235, !noalias !236
  %wide.gep4029 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep4019, i64 4
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec4026, <8 x ptr> align 4 %wide.gep4029, <8 x i1> splat (i1 true)), !tbaa !233, !alias.scope !235, !noalias !236
  %wide.gep4030 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep4019, i64 8
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec4027, <8 x ptr> align 4 %wide.gep4030, <8 x i1> splat (i1 true)), !tbaa !233, !alias.scope !235, !noalias !236
  %wide.gep4031 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep4019, i64 12
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec4028, <8 x ptr> align 4 %wide.gep4031, <8 x i1> splat (i1 true)), !tbaa !233, !alias.scope !235, !noalias !236
  %wide.vec4032 = load <32 x float>, ptr %next.gep4022, align 4, !tbaa !233, !alias.scope !237 ; 4 uses
  %strided.vec4033 = shufflevector <32 x float> %wide.vec4032, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec4034 = shufflevector <32 x float> %wide.vec4032, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec4035 = shufflevector <32 x float> %wide.vec4032, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec4036 = shufflevector <32 x float> %wide.vec4032, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %wide.gep4037 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep4019, i64 16
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec4033, <8 x ptr> align 4 %wide.gep4037, <8 x i1> splat (i1 true)), !tbaa !233, !alias.scope !235, !noalias !236
  %wide.gep4038 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep4019, i64 20
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec4034, <8 x ptr> align 4 %wide.gep4038, <8 x i1> splat (i1 true)), !tbaa !233, !alias.scope !235, !noalias !236
  %wide.gep4039 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep4019, i64 24
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec4035, <8 x ptr> align 4 %wide.gep4039, <8 x i1> splat (i1 true)), !tbaa !233, !alias.scope !235, !noalias !236
  %wide.gep4040 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep4019, i64 28
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec4036, <8 x ptr> align 4 %wide.gep4040, <8 x i1> splat (i1 true)), !tbaa !233, !alias.scope !235, !noalias !236
  %wide.vec4041 = load <32 x float>, ptr %next.gep4021, align 4, !tbaa !233, !alias.scope !238 ; 4 uses
  %strided.vec4042 = shufflevector <32 x float> %wide.vec4041, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec4043 = shufflevector <32 x float> %wide.vec4041, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec4044 = shufflevector <32 x float> %wide.vec4041, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec4045 = shufflevector <32 x float> %wide.vec4041, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %wide.gep4046 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep4019, i64 32
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec4042, <8 x ptr> align 4 %wide.gep4046, <8 x i1> splat (i1 true)), !tbaa !233, !alias.scope !235, !noalias !236
  %wide.gep4047 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep4019, i64 36
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec4043, <8 x ptr> align 4 %wide.gep4047, <8 x i1> splat (i1 true)), !tbaa !233, !alias.scope !235, !noalias !236
  %wide.gep4048 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep4019, i64 40
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec4044, <8 x ptr> align 4 %wide.gep4048, <8 x i1> splat (i1 true)), !tbaa !233, !alias.scope !235, !noalias !236
  %wide.gep4049 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep4019, i64 44
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec4045, <8 x ptr> align 4 %wide.gep4049, <8 x i1> splat (i1 true)), !tbaa !233, !alias.scope !235, !noalias !236
  %wide.vec4050 = load <32 x float>, ptr %next.gep4020, align 4, !tbaa !233, !alias.scope !239 ; 4 uses
  %strided.vec4051 = shufflevector <32 x float> %wide.vec4050, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec4052 = shufflevector <32 x float> %wide.vec4050, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec4053 = shufflevector <32 x float> %wide.vec4050, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec4054 = shufflevector <32 x float> %wide.vec4050, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %wide.gep4055 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep4019, i64 48
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec4051, <8 x ptr> align 4 %wide.gep4055, <8 x i1> splat (i1 true)), !tbaa !233, !alias.scope !235, !noalias !236
  %wide.gep4056 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep4019, i64 52
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec4052, <8 x ptr> align 4 %wide.gep4056, <8 x i1> splat (i1 true)), !tbaa !233, !alias.scope !235, !noalias !236
  %wide.gep4057 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep4019, i64 56
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec4053, <8 x ptr> align 4 %wide.gep4057, <8 x i1> splat (i1 true)), !tbaa !233, !alias.scope !235, !noalias !236
  %wide.gep4058 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep4019, i64 60
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec4054, <8 x ptr> align 4 %wide.gep4058, <8 x i1> splat (i1 true)), !tbaa !233, !alias.scope !235, !noalias !236
  %index.next4059 = add nuw i64 %index4017, 8     ; 2 uses
  %ptr.ind4060 = getelementptr i8, ptr %pointer.phi4018, i64 512
  %i.rj = icmp eq i64 %index.next4059, %n.vec4015
  br i1 %i.rj, label %middle.block4061, label %vector.body4016, !llvm.loop !76

middle.block4061:                                 ; preds = %vector.body4016
  br i1 %cmp.n4062, label %._crit_edge2622.us, label %scalar.ph3994.preheader

scalar.ph3994.preheader:                          ; preds = %vector.memcheck3996, %.lr.ph2621.us, %middle.block4061
  %.011432619.us.ph = phi i32 [ 0, %vector.memcheck3996 ], [ 0, %.lr.ph2621.us ], [ %i.ln, %middle.block4061 ]
  %.011442618.us.ph = phi ptr [ %i.rc, %vector.memcheck3996 ], [ %i.rc, %.lr.ph2621.us ], [ %i.rd, %middle.block4061 ]
  %.011452617.us.ph = phi ptr [ %i.rb, %vector.memcheck3996 ], [ %i.rb, %.lr.ph2621.us ], [ %i.re, %middle.block4061 ]
  %.011462616.us.ph = phi ptr [ %i.ra, %vector.memcheck3996 ], [ %i.ra, %.lr.ph2621.us ], [ %i.rf, %middle.block4061 ]
  %.011472615.us.ph = phi ptr [ %i.qz, %vector.memcheck3996 ], [ %i.qz, %.lr.ph2621.us ], [ %i.rg, %middle.block4061 ]
  %.011482614.us.ph = phi ptr [ %.311592623.us, %vector.memcheck3996 ], [ %.311592623.us, %.lr.ph2621.us ], [ %i.rh, %middle.block4061 ]
  br label %scalar.ph3994

scalar.ph3994:                                    ; preds = %scalar.ph3994.preheader, %scalar.ph3994
  %.011432619.us = phi i32 [ %i.tg, %scalar.ph3994 ], [ %.011432619.us.ph, %scalar.ph3994.preheader ]
  %.011442618.us = phi ptr [ %i.tf, %scalar.ph3994 ], [ %.011442618.us.ph, %scalar.ph3994.preheader ] ; 17 uses
  %.011452617.us = phi ptr [ %i.te, %scalar.ph3994 ], [ %.011452617.us.ph, %scalar.ph3994.preheader ] ; 5 uses
  %.011462616.us = phi ptr [ %i.td, %scalar.ph3994 ], [ %.011462616.us.ph, %scalar.ph3994.preheader ] ; 5 uses
  %.011472615.us = phi ptr [ %i.tc, %scalar.ph3994 ], [ %.011472615.us.ph, %scalar.ph3994.preheader ] ; 5 uses
  %.011482614.us = phi ptr [ %i.tb, %scalar.ph3994 ], [ %.011482614.us.ph, %scalar.ph3994.preheader ] ; 5 uses
  %i.rk = load float, ptr %.011482614.us, align 4, !tbaa !233
  store float %i.rk, ptr %.011442618.us, align 4, !tbaa !233
  %i.rl = getelementptr inbounds nuw i8, ptr %.011482614.us, i64 4
  %i.rm = load float, ptr %i.rl, align 4, !tbaa !233
  %i.rn = getelementptr inbounds nuw i8, ptr %.011442618.us, i64 4
  store float %i.rm, ptr %i.rn, align 4, !tbaa !233
  %i.ro = getelementptr inbounds nuw i8, ptr %.011482614.us, i64 8
  %i.rp = load float, ptr %i.ro, align 4, !tbaa !233
  %i.rq = getelementptr inbounds nuw i8, ptr %.011442618.us, i64 8
  store float %i.rp, ptr %i.rq, align 4, !tbaa !233
  %i.rr = getelementptr inbounds nuw i8, ptr %.011482614.us, i64 12
  %i.rs = load float, ptr %i.rr, align 4, !tbaa !233
  %i.rt = getelementptr inbounds nuw i8, ptr %.011442618.us, i64 12
  store float %i.rs, ptr %i.rt, align 4, !tbaa !233
  %i.ru = load float, ptr %.011472615.us, align 4, !tbaa !233
  %i.rv = getelementptr inbounds nuw i8, ptr %.011442618.us, i64 16
  store float %i.ru, ptr %i.rv, align 4, !tbaa !233
  %i.rw = getelementptr inbounds nuw i8, ptr %.011472615.us, i64 4
  %i.rx = load float, ptr %i.rw, align 4, !tbaa !233
  %i.ry = getelementptr inbounds nuw i8, ptr %.011442618.us, i64 20
  store float %i.rx, ptr %i.ry, align 4, !tbaa !233
  %i.rz = getelementptr inbounds nuw i8, ptr %.011472615.us, i64 8
  %i.sa = load float, ptr %i.rz, align 4, !tbaa !233
  %i.sb = getelementptr inbounds nuw i8, ptr %.011442618.us, i64 24
  store float %i.sa, ptr %i.sb, align 4, !tbaa !233
  %i.sc = getelementptr inbounds nuw i8, ptr %.011472615.us, i64 12
  %i.sd = load float, ptr %i.sc, align 4, !tbaa !233
  %i.se = getelementptr inbounds nuw i8, ptr %.011442618.us, i64 28
  store float %i.sd, ptr %i.se, align 4, !tbaa !233
  %i.sf = load float, ptr %.011462616.us, align 4, !tbaa !233
  %i.sg = getelementptr inbounds nuw i8, ptr %.011442618.us, i64 32
  store float %i.sf, ptr %i.sg, align 4, !tbaa !233
  %i.sh = getelementptr inbounds nuw i8, ptr %.011462616.us, i64 4
  %i.si = load float, ptr %i.sh, align 4, !tbaa !233
  %i.sj = getelementptr inbounds nuw i8, ptr %.011442618.us, i64 36
  store float %i.si, ptr %i.sj, align 4, !tbaa !233
  %i.sk = getelementptr inbounds nuw i8, ptr %.011462616.us, i64 8
  %i.sl = load float, ptr %i.sk, align 4, !tbaa !233
  %i.sm = getelementptr inbounds nuw i8, ptr %.011442618.us, i64 40
  store float %i.sl, ptr %i.sm, align 4, !tbaa !233
  %i.sn = getelementptr inbounds nuw i8, ptr %.011462616.us, i64 12
  %i.so = load float, ptr %i.sn, align 4, !tbaa !233
  %i.sp = getelementptr inbounds nuw i8, ptr %.011442618.us, i64 44
  store float %i.so, ptr %i.sp, align 4, !tbaa !233
  %i.sq = load float, ptr %.011452617.us, align 4, !tbaa !233
  %i.sr = getelementptr inbounds nuw i8, ptr %.011442618.us, i64 48
  store float %i.sq, ptr %i.sr, align 4, !tbaa !233
  %i.ss = getelementptr inbounds nuw i8, ptr %.011452617.us, i64 4
  %i.st = load float, ptr %i.ss, align 4, !tbaa !233
  %i.su = getelementptr inbounds nuw i8, ptr %.011442618.us, i64 52
  store float %i.st, ptr %i.su, align 4, !tbaa !233
  %i.sv = getelementptr inbounds nuw i8, ptr %.011452617.us, i64 8
  %i.sw = load float, ptr %i.sv, align 4, !tbaa !233
  %i.sx = getelementptr inbounds nuw i8, ptr %.011442618.us, i64 56
  store float %i.sw, ptr %i.sx, align 4, !tbaa !233
  %i.sy = getelementptr inbounds nuw i8, ptr %.011452617.us, i64 12
  %i.sz = load float, ptr %i.sy, align 4, !tbaa !233
  %i.ta = getelementptr inbounds nuw i8, ptr %.011442618.us, i64 60
  store float %i.sz, ptr %i.ta, align 4, !tbaa !233
  %i.tb = getelementptr inbounds nuw i8, ptr %.011482614.us, i64 16
  %i.tc = getelementptr inbounds nuw i8, ptr %.011472615.us, i64 16
  %i.td = getelementptr inbounds nuw i8, ptr %.011462616.us, i64 16
  %i.te = getelementptr inbounds nuw i8, ptr %.011452617.us, i64 16
  %i.tf = getelementptr inbounds nuw i8, ptr %.011442618.us, i64 64
  %i.tg = add nuw nsw i32 %.011432619.us, 1       ; 2 uses
  %exitcond2934.not = icmp eq i32 %i.tg, %i.de
  br i1 %exitcond2934.not, label %._crit_edge2622.us, label %scalar.ph3994, !llvm.loop !77

._crit_edge2622.us:                               ; preds = %scalar.ph3994, %middle.block4061
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %.311592623.us, i64 %i.ig ; 2 uses
  %indvars.iv.next2936 = add nuw nsw i64 %indvars.iv2935, 1 ; 2 uses
  %exitcond2939.not = icmp eq i64 %indvars.iv.next2936, %wide.trip.count2938
  br i1 %exitcond2939.not, label %.loopexit2584, label %.lr.ph2621.us, !llvm.loop !78

.loopexit2584:                                    ; preds = %._crit_edge2622.us, %.loopexit2586
  %.41160 = phi ptr [ %.21158, %.loopexit2586 ], [ %i.th, %._crit_edge2622.us ] ; 37 uses
  br i1 %i.im, label %bb.aq, label %.loopexit2582

bb.aq:                                            ; preds = %.loopexit2584
  br i1 %i.mt, label %.preheader2581, label %.thread2537

.preheader2581:                                   ; preds = %bb.aq
  %i.ti = getelementptr inbounds nuw i8, ptr %i.mq, i64 48
  %i.tj = load i32, ptr %i.ti, align 8, !tbaa !52 ; 3 uses
  %i.tk = icmp sgt i32 %i.tj, 0
  br i1 %i.tk, label %.lr.ph2653, label %.thread2543

.lr.ph2653:                                       ; preds = %.preheader2581
  %i.tl = load ptr, ptr %i.mq, align 8, !tbaa !19 ; 3 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.mq, i64 44
  %i.tn = load i32, ptr %i.tm, align 4, !tbaa !43
  %i.to = sext i32 %i.tn to i64                   ; 3 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.mq, i64 16
  %i.tq = load i64, ptr %i.tp, align 8, !tbaa !25 ; 3 uses
  %factor.op.mul2655 = mul i64 %i.tq, %i.to
  br i1 %i.ie, label %.lr.ph2649.us.preheader, label %.lr.ph2653.split.preheader

.lr.ph2653.split.preheader:                       ; preds = %.lr.ph2653
  %i.tr = add nsw i32 %i.tj, -1
  %i.ts = zext nneg i32 %i.tr to i64
  %i.tt = shl nuw nsw i64 %i.ts, 2
  %i.tu = add nuw nsw i64 %i.tt, 4
  %i.tv = mul i64 %i.tu, %i.ig
  %scevgep2940 = getelementptr i8, ptr %.41160, i64 %i.tv
  br label %.thread2543

.lr.ph2649.us.preheader:                          ; preds = %.lr.ph2653
  %wide.trip.count2945 = zext nneg i32 %i.tj to i64 ; 2 uses
  %7 = mul i64 %i.tq, %i.to
  %i.tw = getelementptr i8, ptr %.41160, i64 %i.kn
  %scevgep3696 = getelementptr i8, ptr %i.tw, i64 4
  %i.tx = add nsw i64 %wide.trip.count2945, -1    ; 2 uses
  %i.ty = mul i64 %i.ko, %i.tx                    ; 16 uses
  %scevgep3697 = getelementptr i8, ptr %scevgep3696, i64 %i.ty
  %i.tz = getelementptr i8, ptr %.41160, i64 %i.kp
  %i.ua = getelementptr i8, ptr %i.tz, i64 %i.kn
  %scevgep3698 = getelementptr i8, ptr %i.ua, i64 4
  %scevgep3699 = getelementptr i8, ptr %scevgep3698, i64 %i.ty
  %scevgep3700 = getelementptr i8, ptr %.41160, i64 %i.kp
  %i.ub = getelementptr i8, ptr %.41160, i64 %i.kq
  %i.uc = getelementptr i8, ptr %i.ub, i64 %i.kn
  %scevgep3701 = getelementptr i8, ptr %i.uc, i64 4
  %scevgep3702 = getelementptr i8, ptr %scevgep3701, i64 %i.ty
  %scevgep3703 = getelementptr i8, ptr %.41160, i64 %i.kq
  %i.ud = getelementptr i8, ptr %.41160, i64 %i.kr
  %i.ue = getelementptr i8, ptr %i.ud, i64 %i.kn
  %scevgep3704 = getelementptr i8, ptr %i.ue, i64 4
  %scevgep3705 = getelementptr i8, ptr %scevgep3704, i64 %i.ty
  %scevgep3706 = getelementptr i8, ptr %.41160, i64 %i.kr
  %i.uf = getelementptr i8, ptr %.41160, i64 %i.ks
  %i.ug = getelementptr i8, ptr %i.uf, i64 %i.kn
  %scevgep3707 = getelementptr i8, ptr %i.ug, i64 4
  %scevgep3708 = getelementptr i8, ptr %scevgep3707, i64 %i.ty
  %scevgep3709 = getelementptr i8, ptr %.41160, i64 %i.ks
  %i.uh = getelementptr i8, ptr %.41160, i64 %i.kt
  %i.ui = getelementptr i8, ptr %i.uh, i64 %i.kn
  %scevgep3710 = getelementptr i8, ptr %i.ui, i64 4
  %scevgep3711 = getelementptr i8, ptr %scevgep3710, i64 %i.ty
  %scevgep3712 = getelementptr i8, ptr %.41160, i64 %i.kt
  %i.uj = getelementptr i8, ptr %.41160, i64 %i.ku
  %i.uk = getelementptr i8, ptr %i.uj, i64 %i.kn
  %scevgep3713 = getelementptr i8, ptr %i.uk, i64 4
  %scevgep3714 = getelementptr i8, ptr %scevgep3713, i64 %i.ty
  %scevgep3715 = getelementptr i8, ptr %.41160, i64 %i.ku
  %i.ul = getelementptr i8, ptr %.41160, i64 %i.kv
  %i.um = getelementptr i8, ptr %i.ul, i64 %i.kn
  %scevgep3716 = getelementptr i8, ptr %i.um, i64 4
  %scevgep3717 = getelementptr i8, ptr %scevgep3716, i64 %i.ty
  %scevgep3718 = getelementptr i8, ptr %.41160, i64 %i.kv
  %i.un = getelementptr i8, ptr %.41160, i64 %i.kw
  %i.uo = getelementptr i8, ptr %i.un, i64 %i.kn
  %scevgep3719 = getelementptr i8, ptr %i.uo, i64 4
  %scevgep3720 = getelementptr i8, ptr %scevgep3719, i64 %i.ty
  %scevgep3721 = getelementptr i8, ptr %.41160, i64 %i.kw
  %i.up = getelementptr i8, ptr %.41160, i64 %i.kx
  %i.uq = getelementptr i8, ptr %i.up, i64 %i.kn
  %scevgep3722 = getelementptr i8, ptr %i.uq, i64 4
  %scevgep3723 = getelementptr i8, ptr %scevgep3722, i64 %i.ty
  %scevgep3724 = getelementptr i8, ptr %.41160, i64 %i.kx
  %i.ur = getelementptr i8, ptr %.41160, i64 %i.ky
  %i.us = getelementptr i8, ptr %i.ur, i64 %i.kn
  %scevgep3725 = getelementptr i8, ptr %i.us, i64 4
  %scevgep3726 = getelementptr i8, ptr %scevgep3725, i64 %i.ty
  %scevgep3727 = getelementptr i8, ptr %.41160, i64 %i.ky
  %i.ut = getelementptr i8, ptr %.41160, i64 %i.kz
  %i.uu = getelementptr i8, ptr %i.ut, i64 %i.kn
  %scevgep3728 = getelementptr i8, ptr %i.uu, i64 4
  %scevgep3729 = getelementptr i8, ptr %scevgep3728, i64 %i.ty
  %scevgep3730 = getelementptr i8, ptr %.41160, i64 %i.kz
  %i.uv = getelementptr i8, ptr %.41160, i64 %i.la
  %i.uw = getelementptr i8, ptr %i.uv, i64 %i.kn
  %scevgep3731 = getelementptr i8, ptr %i.uw, i64 4
  %scevgep3732 = getelementptr i8, ptr %scevgep3731, i64 %i.ty
  %scevgep3733 = getelementptr i8, ptr %.41160, i64 %i.la
  %i.ux = getelementptr i8, ptr %.41160, i64 %i.lb
  %i.uy = getelementptr i8, ptr %i.ux, i64 %i.kn
  %scevgep3734 = getelementptr i8, ptr %i.uy, i64 4
  %scevgep3735 = getelementptr i8, ptr %scevgep3734, i64 %i.ty
  %scevgep3736 = getelementptr i8, ptr %.41160, i64 %i.lb
  %i.uz = getelementptr i8, ptr %.41160, i64 %i.lc
  %i.va = getelementptr i8, ptr %i.uz, i64 %i.kn
  %scevgep3737 = getelementptr i8, ptr %i.va, i64 4
  %scevgep3738 = getelementptr i8, ptr %scevgep3737, i64 %i.ty
  %scevgep3739 = getelementptr i8, ptr %.41160, i64 %i.lc
  %i.vb = getelementptr i8, ptr %.41160, i64 %i.ld
  %i.vc = getelementptr i8, ptr %i.vb, i64 %i.kn
  %scevgep3740 = getelementptr i8, ptr %i.vc, i64 4
  %scevgep3741 = getelementptr i8, ptr %scevgep3740, i64 %i.ty
  %scevgep3742 = getelementptr i8, ptr %.41160, i64 %i.ld
  %i.vd = getelementptr i8, ptr %i.tl, i64 %i.le
  %scevgep3743 = getelementptr i8, ptr %i.vd, i64 64
  %i.ve = mul i64 %i.tq, %i.tx
  %i.vf = mul i64 %i.ve, %i.to
  %scevgep3744 = getelementptr i8, ptr %scevgep3743, i64 %i.vf
  %i.vg = insertelement <16 x ptr> poison, ptr %i.tl, i64 0
  %i.vh = shufflevector <16 x ptr> %i.vg, <16 x ptr> poison, <16 x i32> zeroinitializer
  %i.vi = insertelement <16 x ptr> poison, ptr %scevgep3741, i64 0
  %i.vj = insertelement <16 x ptr> %i.vi, ptr %scevgep3738, i64 1
  %i.vk = insertelement <16 x ptr> %i.vj, ptr %scevgep3735, i64 2
  %i.vl = insertelement <16 x ptr> %i.vk, ptr %scevgep3732, i64 3
  %i.vm = insertelement <16 x ptr> %i.vl, ptr %scevgep3729, i64 4
  %i.vn = insertelement <16 x ptr> %i.vm, ptr %scevgep3726, i64 5
  %i.vo = insertelement <16 x ptr> %i.vn, ptr %scevgep3723, i64 6
  %i.vp = insertelement <16 x ptr> %i.vo, ptr %scevgep3720, i64 7
  %i.vq = insertelement <16 x ptr> %i.vp, ptr %scevgep3717, i64 8
  %i.vr = insertelement <16 x ptr> %i.vq, ptr %scevgep3714, i64 9
  %i.vs = insertelement <16 x ptr> %i.vr, ptr %scevgep3711, i64 10
  %i.vt = insertelement <16 x ptr> %i.vs, ptr %scevgep3708, i64 11
  %i.vu = insertelement <16 x ptr> %i.vt, ptr %scevgep3705, i64 12
  %i.vv = insertelement <16 x ptr> %i.vu, ptr %scevgep3702, i64 13
  %i.vw = insertelement <16 x ptr> %i.vv, ptr %scevgep3699, i64 14
  %i.vx = insertelement <16 x ptr> %i.vw, ptr %scevgep3697, i64 15
  %i.vy = insertelement <16 x ptr> poison, ptr %scevgep3742, i64 0
  %i.vz = insertelement <16 x ptr> %i.vy, ptr %scevgep3739, i64 1
  %i.wa = insertelement <16 x ptr> %i.vz, ptr %scevgep3736, i64 2
  %i.wb = insertelement <16 x ptr> %i.wa, ptr %scevgep3733, i64 3
  %i.wc = insertelement <16 x ptr> %i.wb, ptr %scevgep3730, i64 4
  %i.wd = insertelement <16 x ptr> %i.wc, ptr %scevgep3727, i64 5
  %i.we = insertelement <16 x ptr> %i.wd, ptr %scevgep3724, i64 6
  %i.wf = insertelement <16 x ptr> %i.we, ptr %scevgep3721, i64 7
  %i.wg = insertelement <16 x ptr> %i.wf, ptr %scevgep3718, i64 8
  %i.wh = insertelement <16 x ptr> %i.wg, ptr %scevgep3715, i64 9
  %i.wi = insertelement <16 x ptr> %i.wh, ptr %scevgep3712, i64 10
  %i.wj = insertelement <16 x ptr> %i.wi, ptr %scevgep3709, i64 11
  %i.wk = insertelement <16 x ptr> %i.wj, ptr %scevgep3706, i64 12
  %i.wl = insertelement <16 x ptr> %i.wk, ptr %scevgep3703, i64 13
  %i.wm = insertelement <16 x ptr> %i.wl, ptr %scevgep3700, i64 14
  %i.wn = insertelement <16 x ptr> %i.wm, ptr %.41160, i64 15
  %i.wo = insertelement <16 x ptr> poison, ptr %scevgep3744, i64 0
  %i.wp = shufflevector <16 x ptr> %i.wo, <16 x ptr> poison, <16 x i32> zeroinitializer
  %i.wq = icmp ult <16 x ptr> %i.vh, %i.vx
  %i.wr = icmp ult <16 x ptr> %i.wn, %i.wp
  %stride.check3751 = icmp slt i64 %7, 0
  %i.ws = and <16 x i1> %i.wq, %i.wr
  %i.wt = bitcast <16 x i1> %i.ws to i16
  %i.wu = icmp ne i16 %i.wt, 0
  %op.rdx4999 = or i1 %i.wu, %stride.check3752
  %op.rdx5000 = or i1 %op.rdx4999, %stride.check3751
  br label %iter.check3869

iter.check3869:                                   ; preds = %.lr.ph2649.us.preheader, %._crit_edge2650.us
  %indvars.iv2942 = phi i64 [ 0, %.lr.ph2649.us.preheader ], [ %indvars.iv.next2943, %._crit_edge2650.us ] ; 2 uses
  %.511612651.us = phi ptr [ %.41160, %.lr.ph2649.us.preheader ], [ %i.aau, %._crit_edge2650.us ] ; 22 uses
  %i.wv = getelementptr inbounds nuw [4 x i8], ptr %.511612651.us, i64 %i.in ; 6 uses
  %i.ww = getelementptr inbounds nuw [4 x i8], ptr %.511612651.us, i64 %i.ip ; 6 uses
  %i.wx = getelementptr inbounds nuw [4 x i8], ptr %.511612651.us, i64 %i.ir ; 6 uses
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %.511612651.us, i64 %i.ij ; 6 uses
  %i.wz = getelementptr inbounds nuw [4 x i8], ptr %.511612651.us, i64 %i.it ; 6 uses
  %i.xa = getelementptr inbounds nuw [4 x i8], ptr %.511612651.us, i64 %i.iv ; 6 uses
  %i.xb = getelementptr inbounds nuw [4 x i8], ptr %.511612651.us, i64 %i.ix ; 6 uses
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr %.511612651.us, i64 %i.id ; 6 uses
  %i.xd = getelementptr inbounds nuw [4 x i8], ptr %.511612651.us, i64 %i.iz ; 6 uses
  %i.xe = getelementptr inbounds nuw [4 x i8], ptr %.511612651.us, i64 %i.jb ; 6 uses
  %i.xf = getelementptr inbounds nuw [4 x i8], ptr %.511612651.us, i64 %i.jd ; 6 uses
  %i.xg = getelementptr inbounds nuw [4 x i8], ptr %.511612651.us, i64 %i.il ; 6 uses
  %i.xh = getelementptr inbounds nuw [4 x i8], ptr %.511612651.us, i64 %i.jf ; 6 uses
  %i.xi = getelementptr inbounds nuw [4 x i8], ptr %.511612651.us, i64 %i.jh ; 6 uses
  %i.xj = getelementptr inbounds nuw [4 x i8], ptr %.511612651.us, i64 %i.jj ; 6 uses
  %.reass.us2656 = mul i64 %factor.op.mul2655, %indvars.iv2942
  %i.xk = getelementptr inbounds nuw i8, ptr %i.tl, i64 %.reass.us2656 ; 6 uses
  br i1 %min.iters.check3746, label %vec.epilog.scalar.ph3871.preheader, label %vector.memcheck3747

vector.memcheck3747:                              ; preds = %iter.check3869
  br i1 %op.rdx5000, label %vec.epilog.scalar.ph3871.preheader, label %vector.main.loop.iter.check3813

vector.main.loop.iter.check3813:                  ; preds = %vector.memcheck3747
  br i1 %min.iters.check3814, label %vec.epilog.ph3873, label %vector.ph3815

vector.ph3815:                                    ; preds = %vector.main.loop.iter.check3813
  %i.xl = getelementptr i8, ptr %i.xk, i64 %i.ls  ; 2 uses
  %i.xm = getelementptr i8, ptr %i.xj, i64 %i.lt
  %i.xn = getelementptr i8, ptr %i.xi, i64 %i.lt
  %i.xo = getelementptr i8, ptr %i.xh, i64 %i.lt
  %i.xp = getelementptr i8, ptr %i.xg, i64 %i.lt
  %i.xq = getelementptr i8, ptr %i.xf, i64 %i.lt
  %i.xr = getelementptr i8, ptr %i.xe, i64 %i.lt
  %i.xs = getelementptr i8, ptr %i.xd, i64 %i.lt
  %i.xt = getelementptr i8, ptr %i.xc, i64 %i.lt
  %i.xu = getelementptr i8, ptr %i.xb, i64 %i.lt
  %i.xv = getelementptr i8, ptr %i.xa, i64 %i.lt
  %i.xw = getelementptr i8, ptr %i.wz, i64 %i.lt
  %i.xx = getelementptr i8, ptr %i.wy, i64 %i.lt
  %i.xy = getelementptr i8, ptr %i.wx, i64 %i.lt
  %i.xz = getelementptr i8, ptr %i.ww, i64 %i.lt
  %i.ya = getelementptr i8, ptr %i.wv, i64 %i.lt
  %i.yb = getelementptr i8, ptr %.511612651.us, i64 %i.lt
  br label %vector.body3817

vector.body3817:                                  ; preds = %vector.ph3815, %vector.body3817
  %index3818 = phi i64 [ 0, %vector.ph3815 ], [ %index.next3866, %vector.body3817 ] ; 2 uses
  %pointer.phi = phi ptr [ %i.xk, %vector.ph3815 ], [ %ptr.ind, %vector.body3817 ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi, <16 x i64> <i64 0, i64 64, i64 128, i64 192, i64 256, i64 320, i64 384, i64 448, i64 512, i64 576, i64 640, i64 704, i64 768, i64 832, i64 896, i64 960> ; 16 uses
  %i.yc = shl i64 %index3818, 2                   ; 16 uses
  %next.gep3819 = getelementptr i8, ptr %i.xj, i64 %i.yc
  %next.gep3820 = getelementptr i8, ptr %i.xi, i64 %i.yc
  %next.gep3821 = getelementptr i8, ptr %i.xh, i64 %i.yc
  %next.gep3822 = getelementptr i8, ptr %i.xg, i64 %i.yc
  %next.gep3823 = getelementptr i8, ptr %i.xf, i64 %i.yc
  %next.gep3824 = getelementptr i8, ptr %i.xe, i64 %i.yc
  %next.gep3825 = getelementptr i8, ptr %i.xd, i64 %i.yc
  %next.gep3826 = getelementptr i8, ptr %i.xc, i64 %i.yc
  %next.gep3827 = getelementptr i8, ptr %i.xb, i64 %i.yc
  %next.gep3828 = getelementptr i8, ptr %i.xa, i64 %i.yc
  %next.gep3829 = getelementptr i8, ptr %i.wz, i64 %i.yc
  %next.gep3830 = getelementptr i8, ptr %i.wy, i64 %i.yc
  %next.gep3831 = getelementptr i8, ptr %i.wx, i64 %i.yc
  %next.gep3832 = getelementptr i8, ptr %i.ww, i64 %i.yc
  %next.gep3833 = getelementptr i8, ptr %i.wv, i64 %i.yc
  %next.gep3834 = getelementptr i8, ptr %.511612651.us, i64 %i.yc
  %wide.load3835 = load <16 x float>, ptr %next.gep3834, align 4, !tbaa !233, !alias.scope !240
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load3835, <16 x ptr> align 4 %vector.gep, <16 x i1> splat (i1 true)), !tbaa !233, !alias.scope !241, !noalias !242
  %wide.load3836 = load <16 x float>, ptr %next.gep3833, align 4, !tbaa !233, !alias.scope !243
  %wide.gep3837 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep, i64 4
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load3836, <16 x ptr> align 4 %wide.gep3837, <16 x i1> splat (i1 true)), !tbaa !233, !alias.scope !241, !noalias !242
  %wide.load3838 = load <16 x float>, ptr %next.gep3832, align 4, !tbaa !233, !alias.scope !244
  %wide.gep3839 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep, i64 8
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load3838, <16 x ptr> align 4 %wide.gep3839, <16 x i1> splat (i1 true)), !tbaa !233, !alias.scope !241, !noalias !242
  %wide.load3840 = load <16 x float>, ptr %next.gep3831, align 4, !tbaa !233, !alias.scope !245
  %wide.gep3841 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep, i64 12
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load3840, <16 x ptr> align 4 %wide.gep3841, <16 x i1> splat (i1 true)), !tbaa !233, !alias.scope !241, !noalias !242
  %wide.load3842 = load <16 x float>, ptr %next.gep3830, align 4, !tbaa !233, !alias.scope !246
  %wide.gep3843 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep, i64 16
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load3842, <16 x ptr> align 4 %wide.gep3843, <16 x i1> splat (i1 true)), !tbaa !233, !alias.scope !241, !noalias !242
  %wide.load3844 = load <16 x float>, ptr %next.gep3829, align 4, !tbaa !233, !alias.scope !247
  %wide.gep3845 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep, i64 20
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load3844, <16 x ptr> align 4 %wide.gep3845, <16 x i1> splat (i1 true)), !tbaa !233, !alias.scope !241, !noalias !242
  %wide.load3846 = load <16 x float>, ptr %next.gep3828, align 4, !tbaa !233, !alias.scope !248
  %wide.gep3847 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep, i64 24
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load3846, <16 x ptr> align 4 %wide.gep3847, <16 x i1> splat (i1 true)), !tbaa !233, !alias.scope !241, !noalias !242
  %wide.load3848 = load <16 x float>, ptr %next.gep3827, align 4, !tbaa !233, !alias.scope !249
  %wide.gep3849 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep, i64 28
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load3848, <16 x ptr> align 4 %wide.gep3849, <16 x i1> splat (i1 true)), !tbaa !233, !alias.scope !241, !noalias !242
  %wide.load3850 = load <16 x float>, ptr %next.gep3826, align 4, !tbaa !233, !alias.scope !250
  %wide.gep3851 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep, i64 32
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load3850, <16 x ptr> align 4 %wide.gep3851, <16 x i1> splat (i1 true)), !tbaa !233, !alias.scope !241, !noalias !242
  %wide.load3852 = load <16 x float>, ptr %next.gep3825, align 4, !tbaa !233, !alias.scope !251
  %wide.gep3853 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep, i64 36
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load3852, <16 x ptr> align 4 %wide.gep3853, <16 x i1> splat (i1 true)), !tbaa !233, !alias.scope !241, !noalias !242
  %wide.load3854 = load <16 x float>, ptr %next.gep3824, align 4, !tbaa !233, !alias.scope !252
  %wide.gep3855 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep, i64 40
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load3854, <16 x ptr> align 4 %wide.gep3855, <16 x i1> splat (i1 true)), !tbaa !233, !alias.scope !241, !noalias !242
  %wide.load3856 = load <16 x float>, ptr %next.gep3823, align 4, !tbaa !233, !alias.scope !253
  %wide.gep3857 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep, i64 44
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load3856, <16 x ptr> align 4 %wide.gep3857, <16 x i1> splat (i1 true)), !tbaa !233, !alias.scope !241, !noalias !242
  %wide.load3858 = load <16 x float>, ptr %next.gep3822, align 4, !tbaa !233, !alias.scope !254
  %wide.gep3859 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep, i64 48
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load3858, <16 x ptr> align 4 %wide.gep3859, <16 x i1> splat (i1 true)), !tbaa !233, !alias.scope !241, !noalias !242
  %wide.load3860 = load <16 x float>, ptr %next.gep3821, align 4, !tbaa !233, !alias.scope !255
  %wide.gep3861 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep, i64 52
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load3860, <16 x ptr> align 4 %wide.gep3861, <16 x i1> splat (i1 true)), !tbaa !233, !alias.scope !241, !noalias !242
  %wide.load3862 = load <16 x float>, ptr %next.gep3820, align 4, !tbaa !233, !alias.scope !256
  %wide.gep3863 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep, i64 56
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load3862, <16 x ptr> align 4 %wide.gep3863, <16 x i1> splat (i1 true)), !tbaa !233, !alias.scope !241, !noalias !242
  %wide.load3864 = load <16 x float>, ptr %next.gep3819, align 4, !tbaa !233, !alias.scope !257
  %wide.gep3865 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep, i64 60
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load3864, <16 x ptr> align 4 %wide.gep3865, <16 x i1> splat (i1 true)), !tbaa !233, !alias.scope !241, !noalias !242
  %index.next3866 = add nuw i64 %index3818, 16    ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 1024
  %i.yd = icmp eq i64 %index.next3866, %n.vec3816
  br i1 %i.yd, label %middle.block3867, label %vector.body3817, !llvm.loop !97

middle.block3867:                                 ; preds = %vector.body3817
  br i1 %cmp.n3868, label %._crit_edge2650.us, label %vec.epilog.iter.check3870

vec.epilog.iter.check3870:                        ; preds = %middle.block3867
  br i1 %min.epilog.iters.check3872.not.not, label %vec.epilog.scalar.ph3871.preheader, label %vec.epilog.ph3873, !prof !258

vec.epilog.ph3873:                                ; preds = %vector.main.loop.iter.check3813, %vec.epilog.iter.check3870
  %vec.epilog.resume.val3874 = phi i64 [ %n.vec3816, %vec.epilog.iter.check3870 ], [ 0, %vector.main.loop.iter.check3813 ]
  %bc.resume.val3875 = phi ptr [ %i.xl, %vec.epilog.iter.check3870 ], [ %i.xk, %vector.main.loop.iter.check3813 ]
  %i.ye = getelementptr i8, ptr %i.xk, i64 %i.lv
  %i.yf = getelementptr i8, ptr %i.xj, i64 %i.lw
  %i.yg = getelementptr i8, ptr %i.xi, i64 %i.lw
  %i.yh = getelementptr i8, ptr %i.xh, i64 %i.lw
  %i.yi = getelementptr i8, ptr %i.xg, i64 %i.lw
  %i.yj = getelementptr i8, ptr %i.xf, i64 %i.lw
  %i.yk = getelementptr i8, ptr %i.xe, i64 %i.lw
  %i.yl = getelementptr i8, ptr %i.xd, i64 %i.lw
  %i.ym = getelementptr i8, ptr %i.xc, i64 %i.lw
  %i.yn = getelementptr i8, ptr %i.xb, i64 %i.lw
  %i.yo = getelementptr i8, ptr %i.xa, i64 %i.lw
  %i.yp = getelementptr i8, ptr %i.wz, i64 %i.lw
  %i.yq = getelementptr i8, ptr %i.wy, i64 %i.lw
  %i.yr = getelementptr i8, ptr %i.wx, i64 %i.lw
end_hunk_0
begin_hunk_1_@_ZNK4ncnn16Slice_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
  store float %i.zy, ptr %i.zz, align 4, !tbaa !233
  %i.aaa = getelementptr inbounds nuw i8, ptr %.011312640.us, i64 4
  %i.aab = load float, ptr %.011312640.us, align 4, !tbaa !233
  %i.aac = getelementptr inbounds nuw i8, ptr %.011252646.us, i64 40
  store float %i.aab, ptr %i.aac, align 4, !tbaa !233
  %i.aad = getelementptr inbounds nuw i8, ptr %.011302641.us, i64 4
  %i.aae = load float, ptr %.011302641.us, align 4, !tbaa !233
  %i.aaf = getelementptr inbounds nuw i8, ptr %.011252646.us, i64 44
  store float %i.aae, ptr %i.aaf, align 4, !tbaa !233
  %i.aag = getelementptr inbounds nuw i8, ptr %.011292642.us, i64 4
  %i.aah = load float, ptr %.011292642.us, align 4, !tbaa !233
  %i.aai = getelementptr inbounds nuw i8, ptr %.011252646.us, i64 48
  store float %i.aah, ptr %i.aai, align 4, !tbaa !233
  %i.aaj = getelementptr inbounds nuw i8, ptr %.011282643.us, i64 4
  %i.aak = load float, ptr %.011282643.us, align 4, !tbaa !233
  %i.aal = getelementptr inbounds nuw i8, ptr %.011252646.us, i64 52
  store float %i.aak, ptr %i.aal, align 4, !tbaa !233
  %i.aam = getelementptr inbounds nuw i8, ptr %.011272644.us, i64 4
  %i.aan = load float, ptr %.011272644.us, align 4, !tbaa !233
  %i.aao = getelementptr inbounds nuw i8, ptr %.011252646.us, i64 56
  store float %i.aan, ptr %i.aao, align 4, !tbaa !233
  %i.aap = getelementptr inbounds nuw i8, ptr %.011262645.us, i64 4
  %i.aaq = load float, ptr %.011262645.us, align 4, !tbaa !233
  %i.aar = getelementptr inbounds nuw i8, ptr %.011252646.us, i64 60
  store float %i.aaq, ptr %i.aar, align 4, !tbaa !233
  %i.aas = getelementptr inbounds nuw i8, ptr %.011252646.us, i64 64
  %i.aat = add nuw nsw i32 %.011242647.us, 1      ; 2 uses
  %exitcond2941.not = icmp eq i32 %i.aat, %i.de
  br i1 %exitcond2941.not, label %._crit_edge2650.us, label %vec.epilog.scalar.ph3871, !llvm.loop !99

._crit_edge2650.us:                               ; preds = %vec.epilog.scalar.ph3871, %vec.epilog.middle.block3930, %middle.block3867
  %i.aau = getelementptr inbounds nuw [4 x i8], ptr %.511612651.us, i64 %i.ig ; 2 uses
  %indvars.iv.next2943 = add nuw nsw i64 %indvars.iv2942, 1 ; 2 uses
  %exitcond2946.not = icmp eq i64 %indvars.iv.next2943, %wide.trip.count2945
  br i1 %exitcond2946.not, label %.loopexit2582, label %iter.check3869, !llvm.loop !100

.loopexit2582:                                    ; preds = %._crit_edge2650.us, %.loopexit2584
  %.61162 = phi ptr [ %.41160, %.loopexit2584 ], [ %i.aau, %._crit_edge2650.us ] ; 2 uses
  br i1 %i.ih, label %.thread2532, label %.loopexit2580

.thread2532:                                      ; preds = %bb.ap, %.loopexit2582
  %.611622534 = phi ptr [ %.61162, %.loopexit2582 ], [ %.21158, %bb.ap ] ; 7 uses
  %i.aav = phi i1 [ %i.im, %.loopexit2582 ], [ false, %bb.ap ] ; 3 uses
  %i.aaw = icmp eq i32 %i.ms, 8
  br i1 %i.aaw, label %.preheader2579, label %.loopexit2580

.preheader2579:                                   ; preds = %.thread2532
  %i.aax = getelementptr inbounds nuw i8, ptr %i.mq, i64 48
  %i.aay = load i32, ptr %i.aax, align 8, !tbaa !52 ; 2 uses
  %i.aaz = icmp sgt i32 %i.aay, 0
  br i1 %i.aaz, label %.lr.ph2667, label %.loopexit2580

.lr.ph2667:                                       ; preds = %.preheader2579
  %i.aba = load ptr, ptr %i.mq, align 8, !tbaa !19 ; 4 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %i.mq, i64 44
  %i.abc = load i32, ptr %i.abb, align 4, !tbaa !43
  %i.abd = sext i32 %i.abc to i64                 ; 2 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %i.mq, i64 16
  %i.abf = load i64, ptr %i.abe, align 8, !tbaa !25 ; 2 uses
  %factor.op.mul2669 = mul i64 %i.abf, %i.abd     ; 2 uses
  %wide.trip.count2951 = zext nneg i32 %i.aay to i64 ; 2 uses
  %i.abg = getelementptr i8, ptr %.611622534, i64 %i.kh
  %scevgep3540 = getelementptr i8, ptr %i.abg, i64 16
  %i.abh = add nsw i64 %wide.trip.count2951, -1   ; 2 uses
  %i.abi = mul i64 %i.ki, %i.abh                  ; 2 uses
  %scevgep3541 = getelementptr i8, ptr %scevgep3540, i64 %i.abi
  %i.abj = getelementptr i8, ptr %.611622534, i64 %i.kh
  %i.abk = getelementptr i8, ptr %i.abj, i64 %i.kj
  %scevgep3542 = getelementptr i8, ptr %i.abk, i64 16
  %scevgep3543 = getelementptr i8, ptr %scevgep3542, i64 %i.abi
  %scevgep3544 = getelementptr i8, ptr %.611622534, i64 %i.kj
  %i.abl = getelementptr i8, ptr %i.aba, i64 %i.kk
  %scevgep3545 = getelementptr i8, ptr %i.abl, i64 32
  %i.abm = mul i64 %i.abf, %i.abh
  %i.abn = mul i64 %i.abm, %i.abd
  %scevgep3546 = getelementptr i8, ptr %scevgep3545, i64 %i.abn ; 2 uses
  %bound03549 = icmp ult ptr %i.aba, %scevgep3543
  %bound13550 = icmp ult ptr %scevgep3544, %scevgep3546
  %found.conflict3551 = and i1 %bound03549, %bound13550
  %stride.check3552 = icmp slt i64 %factor.op.mul2669, 0
  %i.abo = or i1 %found.conflict3551, %stride.check3552
  %i.abp = or i1 %i.abo, %stride.check3553
  %bound03554 = icmp ult ptr %i.aba, %scevgep3541
  %bound13555 = icmp ult ptr %.611622534, %scevgep3546
  %found.conflict3556 = and i1 %bound03554, %bound13555
  %conflict.rdx3557 = or i1 %i.abp, %found.conflict3556
  br label %bb.ar

bb.ar:                                            ; preds = %.lr.ph2667, %._crit_edge2664
  %indvars.iv2948 = phi i64 [ 0, %.lr.ph2667 ], [ %indvars.iv.next2949, %._crit_edge2664 ] ; 2 uses
  %.711632665 = phi ptr [ %.611622534, %.lr.ph2667 ], [ %i.aby, %._crit_edge2664 ] ; 6 uses
  br i1 %i.ie, label %.lr.ph2663.preheader, label %._crit_edge2664

.lr.ph2663.preheader:                             ; preds = %bb.ar
  %.reass = mul i64 %factor.op.mul2669, %indvars.iv2948
  %i.abq = getelementptr inbounds nuw i8, ptr %i.aba, i64 %.reass ; 4 uses
  %i.abr = getelementptr inbounds nuw [4 x i8], ptr %.711632665, i64 %i.ij ; 4 uses
  br i1 %min.iters.check3547, label %.lr.ph2663.preheader5012, label %vector.memcheck3548

vector.memcheck3548:                              ; preds = %.lr.ph2663.preheader
  br i1 %conflict.rdx3557, label %.lr.ph2663.preheader5012, label %vector.ph3558

vector.ph3558:                                    ; preds = %vector.memcheck3548
  %i.abs = getelementptr i8, ptr %i.abq, i64 %i.ly
  %i.abt = getelementptr i8, ptr %i.abr, i64 %i.lz
  %i.abu = getelementptr i8, ptr %.711632665, i64 %i.lz
  br label %vector.body3560

vector.body3560:                                  ; preds = %vector.body3560, %vector.ph3558
  %index3561 = phi i64 [ 0, %vector.ph3558 ], [ %index.next3574, %vector.body3560 ] ; 3 uses
  %i.abv = shl i64 %index3561, 5
  %next.gep3562 = getelementptr i8, ptr %i.abq, i64 %i.abv
  %i.abw = shl i64 %index3561, 4                  ; 2 uses
  %next.gep3563 = getelementptr i8, ptr %i.abr, i64 %i.abw
  %next.gep3564 = getelementptr i8, ptr %.711632665, i64 %i.abw
  %wide.vec = load <16 x float>, ptr %next.gep3564, align 4, !tbaa !233, !alias.scope !259
  %wide.vec3568 = load <16 x float>, ptr %next.gep3563, align 4, !tbaa !233, !alias.scope !260
  %interleaved.vec3573 = shufflevector <16 x float> %wide.vec, <16 x float> %wide.vec3568, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 4, i32 5, i32 6, i32 7, i32 20, i32 21, i32 22, i32 23, i32 8, i32 9, i32 10, i32 11, i32 24, i32 25, i32 26, i32 27, i32 12, i32 13, i32 14, i32 15, i32 28, i32 29, i32 30, i32 31>
  store <32 x float> %interleaved.vec3573, ptr %next.gep3562, align 4, !tbaa !233, !alias.scope !261, !noalias !262
  %index.next3574 = add nuw i64 %index3561, 4     ; 2 uses
  %i.abx = icmp eq i64 %index.next3574, %n.vec3559
  br i1 %i.abx, label %middle.block3575, label %vector.body3560, !llvm.loop !105

middle.block3575:                                 ; preds = %vector.body3560
  br i1 %cmp.n3576, label %._crit_edge2664, label %.lr.ph2663.preheader5012

.lr.ph2663.preheader5012:                         ; preds = %vector.memcheck3548, %.lr.ph2663.preheader, %middle.block3575
  %.011192661.ph = phi i32 [ 0, %vector.memcheck3548 ], [ 0, %.lr.ph2663.preheader ], [ %i.lx, %middle.block3575 ]
  %.011202660.ph = phi ptr [ %i.abq, %vector.memcheck3548 ], [ %i.abq, %.lr.ph2663.preheader ], [ %i.abs, %middle.block3575 ]
  %.011212659.ph = phi ptr [ %i.abr, %vector.memcheck3548 ], [ %i.abr, %.lr.ph2663.preheader ], [ %i.abt, %middle.block3575 ]
  %.011222658.ph = phi ptr [ %.711632665, %vector.memcheck3548 ], [ %.711632665, %.lr.ph2663.preheader ], [ %i.abu, %middle.block3575 ]
  br label %.lr.ph2663

._crit_edge2664:                                  ; preds = %.lr.ph2663, %middle.block3575, %bb.ar
  %i.aby = getelementptr inbounds [4 x i8], ptr %.711632665, i64 %i.id ; 2 uses
  %indvars.iv.next2949 = add nuw nsw i64 %indvars.iv2948, 1 ; 2 uses
  %exitcond2952.not = icmp eq i64 %indvars.iv.next2949, %wide.trip.count2951
  br i1 %exitcond2952.not, label %.loopexit2580, label %bb.ar, !llvm.loop !106

.lr.ph2663:                                       ; preds = %.lr.ph2663.preheader5012, %.lr.ph2663
  %.011192661 = phi i32 [ %i.acx, %.lr.ph2663 ], [ %.011192661.ph, %.lr.ph2663.preheader5012 ]
  %.011202660 = phi ptr [ %i.acw, %.lr.ph2663 ], [ %.011202660.ph, %.lr.ph2663.preheader5012 ] ; 9 uses
  %.011212659 = phi ptr [ %i.acv, %.lr.ph2663 ], [ %.011212659.ph, %.lr.ph2663.preheader5012 ] ; 5 uses
  %.011222658 = phi ptr [ %i.acu, %.lr.ph2663 ], [ %.011222658.ph, %.lr.ph2663.preheader5012 ] ; 5 uses
  %i.abz = load float, ptr %.011222658, align 4, !tbaa !233
  store float %i.abz, ptr %.011202660, align 4, !tbaa !233
  %i.aca = getelementptr inbounds nuw i8, ptr %.011222658, i64 4
  %i.acb = load float, ptr %i.aca, align 4, !tbaa !233
  %i.acc = getelementptr inbounds nuw i8, ptr %.011202660, i64 4
  store float %i.acb, ptr %i.acc, align 4, !tbaa !233
  %i.acd = getelementptr inbounds nuw i8, ptr %.011222658, i64 8
  %i.ace = load float, ptr %i.acd, align 4, !tbaa !233
  %i.acf = getelementptr inbounds nuw i8, ptr %.011202660, i64 8
  store float %i.ace, ptr %i.acf, align 4, !tbaa !233
  %i.acg = getelementptr inbounds nuw i8, ptr %.011222658, i64 12
  %i.ach = load float, ptr %i.acg, align 4, !tbaa !233
  %i.aci = getelementptr inbounds nuw i8, ptr %.011202660, i64 12
  store float %i.ach, ptr %i.aci, align 4, !tbaa !233
  %i.acj = load float, ptr %.011212659, align 4, !tbaa !233
  %i.ack = getelementptr inbounds nuw i8, ptr %.011202660, i64 16
  store float %i.acj, ptr %i.ack, align 4, !tbaa !233
  %i.acl = getelementptr inbounds nuw i8, ptr %.011212659, i64 4
  %i.acm = load float, ptr %i.acl, align 4, !tbaa !233
  %i.acn = getelementptr inbounds nuw i8, ptr %.011202660, i64 20
  store float %i.acm, ptr %i.acn, align 4, !tbaa !233
  %i.aco = getelementptr inbounds nuw i8, ptr %.011212659, i64 8
  %i.acp = load float, ptr %i.aco, align 4, !tbaa !233
  %i.acq = getelementptr inbounds nuw i8, ptr %.011202660, i64 24
  store float %i.acp, ptr %i.acq, align 4, !tbaa !233
  %i.acr = getelementptr inbounds nuw i8, ptr %.011212659, i64 12
  %i.acs = load float, ptr %i.acr, align 4, !tbaa !233
  %i.act = getelementptr inbounds nuw i8, ptr %.011202660, i64 28
  store float %i.acs, ptr %i.act, align 4, !tbaa !233
  %i.acu = getelementptr inbounds nuw i8, ptr %.011222658, i64 16
  %i.acv = getelementptr inbounds nuw i8, ptr %.011212659, i64 16
  %i.acw = getelementptr inbounds nuw i8, ptr %.011202660, i64 32
  %i.acx = add nuw nsw i32 %.011192661, 1         ; 2 uses
  %exitcond2947.not = icmp eq i32 %i.acx, %i.de
  br i1 %exitcond2947.not, label %._crit_edge2664, label %.lr.ph2663, !llvm.loop !107

.loopexit2580:                                    ; preds = %._crit_edge2664, %.preheader2579, %.thread2532, %.loopexit2582
  %i.acy = phi i1 [ %i.im, %.loopexit2582 ], [ %i.aav, %.thread2532 ], [ %i.aav, %.preheader2579 ], [ %i.aav, %._crit_edge2664 ]
  %.81164 = phi ptr [ %.61162, %.loopexit2582 ], [ %.611622534, %.thread2532 ], [ %.611622534, %.preheader2579 ], [ %i.aby, %._crit_edge2664 ] ; 2 uses
  br i1 %i.acy, label %.thread2537, label %.thread2543

.thread2537:                                      ; preds = %bb.aq, %.loopexit2580
  %.811642539 = phi ptr [ %.81164, %.loopexit2580 ], [ %.41160, %bb.aq ] ; 19 uses
  %i.acz = icmp eq i32 %i.ms, 8
  br i1 %i.acz, label %.preheader2578, label %.thread2540

.preheader2578:                                   ; preds = %.thread2537
  %i.ada = getelementptr inbounds nuw i8, ptr %i.mq, i64 48
  %i.adb = load i32, ptr %i.ada, align 8, !tbaa !52 ; 2 uses
  %i.adc = icmp sgt i32 %i.adb, 0
  br i1 %i.adc, label %.lr.ph2685, label %.thread2543

.lr.ph2685:                                       ; preds = %.preheader2578
  %i.add = load ptr, ptr %i.mq, align 8, !tbaa !19 ; 3 uses
  %i.ade = getelementptr inbounds nuw i8, ptr %i.mq, i64 44
  %i.adf = load i32, ptr %i.ade, align 4, !tbaa !43
  %i.adg = sext i32 %i.adf to i64                 ; 2 uses
  %i.adh = getelementptr inbounds nuw i8, ptr %i.mq, i64 16
  %i.adi = load i64, ptr %i.adh, align 8, !tbaa !25 ; 2 uses
  %factor.op.mul2687 = mul i64 %i.adi, %i.adg     ; 2 uses
  %wide.trip.count2957 = zext nneg i32 %i.adb to i64 ; 2 uses
  %i.adj = getelementptr i8, ptr %.811642539, i64 %i.jv
  %scevgep3396 = getelementptr i8, ptr %i.adj, i64 4
  %i.adk = add nsw i64 %wide.trip.count2957, -1   ; 2 uses
  %i.adl = mul i64 %i.jw, %i.adk                  ; 8 uses
  %scevgep3397 = getelementptr i8, ptr %scevgep3396, i64 %i.adl
  %i.adm = getelementptr i8, ptr %.811642539, i64 %i.jx
  %i.adn = getelementptr i8, ptr %i.adm, i64 %i.jv
  %scevgep3398 = getelementptr i8, ptr %i.adn, i64 4
  %scevgep3399 = getelementptr i8, ptr %scevgep3398, i64 %i.adl
  %scevgep3400 = getelementptr i8, ptr %.811642539, i64 %i.jx
  %i.ado = getelementptr i8, ptr %.811642539, i64 %i.jy
  %i.adp = getelementptr i8, ptr %i.ado, i64 %i.jv
  %scevgep3401 = getelementptr i8, ptr %i.adp, i64 4
  %scevgep3402 = getelementptr i8, ptr %scevgep3401, i64 %i.adl
  %scevgep3403 = getelementptr i8, ptr %.811642539, i64 %i.jy
  %i.adq = getelementptr i8, ptr %.811642539, i64 %i.jz
  %i.adr = getelementptr i8, ptr %i.adq, i64 %i.jv
  %scevgep3404 = getelementptr i8, ptr %i.adr, i64 4
  %scevgep3405 = getelementptr i8, ptr %scevgep3404, i64 %i.adl
  %scevgep3406 = getelementptr i8, ptr %.811642539, i64 %i.jz
  %i.ads = getelementptr i8, ptr %.811642539, i64 %i.ka
  %i.adt = getelementptr i8, ptr %i.ads, i64 %i.jv
  %scevgep3407 = getelementptr i8, ptr %i.adt, i64 4
  %scevgep3408 = getelementptr i8, ptr %scevgep3407, i64 %i.adl
  %scevgep3409 = getelementptr i8, ptr %.811642539, i64 %i.ka
  %i.adu = getelementptr i8, ptr %.811642539, i64 %i.kb
  %i.adv = getelementptr i8, ptr %i.adu, i64 %i.jv
  %scevgep3410 = getelementptr i8, ptr %i.adv, i64 4
  %scevgep3411 = getelementptr i8, ptr %scevgep3410, i64 %i.adl
  %scevgep3412 = getelementptr i8, ptr %.811642539, i64 %i.kb
  %i.adw = getelementptr i8, ptr %.811642539, i64 %i.kc
  %i.adx = getelementptr i8, ptr %i.adw, i64 %i.jv
  %scevgep3413 = getelementptr i8, ptr %i.adx, i64 4
  %scevgep3414 = getelementptr i8, ptr %scevgep3413, i64 %i.adl
  %scevgep3415 = getelementptr i8, ptr %.811642539, i64 %i.kc
  %i.ady = getelementptr i8, ptr %.811642539, i64 %i.kd
  %i.adz = getelementptr i8, ptr %i.ady, i64 %i.jv
  %scevgep3416 = getelementptr i8, ptr %i.adz, i64 4
  %scevgep3417 = getelementptr i8, ptr %scevgep3416, i64 %i.adl
  %scevgep3418 = getelementptr i8, ptr %.811642539, i64 %i.kd
  %i.aea = getelementptr i8, ptr %i.add, i64 %i.ke
  %scevgep3419 = getelementptr i8, ptr %i.aea, i64 32
  %i.aeb = mul i64 %i.adi, %i.adk
  %i.aec = mul i64 %i.aeb, %i.adg
  %scevgep3420 = getelementptr i8, ptr %scevgep3419, i64 %i.aec
  %i.aed = insertelement <8 x ptr> poison, ptr %i.add, i64 0
  %i.aee = shufflevector <8 x ptr> %i.aed, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.aef = insertelement <8 x ptr> poison, ptr %scevgep3417, i64 0
  %i.aeg = insertelement <8 x ptr> %i.aef, ptr %scevgep3414, i64 1
  %i.aeh = insertelement <8 x ptr> %i.aeg, ptr %scevgep3411, i64 2
  %i.aei = insertelement <8 x ptr> %i.aeh, ptr %scevgep3408, i64 3
  %i.aej = insertelement <8 x ptr> %i.aei, ptr %scevgep3405, i64 4
  %i.aek = insertelement <8 x ptr> %i.aej, ptr %scevgep3402, i64 5
  %i.ael = insertelement <8 x ptr> %i.aek, ptr %scevgep3399, i64 6
  %i.aem = insertelement <8 x ptr> %i.ael, ptr %scevgep3397, i64 7
  %i.aen = insertelement <8 x ptr> poison, ptr %scevgep3418, i64 0
  %i.aeo = insertelement <8 x ptr> %i.aen, ptr %scevgep3415, i64 1
  %i.aep = insertelement <8 x ptr> %i.aeo, ptr %scevgep3412, i64 2
  %i.aeq = insertelement <8 x ptr> %i.aep, ptr %scevgep3409, i64 3
  %i.aer = insertelement <8 x ptr> %i.aeq, ptr %scevgep3406, i64 4
  %i.aes = insertelement <8 x ptr> %i.aer, ptr %scevgep3403, i64 5
  %i.aet = insertelement <8 x ptr> %i.aes, ptr %scevgep3400, i64 6
  %i.aeu = insertelement <8 x ptr> %i.aet, ptr %.811642539, i64 7
  %i.aev = insertelement <8 x ptr> poison, ptr %scevgep3420, i64 0
  %i.aew = shufflevector <8 x ptr> %i.aev, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.aex = icmp ult <8 x ptr> %i.aee, %i.aem
  %i.aey = icmp ult <8 x ptr> %i.aeu, %i.aew
  %stride.check3426 = icmp slt i64 %factor.op.mul2687, 0
  %i.aez = and <8 x i1> %i.aex, %i.aey
  %i.afa = bitcast <8 x i1> %i.aez to i8
  %i.afb = icmp ne i8 %i.afa, 0
  %op.rdx4997 = or i1 %i.afb, %stride.check3427
  %op.rdx4998 = or i1 %op.rdx4997, %stride.check3426
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph2685, %._crit_edge2682
  %indvars.iv2954 = phi i64 [ 0, %.lr.ph2685 ], [ %indvars.iv.next2955, %._crit_edge2682 ] ; 2 uses
  %.911652683 = phi ptr [ %.811642539, %.lr.ph2685 ], [ %i.agu, %._crit_edge2682 ] ; 14 uses
  br i1 %i.ie, label %iter.check3483, label %._crit_edge2682

iter.check3483:                                   ; preds = %bb.as
  %.reass2688 = mul i64 %factor.op.mul2687, %indvars.iv2954
  %i.afc = getelementptr inbounds nuw i8, ptr %i.add, i64 %.reass2688 ; 6 uses
  %i.afd = getelementptr inbounds nuw [4 x i8], ptr %.911652683, i64 %i.ix ; 6 uses
  %i.afe = getelementptr inbounds nuw [4 x i8], ptr %.911652683, i64 %i.iv ; 6 uses
  %i.aff = getelementptr inbounds nuw [4 x i8], ptr %.911652683, i64 %i.it ; 6 uses
  %i.afg = getelementptr inbounds nuw [4 x i8], ptr %.911652683, i64 %i.ij ; 6 uses
  %i.afh = getelementptr inbounds nuw [4 x i8], ptr %.911652683, i64 %i.ir ; 6 uses
  %i.afi = getelementptr inbounds nuw [4 x i8], ptr %.911652683, i64 %i.ip ; 6 uses
  %i.afj = getelementptr inbounds nuw [4 x i8], ptr %.911652683, i64 %i.in ; 6 uses
  br i1 %min.iters.check3421, label %.lr.ph2681.preheader, label %vector.memcheck3422

vector.memcheck3422:                              ; preds = %iter.check3483
  br i1 %op.rdx4998, label %.lr.ph2681.preheader, label %vector.main.loop.iter.check3456

vector.main.loop.iter.check3456:                  ; preds = %vector.memcheck3422
  br i1 %min.iters.check3457, label %vec.epilog.ph3487, label %vector.ph3458

vector.ph3458:                                    ; preds = %vector.main.loop.iter.check3456
  %i.afk = getelementptr i8, ptr %i.afc, i64 %i.mc
  %i.afl = getelementptr i8, ptr %i.afd, i64 %i.md
  %i.afm = getelementptr i8, ptr %i.afe, i64 %i.md
  %i.afn = getelementptr i8, ptr %i.aff, i64 %i.md
  %i.afo = getelementptr i8, ptr %i.afg, i64 %i.md
  %i.afp = getelementptr i8, ptr %i.afh, i64 %i.md
  %i.afq = getelementptr i8, ptr %i.afi, i64 %i.md
  %i.afr = getelementptr i8, ptr %i.afj, i64 %i.md
  %i.afs = getelementptr i8, ptr %.911652683, i64 %i.md
  br label %vector.body3460

vector.body3460:                                  ; preds = %vector.ph3458, %vector.body3460
  %index3461 = phi i64 [ 0, %vector.ph3458 ], [ %index.next3480, %vector.body3460 ] ; 3 uses
  %i.aft = shl i64 %index3461, 5
  %next.gep3462 = getelementptr i8, ptr %i.afc, i64 %i.aft
  %i.afu = shl i64 %index3461, 2                  ; 8 uses
  %next.gep3463 = getelementptr i8, ptr %i.afd, i64 %i.afu
  %next.gep3464 = getelementptr i8, ptr %i.afe, i64 %i.afu
  %next.gep3465 = getelementptr i8, ptr %i.aff, i64 %i.afu
  %next.gep3466 = getelementptr i8, ptr %i.afg, i64 %i.afu
  %next.gep3467 = getelementptr i8, ptr %i.afh, i64 %i.afu
  %next.gep3468 = getelementptr i8, ptr %i.afi, i64 %i.afu
  %next.gep3469 = getelementptr i8, ptr %i.afj, i64 %i.afu
  %next.gep3470 = getelementptr i8, ptr %.911652683, i64 %i.afu
  %wide.load3471 = load <16 x float>, ptr %next.gep3470, align 4, !tbaa !233, !alias.scope !263
  %wide.load3472 = load <16 x float>, ptr %next.gep3469, align 4, !tbaa !233, !alias.scope !264
  %wide.load3473 = load <16 x float>, ptr %next.gep3468, align 4, !tbaa !233, !alias.scope !265
  %wide.load3474 = load <16 x float>, ptr %next.gep3467, align 4, !tbaa !233, !alias.scope !266
  %wide.load3475 = load <16 x float>, ptr %next.gep3466, align 4, !tbaa !233, !alias.scope !267
  %wide.load3476 = load <16 x float>, ptr %next.gep3465, align 4, !tbaa !233, !alias.scope !268
  %wide.load3477 = load <16 x float>, ptr %next.gep3464, align 4, !tbaa !233, !alias.scope !269
  %wide.load3478 = load <16 x float>, ptr %next.gep3463, align 4, !tbaa !233, !alias.scope !270
  %i.afv = shufflevector <16 x float> %wide.load3471, <16 x float> %wide.load3472, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.afw = shufflevector <16 x float> %wide.load3473, <16 x float> %wide.load3474, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.afx = shufflevector <16 x float> %wide.load3475, <16 x float> %wide.load3476, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.afy = shufflevector <16 x float> %wide.load3477, <16 x float> %wide.load3478, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.afz = shufflevector <32 x float> %i.afv, <32 x float> %i.afw, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.aga = shufflevector <32 x float> %i.afx, <32 x float> %i.afy, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %interleaved.vec3479 = shufflevector <64 x float> %i.afz, <64 x float> %i.aga, <128 x i32> <i32 0, i32 16, i32 32, i32 48, i32 64, i32 80, i32 96, i32 112, i32 1, i32 17, i32 33, i32 49, i32 65, i32 81, i32 97, i32 113, i32 2, i32 18, i32 34, i32 50, i32 66, i32 82, i32 98, i32 114, i32 3, i32 19, i32 35, i32 51, i32 67, i32 83, i32 99, i32 115, i32 4, i32 20, i32 36, i32 52, i32 68, i32 84, i32 100, i32 116, i32 5, i32 21, i32 37, i32 53, i32 69, i32 85, i32 101, i32 117, i32 6, i32 22, i32 38, i32 54, i32 70, i32 86, i32 102, i32 118, i32 7, i32 23, i32 39, i32 55, i32 71, i32 87, i32 103, i32 119, i32 8, i32 24, i32 40, i32 56, i32 72, i32 88, i32 104, i32 120, i32 9, i32 25, i32 41, i32 57, i32 73, i32 89, i32 105, i32 121, i32 10, i32 26, i32 42, i32 58, i32 74, i32 90, i32 106, i32 122, i32 11, i32 27, i32 43, i32 59, i32 75, i32 91, i32 107, i32 123, i32 12, i32 28, i32 44, i32 60, i32 76, i32 92, i32 108, i32 124, i32 13, i32 29, i32 45, i32 61, i32 77, i32 93, i32 109, i32 125, i32 14, i32 30, i32 46, i32 62, i32 78, i32 94, i32 110, i32 126, i32 15, i32 31, i32 47, i32 63, i32 79, i32 95, i32 111, i32 127>
  store <128 x float> %interleaved.vec3479, ptr %next.gep3462, align 4, !tbaa !233, !alias.scope !271, !noalias !272
  %index.next3480 = add nuw i64 %index3461, 16    ; 2 uses
  %i.agb = icmp eq i64 %index.next3480, %n.vec3459
  br i1 %i.agb, label %middle.block3481, label %vector.body3460, !llvm.loop !118

middle.block3481:                                 ; preds = %vector.body3460
  br i1 %cmp.n3482, label %._crit_edge2682, label %vec.epilog.iter.check3484

vec.epilog.iter.check3484:                        ; preds = %middle.block3481
  br i1 %min.epilog.iters.check3486, label %.lr.ph2681.preheader, label %vec.epilog.ph3487, !prof !57

vec.epilog.ph3487:                                ; preds = %vector.main.loop.iter.check3456, %vec.epilog.iter.check3484
  %vec.epilog.resume.val3488 = phi i64 [ %n.vec3459, %vec.epilog.iter.check3484 ], [ 0, %vector.main.loop.iter.check3456 ]
  %i.agc = getelementptr i8, ptr %i.afc, i64 %i.mf
  %i.agd = getelementptr i8, ptr %i.afd, i64 %i.mg
  %i.age = getelementptr i8, ptr %i.afe, i64 %i.mg
  %i.agf = getelementptr i8, ptr %i.aff, i64 %i.mg
  %i.agg = getelementptr i8, ptr %i.afg, i64 %i.mg
  %i.agh = getelementptr i8, ptr %i.afh, i64 %i.mg
  %i.agi = getelementptr i8, ptr %i.afi, i64 %i.mg
  %i.agj = getelementptr i8, ptr %i.afj, i64 %i.mg
  %i.agk = getelementptr i8, ptr %.911652683, i64 %i.mg
  br label %vec.epilog.vector.body3490

vec.epilog.vector.body3490:                       ; preds = %vec.epilog.vector.body3490, %vec.epilog.ph3487
  %index3491 = phi i64 [ %vec.epilog.resume.val3488, %vec.epilog.ph3487 ], [ %index.next3510, %vec.epilog.vector.body3490 ] ; 3 uses
  %i.agl = shl i64 %index3491, 5
  %next.gep3492 = getelementptr i8, ptr %i.afc, i64 %i.agl
  %i.agm = shl i64 %index3491, 2                  ; 8 uses
  %next.gep3493 = getelementptr i8, ptr %i.afd, i64 %i.agm
  %next.gep3494 = getelementptr i8, ptr %i.afe, i64 %i.agm
  %next.gep3495 = getelementptr i8, ptr %i.aff, i64 %i.agm
  %next.gep3496 = getelementptr i8, ptr %i.afg, i64 %i.agm
  %next.gep3497 = getelementptr i8, ptr %i.afh, i64 %i.agm
  %next.gep3498 = getelementptr i8, ptr %i.afi, i64 %i.agm
  %next.gep3499 = getelementptr i8, ptr %i.afj, i64 %i.agm
  %next.gep3500 = getelementptr i8, ptr %.911652683, i64 %i.agm
  %wide.load3501 = load <4 x float>, ptr %next.gep3500, align 4, !tbaa !233, !alias.scope !263
  %wide.load3502 = load <4 x float>, ptr %next.gep3499, align 4, !tbaa !233, !alias.scope !264
  %wide.load3503 = load <4 x float>, ptr %next.gep3498, align 4, !tbaa !233, !alias.scope !265
  %wide.load3504 = load <4 x float>, ptr %next.gep3497, align 4, !tbaa !233, !alias.scope !266
  %wide.load3505 = load <4 x float>, ptr %next.gep3496, align 4, !tbaa !233, !alias.scope !267
  %wide.load3506 = load <4 x float>, ptr %next.gep3495, align 4, !tbaa !233, !alias.scope !268
  %wide.load3507 = load <4 x float>, ptr %next.gep3494, align 4, !tbaa !233, !alias.scope !269
  %wide.load3508 = load <4 x float>, ptr %next.gep3493, align 4, !tbaa !233, !alias.scope !270
  %i.agn = shufflevector <4 x float> %wide.load3501, <4 x float> %wide.load3502, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ago = shufflevector <4 x float> %wide.load3503, <4 x float> %wide.load3504, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.agp = shufflevector <4 x float> %wide.load3505, <4 x float> %wide.load3506, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.agq = shufflevector <4 x float> %wide.load3507, <4 x float> %wide.load3508, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.agr = shufflevector <8 x float> %i.agn, <8 x float> %i.ago, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ags = shufflevector <8 x float> %i.agp, <8 x float> %i.agq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec3509 = shufflevector <16 x float> %i.agr, <16 x float> %i.ags, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x float> %interleaved.vec3509, ptr %next.gep3492, align 4, !tbaa !233, !alias.scope !271, !noalias !272
  %index.next3510 = add nuw i64 %index3491, 4     ; 2 uses
  %i.agt = icmp eq i64 %index.next3510, %n.vec3489
  br i1 %i.agt, label %vec.epilog.middle.block3511, label %vec.epilog.vector.body3490, !llvm.loop !119

vec.epilog.middle.block3511:                      ; preds = %vec.epilog.vector.body3490
  br i1 %cmp.n3512, label %._crit_edge2682, label %.lr.ph2681.preheader

.lr.ph2681.preheader:                             ; preds = %iter.check3483, %vector.memcheck3422, %vec.epilog.iter.check3484, %vec.epilog.middle.block3511
  %.011082679.ph = phi i32 [ 0, %iter.check3483 ], [ 0, %vector.memcheck3422 ], [ %i.mb, %vec.epilog.iter.check3484 ], [ %i.me, %vec.epilog.middle.block3511 ]
  %.011092678.ph = phi ptr [ %i.afc, %iter.check3483 ], [ %i.afc, %vector.memcheck3422 ], [ %i.afk, %vec.epilog.iter.check3484 ], [ %i.agc, %vec.epilog.middle.block3511 ]
  %.011102677.ph = phi ptr [ %i.afd, %iter.check3483 ], [ %i.afd, %vector.memcheck3422 ], [ %i.afl, %vec.epilog.iter.check3484 ], [ %i.agd, %vec.epilog.middle.block3511 ]
  %.011112676.ph = phi ptr [ %i.afe, %iter.check3483 ], [ %i.afe, %vector.memcheck3422 ], [ %i.afm, %vec.epilog.iter.check3484 ], [ %i.age, %vec.epilog.middle.block3511 ]
  %.011122675.ph = phi ptr [ %i.aff, %iter.check3483 ], [ %i.aff, %vector.memcheck3422 ], [ %i.afn, %vec.epilog.iter.check3484 ], [ %i.agf, %vec.epilog.middle.block3511 ]
  %.011132674.ph = phi ptr [ %i.afg, %iter.check3483 ], [ %i.afg, %vector.memcheck3422 ], [ %i.afo, %vec.epilog.iter.check3484 ], [ %i.agg, %vec.epilog.middle.block3511 ]
  %.011142673.ph = phi ptr [ %i.afh, %iter.check3483 ], [ %i.afh, %vector.memcheck3422 ], [ %i.afp, %vec.epilog.iter.check3484 ], [ %i.agh, %vec.epilog.middle.block3511 ]
  %.011152672.ph = phi ptr [ %i.afi, %iter.check3483 ], [ %i.afi, %vector.memcheck3422 ], [ %i.afq, %vec.epilog.iter.check3484 ], [ %i.agi, %vec.epilog.middle.block3511 ]
  %.011162671.ph = phi ptr [ %i.afj, %iter.check3483 ], [ %i.afj, %vector.memcheck3422 ], [ %i.afr, %vec.epilog.iter.check3484 ], [ %i.agj, %vec.epilog.middle.block3511 ]
  %.011172670.ph = phi ptr [ %.911652683, %iter.check3483 ], [ %.911652683, %vector.memcheck3422 ], [ %i.afs, %vec.epilog.iter.check3484 ], [ %i.agk, %vec.epilog.middle.block3511 ]
  br label %.lr.ph2681

._crit_edge2682:                                  ; preds = %.lr.ph2681, %middle.block3481, %vec.epilog.middle.block3511, %bb.as
  %i.agu = getelementptr inbounds [4 x i8], ptr %.911652683, i64 %i.id ; 2 uses
  %indvars.iv.next2955 = add nuw nsw i64 %indvars.iv2954, 1 ; 2 uses
  %exitcond2958.not = icmp eq i64 %indvars.iv.next2955, %wide.trip.count2957
  br i1 %exitcond2958.not, label %.thread2540, label %bb.as, !llvm.loop !120

.lr.ph2681:                                       ; preds = %.lr.ph2681.preheader, %.lr.ph2681
  %.011082679 = phi i32 [ %i.aht, %.lr.ph2681 ], [ %.011082679.ph, %.lr.ph2681.preheader ]
  %.011092678 = phi ptr [ %i.ahs, %.lr.ph2681 ], [ %.011092678.ph, %.lr.ph2681.preheader ] ; 9 uses
  %.011102677 = phi ptr [ %i.ahp, %.lr.ph2681 ], [ %.011102677.ph, %.lr.ph2681.preheader ] ; 2 uses
  %.011112676 = phi ptr [ %i.ahm, %.lr.ph2681 ], [ %.011112676.ph, %.lr.ph2681.preheader ] ; 2 uses
  %.011122675 = phi ptr [ %i.ahj, %.lr.ph2681 ], [ %.011122675.ph, %.lr.ph2681.preheader ] ; 2 uses
  %.011132674 = phi ptr [ %i.ahg, %.lr.ph2681 ], [ %.011132674.ph, %.lr.ph2681.preheader ] ; 2 uses
  %.011142673 = phi ptr [ %i.ahd, %.lr.ph2681 ], [ %.011142673.ph, %.lr.ph2681.preheader ] ; 2 uses
  %.011152672 = phi ptr [ %i.aha, %.lr.ph2681 ], [ %.011152672.ph, %.lr.ph2681.preheader ] ; 2 uses
  %.011162671 = phi ptr [ %i.agx, %.lr.ph2681 ], [ %.011162671.ph, %.lr.ph2681.preheader ] ; 2 uses
  %.011172670 = phi ptr [ %i.agv, %.lr.ph2681 ], [ %.011172670.ph, %.lr.ph2681.preheader ] ; 2 uses
  %i.agv = getelementptr inbounds nuw i8, ptr %.011172670, i64 4
  %i.agw = load float, ptr %.011172670, align 4, !tbaa !233
  store float %i.agw, ptr %.011092678, align 4, !tbaa !233
  %i.agx = getelementptr inbounds nuw i8, ptr %.011162671, i64 4
  %i.agy = load float, ptr %.011162671, align 4, !tbaa !233
  %i.agz = getelementptr inbounds nuw i8, ptr %.011092678, i64 4
  store float %i.agy, ptr %i.agz, align 4, !tbaa !233
  %i.aha = getelementptr inbounds nuw i8, ptr %.011152672, i64 4
  %i.ahb = load float, ptr %.011152672, align 4, !tbaa !233
  %i.ahc = getelementptr inbounds nuw i8, ptr %.011092678, i64 8
  store float %i.ahb, ptr %i.ahc, align 4, !tbaa !233
  %i.ahd = getelementptr inbounds nuw i8, ptr %.011142673, i64 4
  %i.ahe = load float, ptr %.011142673, align 4, !tbaa !233
  %i.ahf = getelementptr inbounds nuw i8, ptr %.011092678, i64 12
  store float %i.ahe, ptr %i.ahf, align 4, !tbaa !233
  %i.ahg = getelementptr inbounds nuw i8, ptr %.011132674, i64 4
  %i.ahh = load float, ptr %.011132674, align 4, !tbaa !233
  %i.ahi = getelementptr inbounds nuw i8, ptr %.011092678, i64 16
  store float %i.ahh, ptr %i.ahi, align 4, !tbaa !233
  %i.ahj = getelementptr inbounds nuw i8, ptr %.011122675, i64 4
  %i.ahk = load float, ptr %.011122675, align 4, !tbaa !233
  %i.ahl = getelementptr inbounds nuw i8, ptr %.011092678, i64 20
  store float %i.ahk, ptr %i.ahl, align 4, !tbaa !233
  %i.ahm = getelementptr inbounds nuw i8, ptr %.011112676, i64 4
  %i.ahn = load float, ptr %.011112676, align 4, !tbaa !233
  %i.aho = getelementptr inbounds nuw i8, ptr %.011092678, i64 24
  store float %i.ahn, ptr %i.aho, align 4, !tbaa !233
  %i.ahp = getelementptr inbounds nuw i8, ptr %.011102677, i64 4
  %i.ahq = load float, ptr %.011102677, align 4, !tbaa !233
  %i.ahr = getelementptr inbounds nuw i8, ptr %.011092678, i64 28
  store float %i.ahq, ptr %i.ahr, align 4, !tbaa !233
  %i.ahs = getelementptr inbounds nuw i8, ptr %.011092678, i64 32
  %i.aht = add nuw nsw i32 %.011082679, 1         ; 2 uses
  %exitcond2953.not = icmp eq i32 %i.aht, %i.de
  br i1 %exitcond2953.not, label %._crit_edge2682, label %.lr.ph2681, !llvm.loop !121

.thread2540:                                      ; preds = %._crit_edge2682, %.thread2537
  %.1011662542 = phi ptr [ %.811642539, %.thread2537 ], [ %i.agu, %._crit_edge2682 ] ; 11 uses
  %i.ahu = icmp eq i32 %i.ms, 4
  br i1 %i.ahu, label %.preheader, label %.thread2543

.preheader:                                       ; preds = %.thread2540
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.mq, i64 48
  %i.ahw = load i32, ptr %i.ahv, align 8, !tbaa !52 ; 2 uses
  %i.ahx = icmp sgt i32 %i.ahw, 0
  br i1 %i.ahx, label %.lr.ph2700, label %.thread2543

.lr.ph2700:                                       ; preds = %.preheader
  %i.ahy = load ptr, ptr %i.mq, align 8, !tbaa !19 ; 3 uses
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.mq, i64 44
  %i.aia = load i32, ptr %i.ahz, align 4, !tbaa !43
  %i.aib = sext i32 %i.aia to i64                 ; 2 uses
  %i.aic = getelementptr inbounds nuw i8, ptr %i.mq, i64 16
  %i.aid = load i64, ptr %i.aic, align 8, !tbaa !25 ; 2 uses
  %factor.op.mul2702 = mul i64 %i.aid, %i.aib     ; 2 uses
  %wide.trip.count2963 = zext nneg i32 %i.ahw to i64 ; 2 uses
  %i.aie = getelementptr i8, ptr %.1011662542, i64 %i.jm
  %scevgep3267 = getelementptr i8, ptr %i.aie, i64 4
  %i.aif = add nsw i64 %wide.trip.count2963, -1   ; 2 uses
  %i.aig = mul i64 %i.jn, %i.aif                  ; 4 uses
  %scevgep3268 = getelementptr i8, ptr %scevgep3267, i64 %i.aig
  %i.aih = getelementptr i8, ptr %.1011662542, i64 %i.jo
  %i.aii = getelementptr i8, ptr %i.aih, i64 %i.jm
  %scevgep3269 = getelementptr i8, ptr %i.aii, i64 4
  %scevgep3270 = getelementptr i8, ptr %scevgep3269, i64 %i.aig
  %scevgep3271 = getelementptr i8, ptr %.1011662542, i64 %i.jo
  %i.aij = getelementptr i8, ptr %.1011662542, i64 %i.jp
  %i.aik = getelementptr i8, ptr %i.aij, i64 %i.jm
  %scevgep3272 = getelementptr i8, ptr %i.aik, i64 4
  %scevgep3273 = getelementptr i8, ptr %scevgep3272, i64 %i.aig
  %scevgep3274 = getelementptr i8, ptr %.1011662542, i64 %i.jp
  %i.ail = getelementptr i8, ptr %.1011662542, i64 %i.jq
  %i.aim = getelementptr i8, ptr %i.ail, i64 %i.jm
  %scevgep3275 = getelementptr i8, ptr %i.aim, i64 4
  %scevgep3276 = getelementptr i8, ptr %scevgep3275, i64 %i.aig
  %scevgep3277 = getelementptr i8, ptr %.1011662542, i64 %i.jq
  %i.ain = getelementptr i8, ptr %i.ahy, i64 %i.jr
  %scevgep3278 = getelementptr i8, ptr %i.ain, i64 16
  %i.aio = mul i64 %i.aid, %i.aif
  %i.aip = mul i64 %i.aio, %i.aib
  %scevgep3279 = getelementptr i8, ptr %scevgep3278, i64 %i.aip
  %i.aiq = insertelement <4 x ptr> poison, ptr %i.ahy, i64 0
  %i.air = shufflevector <4 x ptr> %i.aiq, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ais = insertelement <4 x ptr> poison, ptr %scevgep3276, i64 0
  %i.ait = insertelement <4 x ptr> %i.ais, ptr %scevgep3273, i64 1
  %i.aiu = insertelement <4 x ptr> %i.ait, ptr %scevgep3270, i64 2
  %i.aiv = insertelement <4 x ptr> %i.aiu, ptr %scevgep3268, i64 3
  %i.aiw = insertelement <4 x ptr> poison, ptr %scevgep3277, i64 0
  %i.aix = insertelement <4 x ptr> %i.aiw, ptr %scevgep3274, i64 1
  %i.aiy = insertelement <4 x ptr> %i.aix, ptr %scevgep3271, i64 2
  %i.aiz = insertelement <4 x ptr> %i.aiy, ptr %.1011662542, i64 3
  %i.aja = insertelement <4 x ptr> poison, ptr %scevgep3279, i64 0
  %i.ajb = shufflevector <4 x ptr> %i.aja, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ajc = icmp ult <4 x ptr> %i.air, %i.aiv
  %i.ajd = icmp ult <4 x ptr> %i.aiz, %i.ajb
  %stride.check = icmp slt i64 %factor.op.mul2702, 0
  %i.aje = and <4 x i1> %i.ajc, %i.ajd
  %i.ajf = bitcast <4 x i1> %i.aje to i4
  %i.ajg = icmp ne i4 %i.ajf, 0
  %op.rdx4995 = or i1 %i.ajg, %stride.check3281
  %op.rdx4996 = or i1 %op.rdx4995, %stride.check
  br label %bb.at

bb.at:                                            ; preds = %.lr.ph2700, %._crit_edge2697
  %indvars.iv2960 = phi i64 [ 0, %.lr.ph2700 ], [ %indvars.iv.next2961, %._crit_edge2697 ] ; 2 uses
  %.1111672698 = phi ptr [ %.1011662542, %.lr.ph2700 ], [ %i.aku, %._crit_edge2697 ] ; 10 uses
  br i1 %i.ie, label %iter.check3309, label %._crit_edge2697

iter.check3309:                                   ; preds = %bb.at
  %.reass2703 = mul i64 %factor.op.mul2702, %indvars.iv2960
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.ahy, i64 %.reass2703 ; 6 uses
  %i.aji = getelementptr inbounds nuw [4 x i8], ptr %.1111672698, i64 %i.ir ; 6 uses
  %i.ajj = getelementptr inbounds nuw [4 x i8], ptr %.1111672698, i64 %i.ip ; 6 uses
  %i.ajk = getelementptr inbounds nuw [4 x i8], ptr %.1111672698, i64 %i.in ; 6 uses
  br i1 %min.iters.check3280, label %.lr.ph2696.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check3309
  br i1 %op.rdx4996, label %.lr.ph2696.preheader, label %vector.main.loop.iter.check3293

vector.main.loop.iter.check3293:                  ; preds = %vector.memcheck
  br i1 %min.iters.check3294, label %vec.epilog.ph3313, label %vector.ph3295

vector.ph3295:                                    ; preds = %vector.main.loop.iter.check3293
  %i.ajl = getelementptr i8, ptr %i.ajh, i64 %i.mj
  %i.ajm = getelementptr i8, ptr %i.aji, i64 %i.mk
  %i.ajn = getelementptr i8, ptr %i.ajj, i64 %i.mk
  %i.ajo = getelementptr i8, ptr %i.ajk, i64 %i.mk
  %i.ajp = getelementptr i8, ptr %.1111672698, i64 %i.mk
  br label %vector.body3297

vector.body3297:                                  ; preds = %vector.ph3295, %vector.body3297
  %index3298 = phi i64 [ 0, %vector.ph3295 ], [ %index.next3306, %vector.body3297 ] ; 3 uses
  %i.ajq = shl i64 %index3298, 4
  %next.gep = getelementptr i8, ptr %i.ajh, i64 %i.ajq
  %i.ajr = shl i64 %index3298, 2                  ; 4 uses
  %next.gep3299 = getelementptr i8, ptr %i.aji, i64 %i.ajr
  %next.gep3300 = getelementptr i8, ptr %i.ajj, i64 %i.ajr
  %next.gep3301 = getelementptr i8, ptr %i.ajk, i64 %i.ajr
  %next.gep3302 = getelementptr i8, ptr %.1111672698, i64 %i.ajr
  %wide.load = load <16 x float>, ptr %next.gep3302, align 4, !tbaa !233, !alias.scope !273
  %wide.load3303 = load <16 x float>, ptr %next.gep3301, align 4, !tbaa !233, !alias.scope !274
  %wide.load3304 = load <16 x float>, ptr %next.gep3300, align 4, !tbaa !233, !alias.scope !275
  %wide.load3305 = load <16 x float>, ptr %next.gep3299, align 4, !tbaa !233, !alias.scope !276
  %i.ajs = shufflevector <16 x float> %wide.load, <16 x float> %wide.load3303, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ajt = shufflevector <16 x float> %wide.load3304, <16 x float> %wide.load3305, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec = shufflevector <32 x float> %i.ajs, <32 x float> %i.ajt, <64 x i32> <i32 0, i32 16, i32 32, i32 48, i32 1, i32 17, i32 33, i32 49, i32 2, i32 18, i32 34, i32 50, i32 3, i32 19, i32 35, i32 51, i32 4, i32 20, i32 36, i32 52, i32 5, i32 21, i32 37, i32 53, i32 6, i32 22, i32 38, i32 54, i32 7, i32 23, i32 39, i32 55, i32 8, i32 24, i32 40, i32 56, i32 9, i32 25, i32 41, i32 57, i32 10, i32 26, i32 42, i32 58, i32 11, i32 27, i32 43, i32 59, i32 12, i32 28, i32 44, i32 60, i32 13, i32 29, i32 45, i32 61, i32 14, i32 30, i32 46, i32 62, i32 15, i32 31, i32 47, i32 63>
  store <64 x float> %interleaved.vec, ptr %next.gep, align 4, !tbaa !233, !alias.scope !277, !noalias !278
  %index.next3306 = add nuw i64 %index3298, 16    ; 2 uses
  %i.aju = icmp eq i64 %index.next3306, %n.vec3296
  br i1 %i.aju, label %middle.block3307, label %vector.body3297, !llvm.loop !128

middle.block3307:                                 ; preds = %vector.body3297
  br i1 %cmp.n3308, label %._crit_edge2697, label %vec.epilog.iter.check3310

vec.epilog.iter.check3310:                        ; preds = %middle.block3307
  br i1 %min.epilog.iters.check3312, label %.lr.ph2696.preheader, label %vec.epilog.ph3313, !prof !57

vec.epilog.ph3313:                                ; preds = %vector.main.loop.iter.check3293, %vec.epilog.iter.check3310
  %vec.epilog.resume.val3314 = phi i64 [ %n.vec3296, %vec.epilog.iter.check3310 ], [ 0, %vector.main.loop.iter.check3293 ]
  %i.ajv = getelementptr i8, ptr %i.ajh, i64 %i.mm
  %i.ajw = getelementptr i8, ptr %i.aji, i64 %i.mn
  %i.ajx = getelementptr i8, ptr %i.ajj, i64 %i.mn
  %i.ajy = getelementptr i8, ptr %i.ajk, i64 %i.mn
  %i.ajz = getelementptr i8, ptr %.1111672698, i64 %i.mn
  br label %vec.epilog.vector.body3316

vec.epilog.vector.body3316:                       ; preds = %vec.epilog.vector.body3316, %vec.epilog.ph3313
  %index3317 = phi i64 [ %vec.epilog.resume.val3314, %vec.epilog.ph3313 ], [ %index.next3328, %vec.epilog.vector.body3316 ] ; 3 uses
  %i.aka = shl i64 %index3317, 4
  %next.gep3318 = getelementptr i8, ptr %i.ajh, i64 %i.aka
  %i.akb = shl i64 %index3317, 2                  ; 4 uses
  %next.gep3319 = getelementptr i8, ptr %i.aji, i64 %i.akb
  %next.gep3320 = getelementptr i8, ptr %i.ajj, i64 %i.akb
  %next.gep3321 = getelementptr i8, ptr %i.ajk, i64 %i.akb
  %next.gep3322 = getelementptr i8, ptr %.1111672698, i64 %i.akb
  %wide.load3323 = load <4 x float>, ptr %next.gep3322, align 4, !tbaa !233, !alias.scope !273
  %wide.load3324 = load <4 x float>, ptr %next.gep3321, align 4, !tbaa !233, !alias.scope !274
  %wide.load3325 = load <4 x float>, ptr %next.gep3320, align 4, !tbaa !233, !alias.scope !275
  %wide.load3326 = load <4 x float>, ptr %next.gep3319, align 4, !tbaa !233, !alias.scope !276
  %i.akc = shufflevector <4 x float> %wide.load3323, <4 x float> %wide.load3324, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.akd = shufflevector <4 x float> %wide.load3325, <4 x float> %wide.load3326, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec3327 = shufflevector <8 x float> %i.akc, <8 x float> %i.akd, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec3327, ptr %next.gep3318, align 4, !tbaa !233, !alias.scope !277, !noalias !278
  %index.next3328 = add nuw i64 %index3317, 4     ; 2 uses
  %i.ake = icmp eq i64 %index.next3328, %n.vec3315
  br i1 %i.ake, label %vec.epilog.middle.block3329, label %vec.epilog.vector.body3316, !llvm.loop !129

vec.epilog.middle.block3329:                      ; preds = %vec.epilog.vector.body3316
  br i1 %cmp.n3330, label %._crit_edge2697, label %.lr.ph2696.preheader

.lr.ph2696.preheader:                             ; preds = %iter.check3309, %vector.memcheck, %vec.epilog.iter.check3310, %vec.epilog.middle.block3329
  %.011012694.ph = phi i32 [ 0, %iter.check3309 ], [ 0, %vector.memcheck ], [ %i.mi, %vec.epilog.iter.check3310 ], [ %i.ml, %vec.epilog.middle.block3329 ] ; 4 uses
  %.011022693.ph = phi ptr [ %i.ajh, %iter.check3309 ], [ %i.ajh, %vector.memcheck ], [ %i.ajl, %vec.epilog.iter.check3310 ], [ %i.ajv, %vec.epilog.middle.block3329 ] ; 6 uses
  %.011032692.ph = phi ptr [ %i.aji, %iter.check3309 ], [ %i.aji, %vector.memcheck ], [ %i.ajm, %vec.epilog.iter.check3310 ], [ %i.ajw, %vec.epilog.middle.block3329 ] ; 3 uses
  %.011042691.ph = phi ptr [ %i.ajj, %iter.check3309 ], [ %i.ajj, %vector.memcheck ], [ %i.ajn, %vec.epilog.iter.check3310 ], [ %i.ajx, %vec.epilog.middle.block3329 ] ; 3 uses
  %.011052690.ph = phi ptr [ %i.ajk, %iter.check3309 ], [ %i.ajk, %vector.memcheck ], [ %i.ajo, %vec.epilog.iter.check3310 ], [ %i.ajy, %vec.epilog.middle.block3329 ] ; 3 uses
  %.011062689.ph = phi ptr [ %.1111672698, %iter.check3309 ], [ %.1111672698, %vector.memcheck ], [ %i.ajp, %vec.epilog.iter.check3310 ], [ %i.ajz, %vec.epilog.middle.block3329 ] ; 3 uses
  %i.akf = sub i32 %i.de, %.011012694.ph
  %.neg = add i32 %.011012694.ph, 1
  %xtraiter = and i32 %i.akf, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph2696.prol.loopexit, label %.lr.ph2696.prol

.lr.ph2696.prol:                                  ; preds = %.lr.ph2696.preheader
  %i.akg = getelementptr inbounds nuw i8, ptr %.011062689.ph, i64 4
  %i.akh = load float, ptr %.011062689.ph, align 4, !tbaa !233
  store float %i.akh, ptr %.011022693.ph, align 4, !tbaa !233
  %i.aki = getelementptr inbounds nuw i8, ptr %.011052690.ph, i64 4
  %i.akj = load float, ptr %.011052690.ph, align 4, !tbaa !233
  %i.akk = getelementptr inbounds nuw i8, ptr %.011022693.ph, i64 4
  store float %i.akj, ptr %i.akk, align 4, !tbaa !233
  %i.akl = getelementptr inbounds nuw i8, ptr %.011042691.ph, i64 4
  %i.akm = load float, ptr %.011042691.ph, align 4, !tbaa !233
  %i.akn = getelementptr inbounds nuw i8, ptr %.011022693.ph, i64 8
  store float %i.akm, ptr %i.akn, align 4, !tbaa !233
  %i.ako = getelementptr inbounds nuw i8, ptr %.011032692.ph, i64 4
  %i.akp = load float, ptr %.011032692.ph, align 4, !tbaa !233
  %i.akq = getelementptr inbounds nuw i8, ptr %.011022693.ph, i64 12
  store float %i.akp, ptr %i.akq, align 4, !tbaa !233
  %i.akr = getelementptr inbounds nuw i8, ptr %.011022693.ph, i64 16
  %i.aks = add nuw nsw i32 %.011012694.ph, 1
  br label %.lr.ph2696.prol.loopexit

.lr.ph2696.prol.loopexit:                         ; preds = %.lr.ph2696.prol, %.lr.ph2696.preheader
  %.011012694.unr = phi i32 [ %.011012694.ph, %.lr.ph2696.preheader ], [ %i.aks, %.lr.ph2696.prol ]
  %.011022693.unr = phi ptr [ %.011022693.ph, %.lr.ph2696.preheader ], [ %i.akr, %.lr.ph2696.prol ]
  %.011032692.unr = phi ptr [ %.011032692.ph, %.lr.ph2696.preheader ], [ %i.ako, %.lr.ph2696.prol ]
  %.011042691.unr = phi ptr [ %.011042691.ph, %.lr.ph2696.preheader ], [ %i.akl, %.lr.ph2696.prol ]
  %.011052690.unr = phi ptr [ %.011052690.ph, %.lr.ph2696.preheader ], [ %i.aki, %.lr.ph2696.prol ]
  %.011062689.unr = phi ptr [ %.011062689.ph, %.lr.ph2696.preheader ], [ %i.akg, %.lr.ph2696.prol ]
  %i.akt = icmp eq i32 %i.de, %.neg
  br i1 %i.akt, label %._crit_edge2697, label %.lr.ph2696

._crit_edge2697:                                  ; preds = %.lr.ph2696.prol.loopexit, %.lr.ph2696, %middle.block3307, %vec.epilog.middle.block3329, %bb.at
  %i.aku = getelementptr inbounds [4 x i8], ptr %.1111672698, i64 %i.ij ; 2 uses
  %indvars.iv.next2961 = add nuw nsw i64 %indvars.iv2960, 1 ; 2 uses
  %exitcond2964.not = icmp eq i64 %indvars.iv.next2961, %wide.trip.count2963
  br i1 %exitcond2964.not, label %.thread2543, label %bb.at, !llvm.loop !130

.lr.ph2696:                                       ; preds = %.lr.ph2696.prol.loopexit, %.lr.ph2696
  %.011012694 = phi i32 [ %i.alt, %.lr.ph2696 ], [ %.011012694.unr, %.lr.ph2696.prol.loopexit ]
  %.011022693 = phi ptr [ %i.als, %.lr.ph2696 ], [ %.011022693.unr, %.lr.ph2696.prol.loopexit ] ; 9 uses
  %.011032692 = phi ptr [ %i.alp, %.lr.ph2696 ], [ %.011032692.unr, %.lr.ph2696.prol.loopexit ] ; 3 uses
  %.011042691 = phi ptr [ %i.alm, %.lr.ph2696 ], [ %.011042691.unr, %.lr.ph2696.prol.loopexit ] ; 3 uses
  %.011052690 = phi ptr [ %i.alj, %.lr.ph2696 ], [ %.011052690.unr, %.lr.ph2696.prol.loopexit ] ; 3 uses
  %.011062689 = phi ptr [ %i.alh, %.lr.ph2696 ], [ %.011062689.unr, %.lr.ph2696.prol.loopexit ] ; 3 uses
  %i.akv = getelementptr inbounds nuw i8, ptr %.011062689, i64 4
  %i.akw = load float, ptr %.011062689, align 4, !tbaa !233
  store float %i.akw, ptr %.011022693, align 4, !tbaa !233
  %i.akx = getelementptr inbounds nuw i8, ptr %.011052690, i64 4
  %i.aky = load float, ptr %.011052690, align 4, !tbaa !233
  %i.akz = getelementptr inbounds nuw i8, ptr %.011022693, i64 4
  store float %i.aky, ptr %i.akz, align 4, !tbaa !233
  %i.ala = getelementptr inbounds nuw i8, ptr %.011042691, i64 4
  %i.alb = load float, ptr %.011042691, align 4, !tbaa !233
  %i.alc = getelementptr inbounds nuw i8, ptr %.011022693, i64 8
  store float %i.alb, ptr %i.alc, align 4, !tbaa !233
  %i.ald = getelementptr inbounds nuw i8, ptr %.011032692, i64 4
  %i.ale = load float, ptr %.011032692, align 4, !tbaa !233
  %i.alf = getelementptr inbounds nuw i8, ptr %.011022693, i64 12
  store float %i.ale, ptr %i.alf, align 4, !tbaa !233
  %i.alg = getelementptr inbounds nuw i8, ptr %.011022693, i64 16
  %i.alh = getelementptr inbounds nuw i8, ptr %.011062689, i64 8
  %i.ali = load float, ptr %i.akv, align 4, !tbaa !233
  store float %i.ali, ptr %i.alg, align 4, !tbaa !233
  %i.alj = getelementptr inbounds nuw i8, ptr %.011052690, i64 8
  %i.alk = load float, ptr %i.akx, align 4, !tbaa !233
  %i.all = getelementptr inbounds nuw i8, ptr %.011022693, i64 20
  store float %i.alk, ptr %i.all, align 4, !tbaa !233
  %i.alm = getelementptr inbounds nuw i8, ptr %.011042691, i64 8
  %i.aln = load float, ptr %i.ala, align 4, !tbaa !233
  %i.alo = getelementptr inbounds nuw i8, ptr %.011022693, i64 24
  store float %i.aln, ptr %i.alo, align 4, !tbaa !233
  %i.alp = getelementptr inbounds nuw i8, ptr %.011032692, i64 8
  %i.alq = load float, ptr %i.ald, align 4, !tbaa !233
  %i.alr = getelementptr inbounds nuw i8, ptr %.011022693, i64 28
  store float %i.alq, ptr %i.alr, align 4, !tbaa !233
  %i.als = getelementptr inbounds nuw i8, ptr %.011022693, i64 32
  %i.alt = add nuw nsw i32 %.011012694, 2         ; 2 uses
  %exitcond2959.not.1 = icmp eq i32 %i.alt, %i.de
  br i1 %exitcond2959.not.1, label %._crit_edge2697, label %.lr.ph2696, !llvm.loop !131

.thread2543:                                      ; preds = %._crit_edge2697, %.lr.ph2612.split.preheader, %.preheader2585, %.preheader2583, %.lr.ph2625.split.preheader, %.preheader2581, %.lr.ph2653.split.preheader, %.preheader2578, %.preheader, %.loopexit2580, %.thread2540
  %.121168 = phi ptr [ %.81164, %.loopexit2580 ], [ %.1011662542, %.thread2540 ], [ %.1011662542, %.preheader ], [ %scevgep2933, %.lr.ph2625.split.preheader ], [ %scevgep, %.lr.ph2612.split.preheader ], [ %.21158, %.preheader2583 ], [ %.811642539, %.preheader2578 ], [ %scevgep2940, %.lr.ph2653.split.preheader ], [ %.41160, %.preheader2581 ], [ %.011562704, %.preheader2585 ], [ %i.aku, %._crit_edge2697 ] ; 3 uses
  %i.alu = icmp eq i32 %.02527.lcssa, %i.ms
  br i1 %i.alu, label %bb.au, label %bb.av

bb.au:                                            ; preds = %.thread2543
  %i.alv = getelementptr inbounds nuw i8, ptr %i.mq, i64 48
  %i.alw = load i32, ptr %i.alv, align 8, !tbaa !52
  %i.alx = mul nsw i32 %i.alw, %i.de              ; 2 uses
  %i.aly = load ptr, ptr %i.mq, align 8, !tbaa !19
  %i.alz = sext i32 %i.alx to i64
  %i.ama = getelementptr inbounds nuw i8, ptr %i.mq, i64 16
  %i.amb = load i64, ptr %i.ama, align 8, !tbaa !25
  %i.amc = mul i64 %i.amb, %i.alz
end_hunk_1
begin_hunk_2_@_ZNK4ncnn16Slice_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
  %i.atx = mul i64 %i.atu, %i.atw
  %i.aty = icmp eq i64 %i.atx, 0
  br i1 %i.aty, label %.critedge1335.critedge1364, label %bb.ce

bb.cd:                                            ; preds = %bb.cb
  %i.atz = landingpad { ptr, i32 }
          cleanup
  %i.aua = load ptr, ptr %i.ast, align 8, !tbaa !17 ; 2 uses
  %.not.i1596 = icmp eq ptr %i.aua, null
  br i1 %.not.i1596, label %_ZN4ncnn3MatD2Ev.exit1369, label %bb.cv

bb.ce:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit1708, %_ZN4ncnn3Mat6addrefEv.exit1801
  %i.aub = load ptr, ptr %i.aps, align 8, !tbaa !44 ; 2 uses
  %i.auc = load ptr, ptr %2, align 8, !tbaa !23   ; 2 uses
  %.not2910 = icmp eq ptr %i.aub, %i.auc
  br i1 %.not2910, label %._crit_edge2891, label %.lr.ph2890

.lr.ph2890:                                       ; preds = %bb.ce
  %i.aud = icmp eq i32 %.02529.lcssa, 8
  %i.aue = icmp eq i32 %.02529.lcssa, 4           ; 2 uses
  %i.auf = icmp eq i32 %.02529.lcssa, 1           ; 2 uses
  br label %bb.cf

bb.cf:                                            ; preds = %.lr.ph2890, %bb.co
  %i.aug = phi ptr [ %i.auc, %.lr.ph2890 ], [ %i.chc, %bb.co ] ; 2 uses
  %i.auh = phi ptr [ %i.aub, %.lr.ph2890 ], [ %i.chd, %bb.co ]
  %.010712888 = phi i64 [ 0, %.lr.ph2890 ], [ %i.che, %bb.co ] ; 2 uses
  %.010722887 = phi i32 [ 0, %.lr.ph2890 ], [ %.131085, %bb.co ] ; 3 uses
  %i.aui = getelementptr inbounds nuw [72 x i8], ptr %i.aug, i64 %.010712888 ; 47 uses
  %i.auj = getelementptr inbounds nuw i8, ptr %i.aui, i64 24 ; 6 uses
  %i.auk = load i32, ptr %i.auj, align 8          ; 2 uses
  %i.aul = icmp eq i32 %i.auk, 16
  %or.cond1344 = select i1 %i.aud, i1 %i.aul, i1 false
  br i1 %or.cond1344, label %bb.cg, label %.loopexit2577

bb.cg:                                            ; preds = %bb.cf
  %i.aum = getelementptr inbounds nuw i8, ptr %i.aui, i64 44
  %i.aun = load i32, ptr %i.aum, align 4, !tbaa !43
  %i.auo = getelementptr inbounds nuw i8, ptr %i.aui, i64 48
  %i.aup = load i32, ptr %i.auo, align 8, !tbaa !52
  %i.auq = mul i32 %i.aup, %i.aun
  %i.aur = getelementptr inbounds nuw i8, ptr %i.aui, i64 52
  %i.aus = load i32, ptr %i.aur, align 4, !tbaa !59
  %i.aut = mul i32 %i.auq, %i.aus                 ; 2 uses
  %i.auu = getelementptr inbounds nuw i8, ptr %i.aui, i64 56
  %i.auv = load i32, ptr %i.auu, align 8, !tbaa !50 ; 2 uses
  %i.auw = icmp sgt i32 %i.auv, 0
  br i1 %i.auw, label %.noexc1797.lr.ph, label %.thread2565

.noexc1797.lr.ph:                                 ; preds = %bb.cg
  %i.aux = load ptr, ptr %5, align 16, !tbaa !19, !noalias !279 ; 2 uses
  %i.auy = load i64, ptr %i.ati, align 16, !tbaa !20, !noalias !279
  %i.auz = load i64, ptr %i.asx, align 16, !tbaa !25, !noalias !279
  %factor.op.mul2734 = mul i64 %i.auy, %i.auz     ; 2 uses
  %i.ava = load ptr, ptr %i.aui, align 8, !tbaa !19, !noalias !280
  %i.avb = getelementptr inbounds nuw i8, ptr %i.aui, i64 64
  %i.avc = load i64, ptr %i.avb, align 8, !tbaa !20, !noalias !280
  %i.avd = getelementptr inbounds nuw i8, ptr %i.aui, i64 16
  %i.ave = load i64, ptr %i.avd, align 8, !tbaa !25, !noalias !280
  %factor.op.mul2738 = mul i64 %i.avc, %i.ave
  %i.avf = icmp sgt i32 %i.aut, 0
  %i.avg = sext i32 %.010722887 to i64
  %wide.trip.count2975 = zext nneg i32 %i.auv to i64
  br label %.noexc1797

.noexc1797:                                       ; preds = %.noexc1797.lr.ph, %._crit_edge2730
  %indvars.iv2970 = phi i64 [ %i.avg, %.noexc1797.lr.ph ], [ %indvars.iv.next2971, %._crit_edge2730 ] ; 3 uses
  %indvars.iv2968 = phi i64 [ 0, %.noexc1797.lr.ph ], [ %indvars.iv.next2969, %._crit_edge2730 ] ; 2 uses
  br i1 %i.avf, label %.lr.ph2729.preheader, label %._crit_edge2730

.lr.ph2729.preheader:                             ; preds = %.noexc1797
  %.reass2739 = mul i64 %factor.op.mul2738, %indvars.iv2968
  %i.avh = getelementptr inbounds nuw i8, ptr %i.ava, i64 %.reass2739
  %i.avi = add nsw i64 %indvars.iv2970, 1
  %.reass2737 = mul i64 %factor.op.mul2734, %i.avi
  %i.avj = getelementptr inbounds nuw i8, ptr %i.aux, i64 %.reass2737
  %.reass2735 = mul i64 %factor.op.mul2734, %indvars.iv2970
  %i.avk = getelementptr inbounds nuw i8, ptr %i.aux, i64 %.reass2735
  br label %.lr.ph2729

._crit_edge2730:                                  ; preds = %.lr.ph2729, %.noexc1797
  %indvars.iv.next2971 = add nsw i64 %indvars.iv2970, 2 ; 2 uses
  %indvars.iv.next2969 = add nuw nsw i64 %indvars.iv2968, 1 ; 2 uses
  %exitcond2976.not = icmp eq i64 %indvars.iv.next2969, %wide.trip.count2975
  br i1 %exitcond2976.not, label %.loopexit2577.loopexit, label %.noexc1797, !llvm.loop !142

.lr.ph2729:                                       ; preds = %.lr.ph2729.preheader, %.lr.ph2729
  %.010662728 = phi i32 [ %i.axh, %.lr.ph2729 ], [ 0, %.lr.ph2729.preheader ]
  %.010672727 = phi ptr [ %i.axg, %.lr.ph2729 ], [ %i.avh, %.lr.ph2729.preheader ] ; 17 uses
  %.010682726 = phi ptr [ %i.axf, %.lr.ph2729 ], [ %i.avj, %.lr.ph2729.preheader ] ; 9 uses
  %.010692725 = phi ptr [ %i.axe, %.lr.ph2729 ], [ %i.avk, %.lr.ph2729.preheader ] ; 9 uses
  %i.avl = load float, ptr %.010692725, align 4, !tbaa !233
  store float %i.avl, ptr %.010672727, align 4, !tbaa !233
  %i.avm = getelementptr inbounds nuw i8, ptr %.010692725, i64 4
  %i.avn = load float, ptr %i.avm, align 4, !tbaa !233
  %i.avo = getelementptr inbounds nuw i8, ptr %.010672727, i64 4
  store float %i.avn, ptr %i.avo, align 4, !tbaa !233
  %i.avp = getelementptr inbounds nuw i8, ptr %.010692725, i64 8
  %i.avq = load float, ptr %i.avp, align 4, !tbaa !233
  %i.avr = getelementptr inbounds nuw i8, ptr %.010672727, i64 8
  store float %i.avq, ptr %i.avr, align 4, !tbaa !233
  %i.avs = getelementptr inbounds nuw i8, ptr %.010692725, i64 12
  %i.avt = load float, ptr %i.avs, align 4, !tbaa !233
  %i.avu = getelementptr inbounds nuw i8, ptr %.010672727, i64 12
  store float %i.avt, ptr %i.avu, align 4, !tbaa !233
  %i.avv = getelementptr inbounds nuw i8, ptr %.010692725, i64 16
  %i.avw = load float, ptr %i.avv, align 4, !tbaa !233
  %i.avx = getelementptr inbounds nuw i8, ptr %.010672727, i64 16
  store float %i.avw, ptr %i.avx, align 4, !tbaa !233
  %i.avy = getelementptr inbounds nuw i8, ptr %.010692725, i64 20
  %i.avz = load float, ptr %i.avy, align 4, !tbaa !233
  %i.awa = getelementptr inbounds nuw i8, ptr %.010672727, i64 20
  store float %i.avz, ptr %i.awa, align 4, !tbaa !233
  %i.awb = getelementptr inbounds nuw i8, ptr %.010692725, i64 24
  %i.awc = load float, ptr %i.awb, align 4, !tbaa !233
  %i.awd = getelementptr inbounds nuw i8, ptr %.010672727, i64 24
  store float %i.awc, ptr %i.awd, align 4, !tbaa !233
  %i.awe = getelementptr inbounds nuw i8, ptr %.010692725, i64 28
  %i.awf = load float, ptr %i.awe, align 4, !tbaa !233
  %i.awg = getelementptr inbounds nuw i8, ptr %.010672727, i64 28
  store float %i.awf, ptr %i.awg, align 4, !tbaa !233
  %i.awh = load float, ptr %.010682726, align 4, !tbaa !233
  %i.awi = getelementptr inbounds nuw i8, ptr %.010672727, i64 32
  store float %i.awh, ptr %i.awi, align 4, !tbaa !233
  %i.awj = getelementptr inbounds nuw i8, ptr %.010682726, i64 4
  %i.awk = load float, ptr %i.awj, align 4, !tbaa !233
  %i.awl = getelementptr inbounds nuw i8, ptr %.010672727, i64 36
  store float %i.awk, ptr %i.awl, align 4, !tbaa !233
  %i.awm = getelementptr inbounds nuw i8, ptr %.010682726, i64 8
  %i.awn = load float, ptr %i.awm, align 4, !tbaa !233
  %i.awo = getelementptr inbounds nuw i8, ptr %.010672727, i64 40
  store float %i.awn, ptr %i.awo, align 4, !tbaa !233
  %i.awp = getelementptr inbounds nuw i8, ptr %.010682726, i64 12
  %i.awq = load float, ptr %i.awp, align 4, !tbaa !233
  %i.awr = getelementptr inbounds nuw i8, ptr %.010672727, i64 44
  store float %i.awq, ptr %i.awr, align 4, !tbaa !233
  %i.aws = getelementptr inbounds nuw i8, ptr %.010682726, i64 16
  %i.awt = load float, ptr %i.aws, align 4, !tbaa !233
  %i.awu = getelementptr inbounds nuw i8, ptr %.010672727, i64 48
  store float %i.awt, ptr %i.awu, align 4, !tbaa !233
  %i.awv = getelementptr inbounds nuw i8, ptr %.010682726, i64 20
  %i.aww = load float, ptr %i.awv, align 4, !tbaa !233
  %i.awx = getelementptr inbounds nuw i8, ptr %.010672727, i64 52
  store float %i.aww, ptr %i.awx, align 4, !tbaa !233
  %i.awy = getelementptr inbounds nuw i8, ptr %.010682726, i64 24
  %i.awz = load float, ptr %i.awy, align 4, !tbaa !233
  %i.axa = getelementptr inbounds nuw i8, ptr %.010672727, i64 56
  store float %i.awz, ptr %i.axa, align 4, !tbaa !233
  %i.axb = getelementptr inbounds nuw i8, ptr %.010682726, i64 28
  %i.axc = load float, ptr %i.axb, align 4, !tbaa !233
  %i.axd = getelementptr inbounds nuw i8, ptr %.010672727, i64 60
  store float %i.axc, ptr %i.axd, align 4, !tbaa !233
  %i.axe = getelementptr inbounds nuw i8, ptr %.010692725, i64 32
  %i.axf = getelementptr inbounds nuw i8, ptr %.010682726, i64 32
  %i.axg = getelementptr inbounds nuw i8, ptr %.010672727, i64 64
  %i.axh = add nuw nsw i32 %.010662728, 1         ; 2 uses
  %exitcond2967.not = icmp eq i32 %i.axh, %i.aut
  br i1 %exitcond2967.not, label %._crit_edge2730, label %.lr.ph2729, !llvm.loop !143

.loopexit2577.loopexit:                           ; preds = %._crit_edge2730
  %i.axi = trunc nsw i64 %indvars.iv.next2971 to i32
  br label %.loopexit2577

.loopexit2577:                                    ; preds = %.loopexit2577.loopexit, %bb.cf
  %.21074 = phi i32 [ %.010722887, %bb.cf ], [ %i.axi, %.loopexit2577.loopexit ] ; 4 uses
  br i1 %i.aue, label %bb.ch, label %.loopexit2576

bb.ch:                                            ; preds = %.loopexit2577
  %i.axj = load i32, ptr %i.auj, align 8, !tbaa !27 ; 2 uses
  %i.axk = icmp eq i32 %i.axj, 16
  br i1 %i.axk, label %bb.ci, label %.thread2552

bb.ci:                                            ; preds = %bb.ch
  %i.axl = getelementptr inbounds nuw i8, ptr %i.aui, i64 44
  %i.axm = load i32, ptr %i.axl, align 4, !tbaa !43
  %i.axn = getelementptr inbounds nuw i8, ptr %i.aui, i64 48
  %i.axo = load i32, ptr %i.axn, align 8, !tbaa !52
  %i.axp = mul i32 %i.axo, %i.axm
  %i.axq = getelementptr inbounds nuw i8, ptr %i.aui, i64 52
  %i.axr = load i32, ptr %i.axq, align 4, !tbaa !59
  %i.axs = mul i32 %i.axp, %i.axr                 ; 5 uses
  %i.axt = getelementptr inbounds nuw i8, ptr %i.aui, i64 56
  %i.axu = load i32, ptr %i.axt, align 8, !tbaa !50 ; 2 uses
  %i.axv = icmp sgt i32 %i.axu, 0
  br i1 %i.axv, label %.noexc1791.lr.ph, label %thread-pre-split

.noexc1791.lr.ph:                                 ; preds = %bb.ci
  %i.axw = load ptr, ptr %5, align 16, !tbaa !19, !noalias !281 ; 12 uses
  %i.axx = load i64, ptr %i.ati, align 16, !tbaa !20, !noalias !281 ; 7 uses
  %i.axy = load i64, ptr %i.asx, align 16, !tbaa !25, !noalias !281 ; 7 uses
  %factor.op.mul2751 = mul i64 %i.axx, %i.axy     ; 4 uses
  %i.axz = load ptr, ptr %i.aui, align 8, !tbaa !19, !noalias !282 ; 3 uses
  %i.aya = getelementptr inbounds nuw i8, ptr %i.aui, i64 64
  %i.ayb = load i64, ptr %i.aya, align 8, !tbaa !20, !noalias !282 ; 3 uses
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.aui, i64 16
  %i.ayd = load i64, ptr %i.ayc, align 8, !tbaa !25, !noalias !282 ; 3 uses
  %factor.op.mul2759 = mul i64 %i.ayb, %i.ayd
  %i.aye = icmp sgt i32 %i.axs, 0
  %i.ayf = sext i32 %.21074 to i64                ; 9 uses
  %wide.trip.count2985 = zext nneg i32 %i.axu to i64 ; 3 uses
  %8 = shl i64 %i.axy, 2
  %9 = mul i64 %8, %i.axx
  %10 = mul i64 %i.ayd, %i.ayb
  %scevgep4903 = getelementptr i8, ptr %i.axw, i64 16
  %i.ayg = mul i64 %i.axy, %i.axx
  %i.ayh = shl nuw nsw i64 %wide.trip.count2985, 2 ; 4 uses
  %i.ayi = add nsw i64 %i.ayh, -4
  %i.ayj = add nsw i64 %i.ayi, %i.ayf
  %i.ayk = mul i64 %i.ayg, %i.ayj
  %i.ayl = add i32 %i.axs, -1
  %i.aym = zext i32 %i.ayl to i64                 ; 2 uses
  %i.ayn = shl nuw nsw i64 %i.aym, 4              ; 4 uses
  %i.ayo = getelementptr i8, ptr %scevgep4903, i64 %i.ayk
  %scevgep4904 = getelementptr i8, ptr %i.ayo, i64 %i.ayn
  %i.ayp = mul i64 %i.axy, %i.axx                 ; 2 uses
  %i.ayq = mul i64 %i.ayp, %i.ayf
  %scevgep4905 = getelementptr i8, ptr %i.axw, i64 %i.ayq
  %scevgep4906 = getelementptr i8, ptr %i.axw, i64 16
  %i.ayr = add nsw i64 %i.ayh, -3
  %i.ays = add nsw i64 %i.ayr, %i.ayf
  %i.ayt = mul i64 %i.ayp, %i.ays
  %i.ayu = getelementptr i8, ptr %scevgep4906, i64 %i.ayt
  %scevgep4907 = getelementptr i8, ptr %i.ayu, i64 %i.ayn
  %i.ayv = mul i64 %i.axy, %i.axx                 ; 2 uses
  %i.ayw = add nsw i64 %i.ayf, 1
  %i.ayx = mul i64 %i.ayv, %i.ayw
  %scevgep4908 = getelementptr i8, ptr %i.axw, i64 %i.ayx
  %scevgep4909 = getelementptr i8, ptr %i.axw, i64 16
  %i.ayy = add nsw i64 %i.ayh, -2
  %i.ayz = add nsw i64 %i.ayy, %i.ayf
  %i.aza = mul i64 %i.ayv, %i.ayz
  %i.azb = getelementptr i8, ptr %scevgep4909, i64 %i.aza
  %scevgep4910 = getelementptr i8, ptr %i.azb, i64 %i.ayn
  %i.azc = mul i64 %i.axy, %i.axx                 ; 2 uses
  %i.azd = add nsw i64 %i.ayf, 2
  %i.aze = mul i64 %i.azc, %i.azd
  %scevgep4911 = getelementptr i8, ptr %i.axw, i64 %i.aze
  %scevgep4912 = getelementptr i8, ptr %i.axw, i64 16
  %i.azf = add nsw i64 %i.ayh, -1
  %i.azg = add nsw i64 %i.azf, %i.ayf
  %i.azh = mul i64 %i.azc, %i.azg
  %i.azi = getelementptr i8, ptr %scevgep4912, i64 %i.azh
  %scevgep4913 = getelementptr i8, ptr %i.azi, i64 %i.ayn
  %11 = mul i64 %i.axy, %i.axx
  %i.azj = add nsw i64 %i.ayf, 3
  %i.azk = mul i64 %11, %i.azj
  %scevgep4914 = getelementptr i8, ptr %i.axw, i64 %i.azk
  %scevgep4915 = getelementptr i8, ptr %i.axz, i64 64
  %i.azl = mul i64 %i.ayd, %i.ayb
  %i.azm = add nsw i64 %wide.trip.count2985, -1
  %i.azn = mul i64 %i.azl, %i.azm
  %i.azo = shl nuw nsw i64 %i.aym, 6
  %i.azp = getelementptr i8, ptr %scevgep4915, i64 %i.azn
  %scevgep4916 = getelementptr i8, ptr %i.azp, i64 %i.azo
  %i.azq = insertelement <4 x ptr> poison, ptr %i.axz, i64 0
  %i.azr = shufflevector <4 x ptr> %i.azq, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.azs = insertelement <4 x ptr> poison, ptr %scevgep4913, i64 0
  %i.azt = insertelement <4 x ptr> %i.azs, ptr %scevgep4910, i64 1
  %i.azu = insertelement <4 x ptr> %i.azt, ptr %scevgep4907, i64 2
  %i.azv = insertelement <4 x ptr> %i.azu, ptr %scevgep4904, i64 3
  %i.azw = insertelement <4 x ptr> poison, ptr %scevgep4914, i64 0
  %i.azx = insertelement <4 x ptr> %i.azw, ptr %scevgep4911, i64 1
  %i.azy = insertelement <4 x ptr> %i.azx, ptr %scevgep4908, i64 2
  %i.azz = insertelement <4 x ptr> %i.azy, ptr %scevgep4905, i64 3
  %i.baa = insertelement <4 x ptr> poison, ptr %scevgep4916, i64 0
  %i.bab = shufflevector <4 x ptr> %i.baa, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bac = zext nneg i32 %i.axs to i64            ; 2 uses
  %min.iters.check4918 = icmp ult i32 %i.axs, 8
  %i.bad = icmp ult <4 x ptr> %i.azr, %i.azv
  %i.bae = icmp ult <4 x ptr> %i.azz, %i.bab
  %i.baf = or i64 %9, %10
  %i.bag = icmp slt i64 %i.baf, 0
  %i.bah = and <4 x i1> %i.bad, %i.bae
  %i.bai = bitcast <4 x i1> %i.bah to i4
  %i.baj = icmp ne i4 %i.bai, 0
  %op.rdx4994 = or i1 %i.baj, %i.bag
  %n.vec4938 = and i64 %i.bac, 2147483640         ; 5 uses
  %i.bak = trunc nuw nsw i64 %n.vec4938 to i32
  %i.bal = shl nuw nsw i64 %n.vec4938, 6
  %i.bam = shl nuw nsw i64 %n.vec4938, 4          ; 4 uses
  %cmp.n4985 = icmp eq i64 %n.vec4938, %i.bac
  br label %.noexc1791

.noexc1791:                                       ; preds = %.noexc1791.lr.ph, %._crit_edge2747
  %indvars.iv2980 = phi i64 [ %i.ayf, %.noexc1791.lr.ph ], [ %indvars.iv.next2981, %._crit_edge2747 ] ; 5 uses
  %indvars.iv2978 = phi i64 [ 0, %.noexc1791.lr.ph ], [ %indvars.iv.next2979, %._crit_edge2747 ] ; 2 uses
  br i1 %i.aye, label %.lr.ph2746.preheader, label %._crit_edge2747

.lr.ph2746.preheader:                             ; preds = %.noexc1791
  %.reass2760 = mul i64 %factor.op.mul2759, %indvars.iv2978
  %i.ban = getelementptr inbounds nuw i8, ptr %i.axz, i64 %.reass2760 ; 4 uses
  %i.bao = add nsw i64 %indvars.iv2980, 3
  %.reass2758 = mul i64 %factor.op.mul2751, %i.bao
  %i.bap = getelementptr inbounds nuw i8, ptr %i.axw, i64 %.reass2758 ; 4 uses
  %i.baq = add nsw i64 %indvars.iv2980, 2
  %.reass2756 = mul i64 %factor.op.mul2751, %i.baq
  %i.bar = getelementptr inbounds nuw i8, ptr %i.axw, i64 %.reass2756 ; 4 uses
  %i.bas = add nsw i64 %indvars.iv2980, 1
  %.reass2754 = mul i64 %factor.op.mul2751, %i.bas
  %i.bat = getelementptr inbounds nuw i8, ptr %i.axw, i64 %.reass2754 ; 4 uses
  %.reass2752 = mul i64 %factor.op.mul2751, %indvars.iv2980
  %i.bau = getelementptr inbounds nuw i8, ptr %i.axw, i64 %.reass2752 ; 4 uses
  br i1 %min.iters.check4918, label %.lr.ph2746.preheader5004, label %vector.memcheck4919

vector.memcheck4919:                              ; preds = %.lr.ph2746.preheader
  br i1 %op.rdx4994, label %.lr.ph2746.preheader5004, label %vector.ph4937

vector.ph4937:                                    ; preds = %vector.memcheck4919
  %i.bav = getelementptr i8, ptr %i.ban, i64 %i.bal
  %i.baw = getelementptr i8, ptr %i.bap, i64 %i.bam
  %i.bax = getelementptr i8, ptr %i.bar, i64 %i.bam
  %i.bay = getelementptr i8, ptr %i.bat, i64 %i.bam
  %i.baz = getelementptr i8, ptr %i.bau, i64 %i.bam
  br label %vector.body4939

vector.body4939:                                  ; preds = %vector.body4939, %vector.ph4937
  %index4940 = phi i64 [ 0, %vector.ph4937 ], [ %index.next4982, %vector.body4939 ] ; 2 uses
  %pointer.phi4941 = phi ptr [ %i.ban, %vector.ph4937 ], [ %ptr.ind4983, %vector.body4939 ] ; 2 uses
  %vector.gep4942 = getelementptr i8, ptr %pointer.phi4941, <8 x i64> <i64 0, i64 64, i64 128, i64 192, i64 256, i64 320, i64 384, i64 448> ; 16 uses
  %i.bba = shl i64 %index4940, 4                  ; 4 uses
  %next.gep4943 = getelementptr i8, ptr %i.bap, i64 %i.bba
  %next.gep4944 = getelementptr i8, ptr %i.bar, i64 %i.bba
  %next.gep4945 = getelementptr i8, ptr %i.bat, i64 %i.bba
  %next.gep4946 = getelementptr i8, ptr %i.bau, i64 %i.bba
  %wide.vec4947 = load <32 x float>, ptr %next.gep4946, align 4, !tbaa !233, !alias.scope !283 ; 4 uses
  %strided.vec4948 = shufflevector <32 x float> %wide.vec4947, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec4949 = shufflevector <32 x float> %wide.vec4947, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec4950 = shufflevector <32 x float> %wide.vec4947, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec4951 = shufflevector <32 x float> %wide.vec4947, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec4948, <8 x ptr> align 4 %vector.gep4942, <8 x i1> splat (i1 true)), !tbaa !233, !alias.scope !284, !noalias !285
  %wide.gep4952 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep4942, i64 4
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec4949, <8 x ptr> align 4 %wide.gep4952, <8 x i1> splat (i1 true)), !tbaa !233, !alias.scope !284, !noalias !285
  %wide.gep4953 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep4942, i64 8
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec4950, <8 x ptr> align 4 %wide.gep4953, <8 x i1> splat (i1 true)), !tbaa !233, !alias.scope !284, !noalias !285
  %wide.gep4954 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep4942, i64 12
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec4951, <8 x ptr> align 4 %wide.gep4954, <8 x i1> splat (i1 true)), !tbaa !233, !alias.scope !284, !noalias !285
  %wide.vec4955 = load <32 x float>, ptr %next.gep4945, align 4, !tbaa !233, !alias.scope !286 ; 4 uses
  %strided.vec4956 = shufflevector <32 x float> %wide.vec4955, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec4957 = shufflevector <32 x float> %wide.vec4955, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec4958 = shufflevector <32 x float> %wide.vec4955, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec4959 = shufflevector <32 x float> %wide.vec4955, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %wide.gep4960 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep4942, i64 16
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec4956, <8 x ptr> align 4 %wide.gep4960, <8 x i1> splat (i1 true)), !tbaa !233, !alias.scope !284, !noalias !285
  %wide.gep4961 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep4942, i64 20
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec4957, <8 x ptr> align 4 %wide.gep4961, <8 x i1> splat (i1 true)), !tbaa !233, !alias.scope !284, !noalias !285
  %wide.gep4962 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep4942, i64 24
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec4958, <8 x ptr> align 4 %wide.gep4962, <8 x i1> splat (i1 true)), !tbaa !233, !alias.scope !284, !noalias !285
  %wide.gep4963 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep4942, i64 28
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec4959, <8 x ptr> align 4 %wide.gep4963, <8 x i1> splat (i1 true)), !tbaa !233, !alias.scope !284, !noalias !285
  %wide.vec4964 = load <32 x float>, ptr %next.gep4944, align 4, !tbaa !233, !alias.scope !287 ; 4 uses
  %strided.vec4965 = shufflevector <32 x float> %wide.vec4964, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec4966 = shufflevector <32 x float> %wide.vec4964, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec4967 = shufflevector <32 x float> %wide.vec4964, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec4968 = shufflevector <32 x float> %wide.vec4964, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %wide.gep4969 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep4942, i64 32
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec4965, <8 x ptr> align 4 %wide.gep4969, <8 x i1> splat (i1 true)), !tbaa !233, !alias.scope !284, !noalias !285
  %wide.gep4970 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep4942, i64 36
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec4966, <8 x ptr> align 4 %wide.gep4970, <8 x i1> splat (i1 true)), !tbaa !233, !alias.scope !284, !noalias !285
  %wide.gep4971 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep4942, i64 40
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec4967, <8 x ptr> align 4 %wide.gep4971, <8 x i1> splat (i1 true)), !tbaa !233, !alias.scope !284, !noalias !285
  %wide.gep4972 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep4942, i64 44
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec4968, <8 x ptr> align 4 %wide.gep4972, <8 x i1> splat (i1 true)), !tbaa !233, !alias.scope !284, !noalias !285
  %wide.vec4973 = load <32 x float>, ptr %next.gep4943, align 4, !tbaa !233, !alias.scope !288 ; 4 uses
  %strided.vec4974 = shufflevector <32 x float> %wide.vec4973, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec4975 = shufflevector <32 x float> %wide.vec4973, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec4976 = shufflevector <32 x float> %wide.vec4973, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec4977 = shufflevector <32 x float> %wide.vec4973, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %wide.gep4978 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep4942, i64 48
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec4974, <8 x ptr> align 4 %wide.gep4978, <8 x i1> splat (i1 true)), !tbaa !233, !alias.scope !284, !noalias !285
  %wide.gep4979 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep4942, i64 52
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec4975, <8 x ptr> align 4 %wide.gep4979, <8 x i1> splat (i1 true)), !tbaa !233, !alias.scope !284, !noalias !285
  %wide.gep4980 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep4942, i64 56
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec4976, <8 x ptr> align 4 %wide.gep4980, <8 x i1> splat (i1 true)), !tbaa !233, !alias.scope !284, !noalias !285
  %wide.gep4981 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep4942, i64 60
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec4977, <8 x ptr> align 4 %wide.gep4981, <8 x i1> splat (i1 true)), !tbaa !233, !alias.scope !284, !noalias !285
  %index.next4982 = add nuw i64 %index4940, 8     ; 2 uses
  %ptr.ind4983 = getelementptr i8, ptr %pointer.phi4941, i64 512
  %i.bbb = icmp eq i64 %index.next4982, %n.vec4938
  br i1 %i.bbb, label %middle.block4984, label %vector.body4939, !llvm.loop !154

middle.block4984:                                 ; preds = %vector.body4939
  br i1 %cmp.n4985, label %._crit_edge2747, label %.lr.ph2746.preheader5004

.lr.ph2746.preheader5004:                         ; preds = %vector.memcheck4919, %.lr.ph2746.preheader, %middle.block4984
  %.010592745.ph = phi i32 [ 0, %vector.memcheck4919 ], [ 0, %.lr.ph2746.preheader ], [ %i.bak, %middle.block4984 ]
  %.010602744.ph = phi ptr [ %i.ban, %vector.memcheck4919 ], [ %i.ban, %.lr.ph2746.preheader ], [ %i.bav, %middle.block4984 ]
  %.010612743.ph = phi ptr [ %i.bap, %vector.memcheck4919 ], [ %i.bap, %.lr.ph2746.preheader ], [ %i.baw, %middle.block4984 ]
  %.010622742.ph = phi ptr [ %i.bar, %vector.memcheck4919 ], [ %i.bar, %.lr.ph2746.preheader ], [ %i.bax, %middle.block4984 ]
  %.010632741.ph = phi ptr [ %i.bat, %vector.memcheck4919 ], [ %i.bat, %.lr.ph2746.preheader ], [ %i.bay, %middle.block4984 ]
  %.010642740.ph = phi ptr [ %i.bau, %vector.memcheck4919 ], [ %i.bau, %.lr.ph2746.preheader ], [ %i.baz, %middle.block4984 ]
  br label %.lr.ph2746

._crit_edge2747:                                  ; preds = %.lr.ph2746, %middle.block4984, %.noexc1791
  %indvars.iv.next2981 = add nsw i64 %indvars.iv2980, 4 ; 2 uses
  %indvars.iv.next2979 = add nuw nsw i64 %indvars.iv2978, 1 ; 2 uses
  %exitcond2986.not = icmp eq i64 %indvars.iv.next2979, %wide.trip.count2985
  br i1 %exitcond2986.not, label %.loopexit2576.loopexit, label %.noexc1791, !llvm.loop !155

.lr.ph2746:                                       ; preds = %.lr.ph2746.preheader5004, %.lr.ph2746
  %.010592745 = phi i32 [ %i.bcy, %.lr.ph2746 ], [ %.010592745.ph, %.lr.ph2746.preheader5004 ]
  %.010602744 = phi ptr [ %i.bcx, %.lr.ph2746 ], [ %.010602744.ph, %.lr.ph2746.preheader5004 ] ; 17 uses
  %.010612743 = phi ptr [ %i.bcw, %.lr.ph2746 ], [ %.010612743.ph, %.lr.ph2746.preheader5004 ] ; 5 uses
  %.010622742 = phi ptr [ %i.bcv, %.lr.ph2746 ], [ %.010622742.ph, %.lr.ph2746.preheader5004 ] ; 5 uses
  %.010632741 = phi ptr [ %i.bcu, %.lr.ph2746 ], [ %.010632741.ph, %.lr.ph2746.preheader5004 ] ; 5 uses
  %.010642740 = phi ptr [ %i.bct, %.lr.ph2746 ], [ %.010642740.ph, %.lr.ph2746.preheader5004 ] ; 5 uses
  %i.bbc = load float, ptr %.010642740, align 4, !tbaa !233
  store float %i.bbc, ptr %.010602744, align 4, !tbaa !233
  %i.bbd = getelementptr inbounds nuw i8, ptr %.010642740, i64 4
  %i.bbe = load float, ptr %i.bbd, align 4, !tbaa !233
  %i.bbf = getelementptr inbounds nuw i8, ptr %.010602744, i64 4
  store float %i.bbe, ptr %i.bbf, align 4, !tbaa !233
  %i.bbg = getelementptr inbounds nuw i8, ptr %.010642740, i64 8
  %i.bbh = load float, ptr %i.bbg, align 4, !tbaa !233
  %i.bbi = getelementptr inbounds nuw i8, ptr %.010602744, i64 8
  store float %i.bbh, ptr %i.bbi, align 4, !tbaa !233
  %i.bbj = getelementptr inbounds nuw i8, ptr %.010642740, i64 12
  %i.bbk = load float, ptr %i.bbj, align 4, !tbaa !233
  %i.bbl = getelementptr inbounds nuw i8, ptr %.010602744, i64 12
  store float %i.bbk, ptr %i.bbl, align 4, !tbaa !233
  %i.bbm = load float, ptr %.010632741, align 4, !tbaa !233
  %i.bbn = getelementptr inbounds nuw i8, ptr %.010602744, i64 16
  store float %i.bbm, ptr %i.bbn, align 4, !tbaa !233
  %i.bbo = getelementptr inbounds nuw i8, ptr %.010632741, i64 4
  %i.bbp = load float, ptr %i.bbo, align 4, !tbaa !233
  %i.bbq = getelementptr inbounds nuw i8, ptr %.010602744, i64 20
  store float %i.bbp, ptr %i.bbq, align 4, !tbaa !233
  %i.bbr = getelementptr inbounds nuw i8, ptr %.010632741, i64 8
  %i.bbs = load float, ptr %i.bbr, align 4, !tbaa !233
  %i.bbt = getelementptr inbounds nuw i8, ptr %.010602744, i64 24
  store float %i.bbs, ptr %i.bbt, align 4, !tbaa !233
  %i.bbu = getelementptr inbounds nuw i8, ptr %.010632741, i64 12
  %i.bbv = load float, ptr %i.bbu, align 4, !tbaa !233
  %i.bbw = getelementptr inbounds nuw i8, ptr %.010602744, i64 28
  store float %i.bbv, ptr %i.bbw, align 4, !tbaa !233
  %i.bbx = load float, ptr %.010622742, align 4, !tbaa !233
  %i.bby = getelementptr inbounds nuw i8, ptr %.010602744, i64 32
  store float %i.bbx, ptr %i.bby, align 4, !tbaa !233
  %i.bbz = getelementptr inbounds nuw i8, ptr %.010622742, i64 4
  %i.bca = load float, ptr %i.bbz, align 4, !tbaa !233
  %i.bcb = getelementptr inbounds nuw i8, ptr %.010602744, i64 36
  store float %i.bca, ptr %i.bcb, align 4, !tbaa !233
  %i.bcc = getelementptr inbounds nuw i8, ptr %.010622742, i64 8
  %i.bcd = load float, ptr %i.bcc, align 4, !tbaa !233
  %i.bce = getelementptr inbounds nuw i8, ptr %.010602744, i64 40
  store float %i.bcd, ptr %i.bce, align 4, !tbaa !233
  %i.bcf = getelementptr inbounds nuw i8, ptr %.010622742, i64 12
  %i.bcg = load float, ptr %i.bcf, align 4, !tbaa !233
  %i.bch = getelementptr inbounds nuw i8, ptr %.010602744, i64 44
  store float %i.bcg, ptr %i.bch, align 4, !tbaa !233
  %i.bci = load float, ptr %.010612743, align 4, !tbaa !233
  %i.bcj = getelementptr inbounds nuw i8, ptr %.010602744, i64 48
  store float %i.bci, ptr %i.bcj, align 4, !tbaa !233
  %i.bck = getelementptr inbounds nuw i8, ptr %.010612743, i64 4
  %i.bcl = load float, ptr %i.bck, align 4, !tbaa !233
  %i.bcm = getelementptr inbounds nuw i8, ptr %.010602744, i64 52
  store float %i.bcl, ptr %i.bcm, align 4, !tbaa !233
  %i.bcn = getelementptr inbounds nuw i8, ptr %.010612743, i64 8
  %i.bco = load float, ptr %i.bcn, align 4, !tbaa !233
  %i.bcp = getelementptr inbounds nuw i8, ptr %.010602744, i64 56
  store float %i.bco, ptr %i.bcp, align 4, !tbaa !233
  %i.bcq = getelementptr inbounds nuw i8, ptr %.010612743, i64 12
  %i.bcr = load float, ptr %i.bcq, align 4, !tbaa !233
  %i.bcs = getelementptr inbounds nuw i8, ptr %.010602744, i64 60
  store float %i.bcr, ptr %i.bcs, align 4, !tbaa !233
  %i.bct = getelementptr inbounds nuw i8, ptr %.010642740, i64 16
  %i.bcu = getelementptr inbounds nuw i8, ptr %.010632741, i64 16
  %i.bcv = getelementptr inbounds nuw i8, ptr %.010622742, i64 16
  %i.bcw = getelementptr inbounds nuw i8, ptr %.010612743, i64 16
  %i.bcx = getelementptr inbounds nuw i8, ptr %.010602744, i64 64
  %i.bcy = add nuw nsw i32 %.010592745, 1         ; 2 uses
  %exitcond2977.not = icmp eq i32 %i.bcy, %i.axs
  br i1 %exitcond2977.not, label %._crit_edge2747, label %.lr.ph2746, !llvm.loop !156

.loopexit2576.loopexit:                           ; preds = %._crit_edge2747
  %i.bcz = trunc nsw i64 %indvars.iv.next2981 to i32
  br label %.loopexit2576

.loopexit2576:                                    ; preds = %.loopexit2576.loopexit, %.loopexit2577
  %i.bda = phi i32 [ %i.auk, %.loopexit2577 ], [ 16, %.loopexit2576.loopexit ]
  %.41076 = phi i32 [ %.21074, %.loopexit2577 ], [ %i.bcz, %.loopexit2576.loopexit ] ; 4 uses
  br i1 %i.auf, label %bb.cj, label %.loopexit2575

bb.cj:                                            ; preds = %.loopexit2576
  %i.bdb = load i32, ptr %i.auj, align 8, !tbaa !27 ; 2 uses
  %i.bdc = icmp eq i32 %i.bdb, 16
  br i1 %i.bdc, label %bb.ck, label %.thread2557

bb.ck:                                            ; preds = %bb.cj
  %i.bdd = getelementptr inbounds nuw i8, ptr %i.aui, i64 44
  %i.bde = load i32, ptr %i.bdd, align 4, !tbaa !43
  %i.bdf = getelementptr inbounds nuw i8, ptr %i.aui, i64 48
  %i.bdg = load i32, ptr %i.bdf, align 8, !tbaa !52
  %i.bdh = mul i32 %i.bdg, %i.bde
  %i.bdi = getelementptr inbounds nuw i8, ptr %i.aui, i64 52
  %i.bdj = load i32, ptr %i.bdi, align 4, !tbaa !59
  %i.bdk = mul i32 %i.bdh, %i.bdj                 ; 6 uses
  %i.bdl = getelementptr inbounds nuw i8, ptr %i.aui, i64 56
  %i.bdm = load i32, ptr %i.bdl, align 8, !tbaa !50 ; 2 uses
  %i.bdn = icmp sgt i32 %i.bdm, 0
  br i1 %i.bdn, label %.noexc1781.lr.ph, label %thread-pre-split2560

.noexc1781.lr.ph:                                 ; preds = %bb.ck
  %i.bdo = load ptr, ptr %5, align 16, !tbaa !19, !noalias !289 ; 48 uses
  %i.bdp = load i64, ptr %i.ati, align 16, !tbaa !20, !noalias !289 ; 19 uses
  %i.bdq = load i64, ptr %i.asx, align 16, !tbaa !25, !noalias !289 ; 19 uses
  %factor.op.mul2784 = mul i64 %i.bdp, %i.bdq     ; 16 uses
  %i.bdr = load ptr, ptr %i.aui, align 8, !tbaa !19, !noalias !290 ; 3 uses
  %i.bds = getelementptr inbounds nuw i8, ptr %i.aui, i64 64
  %i.bdt = load i64, ptr %i.bds, align 8, !tbaa !20, !noalias !290 ; 3 uses
  %i.bdu = getelementptr inbounds nuw i8, ptr %i.aui, i64 16
  %i.bdv = load i64, ptr %i.bdu, align 8, !tbaa !25, !noalias !290 ; 3 uses
  %factor.op.mul2816 = mul i64 %i.bdt, %i.bdv
  %i.bdw = icmp sgt i32 %i.bdk, 0
  %i.bdx = sext i32 %.41076 to i64                ; 33 uses
  %wide.trip.count2995 = zext nneg i32 %i.bdm to i64 ; 3 uses
  %12 = shl i64 %i.bdq, 4
  %13 = mul i64 %12, %i.bdp
  %14 = mul i64 %i.bdv, %i.bdt
  %scevgep4613 = getelementptr i8, ptr %i.bdo, i64 4
  %i.bdy = mul i64 %i.bdq, %i.bdp
  %i.bdz = shl nuw nsw i64 %wide.trip.count2995, 4 ; 16 uses
  %i.bea = add nsw i64 %i.bdz, -16
  %i.beb = add nsw i64 %i.bea, %i.bdx
  %i.bec = mul i64 %i.bdy, %i.beb
  %i.bed = add i32 %i.bdk, -1
  %i.bee = zext i32 %i.bed to i64                 ; 2 uses
  %i.bef = shl nuw nsw i64 %i.bee, 2              ; 16 uses
  %i.beg = getelementptr i8, ptr %scevgep4613, i64 %i.bec
  %scevgep4614 = getelementptr i8, ptr %i.beg, i64 %i.bef
  %i.beh = mul i64 %i.bdq, %i.bdp                 ; 2 uses
  %i.bei = mul i64 %i.beh, %i.bdx
  %scevgep4615 = getelementptr i8, ptr %i.bdo, i64 %i.bei
  %scevgep4616 = getelementptr i8, ptr %i.bdo, i64 4
  %i.bej = add nsw i64 %i.bdz, -15
  %i.bek = add nsw i64 %i.bej, %i.bdx
  %i.bel = mul i64 %i.beh, %i.bek
  %i.bem = getelementptr i8, ptr %scevgep4616, i64 %i.bel
  %scevgep4617 = getelementptr i8, ptr %i.bem, i64 %i.bef
  %i.ben = mul i64 %i.bdq, %i.bdp                 ; 2 uses
  %i.beo = add nsw i64 %i.bdx, 1
  %i.bep = mul i64 %i.ben, %i.beo
  %scevgep4618 = getelementptr i8, ptr %i.bdo, i64 %i.bep
  %scevgep4619 = getelementptr i8, ptr %i.bdo, i64 4
  %i.beq = add nsw i64 %i.bdz, -14
  %i.ber = add nsw i64 %i.beq, %i.bdx
  %i.bes = mul i64 %i.ben, %i.ber
  %i.bet = getelementptr i8, ptr %scevgep4619, i64 %i.bes
  %scevgep4620 = getelementptr i8, ptr %i.bet, i64 %i.bef
  %i.beu = mul i64 %i.bdq, %i.bdp                 ; 2 uses
  %i.bev = add nsw i64 %i.bdx, 2
  %i.bew = mul i64 %i.beu, %i.bev
  %scevgep4621 = getelementptr i8, ptr %i.bdo, i64 %i.bew
  %scevgep4622 = getelementptr i8, ptr %i.bdo, i64 4
  %i.bex = add nsw i64 %i.bdz, -13
  %i.bey = add nsw i64 %i.bex, %i.bdx
  %i.bez = mul i64 %i.beu, %i.bey
  %i.bfa = getelementptr i8, ptr %scevgep4622, i64 %i.bez
  %scevgep4623 = getelementptr i8, ptr %i.bfa, i64 %i.bef
  %i.bfb = mul i64 %i.bdq, %i.bdp                 ; 2 uses
  %i.bfc = add nsw i64 %i.bdx, 3
  %i.bfd = mul i64 %i.bfb, %i.bfc
  %scevgep4624 = getelementptr i8, ptr %i.bdo, i64 %i.bfd
  %scevgep4625 = getelementptr i8, ptr %i.bdo, i64 4
  %i.bfe = add nsw i64 %i.bdz, -12
  %i.bff = add nsw i64 %i.bfe, %i.bdx
  %i.bfg = mul i64 %i.bfb, %i.bff
  %i.bfh = getelementptr i8, ptr %scevgep4625, i64 %i.bfg
  %scevgep4626 = getelementptr i8, ptr %i.bfh, i64 %i.bef
  %i.bfi = mul i64 %i.bdq, %i.bdp                 ; 2 uses
  %i.bfj = add nsw i64 %i.bdx, 4
  %i.bfk = mul i64 %i.bfi, %i.bfj
  %scevgep4627 = getelementptr i8, ptr %i.bdo, i64 %i.bfk
  %scevgep4628 = getelementptr i8, ptr %i.bdo, i64 4
  %i.bfl = add nsw i64 %i.bdz, -11
  %i.bfm = add nsw i64 %i.bfl, %i.bdx
  %i.bfn = mul i64 %i.bfi, %i.bfm
  %i.bfo = getelementptr i8, ptr %scevgep4628, i64 %i.bfn
  %scevgep4629 = getelementptr i8, ptr %i.bfo, i64 %i.bef
  %i.bfp = mul i64 %i.bdq, %i.bdp                 ; 2 uses
  %i.bfq = add nsw i64 %i.bdx, 5
  %i.bfr = mul i64 %i.bfp, %i.bfq
  %scevgep4630 = getelementptr i8, ptr %i.bdo, i64 %i.bfr
  %scevgep4631 = getelementptr i8, ptr %i.bdo, i64 4
  %i.bfs = add nsw i64 %i.bdz, -10
  %i.bft = add nsw i64 %i.bfs, %i.bdx
  %i.bfu = mul i64 %i.bfp, %i.bft
  %i.bfv = getelementptr i8, ptr %scevgep4631, i64 %i.bfu
  %scevgep4632 = getelementptr i8, ptr %i.bfv, i64 %i.bef
  %i.bfw = mul i64 %i.bdq, %i.bdp                 ; 2 uses
  %i.bfx = add nsw i64 %i.bdx, 6
  %i.bfy = mul i64 %i.bfw, %i.bfx
  %scevgep4633 = getelementptr i8, ptr %i.bdo, i64 %i.bfy
  %scevgep4634 = getelementptr i8, ptr %i.bdo, i64 4
  %i.bfz = add nsw i64 %i.bdz, -9
  %i.bga = add nsw i64 %i.bfz, %i.bdx
  %i.bgb = mul i64 %i.bfw, %i.bga
  %i.bgc = getelementptr i8, ptr %scevgep4634, i64 %i.bgb
  %scevgep4635 = getelementptr i8, ptr %i.bgc, i64 %i.bef
  %i.bgd = mul i64 %i.bdq, %i.bdp                 ; 2 uses
  %i.bge = add nsw i64 %i.bdx, 7
  %i.bgf = mul i64 %i.bgd, %i.bge
  %scevgep4636 = getelementptr i8, ptr %i.bdo, i64 %i.bgf
  %scevgep4637 = getelementptr i8, ptr %i.bdo, i64 4
  %i.bgg = add nsw i64 %i.bdz, -8
  %i.bgh = add nsw i64 %i.bgg, %i.bdx
  %i.bgi = mul i64 %i.bgd, %i.bgh
  %i.bgj = getelementptr i8, ptr %scevgep4637, i64 %i.bgi
  %scevgep4638 = getelementptr i8, ptr %i.bgj, i64 %i.bef
  %i.bgk = mul i64 %i.bdq, %i.bdp                 ; 2 uses
  %i.bgl = add nsw i64 %i.bdx, 8
  %i.bgm = mul i64 %i.bgk, %i.bgl
  %scevgep4639 = getelementptr i8, ptr %i.bdo, i64 %i.bgm
  %scevgep4640 = getelementptr i8, ptr %i.bdo, i64 4
  %i.bgn = add nsw i64 %i.bdz, -7
  %i.bgo = add nsw i64 %i.bgn, %i.bdx
  %i.bgp = mul i64 %i.bgk, %i.bgo
  %i.bgq = getelementptr i8, ptr %scevgep4640, i64 %i.bgp
  %scevgep4641 = getelementptr i8, ptr %i.bgq, i64 %i.bef
  %i.bgr = mul i64 %i.bdq, %i.bdp                 ; 2 uses
  %i.bgs = add nsw i64 %i.bdx, 9
  %i.bgt = mul i64 %i.bgr, %i.bgs
  %scevgep4642 = getelementptr i8, ptr %i.bdo, i64 %i.bgt
  %scevgep4643 = getelementptr i8, ptr %i.bdo, i64 4
  %i.bgu = add nsw i64 %i.bdz, -6
  %i.bgv = add nsw i64 %i.bgu, %i.bdx
  %i.bgw = mul i64 %i.bgr, %i.bgv
  %i.bgx = getelementptr i8, ptr %scevgep4643, i64 %i.bgw
  %scevgep4644 = getelementptr i8, ptr %i.bgx, i64 %i.bef
  %i.bgy = mul i64 %i.bdq, %i.bdp                 ; 2 uses
  %i.bgz = add nsw i64 %i.bdx, 10
  %i.bha = mul i64 %i.bgy, %i.bgz
  %scevgep4645 = getelementptr i8, ptr %i.bdo, i64 %i.bha
  %scevgep4646 = getelementptr i8, ptr %i.bdo, i64 4
  %i.bhb = add nsw i64 %i.bdz, -5
  %i.bhc = add nsw i64 %i.bhb, %i.bdx
  %i.bhd = mul i64 %i.bgy, %i.bhc
  %i.bhe = getelementptr i8, ptr %scevgep4646, i64 %i.bhd
  %scevgep4647 = getelementptr i8, ptr %i.bhe, i64 %i.bef
  %i.bhf = mul i64 %i.bdq, %i.bdp                 ; 2 uses
  %i.bhg = add nsw i64 %i.bdx, 11
  %i.bhh = mul i64 %i.bhf, %i.bhg
  %scevgep4648 = getelementptr i8, ptr %i.bdo, i64 %i.bhh
  %scevgep4649 = getelementptr i8, ptr %i.bdo, i64 4
  %i.bhi = add nsw i64 %i.bdz, -4
  %i.bhj = add nsw i64 %i.bhi, %i.bdx
  %i.bhk = mul i64 %i.bhf, %i.bhj
  %i.bhl = getelementptr i8, ptr %scevgep4649, i64 %i.bhk
  %scevgep4650 = getelementptr i8, ptr %i.bhl, i64 %i.bef
  %i.bhm = mul i64 %i.bdq, %i.bdp                 ; 2 uses
  %i.bhn = add nsw i64 %i.bdx, 12
  %i.bho = mul i64 %i.bhm, %i.bhn
  %scevgep4651 = getelementptr i8, ptr %i.bdo, i64 %i.bho
  %scevgep4652 = getelementptr i8, ptr %i.bdo, i64 4
  %i.bhp = add nsw i64 %i.bdz, -3
  %i.bhq = add nsw i64 %i.bhp, %i.bdx
  %i.bhr = mul i64 %i.bhm, %i.bhq
  %i.bhs = getelementptr i8, ptr %scevgep4652, i64 %i.bhr
  %scevgep4653 = getelementptr i8, ptr %i.bhs, i64 %i.bef
  %i.bht = mul i64 %i.bdq, %i.bdp                 ; 2 uses
  %i.bhu = add nsw i64 %i.bdx, 13
  %i.bhv = mul i64 %i.bht, %i.bhu
  %scevgep4654 = getelementptr i8, ptr %i.bdo, i64 %i.bhv
  %scevgep4655 = getelementptr i8, ptr %i.bdo, i64 4
  %i.bhw = add nsw i64 %i.bdz, -2
  %i.bhx = add nsw i64 %i.bhw, %i.bdx
  %i.bhy = mul i64 %i.bht, %i.bhx
  %i.bhz = getelementptr i8, ptr %scevgep4655, i64 %i.bhy
  %scevgep4656 = getelementptr i8, ptr %i.bhz, i64 %i.bef
  %i.bia = mul i64 %i.bdq, %i.bdp                 ; 2 uses
  %i.bib = add nsw i64 %i.bdx, 14
  %i.bic = mul i64 %i.bia, %i.bib
  %scevgep4657 = getelementptr i8, ptr %i.bdo, i64 %i.bic
  %scevgep4658 = getelementptr i8, ptr %i.bdo, i64 4
  %i.bid = add nsw i64 %i.bdz, -1
  %i.bie = add nsw i64 %i.bid, %i.bdx
  %i.bif = mul i64 %i.bia, %i.bie
  %i.big = getelementptr i8, ptr %scevgep4658, i64 %i.bif
  %scevgep4659 = getelementptr i8, ptr %i.big, i64 %i.bef
  %15 = mul i64 %i.bdq, %i.bdp
  %i.bih = add nsw i64 %i.bdx, 15
  %i.bii = mul i64 %15, %i.bih
  %scevgep4660 = getelementptr i8, ptr %i.bdo, i64 %i.bii
  %scevgep4661 = getelementptr i8, ptr %i.bdr, i64 64
  %i.bij = mul i64 %i.bdv, %i.bdt
  %i.bik = add nsw i64 %wide.trip.count2995, -1
  %i.bil = mul i64 %i.bij, %i.bik
  %i.bim = shl nuw nsw i64 %i.bee, 6
  %i.bin = getelementptr i8, ptr %scevgep4661, i64 %i.bil
  %scevgep4662 = getelementptr i8, ptr %i.bin, i64 %i.bim
  %i.bio = zext i32 %i.bdk to i64                 ; 5 uses
  %i.bip = insertelement <16 x ptr> poison, ptr %i.bdr, i64 0
  %i.biq = shufflevector <16 x ptr> %i.bip, <16 x ptr> poison, <16 x i32> zeroinitializer
  %i.bir = insertelement <16 x ptr> poison, ptr %scevgep4659, i64 0
  %i.bis = insertelement <16 x ptr> %i.bir, ptr %scevgep4656, i64 1
  %i.bit = insertelement <16 x ptr> %i.bis, ptr %scevgep4653, i64 2
  %i.biu = insertelement <16 x ptr> %i.bit, ptr %scevgep4650, i64 3
  %i.biv = insertelement <16 x ptr> %i.biu, ptr %scevgep4647, i64 4
  %i.biw = insertelement <16 x ptr> %i.biv, ptr %scevgep4644, i64 5
  %i.bix = insertelement <16 x ptr> %i.biw, ptr %scevgep4641, i64 6
  %i.biy = insertelement <16 x ptr> %i.bix, ptr %scevgep4638, i64 7
  %i.biz = insertelement <16 x ptr> %i.biy, ptr %scevgep4635, i64 8
  %i.bja = insertelement <16 x ptr> %i.biz, ptr %scevgep4632, i64 9
  %i.bjb = insertelement <16 x ptr> %i.bja, ptr %scevgep4629, i64 10
  %i.bjc = insertelement <16 x ptr> %i.bjb, ptr %scevgep4626, i64 11
  %i.bjd = insertelement <16 x ptr> %i.bjc, ptr %scevgep4623, i64 12
  %i.bje = insertelement <16 x ptr> %i.bjd, ptr %scevgep4620, i64 13
  %i.bjf = insertelement <16 x ptr> %i.bje, ptr %scevgep4617, i64 14
  %i.bjg = insertelement <16 x ptr> %i.bjf, ptr %scevgep4614, i64 15
  %i.bjh = insertelement <16 x ptr> poison, ptr %scevgep4660, i64 0
  %i.bji = insertelement <16 x ptr> %i.bjh, ptr %scevgep4657, i64 1
  %i.bjj = insertelement <16 x ptr> %i.bji, ptr %scevgep4654, i64 2
  %i.bjk = insertelement <16 x ptr> %i.bjj, ptr %scevgep4651, i64 3
  %i.bjl = insertelement <16 x ptr> %i.bjk, ptr %scevgep4648, i64 4
  %i.bjm = insertelement <16 x ptr> %i.bjl, ptr %scevgep4645, i64 5
  %i.bjn = insertelement <16 x ptr> %i.bjm, ptr %scevgep4642, i64 6
  %i.bjo = insertelement <16 x ptr> %i.bjn, ptr %scevgep4639, i64 7
  %i.bjp = insertelement <16 x ptr> %i.bjo, ptr %scevgep4636, i64 8
  %i.bjq = insertelement <16 x ptr> %i.bjp, ptr %scevgep4633, i64 9
  %i.bjr = insertelement <16 x ptr> %i.bjq, ptr %scevgep4630, i64 10
  %i.bjs = insertelement <16 x ptr> %i.bjr, ptr %scevgep4627, i64 11
  %i.bjt = insertelement <16 x ptr> %i.bjs, ptr %scevgep4624, i64 12
  %i.bju = insertelement <16 x ptr> %i.bjt, ptr %scevgep4621, i64 13
  %i.bjv = insertelement <16 x ptr> %i.bju, ptr %scevgep4618, i64 14
  %i.bjw = insertelement <16 x ptr> %i.bjv, ptr %scevgep4615, i64 15
  %i.bjx = insertelement <16 x ptr> poison, ptr %scevgep4662, i64 0
  %i.bjy = shufflevector <16 x ptr> %i.bjx, <16 x ptr> poison, <16 x i32> zeroinitializer
  %min.iters.check4664 = icmp ult i32 %i.bdk, 8
  %i.bjz = icmp ult <16 x ptr> %i.biq, %i.bjg
  %i.bka = icmp ult <16 x ptr> %i.bjw, %i.bjy
  %i.bkb = or i64 %13, %14
  %i.bkc = icmp slt i64 %i.bkb, 0
  %i.bkd = and <16 x i1> %i.bjz, %i.bka
  %i.bke = bitcast <16 x i1> %i.bkd to i16
  %i.bkf = icmp ne i16 %i.bke, 0
  %op.rdx4993 = or i1 %i.bkf, %i.bkc
  %min.iters.check4732 = icmp ult i32 %i.bdk, 16
  %i.bkg = and i64 %i.bio, 8
  %n.vec4734 = and i64 %i.bio, 2147483632         ; 6 uses
  %i.bkh = trunc nuw nsw i64 %n.vec4734 to i32
  %i.bki = shl nuw nsw i64 %n.vec4734, 6
  %i.bkj = shl nuw nsw i64 %n.vec4734, 2          ; 16 uses
  %cmp.n4789 = icmp eq i64 %n.vec4734, %i.bio
  %min.epilog.iters.check4793.not.not = icmp eq i64 %i.bkg, 0
  %n.vec4797 = and i64 %i.bio, 2147483640         ; 5 uses
  %i.bkk = trunc nuw nsw i64 %n.vec4797 to i32
  %i.bkl = shl nuw nsw i64 %n.vec4797, 6
  %i.bkm = shl nuw nsw i64 %n.vec4797, 2          ; 16 uses
  %cmp.n4852 = icmp eq i64 %n.vec4797, %i.bio
  br label %.noexc1781

.noexc1781:                                       ; preds = %.noexc1781.lr.ph, %._crit_edge2780
  %indvars.iv2990 = phi i64 [ %i.bdx, %.noexc1781.lr.ph ], [ %indvars.iv.next2991, %._crit_edge2780 ] ; 17 uses
  %indvars.iv2988 = phi i64 [ 0, %.noexc1781.lr.ph ], [ %indvars.iv.next2989, %._crit_edge2780 ] ; 2 uses
  br i1 %i.bdw, label %iter.check4790, label %._crit_edge2780

iter.check4790:                                   ; preds = %.noexc1781
  %.reass2817 = mul i64 %factor.op.mul2816, %indvars.iv2988
  %i.bkn = getelementptr inbounds nuw i8, ptr %i.bdr, i64 %.reass2817 ; 6 uses
  %i.bko = add nsw i64 %indvars.iv2990, 15
  %.reass2815 = mul i64 %factor.op.mul2784, %i.bko
  %i.bkp = getelementptr inbounds nuw i8, ptr %i.bdo, i64 %.reass2815 ; 6 uses
  %i.bkq = add nsw i64 %indvars.iv2990, 14
  %.reass2813 = mul i64 %factor.op.mul2784, %i.bkq
  %i.bkr = getelementptr inbounds nuw i8, ptr %i.bdo, i64 %.reass2813 ; 6 uses
  %i.bks = add nsw i64 %indvars.iv2990, 13
  %.reass2811 = mul i64 %factor.op.mul2784, %i.bks
  %i.bkt = getelementptr inbounds nuw i8, ptr %i.bdo, i64 %.reass2811 ; 6 uses
  %i.bku = add nsw i64 %indvars.iv2990, 12
  %.reass2809 = mul i64 %factor.op.mul2784, %i.bku
  %i.bkv = getelementptr inbounds nuw i8, ptr %i.bdo, i64 %.reass2809 ; 6 uses
  %i.bkw = add nsw i64 %indvars.iv2990, 11
  %.reass2807 = mul i64 %factor.op.mul2784, %i.bkw
  %i.bkx = getelementptr inbounds nuw i8, ptr %i.bdo, i64 %.reass2807 ; 6 uses
  %i.bky = add nsw i64 %indvars.iv2990, 10
  %.reass2805 = mul i64 %factor.op.mul2784, %i.bky
  %i.bkz = getelementptr inbounds nuw i8, ptr %i.bdo, i64 %.reass2805 ; 6 uses
  %i.bla = add nsw i64 %indvars.iv2990, 9
  %.reass2803 = mul i64 %factor.op.mul2784, %i.bla
  %i.blb = getelementptr inbounds nuw i8, ptr %i.bdo, i64 %.reass2803 ; 6 uses
  %i.blc = add nsw i64 %indvars.iv2990, 8
  %.reass2801 = mul i64 %factor.op.mul2784, %i.blc
  %i.bld = getelementptr inbounds nuw i8, ptr %i.bdo, i64 %.reass2801 ; 6 uses
  %i.ble = add nsw i64 %indvars.iv2990, 7
  %.reass2799 = mul i64 %factor.op.mul2784, %i.ble
  %i.blf = getelementptr inbounds nuw i8, ptr %i.bdo, i64 %.reass2799 ; 6 uses
  %i.blg = add nsw i64 %indvars.iv2990, 6
  %.reass2797 = mul i64 %factor.op.mul2784, %i.blg
  %i.blh = getelementptr inbounds nuw i8, ptr %i.bdo, i64 %.reass2797 ; 6 uses
  %i.bli = add nsw i64 %indvars.iv2990, 5
  %.reass2795 = mul i64 %factor.op.mul2784, %i.bli
  %i.blj = getelementptr inbounds nuw i8, ptr %i.bdo, i64 %.reass2795 ; 6 uses
  %i.blk = add nsw i64 %indvars.iv2990, 4
  %.reass2793 = mul i64 %factor.op.mul2784, %i.blk
  %i.bll = getelementptr inbounds nuw i8, ptr %i.bdo, i64 %.reass2793 ; 6 uses
  %i.blm = add nsw i64 %indvars.iv2990, 3
  %.reass2791 = mul i64 %factor.op.mul2784, %i.blm
  %i.bln = getelementptr inbounds nuw i8, ptr %i.bdo, i64 %.reass2791 ; 6 uses
  %i.blo = add nsw i64 %indvars.iv2990, 2
  %.reass2789 = mul i64 %factor.op.mul2784, %i.blo
  %i.blp = getelementptr inbounds nuw i8, ptr %i.bdo, i64 %.reass2789 ; 6 uses
  %i.blq = add nsw i64 %indvars.iv2990, 1
  %.reass2787 = mul i64 %factor.op.mul2784, %i.blq
  %i.blr = getelementptr inbounds nuw i8, ptr %i.bdo, i64 %.reass2787 ; 6 uses
  %.reass2785 = mul i64 %factor.op.mul2784, %indvars.iv2990
  %i.bls = getelementptr inbounds nuw i8, ptr %i.bdo, i64 %.reass2785 ; 6 uses
  br i1 %min.iters.check4664, label %.lr.ph2779.preheader, label %vector.memcheck4665

vector.memcheck4665:                              ; preds = %iter.check4790
  br i1 %op.rdx4993, label %.lr.ph2779.preheader, label %vector.main.loop.iter.check4731

vector.main.loop.iter.check4731:                  ; preds = %vector.memcheck4665
  br i1 %min.iters.check4732, label %vec.epilog.ph4794, label %vector.ph4733

vector.ph4733:                                    ; preds = %vector.main.loop.iter.check4731
  %i.blt = getelementptr i8, ptr %i.bkn, i64 %i.bki ; 2 uses
  %i.blu = getelementptr i8, ptr %i.bkp, i64 %i.bkj
  %i.blv = getelementptr i8, ptr %i.bkr, i64 %i.bkj
  %i.blw = getelementptr i8, ptr %i.bkt, i64 %i.bkj
  %i.blx = getelementptr i8, ptr %i.bkv, i64 %i.bkj
  %i.bly = getelementptr i8, ptr %i.bkx, i64 %i.bkj
  %i.blz = getelementptr i8, ptr %i.bkz, i64 %i.bkj
  %i.bma = getelementptr i8, ptr %i.blb, i64 %i.bkj
  %i.bmb = getelementptr i8, ptr %i.bld, i64 %i.bkj
  %i.bmc = getelementptr i8, ptr %i.blf, i64 %i.bkj
  %i.bmd = getelementptr i8, ptr %i.blh, i64 %i.bkj
  %i.bme = getelementptr i8, ptr %i.blj, i64 %i.bkj
  %i.bmf = getelementptr i8, ptr %i.bll, i64 %i.bkj
  %i.bmg = getelementptr i8, ptr %i.bln, i64 %i.bkj
  %i.bmh = getelementptr i8, ptr %i.blp, i64 %i.bkj
  %i.bmi = getelementptr i8, ptr %i.blr, i64 %i.bkj
  %i.bmj = getelementptr i8, ptr %i.bls, i64 %i.bkj
  br label %vector.body4735

vector.body4735:                                  ; preds = %vector.ph4733, %vector.body4735
  %index4736 = phi i64 [ 0, %vector.ph4733 ], [ %index.next4786, %vector.body4735 ] ; 2 uses
  %pointer.phi4737 = phi ptr [ %i.bkn, %vector.ph4733 ], [ %ptr.ind4787, %vector.body4735 ] ; 2 uses
  %vector.gep4738 = getelementptr i8, ptr %pointer.phi4737, <16 x i64> <i64 0, i64 64, i64 128, i64 192, i64 256, i64 320, i64 384, i64 448, i64 512, i64 576, i64 640, i64 704, i64 768, i64 832, i64 896, i64 960> ; 16 uses
  %i.bmk = shl i64 %index4736, 2                  ; 16 uses
  %next.gep4739 = getelementptr i8, ptr %i.bkp, i64 %i.bmk
  %next.gep4740 = getelementptr i8, ptr %i.bkr, i64 %i.bmk
  %next.gep4741 = getelementptr i8, ptr %i.bkt, i64 %i.bmk
  %next.gep4742 = getelementptr i8, ptr %i.bkv, i64 %i.bmk
  %next.gep4743 = getelementptr i8, ptr %i.bkx, i64 %i.bmk
  %next.gep4744 = getelementptr i8, ptr %i.bkz, i64 %i.bmk
  %next.gep4745 = getelementptr i8, ptr %i.blb, i64 %i.bmk
  %next.gep4746 = getelementptr i8, ptr %i.bld, i64 %i.bmk
  %next.gep4747 = getelementptr i8, ptr %i.blf, i64 %i.bmk
  %next.gep4748 = getelementptr i8, ptr %i.blh, i64 %i.bmk
  %next.gep4749 = getelementptr i8, ptr %i.blj, i64 %i.bmk
  %next.gep4750 = getelementptr i8, ptr %i.bll, i64 %i.bmk
  %next.gep4751 = getelementptr i8, ptr %i.bln, i64 %i.bmk
  %next.gep4752 = getelementptr i8, ptr %i.blp, i64 %i.bmk
  %next.gep4753 = getelementptr i8, ptr %i.blr, i64 %i.bmk
  %next.gep4754 = getelementptr i8, ptr %i.bls, i64 %i.bmk
  %wide.load4755 = load <16 x float>, ptr %next.gep4754, align 4, !tbaa !233, !alias.scope !291
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load4755, <16 x ptr> align 4 %vector.gep4738, <16 x i1> splat (i1 true)), !tbaa !233, !alias.scope !292, !noalias !293
  %wide.load4756 = load <16 x float>, ptr %next.gep4753, align 4, !tbaa !233, !alias.scope !294
  %wide.gep4757 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep4738, i64 4
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load4756, <16 x ptr> align 4 %wide.gep4757, <16 x i1> splat (i1 true)), !tbaa !233, !alias.scope !292, !noalias !293
  %wide.load4758 = load <16 x float>, ptr %next.gep4752, align 4, !tbaa !233, !alias.scope !295
  %wide.gep4759 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep4738, i64 8
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load4758, <16 x ptr> align 4 %wide.gep4759, <16 x i1> splat (i1 true)), !tbaa !233, !alias.scope !292, !noalias !293
  %wide.load4760 = load <16 x float>, ptr %next.gep4751, align 4, !tbaa !233, !alias.scope !296
  %wide.gep4761 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep4738, i64 12
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load4760, <16 x ptr> align 4 %wide.gep4761, <16 x i1> splat (i1 true)), !tbaa !233, !alias.scope !292, !noalias !293
  %wide.load4762 = load <16 x float>, ptr %next.gep4750, align 4, !tbaa !233, !alias.scope !297
  %wide.gep4763 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep4738, i64 16
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load4762, <16 x ptr> align 4 %wide.gep4763, <16 x i1> splat (i1 true)), !tbaa !233, !alias.scope !292, !noalias !293
  %wide.load4764 = load <16 x float>, ptr %next.gep4749, align 4, !tbaa !233, !alias.scope !298
  %wide.gep4765 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep4738, i64 20
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load4764, <16 x ptr> align 4 %wide.gep4765, <16 x i1> splat (i1 true)), !tbaa !233, !alias.scope !292, !noalias !293
  %wide.load4766 = load <16 x float>, ptr %next.gep4748, align 4, !tbaa !233, !alias.scope !299
  %wide.gep4767 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep4738, i64 24
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load4766, <16 x ptr> align 4 %wide.gep4767, <16 x i1> splat (i1 true)), !tbaa !233, !alias.scope !292, !noalias !293
  %wide.load4768 = load <16 x float>, ptr %next.gep4747, align 4, !tbaa !233, !alias.scope !300
  %wide.gep4769 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep4738, i64 28
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load4768, <16 x ptr> align 4 %wide.gep4769, <16 x i1> splat (i1 true)), !tbaa !233, !alias.scope !292, !noalias !293
  %wide.load4770 = load <16 x float>, ptr %next.gep4746, align 4, !tbaa !233, !alias.scope !301
  %wide.gep4771 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep4738, i64 32
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load4770, <16 x ptr> align 4 %wide.gep4771, <16 x i1> splat (i1 true)), !tbaa !233, !alias.scope !292, !noalias !293
  %wide.load4772 = load <16 x float>, ptr %next.gep4745, align 4, !tbaa !233, !alias.scope !302
  %wide.gep4773 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep4738, i64 36
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load4772, <16 x ptr> align 4 %wide.gep4773, <16 x i1> splat (i1 true)), !tbaa !233, !alias.scope !292, !noalias !293
  %wide.load4774 = load <16 x float>, ptr %next.gep4744, align 4, !tbaa !233, !alias.scope !303
  %wide.gep4775 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep4738, i64 40
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load4774, <16 x ptr> align 4 %wide.gep4775, <16 x i1> splat (i1 true)), !tbaa !233, !alias.scope !292, !noalias !293
  %wide.load4776 = load <16 x float>, ptr %next.gep4743, align 4, !tbaa !233, !alias.scope !304
  %wide.gep4777 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep4738, i64 44
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load4776, <16 x ptr> align 4 %wide.gep4777, <16 x i1> splat (i1 true)), !tbaa !233, !alias.scope !292, !noalias !293
  %wide.load4778 = load <16 x float>, ptr %next.gep4742, align 4, !tbaa !233, !alias.scope !305
  %wide.gep4779 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep4738, i64 48
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load4778, <16 x ptr> align 4 %wide.gep4779, <16 x i1> splat (i1 true)), !tbaa !233, !alias.scope !292, !noalias !293
  %wide.load4780 = load <16 x float>, ptr %next.gep4741, align 4, !tbaa !233, !alias.scope !306
  %wide.gep4781 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep4738, i64 52
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load4780, <16 x ptr> align 4 %wide.gep4781, <16 x i1> splat (i1 true)), !tbaa !233, !alias.scope !292, !noalias !293
  %wide.load4782 = load <16 x float>, ptr %next.gep4740, align 4, !tbaa !233, !alias.scope !307
  %wide.gep4783 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep4738, i64 56
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load4782, <16 x ptr> align 4 %wide.gep4783, <16 x i1> splat (i1 true)), !tbaa !233, !alias.scope !292, !noalias !293
  %wide.load4784 = load <16 x float>, ptr %next.gep4739, align 4, !tbaa !233, !alias.scope !308
  %wide.gep4785 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep4738, i64 60
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load4784, <16 x ptr> align 4 %wide.gep4785, <16 x i1> splat (i1 true)), !tbaa !233, !alias.scope !292, !noalias !293
  %index.next4786 = add nuw i64 %index4736, 16    ; 2 uses
  %ptr.ind4787 = getelementptr i8, ptr %pointer.phi4737, i64 1024
  %i.bml = icmp eq i64 %index.next4786, %n.vec4734
  br i1 %i.bml, label %middle.block4788, label %vector.body4735, !llvm.loop !179

middle.block4788:                                 ; preds = %vector.body4735
  br i1 %cmp.n4789, label %._crit_edge2780, label %vec.epilog.iter.check4791

vec.epilog.iter.check4791:                        ; preds = %middle.block4788
  br i1 %min.epilog.iters.check4793.not.not, label %.lr.ph2779.preheader, label %vec.epilog.ph4794, !prof !258

vec.epilog.ph4794:                                ; preds = %vector.main.loop.iter.check4731, %vec.epilog.iter.check4791
  %vec.epilog.resume.val4795 = phi i64 [ %n.vec4734, %vec.epilog.iter.check4791 ], [ 0, %vector.main.loop.iter.check4731 ]
  %bc.resume.val4796 = phi ptr [ %i.blt, %vec.epilog.iter.check4791 ], [ %i.bkn, %vector.main.loop.iter.check4731 ]
  %i.bmm = getelementptr i8, ptr %i.bkn, i64 %i.bkl
  %i.bmn = getelementptr i8, ptr %i.bkp, i64 %i.bkm
  %i.bmo = getelementptr i8, ptr %i.bkr, i64 %i.bkm
  %i.bmp = getelementptr i8, ptr %i.bkt, i64 %i.bkm
  %i.bmq = getelementptr i8, ptr %i.bkv, i64 %i.bkm
  %i.bmr = getelementptr i8, ptr %i.bkx, i64 %i.bkm
  %i.bms = getelementptr i8, ptr %i.bkz, i64 %i.bkm
  %i.bmt = getelementptr i8, ptr %i.blb, i64 %i.bkm
  %i.bmu = getelementptr i8, ptr %i.bld, i64 %i.bkm
  %i.bmv = getelementptr i8, ptr %i.blf, i64 %i.bkm
  %i.bmw = getelementptr i8, ptr %i.blh, i64 %i.bkm
  %i.bmx = getelementptr i8, ptr %i.blj, i64 %i.bkm
  %i.bmy = getelementptr i8, ptr %i.bll, i64 %i.bkm
  %i.bmz = getelementptr i8, ptr %i.bln, i64 %i.bkm
  %i.bna = getelementptr i8, ptr %i.blp, i64 %i.bkm
end_hunk_2
begin_hunk_3_@_ZNK4ncnn16Slice_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
  %wide.load4829 = load <8 x float>, ptr %next.gep4811, align 4, !tbaa !233, !alias.scope !299
  %wide.gep4830 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep4801, i64 24
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load4829, <8 x ptr> align 4 %wide.gep4830, <8 x i1> splat (i1 true)), !tbaa !233, !alias.scope !292, !noalias !293
  %wide.load4831 = load <8 x float>, ptr %next.gep4810, align 4, !tbaa !233, !alias.scope !300
  %wide.gep4832 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep4801, i64 28
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load4831, <8 x ptr> align 4 %wide.gep4832, <8 x i1> splat (i1 true)), !tbaa !233, !alias.scope !292, !noalias !293
  %wide.load4833 = load <8 x float>, ptr %next.gep4809, align 4, !tbaa !233, !alias.scope !301
  %wide.gep4834 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep4801, i64 32
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load4833, <8 x ptr> align 4 %wide.gep4834, <8 x i1> splat (i1 true)), !tbaa !233, !alias.scope !292, !noalias !293
  %wide.load4835 = load <8 x float>, ptr %next.gep4808, align 4, !tbaa !233, !alias.scope !302
  %wide.gep4836 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep4801, i64 36
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load4835, <8 x ptr> align 4 %wide.gep4836, <8 x i1> splat (i1 true)), !tbaa !233, !alias.scope !292, !noalias !293
  %wide.load4837 = load <8 x float>, ptr %next.gep4807, align 4, !tbaa !233, !alias.scope !303
  %wide.gep4838 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep4801, i64 40
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load4837, <8 x ptr> align 4 %wide.gep4838, <8 x i1> splat (i1 true)), !tbaa !233, !alias.scope !292, !noalias !293
  %wide.load4839 = load <8 x float>, ptr %next.gep4806, align 4, !tbaa !233, !alias.scope !304
  %wide.gep4840 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep4801, i64 44
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load4839, <8 x ptr> align 4 %wide.gep4840, <8 x i1> splat (i1 true)), !tbaa !233, !alias.scope !292, !noalias !293
  %wide.load4841 = load <8 x float>, ptr %next.gep4805, align 4, !tbaa !233, !alias.scope !305
  %wide.gep4842 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep4801, i64 48
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load4841, <8 x ptr> align 4 %wide.gep4842, <8 x i1> splat (i1 true)), !tbaa !233, !alias.scope !292, !noalias !293
  %wide.load4843 = load <8 x float>, ptr %next.gep4804, align 4, !tbaa !233, !alias.scope !306
  %wide.gep4844 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep4801, i64 52
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load4843, <8 x ptr> align 4 %wide.gep4844, <8 x i1> splat (i1 true)), !tbaa !233, !alias.scope !292, !noalias !293
  %wide.load4845 = load <8 x float>, ptr %next.gep4803, align 4, !tbaa !233, !alias.scope !307
  %wide.gep4846 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep4801, i64 56
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load4845, <8 x ptr> align 4 %wide.gep4846, <8 x i1> splat (i1 true)), !tbaa !233, !alias.scope !292, !noalias !293
  %wide.load4847 = load <8 x float>, ptr %next.gep4802, align 4, !tbaa !233, !alias.scope !308
  %wide.gep4848 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep4801, i64 60
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load4847, <8 x ptr> align 4 %wide.gep4848, <8 x i1> splat (i1 true)), !tbaa !233, !alias.scope !292, !noalias !293
  %index.next4849 = add nuw i64 %index4799, 8     ; 2 uses
  %ptr.ind4850 = getelementptr i8, ptr %pointer.phi4800, i64 512
  %i.bne = icmp eq i64 %index.next4849, %n.vec4797
  br i1 %i.bne, label %vec.epilog.middle.block4851, label %vec.epilog.vector.body4798, !llvm.loop !180

vec.epilog.middle.block4851:                      ; preds = %vec.epilog.vector.body4798
  br i1 %cmp.n4852, label %._crit_edge2780, label %.lr.ph2779.preheader

.lr.ph2779.preheader:                             ; preds = %iter.check4790, %vector.memcheck4665, %vec.epilog.iter.check4791, %vec.epilog.middle.block4851
  %.010402778.ph = phi i32 [ 0, %iter.check4790 ], [ 0, %vector.memcheck4665 ], [ %i.bkh, %vec.epilog.iter.check4791 ], [ %i.bkk, %vec.epilog.middle.block4851 ]
  %.010412777.ph = phi ptr [ %i.bkn, %iter.check4790 ], [ %i.bkn, %vector.memcheck4665 ], [ %i.blt, %vec.epilog.iter.check4791 ], [ %i.bmm, %vec.epilog.middle.block4851 ]
  %.010422776.ph = phi ptr [ %i.bkp, %iter.check4790 ], [ %i.bkp, %vector.memcheck4665 ], [ %i.blu, %vec.epilog.iter.check4791 ], [ %i.bmn, %vec.epilog.middle.block4851 ]
  %.010432775.ph = phi ptr [ %i.bkr, %iter.check4790 ], [ %i.bkr, %vector.memcheck4665 ], [ %i.blv, %vec.epilog.iter.check4791 ], [ %i.bmo, %vec.epilog.middle.block4851 ]
  %.010442774.ph = phi ptr [ %i.bkt, %iter.check4790 ], [ %i.bkt, %vector.memcheck4665 ], [ %i.blw, %vec.epilog.iter.check4791 ], [ %i.bmp, %vec.epilog.middle.block4851 ]
  %.010452773.ph = phi ptr [ %i.bkv, %iter.check4790 ], [ %i.bkv, %vector.memcheck4665 ], [ %i.blx, %vec.epilog.iter.check4791 ], [ %i.bmq, %vec.epilog.middle.block4851 ]
  %.010462772.ph = phi ptr [ %i.bkx, %iter.check4790 ], [ %i.bkx, %vector.memcheck4665 ], [ %i.bly, %vec.epilog.iter.check4791 ], [ %i.bmr, %vec.epilog.middle.block4851 ]
  %.010472771.ph = phi ptr [ %i.bkz, %iter.check4790 ], [ %i.bkz, %vector.memcheck4665 ], [ %i.blz, %vec.epilog.iter.check4791 ], [ %i.bms, %vec.epilog.middle.block4851 ]
  %.010482770.ph = phi ptr [ %i.blb, %iter.check4790 ], [ %i.blb, %vector.memcheck4665 ], [ %i.bma, %vec.epilog.iter.check4791 ], [ %i.bmt, %vec.epilog.middle.block4851 ]
  %.010492769.ph = phi ptr [ %i.bld, %iter.check4790 ], [ %i.bld, %vector.memcheck4665 ], [ %i.bmb, %vec.epilog.iter.check4791 ], [ %i.bmu, %vec.epilog.middle.block4851 ]
  %.010502768.ph = phi ptr [ %i.blf, %iter.check4790 ], [ %i.blf, %vector.memcheck4665 ], [ %i.bmc, %vec.epilog.iter.check4791 ], [ %i.bmv, %vec.epilog.middle.block4851 ]
  %.010512767.ph = phi ptr [ %i.blh, %iter.check4790 ], [ %i.blh, %vector.memcheck4665 ], [ %i.bmd, %vec.epilog.iter.check4791 ], [ %i.bmw, %vec.epilog.middle.block4851 ]
  %.010522766.ph = phi ptr [ %i.blj, %iter.check4790 ], [ %i.blj, %vector.memcheck4665 ], [ %i.bme, %vec.epilog.iter.check4791 ], [ %i.bmx, %vec.epilog.middle.block4851 ]
  %.010532765.ph = phi ptr [ %i.bll, %iter.check4790 ], [ %i.bll, %vector.memcheck4665 ], [ %i.bmf, %vec.epilog.iter.check4791 ], [ %i.bmy, %vec.epilog.middle.block4851 ]
  %.010542764.ph = phi ptr [ %i.bln, %iter.check4790 ], [ %i.bln, %vector.memcheck4665 ], [ %i.bmg, %vec.epilog.iter.check4791 ], [ %i.bmz, %vec.epilog.middle.block4851 ]
  %.010552763.ph = phi ptr [ %i.blp, %iter.check4790 ], [ %i.blp, %vector.memcheck4665 ], [ %i.bmh, %vec.epilog.iter.check4791 ], [ %i.bna, %vec.epilog.middle.block4851 ]
  %.010562762.ph = phi ptr [ %i.blr, %iter.check4790 ], [ %i.blr, %vector.memcheck4665 ], [ %i.bmi, %vec.epilog.iter.check4791 ], [ %i.bnb, %vec.epilog.middle.block4851 ]
  %.010572761.ph = phi ptr [ %i.bls, %iter.check4790 ], [ %i.bls, %vector.memcheck4665 ], [ %i.bmj, %vec.epilog.iter.check4791 ], [ %i.bnc, %vec.epilog.middle.block4851 ]
  br label %.lr.ph2779

._crit_edge2780:                                  ; preds = %.lr.ph2779, %middle.block4788, %vec.epilog.middle.block4851, %.noexc1781
  %indvars.iv.next2991 = add nsw i64 %indvars.iv2990, 16 ; 2 uses
  %indvars.iv.next2989 = add nuw nsw i64 %indvars.iv2988, 1 ; 2 uses
  %exitcond2996.not = icmp eq i64 %indvars.iv.next2989, %wide.trip.count2995
  br i1 %exitcond2996.not, label %.loopexit2575.loopexit, label %.noexc1781, !llvm.loop !181

.lr.ph2779:                                       ; preds = %.lr.ph2779.preheader, %.lr.ph2779
  %.010402778 = phi i32 [ %i.bpb, %.lr.ph2779 ], [ %.010402778.ph, %.lr.ph2779.preheader ]
  %.010412777 = phi ptr [ %i.bpa, %.lr.ph2779 ], [ %.010412777.ph, %.lr.ph2779.preheader ] ; 17 uses
  %.010422776 = phi ptr [ %i.box, %.lr.ph2779 ], [ %.010422776.ph, %.lr.ph2779.preheader ] ; 2 uses
  %.010432775 = phi ptr [ %i.bou, %.lr.ph2779 ], [ %.010432775.ph, %.lr.ph2779.preheader ] ; 2 uses
  %.010442774 = phi ptr [ %i.bor, %.lr.ph2779 ], [ %.010442774.ph, %.lr.ph2779.preheader ] ; 2 uses
  %.010452773 = phi ptr [ %i.boo, %.lr.ph2779 ], [ %.010452773.ph, %.lr.ph2779.preheader ] ; 2 uses
  %.010462772 = phi ptr [ %i.bol, %.lr.ph2779 ], [ %.010462772.ph, %.lr.ph2779.preheader ] ; 2 uses
  %.010472771 = phi ptr [ %i.boi, %.lr.ph2779 ], [ %.010472771.ph, %.lr.ph2779.preheader ] ; 2 uses
  %.010482770 = phi ptr [ %i.bof, %.lr.ph2779 ], [ %.010482770.ph, %.lr.ph2779.preheader ] ; 2 uses
  %.010492769 = phi ptr [ %i.boc, %.lr.ph2779 ], [ %.010492769.ph, %.lr.ph2779.preheader ] ; 2 uses
  %.010502768 = phi ptr [ %i.bnz, %.lr.ph2779 ], [ %.010502768.ph, %.lr.ph2779.preheader ] ; 2 uses
  %.010512767 = phi ptr [ %i.bnw, %.lr.ph2779 ], [ %.010512767.ph, %.lr.ph2779.preheader ] ; 2 uses
  %.010522766 = phi ptr [ %i.bnt, %.lr.ph2779 ], [ %.010522766.ph, %.lr.ph2779.preheader ] ; 2 uses
  %.010532765 = phi ptr [ %i.bnq, %.lr.ph2779 ], [ %.010532765.ph, %.lr.ph2779.preheader ] ; 2 uses
  %.010542764 = phi ptr [ %i.bnn, %.lr.ph2779 ], [ %.010542764.ph, %.lr.ph2779.preheader ] ; 2 uses
  %.010552763 = phi ptr [ %i.bnk, %.lr.ph2779 ], [ %.010552763.ph, %.lr.ph2779.preheader ] ; 2 uses
  %.010562762 = phi ptr [ %i.bnh, %.lr.ph2779 ], [ %.010562762.ph, %.lr.ph2779.preheader ] ; 2 uses
  %.010572761 = phi ptr [ %i.bnf, %.lr.ph2779 ], [ %.010572761.ph, %.lr.ph2779.preheader ] ; 2 uses
  %i.bnf = getelementptr inbounds nuw i8, ptr %.010572761, i64 4
  %i.bng = load float, ptr %.010572761, align 4, !tbaa !233
  store float %i.bng, ptr %.010412777, align 4, !tbaa !233
  %i.bnh = getelementptr inbounds nuw i8, ptr %.010562762, i64 4
  %i.bni = load float, ptr %.010562762, align 4, !tbaa !233
  %i.bnj = getelementptr inbounds nuw i8, ptr %.010412777, i64 4
  store float %i.bni, ptr %i.bnj, align 4, !tbaa !233
  %i.bnk = getelementptr inbounds nuw i8, ptr %.010552763, i64 4
  %i.bnl = load float, ptr %.010552763, align 4, !tbaa !233
  %i.bnm = getelementptr inbounds nuw i8, ptr %.010412777, i64 8
  store float %i.bnl, ptr %i.bnm, align 4, !tbaa !233
  %i.bnn = getelementptr inbounds nuw i8, ptr %.010542764, i64 4
  %i.bno = load float, ptr %.010542764, align 4, !tbaa !233
  %i.bnp = getelementptr inbounds nuw i8, ptr %.010412777, i64 12
  store float %i.bno, ptr %i.bnp, align 4, !tbaa !233
  %i.bnq = getelementptr inbounds nuw i8, ptr %.010532765, i64 4
  %i.bnr = load float, ptr %.010532765, align 4, !tbaa !233
  %i.bns = getelementptr inbounds nuw i8, ptr %.010412777, i64 16
  store float %i.bnr, ptr %i.bns, align 4, !tbaa !233
  %i.bnt = getelementptr inbounds nuw i8, ptr %.010522766, i64 4
  %i.bnu = load float, ptr %.010522766, align 4, !tbaa !233
  %i.bnv = getelementptr inbounds nuw i8, ptr %.010412777, i64 20
  store float %i.bnu, ptr %i.bnv, align 4, !tbaa !233
  %i.bnw = getelementptr inbounds nuw i8, ptr %.010512767, i64 4
  %i.bnx = load float, ptr %.010512767, align 4, !tbaa !233
  %i.bny = getelementptr inbounds nuw i8, ptr %.010412777, i64 24
  store float %i.bnx, ptr %i.bny, align 4, !tbaa !233
  %i.bnz = getelementptr inbounds nuw i8, ptr %.010502768, i64 4
  %i.boa = load float, ptr %.010502768, align 4, !tbaa !233
  %i.bob = getelementptr inbounds nuw i8, ptr %.010412777, i64 28
  store float %i.boa, ptr %i.bob, align 4, !tbaa !233
  %i.boc = getelementptr inbounds nuw i8, ptr %.010492769, i64 4
  %i.bod = load float, ptr %.010492769, align 4, !tbaa !233
  %i.boe = getelementptr inbounds nuw i8, ptr %.010412777, i64 32
  store float %i.bod, ptr %i.boe, align 4, !tbaa !233
  %i.bof = getelementptr inbounds nuw i8, ptr %.010482770, i64 4
  %i.bog = load float, ptr %.010482770, align 4, !tbaa !233
  %i.boh = getelementptr inbounds nuw i8, ptr %.010412777, i64 36
  store float %i.bog, ptr %i.boh, align 4, !tbaa !233
  %i.boi = getelementptr inbounds nuw i8, ptr %.010472771, i64 4
  %i.boj = load float, ptr %.010472771, align 4, !tbaa !233
  %i.bok = getelementptr inbounds nuw i8, ptr %.010412777, i64 40
  store float %i.boj, ptr %i.bok, align 4, !tbaa !233
  %i.bol = getelementptr inbounds nuw i8, ptr %.010462772, i64 4
  %i.bom = load float, ptr %.010462772, align 4, !tbaa !233
  %i.bon = getelementptr inbounds nuw i8, ptr %.010412777, i64 44
  store float %i.bom, ptr %i.bon, align 4, !tbaa !233
  %i.boo = getelementptr inbounds nuw i8, ptr %.010452773, i64 4
  %i.bop = load float, ptr %.010452773, align 4, !tbaa !233
  %i.boq = getelementptr inbounds nuw i8, ptr %.010412777, i64 48
  store float %i.bop, ptr %i.boq, align 4, !tbaa !233
  %i.bor = getelementptr inbounds nuw i8, ptr %.010442774, i64 4
  %i.bos = load float, ptr %.010442774, align 4, !tbaa !233
  %i.bot = getelementptr inbounds nuw i8, ptr %.010412777, i64 52
  store float %i.bos, ptr %i.bot, align 4, !tbaa !233
  %i.bou = getelementptr inbounds nuw i8, ptr %.010432775, i64 4
  %i.bov = load float, ptr %.010432775, align 4, !tbaa !233
  %i.bow = getelementptr inbounds nuw i8, ptr %.010412777, i64 56
  store float %i.bov, ptr %i.bow, align 4, !tbaa !233
  %i.box = getelementptr inbounds nuw i8, ptr %.010422776, i64 4
  %i.boy = load float, ptr %.010422776, align 4, !tbaa !233
  %i.boz = getelementptr inbounds nuw i8, ptr %.010412777, i64 60
  store float %i.boy, ptr %i.boz, align 4, !tbaa !233
  %i.bpa = getelementptr inbounds nuw i8, ptr %.010412777, i64 64
  %i.bpb = add nuw nsw i32 %.010402778, 1         ; 2 uses
  %exitcond2987.not = icmp eq i32 %i.bpb, %i.bdk
  br i1 %exitcond2987.not, label %._crit_edge2780, label %.lr.ph2779, !llvm.loop !182

.loopexit2575.loopexit:                           ; preds = %._crit_edge2780
  %i.bpc = trunc nsw i64 %indvars.iv.next2991 to i32
  br label %.loopexit2575

.loopexit2575:                                    ; preds = %.loopexit2575.loopexit, %.loopexit2576
  %i.bpd = phi i32 [ %i.bda, %.loopexit2576 ], [ 16, %.loopexit2575.loopexit ]
  %.61078 = phi i32 [ %.41076, %.loopexit2576 ], [ %i.bpc, %.loopexit2575.loopexit ] ; 3 uses
  br i1 %i.aue, label %thread-pre-split, label %.loopexit

thread-pre-split:                                 ; preds = %bb.ci, %.loopexit2575
  %.610783181 = phi i32 [ %.61078, %.loopexit2575 ], [ %.21074, %bb.ci ]
  %.pr = load i32, ptr %i.auj, align 8, !tbaa !27
  br label %.thread2552

.thread2552:                                      ; preds = %bb.ch, %thread-pre-split
  %i.bpe = phi i32 [ %.pr, %thread-pre-split ], [ %i.axj, %bb.ch ] ; 2 uses
  %.610782554 = phi i32 [ %.610783181, %thread-pre-split ], [ %.21074, %bb.ch ] ; 3 uses
  %i.bpf = icmp eq i32 %i.bpe, 8
  br i1 %i.bpf, label %bb.cl, label %.thread2565

bb.cl:                                            ; preds = %.thread2552
  %i.bpg = getelementptr inbounds nuw i8, ptr %i.aui, i64 44
  %i.bph = load i32, ptr %i.bpg, align 4, !tbaa !43
  %i.bpi = getelementptr inbounds nuw i8, ptr %i.aui, i64 48
  %i.bpj = load i32, ptr %i.bpi, align 8, !tbaa !52
  %i.bpk = mul i32 %i.bpj, %i.bph
  %i.bpl = getelementptr inbounds nuw i8, ptr %i.aui, i64 52
  %i.bpm = load i32, ptr %i.bpl, align 4, !tbaa !59
  %i.bpn = mul i32 %i.bpk, %i.bpm                 ; 5 uses
  %i.bpo = getelementptr inbounds nuw i8, ptr %i.aui, i64 56
  %i.bpp = load i32, ptr %i.bpo, align 8, !tbaa !50 ; 2 uses
  %i.bpq = icmp sgt i32 %i.bpp, 0
  br i1 %i.bpq, label %.noexc1747.lr.ph, label %.thread2565

.noexc1747.lr.ph:                                 ; preds = %bb.cl
  %i.bpr = load ptr, ptr %5, align 16, !tbaa !19, !noalias !309 ; 6 uses
  %i.bps = load i64, ptr %i.ati, align 16, !tbaa !20, !noalias !309 ; 5 uses
  %i.bpt = load i64, ptr %i.asx, align 16, !tbaa !25, !noalias !309 ; 5 uses
  %factor.op.mul2827 = mul i64 %i.bps, %i.bpt     ; 2 uses
  %i.bpu = load ptr, ptr %i.aui, align 8, !tbaa !19, !noalias !310 ; 4 uses
  %i.bpv = getelementptr inbounds nuw i8, ptr %i.aui, i64 64
  %i.bpw = load i64, ptr %i.bpv, align 8, !tbaa !20, !noalias !310 ; 3 uses
  %i.bpx = getelementptr inbounds nuw i8, ptr %i.aui, i64 16
  %i.bpy = load i64, ptr %i.bpx, align 8, !tbaa !25, !noalias !310 ; 3 uses
  %factor.op.mul2831 = mul i64 %i.bpw, %i.bpy
  %i.bpz = icmp sgt i32 %i.bpn, 0
  %i.bqa = sext i32 %.610782554 to i64            ; 5 uses
  %wide.trip.count3005 = zext nneg i32 %i.bpp to i64 ; 3 uses
  %16 = shl i64 %i.bpt, 1
  %17 = mul i64 %16, %i.bps
  %18 = mul i64 %i.bpy, %i.bpw
  %scevgep4150 = getelementptr i8, ptr %i.bpr, i64 16
  %i.bqb = mul i64 %i.bpt, %i.bps
  %i.bqc = shl nuw nsw i64 %wide.trip.count3005, 1 ; 2 uses
  %i.bqd = add nsw i64 %i.bqc, -2
  %i.bqe = add nsw i64 %i.bqd, %i.bqa
  %i.bqf = mul i64 %i.bqb, %i.bqe
  %i.bqg = add i32 %i.bpn, -1
  %i.bqh = zext i32 %i.bqg to i64                 ; 2 uses
  %i.bqi = shl nuw nsw i64 %i.bqh, 4              ; 2 uses
  %i.bqj = getelementptr i8, ptr %scevgep4150, i64 %i.bqf
  %scevgep4151 = getelementptr i8, ptr %i.bqj, i64 %i.bqi
  %i.bqk = mul i64 %i.bpt, %i.bps                 ; 2 uses
  %i.bql = mul i64 %i.bqk, %i.bqa
  %scevgep4152 = getelementptr i8, ptr %i.bpr, i64 %i.bql
  %scevgep4153 = getelementptr i8, ptr %i.bpr, i64 16
  %i.bqm = add nsw i64 %i.bqc, -1
  %i.bqn = add nsw i64 %i.bqm, %i.bqa
  %i.bqo = mul i64 %i.bqk, %i.bqn
  %i.bqp = getelementptr i8, ptr %scevgep4153, i64 %i.bqo
  %scevgep4154 = getelementptr i8, ptr %i.bqp, i64 %i.bqi
  %19 = mul i64 %i.bpt, %i.bps
  %i.bqq = add nsw i64 %i.bqa, 1
  %i.bqr = mul i64 %19, %i.bqq
  %scevgep4155 = getelementptr i8, ptr %i.bpr, i64 %i.bqr
  %scevgep4156 = getelementptr i8, ptr %i.bpu, i64 32
  %i.bqs = mul i64 %i.bpy, %i.bpw
  %i.bqt = add nsw i64 %wide.trip.count3005, -1
  %i.bqu = mul i64 %i.bqs, %i.bqt
  %i.bqv = shl nuw nsw i64 %i.bqh, 5
  %i.bqw = getelementptr i8, ptr %scevgep4156, i64 %i.bqu
  %scevgep4157 = getelementptr i8, ptr %i.bqw, i64 %i.bqv ; 2 uses
  %i.bqx = zext nneg i32 %i.bpn to i64            ; 2 uses
  %min.iters.check4159 = icmp ult i32 %i.bpn, 4
  %bound04161 = icmp ult ptr %i.bpu, %scevgep4154
  %bound14162 = icmp ult ptr %scevgep4155, %scevgep4157
  %found.conflict4163 = and i1 %bound04161, %bound14162
  %i.bqy = or i64 %17, %18
  %i.bqz = icmp slt i64 %i.bqy, 0
  %i.bra = or i1 %found.conflict4163, %i.bqz
  %bound04166 = icmp ult ptr %i.bpu, %scevgep4151
  %bound14167 = icmp ult ptr %scevgep4152, %scevgep4157
  %found.conflict4168 = and i1 %bound04166, %bound14167
  %conflict.rdx4169 = or i1 %i.bra, %found.conflict4168
  %n.vec4171 = and i64 %i.bqx, 2147483644         ; 5 uses
  %i.brb = trunc nuw nsw i64 %n.vec4171 to i32
  %i.brc = shl nuw nsw i64 %n.vec4171, 5
  %i.brd = shl nuw nsw i64 %n.vec4171, 4          ; 2 uses
  %cmp.n4190 = icmp eq i64 %n.vec4171, %i.bqx
  br label %.noexc1747

.noexc1747:                                       ; preds = %.noexc1747.lr.ph, %._crit_edge2823
  %indvars.iv3000 = phi i64 [ %i.bqa, %.noexc1747.lr.ph ], [ %indvars.iv.next3001, %._crit_edge2823 ] ; 3 uses
  %indvars.iv2998 = phi i64 [ 0, %.noexc1747.lr.ph ], [ %indvars.iv.next2999, %._crit_edge2823 ] ; 2 uses
  br i1 %i.bpz, label %.lr.ph2822.preheader, label %._crit_edge2823

.lr.ph2822.preheader:                             ; preds = %.noexc1747
  %.reass2832 = mul i64 %factor.op.mul2831, %indvars.iv2998
  %i.bre = getelementptr inbounds nuw i8, ptr %i.bpu, i64 %.reass2832 ; 4 uses
  %i.brf = add nsw i64 %indvars.iv3000, 1
  %.reass2830 = mul i64 %factor.op.mul2827, %i.brf
  %i.brg = getelementptr inbounds nuw i8, ptr %i.bpr, i64 %.reass2830 ; 4 uses
  %.reass2828 = mul i64 %factor.op.mul2827, %indvars.iv3000
  %i.brh = getelementptr inbounds nuw i8, ptr %i.bpr, i64 %.reass2828 ; 4 uses
  br i1 %min.iters.check4159, label %.lr.ph2822.preheader5003, label %vector.memcheck4160

vector.memcheck4160:                              ; preds = %.lr.ph2822.preheader
  br i1 %conflict.rdx4169, label %.lr.ph2822.preheader5003, label %vector.ph4170

vector.ph4170:                                    ; preds = %vector.memcheck4160
  %i.bri = getelementptr i8, ptr %i.bre, i64 %i.brc
  %i.brj = getelementptr i8, ptr %i.brg, i64 %i.brd
  %i.brk = getelementptr i8, ptr %i.brh, i64 %i.brd
  br label %vector.body4172

vector.body4172:                                  ; preds = %vector.body4172, %vector.ph4170
  %index4173 = phi i64 [ 0, %vector.ph4170 ], [ %index.next4188, %vector.body4172 ] ; 3 uses
  %i.brl = shl i64 %index4173, 5
  %next.gep4174 = getelementptr i8, ptr %i.bre, i64 %i.brl
  %i.brm = shl i64 %index4173, 4                  ; 2 uses
  %next.gep4175 = getelementptr i8, ptr %i.brg, i64 %i.brm
  %next.gep4176 = getelementptr i8, ptr %i.brh, i64 %i.brm
  %wide.vec4177 = load <16 x float>, ptr %next.gep4176, align 4, !tbaa !233, !alias.scope !311
  %wide.vec4182 = load <16 x float>, ptr %next.gep4175, align 4, !tbaa !233, !alias.scope !312
  %interleaved.vec4187 = shufflevector <16 x float> %wide.vec4177, <16 x float> %wide.vec4182, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 4, i32 5, i32 6, i32 7, i32 20, i32 21, i32 22, i32 23, i32 8, i32 9, i32 10, i32 11, i32 24, i32 25, i32 26, i32 27, i32 12, i32 13, i32 14, i32 15, i32 28, i32 29, i32 30, i32 31>
  store <32 x float> %interleaved.vec4187, ptr %next.gep4174, align 4, !tbaa !233, !alias.scope !313, !noalias !314
  %index.next4188 = add nuw i64 %index4173, 4     ; 2 uses
  %i.brn = icmp eq i64 %index.next4188, %n.vec4171
  br i1 %i.brn, label %middle.block4189, label %vector.body4172, !llvm.loop !191

middle.block4189:                                 ; preds = %vector.body4172
  br i1 %cmp.n4190, label %._crit_edge2823, label %.lr.ph2822.preheader5003

.lr.ph2822.preheader5003:                         ; preds = %vector.memcheck4160, %.lr.ph2822.preheader, %middle.block4189
  %.010352821.ph = phi i32 [ 0, %vector.memcheck4160 ], [ 0, %.lr.ph2822.preheader ], [ %i.brb, %middle.block4189 ]
  %.010362820.ph = phi ptr [ %i.bre, %vector.memcheck4160 ], [ %i.bre, %.lr.ph2822.preheader ], [ %i.bri, %middle.block4189 ]
  %.010372819.ph = phi ptr [ %i.brg, %vector.memcheck4160 ], [ %i.brg, %.lr.ph2822.preheader ], [ %i.brj, %middle.block4189 ]
  %.010382818.ph = phi ptr [ %i.brh, %vector.memcheck4160 ], [ %i.brh, %.lr.ph2822.preheader ], [ %i.brk, %middle.block4189 ]
  br label %.lr.ph2822

._crit_edge2823:                                  ; preds = %.lr.ph2822, %middle.block4189, %.noexc1747
  %indvars.iv.next3001 = add nsw i64 %indvars.iv3000, 2 ; 2 uses
  %indvars.iv.next2999 = add nuw nsw i64 %indvars.iv2998, 1 ; 2 uses
  %exitcond3006.not = icmp eq i64 %indvars.iv.next2999, %wide.trip.count3005
  br i1 %exitcond3006.not, label %.loopexit.loopexit, label %.noexc1747, !llvm.loop !192

.lr.ph2822:                                       ; preds = %.lr.ph2822.preheader5003, %.lr.ph2822
  %.010352821 = phi i32 [ %i.bsm, %.lr.ph2822 ], [ %.010352821.ph, %.lr.ph2822.preheader5003 ]
  %.010362820 = phi ptr [ %i.bsl, %.lr.ph2822 ], [ %.010362820.ph, %.lr.ph2822.preheader5003 ] ; 9 uses
  %.010372819 = phi ptr [ %i.bsk, %.lr.ph2822 ], [ %.010372819.ph, %.lr.ph2822.preheader5003 ] ; 5 uses
  %.010382818 = phi ptr [ %i.bsj, %.lr.ph2822 ], [ %.010382818.ph, %.lr.ph2822.preheader5003 ] ; 5 uses
  %i.bro = load float, ptr %.010382818, align 4, !tbaa !233
  store float %i.bro, ptr %.010362820, align 4, !tbaa !233
  %i.brp = getelementptr inbounds nuw i8, ptr %.010382818, i64 4
  %i.brq = load float, ptr %i.brp, align 4, !tbaa !233
  %i.brr = getelementptr inbounds nuw i8, ptr %.010362820, i64 4
  store float %i.brq, ptr %i.brr, align 4, !tbaa !233
  %i.brs = getelementptr inbounds nuw i8, ptr %.010382818, i64 8
  %i.brt = load float, ptr %i.brs, align 4, !tbaa !233
  %i.bru = getelementptr inbounds nuw i8, ptr %.010362820, i64 8
  store float %i.brt, ptr %i.bru, align 4, !tbaa !233
  %i.brv = getelementptr inbounds nuw i8, ptr %.010382818, i64 12
  %i.brw = load float, ptr %i.brv, align 4, !tbaa !233
  %i.brx = getelementptr inbounds nuw i8, ptr %.010362820, i64 12
  store float %i.brw, ptr %i.brx, align 4, !tbaa !233
  %i.bry = load float, ptr %.010372819, align 4, !tbaa !233
  %i.brz = getelementptr inbounds nuw i8, ptr %.010362820, i64 16
  store float %i.bry, ptr %i.brz, align 4, !tbaa !233
  %i.bsa = getelementptr inbounds nuw i8, ptr %.010372819, i64 4
  %i.bsb = load float, ptr %i.bsa, align 4, !tbaa !233
  %i.bsc = getelementptr inbounds nuw i8, ptr %.010362820, i64 20
  store float %i.bsb, ptr %i.bsc, align 4, !tbaa !233
  %i.bsd = getelementptr inbounds nuw i8, ptr %.010372819, i64 8
  %i.bse = load float, ptr %i.bsd, align 4, !tbaa !233
  %i.bsf = getelementptr inbounds nuw i8, ptr %.010362820, i64 24
  store float %i.bse, ptr %i.bsf, align 4, !tbaa !233
  %i.bsg = getelementptr inbounds nuw i8, ptr %.010372819, i64 12
  %i.bsh = load float, ptr %i.bsg, align 4, !tbaa !233
  %i.bsi = getelementptr inbounds nuw i8, ptr %.010362820, i64 28
  store float %i.bsh, ptr %i.bsi, align 4, !tbaa !233
  %i.bsj = getelementptr inbounds nuw i8, ptr %.010382818, i64 16
  %i.bsk = getelementptr inbounds nuw i8, ptr %.010372819, i64 16
  %i.bsl = getelementptr inbounds nuw i8, ptr %.010362820, i64 32
  %i.bsm = add nuw nsw i32 %.010352821, 1         ; 2 uses
  %exitcond2997.not = icmp eq i32 %i.bsm, %i.bpn
  br i1 %exitcond2997.not, label %._crit_edge2823, label %.lr.ph2822, !llvm.loop !193

.loopexit.loopexit:                               ; preds = %._crit_edge2823
  %i.bsn = trunc nsw i64 %indvars.iv.next3001 to i32
  br label %.thread2565

.loopexit:                                        ; preds = %.loopexit2575
  br i1 %i.auf, label %thread-pre-split2560, label %.thread2565

thread-pre-split2560:                             ; preds = %bb.ck, %.loopexit
  %.810803165 = phi i32 [ %.61078, %.loopexit ], [ %.41076, %bb.ck ]
  %.pr2561 = load i32, ptr %i.auj, align 8, !tbaa !27
  br label %.thread2557

.thread2557:                                      ; preds = %bb.cj, %thread-pre-split2560
  %i.bso = phi i32 [ %.pr2561, %thread-pre-split2560 ], [ %i.bdb, %bb.cj ] ; 2 uses
  %.810802559 = phi i32 [ %.810803165, %thread-pre-split2560 ], [ %.41076, %bb.cj ] ; 3 uses
  %i.bsp = icmp eq i32 %i.bso, 8
  br i1 %i.bsp, label %bb.cm, label %.thread2562

bb.cm:                                            ; preds = %.thread2557
  %i.bsq = getelementptr inbounds nuw i8, ptr %i.aui, i64 44
  %i.bsr = load i32, ptr %i.bsq, align 4, !tbaa !43
  %i.bss = getelementptr inbounds nuw i8, ptr %i.aui, i64 48
  %i.bst = load i32, ptr %i.bss, align 8, !tbaa !52
  %i.bsu = mul i32 %i.bst, %i.bsr
  %i.bsv = getelementptr inbounds nuw i8, ptr %i.aui, i64 52
  %i.bsw = load i32, ptr %i.bsv, align 4, !tbaa !59
  %i.bsx = mul i32 %i.bsu, %i.bsw                 ; 6 uses
  %i.bsy = getelementptr inbounds nuw i8, ptr %i.aui, i64 56
  %i.bsz = load i32, ptr %i.bsy, align 8, !tbaa !50 ; 2 uses
  %i.bta = icmp sgt i32 %i.bsz, 0
  br i1 %i.bta, label %.noexc1741.lr.ph, label %.thread2565

.noexc1741.lr.ph:                                 ; preds = %bb.cm
  %i.btb = load ptr, ptr %5, align 16, !tbaa !19, !noalias !315 ; 24 uses
  %i.btc = load i64, ptr %i.ati, align 16, !tbaa !20, !noalias !315 ; 11 uses
  %i.btd = load i64, ptr %i.asx, align 16, !tbaa !25, !noalias !315 ; 11 uses
  %factor.op.mul2848 = mul i64 %i.btc, %i.btd     ; 8 uses
  %i.bte = load ptr, ptr %i.aui, align 8, !tbaa !19, !noalias !316 ; 3 uses
  %i.btf = getelementptr inbounds nuw i8, ptr %i.aui, i64 64
  %i.btg = load i64, ptr %i.btf, align 8, !tbaa !20, !noalias !316 ; 3 uses
  %i.bth = getelementptr inbounds nuw i8, ptr %i.aui, i64 16
  %i.bti = load i64, ptr %i.bth, align 8, !tbaa !25, !noalias !316 ; 3 uses
  %factor.op.mul2864 = mul i64 %i.btg, %i.bti
  %i.btj = icmp sgt i32 %i.bsx, 0
  %i.btk = sext i32 %.810802559 to i64            ; 17 uses
  %wide.trip.count3015 = zext nneg i32 %i.bsz to i64 ; 3 uses
  %20 = shl i64 %i.btd, 3
  %21 = mul i64 %20, %i.btc
  %22 = mul i64 %i.bti, %i.btg
  %scevgep4368 = getelementptr i8, ptr %i.btb, i64 4
  %i.btl = mul i64 %i.btd, %i.btc
  %i.btm = shl nuw nsw i64 %wide.trip.count3015, 3 ; 8 uses
  %i.btn = add nsw i64 %i.btm, -8
  %i.bto = add nsw i64 %i.btn, %i.btk
  %i.btp = mul i64 %i.btl, %i.bto
  %i.btq = add i32 %i.bsx, -1
  %i.btr = zext i32 %i.btq to i64                 ; 2 uses
  %i.bts = shl nuw nsw i64 %i.btr, 2              ; 8 uses
  %i.btt = getelementptr i8, ptr %scevgep4368, i64 %i.btp
  %scevgep4369 = getelementptr i8, ptr %i.btt, i64 %i.bts
  %i.btu = mul i64 %i.btd, %i.btc                 ; 2 uses
  %i.btv = mul i64 %i.btu, %i.btk
  %scevgep4370 = getelementptr i8, ptr %i.btb, i64 %i.btv
  %scevgep4371 = getelementptr i8, ptr %i.btb, i64 4
  %i.btw = add nsw i64 %i.btm, -7
  %i.btx = add nsw i64 %i.btw, %i.btk
  %i.bty = mul i64 %i.btu, %i.btx
  %i.btz = getelementptr i8, ptr %scevgep4371, i64 %i.bty
  %scevgep4372 = getelementptr i8, ptr %i.btz, i64 %i.bts
  %i.bua = mul i64 %i.btd, %i.btc                 ; 2 uses
  %i.bub = add nsw i64 %i.btk, 1
  %i.buc = mul i64 %i.bua, %i.bub
  %scevgep4373 = getelementptr i8, ptr %i.btb, i64 %i.buc
  %scevgep4374 = getelementptr i8, ptr %i.btb, i64 4
  %i.bud = add nsw i64 %i.btm, -6
  %i.bue = add nsw i64 %i.bud, %i.btk
  %i.buf = mul i64 %i.bua, %i.bue
  %i.bug = getelementptr i8, ptr %scevgep4374, i64 %i.buf
  %scevgep4375 = getelementptr i8, ptr %i.bug, i64 %i.bts
  %i.buh = mul i64 %i.btd, %i.btc                 ; 2 uses
  %i.bui = add nsw i64 %i.btk, 2
  %i.buj = mul i64 %i.buh, %i.bui
  %scevgep4376 = getelementptr i8, ptr %i.btb, i64 %i.buj
  %scevgep4377 = getelementptr i8, ptr %i.btb, i64 4
  %i.buk = add nsw i64 %i.btm, -5
  %i.bul = add nsw i64 %i.buk, %i.btk
  %i.bum = mul i64 %i.buh, %i.bul
  %i.bun = getelementptr i8, ptr %scevgep4377, i64 %i.bum
  %scevgep4378 = getelementptr i8, ptr %i.bun, i64 %i.bts
  %i.buo = mul i64 %i.btd, %i.btc                 ; 2 uses
  %i.bup = add nsw i64 %i.btk, 3
  %i.buq = mul i64 %i.buo, %i.bup
  %scevgep4379 = getelementptr i8, ptr %i.btb, i64 %i.buq
  %scevgep4380 = getelementptr i8, ptr %i.btb, i64 4
  %i.bur = add nsw i64 %i.btm, -4
  %i.bus = add nsw i64 %i.bur, %i.btk
  %i.but = mul i64 %i.buo, %i.bus
  %i.buu = getelementptr i8, ptr %scevgep4380, i64 %i.but
  %scevgep4381 = getelementptr i8, ptr %i.buu, i64 %i.bts
  %i.buv = mul i64 %i.btd, %i.btc                 ; 2 uses
  %i.buw = add nsw i64 %i.btk, 4
  %i.bux = mul i64 %i.buv, %i.buw
  %scevgep4382 = getelementptr i8, ptr %i.btb, i64 %i.bux
  %scevgep4383 = getelementptr i8, ptr %i.btb, i64 4
  %i.buy = add nsw i64 %i.btm, -3
  %i.buz = add nsw i64 %i.buy, %i.btk
  %i.bva = mul i64 %i.buv, %i.buz
  %i.bvb = getelementptr i8, ptr %scevgep4383, i64 %i.bva
  %scevgep4384 = getelementptr i8, ptr %i.bvb, i64 %i.bts
  %i.bvc = mul i64 %i.btd, %i.btc                 ; 2 uses
  %i.bvd = add nsw i64 %i.btk, 5
  %i.bve = mul i64 %i.bvc, %i.bvd
  %scevgep4385 = getelementptr i8, ptr %i.btb, i64 %i.bve
  %scevgep4386 = getelementptr i8, ptr %i.btb, i64 4
  %i.bvf = add nsw i64 %i.btm, -2
  %i.bvg = add nsw i64 %i.bvf, %i.btk
  %i.bvh = mul i64 %i.bvc, %i.bvg
  %i.bvi = getelementptr i8, ptr %scevgep4386, i64 %i.bvh
  %scevgep4387 = getelementptr i8, ptr %i.bvi, i64 %i.bts
  %i.bvj = mul i64 %i.btd, %i.btc                 ; 2 uses
  %i.bvk = add nsw i64 %i.btk, 6
  %i.bvl = mul i64 %i.bvj, %i.bvk
  %scevgep4388 = getelementptr i8, ptr %i.btb, i64 %i.bvl
  %scevgep4389 = getelementptr i8, ptr %i.btb, i64 4
  %i.bvm = add nsw i64 %i.btm, -1
  %i.bvn = add nsw i64 %i.bvm, %i.btk
  %i.bvo = mul i64 %i.bvj, %i.bvn
  %i.bvp = getelementptr i8, ptr %scevgep4389, i64 %i.bvo
  %scevgep4390 = getelementptr i8, ptr %i.bvp, i64 %i.bts
  %23 = mul i64 %i.btd, %i.btc
  %i.bvq = add nsw i64 %i.btk, 7
  %i.bvr = mul i64 %23, %i.bvq
  %scevgep4391 = getelementptr i8, ptr %i.btb, i64 %i.bvr
  %scevgep4392 = getelementptr i8, ptr %i.bte, i64 32
  %i.bvs = mul i64 %i.bti, %i.btg
  %i.bvt = add nsw i64 %wide.trip.count3015, -1
  %i.bvu = mul i64 %i.bvs, %i.bvt
  %i.bvv = shl nuw nsw i64 %i.btr, 5
  %i.bvw = getelementptr i8, ptr %scevgep4392, i64 %i.bvu
  %scevgep4393 = getelementptr i8, ptr %i.bvw, i64 %i.bvv
  %i.bvx = zext i32 %i.bsx to i64                 ; 5 uses
  %i.bvy = insertelement <8 x ptr> poison, ptr %i.bte, i64 0
  %i.bvz = shufflevector <8 x ptr> %i.bvy, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.bwa = insertelement <8 x ptr> poison, ptr %scevgep4390, i64 0
  %i.bwb = insertelement <8 x ptr> %i.bwa, ptr %scevgep4387, i64 1
  %i.bwc = insertelement <8 x ptr> %i.bwb, ptr %scevgep4384, i64 2
  %i.bwd = insertelement <8 x ptr> %i.bwc, ptr %scevgep4381, i64 3
  %i.bwe = insertelement <8 x ptr> %i.bwd, ptr %scevgep4378, i64 4
  %i.bwf = insertelement <8 x ptr> %i.bwe, ptr %scevgep4375, i64 5
  %i.bwg = insertelement <8 x ptr> %i.bwf, ptr %scevgep4372, i64 6
  %i.bwh = insertelement <8 x ptr> %i.bwg, ptr %scevgep4369, i64 7
  %i.bwi = insertelement <8 x ptr> poison, ptr %scevgep4391, i64 0
  %i.bwj = insertelement <8 x ptr> %i.bwi, ptr %scevgep4388, i64 1
  %i.bwk = insertelement <8 x ptr> %i.bwj, ptr %scevgep4385, i64 2
  %i.bwl = insertelement <8 x ptr> %i.bwk, ptr %scevgep4382, i64 3
  %i.bwm = insertelement <8 x ptr> %i.bwl, ptr %scevgep4379, i64 4
  %i.bwn = insertelement <8 x ptr> %i.bwm, ptr %scevgep4376, i64 5
  %i.bwo = insertelement <8 x ptr> %i.bwn, ptr %scevgep4373, i64 6
  %i.bwp = insertelement <8 x ptr> %i.bwo, ptr %scevgep4370, i64 7
  %i.bwq = insertelement <8 x ptr> poison, ptr %scevgep4393, i64 0
  %i.bwr = shufflevector <8 x ptr> %i.bwq, <8 x ptr> poison, <8 x i32> zeroinitializer
  %min.iters.check4395 = icmp ult i32 %i.bsx, 4
  %i.bws = icmp ult <8 x ptr> %i.bvz, %i.bwh
  %i.bwt = icmp ult <8 x ptr> %i.bwp, %i.bwr
  %i.bwu = or i64 %21, %22
  %i.bwv = icmp slt i64 %i.bwu, 0
  %i.bww = and <8 x i1> %i.bws, %i.bwt
  %i.bwx = bitcast <8 x i1> %i.bww to i8
  %i.bwy = icmp ne i8 %i.bwx, 0
  %op.rdx4992 = or i1 %i.bwy, %i.bwv
  %min.iters.check4431 = icmp ult i32 %i.bsx, 16
  %i.bwz = and i64 %i.bvx, 12
  %n.vec4433 = and i64 %i.bvx, 2147483632         ; 6 uses
  %i.bxa = trunc nuw nsw i64 %n.vec4433 to i32
  %i.bxb = shl nuw nsw i64 %n.vec4433, 5
  %i.bxc = shl nuw nsw i64 %n.vec4433, 2          ; 8 uses
  %cmp.n4456 = icmp eq i64 %n.vec4433, %i.bvx
  %min.epilog.iters.check4460 = icmp eq i64 %i.bwz, 0
  %n.vec4463 = and i64 %i.bvx, 2147483644         ; 5 uses
  %i.bxd = trunc nuw nsw i64 %n.vec4463 to i32
  %i.bxe = shl nuw nsw i64 %n.vec4463, 5
  %i.bxf = shl nuw nsw i64 %n.vec4463, 2          ; 8 uses
  %cmp.n4486 = icmp eq i64 %n.vec4463, %i.bvx
  br label %.noexc1741

.noexc1741:                                       ; preds = %.noexc1741.lr.ph, %._crit_edge2844
  %indvars.iv3010 = phi i64 [ %i.btk, %.noexc1741.lr.ph ], [ %indvars.iv.next3011, %._crit_edge2844 ] ; 9 uses
  %indvars.iv3008 = phi i64 [ 0, %.noexc1741.lr.ph ], [ %indvars.iv.next3009, %._crit_edge2844 ] ; 2 uses
  br i1 %i.btj, label %iter.check4457, label %._crit_edge2844

iter.check4457:                                   ; preds = %.noexc1741
  %.reass2865 = mul i64 %factor.op.mul2864, %indvars.iv3008
  %i.bxg = getelementptr inbounds nuw i8, ptr %i.bte, i64 %.reass2865 ; 6 uses
  %i.bxh = add nsw i64 %indvars.iv3010, 7
  %.reass2863 = mul i64 %factor.op.mul2848, %i.bxh
  %i.bxi = getelementptr inbounds nuw i8, ptr %i.btb, i64 %.reass2863 ; 6 uses
  %i.bxj = add nsw i64 %indvars.iv3010, 6
  %.reass2861 = mul i64 %factor.op.mul2848, %i.bxj
  %i.bxk = getelementptr inbounds nuw i8, ptr %i.btb, i64 %.reass2861 ; 6 uses
  %i.bxl = add nsw i64 %indvars.iv3010, 5
  %.reass2859 = mul i64 %factor.op.mul2848, %i.bxl
  %i.bxm = getelementptr inbounds nuw i8, ptr %i.btb, i64 %.reass2859 ; 6 uses
  %i.bxn = add nsw i64 %indvars.iv3010, 4
  %.reass2857 = mul i64 %factor.op.mul2848, %i.bxn
  %i.bxo = getelementptr inbounds nuw i8, ptr %i.btb, i64 %.reass2857 ; 6 uses
  %i.bxp = add nsw i64 %indvars.iv3010, 3
  %.reass2855 = mul i64 %factor.op.mul2848, %i.bxp
  %i.bxq = getelementptr inbounds nuw i8, ptr %i.btb, i64 %.reass2855 ; 6 uses
  %i.bxr = add nsw i64 %indvars.iv3010, 2
  %.reass2853 = mul i64 %factor.op.mul2848, %i.bxr
  %i.bxs = getelementptr inbounds nuw i8, ptr %i.btb, i64 %.reass2853 ; 6 uses
  %i.bxt = add nsw i64 %indvars.iv3010, 1
  %.reass2851 = mul i64 %factor.op.mul2848, %i.bxt
  %i.bxu = getelementptr inbounds nuw i8, ptr %i.btb, i64 %.reass2851 ; 6 uses
  %.reass2849 = mul i64 %factor.op.mul2848, %indvars.iv3010
  %i.bxv = getelementptr inbounds nuw i8, ptr %i.btb, i64 %.reass2849 ; 6 uses
  br i1 %min.iters.check4395, label %.lr.ph2843.preheader, label %vector.memcheck4396

vector.memcheck4396:                              ; preds = %iter.check4457
  br i1 %op.rdx4992, label %.lr.ph2843.preheader, label %vector.main.loop.iter.check4430

vector.main.loop.iter.check4430:                  ; preds = %vector.memcheck4396
  br i1 %min.iters.check4431, label %vec.epilog.ph4461, label %vector.ph4432

vector.ph4432:                                    ; preds = %vector.main.loop.iter.check4430
  %i.bxw = getelementptr i8, ptr %i.bxg, i64 %i.bxb
  %i.bxx = getelementptr i8, ptr %i.bxi, i64 %i.bxc
  %i.bxy = getelementptr i8, ptr %i.bxk, i64 %i.bxc
  %i.bxz = getelementptr i8, ptr %i.bxm, i64 %i.bxc
  %i.bya = getelementptr i8, ptr %i.bxo, i64 %i.bxc
  %i.byb = getelementptr i8, ptr %i.bxq, i64 %i.bxc
  %i.byc = getelementptr i8, ptr %i.bxs, i64 %i.bxc
  %i.byd = getelementptr i8, ptr %i.bxu, i64 %i.bxc
  %i.bye = getelementptr i8, ptr %i.bxv, i64 %i.bxc
  br label %vector.body4434

vector.body4434:                                  ; preds = %vector.ph4432, %vector.body4434
  %index4435 = phi i64 [ 0, %vector.ph4432 ], [ %index.next4454, %vector.body4434 ] ; 3 uses
  %i.byf = shl i64 %index4435, 5
  %next.gep4436 = getelementptr i8, ptr %i.bxg, i64 %i.byf
  %i.byg = shl i64 %index4435, 2                  ; 8 uses
  %next.gep4437 = getelementptr i8, ptr %i.bxi, i64 %i.byg
  %next.gep4438 = getelementptr i8, ptr %i.bxk, i64 %i.byg
  %next.gep4439 = getelementptr i8, ptr %i.bxm, i64 %i.byg
  %next.gep4440 = getelementptr i8, ptr %i.bxo, i64 %i.byg
  %next.gep4441 = getelementptr i8, ptr %i.bxq, i64 %i.byg
  %next.gep4442 = getelementptr i8, ptr %i.bxs, i64 %i.byg
  %next.gep4443 = getelementptr i8, ptr %i.bxu, i64 %i.byg
  %next.gep4444 = getelementptr i8, ptr %i.bxv, i64 %i.byg
  %wide.load4445 = load <16 x float>, ptr %next.gep4444, align 4, !tbaa !233, !alias.scope !317
  %wide.load4446 = load <16 x float>, ptr %next.gep4443, align 4, !tbaa !233, !alias.scope !318
  %wide.load4447 = load <16 x float>, ptr %next.gep4442, align 4, !tbaa !233, !alias.scope !319
  %wide.load4448 = load <16 x float>, ptr %next.gep4441, align 4, !tbaa !233, !alias.scope !320
  %wide.load4449 = load <16 x float>, ptr %next.gep4440, align 4, !tbaa !233, !alias.scope !321
  %wide.load4450 = load <16 x float>, ptr %next.gep4439, align 4, !tbaa !233, !alias.scope !322
  %wide.load4451 = load <16 x float>, ptr %next.gep4438, align 4, !tbaa !233, !alias.scope !323
  %wide.load4452 = load <16 x float>, ptr %next.gep4437, align 4, !tbaa !233, !alias.scope !324
  %i.byh = shufflevector <16 x float> %wide.load4445, <16 x float> %wide.load4446, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.byi = shufflevector <16 x float> %wide.load4447, <16 x float> %wide.load4448, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.byj = shufflevector <16 x float> %wide.load4449, <16 x float> %wide.load4450, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.byk = shufflevector <16 x float> %wide.load4451, <16 x float> %wide.load4452, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.byl = shufflevector <32 x float> %i.byh, <32 x float> %i.byi, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.bym = shufflevector <32 x float> %i.byj, <32 x float> %i.byk, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %interleaved.vec4453 = shufflevector <64 x float> %i.byl, <64 x float> %i.bym, <128 x i32> <i32 0, i32 16, i32 32, i32 48, i32 64, i32 80, i32 96, i32 112, i32 1, i32 17, i32 33, i32 49, i32 65, i32 81, i32 97, i32 113, i32 2, i32 18, i32 34, i32 50, i32 66, i32 82, i32 98, i32 114, i32 3, i32 19, i32 35, i32 51, i32 67, i32 83, i32 99, i32 115, i32 4, i32 20, i32 36, i32 52, i32 68, i32 84, i32 100, i32 116, i32 5, i32 21, i32 37, i32 53, i32 69, i32 85, i32 101, i32 117, i32 6, i32 22, i32 38, i32 54, i32 70, i32 86, i32 102, i32 118, i32 7, i32 23, i32 39, i32 55, i32 71, i32 87, i32 103, i32 119, i32 8, i32 24, i32 40, i32 56, i32 72, i32 88, i32 104, i32 120, i32 9, i32 25, i32 41, i32 57, i32 73, i32 89, i32 105, i32 121, i32 10, i32 26, i32 42, i32 58, i32 74, i32 90, i32 106, i32 122, i32 11, i32 27, i32 43, i32 59, i32 75, i32 91, i32 107, i32 123, i32 12, i32 28, i32 44, i32 60, i32 76, i32 92, i32 108, i32 124, i32 13, i32 29, i32 45, i32 61, i32 77, i32 93, i32 109, i32 125, i32 14, i32 30, i32 46, i32 62, i32 78, i32 94, i32 110, i32 126, i32 15, i32 31, i32 47, i32 63, i32 79, i32 95, i32 111, i32 127>
  store <128 x float> %interleaved.vec4453, ptr %next.gep4436, align 4, !tbaa !233, !alias.scope !325, !noalias !326
  %index.next4454 = add nuw i64 %index4435, 16    ; 2 uses
  %i.byn = icmp eq i64 %index.next4454, %n.vec4433
  br i1 %i.byn, label %middle.block4455, label %vector.body4434, !llvm.loop !208

middle.block4455:                                 ; preds = %vector.body4434
  br i1 %cmp.n4456, label %._crit_edge2844, label %vec.epilog.iter.check4458

vec.epilog.iter.check4458:                        ; preds = %middle.block4455
  br i1 %min.epilog.iters.check4460, label %.lr.ph2843.preheader, label %vec.epilog.ph4461, !prof !57

vec.epilog.ph4461:                                ; preds = %vector.main.loop.iter.check4430, %vec.epilog.iter.check4458
  %vec.epilog.resume.val4462 = phi i64 [ %n.vec4433, %vec.epilog.iter.check4458 ], [ 0, %vector.main.loop.iter.check4430 ]
  %i.byo = getelementptr i8, ptr %i.bxg, i64 %i.bxe
  %i.byp = getelementptr i8, ptr %i.bxi, i64 %i.bxf
  %i.byq = getelementptr i8, ptr %i.bxk, i64 %i.bxf
  %i.byr = getelementptr i8, ptr %i.bxm, i64 %i.bxf
  %i.bys = getelementptr i8, ptr %i.bxo, i64 %i.bxf
  %i.byt = getelementptr i8, ptr %i.bxq, i64 %i.bxf
  %i.byu = getelementptr i8, ptr %i.bxs, i64 %i.bxf
  %i.byv = getelementptr i8, ptr %i.bxu, i64 %i.bxf
  %i.byw = getelementptr i8, ptr %i.bxv, i64 %i.bxf
  br label %vec.epilog.vector.body4464

vec.epilog.vector.body4464:                       ; preds = %vec.epilog.vector.body4464, %vec.epilog.ph4461
  %index4465 = phi i64 [ %vec.epilog.resume.val4462, %vec.epilog.ph4461 ], [ %index.next4484, %vec.epilog.vector.body4464 ] ; 3 uses
  %i.byx = shl i64 %index4465, 5
  %next.gep4466 = getelementptr i8, ptr %i.bxg, i64 %i.byx
  %i.byy = shl i64 %index4465, 2                  ; 8 uses
  %next.gep4467 = getelementptr i8, ptr %i.bxi, i64 %i.byy
  %next.gep4468 = getelementptr i8, ptr %i.bxk, i64 %i.byy
  %next.gep4469 = getelementptr i8, ptr %i.bxm, i64 %i.byy
  %next.gep4470 = getelementptr i8, ptr %i.bxo, i64 %i.byy
  %next.gep4471 = getelementptr i8, ptr %i.bxq, i64 %i.byy
  %next.gep4472 = getelementptr i8, ptr %i.bxs, i64 %i.byy
  %next.gep4473 = getelementptr i8, ptr %i.bxu, i64 %i.byy
  %next.gep4474 = getelementptr i8, ptr %i.bxv, i64 %i.byy
  %wide.load4475 = load <4 x float>, ptr %next.gep4474, align 4, !tbaa !233, !alias.scope !317
  %wide.load4476 = load <4 x float>, ptr %next.gep4473, align 4, !tbaa !233, !alias.scope !318
  %wide.load4477 = load <4 x float>, ptr %next.gep4472, align 4, !tbaa !233, !alias.scope !319
  %wide.load4478 = load <4 x float>, ptr %next.gep4471, align 4, !tbaa !233, !alias.scope !320
  %wide.load4479 = load <4 x float>, ptr %next.gep4470, align 4, !tbaa !233, !alias.scope !321
  %wide.load4480 = load <4 x float>, ptr %next.gep4469, align 4, !tbaa !233, !alias.scope !322
  %wide.load4481 = load <4 x float>, ptr %next.gep4468, align 4, !tbaa !233, !alias.scope !323
  %wide.load4482 = load <4 x float>, ptr %next.gep4467, align 4, !tbaa !233, !alias.scope !324
  %i.byz = shufflevector <4 x float> %wide.load4475, <4 x float> %wide.load4476, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bza = shufflevector <4 x float> %wide.load4477, <4 x float> %wide.load4478, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bzb = shufflevector <4 x float> %wide.load4479, <4 x float> %wide.load4480, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bzc = shufflevector <4 x float> %wide.load4481, <4 x float> %wide.load4482, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bzd = shufflevector <8 x float> %i.byz, <8 x float> %i.bza, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bze = shufflevector <8 x float> %i.bzb, <8 x float> %i.bzc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec4483 = shufflevector <16 x float> %i.bzd, <16 x float> %i.bze, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x float> %interleaved.vec4483, ptr %next.gep4466, align 4, !tbaa !233, !alias.scope !325, !noalias !326
  %index.next4484 = add nuw i64 %index4465, 4     ; 2 uses
  %i.bzf = icmp eq i64 %index.next4484, %n.vec4463
  br i1 %i.bzf, label %vec.epilog.middle.block4485, label %vec.epilog.vector.body4464, !llvm.loop !209

vec.epilog.middle.block4485:                      ; preds = %vec.epilog.vector.body4464
  br i1 %cmp.n4486, label %._crit_edge2844, label %.lr.ph2843.preheader

.lr.ph2843.preheader:                             ; preds = %iter.check4457, %vector.memcheck4396, %vec.epilog.iter.check4458, %vec.epilog.middle.block4485
  %.010242842.ph = phi i32 [ 0, %iter.check4457 ], [ 0, %vector.memcheck4396 ], [ %i.bxa, %vec.epilog.iter.check4458 ], [ %i.bxd, %vec.epilog.middle.block4485 ]
  %.010252841.ph = phi ptr [ %i.bxg, %iter.check4457 ], [ %i.bxg, %vector.memcheck4396 ], [ %i.bxw, %vec.epilog.iter.check4458 ], [ %i.byo, %vec.epilog.middle.block4485 ]
  %.010262840.ph = phi ptr [ %i.bxi, %iter.check4457 ], [ %i.bxi, %vector.memcheck4396 ], [ %i.bxx, %vec.epilog.iter.check4458 ], [ %i.byp, %vec.epilog.middle.block4485 ]
  %.010272839.ph = phi ptr [ %i.bxk, %iter.check4457 ], [ %i.bxk, %vector.memcheck4396 ], [ %i.bxy, %vec.epilog.iter.check4458 ], [ %i.byq, %vec.epilog.middle.block4485 ]
  %.010282838.ph = phi ptr [ %i.bxm, %iter.check4457 ], [ %i.bxm, %vector.memcheck4396 ], [ %i.bxz, %vec.epilog.iter.check4458 ], [ %i.byr, %vec.epilog.middle.block4485 ]
  %.010292837.ph = phi ptr [ %i.bxo, %iter.check4457 ], [ %i.bxo, %vector.memcheck4396 ], [ %i.bya, %vec.epilog.iter.check4458 ], [ %i.bys, %vec.epilog.middle.block4485 ]
  %.010302836.ph = phi ptr [ %i.bxq, %iter.check4457 ], [ %i.bxq, %vector.memcheck4396 ], [ %i.byb, %vec.epilog.iter.check4458 ], [ %i.byt, %vec.epilog.middle.block4485 ]
  %.010312835.ph = phi ptr [ %i.bxs, %iter.check4457 ], [ %i.bxs, %vector.memcheck4396 ], [ %i.byc, %vec.epilog.iter.check4458 ], [ %i.byu, %vec.epilog.middle.block4485 ]
  %.010322834.ph = phi ptr [ %i.bxu, %iter.check4457 ], [ %i.bxu, %vector.memcheck4396 ], [ %i.byd, %vec.epilog.iter.check4458 ], [ %i.byv, %vec.epilog.middle.block4485 ]
  %.010332833.ph = phi ptr [ %i.bxv, %iter.check4457 ], [ %i.bxv, %vector.memcheck4396 ], [ %i.bye, %vec.epilog.iter.check4458 ], [ %i.byw, %vec.epilog.middle.block4485 ]
  br label %.lr.ph2843

._crit_edge2844:                                  ; preds = %.lr.ph2843, %middle.block4455, %vec.epilog.middle.block4485, %.noexc1741
  %indvars.iv.next3011 = add nsw i64 %indvars.iv3010, 8 ; 2 uses
  %indvars.iv.next3009 = add nuw nsw i64 %indvars.iv3008, 1 ; 2 uses
  %exitcond3016.not = icmp eq i64 %indvars.iv.next3009, %wide.trip.count3015
  br i1 %exitcond3016.not, label %.thread2562.loopexit, label %.noexc1741, !llvm.loop !210

.lr.ph2843:                                       ; preds = %.lr.ph2843.preheader, %.lr.ph2843
  %.010242842 = phi i32 [ %i.cae, %.lr.ph2843 ], [ %.010242842.ph, %.lr.ph2843.preheader ]
  %.010252841 = phi ptr [ %i.cad, %.lr.ph2843 ], [ %.010252841.ph, %.lr.ph2843.preheader ] ; 9 uses
  %.010262840 = phi ptr [ %i.caa, %.lr.ph2843 ], [ %.010262840.ph, %.lr.ph2843.preheader ] ; 2 uses
  %.010272839 = phi ptr [ %i.bzx, %.lr.ph2843 ], [ %.010272839.ph, %.lr.ph2843.preheader ] ; 2 uses
  %.010282838 = phi ptr [ %i.bzu, %.lr.ph2843 ], [ %.010282838.ph, %.lr.ph2843.preheader ] ; 2 uses
  %.010292837 = phi ptr [ %i.bzr, %.lr.ph2843 ], [ %.010292837.ph, %.lr.ph2843.preheader ] ; 2 uses
  %.010302836 = phi ptr [ %i.bzo, %.lr.ph2843 ], [ %.010302836.ph, %.lr.ph2843.preheader ] ; 2 uses
  %.010312835 = phi ptr [ %i.bzl, %.lr.ph2843 ], [ %.010312835.ph, %.lr.ph2843.preheader ] ; 2 uses
  %.010322834 = phi ptr [ %i.bzi, %.lr.ph2843 ], [ %.010322834.ph, %.lr.ph2843.preheader ] ; 2 uses
  %.010332833 = phi ptr [ %i.bzg, %.lr.ph2843 ], [ %.010332833.ph, %.lr.ph2843.preheader ] ; 2 uses
  %i.bzg = getelementptr inbounds nuw i8, ptr %.010332833, i64 4
  %i.bzh = load float, ptr %.010332833, align 4, !tbaa !233
  store float %i.bzh, ptr %.010252841, align 4, !tbaa !233
  %i.bzi = getelementptr inbounds nuw i8, ptr %.010322834, i64 4
  %i.bzj = load float, ptr %.010322834, align 4, !tbaa !233
  %i.bzk = getelementptr inbounds nuw i8, ptr %.010252841, i64 4
  store float %i.bzj, ptr %i.bzk, align 4, !tbaa !233
  %i.bzl = getelementptr inbounds nuw i8, ptr %.010312835, i64 4
  %i.bzm = load float, ptr %.010312835, align 4, !tbaa !233
  %i.bzn = getelementptr inbounds nuw i8, ptr %.010252841, i64 8
  store float %i.bzm, ptr %i.bzn, align 4, !tbaa !233
  %i.bzo = getelementptr inbounds nuw i8, ptr %.010302836, i64 4
  %i.bzp = load float, ptr %.010302836, align 4, !tbaa !233
  %i.bzq = getelementptr inbounds nuw i8, ptr %.010252841, i64 12
  store float %i.bzp, ptr %i.bzq, align 4, !tbaa !233
  %i.bzr = getelementptr inbounds nuw i8, ptr %.010292837, i64 4
  %i.bzs = load float, ptr %.010292837, align 4, !tbaa !233
  %i.bzt = getelementptr inbounds nuw i8, ptr %.010252841, i64 16
  store float %i.bzs, ptr %i.bzt, align 4, !tbaa !233
  %i.bzu = getelementptr inbounds nuw i8, ptr %.010282838, i64 4
  %i.bzv = load float, ptr %.010282838, align 4, !tbaa !233
  %i.bzw = getelementptr inbounds nuw i8, ptr %.010252841, i64 20
  store float %i.bzv, ptr %i.bzw, align 4, !tbaa !233
  %i.bzx = getelementptr inbounds nuw i8, ptr %.010272839, i64 4
  %i.bzy = load float, ptr %.010272839, align 4, !tbaa !233
  %i.bzz = getelementptr inbounds nuw i8, ptr %.010252841, i64 24
  store float %i.bzy, ptr %i.bzz, align 4, !tbaa !233
  %i.caa = getelementptr inbounds nuw i8, ptr %.010262840, i64 4
  %i.cab = load float, ptr %.010262840, align 4, !tbaa !233
  %i.cac = getelementptr inbounds nuw i8, ptr %.010252841, i64 28
  store float %i.cab, ptr %i.cac, align 4, !tbaa !233
  %i.cad = getelementptr inbounds nuw i8, ptr %.010252841, i64 32
  %i.cae = add nuw nsw i32 %.010242842, 1         ; 2 uses
  %exitcond3007.not = icmp eq i32 %i.cae, %i.bsx
  br i1 %exitcond3007.not, label %._crit_edge2844, label %.lr.ph2843, !llvm.loop !211

.thread2562.loopexit:                             ; preds = %._crit_edge2844
  %i.caf = trunc nsw i64 %indvars.iv.next3011 to i32
  %.pre3029 = load i32, ptr %i.auj, align 8, !tbaa !27
  br label %.thread2562

.thread2562:                                      ; preds = %.thread2562.loopexit, %.thread2557
  %i.cag = phi i32 [ %i.bso, %.thread2557 ], [ %.pre3029, %.thread2562.loopexit ] ; 2 uses
  %.1010822564 = phi i32 [ %.810802559, %.thread2557 ], [ %i.caf, %.thread2562.loopexit ] ; 3 uses
  %i.cah = icmp eq i32 %i.cag, 4
  br i1 %i.cah, label %bb.cn, label %.thread2565

bb.cn:                                            ; preds = %.thread2562
  %i.cai = getelementptr inbounds nuw i8, ptr %i.aui, i64 44
  %i.caj = load i32, ptr %i.cai, align 4, !tbaa !43
  %i.cak = getelementptr inbounds nuw i8, ptr %i.aui, i64 48
  %i.cal = load i32, ptr %i.cak, align 8, !tbaa !52
  %i.cam = mul i32 %i.cal, %i.caj
  %i.can = getelementptr inbounds nuw i8, ptr %i.aui, i64 52
  %i.cao = load i32, ptr %i.can, align 4, !tbaa !59
  %i.cap = mul i32 %i.cam, %i.cao                 ; 8 uses
  %i.caq = getelementptr inbounds nuw i8, ptr %i.aui, i64 56
  %i.car = load i32, ptr %i.caq, align 8, !tbaa !50 ; 2 uses
  %i.cas = icmp sgt i32 %i.car, 0
  br i1 %i.cas, label %.noexc1723.lr.ph, label %.thread2565

.noexc1723.lr.ph:                                 ; preds = %bb.cn
  %i.cat = load ptr, ptr %5, align 16, !tbaa !19, !noalias !327 ; 12 uses
  %i.cau = load i64, ptr %i.ati, align 16, !tbaa !20, !noalias !327 ; 7 uses
  %i.cav = load i64, ptr %i.asx, align 16, !tbaa !25, !noalias !327 ; 7 uses
  %factor.op.mul2877 = mul i64 %i.cau, %i.cav     ; 4 uses
  %i.caw = load ptr, ptr %i.aui, align 8, !tbaa !19, !noalias !328 ; 3 uses
  %i.cax = getelementptr inbounds nuw i8, ptr %i.aui, i64 64
  %i.cay = load i64, ptr %i.cax, align 8, !tbaa !20, !noalias !328 ; 3 uses
  %i.caz = getelementptr inbounds nuw i8, ptr %i.aui, i64 16
  %i.cba = load i64, ptr %i.caz, align 8, !tbaa !25, !noalias !328 ; 3 uses
  %factor.op.mul2885 = mul i64 %i.cay, %i.cba
  %i.cbb = icmp sgt i32 %i.cap, 0
  %i.cbc = sext i32 %.1010822564 to i64           ; 9 uses
  %wide.trip.count3025 = zext nneg i32 %i.car to i64 ; 3 uses
  %24 = shl i64 %i.cav, 2
  %25 = mul i64 %24, %i.cau
  %26 = mul i64 %i.cba, %i.cay
  %scevgep4227 = getelementptr i8, ptr %i.cat, i64 4
  %i.cbd = mul i64 %i.cav, %i.cau
  %i.cbe = shl nuw nsw i64 %wide.trip.count3025, 2 ; 4 uses
  %i.cbf = add nsw i64 %i.cbe, -4
  %i.cbg = add nsw i64 %i.cbf, %i.cbc
  %i.cbh = mul i64 %i.cbd, %i.cbg
  %i.cbi = add i32 %i.cap, -1
  %i.cbj = zext i32 %i.cbi to i64                 ; 2 uses
  %i.cbk = shl nuw nsw i64 %i.cbj, 2              ; 4 uses
  %i.cbl = getelementptr i8, ptr %scevgep4227, i64 %i.cbh
  %scevgep4228 = getelementptr i8, ptr %i.cbl, i64 %i.cbk
  %i.cbm = mul i64 %i.cav, %i.cau                 ; 2 uses
  %i.cbn = mul i64 %i.cbm, %i.cbc
  %scevgep4229 = getelementptr i8, ptr %i.cat, i64 %i.cbn
  %scevgep4230 = getelementptr i8, ptr %i.cat, i64 4
  %i.cbo = add nsw i64 %i.cbe, -3
  %i.cbp = add nsw i64 %i.cbo, %i.cbc
  %i.cbq = mul i64 %i.cbm, %i.cbp
  %i.cbr = getelementptr i8, ptr %scevgep4230, i64 %i.cbq
  %scevgep4231 = getelementptr i8, ptr %i.cbr, i64 %i.cbk
  %i.cbs = mul i64 %i.cav, %i.cau                 ; 2 uses
  %i.cbt = add nsw i64 %i.cbc, 1
  %i.cbu = mul i64 %i.cbs, %i.cbt
  %scevgep4232 = getelementptr i8, ptr %i.cat, i64 %i.cbu
  %scevgep4233 = getelementptr i8, ptr %i.cat, i64 4
  %i.cbv = add nsw i64 %i.cbe, -2
  %i.cbw = add nsw i64 %i.cbv, %i.cbc
  %i.cbx = mul i64 %i.cbs, %i.cbw
  %i.cby = getelementptr i8, ptr %scevgep4233, i64 %i.cbx
  %scevgep4234 = getelementptr i8, ptr %i.cby, i64 %i.cbk
  %i.cbz = mul i64 %i.cav, %i.cau                 ; 2 uses
  %i.cca = add nsw i64 %i.cbc, 2
  %i.ccb = mul i64 %i.cbz, %i.cca
  %scevgep4235 = getelementptr i8, ptr %i.cat, i64 %i.ccb
  %scevgep4236 = getelementptr i8, ptr %i.cat, i64 4
  %i.ccc = add nsw i64 %i.cbe, -1
  %i.ccd = add nsw i64 %i.ccc, %i.cbc
  %i.cce = mul i64 %i.cbz, %i.ccd
  %i.ccf = getelementptr i8, ptr %scevgep4236, i64 %i.cce
  %scevgep4237 = getelementptr i8, ptr %i.ccf, i64 %i.cbk
  %27 = mul i64 %i.cav, %i.cau
  %i.ccg = add nsw i64 %i.cbc, 3
  %i.cch = mul i64 %27, %i.ccg
  %scevgep4238 = getelementptr i8, ptr %i.cat, i64 %i.cch
  %scevgep4239 = getelementptr i8, ptr %i.caw, i64 16
  %i.cci = mul i64 %i.cba, %i.cay
  %i.ccj = add nsw i64 %wide.trip.count3025, -1
  %i.cck = mul i64 %i.cci, %i.ccj
  %i.ccl = shl nuw nsw i64 %i.cbj, 4
  %i.ccm = getelementptr i8, ptr %scevgep4239, i64 %i.cck
  %scevgep4240 = getelementptr i8, ptr %i.ccm, i64 %i.ccl
  %i.ccn = zext i32 %i.cap to i64                 ; 5 uses
  %i.cco = insertelement <4 x ptr> poison, ptr %i.caw, i64 0
  %i.ccp = shufflevector <4 x ptr> %i.cco, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ccq = insertelement <4 x ptr> poison, ptr %scevgep4237, i64 0
  %i.ccr = insertelement <4 x ptr> %i.ccq, ptr %scevgep4234, i64 1
  %i.ccs = insertelement <4 x ptr> %i.ccr, ptr %scevgep4231, i64 2
  %i.cct = insertelement <4 x ptr> %i.ccs, ptr %scevgep4228, i64 3
  %i.ccu = insertelement <4 x ptr> poison, ptr %scevgep4238, i64 0
  %i.ccv = insertelement <4 x ptr> %i.ccu, ptr %scevgep4235, i64 1
  %i.ccw = insertelement <4 x ptr> %i.ccv, ptr %scevgep4232, i64 2
  %i.ccx = insertelement <4 x ptr> %i.ccw, ptr %scevgep4229, i64 3
  %i.ccy = insertelement <4 x ptr> poison, ptr %scevgep4240, i64 0
  %i.ccz = shufflevector <4 x ptr> %i.ccy, <4 x ptr> poison, <4 x i32> zeroinitializer
  %min.iters.check4242 = icmp ult i32 %i.cap, 4
  %i.cda = icmp ult <4 x ptr> %i.ccp, %i.cct
  %i.cdb = icmp ult <4 x ptr> %i.ccx, %i.ccz
  %i.cdc = or i64 %25, %26
  %i.cdd = icmp slt i64 %i.cdc, 0
  %i.cde = and <4 x i1> %i.cda, %i.cdb
  %i.cdf = bitcast <4 x i1> %i.cde to i4
  %i.cdg = icmp ne i4 %i.cdf, 0
  %op.rdx = or i1 %i.cdg, %i.cdd
  %min.iters.check4262 = icmp ult i32 %i.cap, 16
  %i.cdh = and i64 %i.ccn, 12
  %n.vec4264 = and i64 %i.ccn, 2147483632         ; 6 uses
  %i.cdi = trunc nuw nsw i64 %n.vec4264 to i32
  %i.cdj = shl nuw nsw i64 %n.vec4264, 4
  %i.cdk = shl nuw nsw i64 %n.vec4264, 2          ; 4 uses
  %cmp.n4279 = icmp eq i64 %n.vec4264, %i.ccn
  %min.epilog.iters.check4283 = icmp eq i64 %i.cdh, 0
  %n.vec4286 = and i64 %i.ccn, 2147483644         ; 5 uses
  %i.cdl = trunc nuw nsw i64 %n.vec4286 to i32
  %i.cdm = shl nuw nsw i64 %n.vec4286, 4
  %i.cdn = shl nuw nsw i64 %n.vec4286, 2          ; 4 uses
  %cmp.n4301 = icmp eq i64 %n.vec4286, %i.ccn
  br label %.noexc1723

.noexc1723:                                       ; preds = %.noexc1723.lr.ph, %._crit_edge2873
  %indvars.iv3020 = phi i64 [ %i.cbc, %.noexc1723.lr.ph ], [ %indvars.iv.next3021, %._crit_edge2873 ] ; 5 uses
  %indvars.iv3018 = phi i64 [ 0, %.noexc1723.lr.ph ], [ %indvars.iv.next3019, %._crit_edge2873 ] ; 2 uses
  br i1 %i.cbb, label %iter.check4280, label %._crit_edge2873

iter.check4280:                                   ; preds = %.noexc1723
  %.reass2886 = mul i64 %factor.op.mul2885, %indvars.iv3018
  %i.cdo = getelementptr inbounds nuw i8, ptr %i.caw, i64 %.reass2886 ; 6 uses
  %i.cdp = add nsw i64 %indvars.iv3020, 3
  %.reass2884 = mul i64 %factor.op.mul2877, %i.cdp
  %i.cdq = getelementptr inbounds nuw i8, ptr %i.cat, i64 %.reass2884 ; 6 uses
  %i.cdr = add nsw i64 %indvars.iv3020, 2
  %.reass2882 = mul i64 %factor.op.mul2877, %i.cdr
  %i.cds = getelementptr inbounds nuw i8, ptr %i.cat, i64 %.reass2882 ; 6 uses
  %i.cdt = add nsw i64 %indvars.iv3020, 1
  %.reass2880 = mul i64 %factor.op.mul2877, %i.cdt
  %i.cdu = getelementptr inbounds nuw i8, ptr %i.cat, i64 %.reass2880 ; 6 uses
  %.reass2878 = mul i64 %factor.op.mul2877, %indvars.iv3020
  %i.cdv = getelementptr inbounds nuw i8, ptr %i.cat, i64 %.reass2878 ; 6 uses
  br i1 %min.iters.check4242, label %.lr.ph2872.preheader, label %vector.memcheck4243

vector.memcheck4243:                              ; preds = %iter.check4280
  br i1 %op.rdx, label %.lr.ph2872.preheader, label %vector.main.loop.iter.check4261

vector.main.loop.iter.check4261:                  ; preds = %vector.memcheck4243
  br i1 %min.iters.check4262, label %vec.epilog.ph4284, label %vector.ph4263

vector.ph4263:                                    ; preds = %vector.main.loop.iter.check4261
  %i.cdw = getelementptr i8, ptr %i.cdo, i64 %i.cdj
  %i.cdx = getelementptr i8, ptr %i.cdq, i64 %i.cdk
  %i.cdy = getelementptr i8, ptr %i.cds, i64 %i.cdk
  %i.cdz = getelementptr i8, ptr %i.cdu, i64 %i.cdk
  %i.cea = getelementptr i8, ptr %i.cdv, i64 %i.cdk
  br label %vector.body4265

vector.body4265:                                  ; preds = %vector.ph4263, %vector.body4265
  %index4266 = phi i64 [ 0, %vector.ph4263 ], [ %index.next4277, %vector.body4265 ] ; 3 uses
  %i.ceb = shl i64 %index4266, 4
  %next.gep4267 = getelementptr i8, ptr %i.cdo, i64 %i.ceb
  %i.cec = shl i64 %index4266, 2                  ; 4 uses
  %next.gep4268 = getelementptr i8, ptr %i.cdq, i64 %i.cec
  %next.gep4269 = getelementptr i8, ptr %i.cds, i64 %i.cec
  %next.gep4270 = getelementptr i8, ptr %i.cdu, i64 %i.cec
  %next.gep4271 = getelementptr i8, ptr %i.cdv, i64 %i.cec
  %wide.load4272 = load <16 x float>, ptr %next.gep4271, align 4, !tbaa !233, !alias.scope !329
  %wide.load4273 = load <16 x float>, ptr %next.gep4270, align 4, !tbaa !233, !alias.scope !330
  %wide.load4274 = load <16 x float>, ptr %next.gep4269, align 4, !tbaa !233, !alias.scope !331
  %wide.load4275 = load <16 x float>, ptr %next.gep4268, align 4, !tbaa !233, !alias.scope !332
  %i.ced = shufflevector <16 x float> %wide.load4272, <16 x float> %wide.load4273, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.cee = shufflevector <16 x float> %wide.load4274, <16 x float> %wide.load4275, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec4276 = shufflevector <32 x float> %i.ced, <32 x float> %i.cee, <64 x i32> <i32 0, i32 16, i32 32, i32 48, i32 1, i32 17, i32 33, i32 49, i32 2, i32 18, i32 34, i32 50, i32 3, i32 19, i32 35, i32 51, i32 4, i32 20, i32 36, i32 52, i32 5, i32 21, i32 37, i32 53, i32 6, i32 22, i32 38, i32 54, i32 7, i32 23, i32 39, i32 55, i32 8, i32 24, i32 40, i32 56, i32 9, i32 25, i32 41, i32 57, i32 10, i32 26, i32 42, i32 58, i32 11, i32 27, i32 43, i32 59, i32 12, i32 28, i32 44, i32 60, i32 13, i32 29, i32 45, i32 61, i32 14, i32 30, i32 46, i32 62, i32 15, i32 31, i32 47, i32 63>
  store <64 x float> %interleaved.vec4276, ptr %next.gep4267, align 4, !tbaa !233, !alias.scope !333, !noalias !334
  %index.next4277 = add nuw i64 %index4266, 16    ; 2 uses
  %i.cef = icmp eq i64 %index.next4277, %n.vec4264
  br i1 %i.cef, label %middle.block4278, label %vector.body4265, !llvm.loop !222

middle.block4278:                                 ; preds = %vector.body4265
  br i1 %cmp.n4279, label %._crit_edge2873, label %vec.epilog.iter.check4281

vec.epilog.iter.check4281:                        ; preds = %middle.block4278
  br i1 %min.epilog.iters.check4283, label %.lr.ph2872.preheader, label %vec.epilog.ph4284, !prof !57

vec.epilog.ph4284:                                ; preds = %vector.main.loop.iter.check4261, %vec.epilog.iter.check4281
  %vec.epilog.resume.val4285 = phi i64 [ %n.vec4264, %vec.epilog.iter.check4281 ], [ 0, %vector.main.loop.iter.check4261 ]
  %i.ceg = getelementptr i8, ptr %i.cdo, i64 %i.cdm
  %i.ceh = getelementptr i8, ptr %i.cdq, i64 %i.cdn
  %i.cei = getelementptr i8, ptr %i.cds, i64 %i.cdn
  %i.cej = getelementptr i8, ptr %i.cdu, i64 %i.cdn
  %i.cek = getelementptr i8, ptr %i.cdv, i64 %i.cdn
  br label %vec.epilog.vector.body4287

vec.epilog.vector.body4287:                       ; preds = %vec.epilog.vector.body4287, %vec.epilog.ph4284
  %index4288 = phi i64 [ %vec.epilog.resume.val4285, %vec.epilog.ph4284 ], [ %index.next4299, %vec.epilog.vector.body4287 ] ; 3 uses
  %i.cel = shl i64 %index4288, 4
  %next.gep4289 = getelementptr i8, ptr %i.cdo, i64 %i.cel
  %i.cem = shl i64 %index4288, 2                  ; 4 uses
  %next.gep4290 = getelementptr i8, ptr %i.cdq, i64 %i.cem
  %next.gep4291 = getelementptr i8, ptr %i.cds, i64 %i.cem
  %next.gep4292 = getelementptr i8, ptr %i.cdu, i64 %i.cem
  %next.gep4293 = getelementptr i8, ptr %i.cdv, i64 %i.cem
  %wide.load4294 = load <4 x float>, ptr %next.gep4293, align 4, !tbaa !233, !alias.scope !329
  %wide.load4295 = load <4 x float>, ptr %next.gep4292, align 4, !tbaa !233, !alias.scope !330
  %wide.load4296 = load <4 x float>, ptr %next.gep4291, align 4, !tbaa !233, !alias.scope !331
  %wide.load4297 = load <4 x float>, ptr %next.gep4290, align 4, !tbaa !233, !alias.scope !332
  %i.cen = shufflevector <4 x float> %wide.load4294, <4 x float> %wide.load4295, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ceo = shufflevector <4 x float> %wide.load4296, <4 x float> %wide.load4297, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec4298 = shufflevector <8 x float> %i.cen, <8 x float> %i.ceo, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec4298, ptr %next.gep4289, align 4, !tbaa !233, !alias.scope !333, !noalias !334
  %index.next4299 = add nuw i64 %index4288, 4     ; 2 uses
  %i.cep = icmp eq i64 %index.next4299, %n.vec4286
  br i1 %i.cep, label %vec.epilog.middle.block4300, label %vec.epilog.vector.body4287, !llvm.loop !223

vec.epilog.middle.block4300:                      ; preds = %vec.epilog.vector.body4287
  br i1 %cmp.n4301, label %._crit_edge2873, label %.lr.ph2872.preheader

.lr.ph2872.preheader:                             ; preds = %iter.check4280, %vector.memcheck4243, %vec.epilog.iter.check4281, %vec.epilog.middle.block4300
  %.010172871.ph = phi i32 [ 0, %iter.check4280 ], [ 0, %vector.memcheck4243 ], [ %i.cdi, %vec.epilog.iter.check4281 ], [ %i.cdl, %vec.epilog.middle.block4300 ] ; 4 uses
  %.010182870.ph = phi ptr [ %i.cdo, %iter.check4280 ], [ %i.cdo, %vector.memcheck4243 ], [ %i.cdw, %vec.epilog.iter.check4281 ], [ %i.ceg, %vec.epilog.middle.block4300 ] ; 6 uses
  %.010192869.ph = phi ptr [ %i.cdq, %iter.check4280 ], [ %i.cdq, %vector.memcheck4243 ], [ %i.cdx, %vec.epilog.iter.check4281 ], [ %i.ceh, %vec.epilog.middle.block4300 ] ; 3 uses
  %.010202868.ph = phi ptr [ %i.cds, %iter.check4280 ], [ %i.cds, %vector.memcheck4243 ], [ %i.cdy, %vec.epilog.iter.check4281 ], [ %i.cei, %vec.epilog.middle.block4300 ] ; 3 uses
  %.010212867.ph = phi ptr [ %i.cdu, %iter.check4280 ], [ %i.cdu, %vector.memcheck4243 ], [ %i.cdz, %vec.epilog.iter.check4281 ], [ %i.cej, %vec.epilog.middle.block4300 ] ; 3 uses
  %.010222866.ph = phi ptr [ %i.cdv, %iter.check4280 ], [ %i.cdv, %vector.memcheck4243 ], [ %i.cea, %vec.epilog.iter.check4281 ], [ %i.cek, %vec.epilog.middle.block4300 ] ; 3 uses
  %i.ceq = sub i32 %i.cap, %.010172871.ph
  %.neg5031 = add i32 %.010172871.ph, 1
  %xtraiter5029 = and i32 %i.ceq, 1
  %lcmp.mod5030.not = icmp eq i32 %xtraiter5029, 0
  br i1 %lcmp.mod5030.not, label %.lr.ph2872.prol.loopexit, label %.lr.ph2872.prol

.lr.ph2872.prol:                                  ; preds = %.lr.ph2872.preheader
  %i.cer = getelementptr inbounds nuw i8, ptr %.010222866.ph, i64 4
  %i.ces = load float, ptr %.010222866.ph, align 4, !tbaa !233
  store float %i.ces, ptr %.010182870.ph, align 4, !tbaa !233
  %i.cet = getelementptr inbounds nuw i8, ptr %.010212867.ph, i64 4
  %i.ceu = load float, ptr %.010212867.ph, align 4, !tbaa !233
  %i.cev = getelementptr inbounds nuw i8, ptr %.010182870.ph, i64 4
  store float %i.ceu, ptr %i.cev, align 4, !tbaa !233
  %i.cew = getelementptr inbounds nuw i8, ptr %.010202868.ph, i64 4
  %i.cex = load float, ptr %.010202868.ph, align 4, !tbaa !233
  %i.cey = getelementptr inbounds nuw i8, ptr %.010182870.ph, i64 8
  store float %i.cex, ptr %i.cey, align 4, !tbaa !233
  %i.cez = getelementptr inbounds nuw i8, ptr %.010192869.ph, i64 4
  %i.cfa = load float, ptr %.010192869.ph, align 4, !tbaa !233
  %i.cfb = getelementptr inbounds nuw i8, ptr %.010182870.ph, i64 12
  store float %i.cfa, ptr %i.cfb, align 4, !tbaa !233
  %i.cfc = getelementptr inbounds nuw i8, ptr %.010182870.ph, i64 16
  %i.cfd = add nuw nsw i32 %.010172871.ph, 1
  br label %.lr.ph2872.prol.loopexit

.lr.ph2872.prol.loopexit:                         ; preds = %.lr.ph2872.prol, %.lr.ph2872.preheader
  %.010172871.unr = phi i32 [ %.010172871.ph, %.lr.ph2872.preheader ], [ %i.cfd, %.lr.ph2872.prol ]
  %.010182870.unr = phi ptr [ %.010182870.ph, %.lr.ph2872.preheader ], [ %i.cfc, %.lr.ph2872.prol ]
  %.010192869.unr = phi ptr [ %.010192869.ph, %.lr.ph2872.preheader ], [ %i.cez, %.lr.ph2872.prol ]
  %.010202868.unr = phi ptr [ %.010202868.ph, %.lr.ph2872.preheader ], [ %i.cew, %.lr.ph2872.prol ]
  %.010212867.unr = phi ptr [ %.010212867.ph, %.lr.ph2872.preheader ], [ %i.cet, %.lr.ph2872.prol ]
  %.010222866.unr = phi ptr [ %.010222866.ph, %.lr.ph2872.preheader ], [ %i.cer, %.lr.ph2872.prol ]
  %i.cfe = icmp eq i32 %i.cap, %.neg5031
  br i1 %i.cfe, label %._crit_edge2873, label %.lr.ph2872

._crit_edge2873:                                  ; preds = %.lr.ph2872.prol.loopexit, %.lr.ph2872, %middle.block4278, %vec.epilog.middle.block4300, %.noexc1723
  %indvars.iv.next3021 = add nsw i64 %indvars.iv3020, 4 ; 2 uses
  %indvars.iv.next3019 = add nuw nsw i64 %indvars.iv3018, 1 ; 2 uses
  %exitcond3026.not = icmp eq i64 %indvars.iv.next3019, %wide.trip.count3025
  br i1 %exitcond3026.not, label %.thread2565.loopexit, label %.noexc1723, !llvm.loop !224

.lr.ph2872:                                       ; preds = %.lr.ph2872.prol.loopexit, %.lr.ph2872
  %.010172871 = phi i32 [ %i.cgd, %.lr.ph2872 ], [ %.010172871.unr, %.lr.ph2872.prol.loopexit ]
  %.010182870 = phi ptr [ %i.cgc, %.lr.ph2872 ], [ %.010182870.unr, %.lr.ph2872.prol.loopexit ] ; 9 uses
  %.010192869 = phi ptr [ %i.cfz, %.lr.ph2872 ], [ %.010192869.unr, %.lr.ph2872.prol.loopexit ] ; 3 uses
  %.010202868 = phi ptr [ %i.cfw, %.lr.ph2872 ], [ %.010202868.unr, %.lr.ph2872.prol.loopexit ] ; 3 uses
  %.010212867 = phi ptr [ %i.cft, %.lr.ph2872 ], [ %.010212867.unr, %.lr.ph2872.prol.loopexit ] ; 3 uses
  %.010222866 = phi ptr [ %i.cfr, %.lr.ph2872 ], [ %.010222866.unr, %.lr.ph2872.prol.loopexit ] ; 3 uses
  %i.cff = getelementptr inbounds nuw i8, ptr %.010222866, i64 4
  %i.cfg = load float, ptr %.010222866, align 4, !tbaa !233
  store float %i.cfg, ptr %.010182870, align 4, !tbaa !233
  %i.cfh = getelementptr inbounds nuw i8, ptr %.010212867, i64 4
  %i.cfi = load float, ptr %.010212867, align 4, !tbaa !233
  %i.cfj = getelementptr inbounds nuw i8, ptr %.010182870, i64 4
  store float %i.cfi, ptr %i.cfj, align 4, !tbaa !233
  %i.cfk = getelementptr inbounds nuw i8, ptr %.010202868, i64 4
  %i.cfl = load float, ptr %.010202868, align 4, !tbaa !233
  %i.cfm = getelementptr inbounds nuw i8, ptr %.010182870, i64 8
  store float %i.cfl, ptr %i.cfm, align 4, !tbaa !233
  %i.cfn = getelementptr inbounds nuw i8, ptr %.010192869, i64 4
  %i.cfo = load float, ptr %.010192869, align 4, !tbaa !233
  %i.cfp = getelementptr inbounds nuw i8, ptr %.010182870, i64 12
  store float %i.cfo, ptr %i.cfp, align 4, !tbaa !233
  %i.cfq = getelementptr inbounds nuw i8, ptr %.010182870, i64 16
  %i.cfr = getelementptr inbounds nuw i8, ptr %.010222866, i64 8
  %i.cfs = load float, ptr %i.cff, align 4, !tbaa !233
  store float %i.cfs, ptr %i.cfq, align 4, !tbaa !233
  %i.cft = getelementptr inbounds nuw i8, ptr %.010212867, i64 8
  %i.cfu = load float, ptr %i.cfh, align 4, !tbaa !233
  %i.cfv = getelementptr inbounds nuw i8, ptr %.010182870, i64 20
  store float %i.cfu, ptr %i.cfv, align 4, !tbaa !233
  %i.cfw = getelementptr inbounds nuw i8, ptr %.010202868, i64 8
  %i.cfx = load float, ptr %i.cfk, align 4, !tbaa !233
  %i.cfy = getelementptr inbounds nuw i8, ptr %.010182870, i64 24
  store float %i.cfx, ptr %i.cfy, align 4, !tbaa !233
  %i.cfz = getelementptr inbounds nuw i8, ptr %.010192869, i64 8
  %i.cga = load float, ptr %i.cfn, align 4, !tbaa !233
end_hunk_3
begin_hunk_4_@_ZNK4ncnn16Slice_x86_avx51219forward_bf16s_fp16sERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
  %i.tn = getelementptr inbounds nuw [2 x i8], ptr %.511572646.us, i64 %i.ic ; 2 uses
  %indvars.iv.next2938 = add nuw nsw i64 %indvars.iv2937, 1 ; 2 uses
  %exitcond2941.not = icmp eq i64 %indvars.iv.next2938, %wide.trip.count2940
  br i1 %exitcond2941.not, label %.loopexit2577, label %.lr.ph2644.us, !llvm.loop !349

.loopexit2577:                                    ; preds = %._crit_edge2645.us, %.loopexit2579
  %.61158 = phi ptr [ %.41156, %.loopexit2579 ], [ %i.tn, %._crit_edge2645.us ] ; 2 uses
  br i1 %i.id, label %.thread2527, label %.loopexit2575

.thread2527:                                      ; preds = %bb.ao, %.loopexit2577
  %.611582529 = phi ptr [ %.61158, %.loopexit2577 ], [ %.21154, %bb.ao ] ; 7 uses
  %i.to = phi i1 [ %i.ii, %.loopexit2577 ], [ false, %bb.ao ] ; 3 uses
  %i.tp = icmp eq i32 %i.lg, 8
  br i1 %i.tp, label %.preheader2574, label %.loopexit2575

.preheader2574:                                   ; preds = %.thread2527
  %i.tq = getelementptr inbounds nuw i8, ptr %i.le, i64 48
  %i.tr = load i32, ptr %i.tq, align 8, !tbaa !52 ; 2 uses
  %i.ts = icmp sgt i32 %i.tr, 0
  br i1 %i.ts, label %.lr.ph2662, label %.loopexit2575

.lr.ph2662:                                       ; preds = %.preheader2574
  %i.tt = load ptr, ptr %i.le, align 8, !tbaa !19 ; 4 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.le, i64 44
  %i.tv = load i32, ptr %i.tu, align 4, !tbaa !43
  %i.tw = sext i32 %i.tv to i64                   ; 2 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  %i.ty = load i64, ptr %i.tx, align 8, !tbaa !25 ; 2 uses
  %factor.op.mul2664 = mul i64 %i.ty, %i.tw       ; 2 uses
  %wide.trip.count2946 = zext nneg i32 %i.tr to i64 ; 2 uses
  %i.tz = getelementptr i8, ptr %.611582529, i64 %i.kd
  %scevgep3534 = getelementptr i8, ptr %i.tz, i64 8
  %i.ua = add nsw i64 %wide.trip.count2946, -1    ; 2 uses
  %i.ub = mul i64 %i.ke, %i.ua                    ; 2 uses
  %scevgep3535 = getelementptr i8, ptr %scevgep3534, i64 %i.ub
  %i.uc = getelementptr i8, ptr %.611582529, i64 %i.kd
  %i.ud = getelementptr i8, ptr %i.uc, i64 %i.kf
  %scevgep3536 = getelementptr i8, ptr %i.ud, i64 8
  %scevgep3537 = getelementptr i8, ptr %scevgep3536, i64 %i.ub
  %scevgep3538 = getelementptr i8, ptr %.611582529, i64 %i.kf
  %i.ue = getelementptr i8, ptr %i.tt, i64 %i.kg
  %scevgep3539 = getelementptr i8, ptr %i.ue, i64 16
  %i.uf = mul i64 %i.ty, %i.ua
  %i.ug = mul i64 %i.uf, %i.tw
  %scevgep3540 = getelementptr i8, ptr %scevgep3539, i64 %i.ug ; 2 uses
  %bound03543 = icmp ult ptr %i.tt, %scevgep3537
  %bound13544 = icmp ult ptr %scevgep3538, %scevgep3540
  %found.conflict3545 = and i1 %bound03543, %bound13544
  %stride.check3546 = icmp slt i64 %factor.op.mul2664, 0
  %i.uh = or i1 %found.conflict3545, %stride.check3546
  %i.ui = or i1 %i.uh, %stride.check3547
  %bound03548 = icmp ult ptr %i.tt, %scevgep3535
  %bound13549 = icmp ult ptr %.611582529, %scevgep3540
  %found.conflict3550 = and i1 %bound03548, %bound13549
  %conflict.rdx3551 = or i1 %i.ui, %found.conflict3550
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph2662, %._crit_edge2659
  %indvars.iv2943 = phi i64 [ 0, %.lr.ph2662 ], [ %indvars.iv.next2944, %._crit_edge2659 ] ; 2 uses
  %.711592660 = phi ptr [ %.611582529, %.lr.ph2662 ], [ %i.ux, %._crit_edge2659 ] ; 8 uses
  br i1 %i.ia, label %iter.check3573, label %._crit_edge2659

iter.check3573:                                   ; preds = %bb.as
  %.reass = mul i64 %factor.op.mul2664, %indvars.iv2943
  %i.uj = getelementptr inbounds nuw i8, ptr %i.tt, i64 %.reass ; 6 uses
  %i.uk = getelementptr inbounds nuw [2 x i8], ptr %.711592660, i64 %i.if ; 6 uses
  br i1 %min.iters.check3541, label %.lr.ph2658.preheader, label %vector.memcheck3542

vector.memcheck3542:                              ; preds = %iter.check3573
  br i1 %conflict.rdx3551, label %.lr.ph2658.preheader, label %vector.main.loop.iter.check3552

vector.main.loop.iter.check3552:                  ; preds = %vector.memcheck3542
  br i1 %min.iters.check3553, label %vec.epilog.ph3577, label %vector.ph3554

vector.ph3554:                                    ; preds = %vector.main.loop.iter.check3552
  %i.ul = getelementptr i8, ptr %i.uj, i64 %i.kj
  %i.um = getelementptr i8, ptr %i.uk, i64 %i.kk
  %i.un = getelementptr i8, ptr %.711592660, i64 %i.kk
  br label %vector.body3556

vector.body3556:                                  ; preds = %vector.ph3554, %vector.body3556
  %index3557 = phi i64 [ 0, %vector.ph3554 ], [ %index.next3570, %vector.body3556 ] ; 3 uses
  %i.uo = shl i64 %index3557, 4
  %next.gep3558 = getelementptr i8, ptr %i.uj, i64 %i.uo
  %i.up = shl i64 %index3557, 3                   ; 2 uses
  %next.gep3559 = getelementptr i8, ptr %i.uk, i64 %i.up
  %next.gep3560 = getelementptr i8, ptr %.711592660, i64 %i.up
  %wide.vec = load <64 x i16>, ptr %next.gep3560, align 2, !tbaa !457, !alias.scope !458
  %wide.vec3564 = load <64 x i16>, ptr %next.gep3559, align 2, !tbaa !457, !alias.scope !459
  %interleaved.vec3569 = shufflevector <64 x i16> %wide.vec, <64 x i16> %wide.vec3564, <128 x i32> <i32 0, i32 1, i32 2, i32 3, i32 64, i32 65, i32 66, i32 67, i32 4, i32 5, i32 6, i32 7, i32 68, i32 69, i32 70, i32 71, i32 8, i32 9, i32 10, i32 11, i32 72, i32 73, i32 74, i32 75, i32 12, i32 13, i32 14, i32 15, i32 76, i32 77, i32 78, i32 79, i32 16, i32 17, i32 18, i32 19, i32 80, i32 81, i32 82, i32 83, i32 20, i32 21, i32 22, i32 23, i32 84, i32 85, i32 86, i32 87, i32 24, i32 25, i32 26, i32 27, i32 88, i32 89, i32 90, i32 91, i32 28, i32 29, i32 30, i32 31, i32 92, i32 93, i32 94, i32 95, i32 32, i32 33, i32 34, i32 35, i32 96, i32 97, i32 98, i32 99, i32 36, i32 37, i32 38, i32 39, i32 100, i32 101, i32 102, i32 103, i32 40, i32 41, i32 42, i32 43, i32 104, i32 105, i32 106, i32 107, i32 44, i32 45, i32 46, i32 47, i32 108, i32 109, i32 110, i32 111, i32 48, i32 49, i32 50, i32 51, i32 112, i32 113, i32 114, i32 115, i32 52, i32 53, i32 54, i32 55, i32 116, i32 117, i32 118, i32 119, i32 56, i32 57, i32 58, i32 59, i32 120, i32 121, i32 122, i32 123, i32 60, i32 61, i32 62, i32 63, i32 124, i32 125, i32 126, i32 127>
  store <128 x i16> %interleaved.vec3569, ptr %next.gep3558, align 2, !tbaa !457, !alias.scope !460, !noalias !461
  %index.next3570 = add nuw i64 %index3557, 16    ; 2 uses
  %i.uq = icmp eq i64 %index.next3570, %n.vec3555
  br i1 %i.uq, label %middle.block3571, label %vector.body3556, !llvm.loop !354

middle.block3571:                                 ; preds = %vector.body3556
  br i1 %cmp.n3572, label %._crit_edge2659, label %vec.epilog.iter.check3574

vec.epilog.iter.check3574:                        ; preds = %middle.block3571
  br i1 %min.epilog.iters.check3576, label %.lr.ph2658.preheader, label %vec.epilog.ph3577, !prof !57

vec.epilog.ph3577:                                ; preds = %vector.main.loop.iter.check3552, %vec.epilog.iter.check3574
  %vec.epilog.resume.val3578 = phi i64 [ %n.vec3555, %vec.epilog.iter.check3574 ], [ 0, %vector.main.loop.iter.check3552 ]
  %i.ur = getelementptr i8, ptr %i.uj, i64 %i.km
  %i.us = getelementptr i8, ptr %i.uk, i64 %i.kn
  %i.ut = getelementptr i8, ptr %.711592660, i64 %i.kn
  br label %vec.epilog.vector.body3580

vec.epilog.vector.body3580:                       ; preds = %vec.epilog.vector.body3580, %vec.epilog.ph3577
  %index3581 = phi i64 [ %vec.epilog.resume.val3578, %vec.epilog.ph3577 ], [ %index.next3596, %vec.epilog.vector.body3580 ] ; 3 uses
  %i.uu = shl i64 %index3581, 4
  %next.gep3582 = getelementptr i8, ptr %i.uj, i64 %i.uu
  %i.uv = shl i64 %index3581, 3                   ; 2 uses
  %next.gep3583 = getelementptr i8, ptr %i.uk, i64 %i.uv
  %next.gep3584 = getelementptr i8, ptr %.711592660, i64 %i.uv
  %wide.vec3585 = load <16 x i16>, ptr %next.gep3584, align 2, !tbaa !457, !alias.scope !458
  %wide.vec3590 = load <16 x i16>, ptr %next.gep3583, align 2, !tbaa !457, !alias.scope !459
  %interleaved.vec3595 = shufflevector <16 x i16> %wide.vec3585, <16 x i16> %wide.vec3590, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 4, i32 5, i32 6, i32 7, i32 20, i32 21, i32 22, i32 23, i32 8, i32 9, i32 10, i32 11, i32 24, i32 25, i32 26, i32 27, i32 12, i32 13, i32 14, i32 15, i32 28, i32 29, i32 30, i32 31>
  store <32 x i16> %interleaved.vec3595, ptr %next.gep3582, align 2, !tbaa !457, !alias.scope !460, !noalias !461
  %index.next3596 = add nuw i64 %index3581, 4     ; 2 uses
  %i.uw = icmp eq i64 %index.next3596, %n.vec3579
  br i1 %i.uw, label %vec.epilog.middle.block3597, label %vec.epilog.vector.body3580, !llvm.loop !355

vec.epilog.middle.block3597:                      ; preds = %vec.epilog.vector.body3580
  br i1 %cmp.n3598, label %._crit_edge2659, label %.lr.ph2658.preheader

.lr.ph2658.preheader:                             ; preds = %iter.check3573, %vector.memcheck3542, %vec.epilog.iter.check3574, %vec.epilog.middle.block3597
  %.011152656.ph = phi i32 [ 0, %iter.check3573 ], [ 0, %vector.memcheck3542 ], [ %i.ki, %vec.epilog.iter.check3574 ], [ %i.kl, %vec.epilog.middle.block3597 ]
  %.011162655.ph = phi ptr [ %i.uj, %iter.check3573 ], [ %i.uj, %vector.memcheck3542 ], [ %i.ul, %vec.epilog.iter.check3574 ], [ %i.ur, %vec.epilog.middle.block3597 ]
  %.011172654.ph = phi ptr [ %i.uk, %iter.check3573 ], [ %i.uk, %vector.memcheck3542 ], [ %i.um, %vec.epilog.iter.check3574 ], [ %i.us, %vec.epilog.middle.block3597 ]
  %.011182653.ph = phi ptr [ %.711592660, %iter.check3573 ], [ %.711592660, %vector.memcheck3542 ], [ %i.un, %vec.epilog.iter.check3574 ], [ %i.ut, %vec.epilog.middle.block3597 ]
  br label %.lr.ph2658

._crit_edge2659:                                  ; preds = %.lr.ph2658, %middle.block3571, %vec.epilog.middle.block3597, %bb.as
  %i.ux = getelementptr inbounds [2 x i8], ptr %.711592660, i64 %i.hz ; 2 uses
  %indvars.iv.next2944 = add nuw nsw i64 %indvars.iv2943, 1 ; 2 uses
  %exitcond2947.not = icmp eq i64 %indvars.iv.next2944, %wide.trip.count2946
  br i1 %exitcond2947.not, label %.loopexit2575, label %bb.as, !llvm.loop !356

.lr.ph2658:                                       ; preds = %.lr.ph2658.preheader, %.lr.ph2658
  %.011152656 = phi i32 [ %i.vw, %.lr.ph2658 ], [ %.011152656.ph, %.lr.ph2658.preheader ]
  %.011162655 = phi ptr [ %i.vv, %.lr.ph2658 ], [ %.011162655.ph, %.lr.ph2658.preheader ] ; 9 uses
  %.011172654 = phi ptr [ %i.vu, %.lr.ph2658 ], [ %.011172654.ph, %.lr.ph2658.preheader ] ; 5 uses
  %.011182653 = phi ptr [ %i.vt, %.lr.ph2658 ], [ %.011182653.ph, %.lr.ph2658.preheader ] ; 5 uses
  %i.uy = load i16, ptr %.011182653, align 2, !tbaa !457
  store i16 %i.uy, ptr %.011162655, align 2, !tbaa !457
  %i.uz = getelementptr inbounds nuw i8, ptr %.011182653, i64 2
  %i.va = load i16, ptr %i.uz, align 2, !tbaa !457
  %i.vb = getelementptr inbounds nuw i8, ptr %.011162655, i64 2
  store i16 %i.va, ptr %i.vb, align 2, !tbaa !457
  %i.vc = getelementptr inbounds nuw i8, ptr %.011182653, i64 4
  %i.vd = load i16, ptr %i.vc, align 2, !tbaa !457
  %i.ve = getelementptr inbounds nuw i8, ptr %.011162655, i64 4
  store i16 %i.vd, ptr %i.ve, align 2, !tbaa !457
  %i.vf = getelementptr inbounds nuw i8, ptr %.011182653, i64 6
  %i.vg = load i16, ptr %i.vf, align 2, !tbaa !457
  %i.vh = getelementptr inbounds nuw i8, ptr %.011162655, i64 6
  store i16 %i.vg, ptr %i.vh, align 2, !tbaa !457
  %i.vi = load i16, ptr %.011172654, align 2, !tbaa !457
  %i.vj = getelementptr inbounds nuw i8, ptr %.011162655, i64 8
  store i16 %i.vi, ptr %i.vj, align 2, !tbaa !457
  %i.vk = getelementptr inbounds nuw i8, ptr %.011172654, i64 2
  %i.vl = load i16, ptr %i.vk, align 2, !tbaa !457
  %i.vm = getelementptr inbounds nuw i8, ptr %.011162655, i64 10
  store i16 %i.vl, ptr %i.vm, align 2, !tbaa !457
  %i.vn = getelementptr inbounds nuw i8, ptr %.011172654, i64 4
  %i.vo = load i16, ptr %i.vn, align 2, !tbaa !457
  %i.vp = getelementptr inbounds nuw i8, ptr %.011162655, i64 12
  store i16 %i.vo, ptr %i.vp, align 2, !tbaa !457
  %i.vq = getelementptr inbounds nuw i8, ptr %.011172654, i64 6
  %i.vr = load i16, ptr %i.vq, align 2, !tbaa !457
  %i.vs = getelementptr inbounds nuw i8, ptr %.011162655, i64 14
  store i16 %i.vr, ptr %i.vs, align 2, !tbaa !457
  %i.vt = getelementptr inbounds nuw i8, ptr %.011182653, i64 8
  %i.vu = getelementptr inbounds nuw i8, ptr %.011172654, i64 8
  %i.vv = getelementptr inbounds nuw i8, ptr %.011162655, i64 16
  %i.vw = add nuw nsw i32 %.011152656, 1          ; 2 uses
  %exitcond2942.not = icmp eq i32 %i.vw, %i.da
  br i1 %exitcond2942.not, label %._crit_edge2659, label %.lr.ph2658, !llvm.loop !357

.loopexit2575:                                    ; preds = %._crit_edge2659, %.preheader2574, %.thread2527, %.loopexit2577
  %i.vx = phi i1 [ %i.ii, %.loopexit2577 ], [ %i.to, %.thread2527 ], [ %i.to, %.preheader2574 ], [ %i.to, %._crit_edge2659 ]
  %.81160 = phi ptr [ %.61158, %.loopexit2577 ], [ %.611582529, %.thread2527 ], [ %.611582529, %.preheader2574 ], [ %i.ux, %._crit_edge2659 ] ; 2 uses
  br i1 %i.vx, label %.thread2532, label %.thread2538

.thread2532:                                      ; preds = %bb.aq, %.loopexit2575
  %.811602534 = phi ptr [ %.81160, %.loopexit2575 ], [ %.41156, %bb.aq ] ; 19 uses
  %i.vy = icmp eq i32 %i.lg, 8
  br i1 %i.vy, label %.preheader2573, label %.thread2535

.preheader2573:                                   ; preds = %.thread2532
  %i.vz = getelementptr inbounds nuw i8, ptr %i.le, i64 48
  %i.wa = load i32, ptr %i.vz, align 8, !tbaa !52 ; 2 uses
  %i.wb = icmp sgt i32 %i.wa, 0
  br i1 %i.wb, label %.lr.ph2680, label %.thread2538

.lr.ph2680:                                       ; preds = %.preheader2573
  %i.wc = load ptr, ptr %i.le, align 8, !tbaa !19 ; 3 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %i.le, i64 44
  %i.we = load i32, ptr %i.wd, align 4, !tbaa !43
  %i.wf = sext i32 %i.we to i64                   ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  %i.wh = load i64, ptr %i.wg, align 8, !tbaa !25 ; 2 uses
  %factor.op.mul2682 = mul i64 %i.wh, %i.wf       ; 2 uses
  %wide.trip.count2952 = zext nneg i32 %i.wa to i64 ; 2 uses
  %i.wi = getelementptr i8, ptr %.811602534, i64 %i.jr
  %scevgep3390 = getelementptr i8, ptr %i.wi, i64 2
  %i.wj = add nsw i64 %wide.trip.count2952, -1    ; 2 uses
  %i.wk = mul i64 %i.js, %i.wj                    ; 8 uses
  %scevgep3391 = getelementptr i8, ptr %scevgep3390, i64 %i.wk
  %i.wl = getelementptr i8, ptr %.811602534, i64 %i.jt
  %i.wm = getelementptr i8, ptr %i.wl, i64 %i.jr
  %scevgep3392 = getelementptr i8, ptr %i.wm, i64 2
  %scevgep3393 = getelementptr i8, ptr %scevgep3392, i64 %i.wk
  %scevgep3394 = getelementptr i8, ptr %.811602534, i64 %i.jt
  %i.wn = getelementptr i8, ptr %.811602534, i64 %i.ju
  %i.wo = getelementptr i8, ptr %i.wn, i64 %i.jr
  %scevgep3395 = getelementptr i8, ptr %i.wo, i64 2
  %scevgep3396 = getelementptr i8, ptr %scevgep3395, i64 %i.wk
  %scevgep3397 = getelementptr i8, ptr %.811602534, i64 %i.ju
  %i.wp = getelementptr i8, ptr %.811602534, i64 %i.jv
  %i.wq = getelementptr i8, ptr %i.wp, i64 %i.jr
  %scevgep3398 = getelementptr i8, ptr %i.wq, i64 2
  %scevgep3399 = getelementptr i8, ptr %scevgep3398, i64 %i.wk
  %scevgep3400 = getelementptr i8, ptr %.811602534, i64 %i.jv
  %i.wr = getelementptr i8, ptr %.811602534, i64 %i.jw
  %i.ws = getelementptr i8, ptr %i.wr, i64 %i.jr
  %scevgep3401 = getelementptr i8, ptr %i.ws, i64 2
  %scevgep3402 = getelementptr i8, ptr %scevgep3401, i64 %i.wk
  %scevgep3403 = getelementptr i8, ptr %.811602534, i64 %i.jw
  %i.wt = getelementptr i8, ptr %.811602534, i64 %i.jx
  %i.wu = getelementptr i8, ptr %i.wt, i64 %i.jr
  %scevgep3404 = getelementptr i8, ptr %i.wu, i64 2
  %scevgep3405 = getelementptr i8, ptr %scevgep3404, i64 %i.wk
  %scevgep3406 = getelementptr i8, ptr %.811602534, i64 %i.jx
  %i.wv = getelementptr i8, ptr %.811602534, i64 %i.jy
  %i.ww = getelementptr i8, ptr %i.wv, i64 %i.jr
  %scevgep3407 = getelementptr i8, ptr %i.ww, i64 2
  %scevgep3408 = getelementptr i8, ptr %scevgep3407, i64 %i.wk
  %scevgep3409 = getelementptr i8, ptr %.811602534, i64 %i.jy
  %i.wx = getelementptr i8, ptr %.811602534, i64 %i.jz
  %i.wy = getelementptr i8, ptr %i.wx, i64 %i.jr
  %scevgep3410 = getelementptr i8, ptr %i.wy, i64 2
  %scevgep3411 = getelementptr i8, ptr %scevgep3410, i64 %i.wk
  %scevgep3412 = getelementptr i8, ptr %.811602534, i64 %i.jz
  %i.wz = getelementptr i8, ptr %i.wc, i64 %i.ka
  %scevgep3413 = getelementptr i8, ptr %i.wz, i64 16
  %i.xa = mul i64 %i.wh, %i.wj
  %i.xb = mul i64 %i.xa, %i.wf
  %scevgep3414 = getelementptr i8, ptr %scevgep3413, i64 %i.xb
  %i.xc = insertelement <8 x ptr> poison, ptr %i.wc, i64 0
  %i.xd = shufflevector <8 x ptr> %i.xc, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.xe = insertelement <8 x ptr> poison, ptr %scevgep3411, i64 0
  %i.xf = insertelement <8 x ptr> %i.xe, ptr %scevgep3408, i64 1
  %i.xg = insertelement <8 x ptr> %i.xf, ptr %scevgep3405, i64 2
  %i.xh = insertelement <8 x ptr> %i.xg, ptr %scevgep3402, i64 3
  %i.xi = insertelement <8 x ptr> %i.xh, ptr %scevgep3399, i64 4
  %i.xj = insertelement <8 x ptr> %i.xi, ptr %scevgep3396, i64 5
  %i.xk = insertelement <8 x ptr> %i.xj, ptr %scevgep3393, i64 6
  %i.xl = insertelement <8 x ptr> %i.xk, ptr %scevgep3391, i64 7
  %i.xm = insertelement <8 x ptr> poison, ptr %scevgep3412, i64 0
  %i.xn = insertelement <8 x ptr> %i.xm, ptr %scevgep3409, i64 1
  %i.xo = insertelement <8 x ptr> %i.xn, ptr %scevgep3406, i64 2
  %i.xp = insertelement <8 x ptr> %i.xo, ptr %scevgep3403, i64 3
  %i.xq = insertelement <8 x ptr> %i.xp, ptr %scevgep3400, i64 4
  %i.xr = insertelement <8 x ptr> %i.xq, ptr %scevgep3397, i64 5
  %i.xs = insertelement <8 x ptr> %i.xr, ptr %scevgep3394, i64 6
  %i.xt = insertelement <8 x ptr> %i.xs, ptr %.811602534, i64 7
  %i.xu = insertelement <8 x ptr> poison, ptr %scevgep3414, i64 0
  %i.xv = shufflevector <8 x ptr> %i.xu, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.xw = icmp ult <8 x ptr> %i.xd, %i.xl
  %i.xx = icmp ult <8 x ptr> %i.xt, %i.xv
  %stride.check3420 = icmp slt i64 %factor.op.mul2682, 0
  %i.xy = and <8 x i1> %i.xw, %i.xx
  %i.xz = bitcast <8 x i1> %i.xy to i8
  %i.ya = icmp ne i8 %i.xz, 0
  %op.rdx4058 = or i1 %i.ya, %stride.check3421
  %op.rdx4059 = or i1 %op.rdx4058, %stride.check3420
  br label %bb.at

bb.at:                                            ; preds = %.lr.ph2680, %._crit_edge2677
  %indvars.iv2949 = phi i64 [ 0, %.lr.ph2680 ], [ %indvars.iv.next2950, %._crit_edge2677 ] ; 2 uses
  %.911612678 = phi ptr [ %.811602534, %.lr.ph2680 ], [ %i.zt, %._crit_edge2677 ] ; 14 uses
  br i1 %i.ia, label %iter.check3477, label %._crit_edge2677

iter.check3477:                                   ; preds = %bb.at
  %.reass2683 = mul i64 %factor.op.mul2682, %indvars.iv2949
  %i.yb = getelementptr inbounds nuw i8, ptr %i.wc, i64 %.reass2683 ; 6 uses
  %i.yc = getelementptr inbounds nuw [2 x i8], ptr %.911612678, i64 %i.it ; 6 uses
  %i.yd = getelementptr inbounds nuw [2 x i8], ptr %.911612678, i64 %i.ir ; 6 uses
  %i.ye = getelementptr inbounds nuw [2 x i8], ptr %.911612678, i64 %i.ip ; 6 uses
  %i.yf = getelementptr inbounds nuw [2 x i8], ptr %.911612678, i64 %i.if ; 6 uses
  %i.yg = getelementptr inbounds nuw [2 x i8], ptr %.911612678, i64 %i.in ; 6 uses
  %i.yh = getelementptr inbounds nuw [2 x i8], ptr %.911612678, i64 %i.il ; 6 uses
  %i.yi = getelementptr inbounds nuw [2 x i8], ptr %.911612678, i64 %i.ij ; 6 uses
  br i1 %min.iters.check3415, label %.lr.ph2676.preheader, label %vector.memcheck3416

vector.memcheck3416:                              ; preds = %iter.check3477
  br i1 %op.rdx4059, label %.lr.ph2676.preheader, label %vector.main.loop.iter.check3450

vector.main.loop.iter.check3450:                  ; preds = %vector.memcheck3416
  br i1 %min.iters.check3451, label %vec.epilog.ph3481, label %vector.ph3452

vector.ph3452:                                    ; preds = %vector.main.loop.iter.check3450
  %i.yj = getelementptr i8, ptr %i.yb, i64 %i.kq
  %i.yk = getelementptr i8, ptr %i.yc, i64 %i.kr
  %i.yl = getelementptr i8, ptr %i.yd, i64 %i.kr
  %i.ym = getelementptr i8, ptr %i.ye, i64 %i.kr
  %i.yn = getelementptr i8, ptr %i.yf, i64 %i.kr
  %i.yo = getelementptr i8, ptr %i.yg, i64 %i.kr
  %i.yp = getelementptr i8, ptr %i.yh, i64 %i.kr
  %i.yq = getelementptr i8, ptr %i.yi, i64 %i.kr
  %i.yr = getelementptr i8, ptr %.911612678, i64 %i.kr
  br label %vector.body3454

vector.body3454:                                  ; preds = %vector.ph3452, %vector.body3454
  %index3455 = phi i64 [ 0, %vector.ph3452 ], [ %index.next3474, %vector.body3454 ] ; 3 uses
  %i.ys = shl i64 %index3455, 4
  %next.gep3456 = getelementptr i8, ptr %i.yb, i64 %i.ys
  %i.yt = shl i64 %index3455, 1                   ; 8 uses
  %next.gep3457 = getelementptr i8, ptr %i.yc, i64 %i.yt
  %next.gep3458 = getelementptr i8, ptr %i.yd, i64 %i.yt
  %next.gep3459 = getelementptr i8, ptr %i.ye, i64 %i.yt
  %next.gep3460 = getelementptr i8, ptr %i.yf, i64 %i.yt
  %next.gep3461 = getelementptr i8, ptr %i.yg, i64 %i.yt
  %next.gep3462 = getelementptr i8, ptr %i.yh, i64 %i.yt
  %next.gep3463 = getelementptr i8, ptr %i.yi, i64 %i.yt
  %next.gep3464 = getelementptr i8, ptr %.911612678, i64 %i.yt
  %wide.load3465 = load <32 x i16>, ptr %next.gep3464, align 2, !tbaa !457, !alias.scope !462
  %wide.load3466 = load <32 x i16>, ptr %next.gep3463, align 2, !tbaa !457, !alias.scope !463
  %wide.load3467 = load <32 x i16>, ptr %next.gep3462, align 2, !tbaa !457, !alias.scope !464
  %wide.load3468 = load <32 x i16>, ptr %next.gep3461, align 2, !tbaa !457, !alias.scope !465
  %wide.load3469 = load <32 x i16>, ptr %next.gep3460, align 2, !tbaa !457, !alias.scope !466
  %wide.load3470 = load <32 x i16>, ptr %next.gep3459, align 2, !tbaa !457, !alias.scope !467
  %wide.load3471 = load <32 x i16>, ptr %next.gep3458, align 2, !tbaa !457, !alias.scope !468
  %wide.load3472 = load <32 x i16>, ptr %next.gep3457, align 2, !tbaa !457, !alias.scope !469
  %i.yu = shufflevector <32 x i16> %wide.load3465, <32 x i16> %wide.load3466, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.yv = shufflevector <32 x i16> %wide.load3467, <32 x i16> %wide.load3468, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.yw = shufflevector <32 x i16> %wide.load3469, <32 x i16> %wide.load3470, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.yx = shufflevector <32 x i16> %wide.load3471, <32 x i16> %wide.load3472, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.yy = shufflevector <64 x i16> %i.yu, <64 x i16> %i.yv, <128 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126, i32 127>
  %i.yz = shufflevector <64 x i16> %i.yw, <64 x i16> %i.yx, <128 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126, i32 127>
  %interleaved.vec3473 = shufflevector <128 x i16> %i.yy, <128 x i16> %i.yz, <256 x i32> <i32 0, i32 32, i32 64, i32 96, i32 128, i32 160, i32 192, i32 224, i32 1, i32 33, i32 65, i32 97, i32 129, i32 161, i32 193, i32 225, i32 2, i32 34, i32 66, i32 98, i32 130, i32 162, i32 194, i32 226, i32 3, i32 35, i32 67, i32 99, i32 131, i32 163, i32 195, i32 227, i32 4, i32 36, i32 68, i32 100, i32 132, i32 164, i32 196, i32 228, i32 5, i32 37, i32 69, i32 101, i32 133, i32 165, i32 197, i32 229, i32 6, i32 38, i32 70, i32 102, i32 134, i32 166, i32 198, i32 230, i32 7, i32 39, i32 71, i32 103, i32 135, i32 167, i32 199, i32 231, i32 8, i32 40, i32 72, i32 104, i32 136, i32 168, i32 200, i32 232, i32 9, i32 41, i32 73, i32 105, i32 137, i32 169, i32 201, i32 233, i32 10, i32 42, i32 74, i32 106, i32 138, i32 170, i32 202, i32 234, i32 11, i32 43, i32 75, i32 107, i32 139, i32 171, i32 203, i32 235, i32 12, i32 44, i32 76, i32 108, i32 140, i32 172, i32 204, i32 236, i32 13, i32 45, i32 77, i32 109, i32 141, i32 173, i32 205, i32 237, i32 14, i32 46, i32 78, i32 110, i32 142, i32 174, i32 206, i32 238, i32 15, i32 47, i32 79, i32 111, i32 143, i32 175, i32 207, i32 239, i32 16, i32 48, i32 80, i32 112, i32 144, i32 176, i32 208, i32 240, i32 17, i32 49, i32 81, i32 113, i32 145, i32 177, i32 209, i32 241, i32 18, i32 50, i32 82, i32 114, i32 146, i32 178, i32 210, i32 242, i32 19, i32 51, i32 83, i32 115, i32 147, i32 179, i32 211, i32 243, i32 20, i32 52, i32 84, i32 116, i32 148, i32 180, i32 212, i32 244, i32 21, i32 53, i32 85, i32 117, i32 149, i32 181, i32 213, i32 245, i32 22, i32 54, i32 86, i32 118, i32 150, i32 182, i32 214, i32 246, i32 23, i32 55, i32 87, i32 119, i32 151, i32 183, i32 215, i32 247, i32 24, i32 56, i32 88, i32 120, i32 152, i32 184, i32 216, i32 248, i32 25, i32 57, i32 89, i32 121, i32 153, i32 185, i32 217, i32 249, i32 26, i32 58, i32 90, i32 122, i32 154, i32 186, i32 218, i32 250, i32 27, i32 59, i32 91, i32 123, i32 155, i32 187, i32 219, i32 251, i32 28, i32 60, i32 92, i32 124, i32 156, i32 188, i32 220, i32 252, i32 29, i32 61, i32 93, i32 125, i32 157, i32 189, i32 221, i32 253, i32 30, i32 62, i32 94, i32 126, i32 158, i32 190, i32 222, i32 254, i32 31, i32 63, i32 95, i32 127, i32 159, i32 191, i32 223, i32 255>
  store <256 x i16> %interleaved.vec3473, ptr %next.gep3456, align 2, !tbaa !457, !alias.scope !470, !noalias !471
  %index.next3474 = add nuw i64 %index3455, 32    ; 2 uses
  %i.za = icmp eq i64 %index.next3474, %n.vec3453
  br i1 %i.za, label %middle.block3475, label %vector.body3454, !llvm.loop !368

middle.block3475:                                 ; preds = %vector.body3454
  br i1 %cmp.n3476, label %._crit_edge2677, label %vec.epilog.iter.check3478

vec.epilog.iter.check3478:                        ; preds = %middle.block3475
  br i1 %min.epilog.iters.check3480, label %.lr.ph2676.preheader, label %vec.epilog.ph3481, !prof !472

vec.epilog.ph3481:                                ; preds = %vector.main.loop.iter.check3450, %vec.epilog.iter.check3478
  %vec.epilog.resume.val3482 = phi i64 [ %n.vec3453, %vec.epilog.iter.check3478 ], [ 0, %vector.main.loop.iter.check3450 ]
  %i.zb = getelementptr i8, ptr %i.yb, i64 %i.kt
  %i.zc = getelementptr i8, ptr %i.yc, i64 %i.ku
  %i.zd = getelementptr i8, ptr %i.yd, i64 %i.ku
  %i.ze = getelementptr i8, ptr %i.ye, i64 %i.ku
  %i.zf = getelementptr i8, ptr %i.yf, i64 %i.ku
  %i.zg = getelementptr i8, ptr %i.yg, i64 %i.ku
  %i.zh = getelementptr i8, ptr %i.yh, i64 %i.ku
  %i.zi = getelementptr i8, ptr %i.yi, i64 %i.ku
  %i.zj = getelementptr i8, ptr %.911612678, i64 %i.ku
  br label %vec.epilog.vector.body3484

vec.epilog.vector.body3484:                       ; preds = %vec.epilog.vector.body3484, %vec.epilog.ph3481
  %index3485 = phi i64 [ %vec.epilog.resume.val3482, %vec.epilog.ph3481 ], [ %index.next3504, %vec.epilog.vector.body3484 ] ; 3 uses
  %i.zk = shl i64 %index3485, 4
  %next.gep3486 = getelementptr i8, ptr %i.yb, i64 %i.zk
  %i.zl = shl i64 %index3485, 1                   ; 8 uses
  %next.gep3487 = getelementptr i8, ptr %i.yc, i64 %i.zl
  %next.gep3488 = getelementptr i8, ptr %i.yd, i64 %i.zl
  %next.gep3489 = getelementptr i8, ptr %i.ye, i64 %i.zl
  %next.gep3490 = getelementptr i8, ptr %i.yf, i64 %i.zl
  %next.gep3491 = getelementptr i8, ptr %i.yg, i64 %i.zl
  %next.gep3492 = getelementptr i8, ptr %i.yh, i64 %i.zl
  %next.gep3493 = getelementptr i8, ptr %i.yi, i64 %i.zl
  %next.gep3494 = getelementptr i8, ptr %.911612678, i64 %i.zl
  %wide.load3495 = load <4 x i16>, ptr %next.gep3494, align 2, !tbaa !457, !alias.scope !462
  %wide.load3496 = load <4 x i16>, ptr %next.gep3493, align 2, !tbaa !457, !alias.scope !463
  %wide.load3497 = load <4 x i16>, ptr %next.gep3492, align 2, !tbaa !457, !alias.scope !464
  %wide.load3498 = load <4 x i16>, ptr %next.gep3491, align 2, !tbaa !457, !alias.scope !465
  %wide.load3499 = load <4 x i16>, ptr %next.gep3490, align 2, !tbaa !457, !alias.scope !466
  %wide.load3500 = load <4 x i16>, ptr %next.gep3489, align 2, !tbaa !457, !alias.scope !467
  %wide.load3501 = load <4 x i16>, ptr %next.gep3488, align 2, !tbaa !457, !alias.scope !468
  %wide.load3502 = load <4 x i16>, ptr %next.gep3487, align 2, !tbaa !457, !alias.scope !469
  %i.zm = shufflevector <4 x i16> %wide.load3495, <4 x i16> %wide.load3496, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.zn = shufflevector <4 x i16> %wide.load3497, <4 x i16> %wide.load3498, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.zo = shufflevector <4 x i16> %wide.load3499, <4 x i16> %wide.load3500, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.zp = shufflevector <4 x i16> %wide.load3501, <4 x i16> %wide.load3502, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.zq = shufflevector <8 x i16> %i.zm, <8 x i16> %i.zn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.zr = shufflevector <8 x i16> %i.zo, <8 x i16> %i.zp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec3503 = shufflevector <16 x i16> %i.zq, <16 x i16> %i.zr, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x i16> %interleaved.vec3503, ptr %next.gep3486, align 2, !tbaa !457, !alias.scope !470, !noalias !471
  %index.next3504 = add nuw i64 %index3485, 4     ; 2 uses
  %i.zs = icmp eq i64 %index.next3504, %n.vec3483
  br i1 %i.zs, label %vec.epilog.middle.block3505, label %vec.epilog.vector.body3484, !llvm.loop !369

vec.epilog.middle.block3505:                      ; preds = %vec.epilog.vector.body3484
  br i1 %cmp.n3506, label %._crit_edge2677, label %.lr.ph2676.preheader

.lr.ph2676.preheader:                             ; preds = %iter.check3477, %vector.memcheck3416, %vec.epilog.iter.check3478, %vec.epilog.middle.block3505
  %.011042674.ph = phi i32 [ 0, %iter.check3477 ], [ 0, %vector.memcheck3416 ], [ %i.kp, %vec.epilog.iter.check3478 ], [ %i.ks, %vec.epilog.middle.block3505 ]
  %.011052673.ph = phi ptr [ %i.yb, %iter.check3477 ], [ %i.yb, %vector.memcheck3416 ], [ %i.yj, %vec.epilog.iter.check3478 ], [ %i.zb, %vec.epilog.middle.block3505 ]
  %.011062672.ph = phi ptr [ %i.yc, %iter.check3477 ], [ %i.yc, %vector.memcheck3416 ], [ %i.yk, %vec.epilog.iter.check3478 ], [ %i.zc, %vec.epilog.middle.block3505 ]
  %.011072671.ph = phi ptr [ %i.yd, %iter.check3477 ], [ %i.yd, %vector.memcheck3416 ], [ %i.yl, %vec.epilog.iter.check3478 ], [ %i.zd, %vec.epilog.middle.block3505 ]
  %.011082670.ph = phi ptr [ %i.ye, %iter.check3477 ], [ %i.ye, %vector.memcheck3416 ], [ %i.ym, %vec.epilog.iter.check3478 ], [ %i.ze, %vec.epilog.middle.block3505 ]
  %.011092669.ph = phi ptr [ %i.yf, %iter.check3477 ], [ %i.yf, %vector.memcheck3416 ], [ %i.yn, %vec.epilog.iter.check3478 ], [ %i.zf, %vec.epilog.middle.block3505 ]
  %.011102668.ph = phi ptr [ %i.yg, %iter.check3477 ], [ %i.yg, %vector.memcheck3416 ], [ %i.yo, %vec.epilog.iter.check3478 ], [ %i.zg, %vec.epilog.middle.block3505 ]
  %.011112667.ph = phi ptr [ %i.yh, %iter.check3477 ], [ %i.yh, %vector.memcheck3416 ], [ %i.yp, %vec.epilog.iter.check3478 ], [ %i.zh, %vec.epilog.middle.block3505 ]
  %.011122666.ph = phi ptr [ %i.yi, %iter.check3477 ], [ %i.yi, %vector.memcheck3416 ], [ %i.yq, %vec.epilog.iter.check3478 ], [ %i.zi, %vec.epilog.middle.block3505 ]
  %.011132665.ph = phi ptr [ %.911612678, %iter.check3477 ], [ %.911612678, %vector.memcheck3416 ], [ %i.yr, %vec.epilog.iter.check3478 ], [ %i.zj, %vec.epilog.middle.block3505 ]
  br label %.lr.ph2676

._crit_edge2677:                                  ; preds = %.lr.ph2676, %middle.block3475, %vec.epilog.middle.block3505, %bb.at
  %i.zt = getelementptr inbounds [2 x i8], ptr %.911612678, i64 %i.hz ; 2 uses
  %indvars.iv.next2950 = add nuw nsw i64 %indvars.iv2949, 1 ; 2 uses
  %exitcond2953.not = icmp eq i64 %indvars.iv.next2950, %wide.trip.count2952
  br i1 %exitcond2953.not, label %.thread2535, label %bb.at, !llvm.loop !370

.lr.ph2676:                                       ; preds = %.lr.ph2676.preheader, %.lr.ph2676
  %.011042674 = phi i32 [ %i.aas, %.lr.ph2676 ], [ %.011042674.ph, %.lr.ph2676.preheader ]
  %.011052673 = phi ptr [ %i.aar, %.lr.ph2676 ], [ %.011052673.ph, %.lr.ph2676.preheader ] ; 9 uses
  %.011062672 = phi ptr [ %i.aao, %.lr.ph2676 ], [ %.011062672.ph, %.lr.ph2676.preheader ] ; 2 uses
  %.011072671 = phi ptr [ %i.aal, %.lr.ph2676 ], [ %.011072671.ph, %.lr.ph2676.preheader ] ; 2 uses
  %.011082670 = phi ptr [ %i.aai, %.lr.ph2676 ], [ %.011082670.ph, %.lr.ph2676.preheader ] ; 2 uses
  %.011092669 = phi ptr [ %i.aaf, %.lr.ph2676 ], [ %.011092669.ph, %.lr.ph2676.preheader ] ; 2 uses
  %.011102668 = phi ptr [ %i.aac, %.lr.ph2676 ], [ %.011102668.ph, %.lr.ph2676.preheader ] ; 2 uses
  %.011112667 = phi ptr [ %i.zz, %.lr.ph2676 ], [ %.011112667.ph, %.lr.ph2676.preheader ] ; 2 uses
  %.011122666 = phi ptr [ %i.zw, %.lr.ph2676 ], [ %.011122666.ph, %.lr.ph2676.preheader ] ; 2 uses
  %.011132665 = phi ptr [ %i.zu, %.lr.ph2676 ], [ %.011132665.ph, %.lr.ph2676.preheader ] ; 2 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %.011132665, i64 2
  %i.zv = load i16, ptr %.011132665, align 2, !tbaa !457
  store i16 %i.zv, ptr %.011052673, align 2, !tbaa !457
  %i.zw = getelementptr inbounds nuw i8, ptr %.011122666, i64 2
  %i.zx = load i16, ptr %.011122666, align 2, !tbaa !457
  %i.zy = getelementptr inbounds nuw i8, ptr %.011052673, i64 2
  store i16 %i.zx, ptr %i.zy, align 2, !tbaa !457
  %i.zz = getelementptr inbounds nuw i8, ptr %.011112667, i64 2
  %i.aaa = load i16, ptr %.011112667, align 2, !tbaa !457
  %i.aab = getelementptr inbounds nuw i8, ptr %.011052673, i64 4
  store i16 %i.aaa, ptr %i.aab, align 2, !tbaa !457
  %i.aac = getelementptr inbounds nuw i8, ptr %.011102668, i64 2
  %i.aad = load i16, ptr %.011102668, align 2, !tbaa !457
  %i.aae = getelementptr inbounds nuw i8, ptr %.011052673, i64 6
  store i16 %i.aad, ptr %i.aae, align 2, !tbaa !457
  %i.aaf = getelementptr inbounds nuw i8, ptr %.011092669, i64 2
  %i.aag = load i16, ptr %.011092669, align 2, !tbaa !457
  %i.aah = getelementptr inbounds nuw i8, ptr %.011052673, i64 8
  store i16 %i.aag, ptr %i.aah, align 2, !tbaa !457
  %i.aai = getelementptr inbounds nuw i8, ptr %.011082670, i64 2
  %i.aaj = load i16, ptr %.011082670, align 2, !tbaa !457
  %i.aak = getelementptr inbounds nuw i8, ptr %.011052673, i64 10
  store i16 %i.aaj, ptr %i.aak, align 2, !tbaa !457
  %i.aal = getelementptr inbounds nuw i8, ptr %.011072671, i64 2
  %i.aam = load i16, ptr %.011072671, align 2, !tbaa !457
  %i.aan = getelementptr inbounds nuw i8, ptr %.011052673, i64 12
  store i16 %i.aam, ptr %i.aan, align 2, !tbaa !457
  %i.aao = getelementptr inbounds nuw i8, ptr %.011062672, i64 2
  %i.aap = load i16, ptr %.011062672, align 2, !tbaa !457
  %i.aaq = getelementptr inbounds nuw i8, ptr %.011052673, i64 14
  store i16 %i.aap, ptr %i.aaq, align 2, !tbaa !457
  %i.aar = getelementptr inbounds nuw i8, ptr %.011052673, i64 16
  %i.aas = add nuw nsw i32 %.011042674, 1         ; 2 uses
  %exitcond2948.not = icmp eq i32 %i.aas, %i.da
  br i1 %exitcond2948.not, label %._crit_edge2677, label %.lr.ph2676, !llvm.loop !371

.thread2535:                                      ; preds = %._crit_edge2677, %.thread2532
  %.1011622537 = phi ptr [ %.811602534, %.thread2532 ], [ %i.zt, %._crit_edge2677 ] ; 11 uses
  %i.aat = icmp eq i32 %i.lg, 4
  br i1 %i.aat, label %.preheader, label %.thread2538

.preheader:                                       ; preds = %.thread2535
  %i.aau = getelementptr inbounds nuw i8, ptr %i.le, i64 48
  %i.aav = load i32, ptr %i.aau, align 8, !tbaa !52 ; 2 uses
  %i.aaw = icmp sgt i32 %i.aav, 0
  br i1 %i.aaw, label %.lr.ph2695, label %.thread2538

.lr.ph2695:                                       ; preds = %.preheader
  %i.aax = load ptr, ptr %i.le, align 8, !tbaa !19 ; 3 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %i.le, i64 44
  %i.aaz = load i32, ptr %i.aay, align 4, !tbaa !43
  %i.aba = sext i32 %i.aaz to i64                 ; 2 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  %i.abc = load i64, ptr %i.abb, align 8, !tbaa !25 ; 2 uses
  %factor.op.mul2697 = mul i64 %i.abc, %i.aba     ; 2 uses
  %wide.trip.count2958 = zext nneg i32 %i.aav to i64 ; 2 uses
  %i.abd = getelementptr i8, ptr %.1011622537, i64 %i.ji
  %scevgep3261 = getelementptr i8, ptr %i.abd, i64 2
  %i.abe = add nsw i64 %wide.trip.count2958, -1   ; 2 uses
  %i.abf = mul i64 %i.jj, %i.abe                  ; 4 uses
  %scevgep3262 = getelementptr i8, ptr %scevgep3261, i64 %i.abf
  %i.abg = getelementptr i8, ptr %.1011622537, i64 %i.jk
  %i.abh = getelementptr i8, ptr %i.abg, i64 %i.ji
  %scevgep3263 = getelementptr i8, ptr %i.abh, i64 2
  %scevgep3264 = getelementptr i8, ptr %scevgep3263, i64 %i.abf
  %scevgep3265 = getelementptr i8, ptr %.1011622537, i64 %i.jk
  %i.abi = getelementptr i8, ptr %.1011622537, i64 %i.jl
  %i.abj = getelementptr i8, ptr %i.abi, i64 %i.ji
  %scevgep3266 = getelementptr i8, ptr %i.abj, i64 2
  %scevgep3267 = getelementptr i8, ptr %scevgep3266, i64 %i.abf
  %scevgep3268 = getelementptr i8, ptr %.1011622537, i64 %i.jl
  %i.abk = getelementptr i8, ptr %.1011622537, i64 %i.jm
  %i.abl = getelementptr i8, ptr %i.abk, i64 %i.ji
  %scevgep3269 = getelementptr i8, ptr %i.abl, i64 2
  %scevgep3270 = getelementptr i8, ptr %scevgep3269, i64 %i.abf
  %scevgep3271 = getelementptr i8, ptr %.1011622537, i64 %i.jm
  %i.abm = getelementptr i8, ptr %i.aax, i64 %i.jn
  %scevgep3272 = getelementptr i8, ptr %i.abm, i64 8
  %i.abn = mul i64 %i.abc, %i.abe
  %i.abo = mul i64 %i.abn, %i.aba
  %scevgep3273 = getelementptr i8, ptr %scevgep3272, i64 %i.abo
  %i.abp = insertelement <4 x ptr> poison, ptr %i.aax, i64 0
  %i.abq = shufflevector <4 x ptr> %i.abp, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.abr = insertelement <4 x ptr> poison, ptr %scevgep3270, i64 0
  %i.abs = insertelement <4 x ptr> %i.abr, ptr %scevgep3267, i64 1
  %i.abt = insertelement <4 x ptr> %i.abs, ptr %scevgep3264, i64 2
  %i.abu = insertelement <4 x ptr> %i.abt, ptr %scevgep3262, i64 3
  %i.abv = insertelement <4 x ptr> poison, ptr %scevgep3271, i64 0
  %i.abw = insertelement <4 x ptr> %i.abv, ptr %scevgep3268, i64 1
  %i.abx = insertelement <4 x ptr> %i.abw, ptr %scevgep3265, i64 2
  %i.aby = insertelement <4 x ptr> %i.abx, ptr %.1011622537, i64 3
  %i.abz = insertelement <4 x ptr> poison, ptr %scevgep3273, i64 0
  %i.aca = shufflevector <4 x ptr> %i.abz, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.acb = icmp ult <4 x ptr> %i.abq, %i.abu
  %i.acc = icmp ult <4 x ptr> %i.aby, %i.aca
  %stride.check = icmp slt i64 %factor.op.mul2697, 0
  %i.acd = and <4 x i1> %i.acb, %i.acc
  %i.ace = bitcast <4 x i1> %i.acd to i4
  %i.acf = icmp ne i4 %i.ace, 0
  %op.rdx4056 = or i1 %i.acf, %stride.check3275
  %op.rdx4057 = or i1 %op.rdx4056, %stride.check
  br label %bb.au

bb.au:                                            ; preds = %.lr.ph2695, %._crit_edge2692
  %indvars.iv2955 = phi i64 [ 0, %.lr.ph2695 ], [ %indvars.iv.next2956, %._crit_edge2692 ] ; 2 uses
  %.1111632693 = phi ptr [ %.1011622537, %.lr.ph2695 ], [ %i.adt, %._crit_edge2692 ] ; 10 uses
  br i1 %i.ia, label %iter.check3303, label %._crit_edge2692

iter.check3303:                                   ; preds = %bb.au
  %.reass2698 = mul i64 %factor.op.mul2697, %indvars.iv2955
  %i.acg = getelementptr inbounds nuw i8, ptr %i.aax, i64 %.reass2698 ; 6 uses
  %i.ach = getelementptr inbounds nuw [2 x i8], ptr %.1111632693, i64 %i.in ; 6 uses
  %i.aci = getelementptr inbounds nuw [2 x i8], ptr %.1111632693, i64 %i.il ; 6 uses
  %i.acj = getelementptr inbounds nuw [2 x i8], ptr %.1111632693, i64 %i.ij ; 6 uses
  br i1 %min.iters.check3274, label %.lr.ph2691.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check3303
  br i1 %op.rdx4057, label %.lr.ph2691.preheader, label %vector.main.loop.iter.check3287

vector.main.loop.iter.check3287:                  ; preds = %vector.memcheck
  br i1 %min.iters.check3288, label %vec.epilog.ph3307, label %vector.ph3289

vector.ph3289:                                    ; preds = %vector.main.loop.iter.check3287
  %i.ack = getelementptr i8, ptr %i.acg, i64 %i.kx
  %i.acl = getelementptr i8, ptr %i.ach, i64 %i.ky
  %i.acm = getelementptr i8, ptr %i.aci, i64 %i.ky
  %i.acn = getelementptr i8, ptr %i.acj, i64 %i.ky
  %i.aco = getelementptr i8, ptr %.1111632693, i64 %i.ky
  br label %vector.body3291

vector.body3291:                                  ; preds = %vector.ph3289, %vector.body3291
  %index3292 = phi i64 [ 0, %vector.ph3289 ], [ %index.next3300, %vector.body3291 ] ; 3 uses
  %i.acp = shl i64 %index3292, 3
  %next.gep = getelementptr i8, ptr %i.acg, i64 %i.acp
  %i.acq = shl i64 %index3292, 1                  ; 4 uses
  %next.gep3293 = getelementptr i8, ptr %i.ach, i64 %i.acq
  %next.gep3294 = getelementptr i8, ptr %i.aci, i64 %i.acq
  %next.gep3295 = getelementptr i8, ptr %i.acj, i64 %i.acq
  %next.gep3296 = getelementptr i8, ptr %.1111632693, i64 %i.acq
  %wide.load = load <32 x i16>, ptr %next.gep3296, align 2, !tbaa !457, !alias.scope !473
  %wide.load3297 = load <32 x i16>, ptr %next.gep3295, align 2, !tbaa !457, !alias.scope !474
  %wide.load3298 = load <32 x i16>, ptr %next.gep3294, align 2, !tbaa !457, !alias.scope !475
  %wide.load3299 = load <32 x i16>, ptr %next.gep3293, align 2, !tbaa !457, !alias.scope !476
  %i.acr = shufflevector <32 x i16> %wide.load, <32 x i16> %wide.load3297, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.acs = shufflevector <32 x i16> %wide.load3298, <32 x i16> %wide.load3299, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %interleaved.vec = shufflevector <64 x i16> %i.acr, <64 x i16> %i.acs, <128 x i32> <i32 0, i32 32, i32 64, i32 96, i32 1, i32 33, i32 65, i32 97, i32 2, i32 34, i32 66, i32 98, i32 3, i32 35, i32 67, i32 99, i32 4, i32 36, i32 68, i32 100, i32 5, i32 37, i32 69, i32 101, i32 6, i32 38, i32 70, i32 102, i32 7, i32 39, i32 71, i32 103, i32 8, i32 40, i32 72, i32 104, i32 9, i32 41, i32 73, i32 105, i32 10, i32 42, i32 74, i32 106, i32 11, i32 43, i32 75, i32 107, i32 12, i32 44, i32 76, i32 108, i32 13, i32 45, i32 77, i32 109, i32 14, i32 46, i32 78, i32 110, i32 15, i32 47, i32 79, i32 111, i32 16, i32 48, i32 80, i32 112, i32 17, i32 49, i32 81, i32 113, i32 18, i32 50, i32 82, i32 114, i32 19, i32 51, i32 83, i32 115, i32 20, i32 52, i32 84, i32 116, i32 21, i32 53, i32 85, i32 117, i32 22, i32 54, i32 86, i32 118, i32 23, i32 55, i32 87, i32 119, i32 24, i32 56, i32 88, i32 120, i32 25, i32 57, i32 89, i32 121, i32 26, i32 58, i32 90, i32 122, i32 27, i32 59, i32 91, i32 123, i32 28, i32 60, i32 92, i32 124, i32 29, i32 61, i32 93, i32 125, i32 30, i32 62, i32 94, i32 126, i32 31, i32 63, i32 95, i32 127>
  store <128 x i16> %interleaved.vec, ptr %next.gep, align 2, !tbaa !457, !alias.scope !477, !noalias !478
  %index.next3300 = add nuw i64 %index3292, 32    ; 2 uses
  %i.act = icmp eq i64 %index.next3300, %n.vec3290
  br i1 %i.act, label %middle.block3301, label %vector.body3291, !llvm.loop !378

middle.block3301:                                 ; preds = %vector.body3291
  br i1 %cmp.n3302, label %._crit_edge2692, label %vec.epilog.iter.check3304

vec.epilog.iter.check3304:                        ; preds = %middle.block3301
  br i1 %min.epilog.iters.check3306, label %.lr.ph2691.preheader, label %vec.epilog.ph3307, !prof !479

vec.epilog.ph3307:                                ; preds = %vector.main.loop.iter.check3287, %vec.epilog.iter.check3304
  %vec.epilog.resume.val3308 = phi i64 [ %n.vec3290, %vec.epilog.iter.check3304 ], [ 0, %vector.main.loop.iter.check3287 ]
  %i.acu = getelementptr i8, ptr %i.acg, i64 %i.la
  %i.acv = getelementptr i8, ptr %i.ach, i64 %i.lb
  %i.acw = getelementptr i8, ptr %i.aci, i64 %i.lb
  %i.acx = getelementptr i8, ptr %i.acj, i64 %i.lb
  %i.acy = getelementptr i8, ptr %.1111632693, i64 %i.lb
  br label %vec.epilog.vector.body3310

vec.epilog.vector.body3310:                       ; preds = %vec.epilog.vector.body3310, %vec.epilog.ph3307
  %index3311 = phi i64 [ %vec.epilog.resume.val3308, %vec.epilog.ph3307 ], [ %index.next3322, %vec.epilog.vector.body3310 ] ; 3 uses
  %i.acz = shl i64 %index3311, 3
  %next.gep3312 = getelementptr i8, ptr %i.acg, i64 %i.acz
  %i.ada = shl i64 %index3311, 1                  ; 4 uses
  %next.gep3313 = getelementptr i8, ptr %i.ach, i64 %i.ada
  %next.gep3314 = getelementptr i8, ptr %i.aci, i64 %i.ada
  %next.gep3315 = getelementptr i8, ptr %i.acj, i64 %i.ada
  %next.gep3316 = getelementptr i8, ptr %.1111632693, i64 %i.ada
  %wide.load3317 = load <8 x i16>, ptr %next.gep3316, align 2, !tbaa !457, !alias.scope !473
  %wide.load3318 = load <8 x i16>, ptr %next.gep3315, align 2, !tbaa !457, !alias.scope !474
  %wide.load3319 = load <8 x i16>, ptr %next.gep3314, align 2, !tbaa !457, !alias.scope !475
  %wide.load3320 = load <8 x i16>, ptr %next.gep3313, align 2, !tbaa !457, !alias.scope !476
  %i.adb = shufflevector <8 x i16> %wide.load3317, <8 x i16> %wide.load3318, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.adc = shufflevector <8 x i16> %wide.load3319, <8 x i16> %wide.load3320, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec3321 = shufflevector <16 x i16> %i.adb, <16 x i16> %i.adc, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x i16> %interleaved.vec3321, ptr %next.gep3312, align 2, !tbaa !457, !alias.scope !477, !noalias !478
  %index.next3322 = add nuw i64 %index3311, 8     ; 2 uses
  %i.add = icmp eq i64 %index.next3322, %n.vec3309
  br i1 %i.add, label %vec.epilog.middle.block3323, label %vec.epilog.vector.body3310, !llvm.loop !379

vec.epilog.middle.block3323:                      ; preds = %vec.epilog.vector.body3310
  br i1 %cmp.n3324, label %._crit_edge2692, label %.lr.ph2691.preheader

.lr.ph2691.preheader:                             ; preds = %iter.check3303, %vector.memcheck, %vec.epilog.iter.check3304, %vec.epilog.middle.block3323
  %.010972689.ph = phi i32 [ 0, %iter.check3303 ], [ 0, %vector.memcheck ], [ %i.kw, %vec.epilog.iter.check3304 ], [ %i.kz, %vec.epilog.middle.block3323 ] ; 4 uses
  %.010982688.ph = phi ptr [ %i.acg, %iter.check3303 ], [ %i.acg, %vector.memcheck ], [ %i.ack, %vec.epilog.iter.check3304 ], [ %i.acu, %vec.epilog.middle.block3323 ] ; 6 uses
  %.010992687.ph = phi ptr [ %i.ach, %iter.check3303 ], [ %i.ach, %vector.memcheck ], [ %i.acl, %vec.epilog.iter.check3304 ], [ %i.acv, %vec.epilog.middle.block3323 ] ; 3 uses
  %.011002686.ph = phi ptr [ %i.aci, %iter.check3303 ], [ %i.aci, %vector.memcheck ], [ %i.acm, %vec.epilog.iter.check3304 ], [ %i.acw, %vec.epilog.middle.block3323 ] ; 3 uses
  %.011012685.ph = phi ptr [ %i.acj, %iter.check3303 ], [ %i.acj, %vector.memcheck ], [ %i.acn, %vec.epilog.iter.check3304 ], [ %i.acx, %vec.epilog.middle.block3323 ] ; 3 uses
  %.011022684.ph = phi ptr [ %.1111632693, %iter.check3303 ], [ %.1111632693, %vector.memcheck ], [ %i.aco, %vec.epilog.iter.check3304 ], [ %i.acy, %vec.epilog.middle.block3323 ] ; 3 uses
  %i.ade = sub i32 %i.da, %.010972689.ph
  %.neg = add i32 %.010972689.ph, 1
  %xtraiter = and i32 %i.ade, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph2691.prol.loopexit, label %.lr.ph2691.prol

.lr.ph2691.prol:                                  ; preds = %.lr.ph2691.preheader
  %i.adf = getelementptr inbounds nuw i8, ptr %.011022684.ph, i64 2
  %i.adg = load i16, ptr %.011022684.ph, align 2, !tbaa !457
  store i16 %i.adg, ptr %.010982688.ph, align 2, !tbaa !457
  %i.adh = getelementptr inbounds nuw i8, ptr %.011012685.ph, i64 2
  %i.adi = load i16, ptr %.011012685.ph, align 2, !tbaa !457
  %i.adj = getelementptr inbounds nuw i8, ptr %.010982688.ph, i64 2
  store i16 %i.adi, ptr %i.adj, align 2, !tbaa !457
  %i.adk = getelementptr inbounds nuw i8, ptr %.011002686.ph, i64 2
  %i.adl = load i16, ptr %.011002686.ph, align 2, !tbaa !457
  %i.adm = getelementptr inbounds nuw i8, ptr %.010982688.ph, i64 4
  store i16 %i.adl, ptr %i.adm, align 2, !tbaa !457
  %i.adn = getelementptr inbounds nuw i8, ptr %.010992687.ph, i64 2
  %i.ado = load i16, ptr %.010992687.ph, align 2, !tbaa !457
  %i.adp = getelementptr inbounds nuw i8, ptr %.010982688.ph, i64 6
  store i16 %i.ado, ptr %i.adp, align 2, !tbaa !457
  %i.adq = getelementptr inbounds nuw i8, ptr %.010982688.ph, i64 8
  %i.adr = add nuw nsw i32 %.010972689.ph, 1
  br label %.lr.ph2691.prol.loopexit

.lr.ph2691.prol.loopexit:                         ; preds = %.lr.ph2691.prol, %.lr.ph2691.preheader
  %.010972689.unr = phi i32 [ %.010972689.ph, %.lr.ph2691.preheader ], [ %i.adr, %.lr.ph2691.prol ]
  %.010982688.unr = phi ptr [ %.010982688.ph, %.lr.ph2691.preheader ], [ %i.adq, %.lr.ph2691.prol ]
  %.010992687.unr = phi ptr [ %.010992687.ph, %.lr.ph2691.preheader ], [ %i.adn, %.lr.ph2691.prol ]
  %.011002686.unr = phi ptr [ %.011002686.ph, %.lr.ph2691.preheader ], [ %i.adk, %.lr.ph2691.prol ]
  %.011012685.unr = phi ptr [ %.011012685.ph, %.lr.ph2691.preheader ], [ %i.adh, %.lr.ph2691.prol ]
  %.011022684.unr = phi ptr [ %.011022684.ph, %.lr.ph2691.preheader ], [ %i.adf, %.lr.ph2691.prol ]
  %i.ads = icmp eq i32 %i.da, %.neg
  br i1 %i.ads, label %._crit_edge2692, label %.lr.ph2691

._crit_edge2692:                                  ; preds = %.lr.ph2691.prol.loopexit, %.lr.ph2691, %middle.block3301, %vec.epilog.middle.block3323, %bb.au
  %i.adt = getelementptr inbounds [2 x i8], ptr %.1111632693, i64 %i.if ; 2 uses
  %indvars.iv.next2956 = add nuw nsw i64 %indvars.iv2955, 1 ; 2 uses
  %exitcond2959.not = icmp eq i64 %indvars.iv.next2956, %wide.trip.count2958
  br i1 %exitcond2959.not, label %.thread2538, label %bb.au, !llvm.loop !380

.lr.ph2691:                                       ; preds = %.lr.ph2691.prol.loopexit, %.lr.ph2691
  %.010972689 = phi i32 [ %i.aes, %.lr.ph2691 ], [ %.010972689.unr, %.lr.ph2691.prol.loopexit ]
  %.010982688 = phi ptr [ %i.aer, %.lr.ph2691 ], [ %.010982688.unr, %.lr.ph2691.prol.loopexit ] ; 9 uses
  %.010992687 = phi ptr [ %i.aeo, %.lr.ph2691 ], [ %.010992687.unr, %.lr.ph2691.prol.loopexit ] ; 3 uses
  %.011002686 = phi ptr [ %i.ael, %.lr.ph2691 ], [ %.011002686.unr, %.lr.ph2691.prol.loopexit ] ; 3 uses
  %.011012685 = phi ptr [ %i.aei, %.lr.ph2691 ], [ %.011012685.unr, %.lr.ph2691.prol.loopexit ] ; 3 uses
  %.011022684 = phi ptr [ %i.aeg, %.lr.ph2691 ], [ %.011022684.unr, %.lr.ph2691.prol.loopexit ] ; 3 uses
  %i.adu = getelementptr inbounds nuw i8, ptr %.011022684, i64 2
  %i.adv = load i16, ptr %.011022684, align 2, !tbaa !457
  store i16 %i.adv, ptr %.010982688, align 2, !tbaa !457
  %i.adw = getelementptr inbounds nuw i8, ptr %.011012685, i64 2
  %i.adx = load i16, ptr %.011012685, align 2, !tbaa !457
  %i.ady = getelementptr inbounds nuw i8, ptr %.010982688, i64 2
  store i16 %i.adx, ptr %i.ady, align 2, !tbaa !457
  %i.adz = getelementptr inbounds nuw i8, ptr %.011002686, i64 2
  %i.aea = load i16, ptr %.011002686, align 2, !tbaa !457
  %i.aeb = getelementptr inbounds nuw i8, ptr %.010982688, i64 4
  store i16 %i.aea, ptr %i.aeb, align 2, !tbaa !457
  %i.aec = getelementptr inbounds nuw i8, ptr %.010992687, i64 2
  %i.aed = load i16, ptr %.010992687, align 2, !tbaa !457
  %i.aee = getelementptr inbounds nuw i8, ptr %.010982688, i64 6
  store i16 %i.aed, ptr %i.aee, align 2, !tbaa !457
  %i.aef = getelementptr inbounds nuw i8, ptr %.010982688, i64 8
  %i.aeg = getelementptr inbounds nuw i8, ptr %.011022684, i64 4
  %i.aeh = load i16, ptr %i.adu, align 2, !tbaa !457
  store i16 %i.aeh, ptr %i.aef, align 2, !tbaa !457
  %i.aei = getelementptr inbounds nuw i8, ptr %.011012685, i64 4
  %i.aej = load i16, ptr %i.adw, align 2, !tbaa !457
  %i.aek = getelementptr inbounds nuw i8, ptr %.010982688, i64 10
  store i16 %i.aej, ptr %i.aek, align 2, !tbaa !457
  %i.ael = getelementptr inbounds nuw i8, ptr %.011002686, i64 4
  %i.aem = load i16, ptr %i.adz, align 2, !tbaa !457
  %i.aen = getelementptr inbounds nuw i8, ptr %.010982688, i64 12
  store i16 %i.aem, ptr %i.aen, align 2, !tbaa !457
  %i.aeo = getelementptr inbounds nuw i8, ptr %.010992687, i64 4
  %i.aep = load i16, ptr %i.aec, align 2, !tbaa !457
  %i.aeq = getelementptr inbounds nuw i8, ptr %.010982688, i64 14
  store i16 %i.aep, ptr %i.aeq, align 2, !tbaa !457
  %i.aer = getelementptr inbounds nuw i8, ptr %.010982688, i64 16
  %i.aes = add nuw nsw i32 %.010972689, 2         ; 2 uses
  %exitcond2954.not.1 = icmp eq i32 %i.aes, %i.da
  br i1 %exitcond2954.not.1, label %._crit_edge2692, label %.lr.ph2691, !llvm.loop !381

.thread2538:                                      ; preds = %._crit_edge2692, %.lr.ph2607.split.preheader, %.preheader2580, %.preheader2578, %.lr.ph2620.split.preheader, %.preheader2576, %.lr.ph2648.split.preheader, %.preheader2573, %.preheader, %.loopexit2575, %.thread2535
  %.121164 = phi ptr [ %.81160, %.loopexit2575 ], [ %.1011622537, %.thread2535 ], [ %.1011622537, %.preheader ], [ %scevgep2928, %.lr.ph2620.split.preheader ], [ %scevgep, %.lr.ph2607.split.preheader ], [ %.21154, %.preheader2578 ], [ %.811602534, %.preheader2573 ], [ %scevgep2935, %.lr.ph2648.split.preheader ], [ %.41156, %.preheader2576 ], [ %.011522699, %.preheader2580 ], [ %i.adt, %._crit_edge2692 ] ; 3 uses
  %i.aet = icmp eq i32 %.02522.lcssa, %i.lg
  br i1 %i.aet, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %.thread2538
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.le, i64 48
  %i.aev = load i32, ptr %i.aeu, align 8, !tbaa !52
  %i.aew = mul nsw i32 %i.aev, %i.da              ; 2 uses
  %i.aex = load ptr, ptr %i.le, align 8, !tbaa !19
  %i.aey = sext i32 %i.aew to i64
  %i.aez = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  %i.afa = load i64, ptr %i.aez, align 8, !tbaa !25
  %i.afb = mul i64 %i.afa, %i.aey
end_hunk_4
begin_hunk_5_@_ZNK4ncnn16Slice_x86_avx51219forward_bf16s_fp16sERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
  br label %.noexc1776

.noexc1776:                                       ; preds = %.noexc1776.lr.ph, %._crit_edge2775
  %indvars.iv2985 = phi i64 [ %i.aui, %.noexc1776.lr.ph ], [ %indvars.iv.next2986, %._crit_edge2775 ] ; 17 uses
  %indvars.iv2983 = phi i64 [ 0, %.noexc1776.lr.ph ], [ %indvars.iv.next2984, %._crit_edge2775 ] ; 2 uses
  br i1 %i.auh, label %.lr.ph2774.preheader, label %._crit_edge2775

.lr.ph2774.preheader:                             ; preds = %.noexc1776
  %.reass2812 = mul i64 %factor.op.mul2811, %indvars.iv2983
  %i.auj = getelementptr inbounds nuw i8, ptr %i.auc, i64 %.reass2812
  %i.auk = add nsw i64 %indvars.iv2985, 15
  %.reass2810 = mul i64 %factor.op.mul2779, %i.auk
  %i.aul = getelementptr inbounds nuw i8, ptr %i.atz, i64 %.reass2810
  %i.aum = add nsw i64 %indvars.iv2985, 14
  %.reass2808 = mul i64 %factor.op.mul2779, %i.aum
  %i.aun = getelementptr inbounds nuw i8, ptr %i.atz, i64 %.reass2808
  %i.auo = add nsw i64 %indvars.iv2985, 13
  %.reass2806 = mul i64 %factor.op.mul2779, %i.auo
  %i.aup = getelementptr inbounds nuw i8, ptr %i.atz, i64 %.reass2806
  %i.auq = add nsw i64 %indvars.iv2985, 12
  %.reass2804 = mul i64 %factor.op.mul2779, %i.auq
  %i.aur = getelementptr inbounds nuw i8, ptr %i.atz, i64 %.reass2804
  %i.aus = add nsw i64 %indvars.iv2985, 11
  %.reass2802 = mul i64 %factor.op.mul2779, %i.aus
  %i.aut = getelementptr inbounds nuw i8, ptr %i.atz, i64 %.reass2802
  %i.auu = add nsw i64 %indvars.iv2985, 10
  %.reass2800 = mul i64 %factor.op.mul2779, %i.auu
  %i.auv = getelementptr inbounds nuw i8, ptr %i.atz, i64 %.reass2800
  %i.auw = add nsw i64 %indvars.iv2985, 9
  %.reass2798 = mul i64 %factor.op.mul2779, %i.auw
  %i.aux = getelementptr inbounds nuw i8, ptr %i.atz, i64 %.reass2798
  %i.auy = add nsw i64 %indvars.iv2985, 8
  %.reass2796 = mul i64 %factor.op.mul2779, %i.auy
  %i.auz = getelementptr inbounds nuw i8, ptr %i.atz, i64 %.reass2796
  %i.ava = add nsw i64 %indvars.iv2985, 7
  %.reass2794 = mul i64 %factor.op.mul2779, %i.ava
  %i.avb = getelementptr inbounds nuw i8, ptr %i.atz, i64 %.reass2794
  %i.avc = add nsw i64 %indvars.iv2985, 6
  %.reass2792 = mul i64 %factor.op.mul2779, %i.avc
  %i.avd = getelementptr inbounds nuw i8, ptr %i.atz, i64 %.reass2792
  %i.ave = add nsw i64 %indvars.iv2985, 5
  %.reass2790 = mul i64 %factor.op.mul2779, %i.ave
  %i.avf = getelementptr inbounds nuw i8, ptr %i.atz, i64 %.reass2790
  %i.avg = add nsw i64 %indvars.iv2985, 4
  %.reass2788 = mul i64 %factor.op.mul2779, %i.avg
  %i.avh = getelementptr inbounds nuw i8, ptr %i.atz, i64 %.reass2788
  %i.avi = add nsw i64 %indvars.iv2985, 3
  %.reass2786 = mul i64 %factor.op.mul2779, %i.avi
  %i.avj = getelementptr inbounds nuw i8, ptr %i.atz, i64 %.reass2786
  %i.avk = add nsw i64 %indvars.iv2985, 2
  %.reass2784 = mul i64 %factor.op.mul2779, %i.avk
  %i.avl = getelementptr inbounds nuw i8, ptr %i.atz, i64 %.reass2784
  %i.avm = add nsw i64 %indvars.iv2985, 1
  %.reass2782 = mul i64 %factor.op.mul2779, %i.avm
  %i.avn = getelementptr inbounds nuw i8, ptr %i.atz, i64 %.reass2782
  %.reass2780 = mul i64 %factor.op.mul2779, %indvars.iv2985
  %i.avo = getelementptr inbounds nuw i8, ptr %i.atz, i64 %.reass2780
  br label %.lr.ph2774

._crit_edge2775:                                  ; preds = %.lr.ph2774, %.noexc1776
  %indvars.iv.next2986 = add nsw i64 %indvars.iv2985, 16 ; 2 uses
  %indvars.iv.next2984 = add nuw nsw i64 %indvars.iv2983, 1 ; 2 uses
  %exitcond2991.not = icmp eq i64 %indvars.iv.next2984, %wide.trip.count2990
  br i1 %exitcond2991.not, label %.loopexit2570.loopexit, label %.noexc1776, !llvm.loop !404

.lr.ph2774:                                       ; preds = %.lr.ph2774.preheader, %.lr.ph2774
  %.010142773 = phi i32 [ %i.axl, %.lr.ph2774 ], [ 0, %.lr.ph2774.preheader ]
  %.010152772 = phi ptr [ %i.axk, %.lr.ph2774 ], [ %i.auj, %.lr.ph2774.preheader ] ; 17 uses
  %.010162771 = phi ptr [ %i.axh, %.lr.ph2774 ], [ %i.aul, %.lr.ph2774.preheader ] ; 2 uses
  %.010172770 = phi ptr [ %i.axe, %.lr.ph2774 ], [ %i.aun, %.lr.ph2774.preheader ] ; 2 uses
  %.010182769 = phi ptr [ %i.axb, %.lr.ph2774 ], [ %i.aup, %.lr.ph2774.preheader ] ; 2 uses
  %.010192768 = phi ptr [ %i.awy, %.lr.ph2774 ], [ %i.aur, %.lr.ph2774.preheader ] ; 2 uses
  %.010202767 = phi ptr [ %i.awv, %.lr.ph2774 ], [ %i.aut, %.lr.ph2774.preheader ] ; 2 uses
  %.010212766 = phi ptr [ %i.aws, %.lr.ph2774 ], [ %i.auv, %.lr.ph2774.preheader ] ; 2 uses
  %.010222765 = phi ptr [ %i.awp, %.lr.ph2774 ], [ %i.aux, %.lr.ph2774.preheader ] ; 2 uses
  %.010232764 = phi ptr [ %i.awm, %.lr.ph2774 ], [ %i.auz, %.lr.ph2774.preheader ] ; 2 uses
  %.010242763 = phi ptr [ %i.awj, %.lr.ph2774 ], [ %i.avb, %.lr.ph2774.preheader ] ; 2 uses
  %.010252762 = phi ptr [ %i.awg, %.lr.ph2774 ], [ %i.avd, %.lr.ph2774.preheader ] ; 2 uses
  %.010262761 = phi ptr [ %i.awd, %.lr.ph2774 ], [ %i.avf, %.lr.ph2774.preheader ] ; 2 uses
  %.010272760 = phi ptr [ %i.awa, %.lr.ph2774 ], [ %i.avh, %.lr.ph2774.preheader ] ; 2 uses
  %.010282759 = phi ptr [ %i.avx, %.lr.ph2774 ], [ %i.avj, %.lr.ph2774.preheader ] ; 2 uses
  %.010292758 = phi ptr [ %i.avu, %.lr.ph2774 ], [ %i.avl, %.lr.ph2774.preheader ] ; 2 uses
  %.010302757 = phi ptr [ %i.avr, %.lr.ph2774 ], [ %i.avn, %.lr.ph2774.preheader ] ; 2 uses
  %.010312756 = phi ptr [ %i.avp, %.lr.ph2774 ], [ %i.avo, %.lr.ph2774.preheader ] ; 2 uses
  %i.avp = getelementptr inbounds nuw i8, ptr %.010312756, i64 2
  %i.avq = load i16, ptr %.010312756, align 2, !tbaa !457
  store i16 %i.avq, ptr %.010152772, align 2, !tbaa !457
  %i.avr = getelementptr inbounds nuw i8, ptr %.010302757, i64 2
  %i.avs = load i16, ptr %.010302757, align 2, !tbaa !457
  %i.avt = getelementptr inbounds nuw i8, ptr %.010152772, i64 2
  store i16 %i.avs, ptr %i.avt, align 2, !tbaa !457
  %i.avu = getelementptr inbounds nuw i8, ptr %.010292758, i64 2
  %i.avv = load i16, ptr %.010292758, align 2, !tbaa !457
  %i.avw = getelementptr inbounds nuw i8, ptr %.010152772, i64 4
  store i16 %i.avv, ptr %i.avw, align 2, !tbaa !457
  %i.avx = getelementptr inbounds nuw i8, ptr %.010282759, i64 2
  %i.avy = load i16, ptr %.010282759, align 2, !tbaa !457
  %i.avz = getelementptr inbounds nuw i8, ptr %.010152772, i64 6
  store i16 %i.avy, ptr %i.avz, align 2, !tbaa !457
  %i.awa = getelementptr inbounds nuw i8, ptr %.010272760, i64 2
  %i.awb = load i16, ptr %.010272760, align 2, !tbaa !457
  %i.awc = getelementptr inbounds nuw i8, ptr %.010152772, i64 8
  store i16 %i.awb, ptr %i.awc, align 2, !tbaa !457
  %i.awd = getelementptr inbounds nuw i8, ptr %.010262761, i64 2
  %i.awe = load i16, ptr %.010262761, align 2, !tbaa !457
  %i.awf = getelementptr inbounds nuw i8, ptr %.010152772, i64 10
  store i16 %i.awe, ptr %i.awf, align 2, !tbaa !457
  %i.awg = getelementptr inbounds nuw i8, ptr %.010252762, i64 2
  %i.awh = load i16, ptr %.010252762, align 2, !tbaa !457
  %i.awi = getelementptr inbounds nuw i8, ptr %.010152772, i64 12
  store i16 %i.awh, ptr %i.awi, align 2, !tbaa !457
  %i.awj = getelementptr inbounds nuw i8, ptr %.010242763, i64 2
  %i.awk = load i16, ptr %.010242763, align 2, !tbaa !457
  %i.awl = getelementptr inbounds nuw i8, ptr %.010152772, i64 14
  store i16 %i.awk, ptr %i.awl, align 2, !tbaa !457
  %i.awm = getelementptr inbounds nuw i8, ptr %.010232764, i64 2
  %i.awn = load i16, ptr %.010232764, align 2, !tbaa !457
  %i.awo = getelementptr inbounds nuw i8, ptr %.010152772, i64 16
  store i16 %i.awn, ptr %i.awo, align 2, !tbaa !457
  %i.awp = getelementptr inbounds nuw i8, ptr %.010222765, i64 2
  %i.awq = load i16, ptr %.010222765, align 2, !tbaa !457
  %i.awr = getelementptr inbounds nuw i8, ptr %.010152772, i64 18
  store i16 %i.awq, ptr %i.awr, align 2, !tbaa !457
  %i.aws = getelementptr inbounds nuw i8, ptr %.010212766, i64 2
  %i.awt = load i16, ptr %.010212766, align 2, !tbaa !457
  %i.awu = getelementptr inbounds nuw i8, ptr %.010152772, i64 20
  store i16 %i.awt, ptr %i.awu, align 2, !tbaa !457
  %i.awv = getelementptr inbounds nuw i8, ptr %.010202767, i64 2
  %i.aww = load i16, ptr %.010202767, align 2, !tbaa !457
  %i.awx = getelementptr inbounds nuw i8, ptr %.010152772, i64 22
  store i16 %i.aww, ptr %i.awx, align 2, !tbaa !457
  %i.awy = getelementptr inbounds nuw i8, ptr %.010192768, i64 2
  %i.awz = load i16, ptr %.010192768, align 2, !tbaa !457
  %i.axa = getelementptr inbounds nuw i8, ptr %.010152772, i64 24
  store i16 %i.awz, ptr %i.axa, align 2, !tbaa !457
  %i.axb = getelementptr inbounds nuw i8, ptr %.010182769, i64 2
  %i.axc = load i16, ptr %.010182769, align 2, !tbaa !457
  %i.axd = getelementptr inbounds nuw i8, ptr %.010152772, i64 26
  store i16 %i.axc, ptr %i.axd, align 2, !tbaa !457
  %i.axe = getelementptr inbounds nuw i8, ptr %.010172770, i64 2
  %i.axf = load i16, ptr %.010172770, align 2, !tbaa !457
  %i.axg = getelementptr inbounds nuw i8, ptr %.010152772, i64 28
  store i16 %i.axf, ptr %i.axg, align 2, !tbaa !457
  %i.axh = getelementptr inbounds nuw i8, ptr %.010162771, i64 2
  %i.axi = load i16, ptr %.010162771, align 2, !tbaa !457
  %i.axj = getelementptr inbounds nuw i8, ptr %.010152772, i64 30
  store i16 %i.axi, ptr %i.axj, align 2, !tbaa !457
  %i.axk = getelementptr inbounds nuw i8, ptr %.010152772, i64 32
  %i.axl = add nuw nsw i32 %.010142773, 1         ; 2 uses
  %exitcond2982.not = icmp eq i32 %i.axl, %i.atv
  br i1 %exitcond2982.not, label %._crit_edge2775, label %.lr.ph2774, !llvm.loop !405

.loopexit2570.loopexit:                           ; preds = %._crit_edge2775
  %i.axm = trunc nsw i64 %indvars.iv.next2986 to i32
  br label %.loopexit2570

.loopexit2570:                                    ; preds = %.loopexit2570.loopexit, %.loopexit2571
  %i.axn = phi i32 [ %i.atl, %.loopexit2571 ], [ 16, %.loopexit2570.loopexit ]
  %.61052 = phi i32 [ %.41050, %.loopexit2571 ], [ %i.axm, %.loopexit2570.loopexit ] ; 3 uses
  br i1 %i.and, label %thread-pre-split, label %.loopexit

thread-pre-split:                                 ; preds = %bb.cj, %.loopexit2570
  %.610523175 = phi i32 [ %.61052, %.loopexit2570 ], [ %.21048, %bb.cj ]
  %.pr = load i32, ptr %i.ani, align 8, !tbaa !27
  br label %.thread2547

.thread2547:                                      ; preds = %bb.ci, %thread-pre-split
  %i.axo = phi i32 [ %.pr, %thread-pre-split ], [ %i.aqi, %bb.ci ] ; 2 uses
  %.610522549 = phi i32 [ %.610523175, %thread-pre-split ], [ %.21048, %bb.ci ] ; 3 uses
  %i.axp = icmp eq i32 %i.axo, 8
  br i1 %i.axp, label %bb.cm, label %.thread2560

bb.cm:                                            ; preds = %.thread2547
  %i.axq = getelementptr inbounds nuw i8, ptr %i.anh, i64 44
  %i.axr = load i32, ptr %i.axq, align 4, !tbaa !43
  %i.axs = getelementptr inbounds nuw i8, ptr %i.anh, i64 48
  %i.axt = load i32, ptr %i.axs, align 8, !tbaa !52
  %i.axu = mul i32 %i.axt, %i.axr
  %i.axv = getelementptr inbounds nuw i8, ptr %i.anh, i64 52
  %i.axw = load i32, ptr %i.axv, align 4, !tbaa !59
  %i.axx = mul i32 %i.axu, %i.axw                 ; 6 uses
  %i.axy = getelementptr inbounds nuw i8, ptr %i.anh, i64 56
  %i.axz = load i32, ptr %i.axy, align 8, !tbaa !50 ; 2 uses
  %i.aya = icmp sgt i32 %i.axz, 0
  br i1 %i.aya, label %.noexc1742.lr.ph, label %.thread2560

.noexc1742.lr.ph:                                 ; preds = %bb.cm
  %i.ayb = load ptr, ptr %5, align 16, !tbaa !19, !noalias !486 ; 6 uses
  %i.ayc = load i64, ptr %i.amh, align 16, !tbaa !20, !noalias !486 ; 5 uses
  %i.ayd = load i64, ptr %i.alw, align 16, !tbaa !25, !noalias !486 ; 5 uses
  %factor.op.mul2822 = mul i64 %i.ayc, %i.ayd     ; 2 uses
  %i.aye = load ptr, ptr %i.anh, align 8, !tbaa !19, !noalias !487 ; 4 uses
  %i.ayf = getelementptr inbounds nuw i8, ptr %i.anh, i64 64
  %i.ayg = load i64, ptr %i.ayf, align 8, !tbaa !20, !noalias !487 ; 3 uses
  %i.ayh = getelementptr inbounds nuw i8, ptr %i.anh, i64 16
  %i.ayi = load i64, ptr %i.ayh, align 8, !tbaa !25, !noalias !487 ; 3 uses
  %factor.op.mul2826 = mul i64 %i.ayg, %i.ayi
  %i.ayj = icmp sgt i32 %i.axx, 0
  %i.ayk = sext i32 %.610522549 to i64            ; 5 uses
  %wide.trip.count3000 = zext nneg i32 %i.axz to i64 ; 3 uses
  %6 = shl i64 %i.ayd, 1
  %7 = mul i64 %6, %i.ayc
  %8 = mul i64 %i.ayi, %i.ayg
  %scevgep3683 = getelementptr i8, ptr %i.ayb, i64 8
  %i.ayl = mul i64 %i.ayd, %i.ayc
  %i.aym = shl nuw nsw i64 %wide.trip.count3000, 1 ; 2 uses
  %i.ayn = add nsw i64 %i.aym, -2
  %i.ayo = add nsw i64 %i.ayn, %i.ayk
  %i.ayp = mul i64 %i.ayl, %i.ayo
  %i.ayq = add i32 %i.axx, -1
  %i.ayr = zext i32 %i.ayq to i64                 ; 2 uses
  %i.ays = shl nuw nsw i64 %i.ayr, 3              ; 2 uses
  %i.ayt = getelementptr i8, ptr %scevgep3683, i64 %i.ayp
  %scevgep3684 = getelementptr i8, ptr %i.ayt, i64 %i.ays
  %i.ayu = mul i64 %i.ayd, %i.ayc                 ; 2 uses
  %i.ayv = mul i64 %i.ayu, %i.ayk
  %scevgep3685 = getelementptr i8, ptr %i.ayb, i64 %i.ayv
  %scevgep3686 = getelementptr i8, ptr %i.ayb, i64 8
  %i.ayw = add nsw i64 %i.aym, -1
  %i.ayx = add nsw i64 %i.ayw, %i.ayk
  %i.ayy = mul i64 %i.ayu, %i.ayx
  %i.ayz = getelementptr i8, ptr %scevgep3686, i64 %i.ayy
  %scevgep3687 = getelementptr i8, ptr %i.ayz, i64 %i.ays
  %9 = mul i64 %i.ayd, %i.ayc
  %i.aza = add nsw i64 %i.ayk, 1
  %i.azb = mul i64 %9, %i.aza
  %scevgep3688 = getelementptr i8, ptr %i.ayb, i64 %i.azb
  %scevgep3689 = getelementptr i8, ptr %i.aye, i64 16
  %i.azc = mul i64 %i.ayi, %i.ayg
  %i.azd = add nsw i64 %wide.trip.count3000, -1
  %i.aze = mul i64 %i.azc, %i.azd
  %i.azf = shl nuw nsw i64 %i.ayr, 4
  %i.azg = getelementptr i8, ptr %scevgep3689, i64 %i.aze
  %scevgep3690 = getelementptr i8, ptr %i.azg, i64 %i.azf ; 2 uses
  %i.azh = zext i32 %i.axx to i64                 ; 5 uses
  %min.iters.check3691 = icmp ult i32 %i.axx, 4
  %bound03693 = icmp ult ptr %i.aye, %scevgep3687
  %bound13694 = icmp ult ptr %scevgep3688, %scevgep3690
  %found.conflict3695 = and i1 %bound03693, %bound13694
  %i.azi = or i64 %7, %8
  %i.azj = icmp slt i64 %i.azi, 0
  %i.azk = or i1 %found.conflict3695, %i.azj
  %bound03698 = icmp ult ptr %i.aye, %scevgep3684
  %bound13699 = icmp ult ptr %scevgep3685, %scevgep3690
  %found.conflict3700 = and i1 %bound03698, %bound13699
  %conflict.rdx3701 = or i1 %i.azk, %found.conflict3700
  %min.iters.check3703 = icmp ult i32 %i.axx, 16
  %i.azl = and i64 %i.azh, 12
  %n.vec3705 = and i64 %i.azh, 2147483632         ; 6 uses
  %i.azm = trunc nuw nsw i64 %n.vec3705 to i32
  %i.azn = shl nuw nsw i64 %n.vec3705, 4
  %i.azo = shl nuw nsw i64 %n.vec3705, 3          ; 2 uses
  %cmp.n3724 = icmp eq i64 %n.vec3705, %i.azh
  %min.epilog.iters.check3728 = icmp eq i64 %i.azl, 0
  %n.vec3731 = and i64 %i.azh, 2147483644         ; 5 uses
  %i.azp = trunc nuw nsw i64 %n.vec3731 to i32
  %i.azq = shl nuw nsw i64 %n.vec3731, 4
  %i.azr = shl nuw nsw i64 %n.vec3731, 3          ; 2 uses
  %cmp.n3750 = icmp eq i64 %n.vec3731, %i.azh
  br label %.noexc1742

.noexc1742:                                       ; preds = %.noexc1742.lr.ph, %._crit_edge2818
  %indvars.iv2995 = phi i64 [ %i.ayk, %.noexc1742.lr.ph ], [ %indvars.iv.next2996, %._crit_edge2818 ] ; 3 uses
  %indvars.iv2993 = phi i64 [ 0, %.noexc1742.lr.ph ], [ %indvars.iv.next2994, %._crit_edge2818 ] ; 2 uses
  br i1 %i.ayj, label %iter.check3725, label %._crit_edge2818

iter.check3725:                                   ; preds = %.noexc1742
  %.reass2827 = mul i64 %factor.op.mul2826, %indvars.iv2993
  %i.azs = getelementptr inbounds nuw i8, ptr %i.aye, i64 %.reass2827 ; 6 uses
  %i.azt = add nsw i64 %indvars.iv2995, 1
  %.reass2825 = mul i64 %factor.op.mul2822, %i.azt
  %i.azu = getelementptr inbounds nuw i8, ptr %i.ayb, i64 %.reass2825 ; 6 uses
  %.reass2823 = mul i64 %factor.op.mul2822, %indvars.iv2995
  %i.azv = getelementptr inbounds nuw i8, ptr %i.ayb, i64 %.reass2823 ; 6 uses
  br i1 %min.iters.check3691, label %.lr.ph2817.preheader, label %vector.memcheck3692

vector.memcheck3692:                              ; preds = %iter.check3725
  br i1 %conflict.rdx3701, label %.lr.ph2817.preheader, label %vector.main.loop.iter.check3702

vector.main.loop.iter.check3702:                  ; preds = %vector.memcheck3692
  br i1 %min.iters.check3703, label %vec.epilog.ph3729, label %vector.ph3704

vector.ph3704:                                    ; preds = %vector.main.loop.iter.check3702
  %i.azw = getelementptr i8, ptr %i.azs, i64 %i.azn
  %i.azx = getelementptr i8, ptr %i.azu, i64 %i.azo
  %i.azy = getelementptr i8, ptr %i.azv, i64 %i.azo
  br label %vector.body3706

vector.body3706:                                  ; preds = %vector.ph3704, %vector.body3706
  %index3707 = phi i64 [ 0, %vector.ph3704 ], [ %index.next3722, %vector.body3706 ] ; 3 uses
  %i.azz = shl i64 %index3707, 4
  %next.gep3708 = getelementptr i8, ptr %i.azs, i64 %i.azz
  %i.baa = shl i64 %index3707, 3                  ; 2 uses
  %next.gep3709 = getelementptr i8, ptr %i.azu, i64 %i.baa
  %next.gep3710 = getelementptr i8, ptr %i.azv, i64 %i.baa
  %wide.vec3711 = load <64 x i16>, ptr %next.gep3710, align 2, !tbaa !457, !alias.scope !488
  %wide.vec3716 = load <64 x i16>, ptr %next.gep3709, align 2, !tbaa !457, !alias.scope !489
  %interleaved.vec3721 = shufflevector <64 x i16> %wide.vec3711, <64 x i16> %wide.vec3716, <128 x i32> <i32 0, i32 1, i32 2, i32 3, i32 64, i32 65, i32 66, i32 67, i32 4, i32 5, i32 6, i32 7, i32 68, i32 69, i32 70, i32 71, i32 8, i32 9, i32 10, i32 11, i32 72, i32 73, i32 74, i32 75, i32 12, i32 13, i32 14, i32 15, i32 76, i32 77, i32 78, i32 79, i32 16, i32 17, i32 18, i32 19, i32 80, i32 81, i32 82, i32 83, i32 20, i32 21, i32 22, i32 23, i32 84, i32 85, i32 86, i32 87, i32 24, i32 25, i32 26, i32 27, i32 88, i32 89, i32 90, i32 91, i32 28, i32 29, i32 30, i32 31, i32 92, i32 93, i32 94, i32 95, i32 32, i32 33, i32 34, i32 35, i32 96, i32 97, i32 98, i32 99, i32 36, i32 37, i32 38, i32 39, i32 100, i32 101, i32 102, i32 103, i32 40, i32 41, i32 42, i32 43, i32 104, i32 105, i32 106, i32 107, i32 44, i32 45, i32 46, i32 47, i32 108, i32 109, i32 110, i32 111, i32 48, i32 49, i32 50, i32 51, i32 112, i32 113, i32 114, i32 115, i32 52, i32 53, i32 54, i32 55, i32 116, i32 117, i32 118, i32 119, i32 56, i32 57, i32 58, i32 59, i32 120, i32 121, i32 122, i32 123, i32 60, i32 61, i32 62, i32 63, i32 124, i32 125, i32 126, i32 127>
  store <128 x i16> %interleaved.vec3721, ptr %next.gep3708, align 2, !tbaa !457, !alias.scope !490, !noalias !491
  %index.next3722 = add nuw i64 %index3707, 16    ; 2 uses
  %i.bab = icmp eq i64 %index.next3722, %n.vec3705
  br i1 %i.bab, label %middle.block3723, label %vector.body3706, !llvm.loop !414

middle.block3723:                                 ; preds = %vector.body3706
  br i1 %cmp.n3724, label %._crit_edge2818, label %vec.epilog.iter.check3726

vec.epilog.iter.check3726:                        ; preds = %middle.block3723
  br i1 %min.epilog.iters.check3728, label %.lr.ph2817.preheader, label %vec.epilog.ph3729, !prof !57

vec.epilog.ph3729:                                ; preds = %vector.main.loop.iter.check3702, %vec.epilog.iter.check3726
  %vec.epilog.resume.val3730 = phi i64 [ %n.vec3705, %vec.epilog.iter.check3726 ], [ 0, %vector.main.loop.iter.check3702 ]
  %i.bac = getelementptr i8, ptr %i.azs, i64 %i.azq
  %i.bad = getelementptr i8, ptr %i.azu, i64 %i.azr
  %i.bae = getelementptr i8, ptr %i.azv, i64 %i.azr
  br label %vec.epilog.vector.body3732

vec.epilog.vector.body3732:                       ; preds = %vec.epilog.vector.body3732, %vec.epilog.ph3729
  %index3733 = phi i64 [ %vec.epilog.resume.val3730, %vec.epilog.ph3729 ], [ %index.next3748, %vec.epilog.vector.body3732 ] ; 3 uses
  %i.baf = shl i64 %index3733, 4
  %next.gep3734 = getelementptr i8, ptr %i.azs, i64 %i.baf
  %i.bag = shl i64 %index3733, 3                  ; 2 uses
  %next.gep3735 = getelementptr i8, ptr %i.azu, i64 %i.bag
  %next.gep3736 = getelementptr i8, ptr %i.azv, i64 %i.bag
  %wide.vec3737 = load <16 x i16>, ptr %next.gep3736, align 2, !tbaa !457, !alias.scope !488
  %wide.vec3742 = load <16 x i16>, ptr %next.gep3735, align 2, !tbaa !457, !alias.scope !489
  %interleaved.vec3747 = shufflevector <16 x i16> %wide.vec3737, <16 x i16> %wide.vec3742, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 4, i32 5, i32 6, i32 7, i32 20, i32 21, i32 22, i32 23, i32 8, i32 9, i32 10, i32 11, i32 24, i32 25, i32 26, i32 27, i32 12, i32 13, i32 14, i32 15, i32 28, i32 29, i32 30, i32 31>
  store <32 x i16> %interleaved.vec3747, ptr %next.gep3734, align 2, !tbaa !457, !alias.scope !490, !noalias !491
  %index.next3748 = add nuw i64 %index3733, 4     ; 2 uses
  %i.bah = icmp eq i64 %index.next3748, %n.vec3731
  br i1 %i.bah, label %vec.epilog.middle.block3749, label %vec.epilog.vector.body3732, !llvm.loop !415

vec.epilog.middle.block3749:                      ; preds = %vec.epilog.vector.body3732
  br i1 %cmp.n3750, label %._crit_edge2818, label %.lr.ph2817.preheader

.lr.ph2817.preheader:                             ; preds = %iter.check3725, %vector.memcheck3692, %vec.epilog.iter.check3726, %vec.epilog.middle.block3749
  %.010092816.ph = phi i32 [ 0, %iter.check3725 ], [ 0, %vector.memcheck3692 ], [ %i.azm, %vec.epilog.iter.check3726 ], [ %i.azp, %vec.epilog.middle.block3749 ]
  %.010102815.ph = phi ptr [ %i.azs, %iter.check3725 ], [ %i.azs, %vector.memcheck3692 ], [ %i.azw, %vec.epilog.iter.check3726 ], [ %i.bac, %vec.epilog.middle.block3749 ]
  %.010112814.ph = phi ptr [ %i.azu, %iter.check3725 ], [ %i.azu, %vector.memcheck3692 ], [ %i.azx, %vec.epilog.iter.check3726 ], [ %i.bad, %vec.epilog.middle.block3749 ]
  %.010122813.ph = phi ptr [ %i.azv, %iter.check3725 ], [ %i.azv, %vector.memcheck3692 ], [ %i.azy, %vec.epilog.iter.check3726 ], [ %i.bae, %vec.epilog.middle.block3749 ]
  br label %.lr.ph2817

._crit_edge2818:                                  ; preds = %.lr.ph2817, %middle.block3723, %vec.epilog.middle.block3749, %.noexc1742
  %indvars.iv.next2996 = add nsw i64 %indvars.iv2995, 2 ; 2 uses
  %indvars.iv.next2994 = add nuw nsw i64 %indvars.iv2993, 1 ; 2 uses
  %exitcond3001.not = icmp eq i64 %indvars.iv.next2994, %wide.trip.count3000
  br i1 %exitcond3001.not, label %.loopexit.loopexit, label %.noexc1742, !llvm.loop !416

.lr.ph2817:                                       ; preds = %.lr.ph2817.preheader, %.lr.ph2817
  %.010092816 = phi i32 [ %i.bbg, %.lr.ph2817 ], [ %.010092816.ph, %.lr.ph2817.preheader ]
  %.010102815 = phi ptr [ %i.bbf, %.lr.ph2817 ], [ %.010102815.ph, %.lr.ph2817.preheader ] ; 9 uses
  %.010112814 = phi ptr [ %i.bbe, %.lr.ph2817 ], [ %.010112814.ph, %.lr.ph2817.preheader ] ; 5 uses
  %.010122813 = phi ptr [ %i.bbd, %.lr.ph2817 ], [ %.010122813.ph, %.lr.ph2817.preheader ] ; 5 uses
  %i.bai = load i16, ptr %.010122813, align 2, !tbaa !457
  store i16 %i.bai, ptr %.010102815, align 2, !tbaa !457
  %i.baj = getelementptr inbounds nuw i8, ptr %.010122813, i64 2
  %i.bak = load i16, ptr %i.baj, align 2, !tbaa !457
  %i.bal = getelementptr inbounds nuw i8, ptr %.010102815, i64 2
  store i16 %i.bak, ptr %i.bal, align 2, !tbaa !457
  %i.bam = getelementptr inbounds nuw i8, ptr %.010122813, i64 4
  %i.ban = load i16, ptr %i.bam, align 2, !tbaa !457
  %i.bao = getelementptr inbounds nuw i8, ptr %.010102815, i64 4
  store i16 %i.ban, ptr %i.bao, align 2, !tbaa !457
  %i.bap = getelementptr inbounds nuw i8, ptr %.010122813, i64 6
  %i.baq = load i16, ptr %i.bap, align 2, !tbaa !457
  %i.bar = getelementptr inbounds nuw i8, ptr %.010102815, i64 6
  store i16 %i.baq, ptr %i.bar, align 2, !tbaa !457
  %i.bas = load i16, ptr %.010112814, align 2, !tbaa !457
  %i.bat = getelementptr inbounds nuw i8, ptr %.010102815, i64 8
  store i16 %i.bas, ptr %i.bat, align 2, !tbaa !457
  %i.bau = getelementptr inbounds nuw i8, ptr %.010112814, i64 2
  %i.bav = load i16, ptr %i.bau, align 2, !tbaa !457
  %i.baw = getelementptr inbounds nuw i8, ptr %.010102815, i64 10
  store i16 %i.bav, ptr %i.baw, align 2, !tbaa !457
  %i.bax = getelementptr inbounds nuw i8, ptr %.010112814, i64 4
  %i.bay = load i16, ptr %i.bax, align 2, !tbaa !457
  %i.baz = getelementptr inbounds nuw i8, ptr %.010102815, i64 12
  store i16 %i.bay, ptr %i.baz, align 2, !tbaa !457
  %i.bba = getelementptr inbounds nuw i8, ptr %.010112814, i64 6
  %i.bbb = load i16, ptr %i.bba, align 2, !tbaa !457
  %i.bbc = getelementptr inbounds nuw i8, ptr %.010102815, i64 14
  store i16 %i.bbb, ptr %i.bbc, align 2, !tbaa !457
  %i.bbd = getelementptr inbounds nuw i8, ptr %.010122813, i64 8
  %i.bbe = getelementptr inbounds nuw i8, ptr %.010112814, i64 8
  %i.bbf = getelementptr inbounds nuw i8, ptr %.010102815, i64 16
  %i.bbg = add nuw nsw i32 %.010092816, 1         ; 2 uses
  %exitcond2992.not = icmp eq i32 %i.bbg, %i.axx
  br i1 %exitcond2992.not, label %._crit_edge2818, label %.lr.ph2817, !llvm.loop !417

.loopexit.loopexit:                               ; preds = %._crit_edge2818
  %i.bbh = trunc nsw i64 %indvars.iv.next2996 to i32
  br label %.thread2560

.loopexit:                                        ; preds = %.loopexit2570
  br i1 %i.ane, label %thread-pre-split2555, label %.thread2560

thread-pre-split2555:                             ; preds = %bb.cl, %.loopexit
  %.810543159 = phi i32 [ %.61052, %.loopexit ], [ %.41050, %bb.cl ]
  %.pr2556 = load i32, ptr %i.ani, align 8, !tbaa !27
  br label %.thread2552

.thread2552:                                      ; preds = %bb.ck, %thread-pre-split2555
  %i.bbi = phi i32 [ %.pr2556, %thread-pre-split2555 ], [ %i.atm, %bb.ck ] ; 2 uses
  %.810542554 = phi i32 [ %.810543159, %thread-pre-split2555 ], [ %.41050, %bb.ck ] ; 3 uses
  %i.bbj = icmp eq i32 %i.bbi, 8
  br i1 %i.bbj, label %bb.cn, label %.thread2557

bb.cn:                                            ; preds = %.thread2552
  %i.bbk = getelementptr inbounds nuw i8, ptr %i.anh, i64 44
  %i.bbl = load i32, ptr %i.bbk, align 4, !tbaa !43
  %i.bbm = getelementptr inbounds nuw i8, ptr %i.anh, i64 48
  %i.bbn = load i32, ptr %i.bbm, align 8, !tbaa !52
  %i.bbo = mul i32 %i.bbn, %i.bbl
  %i.bbp = getelementptr inbounds nuw i8, ptr %i.anh, i64 52
  %i.bbq = load i32, ptr %i.bbp, align 4, !tbaa !59
  %i.bbr = mul i32 %i.bbo, %i.bbq                 ; 6 uses
  %i.bbs = getelementptr inbounds nuw i8, ptr %i.anh, i64 56
  %i.bbt = load i32, ptr %i.bbs, align 8, !tbaa !50 ; 2 uses
  %i.bbu = icmp sgt i32 %i.bbt, 0
  br i1 %i.bbu, label %.noexc1736.lr.ph, label %.thread2560

.noexc1736.lr.ph:                                 ; preds = %bb.cn
  %i.bbv = load ptr, ptr %5, align 16, !tbaa !19, !noalias !492 ; 24 uses
  %i.bbw = load i64, ptr %i.amh, align 16, !tbaa !20, !noalias !492 ; 11 uses
  %i.bbx = load i64, ptr %i.alw, align 16, !tbaa !25, !noalias !492 ; 11 uses
  %factor.op.mul2843 = mul i64 %i.bbw, %i.bbx     ; 8 uses
  %i.bby = load ptr, ptr %i.anh, align 8, !tbaa !19, !noalias !493 ; 3 uses
  %i.bbz = getelementptr inbounds nuw i8, ptr %i.anh, i64 64
  %i.bca = load i64, ptr %i.bbz, align 8, !tbaa !20, !noalias !493 ; 3 uses
  %i.bcb = getelementptr inbounds nuw i8, ptr %i.anh, i64 16
  %i.bcc = load i64, ptr %i.bcb, align 8, !tbaa !25, !noalias !493 ; 3 uses
  %factor.op.mul2859 = mul i64 %i.bca, %i.bcc
  %i.bcd = icmp sgt i32 %i.bbr, 0
  %i.bce = sext i32 %.810542554 to i64            ; 17 uses
  %wide.trip.count3010 = zext nneg i32 %i.bbt to i64 ; 3 uses
  %10 = shl i64 %i.bbx, 3
  %11 = mul i64 %10, %i.bbw
  %12 = mul i64 %i.bcc, %i.bca
  %scevgep3927 = getelementptr i8, ptr %i.bbv, i64 2
  %i.bcf = mul i64 %i.bbx, %i.bbw
  %i.bcg = shl nuw nsw i64 %wide.trip.count3010, 3 ; 8 uses
  %i.bch = add nsw i64 %i.bcg, -8
  %i.bci = add nsw i64 %i.bch, %i.bce
  %i.bcj = mul i64 %i.bcf, %i.bci
  %i.bck = add i32 %i.bbr, -1
  %i.bcl = zext i32 %i.bck to i64                 ; 2 uses
  %i.bcm = shl nuw nsw i64 %i.bcl, 1              ; 8 uses
  %i.bcn = getelementptr i8, ptr %scevgep3927, i64 %i.bcj
  %scevgep3928 = getelementptr i8, ptr %i.bcn, i64 %i.bcm
  %i.bco = mul i64 %i.bbx, %i.bbw                 ; 2 uses
  %i.bcp = mul i64 %i.bco, %i.bce
  %scevgep3929 = getelementptr i8, ptr %i.bbv, i64 %i.bcp
  %scevgep3930 = getelementptr i8, ptr %i.bbv, i64 2
  %i.bcq = add nsw i64 %i.bcg, -7
  %i.bcr = add nsw i64 %i.bcq, %i.bce
  %i.bcs = mul i64 %i.bco, %i.bcr
  %i.bct = getelementptr i8, ptr %scevgep3930, i64 %i.bcs
  %scevgep3931 = getelementptr i8, ptr %i.bct, i64 %i.bcm
  %i.bcu = mul i64 %i.bbx, %i.bbw                 ; 2 uses
  %i.bcv = add nsw i64 %i.bce, 1
  %i.bcw = mul i64 %i.bcu, %i.bcv
  %scevgep3932 = getelementptr i8, ptr %i.bbv, i64 %i.bcw
  %scevgep3933 = getelementptr i8, ptr %i.bbv, i64 2
  %i.bcx = add nsw i64 %i.bcg, -6
  %i.bcy = add nsw i64 %i.bcx, %i.bce
  %i.bcz = mul i64 %i.bcu, %i.bcy
  %i.bda = getelementptr i8, ptr %scevgep3933, i64 %i.bcz
  %scevgep3934 = getelementptr i8, ptr %i.bda, i64 %i.bcm
  %i.bdb = mul i64 %i.bbx, %i.bbw                 ; 2 uses
  %i.bdc = add nsw i64 %i.bce, 2
  %i.bdd = mul i64 %i.bdb, %i.bdc
  %scevgep3935 = getelementptr i8, ptr %i.bbv, i64 %i.bdd
  %scevgep3936 = getelementptr i8, ptr %i.bbv, i64 2
  %i.bde = add nsw i64 %i.bcg, -5
  %i.bdf = add nsw i64 %i.bde, %i.bce
  %i.bdg = mul i64 %i.bdb, %i.bdf
  %i.bdh = getelementptr i8, ptr %scevgep3936, i64 %i.bdg
  %scevgep3937 = getelementptr i8, ptr %i.bdh, i64 %i.bcm
  %i.bdi = mul i64 %i.bbx, %i.bbw                 ; 2 uses
  %i.bdj = add nsw i64 %i.bce, 3
  %i.bdk = mul i64 %i.bdi, %i.bdj
  %scevgep3938 = getelementptr i8, ptr %i.bbv, i64 %i.bdk
  %scevgep3939 = getelementptr i8, ptr %i.bbv, i64 2
  %i.bdl = add nsw i64 %i.bcg, -4
  %i.bdm = add nsw i64 %i.bdl, %i.bce
  %i.bdn = mul i64 %i.bdi, %i.bdm
  %i.bdo = getelementptr i8, ptr %scevgep3939, i64 %i.bdn
  %scevgep3940 = getelementptr i8, ptr %i.bdo, i64 %i.bcm
  %i.bdp = mul i64 %i.bbx, %i.bbw                 ; 2 uses
  %i.bdq = add nsw i64 %i.bce, 4
  %i.bdr = mul i64 %i.bdp, %i.bdq
  %scevgep3941 = getelementptr i8, ptr %i.bbv, i64 %i.bdr
  %scevgep3942 = getelementptr i8, ptr %i.bbv, i64 2
  %i.bds = add nsw i64 %i.bcg, -3
  %i.bdt = add nsw i64 %i.bds, %i.bce
  %i.bdu = mul i64 %i.bdp, %i.bdt
  %i.bdv = getelementptr i8, ptr %scevgep3942, i64 %i.bdu
  %scevgep3943 = getelementptr i8, ptr %i.bdv, i64 %i.bcm
  %i.bdw = mul i64 %i.bbx, %i.bbw                 ; 2 uses
  %i.bdx = add nsw i64 %i.bce, 5
  %i.bdy = mul i64 %i.bdw, %i.bdx
  %scevgep3944 = getelementptr i8, ptr %i.bbv, i64 %i.bdy
  %scevgep3945 = getelementptr i8, ptr %i.bbv, i64 2
  %i.bdz = add nsw i64 %i.bcg, -2
  %i.bea = add nsw i64 %i.bdz, %i.bce
  %i.beb = mul i64 %i.bdw, %i.bea
  %i.bec = getelementptr i8, ptr %scevgep3945, i64 %i.beb
  %scevgep3946 = getelementptr i8, ptr %i.bec, i64 %i.bcm
  %i.bed = mul i64 %i.bbx, %i.bbw                 ; 2 uses
  %i.bee = add nsw i64 %i.bce, 6
  %i.bef = mul i64 %i.bed, %i.bee
  %scevgep3947 = getelementptr i8, ptr %i.bbv, i64 %i.bef
  %scevgep3948 = getelementptr i8, ptr %i.bbv, i64 2
  %i.beg = add nsw i64 %i.bcg, -1
  %i.beh = add nsw i64 %i.beg, %i.bce
  %i.bei = mul i64 %i.bed, %i.beh
  %i.bej = getelementptr i8, ptr %scevgep3948, i64 %i.bei
  %scevgep3949 = getelementptr i8, ptr %i.bej, i64 %i.bcm
  %13 = mul i64 %i.bbx, %i.bbw
  %i.bek = add nsw i64 %i.bce, 7
  %i.bel = mul i64 %13, %i.bek
  %scevgep3950 = getelementptr i8, ptr %i.bbv, i64 %i.bel
  %scevgep3951 = getelementptr i8, ptr %i.bby, i64 16
  %i.bem = mul i64 %i.bcc, %i.bca
  %i.ben = add nsw i64 %wide.trip.count3010, -1
  %i.beo = mul i64 %i.bem, %i.ben
  %i.bep = shl nuw nsw i64 %i.bcl, 4
  %i.beq = getelementptr i8, ptr %scevgep3951, i64 %i.beo
  %scevgep3952 = getelementptr i8, ptr %i.beq, i64 %i.bep
  %i.ber = zext i32 %i.bbr to i64                 ; 5 uses
  %i.bes = insertelement <8 x ptr> poison, ptr %i.bby, i64 0
  %i.bet = shufflevector <8 x ptr> %i.bes, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.beu = insertelement <8 x ptr> poison, ptr %scevgep3949, i64 0
  %i.bev = insertelement <8 x ptr> %i.beu, ptr %scevgep3946, i64 1
  %i.bew = insertelement <8 x ptr> %i.bev, ptr %scevgep3943, i64 2
  %i.bex = insertelement <8 x ptr> %i.bew, ptr %scevgep3940, i64 3
  %i.bey = insertelement <8 x ptr> %i.bex, ptr %scevgep3937, i64 4
  %i.bez = insertelement <8 x ptr> %i.bey, ptr %scevgep3934, i64 5
  %i.bfa = insertelement <8 x ptr> %i.bez, ptr %scevgep3931, i64 6
  %i.bfb = insertelement <8 x ptr> %i.bfa, ptr %scevgep3928, i64 7
  %i.bfc = insertelement <8 x ptr> poison, ptr %scevgep3950, i64 0
  %i.bfd = insertelement <8 x ptr> %i.bfc, ptr %scevgep3947, i64 1
  %i.bfe = insertelement <8 x ptr> %i.bfd, ptr %scevgep3944, i64 2
  %i.bff = insertelement <8 x ptr> %i.bfe, ptr %scevgep3941, i64 3
  %i.bfg = insertelement <8 x ptr> %i.bff, ptr %scevgep3938, i64 4
  %i.bfh = insertelement <8 x ptr> %i.bfg, ptr %scevgep3935, i64 5
  %i.bfi = insertelement <8 x ptr> %i.bfh, ptr %scevgep3932, i64 6
  %i.bfj = insertelement <8 x ptr> %i.bfi, ptr %scevgep3929, i64 7
  %i.bfk = insertelement <8 x ptr> poison, ptr %scevgep3952, i64 0
  %i.bfl = shufflevector <8 x ptr> %i.bfk, <8 x ptr> poison, <8 x i32> zeroinitializer
  %min.iters.check3953 = icmp ult i32 %i.bbr, 4
  %i.bfm = icmp ult <8 x ptr> %i.bet, %i.bfb
  %i.bfn = icmp ult <8 x ptr> %i.bfj, %i.bfl
  %i.bfo = or i64 %11, %12
  %i.bfp = icmp slt i64 %i.bfo, 0
  %i.bfq = and <8 x i1> %i.bfm, %i.bfn
  %i.bfr = bitcast <8 x i1> %i.bfq to i8
  %i.bfs = icmp ne i8 %i.bfr, 0
  %op.rdx4055 = or i1 %i.bfs, %i.bfp
  %min.iters.check3989 = icmp ult i32 %i.bbr, 32
  %i.bft = and i64 %i.ber, 28
  %n.vec3991 = and i64 %i.ber, 2147483616         ; 6 uses
  %i.bfu = trunc nuw nsw i64 %n.vec3991 to i32
  %i.bfv = shl nuw nsw i64 %n.vec3991, 4
  %i.bfw = shl nuw nsw i64 %n.vec3991, 1          ; 8 uses
  %cmp.n4014 = icmp eq i64 %n.vec3991, %i.ber
  %min.epilog.iters.check4018 = icmp eq i64 %i.bft, 0
  %n.vec4021 = and i64 %i.ber, 2147483644         ; 5 uses
  %i.bfx = trunc nuw nsw i64 %n.vec4021 to i32
  %i.bfy = shl nuw nsw i64 %n.vec4021, 4
  %i.bfz = shl nuw nsw i64 %n.vec4021, 1          ; 8 uses
  %cmp.n4044 = icmp eq i64 %n.vec4021, %i.ber
  br label %.noexc1736

.noexc1736:                                       ; preds = %.noexc1736.lr.ph, %._crit_edge2839
  %indvars.iv3005 = phi i64 [ %i.bce, %.noexc1736.lr.ph ], [ %indvars.iv.next3006, %._crit_edge2839 ] ; 9 uses
  %indvars.iv3003 = phi i64 [ 0, %.noexc1736.lr.ph ], [ %indvars.iv.next3004, %._crit_edge2839 ] ; 2 uses
  br i1 %i.bcd, label %iter.check4015, label %._crit_edge2839

iter.check4015:                                   ; preds = %.noexc1736
  %.reass2860 = mul i64 %factor.op.mul2859, %indvars.iv3003
  %i.bga = getelementptr inbounds nuw i8, ptr %i.bby, i64 %.reass2860 ; 6 uses
  %i.bgb = add nsw i64 %indvars.iv3005, 7
  %.reass2858 = mul i64 %factor.op.mul2843, %i.bgb
  %i.bgc = getelementptr inbounds nuw i8, ptr %i.bbv, i64 %.reass2858 ; 6 uses
  %i.bgd = add nsw i64 %indvars.iv3005, 6
  %.reass2856 = mul i64 %factor.op.mul2843, %i.bgd
  %i.bge = getelementptr inbounds nuw i8, ptr %i.bbv, i64 %.reass2856 ; 6 uses
  %i.bgf = add nsw i64 %indvars.iv3005, 5
  %.reass2854 = mul i64 %factor.op.mul2843, %i.bgf
  %i.bgg = getelementptr inbounds nuw i8, ptr %i.bbv, i64 %.reass2854 ; 6 uses
  %i.bgh = add nsw i64 %indvars.iv3005, 4
  %.reass2852 = mul i64 %factor.op.mul2843, %i.bgh
  %i.bgi = getelementptr inbounds nuw i8, ptr %i.bbv, i64 %.reass2852 ; 6 uses
  %i.bgj = add nsw i64 %indvars.iv3005, 3
  %.reass2850 = mul i64 %factor.op.mul2843, %i.bgj
  %i.bgk = getelementptr inbounds nuw i8, ptr %i.bbv, i64 %.reass2850 ; 6 uses
  %i.bgl = add nsw i64 %indvars.iv3005, 2
  %.reass2848 = mul i64 %factor.op.mul2843, %i.bgl
  %i.bgm = getelementptr inbounds nuw i8, ptr %i.bbv, i64 %.reass2848 ; 6 uses
  %i.bgn = add nsw i64 %indvars.iv3005, 1
  %.reass2846 = mul i64 %factor.op.mul2843, %i.bgn
  %i.bgo = getelementptr inbounds nuw i8, ptr %i.bbv, i64 %.reass2846 ; 6 uses
  %.reass2844 = mul i64 %factor.op.mul2843, %indvars.iv3005
  %i.bgp = getelementptr inbounds nuw i8, ptr %i.bbv, i64 %.reass2844 ; 6 uses
  br i1 %min.iters.check3953, label %.lr.ph2838.preheader, label %vector.memcheck3954

vector.memcheck3954:                              ; preds = %iter.check4015
  br i1 %op.rdx4055, label %.lr.ph2838.preheader, label %vector.main.loop.iter.check3988

vector.main.loop.iter.check3988:                  ; preds = %vector.memcheck3954
  br i1 %min.iters.check3989, label %vec.epilog.ph4019, label %vector.ph3990

vector.ph3990:                                    ; preds = %vector.main.loop.iter.check3988
  %i.bgq = getelementptr i8, ptr %i.bga, i64 %i.bfv
  %i.bgr = getelementptr i8, ptr %i.bgc, i64 %i.bfw
  %i.bgs = getelementptr i8, ptr %i.bge, i64 %i.bfw
  %i.bgt = getelementptr i8, ptr %i.bgg, i64 %i.bfw
  %i.bgu = getelementptr i8, ptr %i.bgi, i64 %i.bfw
  %i.bgv = getelementptr i8, ptr %i.bgk, i64 %i.bfw
  %i.bgw = getelementptr i8, ptr %i.bgm, i64 %i.bfw
  %i.bgx = getelementptr i8, ptr %i.bgo, i64 %i.bfw
  %i.bgy = getelementptr i8, ptr %i.bgp, i64 %i.bfw
  br label %vector.body3992

vector.body3992:                                  ; preds = %vector.ph3990, %vector.body3992
  %index3993 = phi i64 [ 0, %vector.ph3990 ], [ %index.next4012, %vector.body3992 ] ; 3 uses
  %i.bgz = shl i64 %index3993, 4
  %next.gep3994 = getelementptr i8, ptr %i.bga, i64 %i.bgz
  %i.bha = shl i64 %index3993, 1                  ; 8 uses
  %next.gep3995 = getelementptr i8, ptr %i.bgc, i64 %i.bha
  %next.gep3996 = getelementptr i8, ptr %i.bge, i64 %i.bha
  %next.gep3997 = getelementptr i8, ptr %i.bgg, i64 %i.bha
  %next.gep3998 = getelementptr i8, ptr %i.bgi, i64 %i.bha
  %next.gep3999 = getelementptr i8, ptr %i.bgk, i64 %i.bha
  %next.gep4000 = getelementptr i8, ptr %i.bgm, i64 %i.bha
  %next.gep4001 = getelementptr i8, ptr %i.bgo, i64 %i.bha
  %next.gep4002 = getelementptr i8, ptr %i.bgp, i64 %i.bha
  %wide.load4003 = load <32 x i16>, ptr %next.gep4002, align 2, !tbaa !457, !alias.scope !494
  %wide.load4004 = load <32 x i16>, ptr %next.gep4001, align 2, !tbaa !457, !alias.scope !495
  %wide.load4005 = load <32 x i16>, ptr %next.gep4000, align 2, !tbaa !457, !alias.scope !496
  %wide.load4006 = load <32 x i16>, ptr %next.gep3999, align 2, !tbaa !457, !alias.scope !497
  %wide.load4007 = load <32 x i16>, ptr %next.gep3998, align 2, !tbaa !457, !alias.scope !498
  %wide.load4008 = load <32 x i16>, ptr %next.gep3997, align 2, !tbaa !457, !alias.scope !499
  %wide.load4009 = load <32 x i16>, ptr %next.gep3996, align 2, !tbaa !457, !alias.scope !500
  %wide.load4010 = load <32 x i16>, ptr %next.gep3995, align 2, !tbaa !457, !alias.scope !501
  %i.bhb = shufflevector <32 x i16> %wide.load4003, <32 x i16> %wide.load4004, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.bhc = shufflevector <32 x i16> %wide.load4005, <32 x i16> %wide.load4006, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.bhd = shufflevector <32 x i16> %wide.load4007, <32 x i16> %wide.load4008, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.bhe = shufflevector <32 x i16> %wide.load4009, <32 x i16> %wide.load4010, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.bhf = shufflevector <64 x i16> %i.bhb, <64 x i16> %i.bhc, <128 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126, i32 127>
  %i.bhg = shufflevector <64 x i16> %i.bhd, <64 x i16> %i.bhe, <128 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126, i32 127>
  %interleaved.vec4011 = shufflevector <128 x i16> %i.bhf, <128 x i16> %i.bhg, <256 x i32> <i32 0, i32 32, i32 64, i32 96, i32 128, i32 160, i32 192, i32 224, i32 1, i32 33, i32 65, i32 97, i32 129, i32 161, i32 193, i32 225, i32 2, i32 34, i32 66, i32 98, i32 130, i32 162, i32 194, i32 226, i32 3, i32 35, i32 67, i32 99, i32 131, i32 163, i32 195, i32 227, i32 4, i32 36, i32 68, i32 100, i32 132, i32 164, i32 196, i32 228, i32 5, i32 37, i32 69, i32 101, i32 133, i32 165, i32 197, i32 229, i32 6, i32 38, i32 70, i32 102, i32 134, i32 166, i32 198, i32 230, i32 7, i32 39, i32 71, i32 103, i32 135, i32 167, i32 199, i32 231, i32 8, i32 40, i32 72, i32 104, i32 136, i32 168, i32 200, i32 232, i32 9, i32 41, i32 73, i32 105, i32 137, i32 169, i32 201, i32 233, i32 10, i32 42, i32 74, i32 106, i32 138, i32 170, i32 202, i32 234, i32 11, i32 43, i32 75, i32 107, i32 139, i32 171, i32 203, i32 235, i32 12, i32 44, i32 76, i32 108, i32 140, i32 172, i32 204, i32 236, i32 13, i32 45, i32 77, i32 109, i32 141, i32 173, i32 205, i32 237, i32 14, i32 46, i32 78, i32 110, i32 142, i32 174, i32 206, i32 238, i32 15, i32 47, i32 79, i32 111, i32 143, i32 175, i32 207, i32 239, i32 16, i32 48, i32 80, i32 112, i32 144, i32 176, i32 208, i32 240, i32 17, i32 49, i32 81, i32 113, i32 145, i32 177, i32 209, i32 241, i32 18, i32 50, i32 82, i32 114, i32 146, i32 178, i32 210, i32 242, i32 19, i32 51, i32 83, i32 115, i32 147, i32 179, i32 211, i32 243, i32 20, i32 52, i32 84, i32 116, i32 148, i32 180, i32 212, i32 244, i32 21, i32 53, i32 85, i32 117, i32 149, i32 181, i32 213, i32 245, i32 22, i32 54, i32 86, i32 118, i32 150, i32 182, i32 214, i32 246, i32 23, i32 55, i32 87, i32 119, i32 151, i32 183, i32 215, i32 247, i32 24, i32 56, i32 88, i32 120, i32 152, i32 184, i32 216, i32 248, i32 25, i32 57, i32 89, i32 121, i32 153, i32 185, i32 217, i32 249, i32 26, i32 58, i32 90, i32 122, i32 154, i32 186, i32 218, i32 250, i32 27, i32 59, i32 91, i32 123, i32 155, i32 187, i32 219, i32 251, i32 28, i32 60, i32 92, i32 124, i32 156, i32 188, i32 220, i32 252, i32 29, i32 61, i32 93, i32 125, i32 157, i32 189, i32 221, i32 253, i32 30, i32 62, i32 94, i32 126, i32 158, i32 190, i32 222, i32 254, i32 31, i32 63, i32 95, i32 127, i32 159, i32 191, i32 223, i32 255>
  store <256 x i16> %interleaved.vec4011, ptr %next.gep3994, align 2, !tbaa !457, !alias.scope !502, !noalias !503
  %index.next4012 = add nuw i64 %index3993, 32    ; 2 uses
  %i.bhh = icmp eq i64 %index.next4012, %n.vec3991
  br i1 %i.bhh, label %middle.block4013, label %vector.body3992, !llvm.loop !432

middle.block4013:                                 ; preds = %vector.body3992
  br i1 %cmp.n4014, label %._crit_edge2839, label %vec.epilog.iter.check4016

vec.epilog.iter.check4016:                        ; preds = %middle.block4013
  br i1 %min.epilog.iters.check4018, label %.lr.ph2838.preheader, label %vec.epilog.ph4019, !prof !472

vec.epilog.ph4019:                                ; preds = %vector.main.loop.iter.check3988, %vec.epilog.iter.check4016
  %vec.epilog.resume.val4020 = phi i64 [ %n.vec3991, %vec.epilog.iter.check4016 ], [ 0, %vector.main.loop.iter.check3988 ]
  %i.bhi = getelementptr i8, ptr %i.bga, i64 %i.bfy
  %i.bhj = getelementptr i8, ptr %i.bgc, i64 %i.bfz
  %i.bhk = getelementptr i8, ptr %i.bge, i64 %i.bfz
  %i.bhl = getelementptr i8, ptr %i.bgg, i64 %i.bfz
  %i.bhm = getelementptr i8, ptr %i.bgi, i64 %i.bfz
  %i.bhn = getelementptr i8, ptr %i.bgk, i64 %i.bfz
  %i.bho = getelementptr i8, ptr %i.bgm, i64 %i.bfz
  %i.bhp = getelementptr i8, ptr %i.bgo, i64 %i.bfz
  %i.bhq = getelementptr i8, ptr %i.bgp, i64 %i.bfz
  br label %vec.epilog.vector.body4022

vec.epilog.vector.body4022:                       ; preds = %vec.epilog.vector.body4022, %vec.epilog.ph4019
  %index4023 = phi i64 [ %vec.epilog.resume.val4020, %vec.epilog.ph4019 ], [ %index.next4042, %vec.epilog.vector.body4022 ] ; 3 uses
  %i.bhr = shl i64 %index4023, 4
  %next.gep4024 = getelementptr i8, ptr %i.bga, i64 %i.bhr
  %i.bhs = shl i64 %index4023, 1                  ; 8 uses
  %next.gep4025 = getelementptr i8, ptr %i.bgc, i64 %i.bhs
  %next.gep4026 = getelementptr i8, ptr %i.bge, i64 %i.bhs
  %next.gep4027 = getelementptr i8, ptr %i.bgg, i64 %i.bhs
  %next.gep4028 = getelementptr i8, ptr %i.bgi, i64 %i.bhs
  %next.gep4029 = getelementptr i8, ptr %i.bgk, i64 %i.bhs
  %next.gep4030 = getelementptr i8, ptr %i.bgm, i64 %i.bhs
  %next.gep4031 = getelementptr i8, ptr %i.bgo, i64 %i.bhs
  %next.gep4032 = getelementptr i8, ptr %i.bgp, i64 %i.bhs
  %wide.load4033 = load <4 x i16>, ptr %next.gep4032, align 2, !tbaa !457, !alias.scope !494
  %wide.load4034 = load <4 x i16>, ptr %next.gep4031, align 2, !tbaa !457, !alias.scope !495
  %wide.load4035 = load <4 x i16>, ptr %next.gep4030, align 2, !tbaa !457, !alias.scope !496
  %wide.load4036 = load <4 x i16>, ptr %next.gep4029, align 2, !tbaa !457, !alias.scope !497
  %wide.load4037 = load <4 x i16>, ptr %next.gep4028, align 2, !tbaa !457, !alias.scope !498
  %wide.load4038 = load <4 x i16>, ptr %next.gep4027, align 2, !tbaa !457, !alias.scope !499
  %wide.load4039 = load <4 x i16>, ptr %next.gep4026, align 2, !tbaa !457, !alias.scope !500
  %wide.load4040 = load <4 x i16>, ptr %next.gep4025, align 2, !tbaa !457, !alias.scope !501
  %i.bht = shufflevector <4 x i16> %wide.load4033, <4 x i16> %wide.load4034, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bhu = shufflevector <4 x i16> %wide.load4035, <4 x i16> %wide.load4036, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bhv = shufflevector <4 x i16> %wide.load4037, <4 x i16> %wide.load4038, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bhw = shufflevector <4 x i16> %wide.load4039, <4 x i16> %wide.load4040, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bhx = shufflevector <8 x i16> %i.bht, <8 x i16> %i.bhu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bhy = shufflevector <8 x i16> %i.bhv, <8 x i16> %i.bhw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec4041 = shufflevector <16 x i16> %i.bhx, <16 x i16> %i.bhy, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x i16> %interleaved.vec4041, ptr %next.gep4024, align 2, !tbaa !457, !alias.scope !502, !noalias !503
  %index.next4042 = add nuw i64 %index4023, 4     ; 2 uses
  %i.bhz = icmp eq i64 %index.next4042, %n.vec4021
  br i1 %i.bhz, label %vec.epilog.middle.block4043, label %vec.epilog.vector.body4022, !llvm.loop !433

vec.epilog.middle.block4043:                      ; preds = %vec.epilog.vector.body4022
  br i1 %cmp.n4044, label %._crit_edge2839, label %.lr.ph2838.preheader

.lr.ph2838.preheader:                             ; preds = %iter.check4015, %vector.memcheck3954, %vec.epilog.iter.check4016, %vec.epilog.middle.block4043
  %.09982837.ph = phi i32 [ 0, %iter.check4015 ], [ 0, %vector.memcheck3954 ], [ %i.bfu, %vec.epilog.iter.check4016 ], [ %i.bfx, %vec.epilog.middle.block4043 ]
  %.09992836.ph = phi ptr [ %i.bga, %iter.check4015 ], [ %i.bga, %vector.memcheck3954 ], [ %i.bgq, %vec.epilog.iter.check4016 ], [ %i.bhi, %vec.epilog.middle.block4043 ]
  %.010002835.ph = phi ptr [ %i.bgc, %iter.check4015 ], [ %i.bgc, %vector.memcheck3954 ], [ %i.bgr, %vec.epilog.iter.check4016 ], [ %i.bhj, %vec.epilog.middle.block4043 ]
  %.010012834.ph = phi ptr [ %i.bge, %iter.check4015 ], [ %i.bge, %vector.memcheck3954 ], [ %i.bgs, %vec.epilog.iter.check4016 ], [ %i.bhk, %vec.epilog.middle.block4043 ]
  %.010022833.ph = phi ptr [ %i.bgg, %iter.check4015 ], [ %i.bgg, %vector.memcheck3954 ], [ %i.bgt, %vec.epilog.iter.check4016 ], [ %i.bhl, %vec.epilog.middle.block4043 ]
  %.010032832.ph = phi ptr [ %i.bgi, %iter.check4015 ], [ %i.bgi, %vector.memcheck3954 ], [ %i.bgu, %vec.epilog.iter.check4016 ], [ %i.bhm, %vec.epilog.middle.block4043 ]
  %.010042831.ph = phi ptr [ %i.bgk, %iter.check4015 ], [ %i.bgk, %vector.memcheck3954 ], [ %i.bgv, %vec.epilog.iter.check4016 ], [ %i.bhn, %vec.epilog.middle.block4043 ]
  %.010052830.ph = phi ptr [ %i.bgm, %iter.check4015 ], [ %i.bgm, %vector.memcheck3954 ], [ %i.bgw, %vec.epilog.iter.check4016 ], [ %i.bho, %vec.epilog.middle.block4043 ]
  %.010062829.ph = phi ptr [ %i.bgo, %iter.check4015 ], [ %i.bgo, %vector.memcheck3954 ], [ %i.bgx, %vec.epilog.iter.check4016 ], [ %i.bhp, %vec.epilog.middle.block4043 ]
  %.010072828.ph = phi ptr [ %i.bgp, %iter.check4015 ], [ %i.bgp, %vector.memcheck3954 ], [ %i.bgy, %vec.epilog.iter.check4016 ], [ %i.bhq, %vec.epilog.middle.block4043 ]
  br label %.lr.ph2838

._crit_edge2839:                                  ; preds = %.lr.ph2838, %middle.block4013, %vec.epilog.middle.block4043, %.noexc1736
  %indvars.iv.next3006 = add nsw i64 %indvars.iv3005, 8 ; 2 uses
  %indvars.iv.next3004 = add nuw nsw i64 %indvars.iv3003, 1 ; 2 uses
  %exitcond3011.not = icmp eq i64 %indvars.iv.next3004, %wide.trip.count3010
  br i1 %exitcond3011.not, label %.thread2557.loopexit, label %.noexc1736, !llvm.loop !434

.lr.ph2838:                                       ; preds = %.lr.ph2838.preheader, %.lr.ph2838
  %.09982837 = phi i32 [ %i.biy, %.lr.ph2838 ], [ %.09982837.ph, %.lr.ph2838.preheader ]
  %.09992836 = phi ptr [ %i.bix, %.lr.ph2838 ], [ %.09992836.ph, %.lr.ph2838.preheader ] ; 9 uses
  %.010002835 = phi ptr [ %i.biu, %.lr.ph2838 ], [ %.010002835.ph, %.lr.ph2838.preheader ] ; 2 uses
  %.010012834 = phi ptr [ %i.bir, %.lr.ph2838 ], [ %.010012834.ph, %.lr.ph2838.preheader ] ; 2 uses
  %.010022833 = phi ptr [ %i.bio, %.lr.ph2838 ], [ %.010022833.ph, %.lr.ph2838.preheader ] ; 2 uses
  %.010032832 = phi ptr [ %i.bil, %.lr.ph2838 ], [ %.010032832.ph, %.lr.ph2838.preheader ] ; 2 uses
  %.010042831 = phi ptr [ %i.bii, %.lr.ph2838 ], [ %.010042831.ph, %.lr.ph2838.preheader ] ; 2 uses
  %.010052830 = phi ptr [ %i.bif, %.lr.ph2838 ], [ %.010052830.ph, %.lr.ph2838.preheader ] ; 2 uses
  %.010062829 = phi ptr [ %i.bic, %.lr.ph2838 ], [ %.010062829.ph, %.lr.ph2838.preheader ] ; 2 uses
  %.010072828 = phi ptr [ %i.bia, %.lr.ph2838 ], [ %.010072828.ph, %.lr.ph2838.preheader ] ; 2 uses
  %i.bia = getelementptr inbounds nuw i8, ptr %.010072828, i64 2
  %i.bib = load i16, ptr %.010072828, align 2, !tbaa !457
  store i16 %i.bib, ptr %.09992836, align 2, !tbaa !457
  %i.bic = getelementptr inbounds nuw i8, ptr %.010062829, i64 2
  %i.bid = load i16, ptr %.010062829, align 2, !tbaa !457
  %i.bie = getelementptr inbounds nuw i8, ptr %.09992836, i64 2
  store i16 %i.bid, ptr %i.bie, align 2, !tbaa !457
  %i.bif = getelementptr inbounds nuw i8, ptr %.010052830, i64 2
  %i.big = load i16, ptr %.010052830, align 2, !tbaa !457
  %i.bih = getelementptr inbounds nuw i8, ptr %.09992836, i64 4
  store i16 %i.big, ptr %i.bih, align 2, !tbaa !457
  %i.bii = getelementptr inbounds nuw i8, ptr %.010042831, i64 2
  %i.bij = load i16, ptr %.010042831, align 2, !tbaa !457
  %i.bik = getelementptr inbounds nuw i8, ptr %.09992836, i64 6
  store i16 %i.bij, ptr %i.bik, align 2, !tbaa !457
  %i.bil = getelementptr inbounds nuw i8, ptr %.010032832, i64 2
  %i.bim = load i16, ptr %.010032832, align 2, !tbaa !457
  %i.bin = getelementptr inbounds nuw i8, ptr %.09992836, i64 8
  store i16 %i.bim, ptr %i.bin, align 2, !tbaa !457
  %i.bio = getelementptr inbounds nuw i8, ptr %.010022833, i64 2
  %i.bip = load i16, ptr %.010022833, align 2, !tbaa !457
  %i.biq = getelementptr inbounds nuw i8, ptr %.09992836, i64 10
  store i16 %i.bip, ptr %i.biq, align 2, !tbaa !457
  %i.bir = getelementptr inbounds nuw i8, ptr %.010012834, i64 2
  %i.bis = load i16, ptr %.010012834, align 2, !tbaa !457
  %i.bit = getelementptr inbounds nuw i8, ptr %.09992836, i64 12
  store i16 %i.bis, ptr %i.bit, align 2, !tbaa !457
  %i.biu = getelementptr inbounds nuw i8, ptr %.010002835, i64 2
  %i.biv = load i16, ptr %.010002835, align 2, !tbaa !457
  %i.biw = getelementptr inbounds nuw i8, ptr %.09992836, i64 14
  store i16 %i.biv, ptr %i.biw, align 2, !tbaa !457
  %i.bix = getelementptr inbounds nuw i8, ptr %.09992836, i64 16
  %i.biy = add nuw nsw i32 %.09982837, 1          ; 2 uses
  %exitcond3002.not = icmp eq i32 %i.biy, %i.bbr
  br i1 %exitcond3002.not, label %._crit_edge2839, label %.lr.ph2838, !llvm.loop !435

.thread2557.loopexit:                             ; preds = %._crit_edge2839
  %i.biz = trunc nsw i64 %indvars.iv.next3006 to i32
  %.pre3024 = load i32, ptr %i.ani, align 8, !tbaa !27
  br label %.thread2557

.thread2557:                                      ; preds = %.thread2557.loopexit, %.thread2552
  %i.bja = phi i32 [ %i.bbi, %.thread2552 ], [ %.pre3024, %.thread2557.loopexit ] ; 2 uses
  %.1010562559 = phi i32 [ %.810542554, %.thread2552 ], [ %i.biz, %.thread2557.loopexit ] ; 3 uses
  %i.bjb = icmp eq i32 %i.bja, 4
  br i1 %i.bjb, label %bb.co, label %.thread2560

bb.co:                                            ; preds = %.thread2557
  %i.bjc = getelementptr inbounds nuw i8, ptr %i.anh, i64 44
  %i.bjd = load i32, ptr %i.bjc, align 4, !tbaa !43
  %i.bje = getelementptr inbounds nuw i8, ptr %i.anh, i64 48
  %i.bjf = load i32, ptr %i.bje, align 8, !tbaa !52
  %i.bjg = mul i32 %i.bjf, %i.bjd
  %i.bjh = getelementptr inbounds nuw i8, ptr %i.anh, i64 52
  %i.bji = load i32, ptr %i.bjh, align 4, !tbaa !59
  %i.bjj = mul i32 %i.bjg, %i.bji                 ; 8 uses
  %i.bjk = getelementptr inbounds nuw i8, ptr %i.anh, i64 56
  %i.bjl = load i32, ptr %i.bjk, align 8, !tbaa !50 ; 2 uses
  %i.bjm = icmp sgt i32 %i.bjl, 0
  br i1 %i.bjm, label %.noexc1718.lr.ph, label %.thread2560

.noexc1718.lr.ph:                                 ; preds = %bb.co
  %i.bjn = load ptr, ptr %5, align 16, !tbaa !19, !noalias !504 ; 12 uses
  %i.bjo = load i64, ptr %i.amh, align 16, !tbaa !20, !noalias !504 ; 7 uses
  %i.bjp = load i64, ptr %i.alw, align 16, !tbaa !25, !noalias !504 ; 7 uses
  %factor.op.mul2872 = mul i64 %i.bjo, %i.bjp     ; 4 uses
  %i.bjq = load ptr, ptr %i.anh, align 8, !tbaa !19, !noalias !505 ; 3 uses
  %i.bjr = getelementptr inbounds nuw i8, ptr %i.anh, i64 64
  %i.bjs = load i64, ptr %i.bjr, align 8, !tbaa !20, !noalias !505 ; 3 uses
  %i.bjt = getelementptr inbounds nuw i8, ptr %i.anh, i64 16
  %i.bju = load i64, ptr %i.bjt, align 8, !tbaa !25, !noalias !505 ; 3 uses
  %factor.op.mul2880 = mul i64 %i.bjs, %i.bju
  %i.bjv = icmp sgt i32 %i.bjj, 0
  %i.bjw = sext i32 %.1010562559 to i64           ; 9 uses
  %wide.trip.count3020 = zext nneg i32 %i.bjl to i64 ; 3 uses
  %14 = shl i64 %i.bjp, 2
  %15 = mul i64 %14, %i.bjo
  %16 = mul i64 %i.bju, %i.bjs
  %scevgep3787 = getelementptr i8, ptr %i.bjn, i64 2
  %i.bjx = mul i64 %i.bjp, %i.bjo
  %i.bjy = shl nuw nsw i64 %wide.trip.count3020, 2 ; 4 uses
  %i.bjz = add nsw i64 %i.bjy, -4
  %i.bka = add nsw i64 %i.bjz, %i.bjw
  %i.bkb = mul i64 %i.bjx, %i.bka
  %i.bkc = add i32 %i.bjj, -1
  %i.bkd = zext i32 %i.bkc to i64                 ; 2 uses
  %i.bke = shl nuw nsw i64 %i.bkd, 1              ; 4 uses
  %i.bkf = getelementptr i8, ptr %scevgep3787, i64 %i.bkb
  %scevgep3788 = getelementptr i8, ptr %i.bkf, i64 %i.bke
  %i.bkg = mul i64 %i.bjp, %i.bjo                 ; 2 uses
  %i.bkh = mul i64 %i.bkg, %i.bjw
  %scevgep3789 = getelementptr i8, ptr %i.bjn, i64 %i.bkh
  %scevgep3790 = getelementptr i8, ptr %i.bjn, i64 2
  %i.bki = add nsw i64 %i.bjy, -3
  %i.bkj = add nsw i64 %i.bki, %i.bjw
  %i.bkk = mul i64 %i.bkg, %i.bkj
  %i.bkl = getelementptr i8, ptr %scevgep3790, i64 %i.bkk
  %scevgep3791 = getelementptr i8, ptr %i.bkl, i64 %i.bke
  %i.bkm = mul i64 %i.bjp, %i.bjo                 ; 2 uses
  %i.bkn = add nsw i64 %i.bjw, 1
  %i.bko = mul i64 %i.bkm, %i.bkn
  %scevgep3792 = getelementptr i8, ptr %i.bjn, i64 %i.bko
  %scevgep3793 = getelementptr i8, ptr %i.bjn, i64 2
  %i.bkp = add nsw i64 %i.bjy, -2
  %i.bkq = add nsw i64 %i.bkp, %i.bjw
  %i.bkr = mul i64 %i.bkm, %i.bkq
  %i.bks = getelementptr i8, ptr %scevgep3793, i64 %i.bkr
  %scevgep3794 = getelementptr i8, ptr %i.bks, i64 %i.bke
  %i.bkt = mul i64 %i.bjp, %i.bjo                 ; 2 uses
  %i.bku = add nsw i64 %i.bjw, 2
  %i.bkv = mul i64 %i.bkt, %i.bku
  %scevgep3795 = getelementptr i8, ptr %i.bjn, i64 %i.bkv
  %scevgep3796 = getelementptr i8, ptr %i.bjn, i64 2
  %i.bkw = add nsw i64 %i.bjy, -1
  %i.bkx = add nsw i64 %i.bkw, %i.bjw
  %i.bky = mul i64 %i.bkt, %i.bkx
  %i.bkz = getelementptr i8, ptr %scevgep3796, i64 %i.bky
  %scevgep3797 = getelementptr i8, ptr %i.bkz, i64 %i.bke
  %17 = mul i64 %i.bjp, %i.bjo
  %i.bla = add nsw i64 %i.bjw, 3
  %i.blb = mul i64 %17, %i.bla
  %scevgep3798 = getelementptr i8, ptr %i.bjn, i64 %i.blb
  %scevgep3799 = getelementptr i8, ptr %i.bjq, i64 8
  %i.blc = mul i64 %i.bju, %i.bjs
  %i.bld = add nsw i64 %wide.trip.count3020, -1
  %i.ble = mul i64 %i.blc, %i.bld
  %i.blf = shl nuw nsw i64 %i.bkd, 3
  %i.blg = getelementptr i8, ptr %scevgep3799, i64 %i.ble
  %scevgep3800 = getelementptr i8, ptr %i.blg, i64 %i.blf
  %i.blh = zext i32 %i.bjj to i64                 ; 5 uses
  %i.bli = insertelement <4 x ptr> poison, ptr %i.bjq, i64 0
  %i.blj = shufflevector <4 x ptr> %i.bli, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.blk = insertelement <4 x ptr> poison, ptr %scevgep3797, i64 0
  %i.bll = insertelement <4 x ptr> %i.blk, ptr %scevgep3794, i64 1
  %i.blm = insertelement <4 x ptr> %i.bll, ptr %scevgep3791, i64 2
  %i.bln = insertelement <4 x ptr> %i.blm, ptr %scevgep3788, i64 3
  %i.blo = insertelement <4 x ptr> poison, ptr %scevgep3798, i64 0
  %i.blp = insertelement <4 x ptr> %i.blo, ptr %scevgep3795, i64 1
  %i.blq = insertelement <4 x ptr> %i.blp, ptr %scevgep3792, i64 2
  %i.blr = insertelement <4 x ptr> %i.blq, ptr %scevgep3789, i64 3
  %i.bls = insertelement <4 x ptr> poison, ptr %scevgep3800, i64 0
  %i.blt = shufflevector <4 x ptr> %i.bls, <4 x ptr> poison, <4 x i32> zeroinitializer
  %min.iters.check3801 = icmp ult i32 %i.bjj, 8
  %i.blu = icmp ult <4 x ptr> %i.blj, %i.bln
  %i.blv = icmp ult <4 x ptr> %i.blr, %i.blt
  %i.blw = or i64 %15, %16
  %i.blx = icmp slt i64 %i.blw, 0
  %i.bly = and <4 x i1> %i.blu, %i.blv
  %i.blz = bitcast <4 x i1> %i.bly to i4
  %i.bma = icmp ne i4 %i.blz, 0
  %op.rdx = or i1 %i.bma, %i.blx
  %min.iters.check3821 = icmp ult i32 %i.bjj, 32
  %i.bmb = and i64 %i.blh, 24
  %n.vec3823 = and i64 %i.blh, 2147483616         ; 6 uses
  %i.bmc = trunc nuw nsw i64 %n.vec3823 to i32
  %i.bmd = shl nuw nsw i64 %n.vec3823, 3
  %i.bme = shl nuw nsw i64 %n.vec3823, 1          ; 4 uses
  %cmp.n3838 = icmp eq i64 %n.vec3823, %i.blh
  %min.epilog.iters.check3842 = icmp eq i64 %i.bmb, 0
  %n.vec3845 = and i64 %i.blh, 2147483640         ; 5 uses
  %i.bmf = trunc nuw nsw i64 %n.vec3845 to i32
  %i.bmg = shl nuw nsw i64 %n.vec3845, 3
  %i.bmh = shl nuw nsw i64 %n.vec3845, 1          ; 4 uses
  %cmp.n3860 = icmp eq i64 %n.vec3845, %i.blh
  br label %.noexc1718

.noexc1718:                                       ; preds = %.noexc1718.lr.ph, %._crit_edge2868
  %indvars.iv3015 = phi i64 [ %i.bjw, %.noexc1718.lr.ph ], [ %indvars.iv.next3016, %._crit_edge2868 ] ; 5 uses
  %indvars.iv3013 = phi i64 [ 0, %.noexc1718.lr.ph ], [ %indvars.iv.next3014, %._crit_edge2868 ] ; 2 uses
  br i1 %i.bjv, label %iter.check3839, label %._crit_edge2868

iter.check3839:                                   ; preds = %.noexc1718
  %.reass2881 = mul i64 %factor.op.mul2880, %indvars.iv3013
  %i.bmi = getelementptr inbounds nuw i8, ptr %i.bjq, i64 %.reass2881 ; 6 uses
  %i.bmj = add nsw i64 %indvars.iv3015, 3
  %.reass2879 = mul i64 %factor.op.mul2872, %i.bmj
  %i.bmk = getelementptr inbounds nuw i8, ptr %i.bjn, i64 %.reass2879 ; 6 uses
  %i.bml = add nsw i64 %indvars.iv3015, 2
  %.reass2877 = mul i64 %factor.op.mul2872, %i.bml
  %i.bmm = getelementptr inbounds nuw i8, ptr %i.bjn, i64 %.reass2877 ; 6 uses
  %i.bmn = add nsw i64 %indvars.iv3015, 1
  %.reass2875 = mul i64 %factor.op.mul2872, %i.bmn
  %i.bmo = getelementptr inbounds nuw i8, ptr %i.bjn, i64 %.reass2875 ; 6 uses
  %.reass2873 = mul i64 %factor.op.mul2872, %indvars.iv3015
  %i.bmp = getelementptr inbounds nuw i8, ptr %i.bjn, i64 %.reass2873 ; 6 uses
  br i1 %min.iters.check3801, label %.lr.ph2867.preheader, label %vector.memcheck3802

vector.memcheck3802:                              ; preds = %iter.check3839
  br i1 %op.rdx, label %.lr.ph2867.preheader, label %vector.main.loop.iter.check3820

vector.main.loop.iter.check3820:                  ; preds = %vector.memcheck3802
  br i1 %min.iters.check3821, label %vec.epilog.ph3843, label %vector.ph3822

vector.ph3822:                                    ; preds = %vector.main.loop.iter.check3820
  %i.bmq = getelementptr i8, ptr %i.bmi, i64 %i.bmd
  %i.bmr = getelementptr i8, ptr %i.bmk, i64 %i.bme
  %i.bms = getelementptr i8, ptr %i.bmm, i64 %i.bme
  %i.bmt = getelementptr i8, ptr %i.bmo, i64 %i.bme
  %i.bmu = getelementptr i8, ptr %i.bmp, i64 %i.bme
  br label %vector.body3824

vector.body3824:                                  ; preds = %vector.ph3822, %vector.body3824
  %index3825 = phi i64 [ 0, %vector.ph3822 ], [ %index.next3836, %vector.body3824 ] ; 3 uses
  %i.bmv = shl i64 %index3825, 3
  %next.gep3826 = getelementptr i8, ptr %i.bmi, i64 %i.bmv
  %i.bmw = shl i64 %index3825, 1                  ; 4 uses
  %next.gep3827 = getelementptr i8, ptr %i.bmk, i64 %i.bmw
  %next.gep3828 = getelementptr i8, ptr %i.bmm, i64 %i.bmw
  %next.gep3829 = getelementptr i8, ptr %i.bmo, i64 %i.bmw
  %next.gep3830 = getelementptr i8, ptr %i.bmp, i64 %i.bmw
  %wide.load3831 = load <32 x i16>, ptr %next.gep3830, align 2, !tbaa !457, !alias.scope !506
  %wide.load3832 = load <32 x i16>, ptr %next.gep3829, align 2, !tbaa !457, !alias.scope !507
  %wide.load3833 = load <32 x i16>, ptr %next.gep3828, align 2, !tbaa !457, !alias.scope !508
  %wide.load3834 = load <32 x i16>, ptr %next.gep3827, align 2, !tbaa !457, !alias.scope !509
  %i.bmx = shufflevector <32 x i16> %wide.load3831, <32 x i16> %wide.load3832, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.bmy = shufflevector <32 x i16> %wide.load3833, <32 x i16> %wide.load3834, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %interleaved.vec3835 = shufflevector <64 x i16> %i.bmx, <64 x i16> %i.bmy, <128 x i32> <i32 0, i32 32, i32 64, i32 96, i32 1, i32 33, i32 65, i32 97, i32 2, i32 34, i32 66, i32 98, i32 3, i32 35, i32 67, i32 99, i32 4, i32 36, i32 68, i32 100, i32 5, i32 37, i32 69, i32 101, i32 6, i32 38, i32 70, i32 102, i32 7, i32 39, i32 71, i32 103, i32 8, i32 40, i32 72, i32 104, i32 9, i32 41, i32 73, i32 105, i32 10, i32 42, i32 74, i32 106, i32 11, i32 43, i32 75, i32 107, i32 12, i32 44, i32 76, i32 108, i32 13, i32 45, i32 77, i32 109, i32 14, i32 46, i32 78, i32 110, i32 15, i32 47, i32 79, i32 111, i32 16, i32 48, i32 80, i32 112, i32 17, i32 49, i32 81, i32 113, i32 18, i32 50, i32 82, i32 114, i32 19, i32 51, i32 83, i32 115, i32 20, i32 52, i32 84, i32 116, i32 21, i32 53, i32 85, i32 117, i32 22, i32 54, i32 86, i32 118, i32 23, i32 55, i32 87, i32 119, i32 24, i32 56, i32 88, i32 120, i32 25, i32 57, i32 89, i32 121, i32 26, i32 58, i32 90, i32 122, i32 27, i32 59, i32 91, i32 123, i32 28, i32 60, i32 92, i32 124, i32 29, i32 61, i32 93, i32 125, i32 30, i32 62, i32 94, i32 126, i32 31, i32 63, i32 95, i32 127>
  store <128 x i16> %interleaved.vec3835, ptr %next.gep3826, align 2, !tbaa !457, !alias.scope !510, !noalias !511
  %index.next3836 = add nuw i64 %index3825, 32    ; 2 uses
  %i.bmz = icmp eq i64 %index.next3836, %n.vec3823
  br i1 %i.bmz, label %middle.block3837, label %vector.body3824, !llvm.loop !446

middle.block3837:                                 ; preds = %vector.body3824
  br i1 %cmp.n3838, label %._crit_edge2868, label %vec.epilog.iter.check3840

vec.epilog.iter.check3840:                        ; preds = %middle.block3837
  br i1 %min.epilog.iters.check3842, label %.lr.ph2867.preheader, label %vec.epilog.ph3843, !prof !479

vec.epilog.ph3843:                                ; preds = %vector.main.loop.iter.check3820, %vec.epilog.iter.check3840
  %vec.epilog.resume.val3844 = phi i64 [ %n.vec3823, %vec.epilog.iter.check3840 ], [ 0, %vector.main.loop.iter.check3820 ]
  %i.bna = getelementptr i8, ptr %i.bmi, i64 %i.bmg
  %i.bnb = getelementptr i8, ptr %i.bmk, i64 %i.bmh
  %i.bnc = getelementptr i8, ptr %i.bmm, i64 %i.bmh
  %i.bnd = getelementptr i8, ptr %i.bmo, i64 %i.bmh
  %i.bne = getelementptr i8, ptr %i.bmp, i64 %i.bmh
  br label %vec.epilog.vector.body3846

vec.epilog.vector.body3846:                       ; preds = %vec.epilog.vector.body3846, %vec.epilog.ph3843
  %index3847 = phi i64 [ %vec.epilog.resume.val3844, %vec.epilog.ph3843 ], [ %index.next3858, %vec.epilog.vector.body3846 ] ; 3 uses
  %i.bnf = shl i64 %index3847, 3
  %next.gep3848 = getelementptr i8, ptr %i.bmi, i64 %i.bnf
  %i.bng = shl i64 %index3847, 1                  ; 4 uses
  %next.gep3849 = getelementptr i8, ptr %i.bmk, i64 %i.bng
  %next.gep3850 = getelementptr i8, ptr %i.bmm, i64 %i.bng
  %next.gep3851 = getelementptr i8, ptr %i.bmo, i64 %i.bng
  %next.gep3852 = getelementptr i8, ptr %i.bmp, i64 %i.bng
  %wide.load3853 = load <8 x i16>, ptr %next.gep3852, align 2, !tbaa !457, !alias.scope !506
  %wide.load3854 = load <8 x i16>, ptr %next.gep3851, align 2, !tbaa !457, !alias.scope !507
  %wide.load3855 = load <8 x i16>, ptr %next.gep3850, align 2, !tbaa !457, !alias.scope !508
  %wide.load3856 = load <8 x i16>, ptr %next.gep3849, align 2, !tbaa !457, !alias.scope !509
  %i.bnh = shufflevector <8 x i16> %wide.load3853, <8 x i16> %wide.load3854, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bni = shufflevector <8 x i16> %wide.load3855, <8 x i16> %wide.load3856, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec3857 = shufflevector <16 x i16> %i.bnh, <16 x i16> %i.bni, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x i16> %interleaved.vec3857, ptr %next.gep3848, align 2, !tbaa !457, !alias.scope !510, !noalias !511
  %index.next3858 = add nuw i64 %index3847, 8     ; 2 uses
  %i.bnj = icmp eq i64 %index.next3858, %n.vec3845
  br i1 %i.bnj, label %vec.epilog.middle.block3859, label %vec.epilog.vector.body3846, !llvm.loop !447

vec.epilog.middle.block3859:                      ; preds = %vec.epilog.vector.body3846
  br i1 %cmp.n3860, label %._crit_edge2868, label %.lr.ph2867.preheader

.lr.ph2867.preheader:                             ; preds = %iter.check3839, %vector.memcheck3802, %vec.epilog.iter.check3840, %vec.epilog.middle.block3859
  %.09912866.ph = phi i32 [ 0, %iter.check3839 ], [ 0, %vector.memcheck3802 ], [ %i.bmc, %vec.epilog.iter.check3840 ], [ %i.bmf, %vec.epilog.middle.block3859 ] ; 4 uses
  %.09922865.ph = phi ptr [ %i.bmi, %iter.check3839 ], [ %i.bmi, %vector.memcheck3802 ], [ %i.bmq, %vec.epilog.iter.check3840 ], [ %i.bna, %vec.epilog.middle.block3859 ] ; 6 uses
  %.09932864.ph = phi ptr [ %i.bmk, %iter.check3839 ], [ %i.bmk, %vector.memcheck3802 ], [ %i.bmr, %vec.epilog.iter.check3840 ], [ %i.bnb, %vec.epilog.middle.block3859 ] ; 3 uses
  %.09942863.ph = phi ptr [ %i.bmm, %iter.check3839 ], [ %i.bmm, %vector.memcheck3802 ], [ %i.bms, %vec.epilog.iter.check3840 ], [ %i.bnc, %vec.epilog.middle.block3859 ] ; 3 uses
  %.09952862.ph = phi ptr [ %i.bmo, %iter.check3839 ], [ %i.bmo, %vector.memcheck3802 ], [ %i.bmt, %vec.epilog.iter.check3840 ], [ %i.bnd, %vec.epilog.middle.block3859 ] ; 3 uses
  %.09962861.ph = phi ptr [ %i.bmp, %iter.check3839 ], [ %i.bmp, %vector.memcheck3802 ], [ %i.bmu, %vec.epilog.iter.check3840 ], [ %i.bne, %vec.epilog.middle.block3859 ] ; 3 uses
  %i.bnk = sub i32 %i.bjj, %.09912866.ph
  %.neg4085 = add i32 %.09912866.ph, 1
  %xtraiter4083 = and i32 %i.bnk, 1
  %lcmp.mod4084.not = icmp eq i32 %xtraiter4083, 0
  br i1 %lcmp.mod4084.not, label %.lr.ph2867.prol.loopexit, label %.lr.ph2867.prol

.lr.ph2867.prol:                                  ; preds = %.lr.ph2867.preheader
  %i.bnl = getelementptr inbounds nuw i8, ptr %.09962861.ph, i64 2
  %i.bnm = load i16, ptr %.09962861.ph, align 2, !tbaa !457
  store i16 %i.bnm, ptr %.09922865.ph, align 2, !tbaa !457
  %i.bnn = getelementptr inbounds nuw i8, ptr %.09952862.ph, i64 2
  %i.bno = load i16, ptr %.09952862.ph, align 2, !tbaa !457
  %i.bnp = getelementptr inbounds nuw i8, ptr %.09922865.ph, i64 2
  store i16 %i.bno, ptr %i.bnp, align 2, !tbaa !457
  %i.bnq = getelementptr inbounds nuw i8, ptr %.09942863.ph, i64 2
  %i.bnr = load i16, ptr %.09942863.ph, align 2, !tbaa !457
  %i.bns = getelementptr inbounds nuw i8, ptr %.09922865.ph, i64 4
  store i16 %i.bnr, ptr %i.bns, align 2, !tbaa !457
  %i.bnt = getelementptr inbounds nuw i8, ptr %.09932864.ph, i64 2
  %i.bnu = load i16, ptr %.09932864.ph, align 2, !tbaa !457
  %i.bnv = getelementptr inbounds nuw i8, ptr %.09922865.ph, i64 6
  store i16 %i.bnu, ptr %i.bnv, align 2, !tbaa !457
  %i.bnw = getelementptr inbounds nuw i8, ptr %.09922865.ph, i64 8
  %i.bnx = add nuw nsw i32 %.09912866.ph, 1
  br label %.lr.ph2867.prol.loopexit

.lr.ph2867.prol.loopexit:                         ; preds = %.lr.ph2867.prol, %.lr.ph2867.preheader
  %.09912866.unr = phi i32 [ %.09912866.ph, %.lr.ph2867.preheader ], [ %i.bnx, %.lr.ph2867.prol ]
  %.09922865.unr = phi ptr [ %.09922865.ph, %.lr.ph2867.preheader ], [ %i.bnw, %.lr.ph2867.prol ]
  %.09932864.unr = phi ptr [ %.09932864.ph, %.lr.ph2867.preheader ], [ %i.bnt, %.lr.ph2867.prol ]
  %.09942863.unr = phi ptr [ %.09942863.ph, %.lr.ph2867.preheader ], [ %i.bnq, %.lr.ph2867.prol ]
  %.09952862.unr = phi ptr [ %.09952862.ph, %.lr.ph2867.preheader ], [ %i.bnn, %.lr.ph2867.prol ]
  %.09962861.unr = phi ptr [ %.09962861.ph, %.lr.ph2867.preheader ], [ %i.bnl, %.lr.ph2867.prol ]
  %i.bny = icmp eq i32 %i.bjj, %.neg4085
  br i1 %i.bny, label %._crit_edge2868, label %.lr.ph2867

._crit_edge2868:                                  ; preds = %.lr.ph2867.prol.loopexit, %.lr.ph2867, %middle.block3837, %vec.epilog.middle.block3859, %.noexc1718
  %indvars.iv.next3016 = add nsw i64 %indvars.iv3015, 4 ; 2 uses
  %indvars.iv.next3014 = add nuw nsw i64 %indvars.iv3013, 1 ; 2 uses
  %exitcond3021.not = icmp eq i64 %indvars.iv.next3014, %wide.trip.count3020
  br i1 %exitcond3021.not, label %.thread2560.loopexit, label %.noexc1718, !llvm.loop !448

.lr.ph2867:                                       ; preds = %.lr.ph2867.prol.loopexit, %.lr.ph2867
  %.09912866 = phi i32 [ %i.box, %.lr.ph2867 ], [ %.09912866.unr, %.lr.ph2867.prol.loopexit ]
  %.09922865 = phi ptr [ %i.bow, %.lr.ph2867 ], [ %.09922865.unr, %.lr.ph2867.prol.loopexit ] ; 9 uses
  %.09932864 = phi ptr [ %i.bot, %.lr.ph2867 ], [ %.09932864.unr, %.lr.ph2867.prol.loopexit ] ; 3 uses
  %.09942863 = phi ptr [ %i.boq, %.lr.ph2867 ], [ %.09942863.unr, %.lr.ph2867.prol.loopexit ] ; 3 uses
  %.09952862 = phi ptr [ %i.bon, %.lr.ph2867 ], [ %.09952862.unr, %.lr.ph2867.prol.loopexit ] ; 3 uses
  %.09962861 = phi ptr [ %i.bol, %.lr.ph2867 ], [ %.09962861.unr, %.lr.ph2867.prol.loopexit ] ; 3 uses
  %i.bnz = getelementptr inbounds nuw i8, ptr %.09962861, i64 2
  %i.boa = load i16, ptr %.09962861, align 2, !tbaa !457
  store i16 %i.boa, ptr %.09922865, align 2, !tbaa !457
  %i.bob = getelementptr inbounds nuw i8, ptr %.09952862, i64 2
  %i.boc = load i16, ptr %.09952862, align 2, !tbaa !457
  %i.bod = getelementptr inbounds nuw i8, ptr %.09922865, i64 2
  store i16 %i.boc, ptr %i.bod, align 2, !tbaa !457
  %i.boe = getelementptr inbounds nuw i8, ptr %.09942863, i64 2
  %i.bof = load i16, ptr %.09942863, align 2, !tbaa !457
  %i.bog = getelementptr inbounds nuw i8, ptr %.09922865, i64 4
  store i16 %i.bof, ptr %i.bog, align 2, !tbaa !457
  %i.boh = getelementptr inbounds nuw i8, ptr %.09932864, i64 2
  %i.boi = load i16, ptr %.09932864, align 2, !tbaa !457
  %i.boj = getelementptr inbounds nuw i8, ptr %.09922865, i64 6
  store i16 %i.boi, ptr %i.boj, align 2, !tbaa !457
  %i.bok = getelementptr inbounds nuw i8, ptr %.09922865, i64 8
  %i.bol = getelementptr inbounds nuw i8, ptr %.09962861, i64 4
  %i.bom = load i16, ptr %i.bnz, align 2, !tbaa !457
  store i16 %i.bom, ptr %i.bok, align 2, !tbaa !457
  %i.bon = getelementptr inbounds nuw i8, ptr %.09952862, i64 4
  %i.boo = load i16, ptr %i.bob, align 2, !tbaa !457
  %i.bop = getelementptr inbounds nuw i8, ptr %.09922865, i64 10
  store i16 %i.boo, ptr %i.bop, align 2, !tbaa !457
  %i.boq = getelementptr inbounds nuw i8, ptr %.09942863, i64 4
  %i.bor = load i16, ptr %i.boe, align 2, !tbaa !457
  %i.bos = getelementptr inbounds nuw i8, ptr %.09922865, i64 12
  store i16 %i.bor, ptr %i.bos, align 2, !tbaa !457
  %i.bot = getelementptr inbounds nuw i8, ptr %.09932864, i64 4
  %i.bou = load i16, ptr %i.boh, align 2, !tbaa !457
end_hunk_5
