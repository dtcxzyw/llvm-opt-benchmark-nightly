Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cuddExact?download=true
inline.NumInlined: 18
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@cuddExact:bb.a
  %xtraiter691 = and i64 %wide.trip.count, 3      ; 2 uses
  %lcmp.mod692.not = icmp eq i64 %xtraiter691, 0
  br i1 %lcmp.mod692.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv556.prol = phi i64 [ %indvars.iv.next557.prol, %scalar.ph.prol ], [ %indvars.iv556.ph, %scalar.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv556.prol
  %i.gq = load i32, ptr %gep.prol, align 4, !tbaa !30 ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %indvars.iv556.prol
  store i32 %i.gq, ptr %i.gr, align 4, !tbaa !30
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %indvars.iv556.prol
  store i32 %i.gq, ptr %i.gs, align 4, !tbaa !30
  %indvars.iv.next557.prol = add nuw nsw i64 %indvars.iv556.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter691
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !47

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv556.unr = phi i64 [ %indvars.iv556.ph, %scalar.ph.preheader ], [ %indvars.iv.next557.prol, %scalar.ph.prol ]
  %i.gt = sub nsw i64 %indvars.iv556.ph, %wide.trip.count
  %i.gu = icmp ugt i64 %i.gt, -4
  br i1 %i.gu, label %._crit_edge490, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv556 = phi i64 [ %indvars.iv.next557.3, %scalar.ph ], [ %indvars.iv556.unr, %scalar.ph.prol.loopexit ] ; 7 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv556
  %i.gv = load i32, ptr %gep, align 4, !tbaa !30  ; 2 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %indvars.iv556
  store i32 %i.gv, ptr %i.gw, align 4, !tbaa !30
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %indvars.iv556
  store i32 %i.gv, ptr %i.gx, align 4, !tbaa !30
  %indvars.iv.next557 = add nuw nsw i64 %indvars.iv556, 1 ; 3 uses
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next557
  %i.gy = load i32, ptr %gep.1, align 4, !tbaa !30 ; 2 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %indvars.iv.next557
  store i32 %i.gy, ptr %i.gz, align 4, !tbaa !30
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %indvars.iv.next557
  store i32 %i.gy, ptr %i.ha, align 4, !tbaa !30
  %indvars.iv.next557.1 = add nuw nsw i64 %indvars.iv556, 2 ; 3 uses
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next557.1
  %i.hb = load i32, ptr %gep.2, align 4, !tbaa !30 ; 2 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %indvars.iv.next557.1
  store i32 %i.hb, ptr %i.hc, align 4, !tbaa !30
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %indvars.iv.next557.1
  store i32 %i.hb, ptr %i.hd, align 4, !tbaa !30
  %indvars.iv.next557.2 = add nuw nsw i64 %indvars.iv556, 3 ; 3 uses
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next557.2
  %i.he = load i32, ptr %gep.3, align 4, !tbaa !30 ; 2 uses
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %indvars.iv.next557.2
  store i32 %i.he, ptr %i.hf, align 4, !tbaa !30
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %indvars.iv.next557.2
  store i32 %i.he, ptr %i.hg, align 4, !tbaa !30
  %indvars.iv.next557.3 = add nuw nsw i64 %indvars.iv556, 4 ; 2 uses
  %exitcond560.not.3 = icmp eq i64 %indvars.iv.next557.3, %wide.trip.count
  br i1 %exitcond560.not.3, label %._crit_edge490, label %scalar.ph, !llvm.loop !48

._crit_edge490:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.y
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !49 ; 3 uses
  %.2232491 = add i32 %.0235.lcssa, 1             ; 3 uses
  %i.hj = icmp slt i32 %.2232491, %i.az
  br i1 %i.hj, label %.lr.ph495, label %._crit_edge496

.lr.ph495:                                        ; preds = %._crit_edge490
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !29 ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !28 ; 3 uses
  %i.ho = load ptr, ptr %i.a, align 8, !tbaa !8   ; 3 uses
  %i.hp = sext i32 %.2232491 to i64               ; 4 uses
  %i.hq = add i32 %i.az, -2
  %i.hr = sub i32 %.0235.lcssa, %i.az
  %i.hs = and i32 %i.hr, 1
  %lcmp.mod694.not.not = icmp eq i32 %i.hs, 0
  br i1 %lcmp.mod694.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph495
  %i.ht = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %i.hp
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !30
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr inbounds [8 x i8], ptr %i.hn, i64 %i.hv
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !31
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 4
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !32
  %i.ia = icmp eq i32 %i.hz, 1
  %.neg.i.prol = sext i1 %i.ia to i32
  %i.ib = getelementptr inbounds [56 x i8], ptr %i.ho, i64 %i.hp
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  %i.id = load i32, ptr %i.ic, align 8, !tbaa !27
  %i.ie = add i32 %i.hi, %.neg.i.prol
  %i.if = add i32 %i.ie, %i.id                    ; 2 uses
  %indvars.iv.next562.prol = add nsw i64 %i.hp, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph495
  %.lcssa681.unr = phi i32 [ poison, %.lr.ph495 ], [ %i.if, %.prol.loopexit.unr-lcssa ]
  %indvars.iv561.unr = phi i64 [ %i.hp, %.lr.ph495 ], [ %indvars.iv.next562.prol, %.prol.loopexit.unr-lcssa ]
  %.0223492.unr = phi i32 [ %i.hi, %.lr.ph495 ], [ %i.if, %.prol.loopexit.unr-lcssa ]
  %i.ig = icmp eq i32 %i.hq, %.0235.lcssa
  br i1 %i.ig, label %._crit_edge496, label %.lr.ph495.new

.lr.ph495.new:                                    ; preds = %.prol.loopexit, %.lr.ph495.new
  %indvars.iv561 = phi i64 [ %indvars.iv.next562.1, %.lr.ph495.new ], [ %indvars.iv561.unr, %.prol.loopexit ] ; 4 uses
  %.0223492 = phi i32 [ %i.jg, %.lr.ph495.new ], [ %.0223492.unr, %.prol.loopexit ]
  %i.ih = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %indvars.iv561
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !30
  %i.ij = sext i32 %i.ii to i64
  %i.ik = getelementptr inbounds [8 x i8], ptr %i.hn, i64 %i.ij
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !31
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 4
  %i.in = load i32, ptr %i.im, align 4, !tbaa !32
  %i.io = icmp eq i32 %i.in, 1
  %.neg.i = sext i1 %i.io to i32
  %i.ip = getelementptr inbounds [56 x i8], ptr %i.ho, i64 %indvars.iv561
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  %i.ir = load i32, ptr %i.iq, align 8, !tbaa !27
  %i.is = add i32 %.0223492, %.neg.i
  %i.it = add i32 %i.is, %i.ir
  %indvars.iv.next562 = add nsw i64 %indvars.iv561, 1 ; 2 uses
  %i.iu = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %indvars.iv.next562
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !30
  %i.iw = sext i32 %i.iv to i64
  %i.ix = getelementptr inbounds [8 x i8], ptr %i.hn, i64 %i.iw
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !31
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 4
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !32
  %i.jb = icmp eq i32 %i.ja, 1
  %.neg.i.1 = sext i1 %i.jb to i32
  %i.jc = getelementptr inbounds [56 x i8], ptr %i.ho, i64 %indvars.iv.next562
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %i.je = load i32, ptr %i.jd, align 8, !tbaa !27
  %i.jf = add i32 %i.it, %.neg.i.1
  %i.jg = add i32 %i.jf, %i.je                    ; 2 uses
  %indvars.iv.next562.1 = add nsw i64 %indvars.iv561, 2 ; 2 uses
  %lftr.wideiv565.1 = trunc i64 %indvars.iv.next562.1 to i32
  %exitcond566.not.1 = icmp eq i32 %i.az, %lftr.wideiv565.1
  br i1 %exitcond566.not.1, label %._crit_edge496, label %.lr.ph495.new, !llvm.loop !50

._crit_edge496:                                   ; preds = %.prol.loopexit, %.lr.ph495.new, %._crit_edge490
  %.0223.lcssa = phi i32 [ %i.hi, %._crit_edge490 ], [ %.lcssa681.unr, %.prol.loopexit ], [ %i.jg, %.lr.ph495.new ]
  store i32 %.0223.lcssa, ptr %i.fo, align 4, !tbaa !30
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 5 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 5 uses
  %.not254515 = icmp ugt i32 %i.ba, 2147483646
  br i1 %.not254515, label %._crit_edge525, label %.lr.ph524

.lr.ph524:                                        ; preds = %._crit_edge496
  %i.jj = load i32, ptr %i.jh, align 4, !tbaa !51
  %i.jk = load i32, ptr %i.ji, align 8, !tbaa !52
  %i.jl = sub i32 %i.jj, %i.jk
  %i.jm = icmp sgt i32 %.0236.lcssa464, 0
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 5 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 4 uses
  %wide.trip.count.i277 = zext i32 %.0236.lcssa464 to i64 ; 2 uses
  %.not18.i = icmp slt i32 %.0235.lcssa, %.0236.lcssa464 ; 3 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  %wide.trip.count.i282 = zext i32 %i.bb to i64   ; 7 uses
  %i.jq = add i32 %.0236.lcssa464, -1
  %i.jr = shl nsw i64 %.lcssa461, 2               ; 2 uses
  %i.js = trunc nsw i64 %.lcssa461 to i32
  %i.jt = sub i32 %.0235.lcssa, %i.js
  %i.ju = zext i32 %i.jt to i64
  %i.jv = shl nuw nsw i64 %i.ju, 2
  %i.jw = add nuw nsw i64 %i.jv, 4                ; 2 uses
  %i.jx = zext nneg i32 %i.ba to i64
  %i.jy = add i32 %.0235.lcssa, 2
  %i.jz = sub i32 %i.jy, %.0236.lcssa464
  %wide.trip.count584 = zext i32 %i.jz to i64
  %i.ka = add i32 %.0235.lcssa, 1
  %i.kb = trunc i64 %.lcssa461 to i32             ; 2 uses
  %i.kc = sub i32 %i.ka, %i.kb
  %i.kd = sub i32 %.0235.lcssa, %i.kb
  %xtraiter697 = and i64 %wide.trip.count.i277, 1
  %i.ke = icmp eq i32 %.0236.lcssa464, 1
  %unroll_iter702 = and i64 %wide.trip.count.i277, 2147483646
  %lcmp.mod699.not = icmp eq i64 %xtraiter697, 0
  %lcmp.mod701 = trunc i32 %.0236.lcssa464 to i1
  %xtraiter704 = and i32 %i.kc, 3                 ; 2 uses
  %lcmp.mod705.not = icmp eq i32 %xtraiter704, 0
  %i.kf = icmp ult i32 %i.kd, 3
  %min.iters.check651 = icmp ult i32 %i.bb, 8
  %n.vec653 = and i64 %wide.trip.count.i282, 4294967288 ; 3 uses
  %cmp.n660 = icmp eq i64 %n.vec653, %wide.trip.count.i282
  %xtraiter710 = and i64 %wide.trip.count.i282, 3 ; 2 uses
  %lcmp.mod711.not = icmp eq i64 %xtraiter710, 0
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph524, %._crit_edge512
  %indvar = phi i32 [ 0, %.lr.ph524 ], [ %indvar.next, %._crit_edge512 ] ; 3 uses
  %indvars.iv580 = phi i64 [ 1, %.lr.ph524 ], [ %indvars.iv.next581, %._crit_edge512 ] ; 2 uses
  %indvars.iv568 = phi i32 [ %i.ba, %.lr.ph524 ], [ %indvars.iv.next569, %._crit_edge512 ] ; 2 uses
  %.0210522 = phi ptr [ %i.fo, %.lr.ph524 ], [ %.0211521, %._crit_edge512 ] ; 5 uses
  %.0211521 = phi ptr [ %i.ef, %.lr.ph524 ], [ %.0210522, %._crit_edge512 ] ; 6 uses
  %.0213520 = phi ptr [ %i.eh, %.lr.ph524 ], [ %.0215519, %._crit_edge512 ] ; 5 uses
  %.0215519 = phi ptr [ %i.cu, %.lr.ph524 ], [ %.0213520, %._crit_edge512 ] ; 6 uses
  %.0219518 = phi i32 [ %i.jl, %.lr.ph524 ], [ %.1220.lcssa, %._crit_edge512 ] ; 2 uses
  %.0228517 = phi i32 [ 1, %.lr.ph524 ], [ %.0224.lcssa, %._crit_edge512 ] ; 2 uses
  %i.kg = add i32 %indvar, 1
  %i.kh = sext i32 %indvars.iv568 to i64
  %i.ki = sub nsw i64 %i.fq, %indvars.iv580       ; 10 uses
  %i.kj = icmp sgt i32 %.0228517, 0
  br i1 %i.kj, label %.lr.ph511, label %._crit_edge512

.lr.ph511:                                        ; preds = %bb.z
  %i.kk = trunc nsw i64 %i.ki to i32
  %i.kl = add i32 %.0236.lcssa464, %i.kk          ; 4 uses
  %smax.i = tail call i32 @llvm.smax.i32(i32 %.0236.lcssa464, i32 %i.kl)
  %i.km = add i32 %smax.i, 1
  %i.kn = add nsw i32 %i.kl, 1                    ; 2 uses
  %i.ko = icmp slt i32 %i.kl, %.0235.lcssa
  %i.kp = sext i32 %i.kn to i64
  %i.kq = icmp sgt i64 %i.ki, -1
  %i.kr = sext i32 %i.kl to i64                   ; 2 uses
  %.not5662.i = icmp sgt i64 %i.ki, %i.jx
  %wide.trip.count578 = zext nneg i32 %.0228517 to i64
  %xtraiter707 = and i32 %i.kg, 3                 ; 2 uses
  %lcmp.mod708.not = icmp eq i32 %xtraiter707, 0
  %i.ks = icmp ult i32 %indvar, 3
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph511, %.loopexit438
  %indvars.iv574 = phi i64 [ 0, %.lr.ph511 ], [ %indvars.iv.next575, %.loopexit438 ] ; 3 uses
  %.1220509 = phi i32 [ %.0219518, %.lr.ph511 ], [ %.4, %.loopexit438 ] ; 5 uses
  %.0224508 = phi i32 [ 0, %.lr.ph511 ], [ %.3227, %.loopexit438 ] ; 3 uses
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %.0213520, i64 %indvars.iv574
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !39 ; 19 uses
  %i.kv = ptrtoaddr ptr %i.ku to i64
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %.0210522, i64 %indvars.iv574
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !30 ; 4 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !8   ; 5 uses
  br i1 %i.jm, label %.lr.ph.i276, label %.preheader.i273

.lr.ph.i276:                                      ; preds = %bb.aa
  %i.ky = load ptr, ptr %i.jn, align 8, !tbaa !29 ; 3 uses
  %i.kz = load ptr, ptr %i.jo, align 8, !tbaa !28 ; 3 uses
  br i1 %i.ke, label %.epil.preheader696, label %.lr.ph.i276.new

.preheader.i273.loopexit.unr-lcssa:               ; preds = %.lr.ph.i276.new
  br i1 %lcmp.mod699.not, label %.preheader.i273, label %.epil.preheader696

.epil.preheader696:                               ; preds = %.preheader.i273.loopexit.unr-lcssa, %.lr.ph.i276
  %indvars.iv.i278.epil.init = phi i64 [ 0, %.lr.ph.i276 ], [ %indvars.iv.next.i279.1, %.preheader.i273.loopexit.unr-lcssa ] ; 2 uses
  %.04452.i.epil.init = phi i32 [ %i.kx, %.lr.ph.i276 ], [ %i.mm, %.preheader.i273.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod701)
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv.i278.epil.init
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !30
  %i.lc = sext i32 %i.lb to i64
  %i.ld = getelementptr inbounds [8 x i8], ptr %i.kz, i64 %i.lc
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !31
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 4
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !32
  %i.lh = icmp eq i32 %i.lg, 1
  %.neg.i.i.epil = sext i1 %i.lh to i32
  %i.li = getelementptr inbounds nuw [56 x i8], ptr %.pre, i64 %indvars.iv.i278.epil.init
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  %i.lk = load i32, ptr %i.lj, align 8, !tbaa !27
  %i.ll = add i32 %i.lk, %.04452.i.epil.init
  %i.lm = add i32 %i.ll, %.neg.i.i.epil
  br label %.preheader.i273

.preheader.i273:                                  ; preds = %.epil.preheader696, %.preheader.i273.loopexit.unr-lcssa, %bb.aa
  %.044.lcssa.i = phi i32 [ %i.kx, %bb.aa ], [ %i.mm, %.preheader.i273.loopexit.unr-lcssa ], [ %i.lm, %.epil.preheader696 ]
  br label %bb.ab

.lr.ph.i276.new:                                  ; preds = %.lr.ph.i276, %.lr.ph.i276.new
  %indvars.iv.i278 = phi i64 [ %indvars.iv.next.i279.1, %.lr.ph.i276.new ], [ 0, %.lr.ph.i276 ] ; 4 uses
  %.04452.i = phi i32 [ %i.mm, %.lr.ph.i276.new ], [ %i.kx, %.lr.ph.i276 ]
  %niter703 = phi i64 [ %niter703.next.1, %.lr.ph.i276.new ], [ 0, %.lr.ph.i276 ]
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv.i278
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !30
  %i.lp = sext i32 %i.lo to i64
  %i.lq = getelementptr inbounds [8 x i8], ptr %i.kz, i64 %i.lp
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !31
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 4
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !32
  %i.lu = icmp eq i32 %i.lt, 1
  %.neg.i.i = sext i1 %i.lu to i32
  %i.lv = getelementptr inbounds nuw [56 x i8], ptr %.pre, i64 %indvars.iv.i278
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 16
  %i.lx = load i32, ptr %i.lw, align 8, !tbaa !27
  %i.ly = add i32 %i.lx, %.04452.i
  %i.lz = add i32 %i.ly, %.neg.i.i
  %indvars.iv.next.i279 = or disjoint i64 %indvars.iv.i278, 1 ; 2 uses
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv.next.i279
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !30
  %i.mc = sext i32 %i.mb to i64
  %i.md = getelementptr inbounds [8 x i8], ptr %i.kz, i64 %i.mc
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !31
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 4
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !32
  %i.mh = icmp eq i32 %i.mg, 1
  %.neg.i.i.1 = sext i1 %i.mh to i32
  %i.mi = getelementptr inbounds nuw [56 x i8], ptr %.pre, i64 %indvars.iv.next.i279
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 16
  %i.mk = load i32, ptr %i.mj, align 8, !tbaa !27
  %i.ml = add i32 %i.mk, %i.lz
  %i.mm = add i32 %i.ml, %.neg.i.i.1              ; 3 uses
  %indvars.iv.next.i279.1 = add nuw nsw i64 %indvars.iv.i278, 2 ; 2 uses
  %niter703.next.1 = add i64 %niter703, 2         ; 2 uses
  %niter703.ncmp.1 = icmp eq i64 %niter703.next.1, %unroll_iter702
  br i1 %niter703.ncmp.1, label %.preheader.i273.loopexit.unr-lcssa, label %.lr.ph.i276.new, !llvm.loop !53

bb.ab:                                            ; preds = %bb.ad, %.preheader.i273
  %indvars.iv61.i = phi i64 [ %.lcssa461, %.preheader.i273 ], [ %indvars.iv.next62.i, %bb.ad ] ; 3 uses
  %.04355.i = phi i32 [ 0, %.preheader.i273 ], [ %i.nd, %bb.ad ]
  %i.mn = getelementptr inbounds [56 x i8], ptr %.pre, i64 %indvars.iv61.i
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 16
  %i.mp = load i32, ptr %i.mo, align 8, !tbaa !27
  %i.mq = icmp ugt i32 %i.mp, 1
  br i1 %i.mq, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.mr = load ptr, ptr %i.jo, align 8, !tbaa !28
  %i.ms = sub nsw i64 %indvars.iv61.i, %.lcssa461
  %i.mt = getelementptr inbounds [4 x i8], ptr %i.ku, i64 %i.ms
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !30
  %i.mv = zext i32 %i.mu to i64
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %i.mr, i64 %i.mv
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !31
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 4
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !32
  %i.na = icmp ugt i32 %i.mz, 1
  %i.nb = zext i1 %i.na to i32
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.nc = phi i32 [ 1, %bb.ab ], [ %i.nb, %bb.ac ]
  %i.nd = add nuw nsw i32 %i.nc, %.04355.i        ; 3 uses
  %indvars.iv.next62.i = add nsw i64 %indvars.iv61.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next62.i to i32
  %exitcond64.not.i = icmp eq i32 %i.km, %lftr.wideiv.i
  br i1 %exitcond64.not.i, label %._crit_edge.i274.loopexit, label %bb.ab, !llvm.loop !54

._crit_edge.i274.loopexit:                        ; preds = %bb.ad
  %i.ne = load i32, ptr %i.ay, align 8, !tbaa !36
  %i.nf = icmp slt i32 %i.kn, %i.ne
  br i1 %i.nf, label %bb.ae, label %computeLB.exit

bb.ae:                                            ; preds = %._crit_edge.i274.loopexit
  %i.ng = load ptr, ptr %i.jo, align 8, !tbaa !28
  br i1 %i.ko, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.nh = getelementptr [4 x i8], ptr %i.ku, i64 %i.ki
  %i.ni = getelementptr i8, ptr %i.nh, i64 4
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !30
  %i.nk = zext i32 %i.nj to i64
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.nl = load ptr, ptr %i.jn, align 8, !tbaa !29
  %i.nm = getelementptr [4 x i8], ptr %i.nl, i64 %.lcssa460
  %i.nn = getelementptr i8, ptr %i.nm, i64 4
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !30
  %i.np = sext i32 %i.no to i64
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.sink.i = phi i64 [ %i.np, %bb.ag ], [ %i.nk, %bb.af ]
  %i.nq = getelementptr inbounds [8 x i8], ptr %i.ng, i64 %.sink.i
  %.pn.i = load ptr, ptr %i.nq, align 8, !tbaa !31
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 4
  %.0.i = load i32, ptr %.0.in.i, align 4, !tbaa !32
  %i.nr = getelementptr inbounds [56 x i8], ptr %.pre, i64 %i.kp
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 16
  %i.nt = load i32, ptr %i.ns, align 8, !tbaa !27
  %i.nu = icmp ugt i32 %.0.i, 1
  %.neg.i275 = sext i1 %i.nu to i32
  %i.nv = sub i32 %.neg.i275, %i.fz
  %i.nw = add i32 %i.nv, %i.nt
  %i.nx = tail call i32 @llvm.smax.i32(i32 %i.nd, i32 %i.nw)
  br label %computeLB.exit

computeLB.exit:                                   ; preds = %._crit_edge.i274.loopexit, %bb.ah
  %.042.i = phi i32 [ %i.nx, %bb.ah ], [ %i.nd, %._crit_edge.i274.loopexit ]
  %i.ny = add nsw i32 %.042.i, %.044.lcssa.i
  %.not255 = icmp slt i32 %i.ny, %.1220509
  br i1 %.not255, label %bb.ai, label %.loopexit438

bb.ai:                                            ; preds = %computeLB.exit
  br i1 %.not18.i, label %.thread, label %.lr.ph.i281

.lr.ph.i281:                                      ; preds = %bb.ai, %.loopexit.i
  %indvars.iv.i283 = phi i64 [ %indvars.iv.next.i284, %.loopexit.i ], [ 0, %bb.ai ] ; 3 uses
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %indvars.iv.i283
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !30
  %i.ob = load ptr, ptr %i.jp, align 8, !tbaa !55
  %i.oc = zext i32 %i.oa to i64
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.ob, i64 %i.oc
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !30 ; 2 uses
  %i.of = add nsw i64 %indvars.iv.i283, %.lcssa461 ; 2 uses
  %i.og = tail call i32 @cuddNextLow(ptr noundef %0, i32 noundef %i.oe) #10 ; 2 uses
  %i.oh = sext i32 %i.og to i64
  %.not13.i.i = icmp sgt i64 %i.of, %i.oh
  br i1 %.not13.i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i281, %bb.aj
  %.015.i.i = phi i32 [ %i.ok, %bb.aj ], [ %i.og, %.lr.ph.i281 ] ; 3 uses
  %.01214.i.i = phi i32 [ %.015.i.i, %bb.aj ], [ %i.oe, %.lr.ph.i281 ]
  %i.oi = tail call i32 @cuddSwapInPlace(ptr noundef %0, i32 noundef %.015.i.i, i32 noundef %.01214.i.i) #10
  %i.oj = icmp eq i32 %i.oi, 0
  br i1 %i.oj, label %ddShuffle.exit.thread348, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i.i
  %i.ok = tail call i32 @cuddNextLow(ptr noundef %0, i32 noundef %.015.i.i) #10 ; 2 uses
  %i.ol = sext i32 %i.ok to i64
  %.not.i.i = icmp sgt i64 %i.of, %i.ol
  br i1 %.not.i.i, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !56

.loopexit.i:                                      ; preds = %bb.aj, %.lr.ph.i281
  %indvars.iv.next.i284 = add nuw nsw i64 %indvars.iv.i283, 1 ; 2 uses
  %exitcond.not.i285 = icmp eq i64 %indvars.iv.next.i284, %wide.trip.count.i282
  br i1 %exitcond.not.i285, label %bb.ak, label %.lr.ph.i281, !llvm.loop !57

bb.ak:                                            ; preds = %.loopexit.i
  %i.om = load i32, ptr %i.jh, align 4, !tbaa !51
  %i.on = load i32, ptr %i.ji, align 8, !tbaa !52
  %i.oo = sub i32 %i.om, %i.on                    ; 3 uses
  %.not433 = icmp slt i32 %i.oo, %.1220509
  %.1220.mux = tail call i32 @llvm.smin.i32(i32 %i.oo, i32 %.1220509)
  br i1 %.not433, label %.lr.ph.i289, label %updateUB.exit

.thread:                                          ; preds = %bb.ai
  %i.op = load i32, ptr %i.jh, align 4, !tbaa !51
  %i.oq = load i32, ptr %i.ji, align 8, !tbaa !52
  %i.or = sub i32 %i.op, %i.oq
  %spec.select428 = tail call i32 @llvm.smin.i32(i32 %i.or, i32 %.1220509)
  br label %updateUB.exit

.lr.ph.i289:                                      ; preds = %bb.ak
  %i.os = load ptr, ptr %i.jn, align 8, !tbaa !29
  %scevgep = getelementptr i8, ptr %i.os, i64 %i.jr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.fs, ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i64 %i.jw, i1 false), !tbaa !30
  br label %updateUB.exit

updateUB.exit:                                    ; preds = %.lr.ph.i289, %.thread, %bb.ak
  %.015.i = phi i32 [ %.1220.mux, %bb.ak ], [ %spec.select428, %.thread ], [ %i.oo, %.lr.ph.i289 ] ; 2 uses
  br i1 %i.kq, label %.lr.ph502, label %.loopexit438

.lr.ph502:                                        ; preds = %updateUB.exit
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %i.ki
  br label %bb.al

bb.al:                                            ; preds = %.lr.ph502, %checkSymmInfo.exit
  %indvars.iv570 = phi i64 [ %i.kh, %.lr.ph502 ], [ %indvars.iv.next571.pre-phi, %checkSymmInfo.exit ] ; 6 uses
  %.2501 = phi i32 [ %.015.i, %.lr.ph502 ], [ %.3, %checkSymmInfo.exit ] ; 6 uses
  %.1225500 = phi i32 [ %.0224508, %.lr.ph502 ], [ %.2226, %checkSymmInfo.exit ] ; 10 uses
  %i.ou = load ptr, ptr %i.a, align 8, !tbaa !8   ; 2 uses
  %i.ov = trunc nuw nsw i64 %indvars.iv570 to i32
  %i.ow = add i32 %i.jq, %i.ov
  %i.ox = sext i32 %i.ow to i64                   ; 2 uses
  %i.oy = getelementptr inbounds [56 x i8], ptr %i.ou, i64 %i.ox
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 16
  %i.pa = load i32, ptr %i.oz, align 8, !tbaa !27
  %i.pb = icmp eq i32 %i.pa, 1
  %.pre586.a = load ptr, ptr %i.jn, align 8, !tbaa !29 ; 7 uses
  %.pre587 = load ptr, ptr %i.jo, align 8, !tbaa !28 ; 2 uses
  br i1 %i.pb, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.pc = getelementptr inbounds [4 x i8], ptr %.pre586.a, i64 %i.ox
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !30
  %i.pe = sext i32 %i.pd to i64
  %i.pf = getelementptr inbounds [8 x i8], ptr %.pre587, i64 %i.pe
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !31
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 4
  %i.pi = load i32, ptr %i.ph, align 4, !tbaa !32
  %i.pj = icmp eq i32 %i.pi, 1
  br i1 %i.pj, label %.checkSymmInfo.exit_crit_edge, label %bb.an

.checkSymmInfo.exit_crit_edge:                    ; preds = %bb.am
  %.pre589 = add nsw i64 %indvars.iv570, -1
  br label %checkSymmInfo.exit

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.pk = getelementptr inbounds [4 x i8], ptr %.pre586.a, i64 %i.kr
  %i.pl = load i32, ptr %i.pk, align 4, !tbaa !30
  %i.pm = sext i32 %i.pl to i64
  %i.pn = getelementptr inbounds [8 x i8], ptr %.pre587, i64 %i.pm
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !31
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 4
  %i.pq = load i32, ptr %i.pp, align 4, !tbaa !32
  %i.pr = icmp eq i32 %i.pq, 1
  %.neg.i294 = sext i1 %i.pr to i32
  %i.ps = getelementptr inbounds [56 x i8], ptr %i.ou, i64 %i.kr
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 16
  %i.pu = load i32, ptr %i.pt, align 8, !tbaa !27
  %i.pv = add i32 %i.pu, %i.kx
  %i.pw = add i32 %i.pv, %.neg.i294               ; 2 uses
  br i1 %.not18.i, label %.preheader59.i, label %.lr.ph.i295.preheader

.lr.ph.i295.preheader:                            ; preds = %bb.an
  br i1 %lcmp.mod705.not, label %.lr.ph.i295.prol.loopexit, label %.lr.ph.i295.prol

.lr.ph.i295.prol:                                 ; preds = %.lr.ph.i295.preheader, %.lr.ph.i295.prol
  %indvars.iv.i296.prol = phi i64 [ %indvars.iv.next.i297.prol, %.lr.ph.i295.prol ], [ %.lcssa461, %.lr.ph.i295.preheader ] ; 2 uses
  %prol.iter706 = phi i32 [ %prol.iter706.next, %.lr.ph.i295.prol ], [ 0, %.lr.ph.i295.preheader ]
  %i.px = getelementptr inbounds [4 x i8], ptr %.pre586.a, i64 %indvars.iv.i296.prol
  %i.py = load i32, ptr %i.px, align 4, !tbaa !30
  %i.pz = sext i32 %i.py to i64
  %i.qa = getelementptr inbounds i8, ptr %i.fv, i64 %i.pz
  store i8 0, ptr %i.qa, align 1, !tbaa !58
  %indvars.iv.next.i297.prol = add nsw i64 %indvars.iv.i296.prol, 1 ; 2 uses
  %prol.iter706.next = add i32 %prol.iter706, 1   ; 2 uses
  %prol.iter706.cmp.not = icmp eq i32 %prol.iter706.next, %xtraiter704
  br i1 %prol.iter706.cmp.not, label %.lr.ph.i295.prol.loopexit, label %.lr.ph.i295.prol, !llvm.loop !59

.lr.ph.i295.prol.loopexit:                        ; preds = %.lr.ph.i295.prol, %.lr.ph.i295.preheader
  %indvars.iv.i296.unr = phi i64 [ %.lcssa461, %.lr.ph.i295.preheader ], [ %indvars.iv.next.i297.prol, %.lr.ph.i295.prol ]
  br i1 %i.kf, label %.preheader59.i, label %.lr.ph.i295

.preheader59.i:                                   ; preds = %.lr.ph.i295.prol.loopexit, %.lr.ph.i295, %bb.an
  br i1 %.not5662.i, label %.preheader.i302, label %.lr.ph64.i.preheader

.lr.ph64.i.preheader:                             ; preds = %.preheader59.i
  br i1 %lcmp.mod708.not, label %.lr.ph64.i.prol.loopexit, label %.lr.ph64.i.prol

.lr.ph64.i.prol:                                  ; preds = %.lr.ph64.i.preheader, %.lr.ph64.i.prol
  %indvars.iv85.i.prol = phi i64 [ %indvars.iv.next86.i.prol, %.lr.ph64.i.prol ], [ %i.ki, %.lr.ph64.i.preheader ] ; 2 uses
  %prol.iter709 = phi i32 [ %prol.iter709.next, %.lr.ph64.i.prol ], [ 0, %.lr.ph64.i.preheader ]
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %indvars.iv85.i.prol
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !30
  %i.qd = zext i32 %i.qc to i64
  %i.qe = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.qd
  store i8 1, ptr %i.qe, align 1, !tbaa !58
  %indvars.iv.next86.i.prol = add nuw nsw i64 %indvars.iv85.i.prol, 1 ; 2 uses
  %prol.iter709.next = add i32 %prol.iter709, 1   ; 2 uses
  %prol.iter709.cmp.not = icmp eq i32 %prol.iter709.next, %xtraiter707
  br i1 %prol.iter709.cmp.not, label %.lr.ph64.i.prol.loopexit, label %.lr.ph64.i.prol, !llvm.loop !60

.lr.ph64.i.prol.loopexit:                         ; preds = %.lr.ph64.i.prol, %.lr.ph64.i.preheader
  %indvars.iv85.i.unr = phi i64 [ %i.ki, %.lr.ph64.i.preheader ], [ %indvars.iv.next86.i.prol, %.lr.ph64.i.prol ]
  br i1 %i.ks, label %.preheader.thread.i, label %.lr.ph64.i

.lr.ph.i295:                                      ; preds = %.lr.ph.i295.prol.loopexit, %.lr.ph.i295
  %indvars.iv.i296 = phi i64 [ %indvars.iv.next.i297.3, %.lr.ph.i295 ], [ %indvars.iv.i296.unr, %.lr.ph.i295.prol.loopexit ] ; 5 uses
  %i.qf = getelementptr inbounds [4 x i8], ptr %.pre586.a, i64 %indvars.iv.i296
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !30
  %i.qh = sext i32 %i.qg to i64
  %i.qi = getelementptr inbounds i8, ptr %i.fv, i64 %i.qh
  store i8 0, ptr %i.qi, align 1, !tbaa !58
  %i.qj = getelementptr [4 x i8], ptr %.pre586.a, i64 %indvars.iv.i296
  %i.qk = getelementptr i8, ptr %i.qj, i64 4
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !30
  %i.qm = sext i32 %i.ql to i64
  %i.qn = getelementptr inbounds i8, ptr %i.fv, i64 %i.qm
  store i8 0, ptr %i.qn, align 1, !tbaa !58
  %i.qo = getelementptr [4 x i8], ptr %.pre586.a, i64 %indvars.iv.i296
  %i.qp = getelementptr i8, ptr %i.qo, i64 8
  %i.qq = load i32, ptr %i.qp, align 4, !tbaa !30
  %i.qr = sext i32 %i.qq to i64
  %i.qs = getelementptr inbounds i8, ptr %i.fv, i64 %i.qr
  store i8 0, ptr %i.qs, align 1, !tbaa !58
  %i.qt = getelementptr [4 x i8], ptr %.pre586.a, i64 %indvars.iv.i296
  %i.qu = getelementptr i8, ptr %i.qt, i64 12
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !30
  %i.qw = sext i32 %i.qv to i64
  %i.qx = getelementptr inbounds i8, ptr %i.fv, i64 %i.qw
  store i8 0, ptr %i.qx, align 1, !tbaa !58
  %indvars.iv.next.i297.3 = add nsw i64 %indvars.iv.i296, 4 ; 2 uses
  %lftr.wideiv.i298.3 = trunc i64 %indvars.iv.next.i297.3 to i32
  %exitcond.not.i299.3 = icmp eq i32 %.2232491, %lftr.wideiv.i298.3
  br i1 %exitcond.not.i299.3, label %.preheader59.i, label %.lr.ph.i295, !llvm.loop !61

.preheader.i302:                                  ; preds = %.preheader59.i
  %i.qy = icmp slt i32 %.1225500, 1
  br i1 %i.qy, label %._crit_edge72.i, label %.lr.ph81.i

.preheader.thread.i:                              ; preds = %.lr.ph64.i, %.lr.ph64.i.prol.loopexit
  %i.qz = icmp sgt i32 %.1225500, 0
  br i1 %i.qz, label %.lr.ph67.preheader.i, label %._crit_edge72.i

.lr.ph67.preheader.i:                             ; preds = %.preheader.thread.i
  %wide.trip.count.i300 = zext nneg i32 %.1225500 to i64
  br label %.lr.ph67.i

.lr.ph64.i:                                       ; preds = %.lr.ph64.i.prol.loopexit, %.lr.ph64.i
  %indvars.iv85.i = phi i64 [ %indvars.iv.next86.i.3, %.lr.ph64.i ], [ %indvars.iv85.i.unr, %.lr.ph64.i.prol.loopexit ] ; 5 uses
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %indvars.iv85.i
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !30
  %i.rc = zext i32 %i.rb to i64
  %i.rd = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.rc
  store i8 1, ptr %i.rd, align 1, !tbaa !58
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %indvars.iv85.i
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 4
  %i.rg = load i32, ptr %i.rf, align 4, !tbaa !30
  %i.rh = zext i32 %i.rg to i64
  %i.ri = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.rh
  store i8 1, ptr %i.ri, align 1, !tbaa !58
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %indvars.iv85.i
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 8
  %i.rl = load i32, ptr %i.rk, align 4, !tbaa !30
  %i.rm = zext i32 %i.rl to i64
  %i.rn = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.rm
  store i8 1, ptr %i.rn, align 1, !tbaa !58
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %indvars.iv85.i
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 12
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !30
  %i.rr = zext i32 %i.rq to i64
  %i.rs = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.rr
  store i8 1, ptr %i.rs, align 1, !tbaa !58
  %indvars.iv.next86.i.3 = add nuw nsw i64 %indvars.iv85.i, 4 ; 2 uses
  %lftr.wideiv88.i.3 = trunc i64 %indvars.iv.next86.i.3 to i32
  %exitcond89.not.i.3 = icmp eq i32 %i.bb, %lftr.wideiv88.i.3
  br i1 %exitcond89.not.i.3, label %.preheader.thread.i, label %.lr.ph64.i, !llvm.loop !62

.lr.ph67.i:                                       ; preds = %bb.aq, %.lr.ph67.preheader.i
  %indvars.iv95.i = phi i64 [ 0, %.lr.ph67.preheader.i ], [ %indvars.iv.next96.i, %bb.aq ] ; 3 uses
  %i.rt = getelementptr inbounds nuw [8 x i8], ptr %.0215519, i64 %indvars.iv95.i
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !39
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ap, %.lr.ph67.i
  %indvars.iv90.i = phi i64 [ %i.ki, %.lr.ph67.i ], [ %indvars.iv.next91.i, %bb.ap ] ; 3 uses
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %i.ru, i64 %indvars.iv90.i
  %i.rw = load i32, ptr %i.rv, align 4, !tbaa !30
  %i.rx = zext i32 %i.rw to i64
  %i.ry = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.rx
  %i.rz = load i8, ptr %i.ry, align 1, !tbaa !58
  %i.sa = icmp eq i8 %i.rz, 0
  br i1 %i.sa, label %._crit_edge.i301, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %indvars.iv.next91.i = add nuw nsw i64 %indvars.iv90.i, 1 ; 2 uses
  %lftr.wideiv93.i = trunc i64 %indvars.iv.next91.i to i32
  %exitcond94.not.i = icmp eq i32 %i.bb, %lftr.wideiv93.i
  br i1 %exitcond94.not.i, label %._crit_edge72.loopexit.i, label %bb.ao, !llvm.loop !63

._crit_edge.i301:                                 ; preds = %bb.ao
  %i.sb = trunc nsw i64 %indvars.iv90.i to i32
  %i.sc = icmp eq i32 %i.bb, %i.sb
  br i1 %i.sc, label %._crit_edge72.loopexit.i, label %bb.aq

bb.aq:                                            ; preds = %._crit_edge.i301
  %indvars.iv.next96.i = add nuw nsw i64 %indvars.iv95.i, 1 ; 2 uses
  %exitcond98.not.i = icmp eq i64 %indvars.iv.next96.i, %wide.trip.count.i300
  br i1 %exitcond98.not.i, label %.lr.ph81.i, label %.lr.ph67.i, !llvm.loop !64

._crit_edge72.loopexit.i:                         ; preds = %._crit_edge.i301, %bb.ap
  %i.sd = trunc nuw nsw i64 %indvars.iv95.i to i32
  br label %._crit_edge72.i

._crit_edge72.i:                                  ; preds = %._crit_edge72.loopexit.i, %.preheader.thread.i, %.preheader.i302
  %.2.lcssa.i = phi i32 [ 0, %.preheader.i302 ], [ 0, %.preheader.thread.i ], [ %i.sd, %._crit_edge72.loopexit.i ] ; 3 uses
  %i.se = icmp eq i32 %.2.lcssa.i, %.1225500
  br i1 %i.se, label %.lr.ph81.i, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge72.i
  %i.sf = zext nneg i32 %.2.lcssa.i to i64
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %.0211521, i64 %i.sf
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !30
  %i.si = icmp slt i32 %i.pw, %i.sh
  br i1 %i.si, label %.lr.ph81.i, label %updateEntry.exit

.lr.ph81.i:                                       ; preds = %bb.aq, %.preheader.i302, %._crit_edge72.i, %bb.ar
  %i.sj = phi i32 [ 1, %._crit_edge72.i ], [ 0, %bb.ar ], [ 1, %.preheader.i302 ], [ 1, %bb.aq ]
  %.2.lcssa110.i = phi i32 [ %.1225500, %._crit_edge72.i ], [ %.2.lcssa.i, %bb.ar ], [ %.1225500, %.preheader.i302 ], [ %.1225500, %bb.aq ]
  %.pre.i = zext nneg i32 %.2.lcssa110.i to i64   ; 2 uses
  %i.sk = getelementptr inbounds nuw [8 x i8], ptr %.0215519, i64 %.pre.i
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !39 ; 7 uses
  %i.sm = ptrtoaddr ptr %i.sl to i64
  %i.sn = sub i64 %i.kv, %i.sm
  %diff.check649 = icmp ugt i64 %i.sn, -32
  %or.cond665 = select i1 %min.iters.check651, i1 true, i1 %diff.check649
  br i1 %or.cond665, label %scalar.ph650.preheader, label %vector.body654

vector.body654:                                   ; preds = %.lr.ph81.i, %vector.body654
  %index655 = phi i64 [ %index.next658, %vector.body654 ], [ 0, %.lr.ph81.i ] ; 3 uses
  %i.so = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %index655 ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 16
  %wide.load656.a = load <4 x i32>, ptr %i.so, align 4, !tbaa !30
  %wide.load657 = load <4 x i32>, ptr %i.sp, align 4, !tbaa !30
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %i.sl, i64 %index655 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 16
  store <4 x i32> %wide.load656.a, ptr %i.sq, align 4, !tbaa !30
  store <4 x i32> %wide.load657, ptr %i.sr, align 4, !tbaa !30
  %index.next658 = add nuw i64 %index655, 8       ; 2 uses
  %i.ss = icmp eq i64 %index.next658, %n.vec653
  br i1 %i.ss, label %middle.block659, label %vector.body654, !llvm.loop !65

middle.block659:                                  ; preds = %vector.body654
  br i1 %cmp.n660, label %._crit_edge82.i, label %scalar.ph650.preheader

scalar.ph650.preheader:                           ; preds = %.lr.ph81.i, %middle.block659
  %indvars.iv99.i.ph = phi i64 [ 0, %.lr.ph81.i ], [ %n.vec653, %middle.block659 ] ; 3 uses
  br i1 %lcmp.mod711.not, label %scalar.ph650.prol.loopexit, label %scalar.ph650.prol

scalar.ph650.prol:                                ; preds = %scalar.ph650.preheader, %scalar.ph650.prol
  %indvars.iv99.i.prol = phi i64 [ %indvars.iv.next100.i.prol, %scalar.ph650.prol ], [ %indvars.iv99.i.ph, %scalar.ph650.preheader ] ; 3 uses
  %prol.iter712 = phi i64 [ %prol.iter712.next, %scalar.ph650.prol ], [ 0, %scalar.ph650.preheader ]
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %indvars.iv99.i.prol
  %i.su = load i32, ptr %i.st, align 4, !tbaa !30
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %i.sl, i64 %indvars.iv99.i.prol
  store i32 %i.su, ptr %i.sv, align 4, !tbaa !30
  %indvars.iv.next100.i.prol = add nuw nsw i64 %indvars.iv99.i.prol, 1 ; 2 uses
  %prol.iter712.next = add i64 %prol.iter712, 1   ; 2 uses
  %prol.iter712.cmp.not = icmp eq i64 %prol.iter712.next, %xtraiter710
  br i1 %prol.iter712.cmp.not, label %scalar.ph650.prol.loopexit, label %scalar.ph650.prol, !llvm.loop !66

scalar.ph650.prol.loopexit:                       ; preds = %scalar.ph650.prol, %scalar.ph650.preheader
  %indvars.iv99.i.unr = phi i64 [ %indvars.iv99.i.ph, %scalar.ph650.preheader ], [ %indvars.iv.next100.i.prol, %scalar.ph650.prol ]
  %i.sw = sub nsw i64 %indvars.iv99.i.ph, %wide.trip.count.i282
  %i.sx = icmp ugt i64 %i.sw, -4
  br i1 %i.sx, label %._crit_edge82.i, label %scalar.ph650

scalar.ph650:                                     ; preds = %scalar.ph650.prol.loopexit, %scalar.ph650
  %indvars.iv99.i = phi i64 [ %indvars.iv.next100.i.3, %scalar.ph650 ], [ %indvars.iv99.i.unr, %scalar.ph650.prol.loopexit ] ; 6 uses
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %indvars.iv99.i
  %i.sz = load i32, ptr %i.sy, align 4, !tbaa !30
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %i.sl, i64 %indvars.iv99.i
  store i32 %i.sz, ptr %i.ta, align 4, !tbaa !30
  %indvars.iv.next100.i = add nuw nsw i64 %indvars.iv99.i, 1 ; 2 uses
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %indvars.iv.next100.i
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !30
  %i.td = getelementptr inbounds nuw [4 x i8], ptr %i.sl, i64 %indvars.iv.next100.i
  store i32 %i.tc, ptr %i.td, align 4, !tbaa !30
  %indvars.iv.next100.i.1 = add nuw nsw i64 %indvars.iv99.i, 2 ; 2 uses
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %indvars.iv.next100.i.1
  %i.tf = load i32, ptr %i.te, align 4, !tbaa !30
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %i.sl, i64 %indvars.iv.next100.i.1
  store i32 %i.tf, ptr %i.tg, align 4, !tbaa !30
  %indvars.iv.next100.i.2 = add nuw nsw i64 %indvars.iv99.i, 3 ; 2 uses
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %indvars.iv.next100.i.2
  %i.ti = load i32, ptr %i.th, align 4, !tbaa !30
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %i.sl, i64 %indvars.iv.next100.i.2
  store i32 %i.ti, ptr %i.tj, align 4, !tbaa !30
  %indvars.iv.next100.i.3 = add nuw nsw i64 %indvars.iv99.i, 4 ; 2 uses
  %exitcond103.not.i.3 = icmp eq i64 %indvars.iv.next100.i.3, %wide.trip.count.i282
  br i1 %exitcond103.not.i.3, label %._crit_edge82.i, label %scalar.ph650, !llvm.loop !67

._crit_edge82.i:                                  ; preds = %scalar.ph650.prol.loopexit, %scalar.ph650, %middle.block659
  %i.tk = getelementptr inbounds nuw [4 x i8], ptr %.0211521, i64 %.pre.i
  store i32 %i.pw, ptr %i.tk, align 4, !tbaa !30
  %i.tl = add nsw i32 %i.sj, %.1225500
  br label %updateEntry.exit

updateEntry.exit:                                 ; preds = %bb.ar, %._crit_edge82.i
  %.053.i = phi i32 [ %i.tl, %._crit_edge82.i ], [ %.1225500, %bb.ar ] ; 5 uses
  %i.tm = icmp eq i64 %indvars.iv570, 0
  br i1 %i.tm, label %.loopexit438, label %bb.as

bb.as:                                            ; preds = %updateEntry.exit
  %i.tn = add nsw i64 %indvars.iv570, -1          ; 6 uses
  %i.to = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %i.tn
  %i.tp = load i32, ptr %i.to, align 4, !tbaa !30 ; 5 uses
  %.pn14.i = sext i32 %i.tp to i64
  %.0.in15.i = getelementptr inbounds [4 x i8], ptr %i.fx, i64 %.pn14.i
  %.016.i = load i32, ptr %.0.in15.i, align 4, !tbaa !30 ; 2 uses
  %.not17.i = icmp eq i32 %.016.i, %i.tp
  br i1 %.not17.i, label %.lr.ph.preheader.i, label %.lr.ph.i304

.lr.ph.i304:                                      ; preds = %bb.as, %bb.au
  %.018.i = phi i32 [ %.0.i307, %bb.au ], [ %.016.i, %bb.as ] ; 3 uses
  %i.tq = icmp slt i32 %i.tp, %.018.i
  br i1 %i.tq, label %bb.at, label %.lr.ph._crit_edge.i

.lr.ph._crit_edge.i:                              ; preds = %.lr.ph.i304
  %.pre.i305 = sext i32 %.018.i to i64
  br label %bb.au

bb.at:                                            ; preds = %.lr.ph.i304
  %i.tr = load ptr, ptr %i.jp, align 8, !tbaa !55
  %i.ts = sext i32 %.018.i to i64                 ; 2 uses
  %i.tt = getelementptr inbounds [4 x i8], ptr %i.tr, i64 %i.ts
  %i.tu = load i32, ptr %i.tt, align 4, !tbaa !30
  %i.tv = sext i32 %i.tu to i64
  %.not13.i = icmp slt i64 %i.ki, %i.tv
  br i1 %.not13.i, label %bb.au, label %checkSymmInfo.exit

bb.au:                                            ; preds = %bb.at, %.lr.ph._crit_edge.i
  %.pn.pre-phi.i = phi i64 [ %.pre.i305, %.lr.ph._crit_edge.i ], [ %i.ts, %bb.at ]
  %.0.in.i306 = getelementptr inbounds [4 x i8], ptr %i.fx, i64 %.pn.pre-phi.i
  %.0.i307 = load i32, ptr %.0.in.i306, align 4, !tbaa !30 ; 2 uses
  %.not.i = icmp eq i32 %.0.i307, %i.tp
  br i1 %.not.i, label %.lr.ph.preheader.i, label %.lr.ph.i304, !llvm.loop !68

.lr.ph.preheader.i:                               ; preds = %bb.au, %bb.as
  %i.tw = shl nuw nsw i64 %i.tn, 2
  %scevgep.i = getelementptr i8, ptr %i.ku, i64 %i.tw ; 2 uses
  %scevgep14.i = getelementptr i8, ptr %scevgep.i, i64 4
  %i.tx = sub i64 %i.ki, %indvars.iv570
  %i.ty = shl i64 %i.tx, 2
  %i.tz = and i64 %i.ty, 17179869180
  %i.ua = add nuw nsw i64 %i.tz, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 4 dereferenceable(1) %scevgep14.i, i64 %i.ua, i1 false), !tbaa !30
  store i32 %i.tp, ptr %i.ot, align 4, !tbaa !30
  br i1 %.not18.i, label %.thread346, label %.lr.ph.i311

.lr.ph.i311:                                      ; preds = %.lr.ph.preheader.i, %.loopexit.i319
  %indvars.iv.i313 = phi i64 [ %indvars.iv.next.i320, %.loopexit.i319 ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %indvars.iv.i313
  %i.uc = load i32, ptr %i.ub, align 4, !tbaa !30
  %i.ud = load ptr, ptr %i.jp, align 8, !tbaa !55
  %i.ue = zext i32 %i.uc to i64
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr %i.ud, i64 %i.ue
  %i.ug = load i32, ptr %i.uf, align 4, !tbaa !30 ; 2 uses
  %i.uh = add nsw i64 %indvars.iv.i313, %.lcssa461 ; 2 uses
  %i.ui = tail call i32 @cuddNextLow(ptr noundef %0, i32 noundef %i.ug) #10 ; 2 uses
  %i.uj = sext i32 %i.ui to i64
  %.not13.i.i314 = icmp sgt i64 %i.uh, %i.uj
  br i1 %.not13.i.i314, label %.loopexit.i319, label %.lr.ph.i.i315

.lr.ph.i.i315:                                    ; preds = %.lr.ph.i311, %bb.av
  %.015.i.i316 = phi i32 [ %i.um, %bb.av ], [ %i.ui, %.lr.ph.i311 ] ; 3 uses
  %.01214.i.i317 = phi i32 [ %.015.i.i316, %bb.av ], [ %i.ug, %.lr.ph.i311 ]
  %i.uk = tail call i32 @cuddSwapInPlace(ptr noundef %0, i32 noundef %.015.i.i316, i32 noundef %.01214.i.i317) #10
  %i.ul = icmp eq i32 %i.uk, 0
  br i1 %i.ul, label %ddShuffle.exit.thread348, label %bb.av

bb.av:                                            ; preds = %.lr.ph.i.i315
  %i.um = tail call i32 @cuddNextLow(ptr noundef %0, i32 noundef %.015.i.i316) #10 ; 2 uses
  %i.un = sext i32 %i.um to i64
  %.not.i.i318 = icmp sgt i64 %i.uh, %i.un
  br i1 %.not.i.i318, label %.loopexit.i319, label %.lr.ph.i.i315, !llvm.loop !56

.loopexit.i319:                                   ; preds = %bb.av, %.lr.ph.i311
  %indvars.iv.next.i320 = add nuw nsw i64 %indvars.iv.i313, 1 ; 2 uses
  %exitcond.not.i321 = icmp eq i64 %indvars.iv.next.i320, %wide.trip.count.i282
  br i1 %exitcond.not.i321, label %bb.aw, label %.lr.ph.i311, !llvm.loop !57

bb.aw:                                            ; preds = %.loopexit.i319
  %i.uo = load i32, ptr %i.jh, align 4, !tbaa !51
  %i.up = load i32, ptr %i.ji, align 8, !tbaa !52
  %i.uq = sub i32 %i.uo, %i.up                    ; 3 uses
  %.not435 = icmp slt i32 %i.uq, %.2501
  %.2.mux = tail call i32 @llvm.smin.i32(i32 %i.uq, i32 %.2501)
  br i1 %.not435, label %.lr.ph.i328, label %checkSymmInfo.exit

.thread346:                                       ; preds = %.lr.ph.preheader.i
  %i.ur = load i32, ptr %i.jh, align 4, !tbaa !51
  %i.us = load i32, ptr %i.ji, align 8, !tbaa !52
  %i.ut = sub i32 %i.ur, %i.us
  %spec.select430 = tail call i32 @llvm.smin.i32(i32 %i.ut, i32 %.2501)
  br label %checkSymmInfo.exit

.lr.ph.i328:                                      ; preds = %bb.aw
  %i.uu = load ptr, ptr %i.jn, align 8, !tbaa !29
  %scevgep567 = getelementptr i8, ptr %i.uu, i64 %i.jr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.fs, ptr noundef nonnull align 4 dereferenceable(1) %scevgep567, i64 %i.jw, i1 false), !tbaa !30
  br label %checkSymmInfo.exit

checkSymmInfo.exit:                               ; preds = %bb.at, %.checkSymmInfo.exit_crit_edge, %.lr.ph.i328, %.thread346, %bb.aw
  %indvars.iv.next571.pre-phi = phi i64 [ %.pre589, %.checkSymmInfo.exit_crit_edge ], [ %i.tn, %bb.aw ], [ %i.tn, %.lr.ph.i328 ], [ %i.tn, %.thread346 ], [ %i.tn, %bb.at ]
  %.2226 = phi i32 [ %.1225500, %.checkSymmInfo.exit_crit_edge ], [ %.053.i, %bb.aw ], [ %.053.i, %.lr.ph.i328 ], [ %.053.i, %.thread346 ], [ %.053.i, %bb.at ] ; 2 uses
  %.3 = phi i32 [ %.2501, %.checkSymmInfo.exit_crit_edge ], [ %.2.mux, %bb.aw ], [ %i.uq, %.lr.ph.i328 ], [ %spec.select430, %.thread346 ], [ %.2501, %bb.at ] ; 2 uses
  %i.uv = icmp sgt i64 %indvars.iv570, 0
  br i1 %i.uv, label %bb.al, label %.loopexit438, !llvm.loop !69

.loopexit438:                                     ; preds = %updateEntry.exit, %checkSymmInfo.exit, %updateUB.exit, %computeLB.exit
  %.3227 = phi i32 [ %.0224508, %computeLB.exit ], [ %.0224508, %updateUB.exit ], [ %.053.i, %updateEntry.exit ], [ %.2226, %checkSymmInfo.exit ] ; 2 uses
  %.4 = phi i32 [ %.1220509, %computeLB.exit ], [ %.015.i, %updateUB.exit ], [ %.2501, %updateEntry.exit ], [ %.3, %checkSymmInfo.exit ] ; 2 uses
  %indvars.iv.next575 = add nuw nsw i64 %indvars.iv574, 1 ; 2 uses
  %exitcond579.not = icmp eq i64 %indvars.iv.next575, %wide.trip.count578
  br i1 %exitcond579.not, label %._crit_edge512, label %bb.aa, !llvm.loop !70

._crit_edge512:                                   ; preds = %.loopexit438, %bb.z
  %.0224.lcssa = phi i32 [ 0, %bb.z ], [ %.3227, %.loopexit438 ]
  %.1220.lcssa = phi i32 [ %.0219518, %bb.z ], [ %.4, %.loopexit438 ]
  %indvars.iv.next581 = add nuw nsw i64 %indvars.iv580, 1 ; 2 uses
  %indvars.iv.next569 = add i32 %indvars.iv568, -1
  %exitcond585.not = icmp eq i64 %indvars.iv.next581, %wide.trip.count584
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond585.not, label %._crit_edge525, label %bb.z, !llvm.loop !71

._crit_edge525:                                   ; preds = %._crit_edge512, %._crit_edge496
  %.0215.lcssa = phi ptr [ %i.cu, %._crit_edge496 ], [ %.0213520, %._crit_edge512 ] ; 2 uses
  %.0213.lcssa = phi ptr [ %i.eh, %._crit_edge496 ], [ %.0215519, %._crit_edge512 ] ; 2 uses
  %.0211.lcssa = phi ptr [ %i.ef, %._crit_edge496 ], [ %.0210522, %._crit_edge512 ] ; 2 uses
  %.0210.lcssa = phi ptr [ %i.fo, %._crit_edge496 ], [ %.0211521, %._crit_edge512 ] ; 2 uses
  %i.uw = tail call fastcc i32 @ddShuffle(ptr noundef %0, ptr noundef nonnull %i.fs, i32 noundef %.0236.lcssa464, i32 noundef %.0235.lcssa)
  %i.ux = icmp eq i32 %i.uw, 0
  br i1 %i.ux, label %ddShuffle.exit.thread348, label %bb.ax

bb.ax:                                            ; preds = %._crit_edge525
  tail call fastcc void @freeMatrix(ptr noundef %.0215.lcssa)
  tail call fastcc void @freeMatrix(ptr noundef %.0213.lcssa)
  tail call void @free(ptr noundef nonnull %i.fs) #10
  tail call void @free(ptr noundef %.0210.lcssa) #10
  tail call void @free(ptr noundef %.0211.lcssa) #10
  tail call void @free(ptr noundef %i.fx) #10
  tail call void @free(ptr noundef %i.fv) #10
  br label %bb.bl

ddShuffle.exit.thread348:                         ; preds = %.lr.ph.i.i, %.lr.ph.i.i315, %._crit_edge525, %bb.s, %bb.q, %bb.x, %bb.w, %bb.v, %getMatrix.exit272, %getMatrix.exit
  %.0368 = phi ptr [ null, %bb.s ], [ %i.fs, %bb.x ], [ %i.fs, %bb.w ], [ null, %bb.v ], [ null, %getMatrix.exit272 ], [ null, %getMatrix.exit ], [ null, %bb.q ], [ %i.fs, %.lr.ph.i.i315 ], [ %i.fs, %._crit_edge525 ], [ %i.fs, %.lr.ph.i.i ] ; 2 uses
  %.1366 = phi ptr [ null, %bb.s ], [ %i.fo, %bb.x ], [ %i.fo, %bb.w ], [ %i.fo, %bb.v ], [ null, %getMatrix.exit272 ], [ null, %getMatrix.exit ], [ null, %bb.q ], [ %.0210522, %.lr.ph.i.i315 ], [ %.0210.lcssa, %._crit_edge525 ], [ %.0210522, %.lr.ph.i.i ] ; 2 uses
  %.1212364 = phi ptr [ %i.ef, %bb.s ], [ %i.ef, %bb.x ], [ %i.ef, %bb.w ], [ %i.ef, %bb.v ], [ %i.ef, %getMatrix.exit272 ], [ null, %getMatrix.exit ], [ %i.ef, %bb.q ], [ %.0211521, %.lr.ph.i.i315 ], [ %.0211.lcssa, %._crit_edge525 ], [ %.0211521, %.lr.ph.i.i ] ; 2 uses
  %.1214362 = phi ptr [ null, %bb.s ], [ %i.eh, %bb.x ], [ %i.eh, %bb.w ], [ %i.eh, %bb.v ], [ %i.eh, %getMatrix.exit272 ], [ null, %getMatrix.exit ], [ null, %bb.q ], [ %.0213520, %.lr.ph.i.i315 ], [ %.0213.lcssa, %._crit_edge525 ], [ %.0213520, %.lr.ph.i.i ] ; 3 uses
  %.1216361 = phi ptr [ %i.cu, %bb.s ], [ %i.cu, %bb.x ], [ %i.cu, %bb.w ], [ %i.cu, %bb.v ], [ %i.cu, %getMatrix.exit272 ], [ %i.cu, %getMatrix.exit ], [ %i.cu, %bb.q ], [ %.0215519, %.lr.ph.i.i315 ], [ %.0215.lcssa, %._crit_edge525 ], [ %.0215519, %.lr.ph.i.i ] ; 2 uses
  %.0217359 = phi ptr [ null, %bb.s ], [ null, %bb.x ], [ null, %bb.w ], [ null, %bb.v ], [ null, %getMatrix.exit272 ], [ null, %getMatrix.exit ], [ null, %bb.q ], [ %i.fx, %.lr.ph.i.i315 ], [ %i.fx, %._crit_edge525 ], [ %i.fx, %.lr.ph.i.i ] ; 2 uses
  %.0218357 = phi ptr [ null, %bb.s ], [ %i.fv, %bb.x ], [ null, %bb.w ], [ null, %bb.v ], [ null, %getMatrix.exit272 ], [ null, %getMatrix.exit ], [ null, %bb.q ], [ %i.fv, %.lr.ph.i.i315 ], [ %i.fv, %._crit_edge525 ], [ %i.fv, %.lr.ph.i.i ] ; 2 uses
  %i.uy = load ptr, ptr %.1216361, align 8, !tbaa !39 ; 2 uses
  %.not.i334 = icmp eq ptr %i.uy, null
  br i1 %.not.i334, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %ddShuffle.exit.thread348
  tail call void @free(ptr noundef nonnull %i.uy) #10
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %ddShuffle.exit.thread348
  tail call void @free(ptr noundef nonnull %.1216361) #10
  %.not257 = icmp eq ptr %.1214362, null
  br i1 %.not257, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.uz = load ptr, ptr %.1214362, align 8, !tbaa !39 ; 2 uses
  %.not.i335 = icmp eq ptr %i.uz, null
  br i1 %.not.i335, label %freeMatrix.exit336, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  tail call void @free(ptr noundef nonnull %i.uz) #10
  br label %freeMatrix.exit336

freeMatrix.exit336:                               ; preds = %bb.ba, %bb.bb
  tail call void @free(ptr noundef nonnull %.1214362) #10
  br label %bb.bc

bb.bc:                                            ; preds = %freeMatrix.exit336, %bb.az
  %.not258 = icmp eq ptr %.0368, null
  br i1 %.not258, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  tail call void @free(ptr noundef nonnull %.0368) #10
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.not259 = icmp eq ptr %.1366, null
  br i1 %.not259, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  tail call void @free(ptr noundef nonnull %.1366) #10
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.not260 = icmp eq ptr %.1212364, null
  br i1 %.not260, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  tail call void @free(ptr noundef nonnull %.1212364) #10
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.not261 = icmp eq ptr %.0217359, null
  br i1 %.not261, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  tail call void @free(ptr noundef nonnull %.0217359) #10
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.not262 = icmp eq ptr %.0218357, null
  br i1 %.not262, label %.thread425, label %.thread425.sink.split

.thread425.sink.split:                            ; preds = %bb.bk, %bb.n
  %.sink = phi ptr [ %i.cu, %bb.n ], [ %.0218357, %bb.bk ]
  tail call void @free(ptr noundef nonnull %.sink) #10
  br label %.thread425

.thread425:                                       ; preds = %.thread425.sink.split, %getMaxBinomial.exit.thread338, %bb.m, %._crit_edge, %getMaxBinomial.exit, %bb.f, %bb.bk
  %i.va = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i32 1, ptr %i.va, align 8, !tbaa !72
  br label %bb.bl

bb.bl:                                            ; preds = %.critedge2, %.thread425, %bb.ax
  %.0237 = phi i32 [ 1, %bb.ax ], [ 0, %.thread425 ], [ 1, %.critedge2 ]
  ret i32 %.0237
}

declare i32 @cuddSymmSiftingConv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind memory(readwrite, argmem: read, target_mem: none) uwtable
define internal fastcc noundef ptr @initSymmInfo(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load i32, ptr %i.a, align 8, !tbaa !36
  %i.c = sext i32 %i.b to i64
  %i.d = shl nsw i64 %i.c, 2
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #11 ; 5 uses
  %i.f = icmp eq ptr %i.e, null
  %.not18 = icmp sgt i32 %1, %2
  %or.cond = or i1 %i.f, %.not18
  br i1 %or.cond, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !29   ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !8    ; 3 uses
  %i.k = sext i32 %1 to i64                       ; 4 uses
  %i.l = add i32 %2, 1                            ; 2 uses
  %i.m = sub i32 %i.l, %1
  %xtraiter = and i32 %i.m, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.n = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.k
  %i.o = load i32, ptr %i.n, align 4, !tbaa !30
  %i.p = getelementptr inbounds [56 x i8], ptr %i.j, i64 %i.k
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !73
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !30
  %i.v = sext i32 %i.o to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.v
  store i32 %i.u, ptr %i.w, align 4, !tbaa !30
  %indvars.iv.next.prol = add nsw i64 %i.k, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.k, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %i.x = icmp eq i32 %2, %1
  br i1 %i.x, label %.loopexit, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 4 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.z = load i32, ptr %i.y, align 4, !tbaa !30
  %i.aa = getelementptr inbounds [56 x i8], ptr %i.j, i64 %indvars.iv
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 28
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !73
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !30
  %i.ag = sext i32 %i.z to i64
end_hunk_0
