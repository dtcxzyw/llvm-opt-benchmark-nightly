inline.NumInlined: 82
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@zend_strtod:bb.a
bb.az:                                            ; preds = %bb.ax
  %i.ho = sext i32 %i.hm to i64
  %i.hp = getelementptr inbounds [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1856), i64 %i.ho ; 2 uses
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !12
  store ptr %i.hq, ptr %.1377, align 8, !tbaa !15
  store ptr %.1377, ptr %i.hp, align 8, !tbaa !12
  br label %Bfree.exit580

Bfree.exit580:                                    ; preds = %bb.az, %bb.ay, %Bfree.exit578
  %i.hr = getelementptr inbounds nuw i8, ptr %.1382, i64 8
  %i.hs = load i32, ptr %i.hr, align 8, !tbaa !64 ; 2 uses
  %i.ht = icmp sgt i32 %i.hs, 7
  br i1 %i.ht, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %Bfree.exit580
  tail call void @free(ptr noundef nonnull %.1382) #14
  br label %Bfree.exit582

bb.bb:                                            ; preds = %Bfree.exit580
  %i.hu = sext i32 %i.hs to i64
  %i.hv = getelementptr inbounds [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1856), i64 %i.hu ; 2 uses
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !12
  store ptr %i.hw, ptr %.1382, align 8, !tbaa !15
  store ptr %.1382, ptr %i.hv, align 8, !tbaa !12
  br label %Bfree.exit582

Bfree.exit582:                                    ; preds = %bb.ba, %bb.bb
  %.not.i583 = icmp eq ptr %.1, null
  br i1 %.not.i583, label %Bfree.exit584, label %bb.bc

bb.bc:                                            ; preds = %Bfree.exit582
  %i.hx = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.hy = load i32, ptr %i.hx, align 8, !tbaa !64 ; 2 uses
  %i.hz = icmp sgt i32 %i.hy, 7
  br i1 %i.hz, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  tail call void @free(ptr noundef nonnull %.1) #14
  br label %Bfree.exit584

bb.be:                                            ; preds = %bb.bc
  %i.ia = sext i32 %i.hy to i64
  %i.ib = getelementptr inbounds [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1856), i64 %i.ia ; 2 uses
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !12
  store ptr %i.ic, ptr %.1, align 8, !tbaa !15
  store ptr %.1, ptr %i.ib, align 8, !tbaa !12
  br label %Bfree.exit584

bb.bf:                                            ; preds = %bb.ao
  %i.id = icmp samesign ugt i32 %i.gl, 31
  br i1 %i.id, label %.lr.ph907.preheader, label %._crit_edge908

.lr.ph907.preheader:                              ; preds = %bb.bf
  %i.ie = lshr i32 %i.gl, 4
  %.promoted1316 = load double, ptr %2, align 8
  br label %.lr.ph907

.lr.ph907:                                        ; preds = %.lr.ph907.preheader, %bb.bh
  %i.if = phi double [ %.promoted1316, %.lr.ph907.preheader ], [ %i.ip, %bb.bh ]
  %i.ig = phi i32 [ %i.gv, %.lr.ph907.preheader ], [ %i.iq, %bb.bh ]
  %indvars.iv1037 = phi i64 [ 0, %.lr.ph907.preheader ], [ %indvars.iv.next1038, %bb.bh ] ; 2 uses
  %.0475904 = phi i32 [ %i.ie, %.lr.ph907.preheader ], [ %i.is, %bb.bh ] ; 3 uses
  %i.ih = phi double [ %.promoted903, %.lr.ph907.preheader ], [ %i.ir, %bb.bh ] ; 2 uses
  %i.ii = and i32 %.0475904, 1
  %.not556 = icmp eq i32 %i.ii, 0
  br i1 %.not556, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph907
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr @bigtens, i64 %indvars.iv1037
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !62
  %i.il = fmul double %i.ik, %i.ih                ; 3 uses
  %i.im = bitcast double %i.il to i64
  %i.in = lshr i64 %i.im, 32
  %i.io = trunc nuw i64 %i.in to i32
  br label %bb.bh

bb.bh:                                            ; preds = %.lr.ph907, %bb.bg
  %i.ip = phi double [ %i.if, %.lr.ph907 ], [ %i.il, %bb.bg ] ; 2 uses
  %i.iq = phi i32 [ %i.ig, %.lr.ph907 ], [ %i.io, %bb.bg ] ; 2 uses
  %i.ir = phi double [ %i.ih, %.lr.ph907 ], [ %i.il, %bb.bg ]
  %indvars.iv.next1038 = add nuw nsw i64 %indvars.iv1037, 1 ; 2 uses
  %i.is = lshr i32 %.0475904, 1
  %i.it = icmp samesign ugt i32 %.0475904, 3
  br i1 %i.it, label %.lr.ph907, label %._crit_edge908.loopexit, !llvm.loop !65

._crit_edge908.loopexit:                          ; preds = %bb.bh
  store double %i.ip, ptr %2, align 8
  br label %._crit_edge908

._crit_edge908:                                   ; preds = %._crit_edge908.loopexit, %bb.bf
  %i.iu = phi i32 [ %i.gv, %bb.bf ], [ %i.iq, %._crit_edge908.loopexit ]
  %.0460.lcssa = phi i64 [ 0, %bb.bf ], [ %indvars.iv.next1038, %._crit_edge908.loopexit ]
  %i.iv = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.iw = add i32 %i.iu, -55574528
  store i32 %i.iw, ptr %i.iv, align 4, !tbaa !54
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr @bigtens, i64 %.0460.lcssa
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !62
  %i.iz = load double, ptr %2, align 8, !tbaa !54
  %i.ja = fmul double %i.iy, %i.iz                ; 2 uses
  store double %i.ja, ptr %2, align 8, !tbaa !54
  %i.jb = bitcast double %i.ja to i64
  %i.jc = lshr i64 %i.jb, 32
  %i.jd = trunc nuw i64 %i.jc to i32              ; 2 uses
  %i.je = and i32 %i.jd, 2146435072               ; 2 uses
  %i.jf = icmp samesign ugt i32 %i.je, 2090860544
  br i1 %i.jf, label %.loopexit, label %bb.bi

bb.bi:                                            ; preds = %._crit_edge908
  %i.jg = icmp samesign ugt i32 %i.je, 2089811968
  br i1 %i.jg, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  store i32 2146435071, ptr %i.iv, align 4, !tbaa !54
  store i32 -1, ptr %2, align 8, !tbaa !54
  br label %bb.ce

bb.bk:                                            ; preds = %bb.bi
  %i.jh = add i32 %i.jd, 55574528
  store i32 %i.jh, ptr %i.iv, align 4, !tbaa !54
  br label %bb.ce

bb.bl:                                            ; preds = %bb.ak
  %i.ji = icmp slt i32 %i.gl, 0
  br i1 %i.ji, label %bb.bm, label %bb.ce

bb.bm:                                            ; preds = %bb.bl
  %i.jj = sub nsw i32 0, %i.gl                    ; 4 uses
  %i.jk = and i32 %i.jj, 15                       ; 2 uses
  %.not526 = icmp eq i32 %i.jk, 0
  br i1 %.not526, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.jl = zext nneg i32 %i.jk to i64
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr @tens, i64 %i.jl
  %i.jn = load double, ptr %i.jm, align 8, !tbaa !62
  %i.jo = fdiv double %i.gj, %i.jn                ; 3 uses
  store double %i.jo, ptr %2, align 8, !tbaa !54
  %i.jp = bitcast double %i.jo to i64             ; 2 uses
  %i.jq = lshr i64 %i.jp, 32
  %i.jr = trunc nuw i64 %i.jq to i32
  %i.js = trunc i64 %i.jp to i32
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.jt = phi i32 [ %i.js, %bb.bn ], [ %i.gi, %bb.bm ]
  %i.ju = phi i32 [ %i.jr, %bb.bn ], [ %i.gh, %bb.bm ]
  %.promoted = phi double [ %i.jo, %bb.bn ], [ %i.gj, %bb.bm ]
  %i.jv = lshr i32 %i.jj, 4                       ; 2 uses
  %.not527 = icmp eq i32 %i.jv, 0
  br i1 %.not527, label %bb.ce, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.jw = icmp samesign ugt i32 %i.jj, 511
  br i1 %i.jw, label %bb.cd, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %.promoted1314 = load double, ptr %2, align 8
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bt
  %i.jx = phi double [ %.promoted1314, %bb.bq ], [ %i.kj, %bb.bt ]
  %i.jy = phi i32 [ %i.jt, %bb.bq ], [ %i.kk, %bb.bt ]
  %i.jz = phi i32 [ %i.ju, %bb.bq ], [ %i.kl, %bb.bt ]
  %indvars.iv = phi i64 [ 0, %bb.bq ], [ %indvars.iv.next, %bb.bt ] ; 2 uses
  %.1476901 = phi i32 [ %i.jv, %bb.bq ], [ %i.kn, %bb.bt ] ; 2 uses
  %i.ka = phi double [ %.promoted, %bb.bq ], [ %i.km, %bb.bt ] ; 2 uses
  %i.kb = and i32 %.1476901, 1
  %.not531 = icmp eq i32 %i.kb, 0
  br i1 %.not531, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr @tinytens, i64 %indvars.iv
  %i.kd = load double, ptr %i.kc, align 8, !tbaa !62
  %i.ke = fmul double %i.kd, %i.ka                ; 3 uses
  %i.kf = bitcast double %i.ke to i64             ; 2 uses
  %i.kg = lshr i64 %i.kf, 32
  %i.kh = trunc nuw i64 %i.kg to i32
  %i.ki = trunc i64 %i.kf to i32
  br label %bb.bt

bb.bt:                                            ; preds = %bb.br, %bb.bs
  %i.kj = phi double [ %i.jx, %bb.br ], [ %i.ke, %bb.bs ] ; 2 uses
  %i.kk = phi i32 [ %i.jy, %bb.br ], [ %i.ki, %bb.bs ] ; 2 uses
  %i.kl = phi i32 [ %i.jz, %bb.br ], [ %i.kh, %bb.bs ] ; 3 uses
  %i.km = phi double [ %i.ka, %bb.br ], [ %i.ke, %bb.bs ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.kn = lshr i32 %.1476901, 1                   ; 2 uses
  %.not529 = icmp eq i32 %i.kn, 0
  br i1 %.not529, label %bb.bu, label %bb.br, !llvm.loop !66

bb.bu:                                            ; preds = %bb.bt
  store double %i.kj, ptr %2, align 8
  %.not528 = icmp samesign ult i32 %i.jj, 256     ; 2 uses
  %spec.select721 = select i1 %.not528, i32 0, i32 106
  br i1 %.not528, label %bb.cc, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ko = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.kp = lshr i32 %i.kl, 20
  %i.kq = and i32 %i.kp, 2047                     ; 6 uses
  %i.kr = sub nsw i32 107, %i.kq
  %i.ks = icmp samesign ult i32 %i.kq, 107
  br i1 %i.ks, label %bb.bw, label %bb.cc

bb.bw:                                            ; preds = %bb.bv
  %i.kt = icmp samesign ult i32 %i.kq, 76
  br i1 %i.kt, label %bb.bx, label %bb.cb

bb.bx:                                            ; preds = %bb.bw
  %i.ku = icmp samesign ult i32 %i.kq, 53
  br i1 %i.ku, label %bb.cd, label %bb.by

bb.by:                                            ; preds = %bb.bx
  store i32 0, ptr %2, align 8, !tbaa !54
  %i.kv = icmp samesign ult i32 %i.kq, 55
  br i1 %i.kv, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  store i32 57671680, ptr %i.ko, align 4, !tbaa !54
  br label %bb.cc

bb.ca:                                            ; preds = %bb.by
  %i.kw = sub nuw nsw i32 75, %i.kq
  %i.kx = shl nsw i32 -1, %i.kw
  %i.ky = and i32 %i.kx, %i.kl
  store i32 %i.ky, ptr %i.ko, align 4, !tbaa !54
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bw
  %i.kz = shl nsw i32 -1, %i.kr
  %i.la = and i32 %i.kk, %i.kz
  store i32 %i.la, ptr %2, align 8, !tbaa !54
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca, %bb.bz, %bb.bv, %bb.bu
  %i.lb = load double, ptr %2, align 8, !tbaa !54
  %i.lc = fcmp une double %i.lb, 0.000000e+00
  br i1 %i.lc, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %sulp.exit613, %bb.em, %bb.iw, %bb.ff, %bb.cc, %bb.bx, %bb.bp
  %.2393 = phi ptr [ %.4395, %bb.iw ], [ %.4395, %bb.em ], [ undef, %bb.cc ], [ %.4395, %bb.ff ], [ undef, %bb.bp ], [ undef, %bb.bx ], [ %.4395, %sulp.exit613 ]
  %.2386 = phi ptr [ %.4388, %bb.iw ], [ %.4388, %bb.em ], [ undef, %bb.cc ], [ %.4388, %bb.ff ], [ undef, %bb.bp ], [ undef, %bb.bx ], [ %.4388, %sulp.exit613 ]
  %.2383 = phi ptr [ null, %bb.iw ], [ %.231.lcssa.i, %bb.em ], [ null, %bb.cc ], [ %.231.lcssa.i, %bb.ff ], [ null, %bb.bp ], [ null, %bb.bx ], [ %.231.lcssa.i, %sulp.exit613 ]
  %.2378 = phi ptr [ %.4380, %bb.iw ], [ %.4380, %bb.em ], [ undef, %bb.cc ], [ %.4380, %bb.ff ], [ undef, %bb.bp ], [ undef, %bb.bx ], [ %.4380, %sulp.exit613 ]
  %.2 = phi ptr [ %.5, %bb.iw ], [ %.3, %bb.em ], [ undef, %bb.cc ], [ %i.sy, %bb.ff ], [ undef, %bb.bp ], [ undef, %bb.bx ], [ %i.sy, %sulp.exit613 ]
  store double 0.000000e+00, ptr %2, align 8, !tbaa !54
  br label %bb.ap

bb.ce:                                            ; preds = %bb.bl, %bb.cc, %bb.bo, %bb.an, %bb.bk, %bb.bj
  %.sroa.44671.1 = phi i32 [ 0, %bb.an ], [ 0, %bb.bj ], [ 0, %bb.bk ], [ 0, %bb.bo ], [ %spec.select721, %bb.cc ], [ 0, %bb.bl ] ; 6 uses
  %i.ld = sub nsw i32 %spec.store.select709, %.4438704 ; 6 uses
  %i.le = icmp sgt i32 %spec.store.select709, 40
  br i1 %i.le, label %bb.cf, label %.loopexit732

bb.cf:                                            ; preds = %bb.ce
  %i.lf = icmp slt i32 %spec.select562, 18
  %i.lg = add nsw i32 %.sroa.12.0699, 18
  %.2462 = select i1 %i.lf, i32 %i.lg, i32 18
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cg, %bb.cf
  %.1468 = phi i32 [ 18, %bb.cf ], [ %i.lk, %bb.cg ] ; 12 uses
  %.3463 = phi i32 [ %.2462, %bb.cf ], [ %.4464, %bb.cg ] ; 3 uses
  %.not534 = icmp sgt i32 %.3463, %.sroa.6.2700
  %spec.select563 = tail call i32 @llvm.smin.i32(i32 %.3463, i32 %.sroa.0.2701)
  %.4464.in = select i1 %.not534, i32 %.3463, i32 %spec.select563
  %.4464 = add nsw i32 %.4464.in, -1              ; 2 uses
  %i.lh = sext i32 %.4464 to i64
  %i.li = getelementptr inbounds i8, ptr %.2418706, i64 %i.lh
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !54
  %.not536 = icmp eq i8 %i.lj, 48
  %i.lk = add nsw i32 %.1468, -1
  br i1 %.not536, label %bb.cg, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ll = sub nsw i32 %spec.store.select709, %.1468
  %i.lm = add nsw i32 %i.ll, %i.el                ; 4 uses
  %spec.select564 = tail call i32 @llvm.smin.i32(i32 %spec.select562, i32 %.1468) ; 9 uses
  %i.ln = icmp slt i32 %.1468, 9
  br i1 %i.ln, label %.preheader733, label %.loopexit732

.preheader733:                                    ; preds = %bb.ch
  %i.lo = icmp sgt i32 %spec.select564, 0
  br i1 %i.lo, label %.lr.ph912.preheader, label %.preheader

.lr.ph912.preheader:                              ; preds = %.preheader733
  %wide.trip.count = zext nneg i32 %spec.select564 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.lp = icmp ult i32 %spec.select564, 4
  br i1 %i.lp, label %.lr.ph912.epil.preheader, label %.lr.ph912.preheader.new

.lr.ph912.preheader.new:                          ; preds = %.lr.ph912.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph912

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph912
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.lr.ph912.epil.preheader

.lr.ph912.epil.preheader:                         ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph912.preheader
  %indvars.iv1040.epil.init = phi i64 [ 0, %.lr.ph912.preheader ], [ %indvars.iv.next1041.3, %.preheader.loopexit.unr-lcssa ]
  %.9911.epil.init = phi i32 [ 0, %.lr.ph912.preheader ], [ %i.ni, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod1565 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod1565)
  br label %.lr.ph912.epil

.lr.ph912.epil:                                   ; preds = %.lr.ph912.epil, %.lr.ph912.epil.preheader
  %indvars.iv1040.epil = phi i64 [ %indvars.iv1040.epil.init, %.lr.ph912.epil.preheader ], [ %indvars.iv.next1041.epil, %.lr.ph912.epil ] ; 2 uses
  %.9911.epil = phi i32 [ %.9911.epil.init, %.lr.ph912.epil.preheader ], [ %i.lv, %.lr.ph912.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph912.epil.preheader ], [ %epil.iter.next, %.lr.ph912.epil ]
  %i.lq = mul i32 %.9911.epil, 10
  %i.lr = getelementptr inbounds nuw i8, ptr %.2418706, i64 %indvars.iv1040.epil
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !54
  %i.lt = sext i8 %i.ls to i32
  %i.lu = add i32 %i.lq, -48
  %i.lv = add i32 %i.lu, %i.lt                    ; 2 uses
  %indvars.iv.next1041.epil = add nuw nsw i64 %indvars.iv1040.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader, label %.lr.ph912.epil, !llvm.loop !67

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph912.epil, %.preheader733
  %.2469.lcssa = phi i32 [ 0, %.preheader733 ], [ %spec.select564, %.lr.ph912.epil ], [ %spec.select564, %.preheader.loopexit.unr-lcssa ] ; 5 uses
  %.9.lcssa = phi i32 [ 0, %.preheader733 ], [ %i.ni, %.preheader.loopexit.unr-lcssa ], [ %i.lv, %.lr.ph912.epil ] ; 3 uses
  %i.lw = icmp slt i32 %.2469.lcssa, %.1468
  br i1 %i.lw, label %.lr.ph918.preheader, label %._crit_edge.thread.i

.lr.ph918.preheader:                              ; preds = %.preheader
  %i.lx = sext i32 %.sroa.6.2700 to i64           ; 2 uses
  %i.ly = sub i32 %.1468, %.2469.lcssa
  %xtraiter1566 = and i32 %i.ly, 3                ; 2 uses
  %lcmp.mod1567.not = icmp eq i32 %xtraiter1566, 0
  br i1 %lcmp.mod1567.not, label %.lr.ph918.prol.loopexit, label %.lr.ph918.prol

.lr.ph918.prol:                                   ; preds = %.lr.ph918.preheader, %.lr.ph918.prol
  %indvars.iv1045.prol = phi i64 [ %indvars.iv.next1046.prol, %.lr.ph918.prol ], [ %i.lx, %.lr.ph918.preheader ] ; 2 uses
  %.10917.prol = phi i32 [ %i.me, %.lr.ph918.prol ], [ %.9.lcssa, %.lr.ph918.preheader ]
  %.3470915.prol = phi i32 [ %i.mf, %.lr.ph918.prol ], [ %.2469.lcssa, %.lr.ph918.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph918.prol ], [ 0, %.lr.ph918.preheader ]
  %i.lz = mul i32 %.10917.prol, 10
  %indvars.iv.next1046.prol = add nsw i64 %indvars.iv1045.prol, 1 ; 2 uses
  %i.ma = getelementptr inbounds i8, ptr %.2418706, i64 %indvars.iv1045.prol
  %i.mb = load i8, ptr %i.ma, align 1, !tbaa !54
  %i.mc = sext i8 %i.mb to i32
  %i.md = add i32 %i.lz, -48
  %i.me = add i32 %i.md, %i.mc                    ; 3 uses
  %i.mf = add nuw nsw i32 %.3470915.prol, 1       ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter1566
  br i1 %prol.iter.cmp.not, label %.lr.ph918.prol.loopexit, label %.lr.ph918.prol, !llvm.loop !69

.lr.ph918.prol.loopexit:                          ; preds = %.lr.ph918.prol, %.lr.ph918.preheader
  %.lcssa1532.unr = phi i32 [ poison, %.lr.ph918.preheader ], [ %i.me, %.lr.ph918.prol ]
  %indvars.iv1045.unr = phi i64 [ %i.lx, %.lr.ph918.preheader ], [ %indvars.iv.next1046.prol, %.lr.ph918.prol ]
  %.10917.unr = phi i32 [ %.9.lcssa, %.lr.ph918.preheader ], [ %i.me, %.lr.ph918.prol ]
  %.3470915.unr = phi i32 [ %.2469.lcssa, %.lr.ph918.preheader ], [ %i.mf, %.lr.ph918.prol ]
  %i.mg = sub i32 %.2469.lcssa, %.1468
  %i.mh = icmp ugt i32 %i.mg, -4
  br i1 %i.mh, label %._crit_edge.thread.i, label %.lr.ph918

.lr.ph912:                                        ; preds = %.lr.ph912, %.lr.ph912.preheader.new
  %indvars.iv1040 = phi i64 [ 0, %.lr.ph912.preheader.new ], [ %indvars.iv.next1041.3, %.lr.ph912 ] ; 5 uses
  %.9911 = phi i32 [ 0, %.lr.ph912.preheader.new ], [ %i.ni, %.lr.ph912 ]
  %niter = phi i64 [ 0, %.lr.ph912.preheader.new ], [ %niter.next.3, %.lr.ph912 ]
  %i.mi = mul i32 %.9911, 10
  %i.mj = getelementptr inbounds nuw i8, ptr %.2418706, i64 %indvars.iv1040
  %i.mk = load i8, ptr %i.mj, align 1, !tbaa !54
  %i.ml = sext i8 %i.mk to i32
  %i.mm = add i32 %i.mi, -48
  %i.mn = add i32 %i.mm, %i.ml
  %i.mo = mul i32 %i.mn, 10
  %i.mp = getelementptr inbounds nuw i8, ptr %.2418706, i64 %indvars.iv1040
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 1
  %i.mr = load i8, ptr %i.mq, align 1, !tbaa !54
  %i.ms = sext i8 %i.mr to i32
  %i.mt = add i32 %i.mo, -48
  %i.mu = add i32 %i.mt, %i.ms
  %i.mv = mul i32 %i.mu, 10
  %i.mw = getelementptr inbounds nuw i8, ptr %.2418706, i64 %indvars.iv1040
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 2
  %i.my = load i8, ptr %i.mx, align 1, !tbaa !54
  %i.mz = sext i8 %i.my to i32
  %i.na = add i32 %i.mv, -48
  %i.nb = add i32 %i.na, %i.mz
  %i.nc = mul i32 %i.nb, 10
  %i.nd = getelementptr inbounds nuw i8, ptr %.2418706, i64 %indvars.iv1040
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 3
  %i.nf = load i8, ptr %i.ne, align 1, !tbaa !54
  %i.ng = sext i8 %i.nf to i32
  %i.nh = add i32 %i.nc, -48
  %i.ni = add i32 %i.nh, %i.ng                    ; 3 uses
  %indvars.iv.next1041.3 = add nuw nsw i64 %indvars.iv1040, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.loopexit.unr-lcssa, label %.lr.ph912, !llvm.loop !70

.lr.ph918:                                        ; preds = %.lr.ph918.prol.loopexit, %.lr.ph918
  %indvars.iv1045 = phi i64 [ %indvars.iv.next1046.3, %.lr.ph918 ], [ %indvars.iv1045.unr, %.lr.ph918.prol.loopexit ] ; 5 uses
  %.10917 = phi i32 [ %i.oj, %.lr.ph918 ], [ %.10917.unr, %.lr.ph918.prol.loopexit ]
  %.3470915 = phi i32 [ %i.ok, %.lr.ph918 ], [ %.3470915.unr, %.lr.ph918.prol.loopexit ]
  %i.nj = mul i32 %.10917, 10
  %i.nk = getelementptr inbounds i8, ptr %.2418706, i64 %indvars.iv1045
  %i.nl = load i8, ptr %i.nk, align 1, !tbaa !54
  %i.nm = sext i8 %i.nl to i32
  %i.nn = add i32 %i.nj, -48
  %i.no = add i32 %i.nn, %i.nm
  %i.np = mul i32 %i.no, 10
  %i.nq = getelementptr i8, ptr %.2418706, i64 %indvars.iv1045
  %i.nr = getelementptr i8, ptr %i.nq, i64 1
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !54
  %i.nt = sext i8 %i.ns to i32
  %i.nu = add i32 %i.np, -48
  %i.nv = add i32 %i.nu, %i.nt
  %i.nw = mul i32 %i.nv, 10
  %i.nx = getelementptr i8, ptr %.2418706, i64 %indvars.iv1045
  %i.ny = getelementptr i8, ptr %i.nx, i64 2
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !54
  %i.oa = sext i8 %i.nz to i32
  %i.ob = add i32 %i.nw, -48
  %i.oc = add i32 %i.ob, %i.oa
  %i.od = mul i32 %i.oc, 10
  %indvars.iv.next1046.3 = add nsw i64 %indvars.iv1045, 4
  %i.oe = getelementptr i8, ptr %.2418706, i64 %indvars.iv1045
  %i.of = getelementptr i8, ptr %i.oe, i64 3
  %i.og = load i8, ptr %i.of, align 1, !tbaa !54
  %i.oh = sext i8 %i.og to i32
  %i.oi = add i32 %i.od, -48
  %i.oj = add i32 %i.oi, %i.oh                    ; 2 uses
  %i.ok = add nuw nsw i32 %.3470915, 4            ; 2 uses
  %exitcond1049.not.3 = icmp eq i32 %i.ok, %.1468
  br i1 %exitcond1049.not.3, label %._crit_edge.thread.i, label %.lr.ph918, !llvm.loop !71

.loopexit732:                                     ; preds = %bb.ch, %bb.ce
  %.2479 = phi i32 [ %i.el, %bb.ce ], [ %i.lm, %bb.ch ] ; 3 uses
  %.6458 = phi i32 [ %spec.store.select709, %bb.ce ], [ %.1468, %bb.ch ] ; 5 uses
  %.2451 = phi i32 [ %spec.select562, %bb.ce ], [ %spec.select564, %bb.ch ] ; 3 uses
  %i.ol = add nsw i32 %.6458, 8
  %i.om = sdiv i32 %i.ol, 9
  %i.on = icmp sgt i32 %.6458, 9
  br i1 %i.on, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %.loopexit732, %.lr.ph.i
  %.037.i = phi i32 [ %i.oo, %.lr.ph.i ], [ 1, %.loopexit732 ]
  %.02536.i = phi i32 [ %i.op, %.lr.ph.i ], [ 0, %.loopexit732 ] ; 2 uses
  %i.oo = shl i32 %.037.i, 1                      ; 2 uses
  %i.op = add nuw nsw i32 %.02536.i, 1            ; 3 uses
  %i.oq = icmp sgt i32 %i.om, %i.oo
  br i1 %i.oq, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !72

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.or = icmp samesign ult i32 %.02536.i, 7
  br i1 %i.or, label %._crit_edge.thread.i, label %bb.cj

._crit_edge.thread.i:                             ; preds = %.lr.ph918.prol.loopexit, %.lr.ph918, %.preheader, %._crit_edge.i, %.loopexit732
  %.111187 = phi i32 [ %.8410707, %._crit_edge.i ], [ %.8410707, %.loopexit732 ], [ %.9.lcssa, %.preheader ], [ %.lcssa1532.unr, %.lr.ph918.prol.loopexit ], [ %i.oj, %.lr.ph918 ] ; 2 uses
  %.24511184 = phi i32 [ %.2451, %._crit_edge.i ], [ %.2451, %.loopexit732 ], [ %spec.select564, %.preheader ], [ %spec.select564, %.lr.ph918 ], [ %spec.select564, %.lr.ph918.prol.loopexit ] ; 2 uses
  %.64581181 = phi i32 [ %.6458, %._crit_edge.i ], [ %.6458, %.loopexit732 ], [ %.1468, %.preheader ], [ %.1468, %.lr.ph918 ], [ %.1468, %.lr.ph918.prol.loopexit ] ; 2 uses
  %.24791178 = phi i32 [ %.2479, %._crit_edge.i ], [ %.2479, %.loopexit732 ], [ %i.lm, %.preheader ], [ %i.lm, %.lr.ph918 ], [ %i.lm, %.lr.ph918.prol.loopexit ] ; 2 uses
  %.025.lcssa55.i = phi i32 [ %i.op, %._crit_edge.i ], [ 0, %.loopexit732 ], [ 0, %.preheader ], [ 0, %.lr.ph918 ], [ 0, %.lr.ph918.prol.loopexit ] ; 2 uses
  %i.os = zext nneg i32 %.025.lcssa55.i to i64
  %i.ot = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1856), i64 %i.os ; 2 uses
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !12 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ou, null
  br i1 %.not.i.i, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %._crit_edge.thread.i
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !15
  store ptr %i.ov, ptr %i.ot, align 8, !tbaa !12
  br label %Balloc.exit.i

bb.cj:                                            ; preds = %._crit_edge.thread.i, %._crit_edge.i
  %.111186 = phi i32 [ %.111187, %._crit_edge.thread.i ], [ %.8410707, %._crit_edge.i ]
  %.24511183 = phi i32 [ %.24511184, %._crit_edge.thread.i ], [ %.2451, %._crit_edge.i ]
  %.64581180 = phi i32 [ %.64581181, %._crit_edge.thread.i ], [ %.6458, %._crit_edge.i ]
  %.24791177 = phi i32 [ %.24791178, %._crit_edge.thread.i ], [ %.2479, %._crit_edge.i ]
  %.025.lcssa54.i = phi i32 [ %.025.lcssa55.i, %._crit_edge.thread.i ], [ %i.op, %._crit_edge.i ] ; 2 uses
  %i.ow = shl nuw i32 1, %.025.lcssa54.i          ; 2 uses
  %i.ox = add nsw i32 %i.ow, -1
  %i.oy = zext nneg i32 %i.ox to i64
  %i.oz = shl nuw nsw i64 %i.oy, 2
  %i.pa = add nuw nsw i64 %i.oz, 32
  %i.pb = tail call noalias ptr @malloc(i64 noundef %i.pa) #15 ; 4 uses
  %.not16.i.i = icmp eq ptr %i.pb, null
  br i1 %.not16.i.i, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  tail call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 1, ptr noundef nonnull @.str.8) #16
  unreachable

bb.cl:                                            ; preds = %bb.cj
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 8
  store i32 %.025.lcssa54.i, ptr %i.pc, align 8, !tbaa !64
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pb, i64 12
  store i32 %i.ow, ptr %i.pd, align 4, !tbaa !73
  br label %Balloc.exit.i

Balloc.exit.i:                                    ; preds = %bb.cl, %bb.ci
  %.111185 = phi i32 [ %.111187, %bb.ci ], [ %.111186, %bb.cl ]
  %.24511182 = phi i32 [ %.24511184, %bb.ci ], [ %.24511183, %bb.cl ] ; 3 uses
  %.64581179 = phi i32 [ %.64581181, %bb.ci ], [ %.64581180, %bb.cl ] ; 4 uses
  %.24791176 = phi i32 [ %.24791178, %bb.ci ], [ %.24791177, %bb.cl ] ; 3 uses
  %.0.i.i = phi ptr [ %i.ou, %bb.ci ], [ %i.pb, %bb.cl ] ; 5 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 20
  %i.pf = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  store i32 0, ptr %i.pf, align 8, !tbaa !74
  %i.pg = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  store i32 %.111185, ptr %i.pg, align 8, !tbaa !75
  store i32 1, ptr %i.pe, align 4, !tbaa !76
  %i.ph = icmp sgt i32 %.24511182, 9
  br i1 %i.ph, label %bb.cm, label %bb.cp

bb.cm:                                            ; preds = %Balloc.exit.i
  %i.pi = getelementptr inbounds nuw i8, ptr %.2418706, i64 9
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cn, %bb.cm
  %.029.i = phi ptr [ %.0.i.i, %bb.cm ], [ %i.pn, %bb.cn ]
  %.026.i = phi i32 [ 9, %bb.cm ], [ %i.po, %bb.cn ]
  %.024.i = phi ptr [ %i.pi, %bb.cm ], [ %i.pj, %bb.cn ] ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %.024.i, i64 1 ; 2 uses
  %i.pk = load i8, ptr %.024.i, align 1, !tbaa !54
  %i.pl = sext i8 %i.pk to i32
  %i.pm = add nsw i32 %i.pl, -48
  %i.pn = tail call fastcc ptr @multadd(ptr noundef %.029.i, i32 noundef 10, i32 noundef %i.pm) ; 2 uses
  %i.po = add nuw nsw i32 %.026.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.po, %.24511182
  br i1 %exitcond.not.i, label %bb.co, label %bb.cn, !llvm.loop !77

bb.co:                                            ; preds = %bb.cn
  %i.pp = sext i32 %.sroa.12.0699 to i64
  %i.pq = getelementptr inbounds i8, ptr %i.pj, i64 %i.pp
  br label %bb.cq

bb.cp:                                            ; preds = %Balloc.exit.i
  %i.pr = sext i32 %.sroa.12.0699 to i64
  %i.ps = getelementptr i8, ptr %.2418706, i64 %i.pr
  %i.pt = getelementptr i8, ptr %i.ps, i64 9
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %.130.i = phi ptr [ %i.pn, %bb.co ], [ %.0.i.i, %bb.cp ] ; 2 uses
  %.127.i = phi i32 [ %.24511182, %bb.co ], [ 9, %bb.cp ] ; 2 uses
  %.1.i = phi ptr [ %i.pq, %bb.co ], [ %i.pt, %bb.cp ]
  %i.pu = icmp slt i32 %.127.i, %.64581179
  br i1 %i.pu, label %.lr.ph42.i, label %s2b.exit

.lr.ph42.i:                                       ; preds = %bb.cq, %.lr.ph42.i
  %.240.i = phi ptr [ %i.pv, %.lr.ph42.i ], [ %.1.i, %bb.cq ] ; 2 uses
  %.22839.i = phi i32 [ %i.qa, %.lr.ph42.i ], [ %.127.i, %bb.cq ]
  %.23138.i = phi ptr [ %i.pz, %.lr.ph42.i ], [ %.130.i, %bb.cq ]
  %i.pv = getelementptr inbounds nuw i8, ptr %.240.i, i64 1
  %i.pw = load i8, ptr %.240.i, align 1, !tbaa !54
  %i.px = sext i8 %i.pw to i32
  %i.py = add nsw i32 %i.px, -48
  %i.pz = tail call fastcc ptr @multadd(ptr noundef %.23138.i, i32 noundef 10, i32 noundef %i.py) ; 2 uses
  %i.qa = add nuw i32 %.22839.i, 1                ; 2 uses
  %exitcond49.not.i = icmp eq i32 %i.qa, %.64581179
  br i1 %exitcond49.not.i, label %s2b.exit, label %.lr.ph42.i, !llvm.loop !78

s2b.exit:                                         ; preds = %.lr.ph42.i, %bb.cq
  %.231.lcssa.i = phi ptr [ %.130.i, %bb.cq ], [ %i.pz, %.lr.ph42.i ] ; 12 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %.231.lcssa.i, i64 8 ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %.231.lcssa.i, i64 16
  %i.qd = getelementptr inbounds nuw i8, ptr %.231.lcssa.i, i64 20
  %i.qe = icmp sgt i32 %.24791176, -1             ; 2 uses
  %i.qf = sub nsw i32 0, %.24791176
  %.0487 = select i1 %i.qe, i32 %.24791176, i32 0 ; 3 uses
  %.0411 = select i1 %i.qe, i32 0, i32 %i.qf      ; 3 uses
  %.1489 = add i32 %.0487, %.sroa.44671.1
  %.not537 = icmp eq i32 %.0411, 0
  %i.qg = icmp sgt i32 %.0487, 0
  %i.qh = icmp sgt i32 %i.ld, %.64581179          ; 5 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 14 uses
  %i.qj = icmp ne i32 %.sroa.44671.1, 0           ; 2 uses
  %i.qk = icmp ne i32 %i.ld, %.64581179
  %or.cond44 = or i1 %i.qk, %i.qj
  %.not553 = icmp ne i32 %.sroa.44671.1, 0        ; 7 uses
  br label %Bfree.exit629

Bfree.exit629:                                    ; preds = %Bfree.exit629.backedge, %s2b.exit
  %i.ql = load i32, ptr %i.qb, align 8, !tbaa !64 ; 4 uses
  %i.qm = icmp slt i32 %i.ql, 8
  br i1 %i.qm, label %bb.cr, label %bb.ct

bb.cr:                                            ; preds = %Bfree.exit629
  %i.qn = sext i32 %i.ql to i64
  %i.qo = getelementptr inbounds [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1856), i64 %i.qn ; 2 uses
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !12 ; 3 uses
  %.not.i585 = icmp eq ptr %i.qp, null
  br i1 %.not.i585, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !15
  store ptr %i.qq, ptr %i.qo, align 8, !tbaa !12
  br label %Balloc.exit

bb.ct:                                            ; preds = %bb.cr, %Bfree.exit629
  %i.qr = shl nuw i32 1, %i.ql                    ; 2 uses
  %i.qs = add nsw i32 %i.qr, -1
  %i.qt = zext nneg i32 %i.qs to i64
  %i.qu = shl nuw nsw i64 %i.qt, 2
  %i.qv = add nuw nsw i64 %i.qu, 32
  %i.qw = tail call noalias ptr @malloc(i64 noundef %i.qv) #15 ; 4 uses
  %.not16.i = icmp eq ptr %i.qw, null
  br i1 %.not16.i, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  tail call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 1, ptr noundef nonnull @.str.8) #16
  unreachable

bb.cv:                                            ; preds = %bb.ct
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 8
  store i32 %i.ql, ptr %i.qx, align 8, !tbaa !64
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qw, i64 12
  store i32 %i.qr, ptr %i.qy, align 4, !tbaa !73
  br label %Balloc.exit

Balloc.exit:                                      ; preds = %bb.cs, %bb.cv
  %.0.i = phi ptr [ %i.qp, %bb.cs ], [ %i.qw, %bb.cv ] ; 4 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %.0.i, i64 20
  store i32 0, ptr %i.qz, align 4, !tbaa !76
  %i.ra = getelementptr inbounds nuw i8, ptr %.0.i, i64 16 ; 2 uses
  store i32 0, ptr %i.ra, align 8, !tbaa !74
  %i.rb = load i32, ptr %i.qd, align 4, !tbaa !76
  %i.rc = sext i32 %i.rb to i64
  %i.rd = shl nsw i64 %i.rc, 2
  %i.re = add nsw i64 %i.rd, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ra, ptr nonnull align 8 %i.qc, i64 %i.re, i1 false)
  %i.rf = call fastcc ptr @d2b(ptr noundef %2, ptr noundef %i.e, ptr noundef %i.f) ; 6 uses
  %i.rg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1864), align 8, !tbaa !12 ; 3 uses
  %.not.i.i586 = icmp eq ptr %i.rg, null
  br i1 %.not.i.i586, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %Balloc.exit
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !15
  store ptr %i.rh, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1864), align 8, !tbaa !12
  br label %i2b.exit
end_hunk_0
