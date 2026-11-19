Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/BinaryParser?download=true
inline.NumInlined: 15251
inline.NumDeleted: 5384
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_ZN3fmt3v126detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi:bb.a
  %i.qn = zext i32 %i.qm to i64
  %i.qo = mul nuw nsw i64 %i.qn, 10
  %i.qp = add nuw nsw i64 %i.qo, %.01112.i.i251.epil.init ; 2 uses
  %i.qq = trunc i64 %i.qp to i32
  store i32 %i.qq, ptr %i.ql, align 4, !tbaa !119
  %i.qr = lshr i64 %i.qp, 32
  br label %._crit_edge.i.i253

._crit_edge.i.i253:                               ; preds = %._crit_edge.i.i253.unr-lcssa, %.epil.preheader1701
  %.lcssa1675 = phi i64 [ %i.rh, %._crit_edge.i.i253.unr-lcssa ], [ %i.qr, %.epil.preheader1701 ] ; 2 uses
  %i.qs = trunc nuw nsw i64 %.lcssa1675 to i32
  %.not.i.i254 = icmp eq i64 %.lcssa1675, 0
  br i1 %.not.i.i254, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit260, label %bb.bb

bb.ba:                                            ; preds = %bb.ba, %.lr.ph.i.i249.new
  %.013.i.i250 = phi i64 [ 0, %.lr.ph.i.i249.new ], [ %i.ri, %bb.ba ] ; 3 uses
  %.01112.i.i251 = phi i64 [ 0, %.lr.ph.i.i249.new ], [ %i.rh, %bb.ba ]
  %niter1707 = phi i64 [ 0, %.lr.ph.i.i249.new ], [ %niter1707.next.1, %bb.ba ]
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %i.qj, i64 %.013.i.i250 ; 2 uses
  %i.qu = load i32, ptr %i.qt, align 4, !tbaa !119
  %i.qv = zext i32 %i.qu to i64
  %i.qw = mul nuw nsw i64 %i.qv, 10
  %i.qx = add nuw nsw i64 %i.qw, %.01112.i.i251   ; 2 uses
  %i.qy = trunc i64 %i.qx to i32
  store i32 %i.qy, ptr %i.qt, align 4, !tbaa !119
  %i.qz = lshr i64 %i.qx, 32
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %i.qj, i64 %.013.i.i250
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 4 ; 2 uses
  %i.rc = load i32, ptr %i.rb, align 4, !tbaa !119
  %i.rd = zext i32 %i.rc to i64
  %i.re = mul nuw nsw i64 %i.rd, 10
  %i.rf = add nuw nsw i64 %i.re, %i.qz            ; 2 uses
  %i.rg = trunc i64 %i.rf to i32
  store i32 %i.rg, ptr %i.rb, align 4, !tbaa !119
  %i.rh = lshr i64 %i.rf, 32                      ; 3 uses
  %i.ri = add nuw i64 %.013.i.i250, 2             ; 2 uses
  %niter1707.next.1 = add nuw i64 %niter1707, 2   ; 2 uses
  %niter1707.ncmp.1 = icmp eq i64 %niter1707.next.1, %unroll_iter1706
  br i1 %niter1707.ncmp.1, label %._crit_edge.i.i253.unr-lcssa, label %bb.ba, !llvm.loop !35

bb.bb:                                            ; preds = %._crit_edge.i.i253
  %i.rj = add i64 %i.qi, 1                        ; 3 uses
  %i.rk = load i64, ptr %i.k, align 8, !tbaa !521
  %i.rl = icmp ugt i64 %i.rj, %i.rk
  br i1 %i.rl, label %bb.bc, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i255

bb.bc:                                            ; preds = %bb.bb
  %i.rm = load ptr, ptr %i.l, align 8, !tbaa !519
  call void %i.rm(ptr noundef nonnull align 8 dereferenceable(172) %12, i64 noundef %i.rj) #26, !inline_history !36
  %.pre.i.i.i257 = load i64, ptr %i.m, align 8, !tbaa !526 ; 2 uses
  %.pre2.i.i.i258 = add i64 %.pre.i.i.i257, 1
  %.pre.i259 = load ptr, ptr %12, align 8, !tbaa !520
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i255

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i255: ; preds = %bb.bc, %bb.bb
  %i.rn = phi ptr [ %i.qj, %bb.bb ], [ %.pre.i259, %bb.bc ]
  %.pre-phi.i.i.i256 = phi i64 [ %i.rj, %bb.bb ], [ %.pre2.i.i.i258, %bb.bc ]
  %i.ro = phi i64 [ %i.qi, %bb.bb ], [ %.pre.i.i.i257, %bb.bc ]
  store i64 %.pre-phi.i.i.i256, ptr %i.m, align 8, !tbaa !526
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %i.rn, i64 %i.ro
  store i32 %i.qs, ptr %i.rp, align 4, !tbaa !119
  br label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit260

_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit260:    ; preds = %bb.az, %._crit_edge.i.i253, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i255
  br i1 %.not83, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit273, label %bb.bd

bb.bd:                                            ; preds = %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit260
  %i.rq = load i64, ptr %.2.sroa.gep, align 8, !tbaa !526 ; 7 uses
  %.not14.i.i261 = icmp eq i64 %i.rq, 0
  br i1 %.not14.i.i261, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit273, label %.lr.ph.i.i262

.lr.ph.i.i262:                                    ; preds = %bb.bd
  %i.rr = load ptr, ptr %.2, align 8, !tbaa !520  ; 4 uses
  %xtraiter1709 = and i64 %i.rq, 1
  %i.rs = icmp eq i64 %i.rq, 1
  br i1 %i.rs, label %.epil.preheader1708, label %.lr.ph.i.i262.new

.lr.ph.i.i262.new:                                ; preds = %.lr.ph.i.i262
  %unroll_iter1713 = and i64 %i.rq, -2
  br label %bb.be

._crit_edge.i.i266.unr-lcssa:                     ; preds = %bb.be
  %lcmp.mod1710.not = icmp eq i64 %xtraiter1709, 0
  br i1 %lcmp.mod1710.not, label %._crit_edge.i.i266, label %.epil.preheader1708

.epil.preheader1708:                              ; preds = %._crit_edge.i.i266.unr-lcssa, %.lr.ph.i.i262
  %.013.i.i263.epil.init = phi i64 [ 0, %.lr.ph.i.i262 ], [ %i.sq, %._crit_edge.i.i266.unr-lcssa ]
  %.01112.i.i264.epil.init = phi i64 [ 0, %.lr.ph.i.i262 ], [ %i.sp, %._crit_edge.i.i266.unr-lcssa ]
  %lcmp.mod1712 = trunc i64 %i.rq to i1
  call void @llvm.assume(i1 %lcmp.mod1712)
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %i.rr, i64 %.013.i.i263.epil.init ; 2 uses
  %i.ru = load i32, ptr %i.rt, align 4, !tbaa !119
  %i.rv = zext i32 %i.ru to i64
  %i.rw = mul nuw nsw i64 %i.rv, 10
  %i.rx = add nuw nsw i64 %i.rw, %.01112.i.i264.epil.init ; 2 uses
  %i.ry = trunc i64 %i.rx to i32
  store i32 %i.ry, ptr %i.rt, align 4, !tbaa !119
  %i.rz = lshr i64 %i.rx, 32
  br label %._crit_edge.i.i266

._crit_edge.i.i266:                               ; preds = %._crit_edge.i.i266.unr-lcssa, %.epil.preheader1708
  %.lcssa1674 = phi i64 [ %i.sp, %._crit_edge.i.i266.unr-lcssa ], [ %i.rz, %.epil.preheader1708 ] ; 2 uses
  %i.sa = trunc nuw nsw i64 %.lcssa1674 to i32
  %.not.i.i267 = icmp eq i64 %.lcssa1674, 0
  br i1 %.not.i.i267, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit273, label %bb.bf

bb.be:                                            ; preds = %bb.be, %.lr.ph.i.i262.new
  %.013.i.i263 = phi i64 [ 0, %.lr.ph.i.i262.new ], [ %i.sq, %bb.be ] ; 3 uses
  %.01112.i.i264 = phi i64 [ 0, %.lr.ph.i.i262.new ], [ %i.sp, %bb.be ]
  %niter1714 = phi i64 [ 0, %.lr.ph.i.i262.new ], [ %niter1714.next.1, %bb.be ]
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.rr, i64 %.013.i.i263 ; 2 uses
  %i.sc = load i32, ptr %i.sb, align 4, !tbaa !119
  %i.sd = zext i32 %i.sc to i64
  %i.se = mul nuw nsw i64 %i.sd, 10
  %i.sf = add nuw nsw i64 %i.se, %.01112.i.i264   ; 2 uses
  %i.sg = trunc i64 %i.sf to i32
  store i32 %i.sg, ptr %i.sb, align 4, !tbaa !119
  %i.sh = lshr i64 %i.sf, 32
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %i.rr, i64 %.013.i.i263
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 4 ; 2 uses
  %i.sk = load i32, ptr %i.sj, align 4, !tbaa !119
  %i.sl = zext i32 %i.sk to i64
  %i.sm = mul nuw nsw i64 %i.sl, 10
  %i.sn = add nuw nsw i64 %i.sm, %i.sh            ; 2 uses
  %i.so = trunc i64 %i.sn to i32
  store i32 %i.so, ptr %i.sj, align 4, !tbaa !119
  %i.sp = lshr i64 %i.sn, 32                      ; 3 uses
  %i.sq = add nuw i64 %.013.i.i263, 2             ; 2 uses
  %niter1714.next.1 = add nuw i64 %niter1714, 2   ; 2 uses
  %niter1714.ncmp.1 = icmp eq i64 %niter1714.next.1, %unroll_iter1713
  br i1 %niter1714.ncmp.1, label %._crit_edge.i.i266.unr-lcssa, label %bb.be, !llvm.loop !35

bb.bf:                                            ; preds = %._crit_edge.i.i266
  %i.sr = add i64 %i.rq, 1                        ; 3 uses
  %.2.sroa.gep439 = getelementptr inbounds nuw i8, ptr %.2, i64 16
  %i.ss = load i64, ptr %.2.sroa.gep439, align 8, !tbaa !521
  %i.st = icmp ugt i64 %i.sr, %i.ss
  br i1 %i.st, label %bb.bg, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i268

bb.bg:                                            ; preds = %bb.bf
  %.2.sroa.gep442 = getelementptr inbounds nuw i8, ptr %.2, i64 24
  %i.su = load ptr, ptr %.2.sroa.gep442, align 8, !tbaa !519
  call void %i.su(ptr noundef nonnull align 8 dereferenceable(172) %.2, i64 noundef %i.sr) #26, !inline_history !36
  %.pre.i.i.i270 = load i64, ptr %.2.sroa.gep, align 8, !tbaa !526 ; 2 uses
  %.pre2.i.i.i271 = add i64 %.pre.i.i.i270, 1
  %.pre.i272 = load ptr, ptr %.2, align 8, !tbaa !520
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i268

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i268: ; preds = %bb.bg, %bb.bf
  %i.sv = phi ptr [ %i.rr, %bb.bf ], [ %.pre.i272, %bb.bg ]
  %.pre-phi.i.i.i269 = phi i64 [ %i.sr, %bb.bf ], [ %.pre2.i.i.i271, %bb.bg ]
  %i.sw = phi i64 [ %i.rq, %bb.bf ], [ %.pre.i.i.i270, %bb.bg ]
  store i64 %.pre-phi.i.i.i269, ptr %.2.sroa.gep, align 8, !tbaa !526
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr %i.sv, i64 %i.sw
  store i32 %i.sa, ptr %i.sx, align 4, !tbaa !119
  br label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit273

_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit273:    ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i268, %._crit_edge.i.i266, %bb.bd, %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit, %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit260, %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit
  %i.sy = and i32 %1, 4
  %.not85 = icmp eq i32 %i.sy, 0
  br i1 %.not85, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit273
  %i.sz = load i32, ptr %4, align 4, !tbaa !119   ; 3 uses
  %i.ta = icmp sgt i32 %i.sz, -1
  %i.tb = sub nsw i32 2147483646, %i.sz
  %i.tc = icmp sgt i32 %2, %i.tb
  %or.cond.i275 = select i1 %i.ta, i1 %i.tc, i1 false
  br i1 %or.cond.i275, label %bb.bi, label %_ZN3fmt3v126detail16adjust_precisionERii.exit

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull @.str.64)
  %i.td = call noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #26
  call void @_ZN3fmt3v1211assert_failEPKciS2_(ptr noundef nonnull @.str.40, i32 noundef 2659, ptr noundef %i.td) #32
  unreachable

_ZN3fmt3v126detail16adjust_precisionERii.exit:    ; preds = %bb.bh
  %i.te = add i32 %2, 1
  %i.tf = add i32 %i.te, %i.sz
  br label %bb.bj

bb.bj:                                            ; preds = %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit273, %_ZN3fmt3v126detail16adjust_precisionERii.exit, %_ZN3fmt3v126detail6bigintlSEi.exit138
  %.0474 = phi i32 [ %2, %_ZN3fmt3v126detail6bigintlSEi.exit138 ], [ %2, %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit273 ], [ %i.tf, %_ZN3fmt3v126detail16adjust_precisionERii.exit ] ; 5 uses
  br i1 %i.mt, label %bb.bk, label %bb.ct

bb.bk:                                            ; preds = %bb.bj
  %i.tg = load ptr, ptr %3, align 8, !tbaa !428   ; 3 uses
  %.2.sroa.gep445 = getelementptr inbounds nuw i8, ptr %.2, i64 8 ; 4 uses
  %spec.store.select.sroa.sel446 = select i1 %.not83, ptr %i.m, ptr %.2.sroa.gep445
  %.2.sroa.gep448 = getelementptr inbounds nuw i8, ptr %.2, i64 168
  %spec.store.select.sroa.sel449 = select i1 %.not83, ptr %i.o, ptr %.2.sroa.gep448
  %i.th = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.tj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.2.sroa.gep454 = getelementptr inbounds nuw i8, ptr %.2, i64 16
  %.2.sroa.gep457 = getelementptr inbounds nuw i8, ptr %.2, i64 24
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.bk
  %.1475 = phi i32 [ 0, %bb.bk ], [ %14, %.backedge.backedge ] ; 5 uses
  %i.tk = call noundef i32 @_ZN3fmt3v126detail6bigint13divmod_assignERKS2_(ptr noundef nonnull align 8 dereferenceable(172) %10, ptr noundef nonnull align 8 dereferenceable(172) %11) ; 3 uses
  %i.tl = load i64, ptr %i.c, align 8, !tbaa !526 ; 2 uses
  %i.tm = trunc i64 %i.tl to i32                  ; 2 uses
  %i.tn = load i32, ptr %i.e, align 8, !tbaa !525 ; 3 uses
  %i.to = add nsw i32 %i.tn, %i.tm                ; 4 uses
  %i.tp = load i64, ptr %i.m, align 8, !tbaa !526 ; 2 uses
  %i.tq = trunc i64 %i.tp to i32                  ; 2 uses
  %i.tr = load i32, ptr %i.o, align 8, !tbaa !525
  %i.ts = add nsw i32 %i.tr, %i.tq                ; 2 uses
  %.not.i276 = icmp eq i32 %i.to, %i.ts
  br i1 %.not.i276, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %.backedge
  %i.tt = icmp sgt i32 %i.to, %i.ts
  %i.tu = select i1 %i.tt, i32 1, i32 -1
  br label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit

bb.bm:                                            ; preds = %.backedge
  %i.tv = sub nsw i32 %i.tm, %i.tq
  %spec.store.select.i = call i32 @llvm.smax.i32(i32 %i.tv, i32 0)
  %i.tw = load ptr, ptr %10, align 8
  %i.tx = load ptr, ptr %12, align 8
  %sext.i277 = shl i64 %i.tl, 32
  %i.ty = ashr exact i64 %sext.i277, 32           ; 3 uses
  %i.tz = zext nneg i32 %spec.store.select.i to i64 ; 3 uses
  %sext55.i = shl i64 %i.tp, 32
  %i.ua = ashr exact i64 %sext55.i, 32            ; 2 uses
  %smin = call i64 @llvm.smin.i64(i64 %i.ty, i64 %i.tz) ; 2 uses
  %.not35.not.i1496 = icmp sgt i64 %i.ty, %i.tz
  br i1 %.not35.not.i1496, label %.lr.ph1500, label %._crit_edge1501

bb.bn:                                            ; preds = %.lr.ph1500
  %.not35.not.i = icmp sgt i64 %indvars.iv.next.i279, %i.tz
  br i1 %.not35.not.i, label %.lr.ph1500, label %._crit_edge1501, !llvm.loop !37

.lr.ph1500:                                       ; preds = %bb.bm, %bb.bn
  %indvars.iv.i2781498 = phi i64 [ %indvars.iv.next.i279, %bb.bn ], [ %i.ty, %bb.bm ]
  %indvars.iv45.i1497 = phi i64 [ %indvars.iv.next46.i, %bb.bn ], [ %i.ua, %bb.bm ]
  %indvars.iv.next.i279 = add nsw i64 %indvars.iv.i2781498, -1 ; 3 uses
  %indvars.iv.next46.i = add nsw i64 %indvars.iv45.i1497, -1 ; 3 uses
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.tw, i64 %indvars.iv.next.i279
  %i.uc = load i32, ptr %i.ub, align 4, !tbaa !119 ; 2 uses
  %i.ud = getelementptr inbounds [4 x i8], ptr %i.tx, i64 %indvars.iv.next46.i
  %i.ue = load i32, ptr %i.ud, align 4, !tbaa !119 ; 2 uses
  %.not37.i = icmp eq i32 %i.uc, %i.ue
  br i1 %.not37.i, label %bb.bn, label %.loopexit.i, !llvm.loop !37

._crit_edge1501:                                  ; preds = %bb.bn, %bb.bm
  %indvars.iv45.i.lcssa = phi i64 [ %i.ua, %bb.bm ], [ %indvars.iv.next46.i, %bb.bn ] ; 2 uses
  %.not36.i = icmp eq i64 %smin, %indvars.iv45.i.lcssa
  br i1 %.not36.i, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit, label %bb.bo

bb.bo:                                            ; preds = %._crit_edge1501
  %i.uf = icmp sgt i64 %smin, %indvars.iv45.i.lcssa
  %i.ug = select i1 %i.uf, i32 1, i32 -1
  br label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit

.loopexit.i:                                      ; preds = %.lr.ph1500
  %i.uh = icmp ugt i32 %i.uc, %i.ue
  %i.ui = select i1 %i.uh, i32 1, i32 -1
  br label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit

_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit: ; preds = %bb.bl, %._crit_edge1501, %bb.bo, %.loopexit.i
  %.3.i = phi i32 [ %i.tu, %bb.bl ], [ 0, %._crit_edge1501 ], [ %i.ug, %bb.bo ], [ %i.ui, %.loopexit.i ]
  %i.uj = icmp sge i32 %.3.i, %i.ms               ; 3 uses
  %i.uk = load i64, ptr %spec.store.select.sroa.sel446, align 8, !tbaa !526
  %i.ul = trunc i64 %i.uk to i32
  %i.um = load i32, ptr %spec.store.select.sroa.sel449, align 8, !tbaa !525 ; 3 uses
  %i.un = add nsw i32 %i.um, %i.ul                ; 2 uses
  %i.uo = call noundef i32 @llvm.smax.i32(i32 %i.to, i32 %i.un) ; 2 uses
  %i.up = load i64, ptr %i.h, align 8, !tbaa !526 ; 2 uses
  %i.uq = trunc i64 %i.up to i32
  %i.ur = load i32, ptr %i.j, align 8, !tbaa !525 ; 3 uses
  %i.us = add nsw i32 %i.ur, %i.uq                ; 3 uses
  %i.ut = add nsw i32 %i.uo, 1
  %i.uu = icmp slt i32 %i.ut, %i.us
  br i1 %i.uu, label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit297, label %bb.bp

bb.bp:                                            ; preds = %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit
  %i.uv = icmp sgt i32 %i.uo, %i.us
  br i1 %i.uv, label %.thread759, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.uw = call noundef i32 @llvm.smin.i32(i32 %i.tn, i32 %i.um)
  %i.ux = call noundef i32 @llvm.smin.i32(i32 %i.uw, i32 %i.ur) ; 2 uses
  %.not.not.not53.i280 = icmp sgt i32 %i.us, %i.ux
  br i1 %.not.not.not53.i280, label %.lr.ph.i282, label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit297

.lr.ph.i282:                                      ; preds = %bb.bq
  %i.uy = load ptr, ptr %10, align 8
  %i.uz = load ptr, ptr %spec.store.select, align 8
  %i.va = load ptr, ptr %11, align 8
  %i.vb = sext i32 %i.ur to i64                   ; 3 uses
  %sext.i283 = shl i64 %i.up, 32
  %i.vc = ashr exact i64 %sext.i283, 32
  %i.vd = add nsw i64 %i.vc, %i.vb
  %i.ve = sext i32 %i.un to i64
  %i.vf = sext i32 %i.um to i64                   ; 2 uses
  %i.vg = sext i32 %i.to to i64
  %i.vh = sext i32 %i.tn to i64                   ; 2 uses
  %i.vi = sext i32 %i.ux to i64
  br label %bb.br

bb.br:                                            ; preds = %bb.bw, %.lr.ph.i282
  %indvars.iv.i284 = phi i64 [ %i.vd, %.lr.ph.i282 ], [ %indvars.iv.next.i286, %bb.bw ] ; 6 uses
  %.03254.i285 = phi i64 [ 0, %.lr.ph.i282 ], [ %i.wf, %bb.bw ] ; 2 uses
  %indvars.iv.next.i286 = add nsw i64 %indvars.iv.i284, -1 ; 5 uses
  %.not.i.i287 = icmp sgt i64 %indvars.iv.i284, %i.vh
  %i.vj = icmp sle i64 %indvars.iv.i284, %i.vg
  %or.cond.i288 = and i1 %.not.i.i287, %i.vj
  br i1 %or.cond.i288, label %bb.bs, label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit.i289

bb.bs:                                            ; preds = %bb.br
  %i.vk = sub nsw i64 %indvars.iv.next.i286, %i.vh
  %i.vl = getelementptr inbounds [4 x i8], ptr %i.uy, i64 %i.vk
  %i.vm = load i32, ptr %i.vl, align 4, !tbaa !119
  %i.vn = zext i32 %i.vm to i64
  br label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit.i289

_ZNK3fmt3v126detail6bigint9get_bigitEi.exit.i289: ; preds = %bb.bs, %bb.br
  %i.vo = phi i64 [ %i.vn, %bb.bs ], [ 0, %bb.br ]
  %.not.i43.i290 = icmp sgt i64 %indvars.iv.i284, %i.vf
  %i.vp = icmp sle i64 %indvars.iv.i284, %i.ve
  %or.cond50.i291 = and i1 %.not.i43.i290, %i.vp
  br i1 %or.cond50.i291, label %bb.bt, label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i292

bb.bt:                                            ; preds = %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit.i289
  %i.vq = sub nsw i64 %indvars.iv.next.i286, %i.vf
  %i.vr = getelementptr inbounds [4 x i8], ptr %i.uz, i64 %i.vq
  %i.vs = load i32, ptr %i.vr, align 4, !tbaa !119
  %i.vt = zext i32 %i.vs to i64
  br label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i292

_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i292: ; preds = %bb.bt, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit.i289
  %i.vu = phi i64 [ %i.vt, %bb.bt ], [ 0, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit.i289 ]
  %i.vv = add nuw nsw i64 %i.vu, %i.vo            ; 3 uses
  %.not.i45.i293 = icmp sgt i64 %indvars.iv.i284, %i.vb
  br i1 %.not.i45.i293, label %bb.bu, label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i294

bb.bu:                                            ; preds = %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i292
  %i.vw = sub nsw i64 %indvars.iv.next.i286, %i.vb
  %i.vx = getelementptr inbounds [4 x i8], ptr %i.va, i64 %i.vw
  %i.vy = load i32, ptr %i.vx, align 4, !tbaa !119
  %i.vz = zext i32 %i.vy to i64
  %i.wa = or disjoint i64 %.03254.i285, %i.vz
  br label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i294

_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i294: ; preds = %bb.bu, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i292
  %i.wb = phi i64 [ %i.wa, %bb.bu ], [ %.03254.i285, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i292 ] ; 3 uses
  %i.wc = icmp ugt i64 %i.vv, %i.wb
  br i1 %i.wc, label %.thread759, label %bb.bv

bb.bv:                                            ; preds = %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i294
  %i.wd = sub nuw nsw i64 %i.wb, %i.vv            ; 2 uses
  %i.we = icmp ugt i64 %i.wd, 1
  br i1 %i.we, label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit297, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.wf = shl nuw nsw i64 %i.wd, 32
  %.not.not.not.i295 = icmp sgt i64 %indvars.iv.next.i286, %i.vi
  br i1 %.not.not.not.i295, label %bb.br, label %.thread.loopexit.i296, !llvm.loop !1260

.thread.loopexit.i296:                            ; preds = %bb.bw
  %i.wg = icmp ne i64 %i.wb, %i.vv
  %i.wh = sext i1 %i.wg to i32
  br label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit297

_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit297: ; preds = %bb.bv, %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit, %bb.bq, %.thread.loopexit.i296
  %.4.i281 = phi i32 [ %i.wh, %.thread.loopexit.i296 ], [ -1, %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit ], [ 0, %bb.bq ], [ -1, %bb.bv ]
  %i.wi = icmp slt i32 %.4.i281, %i.mr            ; 2 uses
  %i.wj = trunc i32 %i.tk to i8                   ; 3 uses
  %i.wk = add i8 %i.wj, 48
  %14 = add nuw nsw i32 %.1475, 1                 ; 4 uses
  %15 = zext nneg i32 %.1475 to i64
  %i.wl = getelementptr inbounds nuw i8, ptr %i.tg, i64 %15
  store i8 %i.wk, ptr %i.wl, align 1, !tbaa !253
  %or.cond.not = select i1 %i.uj, i1 %i.wi, i1 false
  br i1 %or.cond.not, label %bb.ci, label %bb.bx

bb.bx:                                            ; preds = %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit297
  br i1 %i.uj, label %.thread.sink.split, label %bb.by

.thread759:                                       ; preds = %bb.bp, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i294
  %i.wm = trunc i32 %i.tk to i8                   ; 3 uses
  %i.wn = add i8 %i.wm, 48
  %16 = add nuw nsw i32 %.1475, 1                 ; 2 uses
  %17 = zext nneg i32 %.1475 to i64
  %i.wo = getelementptr inbounds nuw i8, ptr %i.tg, i64 %17
  store i8 %i.wn, ptr %i.wo, align 1, !tbaa !253
  br i1 %i.uj, label %.thread.sink.split, label %.thread768

bb.by:                                            ; preds = %bb.bx
  br i1 %i.wi, label %.thread, label %.thread768

.thread768:                                       ; preds = %.thread759, %bb.by
  %18 = phi i32 [ %14, %bb.by ], [ %16, %.thread759 ] ; 6 uses
  %i.wp = phi i8 [ %i.wj, %bb.by ], [ %i.wm, %.thread759 ] ; 3 uses
  %i.wq = load i64, ptr %i.c, align 8, !tbaa !526
  %i.wr = trunc i64 %i.wq to i32
  %i.ws = load i32, ptr %i.e, align 8, !tbaa !525 ; 3 uses
  %i.wt = add nsw i32 %i.ws, %i.wr                ; 3 uses
  %i.wu = load i64, ptr %i.h, align 8, !tbaa !526 ; 2 uses
  %i.wv = trunc i64 %i.wu to i32
  %i.ww = load i32, ptr %i.j, align 8, !tbaa !525 ; 3 uses
  %i.wx = add nsw i32 %i.ww, %i.wv                ; 3 uses
  %i.wy = add nsw i32 %i.wt, 1
  %i.wz = icmp slt i32 %i.wy, %i.wx
  br i1 %i.wz, label %.thread, label %bb.bz

bb.bz:                                            ; preds = %.thread768
  %i.xa = icmp sgt i32 %i.wt, %i.wx
  br i1 %i.xa, label %.thread.sink.split, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.xb = call noundef i32 @llvm.smin.i32(i32 %i.ws, i32 %i.ww) ; 2 uses
  %.not.not.not53.i298 = icmp sgt i32 %i.wx, %i.xb
  br i1 %.not.not.not53.i298, label %.lr.ph.i300, label %bb.cg

.lr.ph.i300:                                      ; preds = %bb.ca
  %i.xc = load ptr, ptr %10, align 8
  %i.xd = load ptr, ptr %11, align 8
  %i.xe = sext i32 %i.ww to i64                   ; 3 uses
  %sext.i301 = shl i64 %i.wu, 32
  %i.xf = ashr exact i64 %sext.i301, 32
  %i.xg = add nsw i64 %i.xf, %i.xe
  %i.xh = sext i32 %i.wt to i64
  %i.xi = sext i32 %i.ws to i64                   ; 2 uses
  %i.xj = sext i32 %i.xb to i64
  br label %bb.cb

bb.cb:                                            ; preds = %bb.cf, %.lr.ph.i300
  %indvars.iv.i302 = phi i64 [ %i.xg, %.lr.ph.i300 ], [ %indvars.iv.next.i304, %bb.cf ] ; 4 uses
  %.03254.i303 = phi i64 [ 0, %.lr.ph.i300 ], [ %i.ya, %bb.cf ] ; 2 uses
  %indvars.iv.next.i304 = add nsw i64 %indvars.iv.i302, -1 ; 4 uses
  %.not.i.i305 = icmp sgt i64 %indvars.iv.i302, %i.xi
  %i.xk = icmp sle i64 %indvars.iv.i302, %i.xh
  %or.cond.i306 = and i1 %.not.i.i305, %i.xk
  br i1 %or.cond.i306, label %bb.cc, label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i310

bb.cc:                                            ; preds = %bb.cb
  %i.xl = sub nsw i64 %indvars.iv.next.i304, %i.xi
  %i.xm = getelementptr inbounds [4 x i8], ptr %i.xc, i64 %i.xl
  %i.xn = load i32, ptr %i.xm, align 4, !tbaa !119
  %i.xo = zext i32 %i.xn to i64
  %i.xp = shl nuw nsw i64 %i.xo, 1
  br label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i310

_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i310: ; preds = %bb.cb, %bb.cc
  %i.xq = phi i64 [ %i.xp, %bb.cc ], [ 0, %bb.cb ] ; 3 uses
  %.not.i45.i311 = icmp sgt i64 %indvars.iv.i302, %i.xe
  br i1 %.not.i45.i311, label %bb.cd, label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i312

bb.cd:                                            ; preds = %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i310
  %i.xr = sub nsw i64 %indvars.iv.next.i304, %i.xe
  %i.xs = getelementptr inbounds [4 x i8], ptr %i.xd, i64 %i.xr
  %i.xt = load i32, ptr %i.xs, align 4, !tbaa !119
  %i.xu = zext i32 %i.xt to i64
  %i.xv = or disjoint i64 %.03254.i303, %i.xu
  br label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i312

_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i312: ; preds = %bb.cd, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i310
  %i.xw = phi i64 [ %i.xv, %bb.cd ], [ %.03254.i303, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i310 ] ; 3 uses
  %i.xx = icmp ugt i64 %i.xq, %i.xw
  br i1 %i.xx, label %.thread.sink.split, label %bb.ce

bb.ce:                                            ; preds = %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i312
  %i.xy = sub nuw nsw i64 %i.xw, %i.xq            ; 2 uses
  %i.xz = icmp ugt i64 %i.xy, 1
  br i1 %i.xz, label %.thread, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ya = shl nuw nsw i64 %i.xy, 32
  %.not.not.not.i313 = icmp sgt i64 %indvars.iv.next.i304, %i.xj
  br i1 %.not.not.not.i313, label %bb.cb, label %.thread.loopexit.i314, !llvm.loop !1260

.thread.loopexit.i314:                            ; preds = %bb.cf
  %i.yb = icmp ne i64 %i.xw, %i.xq
  br label %bb.cg

bb.cg:                                            ; preds = %bb.ca, %.thread.loopexit.i314
  %.4.i299.ph = phi i1 [ false, %bb.ca ], [ %i.yb, %.thread.loopexit.i314 ]
  %i.yc = and i32 %i.tk, 1
  %.not88 = icmp eq i32 %i.yc, 0
  %or.cond = or i1 %.not88, %.4.i299.ph
  br i1 %or.cond, label %.thread, label %.thread.sink.split

.thread.sink.split:                               ; preds = %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i312, %bb.cg, %bb.bz, %bb.bx, %.thread759
  %.sink = phi i32 [ %14, %bb.bx ], [ %16, %.thread759 ], [ %18, %bb.cg ], [ %18, %bb.bz ], [ %18, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i312 ] ; 2 uses
  %.sink816 = phi i8 [ %i.wj, %bb.bx ], [ %i.wm, %.thread759 ], [ %i.wp, %bb.cg ], [ %i.wp, %bb.bz ], [ %i.wp, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i312 ]
  %19 = zext nneg i32 %.sink to i64
  %20 = getelementptr i8, ptr %i.tg, i64 %19
  %i.yd = getelementptr i8, ptr %20, i64 -1
  %i.ye = add i8 %.sink816, 49
  store i8 %i.ye, ptr %i.yd, align 1, !tbaa !253
  br label %.thread

.thread:                                          ; preds = %bb.ce, %.thread.sink.split, %.thread768, %bb.cg, %bb.by
  %21 = phi i32 [ %14, %bb.by ], [ %18, %.thread768 ], [ %18, %bb.cg ], [ %.sink, %.thread.sink.split ], [ %18, %bb.ce ]
  %22 = zext nneg i32 %21 to i64                  ; 3 uses
  %i.yf = load i64, ptr %i.th, align 8, !tbaa !427 ; 2 uses
  %23 = icmp ult i64 %i.yf, %22
  br i1 %23, label %bb.ch, label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit

bb.ch:                                            ; preds = %.thread
  %i.yg = load ptr, ptr %i.ti, align 8, !tbaa !440
  call void %i.yg(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %22) #26, !inline_history !32
  %.pre.i316 = load i64, ptr %i.th, align 8, !tbaa !427
  br label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit

_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit:  ; preds = %.thread, %bb.ch
  %i.yh = phi i64 [ %i.yf, %.thread ], [ %.pre.i316, %bb.ch ]
  %i.yi = call noundef i64 @llvm.umin.i64(i64 %22, i64 %i.yh)
  store i64 %i.yi, ptr %i.tj, align 8, !tbaa !429
  %i.yj = load i32, ptr %4, align 4, !tbaa !119
  %i.yk = sub nsw i32 %i.yj, %.1475
  store i32 %i.yk, ptr %4, align 4, !tbaa !119
  br label %.loopexit

bb.ci:                                            ; preds = %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit297
  %i.yl = load i64, ptr %i.c, align 8, !tbaa !526 ; 7 uses
  %.not14.i.i317 = icmp eq i64 %i.yl, 0
  br i1 %.not14.i.i317, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit329, label %.lr.ph.i.i318

.lr.ph.i.i318:                                    ; preds = %bb.ci
  %i.ym = load ptr, ptr %10, align 8, !tbaa !520  ; 4 uses
  %xtraiter1730 = and i64 %i.yl, 1
  %i.yn = icmp eq i64 %i.yl, 1
  br i1 %i.yn, label %.epil.preheader1729, label %.lr.ph.i.i318.new

.lr.ph.i.i318.new:                                ; preds = %.lr.ph.i.i318
  %unroll_iter1734 = and i64 %i.yl, -2
  br label %bb.cj

._crit_edge.i.i322.unr-lcssa:                     ; preds = %bb.cj
  %lcmp.mod1731.not = icmp eq i64 %xtraiter1730, 0
  br i1 %lcmp.mod1731.not, label %._crit_edge.i.i322, label %.epil.preheader1729

.epil.preheader1729:                              ; preds = %._crit_edge.i.i322.unr-lcssa, %.lr.ph.i.i318
  %.013.i.i319.epil.init = phi i64 [ 0, %.lr.ph.i.i318 ], [ %i.zl, %._crit_edge.i.i322.unr-lcssa ]
  %.01112.i.i320.epil.init = phi i64 [ 0, %.lr.ph.i.i318 ], [ %i.zk, %._crit_edge.i.i322.unr-lcssa ]
  %lcmp.mod1733 = trunc i64 %i.yl to i1
  call void @llvm.assume(i1 %lcmp.mod1733)
  %i.yo = getelementptr inbounds nuw [4 x i8], ptr %i.ym, i64 %.013.i.i319.epil.init ; 2 uses
  %i.yp = load i32, ptr %i.yo, align 4, !tbaa !119
  %i.yq = zext i32 %i.yp to i64
  %i.yr = mul nuw nsw i64 %i.yq, 10
  %i.ys = add nuw nsw i64 %i.yr, %.01112.i.i320.epil.init ; 2 uses
  %i.yt = trunc i64 %i.ys to i32
  store i32 %i.yt, ptr %i.yo, align 4, !tbaa !119
  %i.yu = lshr i64 %i.ys, 32
  br label %._crit_edge.i.i322

._crit_edge.i.i322:                               ; preds = %._crit_edge.i.i322.unr-lcssa, %.epil.preheader1729
  %.lcssa1649 = phi i64 [ %i.zk, %._crit_edge.i.i322.unr-lcssa ], [ %i.yu, %.epil.preheader1729 ] ; 2 uses
  %i.yv = trunc nuw nsw i64 %.lcssa1649 to i32
  %.not.i.i323 = icmp eq i64 %.lcssa1649, 0
  br i1 %.not.i.i323, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit329, label %bb.ck

bb.cj:                                            ; preds = %bb.cj, %.lr.ph.i.i318.new
  %.013.i.i319 = phi i64 [ 0, %.lr.ph.i.i318.new ], [ %i.zl, %bb.cj ] ; 3 uses
  %.01112.i.i320 = phi i64 [ 0, %.lr.ph.i.i318.new ], [ %i.zk, %bb.cj ]
  %niter1735 = phi i64 [ 0, %.lr.ph.i.i318.new ], [ %niter1735.next.1, %bb.cj ]
  %i.yw = getelementptr inbounds nuw [4 x i8], ptr %i.ym, i64 %.013.i.i319 ; 2 uses
  %i.yx = load i32, ptr %i.yw, align 4, !tbaa !119
  %i.yy = zext i32 %i.yx to i64
  %i.yz = mul nuw nsw i64 %i.yy, 10
  %i.za = add nuw nsw i64 %i.yz, %.01112.i.i320   ; 2 uses
  %i.zb = trunc i64 %i.za to i32
  store i32 %i.zb, ptr %i.yw, align 4, !tbaa !119
  %i.zc = lshr i64 %i.za, 32
  %i.zd = getelementptr inbounds nuw [4 x i8], ptr %i.ym, i64 %.013.i.i319
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zd, i64 4 ; 2 uses
  %i.zf = load i32, ptr %i.ze, align 4, !tbaa !119
  %i.zg = zext i32 %i.zf to i64
  %i.zh = mul nuw nsw i64 %i.zg, 10
  %i.zi = add nuw nsw i64 %i.zh, %i.zc            ; 2 uses
  %i.zj = trunc i64 %i.zi to i32
  store i32 %i.zj, ptr %i.ze, align 4, !tbaa !119
  %i.zk = lshr i64 %i.zi, 32                      ; 3 uses
  %i.zl = add nuw i64 %.013.i.i319, 2             ; 2 uses
  %niter1735.next.1 = add nuw i64 %niter1735, 2   ; 2 uses
  %niter1735.ncmp.1 = icmp eq i64 %niter1735.next.1, %unroll_iter1734
  br i1 %niter1735.ncmp.1, label %._crit_edge.i.i322.unr-lcssa, label %bb.cj, !llvm.loop !35

bb.ck:                                            ; preds = %._crit_edge.i.i322
  %i.zm = add i64 %i.yl, 1                        ; 3 uses
  %i.zn = load i64, ptr %i.a, align 8, !tbaa !521
  %i.zo = icmp ugt i64 %i.zm, %i.zn
  br i1 %i.zo, label %bb.cl, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i324

bb.cl:                                            ; preds = %bb.ck
  %i.zp = load ptr, ptr %i.b, align 8, !tbaa !519
  call void %i.zp(ptr noundef nonnull align 8 dereferenceable(172) %10, i64 noundef %i.zm) #26, !inline_history !36
  %.pre.i.i.i326 = load i64, ptr %i.c, align 8, !tbaa !526 ; 2 uses
  %.pre2.i.i.i327 = add i64 %.pre.i.i.i326, 1
  %.pre.i328 = load ptr, ptr %10, align 8, !tbaa !520
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i324

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i324: ; preds = %bb.cl, %bb.ck
  %i.zq = phi ptr [ %i.ym, %bb.ck ], [ %.pre.i328, %bb.cl ]
  %.pre-phi.i.i.i325 = phi i64 [ %i.zm, %bb.ck ], [ %.pre2.i.i.i327, %bb.cl ]
  %i.zr = phi i64 [ %i.yl, %bb.ck ], [ %.pre.i.i.i326, %bb.cl ]
  store i64 %.pre-phi.i.i.i325, ptr %i.c, align 8, !tbaa !526
  %i.zs = getelementptr inbounds nuw [4 x i8], ptr %i.zq, i64 %i.zr
  store i32 %i.yv, ptr %i.zs, align 4, !tbaa !119
  br label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit329

_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit329:    ; preds = %bb.ci, %._crit_edge.i.i322, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i324
  %i.zt = load i64, ptr %i.m, align 8, !tbaa !526 ; 7 uses
  %.not14.i.i330 = icmp eq i64 %i.zt, 0
  br i1 %.not14.i.i330, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit342, label %.lr.ph.i.i331

.lr.ph.i.i331:                                    ; preds = %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit329
  %i.zu = load ptr, ptr %12, align 8, !tbaa !520  ; 4 uses
  %xtraiter1737 = and i64 %i.zt, 1
  %i.zv = icmp eq i64 %i.zt, 1
  br i1 %i.zv, label %.epil.preheader1736, label %.lr.ph.i.i331.new

.lr.ph.i.i331.new:                                ; preds = %.lr.ph.i.i331
  %unroll_iter1741 = and i64 %i.zt, -2
  br label %bb.cm

._crit_edge.i.i335.unr-lcssa:                     ; preds = %bb.cm
  %lcmp.mod1738.not = icmp eq i64 %xtraiter1737, 0
  br i1 %lcmp.mod1738.not, label %._crit_edge.i.i335, label %.epil.preheader1736

.epil.preheader1736:                              ; preds = %._crit_edge.i.i335.unr-lcssa, %.lr.ph.i.i331
  %.013.i.i332.epil.init = phi i64 [ 0, %.lr.ph.i.i331 ], [ %i.aat, %._crit_edge.i.i335.unr-lcssa ]
  %.01112.i.i333.epil.init = phi i64 [ 0, %.lr.ph.i.i331 ], [ %i.aas, %._crit_edge.i.i335.unr-lcssa ]
  %lcmp.mod1740 = trunc i64 %i.zt to i1
  call void @llvm.assume(i1 %lcmp.mod1740)
  %i.zw = getelementptr inbounds nuw [4 x i8], ptr %i.zu, i64 %.013.i.i332.epil.init ; 2 uses
  %i.zx = load i32, ptr %i.zw, align 4, !tbaa !119
  %i.zy = zext i32 %i.zx to i64
  %i.zz = mul nuw nsw i64 %i.zy, 10
  %i.aaa = add nuw nsw i64 %i.zz, %.01112.i.i333.epil.init ; 2 uses
  %i.aab = trunc i64 %i.aaa to i32
  store i32 %i.aab, ptr %i.zw, align 4, !tbaa !119
  %i.aac = lshr i64 %i.aaa, 32
  br label %._crit_edge.i.i335

._crit_edge.i.i335:                               ; preds = %._crit_edge.i.i335.unr-lcssa, %.epil.preheader1736
  %.lcssa1650 = phi i64 [ %i.aas, %._crit_edge.i.i335.unr-lcssa ], [ %i.aac, %.epil.preheader1736 ] ; 2 uses
  %i.aad = trunc nuw nsw i64 %.lcssa1650 to i32
  %.not.i.i336 = icmp eq i64 %.lcssa1650, 0
  br i1 %.not.i.i336, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit342, label %bb.cn

bb.cm:                                            ; preds = %bb.cm, %.lr.ph.i.i331.new
  %.013.i.i332 = phi i64 [ 0, %.lr.ph.i.i331.new ], [ %i.aat, %bb.cm ] ; 3 uses
  %.01112.i.i333 = phi i64 [ 0, %.lr.ph.i.i331.new ], [ %i.aas, %bb.cm ]
  %niter1742 = phi i64 [ 0, %.lr.ph.i.i331.new ], [ %niter1742.next.1, %bb.cm ]
  %i.aae = getelementptr inbounds nuw [4 x i8], ptr %i.zu, i64 %.013.i.i332 ; 2 uses
  %i.aaf = load i32, ptr %i.aae, align 4, !tbaa !119
  %i.aag = zext i32 %i.aaf to i64
  %i.aah = mul nuw nsw i64 %i.aag, 10
  %i.aai = add nuw nsw i64 %i.aah, %.01112.i.i333 ; 2 uses
  %i.aaj = trunc i64 %i.aai to i32
  store i32 %i.aaj, ptr %i.aae, align 4, !tbaa !119
  %i.aak = lshr i64 %i.aai, 32
  %i.aal = getelementptr inbounds nuw [4 x i8], ptr %i.zu, i64 %.013.i.i332
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aal, i64 4 ; 2 uses
  %i.aan = load i32, ptr %i.aam, align 4, !tbaa !119
  %i.aao = zext i32 %i.aan to i64
  %i.aap = mul nuw nsw i64 %i.aao, 10
  %i.aaq = add nuw nsw i64 %i.aap, %i.aak         ; 2 uses
  %i.aar = trunc i64 %i.aaq to i32
  store i32 %i.aar, ptr %i.aam, align 4, !tbaa !119
  %i.aas = lshr i64 %i.aaq, 32                    ; 3 uses
  %i.aat = add nuw i64 %.013.i.i332, 2            ; 2 uses
  %niter1742.next.1 = add nuw i64 %niter1742, 2   ; 2 uses
  %niter1742.ncmp.1 = icmp eq i64 %niter1742.next.1, %unroll_iter1741
  br i1 %niter1742.ncmp.1, label %._crit_edge.i.i335.unr-lcssa, label %bb.cm, !llvm.loop !35

bb.cn:                                            ; preds = %._crit_edge.i.i335
  %i.aau = add i64 %i.zt, 1                       ; 3 uses
  %i.aav = load i64, ptr %i.k, align 8, !tbaa !521
  %i.aaw = icmp ugt i64 %i.aau, %i.aav
  br i1 %i.aaw, label %bb.co, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i337

bb.co:                                            ; preds = %bb.cn
  %i.aax = load ptr, ptr %i.l, align 8, !tbaa !519
  call void %i.aax(ptr noundef nonnull align 8 dereferenceable(172) %12, i64 noundef %i.aau) #26, !inline_history !36
  %.pre.i.i.i339 = load i64, ptr %i.m, align 8, !tbaa !526 ; 2 uses
  %.pre2.i.i.i340 = add i64 %.pre.i.i.i339, 1
  %.pre.i341 = load ptr, ptr %12, align 8, !tbaa !520
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i337

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i337: ; preds = %bb.co, %bb.cn
  %i.aay = phi ptr [ %i.zu, %bb.cn ], [ %.pre.i341, %bb.co ]
  %.pre-phi.i.i.i338 = phi i64 [ %i.aau, %bb.cn ], [ %.pre2.i.i.i340, %bb.co ]
  %i.aaz = phi i64 [ %i.zt, %bb.cn ], [ %.pre.i.i.i339, %bb.co ]
  store i64 %.pre-phi.i.i.i338, ptr %i.m, align 8, !tbaa !526
  %i.aba = getelementptr inbounds nuw [4 x i8], ptr %i.aay, i64 %i.aaz
  store i32 %i.aad, ptr %i.aba, align 4, !tbaa !119
  br label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit342

_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit342:    ; preds = %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit329, %._crit_edge.i.i335, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i337
  br i1 %.not83, label %.backedge.backedge, label %bb.cp

.backedge.backedge:                               ; preds = %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit342, %bb.cp, %._crit_edge.i.i348, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i350
  br label %.backedge

bb.cp:                                            ; preds = %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit342
  %i.abb = load i64, ptr %.2.sroa.gep445, align 8, !tbaa !526 ; 7 uses
  %.not14.i.i343 = icmp eq i64 %i.abb, 0
  br i1 %.not14.i.i343, label %.backedge.backedge, label %.lr.ph.i.i344

.lr.ph.i.i344:                                    ; preds = %bb.cp
  %i.abc = load ptr, ptr %.2, align 8, !tbaa !520 ; 4 uses
  %xtraiter1744 = and i64 %i.abb, 1
  %i.abd = icmp eq i64 %i.abb, 1
  br i1 %i.abd, label %.epil.preheader1743, label %.lr.ph.i.i344.new

.lr.ph.i.i344.new:                                ; preds = %.lr.ph.i.i344
  %unroll_iter1748 = and i64 %i.abb, -2
end_hunk_0
