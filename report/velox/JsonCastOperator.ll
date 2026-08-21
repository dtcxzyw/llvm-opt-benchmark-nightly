Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/JsonCastOperator?download=true
inline.NumInlined: 36270
inline.NumDeleted: 7697
loop-unroll.NumCompletelyUnrolled: 285
loop-unroll.NumRuntimeUnrolled: 90
loop-unroll.NumUnrolled: 375
begin_hunk_0_@_ZN3fmt3v116detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi:bb.a
  %i.pf = phi i64 [ 1, %bb.ap ], [ %i.pe, %.noexc279 ]
  store i64 %i.pf, ptr %i.r, align 8, !tbaa !1434
  store i32 0, ptr %i.t, align 8, !tbaa !1427
  br label %_ZN3fmt3v116detail6bigintlSEi.exit168

_ZN3fmt3v116detail6bigintlSEi.exit168:            ; preds = %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i228, %.lr.ph.i222, %bb.y, %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i163, %._crit_edge.i161, %bb.k, %_ZN3fmt3v116detail6bigintaSIyEEvT_.exit, %bb.ao
  %.off0 = phi i32 [ %extract.t816, %_ZN3fmt3v116detail6bigintaSIyEEvT_.exit ], [ %extract.t818, %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i163 ], [ %extract.t816, %bb.ao ], [ %extract.t820, %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i228 ], [ %extract.t818, %bb.k ], [ %extract.t818, %._crit_edge.i161 ], [ %extract.t820, %bb.y ], [ %extract.t820, %.lr.ph.i222 ]
  %.2 = phi ptr [ %8, %_ZN3fmt3v116detail6bigintaSIyEEvT_.exit ], [ %.079, %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i163 ], [ null, %bb.ao ], [ %.1, %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i228 ], [ %.079, %bb.k ], [ %.079, %._crit_edge.i161 ], [ %.1, %bb.y ], [ %.1, %.lr.ph.i222 ] ; 16 uses
  %i.pg = and i32 %.off0, 1                       ; 2 uses
  %i.ph = xor i32 %i.pg, 1                        ; 2 uses
  %.not97 = icmp eq ptr %.2, null                 ; 7 uses
  %spec.store.select = select i1 %.not97, ptr %7, ptr %.2 ; 2 uses
  %i.pi = icmp slt i32 %2, 0                      ; 2 uses
  %i.pj = and i32 %1, 2
  %.not98 = icmp eq i32 %i.pj, 0
  br i1 %.not98, label %bb.br, label %bb.ar

bb.ar:                                            ; preds = %_ZN3fmt3v116detail6bigintlSEi.exit168
  %i.pk = load i64, ptr %i.c, align 8, !tbaa !1434 ; 8 uses
  %i.pl = trunc i64 %i.pk to i32
  %i.pm = load i32, ptr %i.e, align 8, !tbaa !1427 ; 3 uses
  %i.pn = add nsw i32 %i.pm, %i.pl                ; 2 uses
  %.2.sroa.gep = getelementptr inbounds nuw i8, ptr %.2, i64 8 ; 4 uses
  %spec.store.select.sroa.sel = select i1 %.not97, ptr %i.m, ptr %.2.sroa.gep
  %i.po = load i64, ptr %spec.store.select.sroa.sel, align 8, !tbaa !1434
  %i.pp = trunc i64 %i.po to i32
  %.2.sroa.gep501 = getelementptr inbounds nuw i8, ptr %.2, i64 160
  %spec.store.select.sroa.sel502 = select i1 %.not97, ptr %i.o, ptr %.2.sroa.gep501
  %i.pq = load i32, ptr %spec.store.select.sroa.sel502, align 8, !tbaa !1427 ; 3 uses
  %i.pr = add nsw i32 %i.pq, %i.pp                ; 2 uses
  %i.ps = call noundef i32 @llvm.smax.i32(i32 %i.pn, i32 %i.pr) ; 2 uses
  %i.pt = load i64, ptr %i.h, align 8, !tbaa !1434 ; 2 uses
  %i.pu = trunc i64 %i.pt to i32
  %i.pv = load i32, ptr %i.j, align 8, !tbaa !1427 ; 3 uses
  %i.pw = add nsw i32 %i.pv, %i.pu                ; 4 uses
  %i.px = add nsw i32 %i.ps, 1
  %i.py = icmp slt i32 %i.px, %i.pw
  br i1 %i.py, label %_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.pz = icmp sgt i32 %i.ps, %i.pw
  br i1 %i.pz, label %_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.qa = call noundef i32 @llvm.smin.i32(i32 %i.pm, i32 %i.pq)
  %i.qb = call noundef i32 @llvm.smin.i32(i32 %i.qa, i32 %i.pv) ; 2 uses
  %.not.not.not53.i = icmp sgt i32 %i.pw, %i.qb
  br i1 %.not.not.not53.i, label %.lr.ph.i280, label %_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit

.lr.ph.i280:                                      ; preds = %bb.at
  %i.qc = load ptr, ptr %5, align 8
  %i.qd = load ptr, ptr %spec.store.select, align 8
  %i.qe = load ptr, ptr %6, align 8
  %i.qf = sext i32 %i.pv to i64                   ; 3 uses
  %sext.i = shl i64 %i.pt, 32
  %i.qg = ashr exact i64 %sext.i, 32
  %i.qh = add nsw i64 %i.qg, %i.qf
  %i.qi = sext i32 %i.pw to i64
  %i.qj = sext i32 %i.pr to i64
  %i.qk = sext i32 %i.pq to i64                   ; 2 uses
  %i.ql = sext i32 %i.pn to i64
  %i.qm = sext i32 %i.pm to i64                   ; 2 uses
  %i.qn = sext i32 %i.qb to i64
  br label %bb.au

bb.au:                                            ; preds = %bb.az, %.lr.ph.i280
  %indvars.iv.i = phi i64 [ %i.qh, %.lr.ph.i280 ], [ %indvars.iv.next.i, %bb.az ] ; 7 uses
  %.03254.i = phi i64 [ 0, %.lr.ph.i280 ], [ %i.rl, %bb.az ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 5 uses
  %.not.i.i281 = icmp sgt i64 %indvars.iv.i, %i.qm
  %i.qo = icmp sle i64 %indvars.iv.i, %i.ql
  %or.cond.i = and i1 %.not.i.i281, %i.qo
  br i1 %or.cond.i, label %bb.av, label %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit.i

bb.av:                                            ; preds = %bb.au
  %i.qp = sub nsw i64 %indvars.iv.next.i, %i.qm
  %i.qq = getelementptr inbounds [4 x i8], ptr %i.qc, i64 %i.qp
  %i.qr = load i32, ptr %i.qq, align 4, !tbaa !39
  %i.qs = zext i32 %i.qr to i64
  br label %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit.i

_ZNK3fmt3v116detail6bigint9get_bigitEi.exit.i:    ; preds = %bb.av, %bb.au
  %i.qt = phi i64 [ %i.qs, %bb.av ], [ 0, %bb.au ]
  %.not.i43.i = icmp sgt i64 %indvars.iv.i, %i.qk
  %i.qu = icmp sle i64 %indvars.iv.i, %i.qj
  %or.cond50.i = and i1 %.not.i43.i, %i.qu
  br i1 %or.cond50.i, label %bb.aw, label %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit44.i

bb.aw:                                            ; preds = %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit.i
  %i.qv = sub nsw i64 %indvars.iv.next.i, %i.qk
  %i.qw = getelementptr inbounds [4 x i8], ptr %i.qd, i64 %i.qv
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !39
  %i.qy = zext i32 %i.qx to i64
  br label %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit44.i

_ZNK3fmt3v116detail6bigint9get_bigitEi.exit44.i:  ; preds = %bb.aw, %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit.i
  %i.qz = phi i64 [ %i.qy, %bb.aw ], [ 0, %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit.i ]
  %i.ra = add nuw nsw i64 %i.qz, %i.qt            ; 3 uses
  %.not.i45.i = icmp sgt i64 %indvars.iv.i, %i.qf
  %i.rb = icmp sle i64 %indvars.iv.i, %i.qi
  %or.cond51.i = and i1 %.not.i45.i, %i.rb
  br i1 %or.cond51.i, label %bb.ax, label %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit46.i

bb.ax:                                            ; preds = %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit44.i
  %i.rc = sub nsw i64 %indvars.iv.next.i, %i.qf
  %i.rd = getelementptr inbounds [4 x i8], ptr %i.qe, i64 %i.rc
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !39
  %i.rf = zext i32 %i.re to i64
  %i.rg = or disjoint i64 %.03254.i, %i.rf
  br label %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit46.i

_ZNK3fmt3v116detail6bigint9get_bigitEi.exit46.i:  ; preds = %bb.ax, %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit44.i
  %i.rh = phi i64 [ %i.rg, %bb.ax ], [ %.03254.i, %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit44.i ] ; 3 uses
  %i.ri = icmp ugt i64 %i.ra, %i.rh
  br i1 %i.ri, label %_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit46.i
  %i.rj = sub nuw nsw i64 %i.rh, %i.ra            ; 2 uses
  %i.rk = icmp ugt i64 %i.rj, 1
  br i1 %i.rk, label %_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.rl = shl nuw nsw i64 %i.rj, 32
  %.not.not.not.i = icmp sgt i64 %indvars.iv.next.i, %i.qn
  br i1 %.not.not.not.i, label %bb.au, label %.thread.loopexit.i, !llvm.loop !1461

.thread.loopexit.i:                               ; preds = %bb.az
  %i.rm = icmp ne i64 %i.rh, %i.ra
  %i.rn = sext i1 %i.rm to i32
  br label %_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit

_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit: ; preds = %bb.ay, %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit46.i, %.thread.loopexit.i, %bb.at, %bb.as, %bb.ar
  %.4.i = phi i32 [ 1, %bb.as ], [ -1, %bb.ar ], [ 0, %bb.at ], [ %i.rn, %.thread.loopexit.i ], [ -1, %bb.ay ], [ 1, %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit46.i ]
  %i.ro = add nsw i32 %.4.i, %i.ph
  %i.rp = icmp slt i32 %i.ro, 1
  br i1 %i.rp, label %bb.ba, label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit318

bb.ba:                                            ; preds = %_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit
  %i.rq = load i32, ptr %4, align 4, !tbaa !39
  %i.rr = add nsw i32 %i.rq, -1
  store i32 %i.rr, ptr %4, align 4, !tbaa !39
  %.not14.i.i = icmp eq i64 %i.pk, 0
  br i1 %.not14.i.i, label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit, label %.lr.ph.i.i282

.lr.ph.i.i282:                                    ; preds = %bb.ba
  %i.rs = load ptr, ptr %5, align 8, !tbaa !1425  ; 4 uses
  %xtraiter = and i64 %i.pk, 1
  %i.rt = icmp eq i64 %i.pk, 1
  br i1 %i.rt, label %.epil.preheader, label %.lr.ph.i.i282.new

.lr.ph.i.i282.new:                                ; preds = %.lr.ph.i.i282
  %unroll_iter = and i64 %i.pk, -2
  br label %bb.bb

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.bb
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i282
  %.013.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i282 ], [ %i.sr, %._crit_edge.i.i.unr-lcssa ]
  %.01112.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i282 ], [ %i.sq, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod1721 = trunc i64 %i.pk to i1
  call void @llvm.assume(i1 %lcmp.mod1721)
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %i.rs, i64 %.013.i.i.epil.init ; 2 uses
  %i.rv = load i32, ptr %i.ru, align 4, !tbaa !39
  %i.rw = zext i32 %i.rv to i64
  %i.rx = mul nuw nsw i64 %i.rw, 10
  %i.ry = add nuw nsw i64 %i.rx, %.01112.i.i.epil.init ; 2 uses
  %i.rz = trunc i64 %i.ry to i32
  store i32 %i.rz, ptr %i.ru, align 4, !tbaa !39
  %i.sa = lshr i64 %i.ry, 32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
  %.lcssa1697 = phi i64 [ %i.sq, %._crit_edge.i.i.unr-lcssa ], [ %i.sa, %.epil.preheader ] ; 2 uses
  %i.sb = trunc nuw nsw i64 %.lcssa1697 to i32
  %.not.i.i284 = icmp eq i64 %.lcssa1697, 0
  br i1 %.not.i.i284, label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit, label %bb.bc

bb.bb:                                            ; preds = %bb.bb, %.lr.ph.i.i282.new
  %.013.i.i = phi i64 [ 0, %.lr.ph.i.i282.new ], [ %i.sr, %bb.bb ] ; 3 uses
  %.01112.i.i = phi i64 [ 0, %.lr.ph.i.i282.new ], [ %i.sq, %bb.bb ]
  %niter = phi i64 [ 0, %.lr.ph.i.i282.new ], [ %niter.next.1, %bb.bb ]
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr %i.rs, i64 %.013.i.i ; 2 uses
  %i.sd = load i32, ptr %i.sc, align 4, !tbaa !39
  %i.se = zext i32 %i.sd to i64
  %i.sf = mul nuw nsw i64 %i.se, 10
  %i.sg = add nuw nsw i64 %i.sf, %.01112.i.i      ; 2 uses
  %i.sh = trunc i64 %i.sg to i32
  store i32 %i.sh, ptr %i.sc, align 4, !tbaa !39
  %i.si = lshr i64 %i.sg, 32
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %i.rs, i64 %.013.i.i
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 4 ; 2 uses
  %i.sl = load i32, ptr %i.sk, align 4, !tbaa !39
  %i.sm = zext i32 %i.sl to i64
  %i.sn = mul nuw nsw i64 %i.sm, 10
  %i.so = add nuw nsw i64 %i.sn, %i.si            ; 2 uses
  %i.sp = trunc i64 %i.so to i32
  store i32 %i.sp, ptr %i.sk, align 4, !tbaa !39
  %i.sq = lshr i64 %i.so, 32                      ; 3 uses
  %i.sr = add nuw nsw i64 %.013.i.i, 2            ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.bb, !llvm.loop !1462

bb.bc:                                            ; preds = %._crit_edge.i.i
  %i.ss = add i64 %i.pk, 1                        ; 3 uses
  %i.st = load i64, ptr %i.a, align 8, !tbaa !1426
  %i.su = icmp ugt i64 %i.ss, %i.st
  br i1 %i.su, label %bb.bd, label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i285

bb.bd:                                            ; preds = %bb.bc
  %i.sv = load ptr, ptr %i.b, align 8, !tbaa !1423
  invoke void %i.sv(ptr noundef nonnull align 8 dereferenceable(164) %5, i64 noundef %i.ss)
          to label %.noexc290 unwind label %bb.bm, !inline_history !1463

.noexc290:                                        ; preds = %bb.bd
  %.pre.i.i.i287 = load i64, ptr %i.c, align 8, !tbaa !1434 ; 2 uses
  %.pre2.i.i.i288 = add i64 %.pre.i.i.i287, 1
  %.pre.i289 = load ptr, ptr %5, align 8, !tbaa !1425
  br label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i285

_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i285: ; preds = %.noexc290, %bb.bc
  %i.sw = phi ptr [ %i.rs, %bb.bc ], [ %.pre.i289, %.noexc290 ]
  %.pre-phi.i.i.i286 = phi i64 [ %i.ss, %bb.bc ], [ %.pre2.i.i.i288, %.noexc290 ]
  %i.sx = phi i64 [ %i.pk, %bb.bc ], [ %.pre.i.i.i287, %.noexc290 ]
  store i64 %.pre-phi.i.i.i286, ptr %i.c, align 8, !tbaa !1434
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %i.sw, i64 %i.sx
  store i32 %i.sb, ptr %i.sy, align 4, !tbaa !39
  br label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit

_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit:       ; preds = %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i285, %._crit_edge.i.i, %bb.ba
  br i1 %i.pi, label %bb.be, label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit318

bb.be:                                            ; preds = %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit
  %i.sz = load i64, ptr %i.m, align 8, !tbaa !1434 ; 7 uses
  %.not14.i.i291 = icmp eq i64 %i.sz, 0
  br i1 %.not14.i.i291, label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit304, label %.lr.ph.i.i292

.lr.ph.i.i292:                                    ; preds = %bb.be
  %i.ta = load ptr, ptr %7, align 8, !tbaa !1425  ; 4 uses
  %xtraiter1723 = and i64 %i.sz, 1
  %i.tb = icmp eq i64 %i.sz, 1
  br i1 %i.tb, label %.epil.preheader1722, label %.lr.ph.i.i292.new

.lr.ph.i.i292.new:                                ; preds = %.lr.ph.i.i292
  %unroll_iter1727 = and i64 %i.sz, -2
  br label %bb.bf

._crit_edge.i.i296.unr-lcssa:                     ; preds = %bb.bf
  %lcmp.mod1724.not = icmp eq i64 %xtraiter1723, 0
  br i1 %lcmp.mod1724.not, label %._crit_edge.i.i296, label %.epil.preheader1722

.epil.preheader1722:                              ; preds = %._crit_edge.i.i296.unr-lcssa, %.lr.ph.i.i292
  %.013.i.i293.epil.init = phi i64 [ 0, %.lr.ph.i.i292 ], [ %i.tz, %._crit_edge.i.i296.unr-lcssa ]
  %.01112.i.i294.epil.init = phi i64 [ 0, %.lr.ph.i.i292 ], [ %i.ty, %._crit_edge.i.i296.unr-lcssa ]
  %lcmp.mod1726 = trunc i64 %i.sz to i1
  call void @llvm.assume(i1 %lcmp.mod1726)
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.ta, i64 %.013.i.i293.epil.init ; 2 uses
  %i.td = load i32, ptr %i.tc, align 4, !tbaa !39
  %i.te = zext i32 %i.td to i64
  %i.tf = mul nuw nsw i64 %i.te, 10
  %i.tg = add nuw nsw i64 %i.tf, %.01112.i.i294.epil.init ; 2 uses
  %i.th = trunc i64 %i.tg to i32
  store i32 %i.th, ptr %i.tc, align 4, !tbaa !39
  %i.ti = lshr i64 %i.tg, 32
  br label %._crit_edge.i.i296

._crit_edge.i.i296:                               ; preds = %._crit_edge.i.i296.unr-lcssa, %.epil.preheader1722
  %.lcssa1696 = phi i64 [ %i.ty, %._crit_edge.i.i296.unr-lcssa ], [ %i.ti, %.epil.preheader1722 ] ; 2 uses
  %i.tj = trunc nuw nsw i64 %.lcssa1696 to i32
  %.not.i.i297 = icmp eq i64 %.lcssa1696, 0
  br i1 %.not.i.i297, label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit304, label %bb.bg

bb.bf:                                            ; preds = %bb.bf, %.lr.ph.i.i292.new
  %.013.i.i293 = phi i64 [ 0, %.lr.ph.i.i292.new ], [ %i.tz, %bb.bf ] ; 3 uses
  %.01112.i.i294 = phi i64 [ 0, %.lr.ph.i.i292.new ], [ %i.ty, %bb.bf ]
  %niter1728 = phi i64 [ 0, %.lr.ph.i.i292.new ], [ %niter1728.next.1, %bb.bf ]
  %i.tk = getelementptr inbounds nuw [4 x i8], ptr %i.ta, i64 %.013.i.i293 ; 2 uses
  %i.tl = load i32, ptr %i.tk, align 4, !tbaa !39
  %i.tm = zext i32 %i.tl to i64
  %i.tn = mul nuw nsw i64 %i.tm, 10
  %i.to = add nuw nsw i64 %i.tn, %.01112.i.i294   ; 2 uses
  %i.tp = trunc i64 %i.to to i32
  store i32 %i.tp, ptr %i.tk, align 4, !tbaa !39
  %i.tq = lshr i64 %i.to, 32
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr %i.ta, i64 %.013.i.i293
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 4 ; 2 uses
  %i.tt = load i32, ptr %i.ts, align 4, !tbaa !39
  %i.tu = zext i32 %i.tt to i64
  %i.tv = mul nuw nsw i64 %i.tu, 10
  %i.tw = add nuw nsw i64 %i.tv, %i.tq            ; 2 uses
  %i.tx = trunc i64 %i.tw to i32
  store i32 %i.tx, ptr %i.ts, align 4, !tbaa !39
  %i.ty = lshr i64 %i.tw, 32                      ; 3 uses
  %i.tz = add nuw nsw i64 %.013.i.i293, 2         ; 2 uses
  %niter1728.next.1 = add nuw nsw i64 %niter1728, 2 ; 2 uses
  %niter1728.ncmp.1 = icmp eq i64 %niter1728.next.1, %unroll_iter1727
  br i1 %niter1728.ncmp.1, label %._crit_edge.i.i296.unr-lcssa, label %bb.bf, !llvm.loop !1462

bb.bg:                                            ; preds = %._crit_edge.i.i296
  %i.ua = add i64 %i.sz, 1                        ; 3 uses
  %i.ub = load i64, ptr %i.k, align 8, !tbaa !1426
  %i.uc = icmp ugt i64 %i.ua, %i.ub
  br i1 %i.uc, label %bb.bh, label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i298

bb.bh:                                            ; preds = %bb.bg
  %i.ud = load ptr, ptr %i.l, align 8, !tbaa !1423
  invoke void %i.ud(ptr noundef nonnull align 8 dereferenceable(164) %7, i64 noundef %i.ua)
          to label %.noexc303 unwind label %bb.bm, !inline_history !1463

.noexc303:                                        ; preds = %bb.bh
  %.pre.i.i.i300 = load i64, ptr %i.m, align 8, !tbaa !1434 ; 2 uses
  %.pre2.i.i.i301 = add i64 %.pre.i.i.i300, 1
  %.pre.i302 = load ptr, ptr %7, align 8, !tbaa !1425
  br label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i298

_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i298: ; preds = %.noexc303, %bb.bg
  %i.ue = phi ptr [ %i.ta, %bb.bg ], [ %.pre.i302, %.noexc303 ]
  %.pre-phi.i.i.i299 = phi i64 [ %i.ua, %bb.bg ], [ %.pre2.i.i.i301, %.noexc303 ]
  %i.uf = phi i64 [ %i.sz, %bb.bg ], [ %.pre.i.i.i300, %.noexc303 ]
  store i64 %.pre-phi.i.i.i299, ptr %i.m, align 8, !tbaa !1434
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %i.ue, i64 %i.uf
  store i32 %i.tj, ptr %i.ug, align 4, !tbaa !39
  br label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit304

_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit304:    ; preds = %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i298, %._crit_edge.i.i296, %bb.be
  br i1 %.not97, label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit318, label %bb.bi

bb.bi:                                            ; preds = %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit304
  %i.uh = load i64, ptr %.2.sroa.gep, align 8, !tbaa !1434 ; 7 uses
  %.not14.i.i305 = icmp eq i64 %i.uh, 0
  br i1 %.not14.i.i305, label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit318, label %.lr.ph.i.i306

.lr.ph.i.i306:                                    ; preds = %bb.bi
  %i.ui = load ptr, ptr %.2, align 8, !tbaa !1425 ; 4 uses
  %xtraiter1730 = and i64 %i.uh, 1
  %i.uj = icmp eq i64 %i.uh, 1
  br i1 %i.uj, label %.epil.preheader1729, label %.lr.ph.i.i306.new

.lr.ph.i.i306.new:                                ; preds = %.lr.ph.i.i306
  %unroll_iter1734 = and i64 %i.uh, -2
  br label %bb.bj

._crit_edge.i.i310.unr-lcssa:                     ; preds = %bb.bj
  %lcmp.mod1731.not = icmp eq i64 %xtraiter1730, 0
  br i1 %lcmp.mod1731.not, label %._crit_edge.i.i310, label %.epil.preheader1729

.epil.preheader1729:                              ; preds = %._crit_edge.i.i310.unr-lcssa, %.lr.ph.i.i306
  %.013.i.i307.epil.init = phi i64 [ 0, %.lr.ph.i.i306 ], [ %i.vh, %._crit_edge.i.i310.unr-lcssa ]
  %.01112.i.i308.epil.init = phi i64 [ 0, %.lr.ph.i.i306 ], [ %i.vg, %._crit_edge.i.i310.unr-lcssa ]
  %lcmp.mod1733 = trunc i64 %i.uh to i1
  call void @llvm.assume(i1 %lcmp.mod1733)
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %i.ui, i64 %.013.i.i307.epil.init ; 2 uses
  %i.ul = load i32, ptr %i.uk, align 4, !tbaa !39
  %i.um = zext i32 %i.ul to i64
  %i.un = mul nuw nsw i64 %i.um, 10
  %i.uo = add nuw nsw i64 %i.un, %.01112.i.i308.epil.init ; 2 uses
  %i.up = trunc i64 %i.uo to i32
  store i32 %i.up, ptr %i.uk, align 4, !tbaa !39
  %i.uq = lshr i64 %i.uo, 32
  br label %._crit_edge.i.i310

._crit_edge.i.i310:                               ; preds = %._crit_edge.i.i310.unr-lcssa, %.epil.preheader1729
  %.lcssa1695 = phi i64 [ %i.vg, %._crit_edge.i.i310.unr-lcssa ], [ %i.uq, %.epil.preheader1729 ] ; 2 uses
  %i.ur = trunc nuw nsw i64 %.lcssa1695 to i32
  %.not.i.i311 = icmp eq i64 %.lcssa1695, 0
  br i1 %.not.i.i311, label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit318, label %bb.bk

bb.bj:                                            ; preds = %bb.bj, %.lr.ph.i.i306.new
  %.013.i.i307 = phi i64 [ 0, %.lr.ph.i.i306.new ], [ %i.vh, %bb.bj ] ; 3 uses
  %.01112.i.i308 = phi i64 [ 0, %.lr.ph.i.i306.new ], [ %i.vg, %bb.bj ]
  %niter1735 = phi i64 [ 0, %.lr.ph.i.i306.new ], [ %niter1735.next.1, %bb.bj ]
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %i.ui, i64 %.013.i.i307 ; 2 uses
  %i.ut = load i32, ptr %i.us, align 4, !tbaa !39
  %i.uu = zext i32 %i.ut to i64
  %i.uv = mul nuw nsw i64 %i.uu, 10
  %i.uw = add nuw nsw i64 %i.uv, %.01112.i.i308   ; 2 uses
  %i.ux = trunc i64 %i.uw to i32
  store i32 %i.ux, ptr %i.us, align 4, !tbaa !39
  %i.uy = lshr i64 %i.uw, 32
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %i.ui, i64 %.013.i.i307
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 4 ; 2 uses
  %i.vb = load i32, ptr %i.va, align 4, !tbaa !39
  %i.vc = zext i32 %i.vb to i64
  %i.vd = mul nuw nsw i64 %i.vc, 10
  %i.ve = add nuw nsw i64 %i.vd, %i.uy            ; 2 uses
  %i.vf = trunc i64 %i.ve to i32
  store i32 %i.vf, ptr %i.va, align 4, !tbaa !39
  %i.vg = lshr i64 %i.ve, 32                      ; 3 uses
  %i.vh = add nuw nsw i64 %.013.i.i307, 2         ; 2 uses
  %niter1735.next.1 = add nuw nsw i64 %niter1735, 2 ; 2 uses
  %niter1735.ncmp.1 = icmp eq i64 %niter1735.next.1, %unroll_iter1734
  br i1 %niter1735.ncmp.1, label %._crit_edge.i.i310.unr-lcssa, label %bb.bj, !llvm.loop !1462

bb.bk:                                            ; preds = %._crit_edge.i.i310
  %i.vi = add i64 %i.uh, 1                        ; 3 uses
  %.2.sroa.gep507 = getelementptr inbounds nuw i8, ptr %.2, i64 16
  %i.vj = load i64, ptr %.2.sroa.gep507, align 8, !tbaa !1426
  %i.vk = icmp ugt i64 %i.vi, %i.vj
  br i1 %i.vk, label %bb.bl, label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i312

bb.bl:                                            ; preds = %bb.bk
  %.2.sroa.gep510 = getelementptr inbounds nuw i8, ptr %.2, i64 24
  %i.vl = load ptr, ptr %.2.sroa.gep510, align 8, !tbaa !1423
  invoke void %i.vl(ptr noundef nonnull align 8 dereferenceable(164) %.2, i64 noundef %i.vi)
          to label %.noexc317 unwind label %bb.bm, !inline_history !1463

.noexc317:                                        ; preds = %bb.bl
  %.pre.i.i.i314 = load i64, ptr %.2.sroa.gep, align 8, !tbaa !1434 ; 2 uses
  %.pre2.i.i.i315 = add i64 %.pre.i.i.i314, 1
  %.pre.i316 = load ptr, ptr %.2, align 8, !tbaa !1425
  br label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i312

_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i312: ; preds = %.noexc317, %bb.bk
  %i.vm = phi ptr [ %i.ui, %bb.bk ], [ %.pre.i316, %.noexc317 ]
  %.pre-phi.i.i.i313 = phi i64 [ %i.vi, %bb.bk ], [ %.pre2.i.i.i315, %.noexc317 ]
  %i.vn = phi i64 [ %i.uh, %bb.bk ], [ %.pre.i.i.i314, %.noexc317 ]
  store i64 %.pre-phi.i.i.i313, ptr %.2.sroa.gep, align 8, !tbaa !1434
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %i.vm, i64 %i.vn
  store i32 %i.ur, ptr %i.vo, align 4, !tbaa !39
  br label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit318

bb.bm:                                            ; preds = %bb.du, %bb.bp, %bb.bl, %bb.bh, %bb.bd
  %i.vp = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit318:    ; preds = %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i312, %._crit_edge.i.i310, %bb.bi, %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit, %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit304, %_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit
  %i.vq = and i32 %1, 4
  %.not99 = icmp eq i32 %i.vq, 0
  br i1 %.not99, label %bb.br, label %bb.bn

bb.bn:                                            ; preds = %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit318
  %i.vr = load i32, ptr %4, align 4, !tbaa !39    ; 3 uses
  %i.vs = icmp sgt i32 %i.vr, -1
  %i.vt = sub nsw i32 2147483646, %i.vr
  %i.vu = icmp sgt i32 %2, %i.vt
  %or.cond.i320 = select i1 %i.vs, i1 %i.vu, i1 false
  br i1 %or.cond.i320, label %bb.bo, label %_ZN3fmt3v116detail16adjust_precisionERii.exit

bb.bo:                                            ; preds = %bb.bn
  %i.vv = call ptr @__cxa_allocate_exception(i64 16) #38 ; 4 uses
  invoke void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.vv, ptr noundef nonnull @.str.72)
          to label %bb.bp unwind label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3fmt3v1112format_errorE, i64 16), ptr %i.vv, align 8, !tbaa !20
  invoke void @__cxa_throw(ptr nonnull %i.vv, ptr nonnull @_ZTIN3fmt3v1112format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #46
          to label %.noexc321 unwind label %bb.bm

.noexc321:                                        ; preds = %bb.bp
  unreachable

bb.bq:                                            ; preds = %bb.bo
  %i.vw = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.vv) #38
  br label %.body

_ZN3fmt3v116detail16adjust_precisionERii.exit:    ; preds = %bb.bn
  %i.vx = add i32 %2, 1
  %i.vy = add i32 %i.vx, %i.vr
  br label %bb.br

bb.br:                                            ; preds = %_ZN3fmt3v116detail16adjust_precisionERii.exit, %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit318, %_ZN3fmt3v116detail6bigintlSEi.exit168
  %.0542 = phi i32 [ %2, %_ZN3fmt3v116detail6bigintlSEi.exit168 ], [ %2, %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit318 ], [ %i.vy, %_ZN3fmt3v116detail16adjust_precisionERii.exit ] ; 5 uses
  br i1 %i.pi, label %bb.bs, label %bb.de

bb.bs:                                            ; preds = %bb.br
  %i.vz = load ptr, ptr %3, align 8, !tbaa !1255  ; 3 uses
  %.2.sroa.gep513 = getelementptr inbounds nuw i8, ptr %.2, i64 8 ; 4 uses
  %spec.store.select.sroa.sel514 = select i1 %.not97, ptr %i.m, ptr %.2.sroa.gep513
  %.2.sroa.gep516 = getelementptr inbounds nuw i8, ptr %.2, i64 160
  %spec.store.select.sroa.sel517 = select i1 %.not97, ptr %i.o, ptr %.2.sroa.gep516
  %i.wa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.wc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.2.sroa.gep522 = getelementptr inbounds nuw i8, ptr %.2, i64 16
  %.2.sroa.gep525 = getelementptr inbounds nuw i8, ptr %.2, i64 24
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.bs
  %indvars.iv673 = phi i64 [ 0, %bb.bs ], [ %indvars.iv673.be, %.backedge.backedge ] ; 7 uses
  %i.wd = invoke noundef i32 @_ZN3fmt3v116detail6bigint13divmod_assignERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %5, ptr noundef nonnull align 8 dereferenceable(164) %6)
          to label %bb.bt unwind label %bb.ch     ; 3 uses

bb.bt:                                            ; preds = %.backedge
  %i.we = load i64, ptr %i.c, align 8, !tbaa !1434 ; 2 uses
  %i.wf = trunc i64 %i.we to i32                  ; 2 uses
  %i.wg = load i32, ptr %i.e, align 8, !tbaa !1427 ; 3 uses
  %i.wh = add nsw i32 %i.wg, %i.wf                ; 4 uses
  %i.wi = load i64, ptr %i.m, align 8, !tbaa !1434 ; 2 uses
  %i.wj = trunc i64 %i.wi to i32                  ; 2 uses
  %i.wk = load i32, ptr %i.o, align 8, !tbaa !1427
  %i.wl = add nsw i32 %i.wk, %i.wj                ; 2 uses
  %.not.i322 = icmp eq i32 %i.wh, %i.wl
  br i1 %.not.i322, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.wm = icmp sgt i32 %i.wh, %i.wl
  %i.wn = select i1 %i.wm, i32 1, i32 -1
  br label %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit

bb.bv:                                            ; preds = %bb.bt
  %i.wo = sub nsw i32 %i.wf, %i.wj
  %spec.store.select.i = call i32 @llvm.smax.i32(i32 %i.wo, i32 0)
  %i.wp = load ptr, ptr %5, align 8
  %i.wq = load ptr, ptr %7, align 8
  %sext.i323 = shl i64 %i.we, 32
  %i.wr = ashr exact i64 %sext.i323, 32           ; 3 uses
  %i.ws = zext nneg i32 %spec.store.select.i to i64 ; 3 uses
  %sext55.i = shl i64 %i.wi, 32
  %i.wt = ashr exact i64 %sext55.i, 32            ; 2 uses
  %smin = call i64 @llvm.smin.i64(i64 %i.wr, i64 %i.ws) ; 2 uses
  %.not35.not.i1489 = icmp sgt i64 %i.wr, %i.ws
  br i1 %.not35.not.i1489, label %.lr.ph1493, label %._crit_edge1494

bb.bw:                                            ; preds = %.lr.ph1493
  %.not35.not.i = icmp sgt i64 %indvars.iv.next.i325, %i.ws
  br i1 %.not35.not.i, label %.lr.ph1493, label %._crit_edge1494, !llvm.loop !1464

.lr.ph1493:                                       ; preds = %bb.bv, %bb.bw
  %indvars.iv.i3241491 = phi i64 [ %indvars.iv.next.i325, %bb.bw ], [ %i.wr, %bb.bv ]
  %indvars.iv45.i1490 = phi i64 [ %indvars.iv.next46.i, %bb.bw ], [ %i.wt, %bb.bv ]
  %indvars.iv.next.i325 = add nsw i64 %indvars.iv.i3241491, -1 ; 3 uses
  %indvars.iv.next46.i = add nsw i64 %indvars.iv45.i1490, -1 ; 3 uses
  %i.wu = getelementptr inbounds nuw [4 x i8], ptr %i.wp, i64 %indvars.iv.next.i325
  %i.wv = load i32, ptr %i.wu, align 4, !tbaa !39 ; 2 uses
  %i.ww = getelementptr inbounds [4 x i8], ptr %i.wq, i64 %indvars.iv.next46.i
  %i.wx = load i32, ptr %i.ww, align 4, !tbaa !39 ; 2 uses
  %.not37.i = icmp eq i32 %i.wv, %i.wx
  br i1 %.not37.i, label %bb.bw, label %.loopexit.i, !llvm.loop !1464

._crit_edge1494:                                  ; preds = %bb.bw, %bb.bv
  %indvars.iv45.i.lcssa = phi i64 [ %i.wt, %bb.bv ], [ %indvars.iv.next46.i, %bb.bw ] ; 2 uses
  %.not36.i = icmp eq i64 %smin, %indvars.iv45.i.lcssa
  br i1 %.not36.i, label %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit, label %bb.bx

bb.bx:                                            ; preds = %._crit_edge1494
  %i.wy = icmp sgt i64 %smin, %indvars.iv45.i.lcssa
  %i.wz = select i1 %i.wy, i32 1, i32 -1
  br label %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit

.loopexit.i:                                      ; preds = %.lr.ph1493
  %i.xa = icmp ugt i32 %i.wv, %i.wx
  %i.xb = select i1 %i.xa, i32 1, i32 -1
  br label %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit

_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit: ; preds = %bb.bu, %._crit_edge1494, %bb.bx, %.loopexit.i
  %.3.i = phi i32 [ %i.wn, %bb.bu ], [ 0, %._crit_edge1494 ], [ %i.wz, %bb.bx ], [ %i.xb, %.loopexit.i ]
  %i.xc = icmp sge i32 %.3.i, %i.ph               ; 3 uses
  %i.xd = load i64, ptr %spec.store.select.sroa.sel514, align 8, !tbaa !1434
  %i.xe = trunc i64 %i.xd to i32
  %i.xf = load i32, ptr %spec.store.select.sroa.sel517, align 8, !tbaa !1427 ; 3 uses
  %i.xg = add nsw i32 %i.xf, %i.xe                ; 2 uses
  %i.xh = call noundef i32 @llvm.smax.i32(i32 %i.wh, i32 %i.xg) ; 2 uses
  %i.xi = load i64, ptr %i.h, align 8, !tbaa !1434 ; 2 uses
  %i.xj = trunc i64 %i.xi to i32
  %i.xk = load i32, ptr %i.j, align 8, !tbaa !1427 ; 3 uses
  %i.xl = add nsw i32 %i.xk, %i.xj                ; 4 uses
  %i.xm = add nsw i32 %i.xh, 1
  %i.xn = icmp slt i32 %i.xm, %i.xl
  br i1 %i.xn, label %_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit344, label %bb.by

bb.by:                                            ; preds = %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit
  %i.xo = icmp sgt i32 %i.xh, %i.xl
  br i1 %i.xo, label %.thread835, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.xp = call noundef i32 @llvm.smin.i32(i32 %i.wg, i32 %i.xf)
  %i.xq = call noundef i32 @llvm.smin.i32(i32 %i.xp, i32 %i.xk) ; 2 uses
  %.not.not.not53.i326 = icmp sgt i32 %i.xl, %i.xq
  br i1 %.not.not.not53.i326, label %.lr.ph.i328, label %_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit344

.lr.ph.i328:                                      ; preds = %bb.bz
  %i.xr = load ptr, ptr %5, align 8
  %i.xs = load ptr, ptr %spec.store.select, align 8
  %i.xt = load ptr, ptr %6, align 8
  %i.xu = sext i32 %i.xk to i64                   ; 3 uses
  %sext.i329 = shl i64 %i.xi, 32
  %i.xv = ashr exact i64 %sext.i329, 32
  %i.xw = add nsw i64 %i.xv, %i.xu
  %i.xx = sext i32 %i.xl to i64
  %i.xy = sext i32 %i.xg to i64
  %i.xz = sext i32 %i.xf to i64                   ; 2 uses
  %i.ya = sext i32 %i.wh to i64
  %i.yb = sext i32 %i.wg to i64                   ; 2 uses
  %i.yc = sext i32 %i.xq to i64
  br label %bb.ca

bb.ca:                                            ; preds = %bb.cf, %.lr.ph.i328
end_hunk_0
begin_hunk_1_@_ZN3fmt3v116detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi:bb.a

bb.ci:                                            ; preds = %bb.dd, %bb.cz, %bb.cw, %bb.cs
  %i.zl = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cj:                                            ; preds = %bb.cg
  br i1 %i.zd, label %.thread547, label %.thread844

.thread844:                                       ; preds = %.thread835, %bb.cj
  %indvars.iv.next674832842847 = phi i64 [ %indvars.iv.next674, %bb.cj ], [ %indvars.iv.next674829, %.thread835 ] ; 6 uses
  %i.zm = phi i8 [ %i.ze, %bb.cj ], [ %i.zh, %.thread835 ] ; 3 uses
  %i.zn = load i64, ptr %i.c, align 8, !tbaa !1434
  %i.zo = trunc i64 %i.zn to i32
  %i.zp = load i32, ptr %i.e, align 8, !tbaa !1427 ; 3 uses
  %i.zq = add nsw i32 %i.zp, %i.zo                ; 3 uses
  %i.zr = load i64, ptr %i.h, align 8, !tbaa !1434 ; 2 uses
  %i.zs = trunc i64 %i.zr to i32
  %i.zt = load i32, ptr %i.j, align 8, !tbaa !1427 ; 3 uses
  %i.zu = add nsw i32 %i.zt, %i.zs                ; 4 uses
  %i.zv = add nsw i32 %i.zq, 1
  %i.zw = icmp slt i32 %i.zv, %i.zu
  br i1 %i.zw, label %.thread547, label %bb.ck

bb.ck:                                            ; preds = %.thread844
  %i.zx = icmp sgt i32 %i.zq, %i.zu
  br i1 %i.zx, label %.thread547.sink.split, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.zy = call noundef i32 @llvm.smin.i32(i32 %i.zp, i32 %i.zt) ; 2 uses
  %.not.not.not53.i345 = icmp sgt i32 %i.zu, %i.zy
  br i1 %.not.not.not53.i345, label %.lr.ph.i347, label %bb.cr

.lr.ph.i347:                                      ; preds = %bb.cl
  %i.zz = load ptr, ptr %5, align 8
  %i.aaa = load ptr, ptr %6, align 8
  %i.aab = sext i32 %i.zt to i64                  ; 3 uses
  %sext.i348 = shl i64 %i.zr, 32
  %i.aac = ashr exact i64 %sext.i348, 32
  %i.aad = add nsw i64 %i.aac, %i.aab
  %i.aae = sext i32 %i.zu to i64
  %i.aaf = sext i32 %i.zq to i64
  %i.aag = sext i32 %i.zp to i64                  ; 2 uses
  %i.aah = sext i32 %i.zy to i64
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cq, %.lr.ph.i347
  %indvars.iv.i349 = phi i64 [ %i.aad, %.lr.ph.i347 ], [ %indvars.iv.next.i351, %bb.cq ] ; 5 uses
  %.03254.i350 = phi i64 [ 0, %.lr.ph.i347 ], [ %i.aaz, %bb.cq ] ; 2 uses
  %indvars.iv.next.i351 = add nsw i64 %indvars.iv.i349, -1 ; 4 uses
  %.not.i.i352 = icmp sgt i64 %indvars.iv.i349, %i.aag
  %i.aai = icmp sle i64 %indvars.iv.i349, %i.aaf
  %or.cond.i353 = and i1 %.not.i.i352, %i.aai
  br i1 %or.cond.i353, label %bb.cn, label %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit44.i357

bb.cn:                                            ; preds = %bb.cm
  %i.aaj = sub nsw i64 %indvars.iv.next.i351, %i.aag
  %i.aak = getelementptr inbounds [4 x i8], ptr %i.zz, i64 %i.aaj
  %i.aal = load i32, ptr %i.aak, align 4, !tbaa !39
  %i.aam = zext i32 %i.aal to i64
  %i.aan = shl nuw nsw i64 %i.aam, 1
  br label %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit44.i357

_ZNK3fmt3v116detail6bigint9get_bigitEi.exit44.i357: ; preds = %bb.cm, %bb.cn
  %i.aao = phi i64 [ %i.aan, %bb.cn ], [ 0, %bb.cm ] ; 3 uses
  %.not.i45.i358 = icmp sgt i64 %indvars.iv.i349, %i.aab
  %i.aap = icmp sle i64 %indvars.iv.i349, %i.aae
  %or.cond51.i359 = and i1 %.not.i45.i358, %i.aap
  br i1 %or.cond51.i359, label %bb.co, label %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit46.i360

bb.co:                                            ; preds = %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit44.i357
  %i.aaq = sub nsw i64 %indvars.iv.next.i351, %i.aab
  %i.aar = getelementptr inbounds [4 x i8], ptr %i.aaa, i64 %i.aaq
  %i.aas = load i32, ptr %i.aar, align 4, !tbaa !39
  %i.aat = zext i32 %i.aas to i64
  %i.aau = or disjoint i64 %.03254.i350, %i.aat
  br label %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit46.i360

_ZNK3fmt3v116detail6bigint9get_bigitEi.exit46.i360: ; preds = %bb.co, %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit44.i357
  %i.aav = phi i64 [ %i.aau, %bb.co ], [ %.03254.i350, %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit44.i357 ] ; 3 uses
  %i.aaw = icmp ugt i64 %i.aao, %i.aav
  br i1 %i.aaw, label %.thread547.sink.split, label %bb.cp

bb.cp:                                            ; preds = %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit46.i360
  %i.aax = sub nuw nsw i64 %i.aav, %i.aao         ; 2 uses
  %i.aay = icmp ugt i64 %i.aax, 1
  br i1 %i.aay, label %.thread547, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.aaz = shl nuw nsw i64 %i.aax, 32
  %.not.not.not.i361 = icmp sgt i64 %indvars.iv.next.i351, %i.aah
  br i1 %.not.not.not.i361, label %bb.cm, label %.thread.loopexit.i362, !llvm.loop !1461

.thread.loopexit.i362:                            ; preds = %bb.cq
  %i.aba = icmp ne i64 %i.aav, %i.aao
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cl, %.thread.loopexit.i362
  %.4.i346.ph = phi i1 [ false, %bb.cl ], [ %i.aba, %.thread.loopexit.i362 ]
  %i.abb = and i32 %i.wd, 1
  %.not104 = icmp eq i32 %i.abb, 0
  %or.cond = or i1 %.not104, %.4.i346.ph
  br i1 %or.cond, label %.thread547, label %.thread547.sink.split

.thread547.sink.split:                            ; preds = %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit46.i360, %bb.cr, %bb.ck, %bb.cg, %.thread835
  %.sink894 = phi i8 [ %i.ze, %bb.cg ], [ %i.zh, %.thread835 ], [ %i.zm, %bb.cr ], [ %i.zm, %bb.ck ], [ %i.zm, %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit46.i360 ]
  %indvars.iv.next674832841.ph = phi i64 [ %indvars.iv.next674, %bb.cg ], [ %indvars.iv.next674829, %.thread835 ], [ %indvars.iv.next674832842847, %bb.cr ], [ %indvars.iv.next674832842847, %bb.ck ], [ %indvars.iv.next674832842847, %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit46.i360 ]
  %or.cond.not834838.ph = phi i1 [ %i.zd, %bb.cg ], [ false, %.thread835 ], [ false, %bb.cr ], [ false, %bb.ck ], [ false, %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit46.i360 ]
  %i.abc = getelementptr i8, ptr %i.vz, i64 %indvars.iv673
  %i.abd = add i8 %.sink894, 49
  store i8 %i.abd, ptr %i.abc, align 1, !tbaa !38
  br label %.thread547

.thread547:                                       ; preds = %bb.cp, %.thread547.sink.split, %.thread844, %bb.cj, %bb.cr
  %indvars.iv.next674832841 = phi i64 [ %indvars.iv.next674832842847, %bb.cr ], [ %indvars.iv.next674832842847, %.thread844 ], [ %indvars.iv.next674832841.ph, %.thread547.sink.split ], [ %indvars.iv.next674, %bb.cj ], [ %indvars.iv.next674832842847, %bb.cp ] ; 3 uses
  %or.cond.not834838 = phi i1 [ false, %bb.cr ], [ false, %.thread844 ], [ %or.cond.not834838.ph, %.thread547.sink.split ], [ false, %bb.cj ], [ false, %bb.cp ]
  %i.abe = load i64, ptr %i.wa, align 8, !tbaa !1256 ; 2 uses
  %.not822 = icmp ugt i64 %i.abe, %indvars.iv673
  br i1 %.not822, label %.split, label %bb.cs

bb.cs:                                            ; preds = %.thread547
  %i.abf = load ptr, ptr %i.wb, align 8, !tbaa !1253
  invoke void %i.abf(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %indvars.iv.next674832841)
          to label %.noexc365 unwind label %bb.ci, !inline_history !1465

.noexc365:                                        ; preds = %bb.cs
  %.pre.i364 = load i64, ptr %i.wa, align 8, !tbaa !1256
  br label %.split

.split:                                           ; preds = %.noexc365, %.thread547
  %i.abg = phi i64 [ %i.abe, %.thread547 ], [ %.pre.i364, %.noexc365 ]
  %i.abh = call noundef i64 @llvm.umin.i64(i64 %indvars.iv.next674832841, i64 %i.abg)
  store i64 %i.abh, ptr %i.wc, align 8, !tbaa !1261
  %i.abi = load i32, ptr %4, align 4, !tbaa !39
  %i.abj = trunc nuw nsw i64 %indvars.iv673 to i32
  %i.abk = sub nsw i32 %i.abi, %i.abj
  store i32 %i.abk, ptr %4, align 4, !tbaa !39
  br i1 %or.cond.not834838, label %.backedge.backedge, label %.loopexit

bb.ct:                                            ; preds = %_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit344
  %i.abl = load i64, ptr %i.c, align 8, !tbaa !1434 ; 7 uses
  %.not14.i.i366 = icmp eq i64 %i.abl, 0
  br i1 %.not14.i.i366, label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit379, label %.lr.ph.i.i367

.lr.ph.i.i367:                                    ; preds = %bb.ct
  %i.abm = load ptr, ptr %5, align 8, !tbaa !1425 ; 4 uses
  %xtraiter1751 = and i64 %i.abl, 1
  %i.abn = icmp eq i64 %i.abl, 1
  br i1 %i.abn, label %.epil.preheader1750, label %.lr.ph.i.i367.new

.lr.ph.i.i367.new:                                ; preds = %.lr.ph.i.i367
  %unroll_iter1755 = and i64 %i.abl, -2
  br label %bb.cu

._crit_edge.i.i371.unr-lcssa:                     ; preds = %bb.cu
  %lcmp.mod1752.not = icmp eq i64 %xtraiter1751, 0
  br i1 %lcmp.mod1752.not, label %._crit_edge.i.i371, label %.epil.preheader1750

.epil.preheader1750:                              ; preds = %._crit_edge.i.i371.unr-lcssa, %.lr.ph.i.i367
  %.013.i.i368.epil.init = phi i64 [ 0, %.lr.ph.i.i367 ], [ %i.acl, %._crit_edge.i.i371.unr-lcssa ]
  %.01112.i.i369.epil.init = phi i64 [ 0, %.lr.ph.i.i367 ], [ %i.ack, %._crit_edge.i.i371.unr-lcssa ]
  %lcmp.mod1754 = trunc i64 %i.abl to i1
  call void @llvm.assume(i1 %lcmp.mod1754)
  %i.abo = getelementptr inbounds nuw [4 x i8], ptr %i.abm, i64 %.013.i.i368.epil.init ; 2 uses
  %i.abp = load i32, ptr %i.abo, align 4, !tbaa !39
  %i.abq = zext i32 %i.abp to i64
  %i.abr = mul nuw nsw i64 %i.abq, 10
  %i.abs = add nuw nsw i64 %i.abr, %.01112.i.i369.epil.init ; 2 uses
  %i.abt = trunc i64 %i.abs to i32
  store i32 %i.abt, ptr %i.abo, align 4, !tbaa !39
  %i.abu = lshr i64 %i.abs, 32
  br label %._crit_edge.i.i371

._crit_edge.i.i371:                               ; preds = %._crit_edge.i.i371.unr-lcssa, %.epil.preheader1750
  %.lcssa1684 = phi i64 [ %i.ack, %._crit_edge.i.i371.unr-lcssa ], [ %i.abu, %.epil.preheader1750 ] ; 2 uses
  %i.abv = trunc nuw nsw i64 %.lcssa1684 to i32
  %.not.i.i372 = icmp eq i64 %.lcssa1684, 0
  br i1 %.not.i.i372, label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit379, label %bb.cv

bb.cu:                                            ; preds = %bb.cu, %.lr.ph.i.i367.new
  %.013.i.i368 = phi i64 [ 0, %.lr.ph.i.i367.new ], [ %i.acl, %bb.cu ] ; 3 uses
  %.01112.i.i369 = phi i64 [ 0, %.lr.ph.i.i367.new ], [ %i.ack, %bb.cu ]
  %niter1756 = phi i64 [ 0, %.lr.ph.i.i367.new ], [ %niter1756.next.1, %bb.cu ]
  %i.abw = getelementptr inbounds nuw [4 x i8], ptr %i.abm, i64 %.013.i.i368 ; 2 uses
  %i.abx = load i32, ptr %i.abw, align 4, !tbaa !39
  %i.aby = zext i32 %i.abx to i64
  %i.abz = mul nuw nsw i64 %i.aby, 10
  %i.aca = add nuw nsw i64 %i.abz, %.01112.i.i369 ; 2 uses
  %i.acb = trunc i64 %i.aca to i32
  store i32 %i.acb, ptr %i.abw, align 4, !tbaa !39
  %i.acc = lshr i64 %i.aca, 32
  %i.acd = getelementptr inbounds nuw [4 x i8], ptr %i.abm, i64 %.013.i.i368
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acd, i64 4 ; 2 uses
  %i.acf = load i32, ptr %i.ace, align 4, !tbaa !39
  %i.acg = zext i32 %i.acf to i64
  %i.ach = mul nuw nsw i64 %i.acg, 10
  %i.aci = add nuw nsw i64 %i.ach, %i.acc         ; 2 uses
  %i.acj = trunc i64 %i.aci to i32
  store i32 %i.acj, ptr %i.ace, align 4, !tbaa !39
  %i.ack = lshr i64 %i.aci, 32                    ; 3 uses
  %i.acl = add nuw nsw i64 %.013.i.i368, 2        ; 2 uses
  %niter1756.next.1 = add nuw nsw i64 %niter1756, 2 ; 2 uses
  %niter1756.ncmp.1 = icmp eq i64 %niter1756.next.1, %unroll_iter1755
  br i1 %niter1756.ncmp.1, label %._crit_edge.i.i371.unr-lcssa, label %bb.cu, !llvm.loop !1462

bb.cv:                                            ; preds = %._crit_edge.i.i371
  %i.acm = add i64 %i.abl, 1                      ; 3 uses
  %i.acn = load i64, ptr %i.a, align 8, !tbaa !1426
  %i.aco = icmp ugt i64 %i.acm, %i.acn
  br i1 %i.aco, label %bb.cw, label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i373

bb.cw:                                            ; preds = %bb.cv
  %i.acp = load ptr, ptr %i.b, align 8, !tbaa !1423
  invoke void %i.acp(ptr noundef nonnull align 8 dereferenceable(164) %5, i64 noundef %i.acm)
          to label %.noexc378 unwind label %bb.ci, !inline_history !1463

.noexc378:                                        ; preds = %bb.cw
  %.pre.i.i.i375 = load i64, ptr %i.c, align 8, !tbaa !1434 ; 2 uses
  %.pre2.i.i.i376 = add i64 %.pre.i.i.i375, 1
  %.pre.i377 = load ptr, ptr %5, align 8, !tbaa !1425
  br label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i373

_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i373: ; preds = %.noexc378, %bb.cv
  %i.acq = phi ptr [ %i.abm, %bb.cv ], [ %.pre.i377, %.noexc378 ]
  %.pre-phi.i.i.i374 = phi i64 [ %i.acm, %bb.cv ], [ %.pre2.i.i.i376, %.noexc378 ]
  %i.acr = phi i64 [ %i.abl, %bb.cv ], [ %.pre.i.i.i375, %.noexc378 ]
  store i64 %.pre-phi.i.i.i374, ptr %i.c, align 8, !tbaa !1434
  %i.acs = getelementptr inbounds nuw [4 x i8], ptr %i.acq, i64 %i.acr
  store i32 %i.abv, ptr %i.acs, align 4, !tbaa !39
  br label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit379

_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit379:    ; preds = %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i373, %._crit_edge.i.i371, %bb.ct
  %i.act = load i64, ptr %i.m, align 8, !tbaa !1434 ; 7 uses
  %.not14.i.i380 = icmp eq i64 %i.act, 0
  br i1 %.not14.i.i380, label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit393, label %.lr.ph.i.i381

.lr.ph.i.i381:                                    ; preds = %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit379
  %i.acu = load ptr, ptr %7, align 8, !tbaa !1425 ; 4 uses
  %xtraiter1758 = and i64 %i.act, 1
  %i.acv = icmp eq i64 %i.act, 1
  br i1 %i.acv, label %.epil.preheader1757, label %.lr.ph.i.i381.new

.lr.ph.i.i381.new:                                ; preds = %.lr.ph.i.i381
  %unroll_iter1762 = and i64 %i.act, -2
  br label %bb.cx

._crit_edge.i.i385.unr-lcssa:                     ; preds = %bb.cx
  %lcmp.mod1759.not = icmp eq i64 %xtraiter1758, 0
  br i1 %lcmp.mod1759.not, label %._crit_edge.i.i385, label %.epil.preheader1757

.epil.preheader1757:                              ; preds = %._crit_edge.i.i385.unr-lcssa, %.lr.ph.i.i381
  %.013.i.i382.epil.init = phi i64 [ 0, %.lr.ph.i.i381 ], [ %i.adt, %._crit_edge.i.i385.unr-lcssa ]
  %.01112.i.i383.epil.init = phi i64 [ 0, %.lr.ph.i.i381 ], [ %i.ads, %._crit_edge.i.i385.unr-lcssa ]
  %lcmp.mod1761 = trunc i64 %i.act to i1
  call void @llvm.assume(i1 %lcmp.mod1761)
  %i.acw = getelementptr inbounds nuw [4 x i8], ptr %i.acu, i64 %.013.i.i382.epil.init ; 2 uses
  %i.acx = load i32, ptr %i.acw, align 4, !tbaa !39
  %i.acy = zext i32 %i.acx to i64
  %i.acz = mul nuw nsw i64 %i.acy, 10
  %i.ada = add nuw nsw i64 %i.acz, %.01112.i.i383.epil.init ; 2 uses
  %i.adb = trunc i64 %i.ada to i32
  store i32 %i.adb, ptr %i.acw, align 4, !tbaa !39
  %i.adc = lshr i64 %i.ada, 32
  br label %._crit_edge.i.i385

._crit_edge.i.i385:                               ; preds = %._crit_edge.i.i385.unr-lcssa, %.epil.preheader1757
  %.lcssa1685 = phi i64 [ %i.ads, %._crit_edge.i.i385.unr-lcssa ], [ %i.adc, %.epil.preheader1757 ] ; 2 uses
  %i.add = trunc nuw nsw i64 %.lcssa1685 to i32
  %.not.i.i386 = icmp eq i64 %.lcssa1685, 0
  br i1 %.not.i.i386, label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit393, label %bb.cy

bb.cx:                                            ; preds = %bb.cx, %.lr.ph.i.i381.new
  %.013.i.i382 = phi i64 [ 0, %.lr.ph.i.i381.new ], [ %i.adt, %bb.cx ] ; 3 uses
  %.01112.i.i383 = phi i64 [ 0, %.lr.ph.i.i381.new ], [ %i.ads, %bb.cx ]
  %niter1763 = phi i64 [ 0, %.lr.ph.i.i381.new ], [ %niter1763.next.1, %bb.cx ]
  %i.ade = getelementptr inbounds nuw [4 x i8], ptr %i.acu, i64 %.013.i.i382 ; 2 uses
  %i.adf = load i32, ptr %i.ade, align 4, !tbaa !39
  %i.adg = zext i32 %i.adf to i64
  %i.adh = mul nuw nsw i64 %i.adg, 10
  %i.adi = add nuw nsw i64 %i.adh, %.01112.i.i383 ; 2 uses
  %i.adj = trunc i64 %i.adi to i32
  store i32 %i.adj, ptr %i.ade, align 4, !tbaa !39
  %i.adk = lshr i64 %i.adi, 32
  %i.adl = getelementptr inbounds nuw [4 x i8], ptr %i.acu, i64 %.013.i.i382
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adl, i64 4 ; 2 uses
  %i.adn = load i32, ptr %i.adm, align 4, !tbaa !39
  %i.ado = zext i32 %i.adn to i64
  %i.adp = mul nuw nsw i64 %i.ado, 10
  %i.adq = add nuw nsw i64 %i.adp, %i.adk         ; 2 uses
  %i.adr = trunc i64 %i.adq to i32
  store i32 %i.adr, ptr %i.adm, align 4, !tbaa !39
  %i.ads = lshr i64 %i.adq, 32                    ; 3 uses
  %i.adt = add nuw nsw i64 %.013.i.i382, 2        ; 2 uses
  %niter1763.next.1 = add nuw nsw i64 %niter1763, 2 ; 2 uses
  %niter1763.ncmp.1 = icmp eq i64 %niter1763.next.1, %unroll_iter1762
  br i1 %niter1763.ncmp.1, label %._crit_edge.i.i385.unr-lcssa, label %bb.cx, !llvm.loop !1462

bb.cy:                                            ; preds = %._crit_edge.i.i385
  %i.adu = add i64 %i.act, 1                      ; 3 uses
  %i.adv = load i64, ptr %i.k, align 8, !tbaa !1426
  %i.adw = icmp ugt i64 %i.adu, %i.adv
  br i1 %i.adw, label %bb.cz, label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i387

bb.cz:                                            ; preds = %bb.cy
  %i.adx = load ptr, ptr %i.l, align 8, !tbaa !1423
  invoke void %i.adx(ptr noundef nonnull align 8 dereferenceable(164) %7, i64 noundef %i.adu)
          to label %.noexc392 unwind label %bb.ci, !inline_history !1463

.noexc392:                                        ; preds = %bb.cz
  %.pre.i.i.i389 = load i64, ptr %i.m, align 8, !tbaa !1434 ; 2 uses
  %.pre2.i.i.i390 = add i64 %.pre.i.i.i389, 1
  %.pre.i391 = load ptr, ptr %7, align 8, !tbaa !1425
  br label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i387

_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i387: ; preds = %.noexc392, %bb.cy
  %i.ady = phi ptr [ %i.acu, %bb.cy ], [ %.pre.i391, %.noexc392 ]
  %.pre-phi.i.i.i388 = phi i64 [ %i.adu, %bb.cy ], [ %.pre2.i.i.i390, %.noexc392 ]
  %i.adz = phi i64 [ %i.act, %bb.cy ], [ %.pre.i.i.i389, %.noexc392 ]
  store i64 %.pre-phi.i.i.i388, ptr %i.m, align 8, !tbaa !1434
  %i.aea = getelementptr inbounds nuw [4 x i8], ptr %i.ady, i64 %i.adz
  store i32 %i.add, ptr %i.aea, align 4, !tbaa !39
  br label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit393

_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit393:    ; preds = %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i387, %._crit_edge.i.i385, %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit379
  br i1 %.not97, label %.backedge.backedge, label %bb.da

.backedge.backedge:                               ; preds = %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit393, %bb.da, %._crit_edge.i.i399, %.split, %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i401
  %indvars.iv673.be = phi i64 [ %indvars.iv.next674832841, %.split ], [ %indvars.iv.next674, %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i401 ], [ %indvars.iv.next674, %._crit_edge.i.i399 ], [ %indvars.iv.next674, %bb.da ], [ %indvars.iv.next674, %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit393 ]
  br label %.backedge, !llvm.loop !1466

bb.da:                                            ; preds = %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit393
  %i.aeb = load i64, ptr %.2.sroa.gep513, align 8, !tbaa !1434 ; 7 uses
  %.not14.i.i394 = icmp eq i64 %i.aeb, 0
  br i1 %.not14.i.i394, label %.backedge.backedge, label %.lr.ph.i.i395

.lr.ph.i.i395:                                    ; preds = %bb.da
  %i.aec = load ptr, ptr %.2, align 8, !tbaa !1425 ; 4 uses
  %xtraiter1765 = and i64 %i.aeb, 1
  %i.aed = icmp eq i64 %i.aeb, 1
  br i1 %i.aed, label %.epil.preheader1764, label %.lr.ph.i.i395.new

.lr.ph.i.i395.new:                                ; preds = %.lr.ph.i.i395
  %unroll_iter1769 = and i64 %i.aeb, -2
  br label %bb.db

._crit_edge.i.i399.unr-lcssa:                     ; preds = %bb.db
  %lcmp.mod1766.not = icmp eq i64 %xtraiter1765, 0
  br i1 %lcmp.mod1766.not, label %._crit_edge.i.i399, label %.epil.preheader1764

.epil.preheader1764:                              ; preds = %._crit_edge.i.i399.unr-lcssa, %.lr.ph.i.i395
  %.013.i.i396.epil.init = phi i64 [ 0, %.lr.ph.i.i395 ], [ %i.afb, %._crit_edge.i.i399.unr-lcssa ]
  %.01112.i.i397.epil.init = phi i64 [ 0, %.lr.ph.i.i395 ], [ %i.afa, %._crit_edge.i.i399.unr-lcssa ]
  %lcmp.mod1768 = trunc i64 %i.aeb to i1
  call void @llvm.assume(i1 %lcmp.mod1768)
  %i.aee = getelementptr inbounds nuw [4 x i8], ptr %i.aec, i64 %.013.i.i396.epil.init ; 2 uses
  %i.aef = load i32, ptr %i.aee, align 4, !tbaa !39
  %i.aeg = zext i32 %i.aef to i64
  %i.aeh = mul nuw nsw i64 %i.aeg, 10
  %i.aei = add nuw nsw i64 %i.aeh, %.01112.i.i397.epil.init ; 2 uses
  %i.aej = trunc i64 %i.aei to i32
  store i32 %i.aej, ptr %i.aee, align 4, !tbaa !39
  %i.aek = lshr i64 %i.aei, 32
  br label %._crit_edge.i.i399

._crit_edge.i.i399:                               ; preds = %._crit_edge.i.i399.unr-lcssa, %.epil.preheader1764
  %.lcssa1686 = phi i64 [ %i.afa, %._crit_edge.i.i399.unr-lcssa ], [ %i.aek, %.epil.preheader1764 ] ; 2 uses
  %i.ael = trunc nuw nsw i64 %.lcssa1686 to i32
  %.not.i.i400 = icmp eq i64 %.lcssa1686, 0
  br i1 %.not.i.i400, label %.backedge.backedge, label %bb.dc

bb.db:                                            ; preds = %bb.db, %.lr.ph.i.i395.new
  %.013.i.i396 = phi i64 [ 0, %.lr.ph.i.i395.new ], [ %i.afb, %bb.db ] ; 3 uses
  %.01112.i.i397 = phi i64 [ 0, %.lr.ph.i.i395.new ], [ %i.afa, %bb.db ]
  %niter1770 = phi i64 [ 0, %.lr.ph.i.i395.new ], [ %niter1770.next.1, %bb.db ]
  %i.aem = getelementptr inbounds nuw [4 x i8], ptr %i.aec, i64 %.013.i.i396 ; 2 uses
  %i.aen = load i32, ptr %i.aem, align 4, !tbaa !39
  %i.aeo = zext i32 %i.aen to i64
  %i.aep = mul nuw nsw i64 %i.aeo, 10
  %i.aeq = add nuw nsw i64 %i.aep, %.01112.i.i397 ; 2 uses
  %i.aer = trunc i64 %i.aeq to i32
  store i32 %i.aer, ptr %i.aem, align 4, !tbaa !39
  %i.aes = lshr i64 %i.aeq, 32
  %i.aet = getelementptr inbounds nuw [4 x i8], ptr %i.aec, i64 %.013.i.i396
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aet, i64 4 ; 2 uses
  %i.aev = load i32, ptr %i.aeu, align 4, !tbaa !39
  %i.aew = zext i32 %i.aev to i64
  %i.aex = mul nuw nsw i64 %i.aew, 10
  %i.aey = add nuw nsw i64 %i.aex, %i.aes         ; 2 uses
  %i.aez = trunc i64 %i.aey to i32
  store i32 %i.aez, ptr %i.aeu, align 4, !tbaa !39
  %i.afa = lshr i64 %i.aey, 32                    ; 3 uses
  %i.afb = add nuw nsw i64 %.013.i.i396, 2        ; 2 uses
  %niter1770.next.1 = add nuw nsw i64 %niter1770, 2 ; 2 uses
  %niter1770.ncmp.1 = icmp eq i64 %niter1770.next.1, %unroll_iter1769
  br i1 %niter1770.ncmp.1, label %._crit_edge.i.i399.unr-lcssa, label %bb.db, !llvm.loop !1462

bb.dc:                                            ; preds = %._crit_edge.i.i399
  %i.afc = add i64 %i.aeb, 1                      ; 3 uses
  %i.afd = load i64, ptr %.2.sroa.gep522, align 8, !tbaa !1426
  %i.afe = icmp ugt i64 %i.afc, %i.afd
  br i1 %i.afe, label %bb.dd, label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i401

bb.dd:                                            ; preds = %bb.dc
  %i.aff = load ptr, ptr %.2.sroa.gep525, align 8, !tbaa !1423
  invoke void %i.aff(ptr noundef nonnull align 8 dereferenceable(164) %.2, i64 noundef %i.afc)
          to label %.noexc406 unwind label %bb.ci, !inline_history !1463

.noexc406:                                        ; preds = %bb.dd
  %.pre.i.i.i403 = load i64, ptr %.2.sroa.gep513, align 8, !tbaa !1434 ; 2 uses
  %.pre2.i.i.i404 = add i64 %.pre.i.i.i403, 1
  %.pre.i405 = load ptr, ptr %.2, align 8, !tbaa !1425
  br label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i401

_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i401: ; preds = %.noexc406, %bb.dc
  %i.afg = phi ptr [ %i.aec, %bb.dc ], [ %.pre.i405, %.noexc406 ]
  %.pre-phi.i.i.i402 = phi i64 [ %i.afc, %bb.dc ], [ %.pre2.i.i.i404, %.noexc406 ]
  %i.afh = phi i64 [ %i.aeb, %bb.dc ], [ %.pre.i.i.i403, %.noexc406 ]
  store i64 %.pre-phi.i.i.i402, ptr %.2.sroa.gep513, align 8, !tbaa !1434
  %i.afi = getelementptr inbounds nuw [4 x i8], ptr %i.afg, i64 %i.afh
  store i32 %i.ael, ptr %i.afi, align 4, !tbaa !39
  br label %.backedge.backedge

bb.de:                                            ; preds = %bb.br
  %i.afj = add i32 %.0542, -1                     ; 4 uses
  %i.afk = load i32, ptr %4, align 4, !tbaa !39
  %i.afl = sub nsw i32 %i.afk, %i.afj
  store i32 %i.afl, ptr %4, align 4, !tbaa !39
  %i.afm = icmp slt i32 %.0542, 1
  br i1 %i.afm, label %bb.df, label %bb.dt

bb.df:                                            ; preds = %bb.de
  %i.afn = icmp eq i32 %.0542, 0
  br i1 %i.afn, label %bb.dg, label %_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit440

bb.dg:                                            ; preds = %bb.df
  %i.afo = load i64, ptr %i.h, align 8, !tbaa !1434 ; 8 uses
  %.not14.i.i408 = icmp eq i64 %i.afo, 0
  br i1 %.not14.i.i408, label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit421, label %.lr.ph.i.i409

.lr.ph.i.i409:                                    ; preds = %bb.dg
  %i.afp = load ptr, ptr %6, align 8, !tbaa !1425 ; 4 uses
  %xtraiter1744 = and i64 %i.afo, 1
  %i.afq = icmp eq i64 %i.afo, 1
  br i1 %i.afq, label %.epil.preheader1743, label %.lr.ph.i.i409.new

.lr.ph.i.i409.new:                                ; preds = %.lr.ph.i.i409
  %unroll_iter1748 = and i64 %i.afo, -2
  br label %bb.dh

._crit_edge.i.i413.unr-lcssa:                     ; preds = %bb.dh
  %lcmp.mod1745.not = icmp eq i64 %xtraiter1744, 0
  br i1 %lcmp.mod1745.not, label %._crit_edge.i.i413, label %.epil.preheader1743

.epil.preheader1743:                              ; preds = %._crit_edge.i.i413.unr-lcssa, %.lr.ph.i.i409
  %.013.i.i410.epil.init = phi i64 [ 0, %.lr.ph.i.i409 ], [ %i.ago, %._crit_edge.i.i413.unr-lcssa ]
  %.01112.i.i411.epil.init = phi i64 [ 0, %.lr.ph.i.i409 ], [ %i.agn, %._crit_edge.i.i413.unr-lcssa ]
  %lcmp.mod1747 = trunc i64 %i.afo to i1
  call void @llvm.assume(i1 %lcmp.mod1747)
  %i.afr = getelementptr inbounds nuw [4 x i8], ptr %i.afp, i64 %.013.i.i410.epil.init ; 2 uses
  %i.afs = load i32, ptr %i.afr, align 4, !tbaa !39
  %i.aft = zext i32 %i.afs to i64
  %i.afu = mul nuw nsw i64 %i.aft, 10
  %i.afv = add nuw nsw i64 %i.afu, %.01112.i.i411.epil.init ; 2 uses
  %i.afw = trunc i64 %i.afv to i32
  store i32 %i.afw, ptr %i.afr, align 4, !tbaa !39
  %i.afx = lshr i64 %i.afv, 32
  br label %._crit_edge.i.i413

._crit_edge.i.i413:                               ; preds = %._crit_edge.i.i413.unr-lcssa, %.epil.preheader1743
  %.lcssa1687 = phi i64 [ %i.agn, %._crit_edge.i.i413.unr-lcssa ], [ %i.afx, %.epil.preheader1743 ] ; 2 uses
  %i.afy = trunc nuw nsw i64 %.lcssa1687 to i32
  %.not.i.i414 = icmp eq i64 %.lcssa1687, 0
  br i1 %.not.i.i414, label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit421, label %bb.di

bb.dh:                                            ; preds = %bb.dh, %.lr.ph.i.i409.new
  %.013.i.i410 = phi i64 [ 0, %.lr.ph.i.i409.new ], [ %i.ago, %bb.dh ] ; 3 uses
  %.01112.i.i411 = phi i64 [ 0, %.lr.ph.i.i409.new ], [ %i.agn, %bb.dh ]
  %niter1749 = phi i64 [ 0, %.lr.ph.i.i409.new ], [ %niter1749.next.1, %bb.dh ]
  %i.afz = getelementptr inbounds nuw [4 x i8], ptr %i.afp, i64 %.013.i.i410 ; 2 uses
  %i.aga = load i32, ptr %i.afz, align 4, !tbaa !39
  %i.agb = zext i32 %i.aga to i64
  %i.agc = mul nuw nsw i64 %i.agb, 10
  %i.agd = add nuw nsw i64 %i.agc, %.01112.i.i411 ; 2 uses
  %i.age = trunc i64 %i.agd to i32
  store i32 %i.age, ptr %i.afz, align 4, !tbaa !39
  %i.agf = lshr i64 %i.agd, 32
  %i.agg = getelementptr inbounds nuw [4 x i8], ptr %i.afp, i64 %.013.i.i410
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agg, i64 4 ; 2 uses
  %i.agi = load i32, ptr %i.agh, align 4, !tbaa !39
  %i.agj = zext i32 %i.agi to i64
  %i.agk = mul nuw nsw i64 %i.agj, 10
  %i.agl = add nuw nsw i64 %i.agk, %i.agf         ; 2 uses
  %i.agm = trunc i64 %i.agl to i32
  store i32 %i.agm, ptr %i.agh, align 4, !tbaa !39
  %i.agn = lshr i64 %i.agl, 32                    ; 3 uses
  %i.ago = add nuw nsw i64 %.013.i.i410, 2        ; 2 uses
  %niter1749.next.1 = add nuw nsw i64 %niter1749, 2 ; 2 uses
  %niter1749.ncmp.1 = icmp eq i64 %niter1749.next.1, %unroll_iter1748
  br i1 %niter1749.ncmp.1, label %._crit_edge.i.i413.unr-lcssa, label %bb.dh, !llvm.loop !1462

bb.di:                                            ; preds = %._crit_edge.i.i413
  %i.agp = add i64 %i.afo, 1                      ; 3 uses
  %i.agq = load i64, ptr %i.f, align 8, !tbaa !1426
  %i.agr = icmp ugt i64 %i.agp, %i.agq
  br i1 %i.agr, label %bb.dj, label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i415

bb.dj:                                            ; preds = %bb.di
  %i.ags = load ptr, ptr %i.g, align 8, !tbaa !1423
  invoke void %i.ags(ptr noundef nonnull align 8 dereferenceable(164) %6, i64 noundef %i.agp)
          to label %.noexc420 unwind label %bb.dq, !inline_history !1463

.noexc420:                                        ; preds = %bb.dj
  %.pre.i.i.i417 = load i64, ptr %i.h, align 8, !tbaa !1434 ; 2 uses
  %.pre2.i.i.i418 = add i64 %.pre.i.i.i417, 1
  %.pre.i419 = load ptr, ptr %6, align 8, !tbaa !1425
  br label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i415

_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i415: ; preds = %.noexc420, %bb.di
  %i.agt = phi ptr [ %i.afp, %bb.di ], [ %.pre.i419, %.noexc420 ]
  %.pre-phi.i.i.i416 = phi i64 [ %i.agp, %bb.di ], [ %.pre2.i.i.i418, %.noexc420 ] ; 2 uses
  %i.agu = phi i64 [ %i.afo, %bb.di ], [ %.pre.i.i.i417, %.noexc420 ]
  store i64 %.pre-phi.i.i.i416, ptr %i.h, align 8, !tbaa !1434
  %i.agv = getelementptr inbounds nuw [4 x i8], ptr %i.agt, i64 %i.agu
  store i32 %i.afy, ptr %i.agv, align 4, !tbaa !39
  br label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit421

_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit421:    ; preds = %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i415, %._crit_edge.i.i413, %bb.dg
  %i.agw = phi i64 [ %.pre-phi.i.i.i416, %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i415 ], [ %i.afo, %._crit_edge.i.i413 ], [ 0, %bb.dg ] ; 2 uses
  %i.agx = load i64, ptr %i.c, align 8, !tbaa !1434
  %i.agy = trunc i64 %i.agx to i32
  %i.agz = load i32, ptr %i.e, align 8, !tbaa !1427 ; 3 uses
  %i.aha = add nsw i32 %i.agz, %i.agy             ; 3 uses
  %i.ahb = trunc i64 %i.agw to i32
  %i.ahc = load i32, ptr %i.j, align 8, !tbaa !1427 ; 3 uses
  %i.ahd = add nsw i32 %i.ahc, %i.ahb             ; 4 uses
  %i.ahe = add nsw i32 %i.aha, 1
  %i.ahf = icmp slt i32 %i.ahe, %i.ahd
  br i1 %i.ahf, label %_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit440, label %bb.dk

bb.dk:                                            ; preds = %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit421
  %i.ahg = icmp sgt i32 %i.aha, %i.ahd
  br i1 %i.ahg, label %_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit440, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.ahh = call noundef i32 @llvm.smin.i32(i32 %i.agz, i32 %i.ahc) ; 2 uses
  %.not.not.not53.i422 = icmp sgt i32 %i.ahd, %i.ahh
  br i1 %.not.not.not53.i422, label %.lr.ph.i424, label %_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit440

.lr.ph.i424:                                      ; preds = %bb.dl
  %i.ahi = load ptr, ptr %5, align 8
  %i.ahj = load ptr, ptr %6, align 8
  %i.ahk = sext i32 %i.ahc to i64                 ; 3 uses
  %sext.i425 = shl i64 %i.agw, 32
  %i.ahl = ashr exact i64 %sext.i425, 32
  %i.ahm = add nsw i64 %i.ahl, %i.ahk
  %i.ahn = sext i32 %i.ahd to i64
  %i.aho = sext i32 %i.aha to i64
  %i.ahp = sext i32 %i.agz to i64                 ; 2 uses
  %i.ahq = sext i32 %i.ahh to i64
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dp, %.lr.ph.i424
  %indvars.iv.i426 = phi i64 [ %i.ahm, %.lr.ph.i424 ], [ %indvars.iv.next.i428, %bb.dp ] ; 5 uses
  %.03254.i427 = phi i64 [ 0, %.lr.ph.i424 ], [ %i.aii, %bb.dp ] ; 2 uses
  %indvars.iv.next.i428 = add nsw i64 %indvars.iv.i426, -1 ; 4 uses
  %.not.i.i429 = icmp sgt i64 %indvars.iv.i426, %i.ahp
  %i.ahr = icmp sle i64 %indvars.iv.i426, %i.aho
  %or.cond.i430 = and i1 %.not.i.i429, %i.ahr
  br i1 %or.cond.i430, label %bb.dn, label %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit44.i434

bb.dn:                                            ; preds = %bb.dm
  %i.ahs = sub nsw i64 %indvars.iv.next.i428, %i.ahp
  %i.aht = getelementptr inbounds [4 x i8], ptr %i.ahi, i64 %i.ahs
  %i.ahu = load i32, ptr %i.aht, align 4, !tbaa !39
  %i.ahv = zext i32 %i.ahu to i64
  %i.ahw = shl nuw nsw i64 %i.ahv, 1
  br label %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit44.i434

_ZNK3fmt3v116detail6bigint9get_bigitEi.exit44.i434: ; preds = %bb.dm, %bb.dn
  %i.ahx = phi i64 [ %i.ahw, %bb.dn ], [ 0, %bb.dm ] ; 2 uses
  %.not.i45.i435 = icmp sgt i64 %indvars.iv.i426, %i.ahk
  %i.ahy = icmp sle i64 %indvars.iv.i426, %i.ahn
  %or.cond51.i436 = and i1 %.not.i45.i435, %i.ahy
  br i1 %or.cond51.i436, label %bb.do, label %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit46.i437

bb.do:                                            ; preds = %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit44.i434
  %i.ahz = sub nsw i64 %indvars.iv.next.i428, %i.ahk
  %i.aia = getelementptr inbounds [4 x i8], ptr %i.ahj, i64 %i.ahz
  %i.aib = load i32, ptr %i.aia, align 4, !tbaa !39
  %i.aic = zext i32 %i.aib to i64
  %i.aid = or disjoint i64 %.03254.i427, %i.aic
  br label %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit46.i437

_ZNK3fmt3v116detail6bigint9get_bigitEi.exit46.i437: ; preds = %bb.do, %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit44.i434
  %i.aie = phi i64 [ %i.aid, %bb.do ], [ %.03254.i427, %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit44.i434 ] ; 2 uses
  %i.aif = icmp ugt i64 %i.ahx, %i.aie
  br i1 %i.aif, label %_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit440, label %bb.dp

bb.dp:                                            ; preds = %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit46.i437
  %i.aig = sub nuw nsw i64 %i.aie, %i.ahx         ; 2 uses
  %i.aih = icmp ult i64 %i.aig, 2
  %i.aii = shl nuw nsw i64 %i.aig, 32
  %.not.not.not.i438 = icmp sgt i64 %indvars.iv.next.i428, %i.ahq
  %or.cond564 = select i1 %i.aih, i1 %.not.not.not.i438, i1 false
  br i1 %or.cond564, label %bb.dm, label %_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit440, !llvm.loop !1461

bb.dq:                                            ; preds = %bb.dr, %bb.dj
  %i.aij = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit440: ; preds = %bb.dp, %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit46.i437, %bb.dl, %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit421, %bb.dk, %bb.df
  %.0541 = phi i8 [ 48, %bb.df ], [ 48, %bb.dl ], [ 49, %bb.dk ], [ 48, %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit421 ], [ 48, %bb.dp ], [ 49, %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit46.i437 ]
  %i.aik = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.ail = load i64, ptr %i.aik, align 8, !tbaa !1261 ; 2 uses
  %i.aim = add i64 %i.ail, 1                      ; 3 uses
  %i.ain = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aio = load i64, ptr %i.ain, align 8, !tbaa !1256
  %i.aip = icmp ugt i64 %i.aim, %i.aio
  br i1 %i.aip, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit440
  %i.aiq = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.air = load ptr, ptr %i.aiq, align 8, !tbaa !1253
  invoke void %i.air(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.aim)
          to label %.noexc442 unwind label %bb.dq, !inline_history !1467

.noexc442:                                        ; preds = %bb.dr
  %.pre.i441 = load i64, ptr %i.aik, align 8, !tbaa !1261 ; 2 uses
  %.pre2.i = add i64 %.pre.i441, 1
  br label %bb.ds

bb.ds:                                            ; preds = %.noexc442, %_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit440
  %.pre-phi.i = phi i64 [ %i.aim, %_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit440 ], [ %.pre2.i, %.noexc442 ]
  %i.ais = phi i64 [ %i.ail, %_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit440 ], [ %.pre.i441, %.noexc442 ]
  %i.ait = load ptr, ptr %3, align 8, !tbaa !1255
  store i64 %.pre-phi.i, ptr %i.aik, align 8, !tbaa !1261
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.ait, i64 %i.ais
  store i8 %.0541, ptr %i.aiu, align 1, !tbaa !38
  br label %.loopexit

bb.dt:                                            ; preds = %bb.de
  %i.aiv = zext nneg i32 %.0542 to i64            ; 4 uses
  %i.aiw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.aix = load i64, ptr %i.aiw, align 8, !tbaa !1256 ; 2 uses
  %i.aiy = icmp ult i64 %i.aix, %i.aiv
  br i1 %i.aiy, label %bb.du, label %_ZN3fmt3v116detail6bufferIcE10try_resizeEm.exit445

bb.du:                                            ; preds = %bb.dt
  %i.aiz = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.aja = load ptr, ptr %i.aiz, align 8, !tbaa !1253
  invoke void %i.aja(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.aiv)
          to label %.noexc444 unwind label %bb.bm, !inline_history !1465

.noexc444:                                        ; preds = %bb.du
  %.pre.i443 = load i64, ptr %i.aiw, align 8, !tbaa !1256
  br label %_ZN3fmt3v116detail6bufferIcE10try_resizeEm.exit445

_ZN3fmt3v116detail6bufferIcE10try_resizeEm.exit445: ; preds = %bb.dt, %.noexc444
  %i.ajb = phi i64 [ %i.aix, %bb.dt ], [ %.pre.i443, %.noexc444 ]
  %i.ajc = call noundef i64 @llvm.umin.i64(i64 %i.aiv, i64 %i.ajb)
  %i.ajd = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 %i.ajc, ptr %i.ajd, align 8, !tbaa !1261
  %.not623 = icmp eq i32 %.0542, 1                ; 2 uses
  br i1 %.not623, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN3fmt3v116detail6bufferIcE10try_resizeEm.exit445
  %wide.trip.count = zext nneg i32 %i.afj to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit459, %_ZN3fmt3v116detail6bufferIcE10try_resizeEm.exit445
  %i.aje = invoke noundef i32 @_ZN3fmt3v116detail6bigint13divmod_assignERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %5, ptr noundef nonnull align 8 dereferenceable(164) %6)
          to label %bb.ea unwind label %bb.ek     ; 6 uses

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit459
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit459 ] ; 2 uses
  %i.ajf = invoke noundef i32 @_ZN3fmt3v116detail6bigint13divmod_assignERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %5, ptr noundef nonnull align 8 dereferenceable(164) %6)
          to label %bb.dv unwind label %bb.dz

bb.dv:                                            ; preds = %.lr.ph
  %i.ajg = trunc i32 %i.ajf to i8
  %i.ajh = add i8 %i.ajg, 48
  %i.aji = load ptr, ptr %3, align 8, !tbaa !1255
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.aji, i64 %indvars.iv
  store i8 %i.ajh, ptr %i.ajj, align 1, !tbaa !38
  %i.ajk = load i64, ptr %i.c, align 8, !tbaa !1434 ; 7 uses
  %.not14.i.i446 = icmp eq i64 %i.ajk, 0
  br i1 %.not14.i.i446, label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit459, label %.lr.ph.i.i447

.lr.ph.i.i447:                                    ; preds = %bb.dv
  %i.ajl = load ptr, ptr %5, align 8, !tbaa !1425 ; 4 uses
  %xtraiter1737 = and i64 %i.ajk, 1
  %i.ajm = icmp eq i64 %i.ajk, 1
  br i1 %i.ajm, label %.epil.preheader1736, label %.lr.ph.i.i447.new

.lr.ph.i.i447.new:                                ; preds = %.lr.ph.i.i447
  %unroll_iter1741 = and i64 %i.ajk, -2
  br label %bb.dw

._crit_edge.i.i451.unr-lcssa:                     ; preds = %bb.dw
  %lcmp.mod1738.not = icmp eq i64 %xtraiter1737, 0
  br i1 %lcmp.mod1738.not, label %._crit_edge.i.i451, label %.epil.preheader1736

.epil.preheader1736:                              ; preds = %._crit_edge.i.i451.unr-lcssa, %.lr.ph.i.i447
  %.013.i.i448.epil.init = phi i64 [ 0, %.lr.ph.i.i447 ], [ %i.akk, %._crit_edge.i.i451.unr-lcssa ]
  %.01112.i.i449.epil.init = phi i64 [ 0, %.lr.ph.i.i447 ], [ %i.akj, %._crit_edge.i.i451.unr-lcssa ]
  %lcmp.mod1740 = trunc i64 %i.ajk to i1
  call void @llvm.assume(i1 %lcmp.mod1740)
  %i.ajn = getelementptr inbounds nuw [4 x i8], ptr %i.ajl, i64 %.013.i.i448.epil.init ; 2 uses
  %i.ajo = load i32, ptr %i.ajn, align 4, !tbaa !39
  %i.ajp = zext i32 %i.ajo to i64
  %i.ajq = mul nuw nsw i64 %i.ajp, 10
  %i.ajr = add nuw nsw i64 %i.ajq, %.01112.i.i449.epil.init ; 2 uses
  %i.ajs = trunc i64 %i.ajr to i32
  store i32 %i.ajs, ptr %i.ajn, align 4, !tbaa !39
  %i.ajt = lshr i64 %i.ajr, 32
  br label %._crit_edge.i.i451

._crit_edge.i.i451:                               ; preds = %._crit_edge.i.i451.unr-lcssa, %.epil.preheader1736
  %.lcssa1694 = phi i64 [ %i.akj, %._crit_edge.i.i451.unr-lcssa ], [ %i.ajt, %.epil.preheader1736 ] ; 2 uses
  %i.aju = trunc nuw nsw i64 %.lcssa1694 to i32
  %.not.i.i452 = icmp eq i64 %.lcssa1694, 0
  br i1 %.not.i.i452, label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit459, label %bb.dx

bb.dw:                                            ; preds = %bb.dw, %.lr.ph.i.i447.new
  %.013.i.i448 = phi i64 [ 0, %.lr.ph.i.i447.new ], [ %i.akk, %bb.dw ] ; 3 uses
  %.01112.i.i449 = phi i64 [ 0, %.lr.ph.i.i447.new ], [ %i.akj, %bb.dw ]
  %niter1742 = phi i64 [ 0, %.lr.ph.i.i447.new ], [ %niter1742.next.1, %bb.dw ]
  %i.ajv = getelementptr inbounds nuw [4 x i8], ptr %i.ajl, i64 %.013.i.i448 ; 2 uses
  %i.ajw = load i32, ptr %i.ajv, align 4, !tbaa !39
  %i.ajx = zext i32 %i.ajw to i64
  %i.ajy = mul nuw nsw i64 %i.ajx, 10
  %i.ajz = add nuw nsw i64 %i.ajy, %.01112.i.i449 ; 2 uses
  %i.aka = trunc i64 %i.ajz to i32
  store i32 %i.aka, ptr %i.ajv, align 4, !tbaa !39
  %i.akb = lshr i64 %i.ajz, 32
  %i.akc = getelementptr inbounds nuw [4 x i8], ptr %i.ajl, i64 %.013.i.i448
  %i.akd = getelementptr inbounds nuw i8, ptr %i.akc, i64 4 ; 2 uses
  %i.ake = load i32, ptr %i.akd, align 4, !tbaa !39
  %i.akf = zext i32 %i.ake to i64
  %i.akg = mul nuw nsw i64 %i.akf, 10
  %i.akh = add nuw nsw i64 %i.akg, %i.akb         ; 2 uses
  %i.aki = trunc i64 %i.akh to i32
  store i32 %i.aki, ptr %i.akd, align 4, !tbaa !39
  %i.akj = lshr i64 %i.akh, 32                    ; 3 uses
  %i.akk = add nuw nsw i64 %.013.i.i448, 2        ; 2 uses
  %niter1742.next.1 = add nuw nsw i64 %niter1742, 2 ; 2 uses
  %niter1742.ncmp.1 = icmp eq i64 %niter1742.next.1, %unroll_iter1741
  br i1 %niter1742.ncmp.1, label %._crit_edge.i.i451.unr-lcssa, label %bb.dw, !llvm.loop !1462

bb.dx:                                            ; preds = %._crit_edge.i.i451
  %i.akl = add i64 %i.ajk, 1                      ; 3 uses
  %i.akm = load i64, ptr %i.a, align 8, !tbaa !1426
  %i.akn = icmp ugt i64 %i.akl, %i.akm
  br i1 %i.akn, label %bb.dy, label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i453

bb.dy:                                            ; preds = %bb.dx
  %i.ako = load ptr, ptr %i.b, align 8, !tbaa !1423
  invoke void %i.ako(ptr noundef nonnull align 8 dereferenceable(164) %5, i64 noundef %i.akl)
          to label %.noexc458 unwind label %bb.dz, !inline_history !1463

.noexc458:                                        ; preds = %bb.dy
  %.pre.i.i.i455 = load i64, ptr %i.c, align 8, !tbaa !1434 ; 2 uses
  %.pre2.i.i.i456 = add i64 %.pre.i.i.i455, 1
  %.pre.i457 = load ptr, ptr %5, align 8, !tbaa !1425
  br label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i453

_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i453: ; preds = %.noexc458, %bb.dx
  %i.akp = phi ptr [ %i.ajl, %bb.dx ], [ %.pre.i457, %.noexc458 ]
  %.pre-phi.i.i.i454 = phi i64 [ %i.akl, %bb.dx ], [ %.pre2.i.i.i456, %.noexc458 ]
  %i.akq = phi i64 [ %i.ajk, %bb.dx ], [ %.pre.i.i.i455, %.noexc458 ]
  store i64 %.pre-phi.i.i.i454, ptr %i.c, align 8, !tbaa !1434
  %i.akr = getelementptr inbounds nuw [4 x i8], ptr %i.akp, i64 %i.akq
  store i32 %i.aju, ptr %i.akr, align 4, !tbaa !39
  br label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit459

_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit459:    ; preds = %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i453, %._crit_edge.i.i451, %bb.dv
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1468

bb.dz:                                            ; preds = %bb.dy, %.lr.ph
  %i.aks = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ea:                                            ; preds = %._crit_edge
  %i.akt = load i64, ptr %i.c, align 8, !tbaa !1434
  %i.aku = trunc i64 %i.akt to i32
  %i.akv = load i32, ptr %i.e, align 8, !tbaa !1427 ; 3 uses
  %i.akw = add nsw i32 %i.akv, %i.aku             ; 3 uses
  %i.akx = load i64, ptr %i.h, align 8, !tbaa !1434 ; 2 uses
  %i.aky = trunc i64 %i.akx to i32
  %i.akz = load i32, ptr %i.j, align 8, !tbaa !1427 ; 3 uses
  %i.ala = add nsw i32 %i.akz, %i.aky             ; 4 uses
  %i.alb = add nsw i32 %i.akw, 1
  %i.alc = icmp slt i32 %i.alb, %i.ala
  br i1 %i.alc, label %.thread556, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.ald = icmp sgt i32 %i.akw, %i.ala
  br i1 %i.ald, label %_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit478, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.ale = call noundef i32 @llvm.smin.i32(i32 %i.akv, i32 %i.akz) ; 2 uses
  %.not.not.not53.i460 = icmp sgt i32 %i.ala, %i.ale
  br i1 %.not.not.not53.i460, label %.lr.ph.i462, label %bb.ei

.lr.ph.i462:                                      ; preds = %bb.ec
  %i.alf = load ptr, ptr %5, align 8
  %i.alg = load ptr, ptr %6, align 8
  %i.alh = sext i32 %i.akz to i64                 ; 3 uses
  %sext.i463 = shl i64 %i.akx, 32
  %i.ali = ashr exact i64 %sext.i463, 32
  %i.alj = add nsw i64 %i.ali, %i.alh
  %i.alk = sext i32 %i.ala to i64
  %i.all = sext i32 %i.akw to i64
  %i.alm = sext i32 %i.akv to i64                 ; 2 uses
  %i.aln = sext i32 %i.ale to i64
  br label %bb.ed

bb.ed:                                            ; preds = %bb.eh, %.lr.ph.i462
  %indvars.iv.i464 = phi i64 [ %i.alj, %.lr.ph.i462 ], [ %indvars.iv.next.i466, %bb.eh ] ; 5 uses
  %.03254.i465 = phi i64 [ 0, %.lr.ph.i462 ], [ %i.amf, %bb.eh ] ; 2 uses
  %indvars.iv.next.i466 = add nsw i64 %indvars.iv.i464, -1 ; 4 uses
  %.not.i.i467 = icmp sgt i64 %indvars.iv.i464, %i.alm
  %i.alo = icmp sle i64 %indvars.iv.i464, %i.all
  %or.cond.i468 = and i1 %.not.i.i467, %i.alo
  br i1 %or.cond.i468, label %bb.ee, label %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit44.i472

bb.ee:                                            ; preds = %bb.ed
  %i.alp = sub nsw i64 %indvars.iv.next.i466, %i.alm
  %i.alq = getelementptr inbounds [4 x i8], ptr %i.alf, i64 %i.alp
  %i.alr = load i32, ptr %i.alq, align 4, !tbaa !39
  %i.als = zext i32 %i.alr to i64
  %i.alt = shl nuw nsw i64 %i.als, 1
  br label %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit44.i472

_ZNK3fmt3v116detail6bigint9get_bigitEi.exit44.i472: ; preds = %bb.ed, %bb.ee
  %i.alu = phi i64 [ %i.alt, %bb.ee ], [ 0, %bb.ed ] ; 3 uses
  %.not.i45.i473 = icmp sgt i64 %indvars.iv.i464, %i.alh
  %i.alv = icmp sle i64 %indvars.iv.i464, %i.alk
  %or.cond51.i474 = and i1 %.not.i45.i473, %i.alv
  br i1 %or.cond51.i474, label %bb.ef, label %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit46.i475

bb.ef:                                            ; preds = %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit44.i472
  %i.alw = sub nsw i64 %indvars.iv.next.i466, %i.alh
  %i.alx = getelementptr inbounds [4 x i8], ptr %i.alg, i64 %i.alw
  %i.aly = load i32, ptr %i.alx, align 4, !tbaa !39
  %i.alz = zext i32 %i.aly to i64
  %i.ama = or disjoint i64 %.03254.i465, %i.alz
  br label %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit46.i475

_ZNK3fmt3v116detail6bigint9get_bigitEi.exit46.i475: ; preds = %bb.ef, %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit44.i472
  %i.amb = phi i64 [ %i.ama, %bb.ef ], [ %.03254.i465, %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit44.i472 ] ; 3 uses
  %i.amc = icmp ugt i64 %i.alu, %i.amb
  br i1 %i.amc, label %_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit478, label %bb.eg

bb.eg:                                            ; preds = %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit46.i475
  %i.amd = sub nuw nsw i64 %i.amb, %i.alu         ; 2 uses
  %i.ame = icmp ugt i64 %i.amd, 1
  br i1 %i.ame, label %.thread556, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.amf = shl nuw nsw i64 %i.amd, 32
  %.not.not.not.i476 = icmp sgt i64 %indvars.iv.next.i466, %i.aln
  br i1 %.not.not.not.i476, label %bb.ed, label %.thread.loopexit.i477, !llvm.loop !1461

.thread.loopexit.i477:                            ; preds = %bb.eh
  %i.amg = icmp ne i64 %i.amb, %i.alu
  br label %bb.ei

bb.ei:                                            ; preds = %bb.ec, %.thread.loopexit.i477
  %.4.i461.ph = phi i1 [ false, %bb.ec ], [ %i.amg, %.thread.loopexit.i477 ]
  %i.amh = and i32 %i.aje, 1
  %.not100 = icmp eq i32 %i.amh, 0
  %or.cond115 = or i1 %.not100, %.4.i461.ph
  br i1 %or.cond115, label %.thread556, label %_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit478

_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit478: ; preds = %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit46.i475, %bb.eb, %bb.ei
  %i.ami = icmp eq i32 %i.aje, 9
  br i1 %i.ami, label %bb.ej, label %bb.es

bb.ej:                                            ; preds = %_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit478
  %i.amj = load ptr, ptr %3, align 8, !tbaa !1255
  %i.amk = sext i32 %i.afj to i64
  %i.aml = getelementptr inbounds i8, ptr %i.amj, i64 %i.amk
  store i8 58, ptr %i.aml, align 1, !tbaa !38
  br i1 %.not623, label %.critedge, label %.lr.ph621

.lr.ph621:                                        ; preds = %bb.ej, %bb.el
  %indvars.iv670 = phi i64 [ %indvars.iv.next671, %bb.el ], [ %i.aiv, %bb.ej ] ; 3 uses
  %indvars.iv.next671 = add nsw i64 %indvars.iv670, -1 ; 2 uses
  %i.amm = load ptr, ptr %3, align 8, !tbaa !1255
  %i.amn = and i64 %indvars.iv.next671, 4294967295
  %i.amo = getelementptr inbounds nuw i8, ptr %i.amm, i64 %i.amn ; 2 uses
  %i.amp = load i8, ptr %i.amo, align 1, !tbaa !38
  %i.amq = icmp eq i8 %i.amp, 58
  br i1 %i.amq, label %bb.el, label %.critedge

.critedge:                                        ; preds = %.lr.ph621, %bb.el, %bb.ej
  %i.amr = load ptr, ptr %3, align 8, !tbaa !1255 ; 2 uses
  %i.ams = load i8, ptr %i.amr, align 1, !tbaa !38
  %i.amt = icmp eq i8 %i.ams, 58
  br i1 %i.amt, label %bb.em, label %.loopexit

bb.ek:                                            ; preds = %._crit_edge
  %i.amu = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.el:                                            ; preds = %.lr.ph621
  store i8 48, ptr %i.amo, align 1, !tbaa !38
  %i.amv = load ptr, ptr %3, align 8, !tbaa !1255
  %i.amw = getelementptr i8, ptr %i.amv, i64 %indvars.iv670
  %i.amx = getelementptr i8, ptr %i.amw, i64 -2   ; 2 uses
  %i.amy = load i8, ptr %i.amx, align 1, !tbaa !38
  %i.amz = add i8 %i.amy, 1
  store i8 %i.amz, ptr %i.amx, align 1, !tbaa !38
  %i.ana = trunc nuw i64 %indvars.iv670 to i32
  %i.anb = icmp sgt i32 %i.ana, 2
  br i1 %i.anb, label %.lr.ph621, label %.critedge, !llvm.loop !1469

bb.em:                                            ; preds = %.critedge
  store i8 49, ptr %i.amr, align 1, !tbaa !38
  %i.anc = and i32 %1, 4
  %.not101 = icmp eq i32 %i.anc, 0
  br i1 %.not101, label %bb.er, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.and = load i64, ptr %i.ajd, align 8, !tbaa !1261 ; 2 uses
  %i.ane = add i64 %i.and, 1                      ; 3 uses
  %i.anf = load i64, ptr %i.aiw, align 8, !tbaa !1256
  %i.ang = icmp ugt i64 %i.ane, %i.anf
  br i1 %i.ang, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.anh = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ani = load ptr, ptr %i.anh, align 8, !tbaa !1253
  invoke void %i.ani(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ane)
          to label %.noexc482 unwind label %bb.eq, !inline_history !1467

.noexc482:                                        ; preds = %bb.eo
  %.pre.i480 = load i64, ptr %i.ajd, align 8, !tbaa !1261 ; 2 uses
  %.pre2.i481 = add i64 %.pre.i480, 1
  br label %bb.ep

end_hunk_1
begin_hunk_2_@_ZN3fmt3v116detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi:bb.a
  br i1 %.not.i.i.i490, label %_ZN3fmt3v116detail6bigintD2Ev.exit491, label %bb.ex

bb.ex:                                            ; preds = %.body
  call void @free(ptr noundef %i.anz) #38
  br label %_ZN3fmt3v116detail6bigintD2Ev.exit491

_ZN3fmt3v116detail6bigintD2Ev.exit491:            ; preds = %bb.ex, %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  %i.aoa = load ptr, ptr %7, align 8, !tbaa !1425 ; 2 uses
  %.not.i.i.i492 = icmp eq ptr %i.aoa, %i.n
  br i1 %.not.i.i.i492, label %_ZN3fmt3v116detail6bigintD2Ev.exit493, label %bb.ey

bb.ey:                                            ; preds = %_ZN3fmt3v116detail6bigintD2Ev.exit491
  call void @free(ptr noundef %i.aoa) #38
  br label %_ZN3fmt3v116detail6bigintD2Ev.exit493

_ZN3fmt3v116detail6bigintD2Ev.exit493:            ; preds = %bb.ey, %_ZN3fmt3v116detail6bigintD2Ev.exit491
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  %i.aob = load ptr, ptr %6, align 8, !tbaa !1425 ; 2 uses
  %.not.i.i.i494 = icmp eq ptr %i.aob, %i.i
  br i1 %.not.i.i.i494, label %_ZN3fmt3v116detail6bigintD2Ev.exit495, label %bb.ez

bb.ez:                                            ; preds = %_ZN3fmt3v116detail6bigintD2Ev.exit493
  call void @free(ptr noundef %i.aob) #38
  br label %_ZN3fmt3v116detail6bigintD2Ev.exit495

_ZN3fmt3v116detail6bigintD2Ev.exit495:            ; preds = %bb.ez, %_ZN3fmt3v116detail6bigintD2Ev.exit493
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  %i.aoc = load ptr, ptr %5, align 8, !tbaa !1425 ; 2 uses
  %.not.i.i.i496 = icmp eq ptr %i.aoc, %i.d
  br i1 %.not.i.i.i496, label %_ZN3fmt3v116detail6bigintD2Ev.exit497, label %bb.fa

bb.fa:                                            ; preds = %_ZN3fmt3v116detail6bigintD2Ev.exit495
  call void @free(ptr noundef %i.aoc) #38
  br label %_ZN3fmt3v116detail6bigintD2Ev.exit497

_ZN3fmt3v116detail6bigintD2Ev.exit497:            ; preds = %_ZN3fmt3v116detail6bigintD2Ev.exit495, %bb.fa
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  resume { ptr, i32 } %.pn105.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #30

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN3fmt3v1112format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #21 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3fmt3v1112format_errorE, i64 16), ptr %0, align 8, !tbaa !20
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #13

declare void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3fmt3v1112format_errorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #38
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #47
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt3v116detail6bigint12assign_pow10Ei(ptr noundef nonnull align 8 dereferenceable(164) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !1425
  store i32 1, ptr %i.b, align 4, !tbaa !39
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1426
  %.not8.i.i.not = icmp eq i64 %i.d, 0
  br i1 %.not8.i.i.not, label %bb.c, label %_ZN3fmt3v116detail6bigintaSIiEEvT_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1423
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(164) %0, i64 noundef 1), !inline_history !1470
  %.pre.i.i.i.i = load i64, ptr %i.c, align 8, !tbaa !1426
  %i.g = icmp ne i64 %.pre.i.i.i.i, 0
  %i.h = zext i1 %i.g to i64
  br label %_ZN3fmt3v116detail6bigintaSIiEEvT_.exit

_ZN3fmt3v116detail6bigintaSIiEEvT_.exit:          ; preds = %bb.b, %bb.c
  %i.i = phi i64 [ 1, %bb.b ], [ %i.h, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !1434
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 0, ptr %i.k, align 8, !tbaa !1427
  br label %_ZN3fmt3v116detail6bigintlSEi.exit

bb.d:                                             ; preds = %bb.a
  %i.l = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %1, i1 true)
  %i.m = lshr exact i32 -2147483648, %i.l
  %i.n = load ptr, ptr %0, align 8, !tbaa !1425
  store i32 5, ptr %i.n, align 4, !tbaa !39
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !1426
  %.not8.i.i14.not = icmp eq i64 %i.p, 0
  br i1 %.not8.i.i14.not, label %bb.e, label %_ZN3fmt3v116detail6bigintaSIiEEvT_.exit16

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1423
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(164) %0, i64 noundef 1), !inline_history !1470
  %.pre.i.i.i.i15 = load i64, ptr %i.o, align 8, !tbaa !1426
  %i.s = icmp ne i64 %.pre.i.i.i.i15, 0
  %i.t = zext i1 %i.s to i64
  br label %_ZN3fmt3v116detail6bigintaSIiEEvT_.exit16

_ZN3fmt3v116detail6bigintaSIiEEvT_.exit16:        ; preds = %bb.d, %bb.e
  %i.u = phi i64 [ 1, %bb.d ], [ %i.t, %bb.e ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  store i64 %i.u, ptr %i.v, align 8, !tbaa !1434
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  store i32 0, ptr %i.w, align 8, !tbaa !1427
  %.019 = ashr i32 %i.m, 1                        ; 2 uses
  %.not20 = icmp eq i32 %.019, 0
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN3fmt3v116detail6bigintaSIiEEvT_.exit16
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit
  %.021 = phi i32 [ %.019, %.lr.ph ], [ %.0, %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit ] ; 2 uses
  tail call void @_ZN3fmt3v116detail6bigint6squareEv(ptr noundef nonnull align 8 dereferenceable(164) %0)
  %i.y = and i32 %.021, %1
  %.not10 = icmp eq i32 %i.y, 0
  br i1 %.not10, label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = load i64, ptr %i.v, align 8, !tbaa !1434 ; 7 uses
  %.not14.i.i = icmp eq i64 %i.z, 0
  br i1 %.not14.i.i, label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1425  ; 4 uses
  %xtraiter = and i64 %i.z, 1
  %i.ab = icmp eq i64 %i.z, 1
  br i1 %i.ab, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %i.z, -2
  br label %bb.h

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i
  %.013.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.az, %._crit_edge.i.i.unr-lcssa ]
  %.01112.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ay, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod43 = trunc i64 %i.z to i1
  tail call void @llvm.assume(i1 %lcmp.mod43)
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.013.i.i.epil.init ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !39
  %i.ae = zext i32 %i.ad to i64
  %i.af = mul nuw nsw i64 %i.ae, 5
  %i.ag = add nuw nsw i64 %i.af, %.01112.i.i.epil.init ; 2 uses
  %i.ah = trunc i64 %i.ag to i32
  store i32 %i.ah, ptr %i.ac, align 4, !tbaa !39
  %i.ai = lshr i64 %i.ag, 32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
  %.lcssa41 = phi i64 [ %i.ay, %._crit_edge.i.i.unr-lcssa ], [ %i.ai, %.epil.preheader ] ; 2 uses
  %i.aj = trunc nuw nsw i64 %.lcssa41 to i32
  %.not.i.i17 = icmp eq i64 %.lcssa41, 0
  br i1 %.not.i.i17, label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit, label %bb.i

bb.h:                                             ; preds = %bb.h, %.lr.ph.i.i.new
  %.013.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.az, %bb.h ] ; 3 uses
  %.01112.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.ay, %bb.h ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.h ]
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.013.i.i ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !39
  %i.am = zext i32 %i.al to i64
  %i.an = mul nuw nsw i64 %i.am, 5
  %i.ao = add nuw nsw i64 %i.an, %.01112.i.i      ; 2 uses
  %i.ap = trunc i64 %i.ao to i32
  store i32 %i.ap, ptr %i.ak, align 4, !tbaa !39
  %i.aq = lshr i64 %i.ao, 32
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.013.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !39
  %i.au = zext i32 %i.at to i64
  %i.av = mul nuw nsw i64 %i.au, 5
  %i.aw = add nuw nsw i64 %i.av, %i.aq            ; 2 uses
  %i.ax = trunc i64 %i.aw to i32
  store i32 %i.ax, ptr %i.as, align 4, !tbaa !39
  %i.ay = lshr i64 %i.aw, 32                      ; 3 uses
  %i.az = add nuw nsw i64 %.013.i.i, 2            ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.h, !llvm.loop !1462

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.ba = add i64 %i.z, 1                         ; 3 uses
  %i.bb = load i64, ptr %i.o, align 8, !tbaa !1426
  %i.bc = icmp ugt i64 %i.ba, %i.bb
  br i1 %i.bc, label %bb.j, label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.bd = load ptr, ptr %i.x, align 8, !tbaa !1423
  tail call void %i.bd(ptr noundef nonnull align 8 dereferenceable(164) %0, i64 noundef %i.ba), !inline_history !1471
  %.pre.i.i.i = load i64, ptr %i.v, align 8, !tbaa !1434 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !1425
  br label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i

_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i: ; preds = %bb.j, %bb.i
  %i.be = phi ptr [ %i.aa, %bb.i ], [ %.pre.i, %bb.j ]
  %.pre-phi.i.i.i = phi i64 [ %i.ba, %bb.i ], [ %.pre2.i.i.i, %bb.j ]
  %i.bf = phi i64 [ %i.z, %bb.i ], [ %.pre.i.i.i, %bb.j ]
  store i64 %.pre-phi.i.i.i, ptr %i.v, align 8, !tbaa !1434
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bf
  store i32 %i.aj, ptr %i.bg, align 4, !tbaa !39
  br label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit

_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit:       ; preds = %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i, %._crit_edge.i.i, %bb.g, %bb.f
  %.0 = ashr i32 %.021, 1                         ; 2 uses
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %._crit_edge.loopexit, label %bb.f, !llvm.loop !1472

._crit_edge.loopexit:                             ; preds = %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit
  %.pre = load i32, ptr %i.w, align 8, !tbaa !1427
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN3fmt3v116detail6bigintaSIiEEvT_.exit16
  %i.bh = phi i32 [ %.pre, %._crit_edge.loopexit ], [ 0, %_ZN3fmt3v116detail6bigintaSIiEEvT_.exit16 ]
  %i.bi = sdiv i32 %1, 32
  %i.bj = add nsw i32 %i.bh, %i.bi
  store i32 %i.bj, ptr %i.w, align 8, !tbaa !1427
  %i.bk = srem i32 %1, 32                         ; 4 uses
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %_ZN3fmt3v116detail6bigintlSEi.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.bm = load i64, ptr %i.v, align 8, !tbaa !1434 ; 7 uses
  %.not19.i = icmp eq i64 %i.bm, 0
  br i1 %.not19.i, label %_ZN3fmt3v116detail6bigintlSEi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k
  %i.bn = load ptr, ptr %0, align 8, !tbaa !1425  ; 3 uses
  %i.bo = sub nsw i32 32, %i.bk                   ; 2 uses
  %min.iters.check = icmp ult i64 %i.bm, 32
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.bm, -32                     ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.bo, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert34 = insertelement <8 x i32> poison, i32 %i.bk, i64 0
  %broadcast.splat35 = shufflevector <8 x i32> %broadcast.splatinsert34, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <8 x i32> [ <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph ], [ %i.bw, %vector.body ]
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %index ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 32 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 64 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 96 ; 2 uses
  %wide.load = load <8 x i32>, ptr %i.bp, align 4, !tbaa !39 ; 2 uses
  %wide.load36 = load <8 x i32>, ptr %i.bq, align 4, !tbaa !39 ; 2 uses
  %wide.load37 = load <8 x i32>, ptr %i.br, align 4, !tbaa !39 ; 2 uses
  %wide.load38 = load <8 x i32>, ptr %i.bs, align 4, !tbaa !39 ; 2 uses
  %i.bt = lshr <8 x i32> %wide.load, %broadcast.splat ; 2 uses
  %i.bu = lshr <8 x i32> %wide.load36, %broadcast.splat ; 2 uses
  %i.bv = lshr <8 x i32> %wide.load37, %broadcast.splat ; 2 uses
  %i.bw = lshr <8 x i32> %wide.load38, %broadcast.splat ; 3 uses
  %i.bx = shufflevector <8 x i32> %vector.recur, <8 x i32> %i.bt, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.by = shufflevector <8 x i32> %i.bt, <8 x i32> %i.bu, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.bz = shufflevector <8 x i32> %i.bu, <8 x i32> %i.bv, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.ca = shufflevector <8 x i32> %i.bv, <8 x i32> %i.bw, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.cb = shl <8 x i32> %wide.load, %broadcast.splat35
  %i.cc = shl <8 x i32> %wide.load36, %broadcast.splat35
  %i.cd = shl <8 x i32> %wide.load37, %broadcast.splat35
  %i.ce = shl <8 x i32> %wide.load38, %broadcast.splat35
  %i.cf = add <8 x i32> %i.cb, %i.bx
  %i.cg = add <8 x i32> %i.cc, %i.by
  %i.ch = add <8 x i32> %i.cd, %i.bz
  %i.ci = add <8 x i32> %i.ce, %i.ca
  store <8 x i32> %i.cf, ptr %i.bp, align 4, !tbaa !39
  store <8 x i32> %i.cg, ptr %i.bq, align 4, !tbaa !39
  store <8 x i32> %i.ch, ptr %i.br, align 4, !tbaa !39
  store <8 x i32> %i.ci, ptr %i.bs, align 4, !tbaa !39
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %middle.block, label %vector.body, !llvm.loop !1473

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <8 x i32> %i.bw, i64 7 ; 2 uses
  %cmp.n = icmp eq i64 %i.bm, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.01418.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  %.017.i.ph = phi i32 [ 0, %.lr.ph.i ], [ %vector.recur.extract, %middle.block ]
  br label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %vector.recur.extract, %middle.block ], [ %i.cm, %scalar.ph ] ; 2 uses
  %.not.i = icmp eq i32 %.lcssa, 0
  br i1 %.not.i, label %_ZN3fmt3v116detail6bigintlSEi.exit, label %bb.l

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.01418.i = phi i64 [ %i.cp, %scalar.ph ], [ %.01418.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.017.i = phi i32 [ %i.cm, %scalar.ph ], [ %.017.i.ph, %scalar.ph.preheader ]
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.01418.i ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !39 ; 2 uses
  %i.cm = lshr i32 %i.cl, %i.bo                   ; 2 uses
  %i.cn = shl i32 %i.cl, %i.bk
  %i.co = add i32 %i.cn, %.017.i
  store i32 %i.co, ptr %i.ck, align 4, !tbaa !39
  %i.cp = add nuw i64 %.01418.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cp, %i.bm
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !1474

bb.l:                                             ; preds = %._crit_edge.i
  %i.cq = add i64 %i.bm, 1                        ; 3 uses
  %i.cr = load i64, ptr %i.o, align 8, !tbaa !1426
  %i.cs = icmp ugt i64 %i.cq, %i.cr
  br i1 %i.cs, label %bb.m, label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i

bb.m:                                             ; preds = %bb.l
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !1423
  tail call void %i.cu(ptr noundef nonnull align 8 dereferenceable(164) %0, i64 noundef %i.cq), !inline_history !1475
  %.pre.i.i = load i64, ptr %i.v, align 8, !tbaa !1434 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  %.pre23 = load ptr, ptr %0, align 8, !tbaa !1425
  br label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i

_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i: ; preds = %bb.m, %bb.l
  %i.cv = phi ptr [ %i.bn, %bb.l ], [ %.pre23, %bb.m ]
  %.pre-phi.i.i = phi i64 [ %i.cq, %bb.l ], [ %.pre2.i.i, %bb.m ]
  %i.cw = phi i64 [ %i.bm, %bb.l ], [ %.pre.i.i, %bb.m ]
  store i64 %.pre-phi.i.i, ptr %i.v, align 8, !tbaa !1434
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.cw
  store i32 %.lcssa, ptr %i.cx, align 4, !tbaa !39
  br label %_ZN3fmt3v116detail6bigintlSEi.exit

_ZN3fmt3v116detail6bigintlSEi.exit:               ; preds = %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i, %._crit_edge.i, %bb.k, %._crit_edge, %_ZN3fmt3v116detail6bigintaSIiEEvT_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN3fmt3v116detail6bigint13divmod_assignERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %0, ptr noundef nonnull align 8 dereferenceable(164) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1434 ; 7 uses
  %i.c = trunc i64 %i.b to i32                    ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !1427 ; 3 uses
  %i.f = add nsw i32 %i.e, %i.c                   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !1434 ; 3 uses
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !1427 ; 2 uses
  %i.l = add nsw i32 %i.k, %i.i                   ; 2 uses
  %.not.i = icmp eq i32 %i.f, %i.l
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = icmp sgt i32 %i.f, %i.l
  br i1 %i.m, label %select.unfold, label %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit

bb.c:                                             ; preds = %bb.a
  %i.n = sub nsw i32 %i.c, %i.i
  %spec.store.select.i = tail call i32 @llvm.smax.i32(i32 %i.n, i32 0)
  %i.o = load ptr, ptr %0, align 8
  %i.p = load ptr, ptr %1, align 8
  %sext.i = shl i64 %i.b, 32
  %i.q = ashr exact i64 %sext.i, 32               ; 3 uses
  %i.r = zext nneg i32 %spec.store.select.i to i64 ; 3 uses
  %sext55.i = shl i64 %i.h, 32
  %i.s = ashr exact i64 %sext55.i, 32             ; 2 uses
  %smin = tail call i64 @llvm.smin.i64(i64 %i.q, i64 %i.r)
  %.not35.not.i94 = icmp sgt i64 %i.q, %i.r
  br i1 %.not35.not.i94, label %.lr.ph, label %._crit_edge

bb.d:                                             ; preds = %.lr.ph
  %.not35.not.i = icmp sgt i64 %indvars.iv.next.i, %i.r
  br i1 %.not35.not.i, label %.lr.ph, label %._crit_edge, !llvm.loop !1464

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %indvars.iv.i96 = phi i64 [ %indvars.iv.next.i, %bb.d ], [ %i.q, %bb.c ]
  %indvars.iv45.i95 = phi i64 [ %indvars.iv.next46.i, %bb.d ], [ %i.s, %bb.c ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i96, -1 ; 3 uses
  %indvars.iv.next46.i = add nsw i64 %indvars.iv45.i95, -1 ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next.i
end_hunk_2
begin_hunk_3_@_ZN3fmt3v116detail6bigint13divmod_assignERKS2_:bb.a
  store <8 x i32> %wide.load, ptr %i.bd, align 4, !tbaa !39
  store <8 x i32> %wide.load110, ptr %i.be, align 4, !tbaa !39
  store <8 x i32> %wide.load111, ptr %i.bf, align 4, !tbaa !39
  store <8 x i32> %wide.load112, ptr %i.bg, align 4, !tbaa !39
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !1477

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.as, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !1442

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec114 = and i64 %i.b, 2147483640            ; 4 uses
  %i.bi = sub nsw i64 %i.an, %n.vec114
  %i.bj = sub nsw i64 %i.am, %n.vec114
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index115 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next117, %vec.epilog.vector.body ] ; 3 uses
  %i.bk = sub i64 %i.an, %index115
  %i.bl = sub i64 %i.am, %index115
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.bk
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -28
  %wide.load116 = load <8 x i32>, ptr %i.bn, align 4, !tbaa !39
  %i.bo = getelementptr inbounds [4 x i8], ptr %.pre.i, i64 %i.bl
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -28
  store <8 x i32> %wide.load116, ptr %i.bp, align 4, !tbaa !39
  %index.next117 = add nuw i64 %index115, 8       ; 2 uses
  %i.bq = icmp eq i64 %index.next117, %n.vec114
  br i1 %i.bq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1478

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n118 = icmp eq i64 %i.ao, %n.vec114
  br i1 %cmp.n118, label %._crit_edge.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv18.i.ph = phi i64 [ %i.an, %iter.check ], [ %i.an, %vector.memcheck ], [ %i.at, %vec.epilog.iter.check ], [ %i.bi, %vec.epilog.middle.block ] ; 4 uses
  %indvars.iv.i11.ph = phi i64 [ %i.am, %iter.check ], [ %i.am, %vector.memcheck ], [ %i.au, %vec.epilog.iter.check ], [ %i.bj, %vec.epilog.middle.block ] ; 2 uses
  %i.br = add nsw i64 %indvars.iv18.i.ph, 1
  %xtraiter = and i64 %i.br, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv18.i.prol = phi i64 [ %indvars.iv.next19.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv18.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv.i11.prol = phi i64 [ %indvars.iv.next.i12.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.i11.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv18.i.prol
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !39
  %i.bu = getelementptr inbounds [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11.prol
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !39
  %indvars.iv.next19.i.prol = add nsw i64 %indvars.iv18.i.prol, -1 ; 2 uses
  %indvars.iv.next.i12.prol = add nsw i64 %indvars.iv.i11.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !1479

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv18.i.unr = phi i64 [ %indvars.iv18.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next19.i.prol, %vec.epilog.scalar.ph.prol ]
  %indvars.iv.i11.unr = phi i64 [ %indvars.iv.i11.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i12.prol, %vec.epilog.scalar.ph.prol ]
  %i.bv = icmp ult i64 %indvars.iv18.i.ph, 3
  br i1 %i.bv, label %._crit_edge.i, label %vec.epilog.scalar.ph

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i
  %i.bw = zext nneg i32 %i.y to i64
  %i.bx = shl nuw nsw i64 %i.bw, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %.pre.i, i8 0, i64 %i.bx, i1 false)
  %i.by = load i32, ptr %i.d, align 8, !tbaa !1427
  %i.bz = sub nsw i32 %i.by, %i.y                 ; 2 uses
  store i32 %i.bz, ptr %i.d, align 8, !tbaa !1427
  %.pre.pre = load i64, ptr %i.a, align 8, !tbaa !1434
  %.pre61.pre = load i64, ptr %i.g, align 8, !tbaa !1434
  br label %_ZN3fmt3v116detail6bigint5alignERKS2_.exit

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i.3, %vec.epilog.scalar.ph ], [ %indvars.iv18.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %indvars.iv.i11 = phi i64 [ %indvars.iv.next.i12.3, %vec.epilog.scalar.ph ], [ %indvars.iv.i11.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv18.i
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !39
  %i.cc = getelementptr inbounds [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11
  store i32 %i.cb, ptr %i.cc, align 4, !tbaa !39
  %i.cd = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv18.i
  %i.ce = getelementptr i8, ptr %i.cd, i64 -4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !39
  %i.cg = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11
  %i.ch = getelementptr i8, ptr %i.cg, i64 -4
  store i32 %i.cf, ptr %i.ch, align 4, !tbaa !39
  %i.ci = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv18.i
  %i.cj = getelementptr i8, ptr %i.ci, i64 -8
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !39
  %i.cl = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11
  %i.cm = getelementptr i8, ptr %i.cl, i64 -8
  store i32 %i.ck, ptr %i.cm, align 4, !tbaa !39
  %indvars.iv.next19.i.2 = add nsw i64 %indvars.iv18.i, -3 ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv.next19.i.2
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !39
  %i.cp = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11
  %i.cq = getelementptr i8, ptr %i.cp, i64 -12
  store i32 %i.co, ptr %i.cq, align 4, !tbaa !39
  %indvars.iv.next19.i.3 = add nsw i64 %indvars.iv18.i, -4
  %indvars.iv.next.i12.3 = add nsw i64 %indvars.iv.i11, -4
  %.not.i13.3 = icmp eq i64 %indvars.iv.next19.i.2, 0
  br i1 %.not.i13.3, label %._crit_edge.i, label %vec.epilog.scalar.ph, !llvm.loop !1480

_ZN3fmt3v116detail6bigint5alignERKS2_.exit:       ; preds = %select.unfold, %._crit_edge.i
  %.pre61 = phi i64 [ %i.h, %select.unfold ], [ %.pre61.pre, %._crit_edge.i ]
  %.pre = phi i64 [ %i.b, %select.unfold ], [ %.pre.pre, %._crit_edge.i ]
  %i.cr = phi i32 [ %i.e, %select.unfold ], [ %i.bz, %._crit_edge.i ]
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit32

_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit32: ; preds = %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit32.backedge, %_ZN3fmt3v116detail6bigint5alignERKS2_.exit
  %i.cu = phi i32 [ %i.cr, %_ZN3fmt3v116detail6bigint5alignERKS2_.exit ], [ %i.fh, %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit32.backedge ]
  %i.cv = phi i64 [ %.pre61, %_ZN3fmt3v116detail6bigint5alignERKS2_.exit ], [ %i.fj, %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit32.backedge ] ; 5 uses
  %i.cw = phi i64 [ %.pre, %_ZN3fmt3v116detail6bigint5alignERKS2_.exit ], [ %i.fe, %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit32.backedge ] ; 3 uses
  %.0 = phi i32 [ 0, %_ZN3fmt3v116detail6bigint5alignERKS2_.exit ], [ %i.ff, %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit32.backedge ]
  %i.cx = trunc i64 %i.cw to i32
  %.not21.i = icmp eq i64 %i.cv, 0
  br i1 %.not21.i, label %._crit_edge.thread.i, label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit32
  %i.cy = load i32, ptr %i.j, align 8, !tbaa !1427
  %i.cz = sub i32 %i.cy, %i.cu
  %i.da = load ptr, ptr %1, align 8, !tbaa !1425  ; 3 uses
  %i.db = load ptr, ptr %0, align 8, !tbaa !1425  ; 4 uses
  %i.dc = sext i32 %i.cz to i64                   ; 2 uses
  %xtraiter134 = and i64 %i.cv, 1
  %i.dd = icmp eq i64 %i.cv, 1
  br i1 %i.dd, label %.epil.preheader, label %.lr.ph.i14.new

.lr.ph.i14.new:                                   ; preds = %.lr.ph.i14
  %unroll_iter = and i64 %i.cv, -2
  br label %bb.g

._crit_edge.i18.unr-lcssa:                        ; preds = %bb.g
  %lcmp.mod135.not = icmp eq i64 %xtraiter134, 0
  br i1 %lcmp.mod135.not, label %._crit_edge.i18, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.lr.ph.i14
  %indvars.iv.i15.epil.init = phi i64 [ %i.dc, %.lr.ph.i14 ], [ %indvars.iv.next.i16.1, %._crit_edge.i18.unr-lcssa ] ; 2 uses
  %.024.i.epil.init = phi i64 [ 0, %.lr.ph.i14 ], [ %i.ek, %._crit_edge.i18.unr-lcssa ]
  %.01822.i.epil.init = phi i64 [ 0, %.lr.ph.i14 ], [ %i.ej, %._crit_edge.i18.unr-lcssa ]
  %lcmp.mod138 = trunc i64 %i.cv to i1
  tail call void @llvm.assume(i1 %lcmp.mod138)
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %.024.i.epil.init
  %i.df = load i32, ptr %i.de, align 4, !tbaa !39
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.db, i64 %indvars.iv.i15.epil.init ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !39
  %i.di = zext i32 %i.dh to i64
  %i.dj = zext i32 %i.df to i64
  %i.dk = add nuw nsw i64 %.01822.i.epil.init, %i.dj
  %i.dl = sub nsw i64 %i.di, %i.dk                ; 2 uses
  %i.dm = trunc i64 %i.dl to i32
  store i32 %i.dm, ptr %i.dg, align 4, !tbaa !39
  %indvars.iv.next.i16.epil = add nsw i64 %indvars.iv.i15.epil.init, 1
  br label %._crit_edge.i18

._crit_edge.i18:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.eh, %._crit_edge.i18.unr-lcssa ], [ %i.dl, %.epil.preheader ]
  %indvars.iv.next.i16.lcssa = phi i64 [ %indvars.iv.next.i16.1, %._crit_edge.i18.unr-lcssa ], [ %indvars.iv.next.i16.epil, %.epil.preheader ]
  %i.dn = icmp sgt i64 %.lcssa, -1
  br i1 %i.dn, label %._crit_edge.thread.i, label %bb.h

bb.g:                                             ; preds = %bb.g, %.lr.ph.i14.new
  %indvars.iv.i15 = phi i64 [ %i.dc, %.lr.ph.i14.new ], [ %indvars.iv.next.i16.1, %bb.g ] ; 3 uses
  %.024.i = phi i64 [ 0, %.lr.ph.i14.new ], [ %i.ek, %bb.g ] ; 3 uses
  %.01822.i = phi i64 [ 0, %.lr.ph.i14.new ], [ %i.ej, %bb.g ]
  %niter = phi i64 [ 0, %.lr.ph.i14.new ], [ %niter.next.1, %bb.g ]
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %.024.i
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !39
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.db, i64 %indvars.iv.i15 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !39
  %i.ds = zext i32 %i.dr to i64
  %i.dt = zext i32 %i.dp to i64
  %i.du = add nuw nsw i64 %.01822.i, %i.dt
  %i.dv = sub nsw i64 %i.ds, %i.du                ; 2 uses
  %i.dw = trunc i64 %i.dv to i32
  store i32 %i.dw, ptr %i.dq, align 4, !tbaa !39
  %i.dx = lshr i64 %i.dv, 63
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %.024.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !39
  %i.eb = getelementptr [4 x i8], ptr %i.db, i64 %indvars.iv.i15
  %i.ec = getelementptr i8, ptr %i.eb, i64 4      ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !39
  %i.ee = zext i32 %i.ed to i64
  %i.ef = zext i32 %i.ea to i64
  %i.eg = add nuw nsw i64 %i.dx, %i.ef
  %i.eh = sub nsw i64 %i.ee, %i.eg                ; 3 uses
  %i.ei = trunc i64 %i.eh to i32
  store i32 %i.ei, ptr %i.ec, align 4, !tbaa !39
  %i.ej = lshr i64 %i.eh, 63                      ; 2 uses
  %indvars.iv.next.i16.1 = add nsw i64 %indvars.iv.i15, 2 ; 3 uses
  %i.ek = add nuw nsw i64 %.024.i, 2              ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i18.unr-lcssa, label %bb.g, !llvm.loop !1481

bb.h:                                             ; preds = %._crit_edge.i18
  %i.el = getelementptr inbounds [4 x i8], ptr %i.db, i64 %indvars.iv.next.i16.lcssa ; 2 uses
  %i.em = load i32, ptr %i.el, align 4, !tbaa !39
  %i.en = add i32 %i.em, -1
  store i32 %i.en, ptr %i.el, align 4, !tbaa !39
  br label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.h, %._crit_edge.i18, %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit32
  %i.eo = load ptr, ptr %0, align 8
  %smin.i.i = tail call i32 @llvm.smin.i32(i32 %i.cx, i32 1) ; 2 uses
  %i.ep = trunc i64 %i.cw to i32                  ; 2 uses
  %i.eq = icmp sgt i32 %i.ep, 1
  br i1 %i.eq, label %.lr.ph98, label %.critedge.i.i

.lr.ph98:                                         ; preds = %._crit_edge.thread.i
  %i.er = and i64 %i.cw, 2147483647
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %i.es = trunc nuw i64 %i.ev to i32              ; 2 uses
  %i.et = icmp sgt i32 %i.es, 1
  br i1 %i.et, label %bb.j, label %.critedge.i.i, !llvm.loop !1482

bb.j:                                             ; preds = %.lr.ph98, %bb.i
  %i.eu = phi i32 [ %i.ep, %.lr.ph98 ], [ %i.es, %bb.i ]
  %indvars.iv.i14.i97 = phi i64 [ %i.er, %.lr.ph98 ], [ %i.ev, %bb.i ]
  %i.ev = add nsw i64 %indvars.iv.i14.i97, -1     ; 3 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %i.ev
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !39
  %i.ey = icmp eq i32 %i.ex, 0
  br i1 %i.ey, label %bb.i, label %..critedge.i.i_crit_edge, !llvm.loop !1482

..critedge.i.i_crit_edge:                         ; preds = %bb.j
  br label %.critedge.i.i, !llvm.loop !1482

.critedge.i.i:                                    ; preds = %bb.i, %..critedge.i.i_crit_edge, %._crit_edge.thread.i
  %.0.in.lcssa.i.i = phi i32 [ %smin.i.i, %._crit_edge.thread.i ], [ %i.eu, %..critedge.i.i_crit_edge ], [ %smin.i.i, %bb.i ]
  %i.ez = zext i32 %.0.in.lcssa.i.i to i64        ; 3 uses
  %i.fa = load i64, ptr %i.cs, align 8, !tbaa !1426 ; 2 uses
  %i.fb = icmp ult i64 %i.fa, %i.ez
  br i1 %i.fb, label %bb.k, label %_ZN3fmt3v116detail6bigint16subtract_alignedERKS2_.exit

bb.k:                                             ; preds = %.critedge.i.i
  %i.fc = load ptr, ptr %i.ct, align 8, !tbaa !1423
  tail call void %i.fc(ptr noundef nonnull align 8 dereferenceable(164) %0, i64 noundef %i.ez), !inline_history !1483
  %.pre.i.i.i.i = load i64, ptr %i.cs, align 8, !tbaa !1426
  br label %_ZN3fmt3v116detail6bigint16subtract_alignedERKS2_.exit

_ZN3fmt3v116detail6bigint16subtract_alignedERKS2_.exit: ; preds = %.critedge.i.i, %bb.k
  %i.fd = phi i64 [ %i.fa, %.critedge.i.i ], [ %.pre.i.i.i.i, %bb.k ]
  %i.fe = tail call noundef i64 @llvm.umin.i64(i64 %i.ez, i64 %i.fd) ; 4 uses
  store i64 %i.fe, ptr %i.a, align 8, !tbaa !1434
  %i.ff = add nuw nsw i32 %.0, 1                  ; 4 uses
  %i.fg = trunc nuw i64 %i.fe to i32              ; 2 uses
  %i.fh = load i32, ptr %i.d, align 8, !tbaa !1427 ; 2 uses
  %i.fi = add nsw i32 %i.fh, %i.fg                ; 2 uses
  %i.fj = load i64, ptr %i.g, align 8, !tbaa !1434 ; 3 uses
  %i.fk = trunc i64 %i.fj to i32                  ; 2 uses
  %i.fl = load i32, ptr %i.j, align 8, !tbaa !1427
  %i.fm = add nsw i32 %i.fl, %i.fk                ; 2 uses
  %.not.i19 = icmp eq i32 %i.fi, %i.fm
  br i1 %.not.i19, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN3fmt3v116detail6bigint16subtract_alignedERKS2_.exit
  %i.fn = icmp sgt i32 %i.fi, %i.fm
  br i1 %i.fn, label %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit32.backedge, label %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit

bb.m:                                             ; preds = %_ZN3fmt3v116detail6bigint16subtract_alignedERKS2_.exit
  %i.fo = sub nsw i32 %i.fg, %i.fk
  %spec.store.select.i21 = tail call i32 @llvm.smax.i32(i32 %i.fo, i32 0)
  %i.fp = load ptr, ptr %0, align 8
  %i.fq = load ptr, ptr %1, align 8
  %sext.i22 = shl nuw i64 %i.fe, 32
  %i.fr = ashr exact i64 %sext.i22, 32            ; 3 uses
  %i.fs = zext nneg i32 %spec.store.select.i21 to i64 ; 3 uses
  %sext55.i23 = shl i64 %i.fj, 32
  %i.ft = ashr exact i64 %sext55.i23, 32          ; 2 uses
  %smin60 = tail call i64 @llvm.smin.i64(i64 %i.fr, i64 %i.fs)
  %.not35.not.i26102 = icmp sgt i64 %i.fr, %i.fs
  br i1 %.not35.not.i26102, label %.lr.ph106, label %._crit_edge107

bb.n:                                             ; preds = %.lr.ph106
  %.not35.not.i26 = icmp sgt i64 %indvars.iv.next.i28, %i.fs
  br i1 %.not35.not.i26, label %.lr.ph106, label %._crit_edge107, !llvm.loop !1464

.lr.ph106:                                        ; preds = %bb.m, %bb.n
  %indvars.iv.i25104 = phi i64 [ %indvars.iv.next.i28, %bb.n ], [ %i.fr, %bb.m ]
  %indvars.iv45.i24103 = phi i64 [ %indvars.iv.next46.i29, %bb.n ], [ %i.ft, %bb.m ]
  %indvars.iv.next.i28 = add nsw i64 %indvars.iv.i25104, -1 ; 3 uses
  %indvars.iv.next46.i29 = add nsw i64 %indvars.iv45.i24103, -1 ; 3 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %indvars.iv.next.i28
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !39 ; 2 uses
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.fq, i64 %indvars.iv.next46.i29
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !39 ; 2 uses
  %.not37.i30 = icmp eq i32 %i.fv, %i.fx
  br i1 %.not37.i30, label %bb.n, label %.loopexit.i31, !llvm.loop !1464

._crit_edge107:                                   ; preds = %bb.n, %bb.m
  %indvars.iv45.i24.lcssa = phi i64 [ %i.ft, %bb.m ], [ %indvars.iv.next46.i29, %bb.n ]
  %or.cond.not50 = icmp slt i64 %smin60, %indvars.iv45.i24.lcssa
  br i1 %or.cond.not50, label %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit, label %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit32.backedge

.loopexit.i31:                                    ; preds = %.lr.ph106
  %i.fy = icmp ugt i32 %i.fv, %i.fx
  br i1 %i.fy, label %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit32.backedge, label %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit

_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit32.backedge: ; preds = %.loopexit.i31, %bb.l, %._crit_edge107
  br label %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit32, !llvm.loop !1484

_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit: ; preds = %._crit_edge107, %.loopexit.i31, %bb.l, %._crit_edge, %bb.b, %.loopexit.i
  %.010 = phi i32 [ 0, %bb.b ], [ 0, %.loopexit.i ], [ 0, %._crit_edge ], [ %i.ff, %bb.l ], [ %i.ff, %.loopexit.i31 ], [ %i.ff, %._crit_edge107 ]
  ret i32 %.010
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE4growERNS2_6bufferIjEEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1426 ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = add i64 %i.c, %i.b                       ; 3 uses
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ugt i64 %i.d, 4611686018427387903
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef i64 @llvm.umax.i64(i64 %1, i64 4611686018427387903)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i64 [ %i.d, %bb.b ], [ %i.g, %bb.c ], [ %1, %bb.a ] ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1425   ; 3 uses
  %i.i = shl i64 %.0, 2
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #52 ; 3 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.e, label %_ZN3fmt3v116detail9allocatorIjE8allocateEm.exit

bb.e:                                             ; preds = %bb.d
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #38 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.k, align 8, !tbaa !20
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #46
  unreachable

_ZN3fmt3v116detail9allocatorIjE8allocateEm.exit:  ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !1434 ; 2 uses
  %i.n = icmp ule i64 %i.m, %.0
  tail call void @llvm.assume(i1 %i.n)
  %i.o = shl i64 %i.m, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.j, ptr align 4 %i.h, i64 %i.o, i1 false)
  store ptr %i.j, ptr %0, align 8, !tbaa !1425
  store i64 %.0, ptr %i.a, align 8, !tbaa !1426
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.not = icmp eq ptr %i.h, %i.p
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN3fmt3v116detail9allocatorIjE8allocateEm.exit
  tail call void @free(ptr noundef %i.h) #38
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN3fmt3v116detail9allocatorIjE8allocateEm.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt3v116detail6bigint6squareEv(ptr noundef nonnull align 8 dereferenceable(164) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.fmt::v11::basic_memory_buffer.531", align 8 ; 18 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1434 ; 10 uses
  %i.c = trunc i64 %i.b to i32                    ; 5 uses
  %i.d = shl i32 %i.c, 1                          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #38
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %1, i8 0, i64 24, i1 false)
  store ptr @_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE4growERNS2_6bufferIjEEm, ptr %i.f, align 8, !tbaa !1423
  %i.g = load ptr, ptr %0, align 8, !tbaa !1425   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !1426 ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.k = icmp eq ptr %i.g, %i.j
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  store ptr %i.l, ptr %1, align 8, !tbaa !1425
  store i64 %i.i, ptr %i.e, align 8, !tbaa !1426
  %.not6.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not6.i.i.i, label %_ZN3fmt3v116detail4copyIjPjS3_TnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES5_T0_S8_S5_.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %.idx.i.i = shl i64 %i.b, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %i.j, i64 %.idx.i.i, i1 false), !tbaa !39
end_hunk_3
begin_hunk_4_@_ZN3fmt3v116detail6bigint6squareEv:bb.a

bb.j:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #48
  unreachable

.noexc.i:                                         ; preds = %_ZN3fmt3v116detail9allocatorIjE8allocateEm.exit.i, %bb.i, %_ZN3fmt3v116detail4copyIjPjS3_TnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES5_T0_S8_S5_.exit.i.i
  %i.aa = phi i64 [ %i.n, %_ZN3fmt3v116detail4copyIjPjS3_TnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES5_T0_S8_S5_.exit.i.i ], [ %.pre.pre, %bb.i ], [ %i.n, %_ZN3fmt3v116detail9allocatorIjE8allocateEm.exit.i ] ; 2 uses
  %i.ab = phi i64 [ %i.i, %_ZN3fmt3v116detail4copyIjPjS3_TnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES5_T0_S8_S5_.exit.i.i ], [ %.pre.i.i.i.i.pre, %bb.i ], [ %.0.i, %_ZN3fmt3v116detail9allocatorIjE8allocateEm.exit.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = call noundef i64 @llvm.umin.i64(i64 %i.b, i64 %i.ab)
  store i64 %i.ad, ptr %i.ac, align 8, !tbaa !1434
  %i.ae = zext i32 %i.d to i64                    ; 3 uses
  %i.af = icmp ult i64 %i.aa, %i.ae
  br i1 %i.af, label %bb.k, label %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit

bb.k:                                             ; preds = %.noexc.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1423
  invoke void %i.ah(ptr noundef nonnull align 8 dereferenceable(160) %0, i64 noundef %i.ae)
          to label %.noexc unwind label %bb.l, !inline_history !1485

.noexc:                                           ; preds = %bb.k
  %.pre.i.i42 = load i64, ptr %i.h, align 8, !tbaa !1426
  br label %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit

_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit: ; preds = %.noexc.i, %.noexc
  %i.ai = phi i64 [ %i.aa, %.noexc.i ], [ %.pre.i.i42, %.noexc ] ; 3 uses
  %i.aj = call noundef i64 @llvm.umin.i64(i64 %i.ae, i64 %i.ai) ; 4 uses
  store i64 %i.aj, ptr %i.a, align 8, !tbaa !1434
  %i.ak = icmp sgt i32 %i.c, 0
  %.pre93.pre94 = load ptr, ptr %0, align 8       ; 2 uses
  br i1 %i.ak, label %.preheader46.lr.ph, label %.preheader

.preheader46.lr.ph:                               ; preds = %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit
  %i.al = load ptr, ptr %1, align 8, !tbaa !1425  ; 4 uses
  %wide.trip.count76 = and i64 %i.b, 2147483647
  br label %.preheader46

.preheader46:                                     ; preds = %.preheader46.lr.ph, %.loopexit
  %indvars.iv71 = phi i64 [ 1, %.preheader46.lr.ph ], [ %indvars.iv.next72, %.loopexit ] ; 5 uses
  %indvars.iv = phi i64 [ 0, %.preheader46.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 5 uses
  %.03750 = phi i128 [ 0, %.preheader46.lr.ph ], [ %i.bp, %.loopexit ] ; 2 uses
  %min.iters.check = icmp samesign ult i64 %indvars.iv71, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader46
  %n.vec = and i64 %indvars.iv71, 9223372036854775804 ; 4 uses
  %i.am = sub nsw i64 %indvars.iv, %n.vec
  %i.an = insertelement <2 x i128> <i128 poison, i128 0>, i128 %.03750, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i128> [ %i.an, %vector.ph ], [ %i.bc, %vector.body ]
  %vec.phi146 = phi <2 x i128> [ zeroinitializer, %vector.ph ], [ %i.bd, %vector.body ]
  %i.ao = sub i64 %indvars.iv, %index
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %wide.load = load <2 x i32>, ptr %i.ap, align 4, !tbaa !39
  %wide.load147 = load <2 x i32>, ptr %i.aq, align 4, !tbaa !39
  %i.ar = zext <2 x i32> %wide.load to <2 x i64>
  %i.as = zext <2 x i32> %wide.load147 to <2 x i64>
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.ao ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -4
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 -12
  %wide.load148 = load <2 x i32>, ptr %i.au, align 4, !tbaa !39
  %wide.load149 = load <2 x i32>, ptr %i.av, align 4, !tbaa !39
  %reverse = shufflevector <2 x i32> %wide.load148, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %reverse150 = shufflevector <2 x i32> %wide.load149, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.aw = zext <2 x i32> %reverse to <2 x i64>
  %i.ax = zext <2 x i32> %reverse150 to <2 x i64>
  %i.ay = mul nuw <2 x i64> %i.aw, %i.ar
  %i.az = mul nuw <2 x i64> %i.ax, %i.as
  %i.ba = zext <2 x i64> %i.ay to <2 x i128>
  %i.bb = zext <2 x i64> %i.az to <2 x i128>
  %i.bc = add <2 x i128> %vec.phi, %i.ba          ; 2 uses
  %i.bd = add <2 x i128> %vec.phi146, %i.bb       ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !1486

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i128> %i.bd, %i.bc
  %i.bf = call i128 @llvm.vector.reduce.add.v2i128(<2 x i128> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %indvars.iv71, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader46, %middle.block
  %indvars.iv64.ph = phi i64 [ 0, %.preheader46 ], [ %n.vec, %middle.block ]
  %indvars.iv62.ph = phi i64 [ %indvars.iv, %.preheader46 ], [ %i.am, %middle.block ]
  %.147.ph = phi i128 [ %.03750, %.preheader46 ], [ %i.bf, %middle.block ]
  br label %scalar.ph

.preheader.loopexit:                              ; preds = %.loopexit
  %.pre93.pre = load ptr, ptr %0, align 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit
  %.pre93 = phi ptr [ %.pre93.pre94, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit ], [ %.pre93.pre, %.preheader.loopexit ] ; 2 uses
  %.037.lcssa = phi i128 [ 0, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit ], [ %i.bp, %.preheader.loopexit ]
  %i.bg = icmp sgt i32 %i.d, %i.c
  br i1 %i.bg, label %.lr.ph58, label %._crit_edge59

.lr.ph58:                                         ; preds = %.preheader
  %i.bh = load ptr, ptr %1, align 8               ; 4 uses
  %sext = shl i64 %i.b, 32                        ; 2 uses
  %i.bi = ashr exact i64 %sext, 32                ; 5 uses
  %sext109 = add i64 %sext, -4294967296
  %i.bj = ashr exact i64 %sext109, 32
  %wide.trip.count = sext i32 %i.d to i64
  %invariant.op = add nsw i64 %i.bj, %i.bi
  %i.bk = add i32 %i.c, -2
  %i.bl = getelementptr [4 x i8], ptr %i.bh, i64 %i.bi
  br label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %.lcssa140 = phi i128 [ %i.bf, %middle.block ], [ %i.by, %scalar.ph ] ; 2 uses
  %i.bn = trunc i128 %.lcssa140 to i32
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.pre93.pre94, i64 %indvars.iv
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !39
  %i.bp = lshr i128 %.lcssa140, 32                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1
  %exitcond77.not = icmp eq i64 %indvars.iv.next, %wide.trip.count76
  br i1 %exitcond77.not, label %.preheader.loopexit, label %.preheader46, !llvm.loop !1487

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %scalar.ph ], [ %indvars.iv64.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %scalar.ph ], [ %indvars.iv62.ph, %scalar.ph.preheader ] ; 2 uses
  %.147 = phi i128 [ %i.by, %scalar.ph ], [ %.147.ph, %scalar.ph.preheader ]
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv64
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !39
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv62
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !39
  %i.bv = zext i32 %i.bu to i64
  %i.bw = mul nuw i64 %i.bv, %i.bs
  %i.bx = zext i64 %i.bw to i128
  %i.by = add i128 %.147, %i.bx                   ; 2 uses
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 2 uses
  %indvars.iv.next63 = add nsw i64 %indvars.iv62, -1
  %exitcond.not = icmp eq i64 %indvars.iv.next65, %indvars.iv71
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !1488

._crit_edge59.loopexit:                           ; preds = %._crit_edge
  %.pre92 = load ptr, ptr %0, align 8
  br label %._crit_edge59

._crit_edge59:                                    ; preds = %._crit_edge59.loopexit, %.preheader
  %i.bz = phi ptr [ %.pre92, %._crit_edge59.loopexit ], [ %.pre93, %.preheader ]
  %i.ca = trunc nuw i64 %i.aj to i32
  %smin.i = call i32 @llvm.smin.i32(i32 %i.ca, i32 1) ; 2 uses
  %i.cb = trunc nuw i64 %i.aj to i32              ; 2 uses
  %i.cc = icmp sgt i32 %i.cb, 1
  br i1 %i.cc, label %.lr.ph143, label %.critedge.i

bb.m:                                             ; preds = %.lr.ph143
  %i.cd = trunc nuw i64 %i.cg to i32              ; 2 uses
  %i.ce = icmp sgt i32 %i.cd, 1
  br i1 %i.ce, label %.lr.ph143, label %.critedge.i, !llvm.loop !1482

.lr.ph143:                                        ; preds = %._crit_edge59, %bb.m
  %i.cf = phi i32 [ %i.cd, %bb.m ], [ %i.cb, %._crit_edge59 ]
  %indvars.iv.i142 = phi i64 [ %i.cg, %bb.m ], [ %i.aj, %._crit_edge59 ]
  %i.cg = add nsw i64 %indvars.iv.i142, -1        ; 3 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !39
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %bb.m, label %..critedge.i_crit_edge, !llvm.loop !1482

..critedge.i_crit_edge:                           ; preds = %.lr.ph143
  br label %.critedge.i, !llvm.loop !1482

.critedge.i:                                      ; preds = %bb.m, %..critedge.i_crit_edge, %._crit_edge59
  %.0.in.lcssa.i = phi i32 [ %smin.i, %._crit_edge59 ], [ %i.cf, %..critedge.i_crit_edge ], [ %smin.i, %bb.m ]
  %i.ck = zext i32 %.0.in.lcssa.i to i64          ; 3 uses
  %i.cl = icmp ult i64 %i.ai, %i.ck
  br i1 %i.cl, label %bb.n, label %bb.p

bb.n:                                             ; preds = %.critedge.i
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !1423
  invoke void %i.cn(ptr noundef nonnull align 8 dereferenceable(164) %0, i64 noundef %i.ck)
          to label %.noexc43 unwind label %bb.r, !inline_history !1489

.noexc43:                                         ; preds = %bb.n
  %.pre.i.i.i = load i64, ptr %i.h, align 8, !tbaa !1426
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph58, %._crit_edge
  %indvar = phi i32 [ 0, %.lr.ph58 ], [ %indvar.next, %._crit_edge ] ; 2 uses
  %indvars.iv88 = phi i64 [ %i.bi, %.lr.ph58 ], [ %indvars.iv.next89, %._crit_edge ] ; 3 uses
  %indvars.iv78 = phi i64 [ 1, %.lr.ph58 ], [ %indvars.iv.next79, %._crit_edge ] ; 4 uses
  %.256 = phi i128 [ %.037.lcssa, %.lr.ph58 ], [ %i.do, %._crit_edge ] ; 3 uses
  %i.co = sub i32 %i.bk, %indvar                  ; 2 uses
  %i.cp = zext i32 %i.co to i64
  %i.cq = add nuw nsw i64 %i.cp, 1                ; 2 uses
  %i.cr = icmp slt i64 %indvars.iv88, %invariant.op
  br i1 %i.cr, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.o
  %min.iters.check153 = icmp ult i32 %i.co, 3
  br i1 %min.iters.check153, label %.lr.ph.preheader174, label %vector.ph154

vector.ph154:                                     ; preds = %.lr.ph.preheader
  %n.vec155 = and i64 %i.cq, 8589934588           ; 4 uses
  %i.cs = sub nsw i64 %i.bi, %n.vec155
  %i.ct = add nuw i64 %indvars.iv78, %n.vec155
  %i.cu = insertelement <2 x i128> <i128 poison, i128 0>, i128 %.256, i64 0
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv78
  br label %vector.body156

vector.body156:                                   ; preds = %vector.body156, %vector.ph154
  %index157 = phi i64 [ 0, %vector.ph154 ], [ %index.next166, %vector.body156 ] ; 3 uses
  %vec.phi158 = phi <2 x i128> [ %i.cu, %vector.ph154 ], [ %i.di, %vector.body156 ]
  %vec.phi159 = phi <2 x i128> [ zeroinitializer, %vector.ph154 ], [ %i.dj, %vector.body156 ]
  %i.cv = xor i64 %index157, -1
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index157 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %wide.load160 = load <2 x i32>, ptr %gep, align 4, !tbaa !39
  %wide.load161 = load <2 x i32>, ptr %i.cw, align 4, !tbaa !39
  %i.cx = zext <2 x i32> %wide.load160 to <2 x i64>
  %i.cy = zext <2 x i32> %wide.load161 to <2 x i64>
  %i.cz = getelementptr [4 x i8], ptr %i.bl, i64 %i.cv ; 2 uses
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 -4
  %i.db = getelementptr inbounds i8, ptr %i.cz, i64 -12
  %wide.load162 = load <2 x i32>, ptr %i.da, align 4, !tbaa !39
  %wide.load163 = load <2 x i32>, ptr %i.db, align 4, !tbaa !39
  %reverse164 = shufflevector <2 x i32> %wide.load162, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %reverse165 = shufflevector <2 x i32> %wide.load163, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.dc = zext <2 x i32> %reverse164 to <2 x i64>
  %i.dd = zext <2 x i32> %reverse165 to <2 x i64>
  %i.de = mul nuw <2 x i64> %i.dc, %i.cx
  %i.df = mul nuw <2 x i64> %i.dd, %i.cy
  %i.dg = zext <2 x i64> %i.de to <2 x i128>
  %i.dh = zext <2 x i64> %i.df to <2 x i128>
  %i.di = add <2 x i128> %vec.phi158, %i.dg       ; 2 uses
  %i.dj = add <2 x i128> %vec.phi159, %i.dh       ; 2 uses
  %index.next166 = add nuw i64 %index157, 4       ; 2 uses
  %i.dk = icmp eq i64 %index.next166, %n.vec155
  br i1 %i.dk, label %middle.block167, label %vector.body156, !llvm.loop !1490

middle.block167:                                  ; preds = %vector.body156
  %bin.rdx168 = add <2 x i128> %i.dj, %i.di
  %i.dl = call i128 @llvm.vector.reduce.add.v2i128(<2 x i128> %bin.rdx168) ; 2 uses
  %cmp.n169 = icmp eq i64 %i.cq, %n.vec155
  br i1 %cmp.n169, label %._crit_edge, label %.lr.ph.preheader174

.lr.ph.preheader174:                              ; preds = %.lr.ph.preheader, %middle.block167
  %indvars.iv82.in.ph = phi i64 [ %i.bi, %.lr.ph.preheader ], [ %i.cs, %middle.block167 ]
  %indvars.iv80.ph = phi i64 [ %indvars.iv78, %.lr.ph.preheader ], [ %i.ct, %middle.block167 ]
  %.352.ph = phi i128 [ %.256, %.lr.ph.preheader ], [ %i.dl, %middle.block167 ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block167, %bb.o
  %.3.lcssa = phi i128 [ %.256, %bb.o ], [ %i.dl, %middle.block167 ], [ %i.dx, %.lr.ph ] ; 2 uses
  %i.dm = trunc i128 %.3.lcssa to i32
  %i.dn = getelementptr inbounds [4 x i8], ptr %.pre93, i64 %indvars.iv88
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !39
  %i.do = lshr i128 %.3.lcssa, 32
  %indvars.iv.next89 = add nsw i64 %indvars.iv88, 1 ; 2 uses
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1
  %exitcond91.not = icmp eq i64 %indvars.iv.next89, %wide.trip.count
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond91.not, label %._crit_edge59.loopexit, label %bb.o, !llvm.loop !1491

.lr.ph:                                           ; preds = %.lr.ph.preheader174, %.lr.ph
  %indvars.iv82.in = phi i64 [ %indvars.iv82, %.lr.ph ], [ %indvars.iv82.in.ph, %.lr.ph.preheader174 ]
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %.lr.ph ], [ %indvars.iv80.ph, %.lr.ph.preheader174 ] ; 2 uses
  %.352 = phi i128 [ %i.dx, %.lr.ph ], [ %.352.ph, %.lr.ph.preheader174 ]
  %indvars.iv82 = add nsw i64 %indvars.iv82.in, -1 ; 2 uses
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv80
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !39
  %i.dr = zext i32 %i.dq to i64
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %indvars.iv82
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !39
  %i.du = zext i32 %i.dt to i64
  %i.dv = mul nuw i64 %i.du, %i.dr
  %i.dw = zext i64 %i.dv to i128
  %i.dx = add i128 %.352, %i.dw                   ; 2 uses
  %lftr.wideiv118 = trunc i64 %indvars.iv.next81 to i32
  %exitcond = icmp eq i32 %lftr.wideiv118, %i.c
  br i1 %exitcond, label %._crit_edge, label %.lr.ph, !llvm.loop !1492

bb.p:                                             ; preds = %.noexc43, %.critedge.i
  %i.dy = phi i64 [ %i.ai, %.critedge.i ], [ %.pre.i.i.i, %.noexc43 ]
  %i.dz = call noundef i64 @llvm.umin.i64(i64 %i.ck, i64 %i.dy)
  store i64 %i.dz, ptr %i.a, align 8, !tbaa !1434
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !1427
  %i.ec = shl nsw i32 %i.eb, 1
  store i32 %i.ec, ptr %i.ea, align 8, !tbaa !1427
  %i.ed = load ptr, ptr %1, align 8, !tbaa !1425  ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.not.i.i = icmp eq ptr %i.ed, %i.ee
  br i1 %.not.i.i, label %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @free(ptr noundef %i.ed) #38
  br label %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit

_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #38
  ret void

bb.r:                                             ; preds = %bb.n
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.l
  %.pn = phi { ptr, i32 } [ %i.ef, %bb.r ], [ %i.bm, %bb.l ]
  %i.eg = load ptr, ptr %1, align 8, !tbaa !1425  ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.not.i.i44 = icmp eq ptr %i.eg, %i.eh
  br i1 %.not.i.i44, label %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit45, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @free(ptr noundef %i.eg) #38
  br label %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit45

_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit45: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #38
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN3fmt3v116detail14do_write_floatIcSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS1_14big_decimal_fpENS1_14digit_groupingIcEEEET0_SE_RKT1_RKNS0_12format_specsENS0_4signEiNS1_10locale_refE(ptr %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %3, i32 noundef %4, ptr %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i8, align 1                       ; 7 uses
  %i.e = alloca i8, align 1                       ; 8 uses
  %6 = alloca %class.anon.535, align 8            ; 12 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 6 uses
  %7 = alloca %"class.fmt::v11::detail::digit_grouping", align 8 ; 13 uses
  %8 = alloca %class.anon.537, align 8            ; 13 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %9 = alloca %"class.fmt::v11::detail::digit_grouping", align 8 ; 13 uses
  %10 = alloca %class.anon.538, align 8           ; 12 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %11 = alloca %class.anon.539, align 8           ; 10 uses
  store i32 %3, ptr %i.a, align 4, !tbaa !1286
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #38
  %i.k = load ptr, ptr %1, align 8, !tbaa !1364   ; 2 uses
  store ptr %i.k, ptr %i.b, align 8, !tbaa !243
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #38
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !1366 ; 8 uses
  store i32 %i.m, ptr %i.c, align 4, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #38
  store i8 48, ptr %i.d, align 1, !tbaa !38
  %.not = icmp ne i32 %3, 0
  %i.n = zext i1 %.not to i32
  %i.o = add i32 %i.m, %i.n
  %i.p = zext i32 %i.o to i64                     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #38
  %i.q = load i32, ptr %2, align 4, !tbaa !1265   ; 2 uses
  %i.r = and i32 %i.q, 16384
  %.not134 = icmp eq i32 %i.r, 0
  br i1 %.not134, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = tail call noundef signext i8 @_ZN3fmt3v116detail18decimal_point_implIcEET_NS1_10locale_refE(ptr %5)
  %.sroa.0.0.copyload122.pre = load i32, ptr %2, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0.copyload122 = phi i32 [ %.sroa.0.0.copyload122.pre, %bb.b ], [ %i.q, %bb.a ]
  %i.t = phi i8 [ %i.s, %bb.b ], [ 46, %bb.a ]    ; 3 uses
  store i8 %i.t, ptr %i.e, align 1, !tbaa !38
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !1367 ; 3 uses
  %i.w = add nsw i32 %i.m, %i.v                   ; 11 uses
  %i.x = add nsw i32 %i.w, -1                     ; 2 uses
  %.sroa.0.0.copyload122.fr = freeze i32 %.sroa.0.0.copyload122 ; 10 uses
  %.sroa.5123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.5123.0.copyload = load i32, ptr %.sroa.5123.0..sroa_idx, align 4 ; 9 uses
  %i.y = trunc i32 %.sroa.0.0.copyload122.fr to i8
  %i.z = and i8 %i.y, 7                           ; 2 uses
  switch i8 %i.z, label %bb.d [
    i8 1, label %_ZZN3fmt3v116detail14do_write_floatIcSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS1_14big_decimal_fpENS1_14digit_groupingIcEEEET0_SE_RKT1_RKNS0_12format_specsENS0_4signEiNS1_10locale_refEENKUlvE_clEv.exit.thread
    i8 2, label %_ZZN3fmt3v116detail14do_write_floatIcSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS1_14big_decimal_fpENS1_14digit_groupingIcEEEET0_SE_RKT1_RKNS0_12format_specsENS0_4signEiNS1_10locale_refEENKUlvE_clEv.exit.thread126
  ]

bb.d:                                             ; preds = %bb.c
  %i.aa = icmp slt i32 %i.w, -3
  br i1 %i.aa, label %_ZZN3fmt3v116detail14do_write_floatIcSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS1_14big_decimal_fpENS1_14digit_groupingIcEEEET0_SE_RKT1_RKNS0_12format_specsENS0_4signEiNS1_10locale_refEENKUlvE_clEv.exit.thread, label %_ZZN3fmt3v116detail14do_write_floatIcSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS1_14big_decimal_fpENS1_14digit_groupingIcEEEET0_SE_RKT1_RKNS0_12format_specsENS0_4signEiNS1_10locale_refEENKUlvE_clEv.exit

_ZZN3fmt3v116detail14do_write_floatIcSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS1_14big_decimal_fpENS1_14digit_groupingIcEEEET0_SE_RKT1_RKNS0_12format_specsENS0_4signEiNS1_10locale_refEENKUlvE_clEv.exit: ; preds = %bb.d
  %i.ab = icmp sgt i32 %.sroa.5123.0.copyload, 0
  %i.ac = select i1 %i.ab, i32 %.sroa.5123.0.copyload, i32 %4
  %.not135.not = icmp sgt i32 %i.w, %i.ac
  br i1 %.not135.not, label %_ZZN3fmt3v116detail14do_write_floatIcSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS1_14big_decimal_fpENS1_14digit_groupingIcEEEET0_SE_RKT1_RKNS0_12format_specsENS0_4signEiNS1_10locale_refEENKUlvE_clEv.exit.thread, label %_ZZN3fmt3v116detail14do_write_floatIcSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS1_14big_decimal_fpENS1_14digit_groupingIcEEEET0_SE_RKT1_RKNS0_12format_specsENS0_4signEiNS1_10locale_refEENKUlvE_clEv.exit.thread126

_ZZN3fmt3v116detail14do_write_floatIcSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS1_14big_decimal_fpENS1_14digit_groupingIcEEEET0_SE_RKT1_RKNS0_12format_specsENS0_4signEiNS1_10locale_refEENKUlvE_clEv.exit.thread: ; preds = %bb.d, %bb.c, %_ZZN3fmt3v116detail14do_write_floatIcSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS1_14big_decimal_fpENS1_14digit_groupingIcEEEET0_SE_RKT1_RKNS0_12format_specsENS0_4signEiNS1_10locale_refEENKUlvE_clEv.exit
  %i.ad = and i32 %.sroa.0.0.copyload122.fr, 8192
  %.not140 = icmp eq i32 %i.ad, 0
  br i1 %.not140, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZZN3fmt3v116detail14do_write_floatIcSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS1_14big_decimal_fpENS1_14digit_groupingIcEEEET0_SE_RKT1_RKNS0_12format_specsENS0_4signEiNS1_10locale_refEENKUlvE_clEv.exit.thread
  %i.ae = sub nsw i32 %.sroa.5123.0.copyload, %i.m
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.ae, i32 0) ; 2 uses
  %i.af = zext nneg i32 %spec.store.select to i64
  %i.ag = add nuw nsw i64 %i.af, %i.p
  br label %bb.h

bb.f:                                             ; preds = %_ZZN3fmt3v116detail14do_write_floatIcSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS1_14big_decimal_fpENS1_14digit_groupingIcEEEET0_SE_RKT1_RKNS0_12format_specsENS0_4signEiNS1_10locale_refEENKUlvE_clEv.exit.thread
  %i.ah = icmp eq i32 %i.m, 1
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i8 0, ptr %i.e, align 1, !tbaa !38
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %i.ai = phi i8 [ %i.t, %bb.e ], [ 0, %bb.g ], [ %i.t, %bb.f ] ; 2 uses
  %.069 = phi i32 [ %spec.store.select, %bb.e ], [ 0, %bb.g ], [ 0, %bb.f ]
  %.0 = phi i64 [ %i.ag, %bb.e ], [ %i.p, %bb.g ], [ %i.p, %bb.f ]
  %i.aj = and i32 %.sroa.0.0.copyload122.fr, 4096
  %.not141 = icmp eq i32 %i.aj, 0
  %i.ak = select i1 %.not141, i8 101, i8 69
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38
  store i32 %3, ptr %6, align 8, !tbaa !1493
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.k, ptr %i.al, align 8, !tbaa !1495
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %i.m, ptr %i.am, align 8, !tbaa !1496
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i8 %i.ai, ptr %i.an, align 4, !tbaa !1497
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 %.069, ptr %i.ao, align 8, !tbaa !1498
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i8 48, ptr %i.ap, align 4, !tbaa !1499
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 29
  store i8 %i.ak, ptr %i.aq, align 1, !tbaa !1500
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i32 %i.x, ptr %i.ar, align 8, !tbaa !1501
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.at = load i32, ptr %i.as, align 4, !tbaa !1262 ; 2 uses
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %.not85.not = icmp eq i8 %i.ai, 0
  %i.av = select i1 %.not85.not, i64 2, i64 3
  %i.aw = icmp slt i32 %i.w, 1
  %i.ax = sub nsw i32 1, %i.w
  %i.ay = select i1 %i.aw, i32 %i.ax, i32 %i.x    ; 2 uses
  %i.az = icmp sgt i32 %i.ay, 99
  %i.ba = icmp sgt i32 %i.ay, 999
  %i.bb = select i1 %i.ba, i64 4, i64 3
  %.075 = select i1 %i.az, i64 %i.bb, i64 2
  %i.bc = add nuw nsw i64 %.0, %.075
  %i.bd = add nuw nsw i64 %i.bc, %i.av
  %i.be = zext nneg i32 %i.at to i64
  %i.bf = tail call i64 @llvm.usub.sat.i64(i64 %i.be, i64 %i.bd) ; 3 uses
  %i.bg = lshr i32 %.sroa.0.0.copyload122.fr, 3
  %i.bh = and i32 %i.bg, 7
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr @.str.65, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !38
  %i.bl = sext i8 %i.bk to i64
  %i.bm = and i64 %i.bl, 4294967295
  %i.bn = lshr i64 %i.bf, %i.bm                   ; 4 uses
  %i.bo = sub nsw i64 %i.bf, %i.bn
  %.not.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i, label %bb.k, label %bb.j

end_hunk_4
begin_hunk_5_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE11reserveImplEm:bb.a
  %i.ae = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ad, i1 true)
  %i.af = sub nuw nsw i64 64, %i.ae               ; 2 uses
  %i.ag = shl i64 12, %i.af
  %i.ah = icmp ugt i64 %i.ag, 72057594037927935
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #14
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ai = shl nuw nsw i64 1, %i.af
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE25computeChunkCountAndScaleEmbb.exit.i

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE25computeChunkCountAndScaleEmbb.exit.i: ; preds = %bb.g, %bb.j
  %.pn21.i.i = phi i64 [ %i.ai, %bb.j ], [ 1, %bb.g ] ; 2 uses
  %.0.pn.i.i = phi i64 [ 12, %bb.j ], [ %.sroa.speculated, %bb.g ] ; 2 uses
  %i.aj = mul i64 %.0.pn.i.i, %.pn21.i.i
  %.not.i = icmp eq i64 %i.aa, %i.aj
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE5resetEv.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE25computeChunkCountAndScaleEmbb.exit.i
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.c, i64 noundef %i.u, i64 noundef %i.z, i64 noundef %.pn21.i.i, i64 noundef %.0.pn.i.i)
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE5resetEv.exit

bb.l:                                             ; preds = %bb.f
  %i.ak = load ptr, ptr %0, align 8, !tbaa !2654
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 14
  %i.am = load i8, ptr %i.al, align 1, !tbaa !38
  %i.an = and i8 %i.am, 15
  %i.ao = zext nneg i8 %i.an to i64               ; 2 uses
  %i.ap = shl i64 %i.ao, %i.t                     ; 4 uses
  %.not10 = icmp ugt i64 %.sroa.speculated, %i.ap
  br i1 %.not10, label %bb.m, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE5resetEv.exit

bb.m:                                             ; preds = %bb.l
  %i.aq = shl nuw i64 1, %i.t
  %i.ar = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.ar, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.as = add i64 %i.ap, 7
  %i.at = lshr i64 %i.as, 3
  %i.au = add i64 %i.at, %i.ap
  %i.av = icmp ugt i64 %.sroa.speculated, %i.au
  br i1 %i.av, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE25computeChunkCountAndScaleEmbb.exit.i11, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.aw, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE25computeChunkCountAndScaleEmbb.exit.i11, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.inv.i.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i.i = select i1 %.inv.i.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE25computeChunkCountAndScaleEmbb.exit.i11

bb.q:                                             ; preds = %bb.m
  %i.ax = add i64 %.sroa.speculated, -1
  %i.ay = udiv i64 %i.ax, 12
  %i.az = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ay, i1 true)
  %i.ba = sub nuw nsw i64 64, %i.az               ; 2 uses
  %i.bb = shl i64 12, %i.ba
  %i.bc = icmp ugt i64 %i.bb, 72057594037927935
  br i1 %i.bc, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #14
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.bd = shl nuw nsw i64 1, %i.ba
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE25computeChunkCountAndScaleEmbb.exit.i11

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE25computeChunkCountAndScaleEmbb.exit.i11: ; preds = %bb.s, %bb.p, %bb.o, %bb.n
  %.pn21.i.i12 = phi i64 [ %i.bd, %bb.s ], [ 1, %bb.p ], [ 1, %bb.o ], [ 1, %bb.n ] ; 2 uses
  %.0.pn.i.i13 = phi i64 [ 12, %bb.s ], [ %spec.select.i.i, %bb.p ], [ 2, %bb.o ], [ %.sroa.speculated, %bb.n ] ; 2 uses
  %i.be = mul i64 %.0.pn.i.i13, %.pn21.i.i12
  %.not.i14 = icmp eq i64 %i.ap, %i.be
  br i1 %.not.i14, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE5resetEv.exit, label %bb.t

bb.t:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE25computeChunkCountAndScaleEmbb.exit.i11
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.c, i64 noundef %i.aq, i64 noundef %i.ao, i64 noundef %.pn21.i.i12, i64 noundef %.0.pn.i.i13)
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE5resetEv.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE5resetEv.exit: ; preds = %bb.t, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE25computeChunkCountAndScaleEmbb.exit.i11, %bb.k, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE25computeChunkCountAndScaleEmbb.exit.i, %bb.e, %bb.b, %bb.l
  ret void
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() local_unnamed_addr #22 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::bad_alloc", align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #38
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %0, align 8, !tbaa !20
  invoke void @_ZN5folly15throw_exceptionISt9bad_allocEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #38
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionISt9bad_allocEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #22 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #38 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.a, align 8, !tbaa !20
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #46
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #33 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca i8, align 1                       ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl", align 8 ; 16 uses
  %7 = alloca %"struct.std::array.999", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !165
  store i64 %2, ptr %i.b, align 8, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #38
  %i.k = load ptr, ptr %0, align 8, !tbaa !2654   ; 5 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !3336
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #38
  %i.l = mul i64 %3, %2
  store i64 %i.l, ptr %i.d, align 8, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #38
  %i.m = icmp eq i64 %2, 1                        ; 2 uses
  %i.n = shl i64 %3, 3
  %i.o = add i64 %i.n, 16
  %i.p = shl i64 %2, 7
  %.0.i = select i1 %i.m, i64 %i.o, i64 %i.p
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #38
  %i.q = mul i64 %5, %4
  store i64 %i.q, ptr %i.f, align 8, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #38
  %i.r = icmp eq i64 %4, 1                        ; 2 uses
  %i.s = shl i64 %5, 3
  %i.t = add i64 %i.s, 16
  %i.u = shl i64 %4, 7
  %.0.i69 = select i1 %i.r, i64 %i.t, i64 %i.u    ; 2 uses
  store i64 %.0.i69, ptr %i.g, align 8, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #38
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i69) #53 ; 15 uses
  store ptr %i.v, ptr %i.h, align 8, !tbaa !243
  store i8 0, ptr %i.i, align 1, !tbaa !148
  %.not.i = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %4, 7                       ; 3 uses
  %i.w = icmp ult i64 %4, 8
  br i1 %i.w, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %4, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.am, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.x = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.x, i8 0, i64 16, i1 false)
  %i.y = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.z, i8 0, i64 16, i1 false)
  %i.aa = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ab, i8 0, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ad, i8 0, i64 16, i1 false)
  %i.ae = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.af, i8 0, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 640
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ah, i8 0, i64 16, i1 false)
  %i.ai = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 768
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.aj, i8 0, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 896
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.al, i8 0, i64 16, i1 false)
  %i.am = add nuw nsw i64 %.08.i, 8               ; 2 uses
  %niter.next.7 = add nuw nsw i64 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !3119

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.am, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod160 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod160)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.ao, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.an = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.an, i8 0, i64 16, i1 false)
  %i.ao = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !3337

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 14
  %i.aq = trunc i64 %5 to i8
  store i8 %i.aq, ptr %i.ap, align 2, !tbaa !3114
  store ptr %i.v, ptr %0, align 8, !tbaa !2654
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.as = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !2658
  %i.au = and i64 %i.at, -256
  %i.av = select i1 %.not.i, i64 4294967295, i64 %i.as
  %i.aw = or i64 %i.au, %i.av
  store i64 %i.aw, ptr %i.ar, align 8, !tbaa !2658
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #38
  store i8 0, ptr %i.j, align 1, !tbaa !148
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38
  store i8 0, ptr %6, align 8, !tbaa !3338, !alias.scope !3340
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.j, ptr %i.ax, align 8, !tbaa !1302
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.493.0..sroa_idx, align 8, !tbaa !1645
  %.sroa.594.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.594.0..sroa_idx, align 8, !tbaa !3343
  %.sroa.695.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %.sroa.695.0..sroa_idx, align 8, !tbaa !1645
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !1502
  %.sroa.896.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.g, ptr %.sroa.896.0..sroa_idx, align 8, !tbaa !1645
  %.sroa.997.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.997.0..sroa_idx, align 8, !tbaa !3345
  %.sroa.1098.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.b, ptr %.sroa.1098.0..sroa_idx, align 8, !tbaa !1645
  %.sroa.1199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.1199.0..sroa_idx, align 8, !tbaa !1302
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1645
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1645
  %i.ay = icmp eq i64 %1, 0
  br i1 %i.ay, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16initializeChunksEPhmm.exit
  %or.cond = and i1 %i.r, %i.m
  br i1 %or.cond, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.az = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.ba = icmp ne ptr %i.k, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.bb = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.h
  %.053129 = phi i64 [ 0, %bb.c ], [ %.154, %bb.h ] ; 4 uses
  %.055128 = phi i64 [ 0, %bb.c ], [ %i.bl, %bb.h ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.k, i64 %.055128
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !38  ; 2 uses
  %.not114 = icmp eq i8 %i.bd, 0
  br i1 %.not114, label %bb.h, label %bb.e, !prof !40

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %i.v, i64 %.053129 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !38
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.2) #54
  unreachable

bb.g:                                             ; preds = %bb.e
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !38
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.053129
  call void @llvm.assume(i1 %i.ba)
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.055128
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !3121
  store ptr %i.bj, ptr %i.bh, align 8, !tbaa !3121
  %i.bk = add nuw i64 %.053129, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.154 = phi i64 [ %i.bk, %bb.g ], [ %.053129, %bb.d ] ; 3 uses
  %i.bl = add i64 %.055128, 1
  %i.bm = icmp ult i64 %.154, %1
  br i1 %i.bm, label %bb.d, label %bb.i, !llvm.loop !3347

bb.i:                                             ; preds = %bb.h
  %i.bn = add i64 %.154, -1                       ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bn
  %i.bp = icmp ne ptr %i.v, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.bp)
  %i.bq = and i64 %i.bn, 255                      ; 2 uses
  %i.br = icmp samesign ult i64 %i.bq, 16
  call void @llvm.assume(i1 %i.br)
  %i.bs = lshr i64 %i.bq, 1
  %i.bt = ptrtoint ptr %i.bo to i64
  %i.bu = or i64 %i.bs, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !165
  br label %bb.ab

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #38
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.k, label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit

bb.k:                                             ; preds = %bb.j
  %i.bw = icmp slt i64 %4, 0
  br i1 %i.bw, label %bb.l, label %bb.m, !prof !40

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #46
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #49
          to label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %6) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #38
  resume { ptr, i32 } %i.by

_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit: ; preds = %bb.m, %bb.j
  %.0112 = phi ptr [ %7, %bb.j ], [ %i.bx, %bb.m ] ; 6 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0112, i8 0, i64 %4, i1 false)
  %i.bz = getelementptr inbounds nuw [128 x i8], ptr %i.k, i64 %2
  br label %bb.o

.loopexit:                                        ; preds = %bb.w, %bb.o
  %.1.lcssa = phi i64 [ %.041126, %bb.o ], [ %i.cg, %bb.w ] ; 2 uses
  %.not57 = icmp eq i64 %.1.lcssa, 0
  br i1 %.not57, label %bb.x, label %bb.o, !llvm.loop !3348

bb.o:                                             ; preds = %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit, %.loopexit
  %.041126 = phi i64 [ %1, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.1.lcssa, %.loopexit ] ; 2 uses
  %.pn59125 = phi ptr [ %i.bz, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.042127, %.loopexit ] ; 2 uses
  %.042127 = getelementptr inbounds i8, ptr %.pn59125, i64 -128 ; 4 uses
  %i.ca = load <16 x i8>, ptr %.042127, align 16, !tbaa !38
  %i.cb = icmp slt <16 x i8> %i.ca, zeroinitializer
  %i.cc = bitcast <16 x i1> %i.cb to i16
  %i.cd = and i16 %i.cc, 16383                    ; 2 uses
  %.not113120 = icmp eq i16 %i.cd, 0
  br i1 %.not113120, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %.sroa.078.0.extract.trunc = zext nneg i16 %i.cd to i32
  %i.ce = icmp ne ptr %.042127, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ce)
  %i.cf = getelementptr inbounds i8, ptr %.pn59125, i64 -112
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.w
  %.1123 = phi i64 [ %.041126, %.lr.ph ], [ %i.cg, %bb.w ]
  %.sroa.078.0122 = phi i32 [ %.sroa.078.0.extract.trunc, %.lr.ph ], [ %.sroa.078.1, %bb.w ] ; 3 uses
  %.sroa.8.0121 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %bb.w ] ; 2 uses
  %i.cg = add i64 %.1123, -1                      ; 2 uses
  %i.ch = and i32 %.sroa.078.0122, 1
  %.not.i71 = icmp eq i32 %i.ch, 0
  br i1 %.not.i71, label %bb.q, label %bb.r, !prof !40

bb.q:                                             ; preds = %bb.p
  %i.ci = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.078.0122, i1 true) ; 2 uses
  %i.cj = add i32 %i.ci, %.sroa.8.0121
end_hunk_5
begin_hunk_6_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEivvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm:bb.a
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 13
  br i1 %i.h, label %bb.b, label %_ZN5folly11findLastSetImEEjT_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEivvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 12, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEivvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

_ZN5folly11findLastSetImEEjT_.exit.i:             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1            ; 2 uses
  %i.k = udiv i64 %i.j, 10
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = sub nuw nsw i32 64, %i.m                 ; 2 uses
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw nsw i64 1, %i.o                  ; 2 uses
  %i.q = icmp ugt i64 %i.j, 20479
  %i.r = shl i32 10, %i.n
  %i.s = zext i32 %i.r to i64
  %i.t = select i1 %i.q, i64 40960, i64 %i.s      ; 2 uses
  %i.u = add nsw i64 %i.p, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %i.t
  %i.y = icmp ugt i64 %i.x, 4294967295
  br i1 %i.y, label %bb.d, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEivvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #14
  unreachable

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEivvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i, %bb.b, %bb.c
  %.pn22.i = phi i64 [ 1, %bb.b ], [ 1, %bb.c ], [ %i.p, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %.0.pn.i = phi i64 [ 2, %bb.b ], [ %spec.select.i, %bb.c ], [ %i.t, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !2658
  %i.ab = lshr i64 %i.aa, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEivvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ab, i64 noundef %2, i64 noundef %3, i64 noundef %.pn22.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEivvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #33 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.2433", align 8 ; 15 uses
  %7 = alloca %"struct.std::array.999", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !165
  store i64 %2, ptr %i.b, align 8, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #38
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !10299 ; 5 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !10496
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #38
  %i.m = add i64 %2, -1
  %i.n = lshr i64 %i.m, 12
  %i.o = add nuw nsw i64 %i.n, 1
  %i.p = mul i64 %i.o, %3
  store i64 %i.p, ptr %i.d, align 8, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #38
  %i.q = icmp eq i64 %2, 1                        ; 2 uses
  %i.r = shl i64 %3, 2
  %i.s = add i64 %i.r, 16
  %i.t = shl i64 %2, 6
  %.0.i = select i1 %i.q, i64 %i.s, i64 %i.t
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #38
  %i.u = add i64 %4, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %5                         ; 2 uses
  store i64 %i.x, ptr %i.f, align 8, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #38
  %i.y = icmp eq i64 %4, 1                        ; 2 uses
  %i.z = shl i64 %5, 2
  %i.aa = add i64 %i.z, 16
  %i.ab = shl i64 %4, 6
  %.0.i52 = select i1 %i.y, i64 %i.aa, i64 %i.ab  ; 2 uses
  store i64 %.0.i52, ptr %i.g, align 8, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #38
  %i.ac = sub i64 0, %.0.i52
  %i.ad = and i64 %i.ac, -8                       ; 2 uses
  %i.ae = mul i64 %i.x, 40
  %i.af = sub i64 %i.ae, %i.ad
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #53 ; 15 uses
  store ptr %i.ag, ptr %i.h, align 8, !tbaa !243
  %i.ah = load ptr, ptr %0, align 8, !tbaa !10293 ; 2 uses
  %i.ai = sub i64 0, %i.ad
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai ; 2 uses
  %.not.i = icmp eq i64 %1, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEivvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEvPT_.exit.i.i
  %.019.i.i = phi i64 [ %i.az, %_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEvPT_.exit.i.i ], [ 0, %bb.a ]
  %.01418.i.i = phi ptr [ %i.ba, %_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEvPT_.exit.i.i ], [ %i.ah, %bb.a ] ; 7 uses
  %.01517.i.i = phi ptr [ %i.bb, %_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEvPT_.exit.i.i ], [ %i.aj, %bb.a ] ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i) ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 16 ; 3 uses
  store ptr %i.al, ptr %.01517.i.i, align 8, !tbaa !120
  %i.am = load ptr, ptr %.01418.i.i, align 8, !tbaa !104 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 16 ; 5 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !121 ; 2 uses
  %i.ar = icmp ult i64 %i.aq, 16
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = add nuw nsw i64 %i.aq, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.an, i64 %i.as, i1 false)
  br label %_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEvPT_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  store ptr %i.am, ptr %.01517.i.i, align 8, !tbaa !104
  %i.at = load i64, ptr %i.an, align 8, !tbaa !38
  store i64 %i.at, ptr %i.al, align 8, !tbaa !38
  br label %_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEvPT_.exit.i.i

_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEvPT_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.b
  %i.au = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 8 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !121
  %i.aw = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 8
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !121
  store ptr %i.an, ptr %.01418.i.i, align 8, !tbaa !104
  store i64 0, ptr %i.au, align 8, !tbaa !121
  store i8 0, ptr %i.an, align 8, !tbaa !38
  %i.ax = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 32
  %i.ay = load i32, ptr %i.ak, align 8, !tbaa !39
  store i32 %i.ay, ptr %i.ax, align 8, !tbaa !10360
  %i.az = add nuw i64 %.019.i.i, 1                ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 40
  %i.bb = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 40
  %exitcond.not.i.i = icmp eq i64 %i.az, %1
  br i1 %exitcond.not.i.i, label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEivvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit, label %.lr.ph.i.i, !llvm.loop !10497

_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEivvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit: ; preds = %_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEvPT_.exit.i.i, %bb.a
  store ptr %i.aj, ptr %0, align 8, !tbaa !10293
  store ptr %i.ah, ptr %i.i, align 8, !tbaa !10498
  %.not.i53 = icmp eq i64 %4, 0                   ; 2 uses
  br i1 %.not.i53, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEivvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEivvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit
  %xtraiter = and i64 %4, 7                       ; 3 uses
  %i.bc = icmp ult i64 %4, 8
  br i1 %i.bc, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %4, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.bs, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.bd = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %.08.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.bd, i8 0, i64 16, i1 false)
  %i.be = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %.08.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.bf, i8 0, i64 16, i1 false)
  %i.bg = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %.08.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.bh, i8 0, i64 16, i1 false)
  %i.bi = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %.08.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.bj, i8 0, i64 16, i1 false)
  %i.bk = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %.08.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.bl, i8 0, i64 16, i1 false)
  %i.bm = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %.08.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.bn, i8 0, i64 16, i1 false)
  %i.bo = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %.08.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.bp, i8 0, i64 16, i1 false)
  %i.bq = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %.08.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 448
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.br, i8 0, i64 16, i1 false)
  %i.bs = add nuw nsw i64 %.08.i, 8               ; 2 uses
  %niter.next.7 = add nuw nsw i64 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEivvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !10499

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEivvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEivvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEivvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.bs, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEivvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod187 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod187)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.bu, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.bt = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %.08.i.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.bt, i8 0, i64 16, i1 false)
  %i.bu = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEivvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !10500

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEivvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEivvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEivvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit
  %i.bv = trunc i64 %5 to i16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store i16 %i.bv, ptr %i.bw, align 1
  store ptr %i.ag, ptr %i.k, align 8, !tbaa !10299
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.by = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !2658
  %i.ca = and i64 %i.bz, -256
  %i.cb = select i1 %.not.i53, i64 4294967295, i64 %i.by
  %i.cc = or i64 %i.ca, %i.cb
  store i64 %i.cc, ptr %i.bx, align 8, !tbaa !2658
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #38
  store i8 0, ptr %i.j, align 1, !tbaa !148
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38
  store i8 0, ptr %6, align 8, !tbaa !3338, !alias.scope !10501
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.cd, align 8, !tbaa !1302
  %.sroa.486.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.486.0..sroa_idx, align 8, !tbaa !1645
  %.sroa.587.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.587.0..sroa_idx, align 8, !tbaa !10504
  %.sroa.688.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %.sroa.688.0..sroa_idx, align 8, !tbaa !1645
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !1502
  %.sroa.889.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.g, ptr %.sroa.889.0..sroa_idx, align 8, !tbaa !1645
  %.sroa.990.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.990.0..sroa_idx, align 8, !tbaa !10506
  %.sroa.1091.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.b, ptr %.sroa.1091.0..sroa_idx, align 8, !tbaa !1645
  %.sroa.1192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.1192.0..sroa_idx, align 8, !tbaa !10508
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1645
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1645
  br i1 %.not.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEivvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit
  %or.cond = and i1 %i.y, %i.q
  br i1 %or.cond, label %.lr.ph135, label %bb.h

.lr.ph135:                                        ; preds = %bb.c
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.cf = icmp ne ptr %i.l, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.cg = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph135, %bb.g
  %.041134 = phi i64 [ 0, %.lr.ph135 ], [ %.142, %bb.g ] ; 4 uses
  %.043133 = phi i64 [ 0, %.lr.ph135 ], [ %i.cq, %bb.g ] ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.l, i64 %.043133
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !38  ; 2 uses
  %.not111 = icmp eq i8 %i.ci, 0
  br i1 %.not111, label %bb.g, label %bb.e, !prof !40

bb.e:                                             ; preds = %bb.d
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.041134 ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !38
  %i.cl = icmp eq i8 %i.ck, 0
  br i1 %i.cl, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.2) #54
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.e
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !38
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %.041134
  call void @llvm.assume(i1 %i.cf)
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %.043133
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !39
  store i32 %i.co, ptr %i.cm, align 4, !tbaa !39
  %i.cp = add nuw i64 %.041134, 1
  br label %bb.g

bb.g:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, %bb.d
  %.142 = phi i64 [ %i.cp, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ], [ %.041134, %bb.d ] ; 2 uses
  %i.cq = add i64 %.043133, 1
  %i.cr = icmp ult i64 %.142, %1
  br i1 %i.cr, label %bb.d, label %.loopexit, !llvm.loop !10510

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #38
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.i, label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit

bb.i:                                             ; preds = %bb.h
  %i.cs = icmp slt i64 %4, 0
  br i1 %i.cs, label %bb.j, label %bb.k, !prof !40

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt17__throw_bad_allocv() #46
          to label %.noexc unwind label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEivvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit

.noexc:                                           ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ct = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #49
          to label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit unwind label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEivvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit

_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit: ; preds = %bb.k, %bb.h
  %.0103 = phi ptr [ %7, %bb.h ], [ %i.ct, %bb.k ] ; 5 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0103, i8 0, i64 %4, i1 false)
  %i.cu = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %2
  br label %bb.l

.loopexit112:                                     ; preds = %bb.aa, %bb.l
  %.1.lcssa = phi i64 [ %.0131, %bb.l ], [ %i.dl, %bb.aa ] ; 2 uses
  %.not45 = icmp eq i64 %.1.lcssa, 0
  br i1 %.not45, label %bb.ab, label %bb.l, !llvm.loop !10511

bb.l:                                             ; preds = %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit, %.loopexit112
  %.0131 = phi i64 [ %1, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.1.lcssa, %.loopexit112 ] ; 2 uses
  %.pn130 = phi ptr [ %i.cu, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.034132, %.loopexit112 ] ; 2 uses
  %.034132 = getelementptr inbounds i8, ptr %.pn130, i64 -64 ; 4 uses
  %i.cv = load <16 x i8>, ptr %.034132, align 16, !tbaa !38
  %i.cw = icmp slt <16 x i8> %i.cv, zeroinitializer
  %i.cx = bitcast <16 x i1> %i.cw to i16
  %i.cy = and i16 %i.cx, 4095                     ; 2 uses
  %.sroa.072.0.extract.trunc = zext nneg i16 %i.cy to i32 ; 2 uses
  %cond = icmp eq i16 %i.cy, 0
  br i1 %cond, label %.loopexit112, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %i.cz = icmp ne ptr %.034132, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.cz)
  %i.da = getelementptr inbounds i8, ptr %.pn130, i64 -48 ; 2 uses
  %i.db = load ptr, ptr %0, align 8, !tbaa !10293
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit
  %.sroa.069.0123 = phi i32 [ %.sroa.072.0.extract.trunc, %.lr.ph ], [ %.sroa.069.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 3 uses
  %.sroa.8.0122 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %i.dc = and i32 %.sroa.069.0123, 1
  %.not.i55 = icmp eq i32 %i.dc, 0
  br i1 %.not.i55, label %bb.n, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !40

bb.n:                                             ; preds = %bb.m
  %i.dd = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.069.0123, i1 true) ; 2 uses
  %i.de = add i32 %i.dd, %.sroa.8.0122
  %i.df = add nuw nsw i32 %i.dd, 1
  br label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit

_ZN5folly3f146detail13DenseMaskIter4nextEv.exit:  ; preds = %bb.m, %bb.n
  %.sroa.8.1.in = phi i32 [ %i.de, %bb.n ], [ %.sroa.8.0122, %bb.m ] ; 2 uses
  %.pn110 = phi i32 [ %i.df, %bb.n ], [ 1, %bb.m ]
  %.sroa.069.1 = lshr i32 %.sroa.069.0123, %.pn110 ; 2 uses
  %.sroa.8.1 = add i32 %.sroa.8.1.in, 1
  %i.dg = zext i32 %.sroa.8.1.in to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !39
  %i.dj = zext i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [40 x i8], ptr %i.db, i64 %i.dj
  call void @llvm.prefetch.p0(ptr %i.dk, i32 0, i32 3, i32 1)
  %.not107 = icmp eq i32 %.sroa.069.1, 0
  br i1 %.not107, label %.lr.ph128, label %bb.m

.lr.ph128:                                        ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, %bb.aa
  %.1127 = phi i64 [ %i.dl, %bb.aa ], [ %.0131, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ]
  %.sroa.072.0126 = phi i32 [ %.sroa.072.1, %bb.aa ], [ %.sroa.072.0.extract.trunc, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 3 uses
  %.sroa.874.0125 = phi i32 [ %.sroa.874.1, %bb.aa ], [ 0, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %i.dl = add i64 %.1127, -1                      ; 2 uses
  %i.dm = and i32 %.sroa.072.0126, 1
  %.not.i57 = icmp eq i32 %i.dm, 0
  br i1 %.not.i57, label %bb.o, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit59, !prof !40

bb.o:                                             ; preds = %.lr.ph128
  %i.dn = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.072.0126, i1 true) ; 2 uses
  %i.do = add i32 %i.dn, %.sroa.874.0125
  %i.dp = add nuw nsw i32 %i.dn, 1
  br label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit59

_ZN5folly3f146detail13DenseMaskIter4nextEv.exit59: ; preds = %.lr.ph128, %bb.o
end_hunk_6
