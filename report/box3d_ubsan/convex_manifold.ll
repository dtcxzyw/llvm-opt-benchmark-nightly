Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/convex_manifold?download=true
inline.NumInlined: 430
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@b3CollideHullAndCapsule:bb.a
  unreachable, !nosanitize !9

bb.at:                                            ; preds = %.split.us.i
  %i.lw = getelementptr inbounds [16 x i8], ptr %.0.i.i, i64 %i.kr
  %i.lx = ptrtoint ptr %i.lw to i64, !nosanitize !9 ; 2 uses
  %i.ly = and i64 %i.lx, 3, !nosanitize !9
  %i.lz = icmp eq i64 %i.ly, 0, !nosanitize !9
  %i.ma = and i1 %.not.i, %i.lz
  br i1 %i.ma, label %b3QueryFaceDirectionHullAndCapsule.exit, label %bb.au, !prof !10, !nosanitize !9

bb.au:                                            ; preds = %bb.at
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @228, i64 %i.lx) #10, !noalias !90, !nosanitize !9
  unreachable, !nosanitize !9

b3QueryFaceDirectionHullAndCapsule.exit:          ; preds = %bb.at
  %i.mb = and i32 %.us-phi129.i, 255              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11, !noalias !90
  %i.mc = load float, ptr %i.aj, align 4, !tbaa !26 ; 3 uses
  %i.md = fcmp ogt float %.us-phi.i, %i.mc
  br i1 %i.md, label %bb.db, label %bb.av

bb.av:                                            ; preds = %b3QueryFaceDirectionHullAndCapsule.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  call void @llvm.experimental.noalias.scope.decl(metadata !91)
  %.sroa.093.0.copyload.i = load <2 x float>, ptr %3, align 4, !noalias !91 ; 4 uses
  %.sroa.294.0.copyload.i = load float, ptr %.sroa.230.0..sroa_idx.i, align 4, !noalias !91 ; 4 uses
  %foldExtExtBinop975 = fmul <2 x float> %.sroa.6326.0.copyload, %.sroa.093.0.copyload.i
  %i.me = extractelement <2 x float> %foldExtExtBinop975, i64 0
  %i.mf = fmul float %.sroa.09.0.vec.extract.i.i.i, %.sroa.294.0.copyload.i
  %i.mg = fsub float %i.me, %i.mf
  %i.mh = shufflevector <2 x float> %.sroa.093.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.mi = insertelement <2 x float> %i.mh, float %.sroa.294.0.copyload.i, i64 1 ; 2 uses
  %i.mj = fmul <2 x float> %.sroa.5325.0.copyload, %i.mi
  %i.mk = fmul <2 x float> %i.ii, %.sroa.093.0.copyload.i
  %i.ml = fsub <2 x float> %i.mj, %i.mk           ; 2 uses
  %i.mm = insertelement <2 x float> %i.mh, float %.sroa.294.0.copyload.i, i64 0
  %i.mn = fmul <2 x float> %i.il, %i.mm
  %i.mo = fmul <2 x float> %i.il, %i.mi
  %i.mp = fadd <2 x float> %i.mn, %i.ml           ; 2 uses
  %i.mq = shufflevector <2 x float> %i.ml, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.mr = insertelement <2 x float> %i.mq, float %i.mg, i64 0
  %i.ms = fadd <2 x float> %i.mo, %i.mr           ; 2 uses
  %i.mt = fmul <2 x float> %i.ii, %i.mp
  %i.mu = fmul <2 x float> %i.iu, %i.ms
  %i.mv = fsub <2 x float> %i.mt, %i.mu
  %foldExtExtBinop977 = fmul <2 x float> %.sroa.5325.0.copyload, %i.ms
  %foldExtExtBinop979 = fmul <2 x float> %.sroa.5325.0.copyload, %i.mp
  %shift981 = shufflevector <2 x float> %foldExtExtBinop979, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop982 = fsub <2 x float> %foldExtExtBinop977, %shift981
  %i.mw = extractelement <2 x float> %foldExtExtBinop982, i64 0
  %i.mx = fmul <2 x float> %i.mv, splat (float 2.000000e+00)
  %i.my = fadd <2 x float> %.sroa.093.0.copyload.i, %i.mx
  %i.mz = fmul float %i.mw, 2.000000e+00
  %i.na = fadd float %.sroa.294.0.copyload.i, %i.mz
  %i.nb = fadd <2 x float> %.sroa.0323.0.copyload, %i.my ; 2 uses
  %i.nc = fadd float %.sroa.4324.0.copyload, %i.na ; 2 uses
  %.sroa.084.0.copyload.i = load <2 x float>, ptr %i.jb, align 4, !noalias !91 ; 4 uses
  %.sroa.285.0.copyload.i = load float, ptr %.sroa.224.0..sroa_idx.i, align 4, !noalias !91 ; 4 uses
  %foldExtExtBinop984.a = fmul <2 x float> %.sroa.6326.0.copyload, %.sroa.084.0.copyload.i
  %i.nd = extractelement <2 x float> %foldExtExtBinop984.a, i64 0
  %i.ne = fmul float %.sroa.09.0.vec.extract.i.i.i, %.sroa.285.0.copyload.i
  %i.nf = fsub float %i.nd, %i.ne
  %i.ng = shufflevector <2 x float> %.sroa.084.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.nh = insertelement <2 x float> %i.ng, float %.sroa.285.0.copyload.i, i64 1 ; 2 uses
  %i.ni = fmul <2 x float> %.sroa.5325.0.copyload, %i.nh
  %i.nj = fmul <2 x float> %i.ii, %.sroa.084.0.copyload.i
  %i.nk = fsub <2 x float> %i.ni, %i.nj           ; 2 uses
  %i.nl = insertelement <2 x float> %i.ng, float %.sroa.285.0.copyload.i, i64 0
  %i.nm = fmul <2 x float> %i.il, %i.nl
  %i.nn = fmul <2 x float> %i.il, %i.nh
  %i.no = fadd <2 x float> %i.nm, %i.nk           ; 2 uses
  %i.np = shufflevector <2 x float> %i.nk, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.nq = insertelement <2 x float> %i.np, float %i.nf, i64 0
  %i.nr = fadd <2 x float> %i.nn, %i.nq           ; 2 uses
  %i.ns = fmul <2 x float> %i.ii, %i.no
  %i.nt = fmul <2 x float> %i.iu, %i.nr
  %i.nu = fsub <2 x float> %i.ns, %i.nt
  %foldExtExtBinop986 = fmul <2 x float> %.sroa.5325.0.copyload, %i.nr
  %foldExtExtBinop988 = fmul <2 x float> %.sroa.5325.0.copyload, %i.no
  %shift990 = shufflevector <2 x float> %foldExtExtBinop988, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop991.a = fsub <2 x float> %foldExtExtBinop986, %shift990
  %i.nv = extractelement <2 x float> %foldExtExtBinop991.a, i64 0
  %i.nw = fmul <2 x float> %i.nu, splat (float 2.000000e+00)
  %i.nx = fadd <2 x float> %.sroa.084.0.copyload.i, %i.nw
  %i.ny = fmul float %i.nv, 2.000000e+00
  %i.nz = fadd float %.sroa.285.0.copyload.i, %i.ny
  %i.oa = fadd <2 x float> %.sroa.0323.0.copyload, %i.nx ; 2 uses
  %i.ob = fadd float %.sroa.4324.0.copyload, %i.nz ; 2 uses
  %i.oc = fsub <2 x float> %i.oa, %i.nb           ; 6 uses
  %i.od = fsub float %i.ob, %i.nc                 ; 3 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %2, i64 116
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !51, !noalias !91
  %.fr521.i = freeze i32 %i.of                    ; 2 uses
  %i.og = icmp eq i32 %.fr521.i, 0
  br i1 %i.og, label %b3GetHullEdges.exit.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.oh = sext i32 %.fr521.i to i64               ; 2 uses
  %i.oi = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.i, i64 %i.oh), !nosanitize !9 ; 2 uses
  %i.oj = extractvalue { i64, i1 } %i.oi, 1, !nosanitize !9
  br i1 %i.oj, label %bb.ax, label %bb.ay, !prof !32, !nosanitize !9

bb.ax:                                            ; preds = %bb.aw
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @278, i64 %i.i, i64 %i.oh) #10, !noalias !91, !nosanitize !9
  unreachable, !nosanitize !9

bb.ay:                                            ; preds = %bb.aw
  %i.ok = extractvalue { i64, i1 } %i.oi, 0, !nosanitize !9
  %i.ol = inttoptr i64 %i.ok to ptr
  br label %b3GetHullEdges.exit.i

b3GetHullEdges.exit.i:                            ; preds = %bb.av, %bb.ay
  %.0.i.i258 = phi ptr [ %i.ol, %bb.ay ], [ null, %bb.av ] ; 7 uses
  %i.om = load i32, ptr %i.m, align 4, !tbaa !31, !noalias !91
  %.fr518.i = freeze i32 %i.om                    ; 2 uses
  %i.on = icmp eq i32 %.fr518.i, 0
  br i1 %i.on, label %b3GetHullPoints.exit.i, label %bb.az

bb.az:                                            ; preds = %b3GetHullEdges.exit.i
  %i.oo = sext i32 %.fr518.i to i64               ; 2 uses
  %i.op = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.i, i64 %i.oo), !nosanitize !9 ; 2 uses
  %i.oq = extractvalue { i64, i1 } %i.op, 1, !nosanitize !9
  br i1 %i.oq, label %bb.ba, label %bb.bb, !prof !32, !nosanitize !9

bb.ba:                                            ; preds = %bb.az
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @203, i64 %i.i, i64 %i.oo) #10, !noalias !91, !nosanitize !9
  unreachable, !nosanitize !9

bb.bb:                                            ; preds = %bb.az
  %i.or = extractvalue { i64, i1 } %i.op, 0, !nosanitize !9
  %i.os = inttoptr i64 %i.or to ptr
  br label %b3GetHullPoints.exit.i

b3GetHullPoints.exit.i:                           ; preds = %b3GetHullEdges.exit.i, %bb.bb
  %.0.i164.i = phi ptr [ %i.os, %bb.bb ], [ null, %b3GetHullEdges.exit.i ] ; 4 uses
  %i.ot = load i32, ptr %i.hu, align 4, !tbaa !46, !noalias !91
  %.fr563 = freeze i32 %i.ot                      ; 3 uses
  %i.ou = icmp eq i32 %.fr563, 0                  ; 2 uses
  br i1 %i.ou, label %.lr.ph.i261, label %bb.bc

bb.bc:                                            ; preds = %b3GetHullPoints.exit.i
  %i.ov = sext i32 %.fr563 to i64                 ; 2 uses
  %i.ow = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.i, i64 %i.ov), !nosanitize !9 ; 2 uses
  %i.ox = extractvalue { i64, i1 } %i.ow, 1, !nosanitize !9
  br i1 %i.ox, label %bb.bd, label %bb.be, !prof !32, !nosanitize !9

bb.bd:                                            ; preds = %bb.bc
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @204, i64 %i.i, i64 %i.ov) #10, !noalias !91, !nosanitize !9
  unreachable, !nosanitize !9

bb.be:                                            ; preds = %bb.bc
  %i.oy = extractvalue { i64, i1 } %i.ow, 0, !nosanitize !9
  %i.oz = inttoptr i64 %i.oy to ptr
  br label %.lr.ph.i261

.lr.ph.i261:                                      ; preds = %b3GetHullPoints.exit.i, %bb.be
  %.0.i165.i = phi ptr [ %i.oz, %bb.be ], [ null, %b3GetHullPoints.exit.i ] ; 4 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.pb = load i32, ptr %i.pa, align 8, !tbaa !52, !noalias !91 ; 4 uses
  %i.pc = ptrtoint ptr %.0.i.i258 to i64          ; 8 uses
  %i.pd = ptrtoint ptr %.0.i164.i to i64          ; 6 uses
  %.not519.i = icmp eq ptr %.0.i164.i, null
  %i.pe = ptrtoint ptr %.0.i165.i to i64          ; 7 uses
  %.not564 = icmp eq ptr %.0.i165.i, null
  %foldExtExtBinop993.a = fmul <2 x float> %i.oc, %i.oc
  %foldExtExtBinop995 = fmul <2 x float> %i.oc, %i.oc
  %shift997 = shufflevector <2 x float> %foldExtExtBinop995, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop998 = fadd <2 x float> %foldExtExtBinop993.a, %shift997
  %i.pf = extractelement <2 x float> %foldExtExtBinop998, i64 0
  %i.pg = fmul float %i.od, %i.od
  %i.ph = fadd float %i.pg, %i.pf
  %i.pi = fmul float %i.ph, 2.500000e-05
  br i1 %.not519.i, label %.lr.ph.split.us.i272, label %.lr.ph.split.i262, !prof !32

.lr.ph.split.us.i272:                             ; preds = %.lr.ph.i261
  %i.pj = icmp sgt i32 %i.pb, 0
  br i1 %i.pj, label %bb.bf, label %b3QueryEdgeDirectionHullAndCapsule.exit

bb.bf:                                            ; preds = %.lr.ph.split.us.i272
  %i.pk = add nsw i64 %i.pc, 4, !nosanitize !9
  %i.pl = add i64 %i.pc, -1
  %or.cond.i = icmp ult i64 %i.pl, -5
  br i1 %or.cond.i, label %bb.bg, label %.split462.us.i, !prof !92

bb.bg:                                            ; preds = %bb.bf
  %i.pm = getelementptr inbounds nuw i8, ptr %.0.i.i258, i64 6
  %i.pn = load i8, ptr %i.pm, align 1, !tbaa !54, !noalias !91 ; 2 uses
  %i.po = zext i8 %i.pn to i64
  %i.pp = mul nuw nsw i64 %i.po, 12               ; 2 uses
  %i.pq = icmp eq i8 %i.pn, 0
  %i.pr = icmp uge i64 %i.pp, %i.pd, !nosanitize !9
  %i.ps = and i1 %i.pq, %i.pr, !nosanitize !9
  br i1 %i.ps, label %.split476.i, label %.split472.us.i, !prof !10, !nosanitize !9

.lr.ph.split.i262:                                ; preds = %.lr.ph.i261
  %.not922.i = icmp eq ptr %.0.i.i258, null
  br i1 %.not922.i, label %.lr.ph.split.split.us.i, label %.lr.ph.split.split.preheader.i, !prof !32

.lr.ph.split.split.preheader.i:                   ; preds = %.lr.ph.split.i262
  %i.pt = sext i32 %i.pb to i64
  %i.pu = icmp sgt i32 %i.pb, 0
  br i1 %i.pu, label %.lr.ph542.a, label %b3QueryEdgeDirectionHullAndCapsule.exit

.lr.ph542.a:                                      ; preds = %.lr.ph.split.split.preheader.i
  br i1 %.not564, label %.lr.ph542.split.us, label %.lr.ph542.split.preheader, !prof !32

.lr.ph542.split.preheader:                        ; preds = %.lr.ph542.a
  %i.pv = shufflevector <2 x float> %i.oc, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.pw = insertelement <2 x float> poison, float %i.od, i64 0
  %i.px = shufflevector <2 x float> %i.pw, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph542.split

.lr.ph542.split.us:                               ; preds = %.lr.ph542.a
  %i.py = add i64 %i.pc, 4, !nosanitize !9        ; 2 uses
  %i.pz = icmp ne i64 %i.py, 0
  %i.qa = icmp ult ptr %.0.i.i258, inttoptr (i64 -4 to ptr)
  %i.qb = and i1 %i.qa, %i.pz, !nosanitize !9
  br i1 %i.qb, label %bb.bh, label %.split462.us.i, !prof !10, !nosanitize !9

bb.bh:                                            ; preds = %.lr.ph542.split.us
  %i.qc = getelementptr inbounds nuw i8, ptr %.0.i.i258, i64 6
  %i.qd = load i8, ptr %i.qc, align 1, !tbaa !54, !noalias !91
  %i.qe = zext i8 %i.qd to i64                    ; 2 uses
  %i.qf = mul nuw nsw i64 %i.qe, 12
  %i.qg = add i64 %i.qf, %i.pd, !nosanitize !9    ; 2 uses
  %.not523.i.us = icmp ult i64 %i.qg, %i.pd, !nosanitize !9
  br i1 %.not523.i.us, label %.split472.us.i, label %bb.bi, !prof !32, !nosanitize !9

bb.bi:                                            ; preds = %bb.bh
  %i.qh = getelementptr inbounds nuw [12 x i8], ptr %.0.i164.i, i64 %i.qe
  %i.qi = ptrtoint ptr %i.qh to i64, !nosanitize !9 ; 2 uses
  %i.qj = and i64 %i.qi, 3, !nosanitize !9
  %i.qk = icmp eq i64 %i.qj, 0, !nosanitize !9
  br i1 %i.qk, label %bb.bj, label %.split476.i, !prof !10, !nosanitize !9

bb.bj:                                            ; preds = %bb.bi
  %i.ql = getelementptr inbounds nuw i8, ptr %.0.i.i258, i64 3
  %i.qm = load i8, ptr %i.ql, align 1, !tbaa !55, !noalias !91 ; 2 uses
  %i.qn = zext i8 %i.qm to i64
  %i.qo = shl nuw nsw i64 %i.qn, 4                ; 2 uses
  %i.qp = icmp eq i8 %i.qm, 0
  %i.qq = icmp uge i64 %i.qo, %i.pe, !nosanitize !9
  %i.qr = and i1 %i.qq, %i.qp, !nosanitize !9
  br i1 %i.qr, label %.split560, label %.split557.us, !prof !10, !nosanitize !9

.lr.ph.split.split.us.i:                          ; preds = %.lr.ph.split.i262
  %i.qs = icmp sgt i32 %i.pb, 0
  br i1 %i.qs, label %.split462.us.i, label %b3QueryEdgeDirectionHullAndCapsule.exit

.lr.ph.split.split.i:                             ; preds = %bb.by
  %indvars.iv.next.i271 = add nuw nsw i64 %indvars.iv.i263536, 2 ; 2 uses
  %i.qt = icmp slt i64 %indvars.iv.next.i271, %i.pt
  br i1 %i.qt, label %.lr.ph542.split, label %b3QueryEdgeDirectionHullAndCapsule.exit

.lr.ph542.split:                                  ; preds = %.lr.ph542.split.preheader, %.lr.ph.split.split.i
  %.0113448.i541 = phi i32 [ %.3116.i, %.lr.ph.split.split.i ], [ -1, %.lr.ph542.split.preheader ] ; 3 uses
  %.0109449.i540 = phi i32 [ %.3112.i, %.lr.ph.split.split.i ], [ -1, %.lr.ph542.split.preheader ] ; 3 uses
  %.0450.i539 = phi float [ %.3.i, %.lr.ph.split.split.i ], [ f0xFF7FFFFF, %.lr.ph542.split.preheader ] ; 4 uses
  %.sroa.0101.0451.i538 = phi <2 x float> [ %.sroa.0101.3.i, %.lr.ph.split.split.i ], [ zeroinitializer, %.lr.ph542.split.preheader ] ; 3 uses
  %.sroa.5102.0452.i537 = phi float [ %.sroa.5102.3.i, %.lr.ph.split.split.i ], [ 0.000000e+00, %.lr.ph542.split.preheader ] ; 3 uses
  %indvars.iv.i263536 = phi i64 [ %indvars.iv.next.i271, %.lr.ph.split.split.i ], [ 0, %.lr.ph542.split.preheader ] ; 5 uses
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i258, i64 %indvars.iv.i263536 ; 5 uses
  %i.qv = shl nuw nsw i64 %indvars.iv.i263536, 2
  %i.qw = add i64 %i.qv, %i.pc, !nosanitize !9    ; 2 uses
  %.not522.i = icmp ult i64 %i.qw, %i.pc, !nosanitize !9
  br i1 %.not522.i, label %.split458.us.i, label %bb.bk, !prof !32, !nosanitize !9

.split458.us.i:                                   ; preds = %.lr.ph542.split
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @229, i64 %i.pc, i64 %i.qw) #10, !noalias !91, !nosanitize !9
  unreachable, !nosanitize !9

bb.bk:                                            ; preds = %.lr.ph542.split
  %i.qx = ptrtoint ptr %i.qu to i64, !nosanitize !9 ; 2 uses
  %i.qy = add i64 %i.qx, 4, !nosanitize !9        ; 2 uses
  %i.qz = icmp ne i64 %i.qy, 0
  %i.ra = icmp ult ptr %i.qu, inttoptr (i64 -4 to ptr)
  %i.rb = and i1 %i.ra, %i.qz, !nosanitize !9
  br i1 %i.rb, label %bb.bl, label %.split462.us.i, !prof !10, !nosanitize !9

.split462.us.i:                                   ; preds = %bb.bk, %.lr.ph542.split.us, %.lr.ph.split.split.us.i, %bb.bf
  %.us-phi463.i = phi i64 [ %i.pc, %bb.bf ], [ 0, %.lr.ph.split.split.us.i ], [ %i.pc, %.lr.ph542.split.us ], [ %i.qx, %bb.bk ]
  %.us-phi464.i = phi i64 [ %i.pk, %bb.bf ], [ 4, %.lr.ph.split.split.us.i ], [ %i.py, %.lr.ph542.split.us ], [ %i.qy, %bb.bk ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @230, i64 %.us-phi463.i, i64 %.us-phi464.i) #10, !noalias !91, !nosanitize !9
  unreachable, !nosanitize !9

bb.bl:                                            ; preds = %bb.bk
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qu, i64 6
  %i.rd = load i8, ptr %i.rc, align 1, !tbaa !54, !noalias !91
  %i.re = zext i8 %i.rd to i64                    ; 2 uses
  %i.rf = getelementptr inbounds nuw [12 x i8], ptr %.0.i164.i, i64 %i.re ; 3 uses
  %i.rg = mul nuw nsw i64 %i.re, 12
  %i.rh = add i64 %i.rg, %i.pd, !nosanitize !9    ; 2 uses
  %.not523.i = icmp ult i64 %i.rh, %i.pd, !nosanitize !9
  br i1 %.not523.i, label %.split472.us.i, label %bb.bm, !prof !32, !nosanitize !9

.split472.us.i:                                   ; preds = %bb.bl, %bb.bh, %bb.bg
  %.us-phi474.i = phi i64 [ %i.pp, %bb.bg ], [ %i.qg, %bb.bh ], [ %i.rh, %bb.bl ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @231, i64 %i.pd, i64 %.us-phi474.i) #10, !noalias !91, !nosanitize !9
  unreachable, !nosanitize !9

bb.bm:                                            ; preds = %bb.bl
  %i.ri = ptrtoint ptr %i.rf to i64, !nosanitize !9 ; 2 uses
  %i.rj = and i64 %i.ri, 3, !nosanitize !9
  %i.rk = icmp eq i64 %i.rj, 0, !nosanitize !9
  br i1 %i.rk, label %bb.bn, label %.split476.i, !prof !10, !nosanitize !9

.split476.i:                                      ; preds = %bb.bm, %bb.bi, %bb.bg
  %.us-phi477.i = phi i64 [ 0, %bb.bg ], [ %i.qi, %bb.bi ], [ %i.ri, %bb.bm ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @232, i64 %.us-phi477.i) #10, !noalias !91, !nosanitize !9
  unreachable, !nosanitize !9

bb.bn:                                            ; preds = %bb.bm
  %.sroa.054.0.copyload.i = load <2 x float>, ptr %i.rf, align 4, !tbaa !12, !noalias !91
  %.sroa.455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.rf, i64 8
  %.sroa.455.0.copyload.i = load float, ptr %.sroa.455.0..sroa_idx.i, align 4, !tbaa !12, !noalias !91
  %i.rl = getelementptr inbounds nuw i8, ptr %i.qu, i64 3
  %i.rm = load i8, ptr %i.rl, align 1, !tbaa !55, !noalias !91
  %i.rn = zext i8 %i.rm to i64                    ; 2 uses
  %i.ro = getelementptr inbounds nuw [16 x i8], ptr %.0.i165.i, i64 %i.rn ; 3 uses
  %i.rp = shl nuw nsw i64 %i.rn, 4
  %i.rq = add i64 %i.rp, %i.pe, !nosanitize !9    ; 2 uses
  %.not565 = icmp ult i64 %i.rq, %i.pe, !nosanitize !9
  br i1 %.not565, label %.split557.us, label %bb.bo, !prof !32, !nosanitize !9

.split557.us:                                     ; preds = %bb.bn, %bb.bj
  %.us-phi558 = phi i64 [ %i.qo, %bb.bj ], [ %i.rq, %bb.bn ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @233, i64 %i.pe, i64 %.us-phi558) #10, !noalias !91, !nosanitize !9
  unreachable, !nosanitize !9

bb.bo:                                            ; preds = %bb.bn
  %i.rr = ptrtoint ptr %i.ro to i64, !nosanitize !9 ; 2 uses
  %i.rs = and i64 %i.rr, 3, !nosanitize !9
  %i.rt = icmp eq i64 %i.rs, 0, !nosanitize !9
  br i1 %i.rt, label %bb.bp, label %.split560, !prof !10, !nosanitize !9

.split560:                                        ; preds = %bb.bo, %bb.bj
  %.us-phi561 = phi i64 [ 0, %bb.bj ], [ %i.rr, %bb.bo ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @234, i64 %.us-phi561) #10, !noalias !91, !nosanitize !9
  unreachable, !nosanitize !9

bb.bp:                                            ; preds = %bb.bo
  %.sroa.051.0.copyload.i = load <2 x float>, ptr %i.ro, align 4, !tbaa !12, !noalias !91 ; 3 uses
  %.sroa.553.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ro, i64 8
  %.sroa.553.0.copyload.i = load float, ptr %.sroa.553.0..sroa_idx.i, align 4, !tbaa !12, !noalias !91 ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.qu, i64 7
  %i.rv = load i8, ptr %i.ru, align 1, !tbaa !55, !noalias !91
  %i.rw = zext i8 %i.rv to i64                    ; 2 uses
  %i.rx = getelementptr inbounds nuw [16 x i8], ptr %.0.i165.i, i64 %i.rw ; 3 uses
  %i.ry = shl nuw nsw i64 %i.rw, 4
  %i.rz = add i64 %i.ry, %i.pe, !nosanitize !9    ; 2 uses
  %.not201.i = icmp ult i64 %i.rz, %i.pe, !nosanitize !9
  br i1 %.not201.i, label %bb.bq, label %bb.br, !prof !32, !nosanitize !9

bb.bq:                                            ; preds = %bb.bp
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @235, i64 %i.pe, i64 %i.rz) #10, !noalias !91, !nosanitize !9
  unreachable, !nosanitize !9

bb.br:                                            ; preds = %bb.bp
  %i.sa = ptrtoint ptr %i.rx to i64, !nosanitize !9 ; 2 uses
  %i.sb = and i64 %i.sa, 3, !nosanitize !9
  %i.sc = icmp eq i64 %i.sb, 0, !nosanitize !9
  br i1 %i.sc, label %bb.bt, label %bb.bs, !prof !10, !nosanitize !9

bb.bs:                                            ; preds = %bb.br
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @236, i64 %i.sa) #10, !noalias !91, !nosanitize !9
  unreachable, !nosanitize !9

bb.bt:                                            ; preds = %bb.br
  %.sroa.049.0.copyload.i = load <2 x float>, ptr %i.rx, align 4, !tbaa !12, !noalias !91 ; 3 uses
  %.sroa.5.0..sroa_idx.i267 = getelementptr inbounds nuw i8, ptr %i.rx, i64 8
  %.sroa.5.0.copyload.i268 = load float, ptr %.sroa.5.0..sroa_idx.i267, align 4, !tbaa !12, !noalias !91 ; 2 uses
  %i.sd = shufflevector <2 x float> %.sroa.049.0.copyload.i, <2 x float> %.sroa.051.0.copyload.i, <2 x i32> <i32 0, i32 3>
  %i.se = fmul <2 x float> %i.oc, %i.sd
  %i.sf = shufflevector <2 x float> %.sroa.051.0.copyload.i, <2 x float> %.sroa.049.0.copyload.i, <2 x i32> <i32 3, i32 0>
  %i.sg = fmul <2 x float> %i.pv, %i.sf
  %i.sh = fadd <2 x float> %i.se, %i.sg
  %i.si = insertelement <2 x float> poison, float %.sroa.5.0.copyload.i268, i64 0
  %i.sj = insertelement <2 x float> %i.si, float %.sroa.553.0.copyload.i, i64 1
  %i.sk = fmul <2 x float> %i.px, %i.sj
  %i.sl = fadd <2 x float> %i.sk, %i.sh           ; 4 uses
  %i.sm = extractelement <2 x float> %i.sl, i64 0 ; 2 uses
  %i.sn = extractelement <2 x float> %i.sl, i64 1 ; 3 uses
  %i.so = fmul float %i.sn, %i.sm
  %i.sp = fcmp olt float %i.so, 0.000000e+00
  br i1 %i.sp, label %bb.bu, label %bb.by

bb.bu:                                            ; preds = %bb.bt
  %i.sq = fmul <2 x float> %i.sl, %i.sl           ; 2 uses
  %i.sr = extractelement <2 x float> %i.sq, i64 0 ; 2 uses
  %i.ss = extractelement <2 x float> %i.sq, i64 1 ; 2 uses
  %i.st = fcmp ogt float %i.ss, %i.sr
  %i.su = select i1 %i.st, float %i.ss, float %i.sr
  %i.sv = fcmp olt float %i.su, %i.pi
  br i1 %i.sv, label %bb.by, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.sw = fsub float %i.sn, %i.sm
  %i.sx = fdiv float %i.sn, %i.sw                 ; 3 uses
  %i.sy = fsub float 1.000000e+00, %i.sx          ; 2 uses
  %i.sz = fmul float %.sroa.553.0.copyload.i, %i.sy
  %i.ta = insertelement <2 x float> poison, float %i.sy, i64 0
  %i.tb = shufflevector <2 x float> %i.ta, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tc = fmul <2 x float> %.sroa.051.0.copyload.i, %i.tb
  %i.td = insertelement <2 x float> poison, float %i.sx, i64 0
  %i.te = shufflevector <2 x float> %i.td, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tf = fmul <2 x float> %.sroa.049.0.copyload.i, %i.te
  %i.tg = fadd <2 x float> %i.tf, %i.tc           ; 3 uses
  %i.th = fmul float %.sroa.5.0.copyload.i268, %i.sx
  %i.ti = fadd float %i.th, %i.sz                 ; 3 uses
  %i.tj = fmul <2 x float> %i.tg, %i.tg           ; 2 uses
  %shift1000 = shufflevector <2 x float> %i.tj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1001 = fadd <2 x float> %i.tj, %shift1000
  %i.tk = extractelement <2 x float> %foldExtExtBinop1001, i64 0
  %i.tl = fmul float %i.ti, %i.ti
  %i.tm = fadd float %i.tl, %i.tk                 ; 2 uses
  %i.tn = fcmp ogt float %i.tm, f0x057A0000
  br i1 %i.tn, label %bb.bw, label %b3Normalize.exit.i

bb.bw:                                            ; preds = %bb.bv
  %sqrt.i = call float @llvm.sqrt.f32(float %i.tm)
  %i.to = fdiv float 1.000000e+00, %sqrt.i        ; 2 uses
  %i.tp = insertelement <2 x float> poison, float %i.to, i64 0
  %i.tq = shufflevector <2 x float> %i.tp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tr = fmul <2 x float> %i.tg, %i.tq
  %i.ts = fmul float %i.ti, %i.to
  br label %b3Normalize.exit.i

b3Normalize.exit.i:                               ; preds = %bb.bw, %bb.bv
  %.sroa.07.0.i.i = phi <2 x float> [ %i.tr, %bb.bw ], [ zeroinitializer, %bb.bv ] ; 2 uses
  %.sroa.5.0.i.i = phi float [ %i.ts, %bb.bw ], [ 0.000000e+00, %bb.bv ] ; 2 uses
  %i.tt = fsub float %i.ob, %.sroa.455.0.copyload.i
  %i.tu = fsub <2 x float> %i.oa, %.sroa.054.0.copyload.i
  %i.tv = fmul <2 x float> %i.tu, %.sroa.07.0.i.i ; 2 uses
  %shift1003 = shufflevector <2 x float> %i.tv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1004 = fadd <2 x float> %i.tv, %shift1003
  %i.tw = extractelement <2 x float> %foldExtExtBinop1004, i64 0
  %i.tx = fmul float %i.tt, %.sroa.5.0.i.i
  %i.ty = fadd float %i.tx, %i.tw                 ; 2 uses
  %i.tz = fcmp ogt float %i.ty, %.0450.i539
  br i1 %i.tz, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %b3Normalize.exit.i
  %i.ua = trunc nuw nsw i64 %indvars.iv.i263536 to i32
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %b3Normalize.exit.i, %bb.bu, %bb.bt
  %.3116.i = phi i32 [ %.0113448.i541, %bb.bu ], [ %.0113448.i541, %bb.bt ], [ %i.ua, %bb.bx ], [ %.0113448.i541, %b3Normalize.exit.i ] ; 2 uses
  %.3112.i = phi i32 [ %.0109449.i540, %bb.bu ], [ %.0109449.i540, %bb.bt ], [ 0, %bb.bx ], [ %.0109449.i540, %b3Normalize.exit.i ] ; 2 uses
  %.3.i = phi float [ %.0450.i539, %bb.bu ], [ %.0450.i539, %bb.bt ], [ %i.ty, %bb.bx ], [ %.0450.i539, %b3Normalize.exit.i ] ; 2 uses
  %.sroa.0101.3.i = phi <2 x float> [ %.sroa.0101.0451.i538, %bb.bu ], [ %.sroa.0101.0451.i538, %bb.bt ], [ %.sroa.07.0.i.i, %bb.bx ], [ %.sroa.0101.0451.i538, %b3Normalize.exit.i ] ; 2 uses
  %.sroa.5102.3.i = phi float [ %.sroa.5102.0452.i537, %bb.bu ], [ %.sroa.5102.0452.i537, %bb.bt ], [ %.sroa.5.0.i.i, %bb.bx ], [ %.sroa.5102.0452.i537, %b3Normalize.exit.i ] ; 2 uses
  %i.ub = icmp eq i64 %indvars.iv.i263536, 2147483646
  br i1 %i.ub, label %bb.bz, label %.lr.ph.split.split.i, !prof !32, !nosanitize !9

bb.bz:                                            ; preds = %bb.by
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @237, i64 2147483646, i64 2) #10, !noalias !91, !nosanitize !9
  unreachable, !nosanitize !9

b3QueryEdgeDirectionHullAndCapsule.exit:          ; preds = %.lr.ph.split.split.i, %.lr.ph.split.split.preheader.i, %.lr.ph.split.us.i272, %.lr.ph.split.split.us.i
  %.us-phi.i265 = phi i32 [ -1, %.lr.ph.split.us.i272 ], [ -1, %.lr.ph.split.split.us.i ], [ -1, %.lr.ph.split.split.preheader.i ], [ %.3116.i, %.lr.ph.split.split.i ]
  %.us-phi453.i = phi i32 [ -1, %.lr.ph.split.us.i272 ], [ -1, %.lr.ph.split.split.us.i ], [ -1, %.lr.ph.split.split.preheader.i ], [ %.3112.i, %.lr.ph.split.split.i ] ; 2 uses
  %.us-phi454.i = phi float [ f0xFF7FFFFF, %.lr.ph.split.us.i272 ], [ f0xFF7FFFFF, %.lr.ph.split.split.us.i ], [ f0xFF7FFFFF, %.lr.ph.split.split.preheader.i ], [ %.3.i, %.lr.ph.split.split.i ] ; 3 uses
  %.us-phi455.i = phi <2 x float> [ zeroinitializer, %.lr.ph.split.us.i272 ], [ zeroinitializer, %.lr.ph.split.split.us.i ], [ zeroinitializer, %.lr.ph.split.split.preheader.i ], [ %.sroa.0101.3.i, %.lr.ph.split.split.i ]
  %.us-phi456.i = phi float [ 0.000000e+00, %.lr.ph.split.us.i272 ], [ 0.000000e+00, %.lr.ph.split.split.us.i ], [ 0.000000e+00, %.lr.ph.split.split.preheader.i ], [ %.sroa.5102.3.i, %.lr.ph.split.split.i ]
  store <2 x float> %.us-phi455.i, ptr %11, align 8, !tbaa !12, !alias.scope !91
  %.sroa.5102.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  store float %.us-phi456.i, ptr %.sroa.5102.0..sroa_idx.i, align 8, !tbaa !12, !alias.scope !91
  %i.uc = getelementptr inbounds nuw i8, ptr %11, i64 12
  store float %.us-phi454.i, ptr %i.uc, align 4, !tbaa !57, !alias.scope !91
  %i.ud = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 %.us-phi453.i, ptr %i.ud, align 8, !tbaa !58, !alias.scope !91
  %i.ue = getelementptr inbounds nuw i8, ptr %11, i64 20
  store i32 %.us-phi.i265, ptr %i.ue, align 4, !tbaa !59, !alias.scope !91
  %i.uf = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i32 0, ptr %i.uf, align 8, !tbaa !60, !alias.scope !91
  %i.ug = fcmp ogt float %.us-phi454.i, %i.mc
  br i1 %i.ug, label %bb.da, label %bb.ca

bb.ca:                                            ; preds = %b3QueryEdgeDirectionHullAndCapsule.exit
  %i.uh = fsub float %.us-phi.i, %i.mc
  br i1 %i.ou, label %b3GetHullPlanes.exit.i273, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ui = sext i32 %.fr563 to i64                 ; 2 uses
  %i.uj = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.i, i64 %i.ui), !nosanitize !9 ; 2 uses
  %i.uk = extractvalue { i64, i1 } %i.uj, 1, !nosanitize !9
  br i1 %i.uk, label %bb.cc, label %bb.cd, !prof !32, !nosanitize !9

bb.cc:                                            ; preds = %bb.cb
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @204, i64 %i.i, i64 %i.ui) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.cd:                                            ; preds = %bb.cb
  %i.ul = extractvalue { i64, i1 } %i.uj, 0, !nosanitize !9
  %i.um = inttoptr i64 %i.ul to ptr
  br label %b3GetHullPlanes.exit.i273

b3GetHullPlanes.exit.i273:                        ; preds = %bb.cd, %bb.ca
  %.0.i.i274 = phi ptr [ %i.um, %bb.cd ], [ null, %bb.ca ] ; 3 uses
  %i.un = zext nneg i32 %i.mb to i64              ; 2 uses
  %i.uo = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i274, i64 %i.un ; 3 uses
  %i.up = shl nuw nsw i64 %i.un, 4
  %i.uq = ptrtoint ptr %.0.i.i274 to i64, !nosanitize !9 ; 3 uses
  %i.ur = add i64 %i.up, %i.uq, !nosanitize !9    ; 3 uses
  %i.us = icmp ne ptr %.0.i.i274, null, !nosanitize !9 ; 2 uses
  %i.ut = icmp eq i64 %i.ur, 0
  %i.uu = xor i1 %i.us, %i.ut
  %i.uv = icmp uge i64 %i.ur, %i.uq, !nosanitize !9
  %i.uw = and i1 %i.uv, %i.uu, !nosanitize !9
  br i1 %i.uw, label %bb.cf, label %bb.ce, !prof !10, !nosanitize !9

bb.ce:                                            ; preds = %b3GetHullPlanes.exit.i273
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @238, i64 %i.uq, i64 %i.ur) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.cf:                                            ; preds = %b3GetHullPlanes.exit.i273
  %i.ux = ptrtoint ptr %i.uo to i64, !nosanitize !9 ; 2 uses
  %i.uy = and i64 %i.ux, 3, !nosanitize !9
  %i.uz = icmp eq i64 %i.uy, 0, !nosanitize !9
  %i.va = and i1 %i.us, %i.uz
  br i1 %i.va, label %bb.ch, label %bb.cg, !prof !10, !nosanitize !9

bb.cg:                                            ; preds = %bb.cf
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @239, i64 %i.ux) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.ch:                                            ; preds = %bb.cf
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.uo, align 4, !tbaa !12 ; 5 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.uo, i64 8
  %.sroa.6.0.copyload3.i = load <2 x float>, ptr %.sroa.6.0..sroa_idx.i, align 4, !tbaa !12 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  store <2 x float> %i.nb, ptr %6, align 16, !tbaa !12
  %.sroa.455.0..sroa_idx.i285 = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store float %i.nc, ptr %.sroa.455.0..sroa_idx.i285, align 8, !tbaa !12
  %i.vb = getelementptr inbounds nuw i8, ptr %6, i64 12
  store float 0.000000e+00, ptr %i.vb, align 4, !tbaa !50
  %i.vc = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.vd = call i32 @b3MakeFeaturePair(i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  store i32 %i.vd, ptr %i.vc, align 16, !tbaa !24
  %i.ve = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 3 uses
  %.not.i286 = icmp ugt ptr %6, inttoptr (i64 -21 to ptr)
  br i1 %.not.i286, label %bb.ci, label %bb.cj, !prof !32, !nosanitize !9

bb.ci:                                            ; preds = %bb.ch
  %i.vf = ptrtoint ptr %6 to i64, !nosanitize !9  ; 2 uses
  %i.vg = add i64 %i.vf, 20, !nosanitize !9
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @240, i64 %i.vf, i64 %i.vg) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.cj:                                            ; preds = %bb.ch
  %.sroa.043.0.copyload.i = load <2 x float>, ptr %i.jb, align 4 ; 4 uses
  %.sroa.244.0.copyload.i = load float, ptr %.sroa.224.0..sroa_idx.i, align 4 ; 4 uses
  %foldExtExtBinop1006 = fmul <2 x float> %.sroa.6326.0.copyload, %.sroa.043.0.copyload.i
  %i.vh = extractelement <2 x float> %foldExtExtBinop1006, i64 0
  %i.vi = fmul float %.sroa.09.0.vec.extract.i.i.i, %.sroa.244.0.copyload.i
  %i.vj = fsub float %i.vh, %i.vi
  %i.vk = shufflevector <2 x float> %.sroa.043.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.vl = insertelement <2 x float> %i.vk, float %.sroa.244.0.copyload.i, i64 1 ; 2 uses
  %i.vm = fmul <2 x float> %.sroa.5325.0.copyload, %i.vl
  %i.vn = fmul <2 x float> %i.ii, %.sroa.043.0.copyload.i
  %i.vo = fsub <2 x float> %i.vm, %i.vn           ; 2 uses
  %i.vp = insertelement <2 x float> %i.vk, float %.sroa.244.0.copyload.i, i64 0
  %i.vq = fmul <2 x float> %i.il, %i.vp
  %i.vr = fmul <2 x float> %i.il, %i.vl
  %i.vs = fadd <2 x float> %i.vq, %i.vo           ; 2 uses
  %i.vt = shufflevector <2 x float> %i.vo, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.vu = insertelement <2 x float> %i.vt, float %i.vj, i64 0
  %i.vv = fadd <2 x float> %i.vr, %i.vu           ; 2 uses
  %i.vw = fmul <2 x float> %i.ii, %i.vs
  %i.vx = fmul <2 x float> %i.iu, %i.vv
  %i.vy = fsub <2 x float> %i.vw, %i.vx
  %foldExtExtBinop1008 = fmul <2 x float> %.sroa.5325.0.copyload, %i.vv
  %foldExtExtBinop1010 = fmul <2 x float> %.sroa.5325.0.copyload, %i.vs
  %shift1012 = shufflevector <2 x float> %foldExtExtBinop1010, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1013 = fsub <2 x float> %foldExtExtBinop1008, %shift1012
  %i.vz = extractelement <2 x float> %foldExtExtBinop1013, i64 0
  %i.wa = fmul <2 x float> %i.vy, splat (float 2.000000e+00)
  %i.wb = fadd <2 x float> %.sroa.043.0.copyload.i, %i.wa
  %i.wc = fmul float %i.vz, 2.000000e+00
  %i.wd = fadd float %.sroa.244.0.copyload.i, %i.wc
  %i.we = fadd <2 x float> %.sroa.0323.0.copyload, %i.wb
  %i.wf = fadd float %.sroa.4324.0.copyload, %i.wd
  store <2 x float> %i.we, ptr %i.ve, align 4, !tbaa !12
  %.sroa.446.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 28 ; 3 uses
  store float %i.wf, ptr %.sroa.446.0..sroa_idx.i, align 4, !tbaa !12
  %i.wg = getelementptr inbounds nuw i8, ptr %6, i64 32
  store float 0.000000e+00, ptr %i.wg, align 16, !tbaa !50
  %i.wh = getelementptr inbounds nuw i8, ptr %6, i64 36 ; 2 uses
  %i.wi = call i32 @b3MakeFeaturePair(i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 1) #11
  store i32 %i.wi, ptr %i.wh, align 4, !tbaa !24
  %i.wj = call fastcc i32 @b3ClipSegmentToHullFace(ptr noundef %6, ptr noundef nonnull %2, i32 noundef %i.mb)
  %i.wk = icmp samesign ult i32 %i.wj, 2
  br i1 %i.wk, label %b3BuildHullFaceAndCapsuleContact.exit, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %.sroa.033.0.copyload.i = load <2 x float>, ptr %6, align 16
  %i.wl = load <2 x float>, ptr %.sroa.455.0..sroa_idx.i285, align 8
  %i.wm = fmul <2 x float> %.sroa.0.0.copyload.i, %.sroa.033.0.copyload.i ; 2 uses
  %.sroa.028.0.copyload.i = load <2 x float>, ptr %i.ve, align 4
  %.sroa.229.0.copyload.i = load float, ptr %.sroa.446.0..sroa_idx.i, align 4
  %i.wn = fmul <2 x float> %.sroa.0.0.copyload.i, %.sroa.028.0.copyload.i ; 2 uses
  %i.wo = shufflevector <2 x float> %i.wm, <2 x float> %i.wn, <2 x i32> <i32 0, i32 2>
  %i.wp = shufflevector <2 x float> %i.wm, <2 x float> %i.wn, <2 x i32> <i32 1, i32 3>
  %i.wq = fadd <2 x float> %i.wo, %i.wp
  %i.wr = shufflevector <2 x float> %.sroa.6.0.copyload3.i, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ws = insertelement <2 x float> %i.wl, float %.sroa.229.0.copyload.i, i64 1
  %i.wt = fmul <2 x float> %i.wr, %i.ws
  %i.wu = fadd <2 x float> %i.wt, %i.wq
  %i.wv = shufflevector <2 x float> %.sroa.6.0.copyload3.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ww = fsub <2 x float> %i.wu, %i.wv           ; 3 uses
  %i.wx = call float @b3GetLengthUnitsPerMeter() #11
  %i.wy = fmul float %i.wx, 5.000000e-03
  %i.wz = fmul float %i.wy, 4.000000e+00          ; 2 uses
  %i.xa = extractelement <2 x float> %i.ww, i64 0 ; 2 uses
  %i.xb = fcmp ugt float %i.xa, %i.wz
  %i.xc = extractelement <2 x float> %i.ww, i64 1 ; 2 uses
  %i.xd = fcmp ugt float %i.xc, %i.wz
  %or.cond.i289 = select i1 %i.xb, i1 %i.xd, i1 false
  br i1 %or.cond.i289, label %b3BuildHullFaceAndCapsuleContact.exit, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %.sroa.1.8.vec.extract.i.i = extractelement <2 x float> %.sroa.6.0.copyload3.i, i64 0
  %i.xe = load float, ptr %i.aj, align 4, !tbaa !26
  %.sroa.017.0.copyload.i = load <2 x float>, ptr %6, align 16
  %.sroa.218.0.copyload.i = load float, ptr %.sroa.455.0..sroa_idx.i285, align 8
  %i.xf = insertelement <2 x float> poison, float %i.xe, i64 0
  %i.xg = shufflevector <2 x float> %i.xf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xh = fadd <2 x float> %i.ww, %i.xg
  %.sroa.08.0.copyload.i = load <2 x float>, ptr %i.ve, align 4
  %.sroa.29.0.copyload.i = load float, ptr %.sroa.446.0..sroa_idx.i, align 4
  %i.xi = fmul <2 x float> %i.xh, splat (float 5.000000e-01) ; 3 uses
  %i.xj = fmul <2 x float> %i.wr, %i.xi           ; 2 uses
  %i.xk = shufflevector <2 x float> %i.xi, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.xl = fmul <2 x float> %.sroa.0.0.copyload.i, %i.xk
  %i.xm = fsub <2 x float> %.sroa.08.0.copyload.i, %i.xl
  %i.xn = extractelement <2 x float> %i.xj, i64 1
  %i.xo = fsub float %.sroa.29.0.copyload.i, %i.xn
  store <2 x float> %.sroa.0.0.copyload.i, ptr %0, align 8, !tbaa !12
  %.sroa.6.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %.sroa.1.8.vec.extract.i.i, ptr %.sroa.6.0..sroa_idx24.i, align 8, !tbaa !12
  store i32 2, ptr %i.f, align 8, !tbaa !19
  %i.xp = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.xq = load ptr, ptr %i.xp, align 8, !tbaa !20 ; 6 uses
  %i.xr = icmp ne ptr %i.xq, null, !nosanitize !9
  %i.xs = ptrtoint ptr %i.xq to i64, !nosanitize !9 ; 2 uses
  %i.xt = and i64 %i.xs, 3, !nosanitize !9
  %i.xu = icmp eq i64 %i.xt, 0, !nosanitize !9
  %i.xv = and i1 %i.xr, %i.xu, !nosanitize !9
  br i1 %i.xv, label %bb.cn, label %bb.cm, !prof !10, !nosanitize !9

bb.cm:                                            ; preds = %bb.cl
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @241, i64 %i.xs) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.cn:                                            ; preds = %bb.cl
  %i.xw = extractelement <2 x float> %i.xj, i64 0
  %i.xx = fsub float %.sroa.218.0.copyload.i, %i.xw
  %i.xy = shufflevector <2 x float> %i.xi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xz = fmul <2 x float> %.sroa.0.0.copyload.i, %i.xy
  %i.ya = fsub <2 x float> %.sroa.017.0.copyload.i, %i.xz
  store <2 x float> %i.ya, ptr %i.xq, align 4, !tbaa !12
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.xq, i64 8
  store float %i.xx, ptr %.sroa.420.0..sroa_idx.i, align 4, !tbaa !12
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xq, i64 12
end_hunk_0
