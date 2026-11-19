Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/tree?download=true
inline.NumInlined: 6283
inline.NumDeleted: 1853
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 60
begin_hunk_0_@_ZN3fmt3v116detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi:bb.a
bb.bj:                                            ; preds = %bb.bj, %.lr.ph.i.i292.new
  %.013.i.i293 = phi i64 [ 0, %.lr.ph.i.i292.new ], [ %i.rl, %bb.bj ] ; 3 uses
  %.01112.i.i294 = phi i64 [ 0, %.lr.ph.i.i292.new ], [ %i.rk, %bb.bj ]
  %niter1726 = phi i64 [ 0, %.lr.ph.i.i292.new ], [ %niter1726.next.1, %bb.bj ]
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %i.qm, i64 %.013.i.i293 ; 2 uses
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !88
  %i.qy = zext i32 %i.qx to i64
  %i.qz = mul nuw nsw i64 %i.qy, 10
  %i.ra = add nuw nsw i64 %i.qz, %.01112.i.i294   ; 2 uses
  %i.rb = trunc i64 %i.ra to i32
  store i32 %i.rb, ptr %i.qw, align 4, !tbaa !88
  %i.rc = lshr i64 %i.ra, 32
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %i.qm, i64 %.013.i.i293
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 4 ; 2 uses
  %i.rf = load i32, ptr %i.re, align 4, !tbaa !88
  %i.rg = zext i32 %i.rf to i64
  %i.rh = mul nuw nsw i64 %i.rg, 10
  %i.ri = add nuw nsw i64 %i.rh, %i.rc            ; 2 uses
  %i.rj = trunc i64 %i.ri to i32
  store i32 %i.rj, ptr %i.re, align 4, !tbaa !88
  %i.rk = lshr i64 %i.ri, 32                      ; 3 uses
  %i.rl = add nuw i64 %.013.i.i293, 2             ; 2 uses
  %niter1726.next.1 = add nuw i64 %niter1726, 2   ; 2 uses
  %niter1726.ncmp.1 = icmp eq i64 %niter1726.next.1, %unroll_iter1725
  br i1 %niter1726.ncmp.1, label %._crit_edge.i.i296.unr-lcssa, label %bb.bj, !llvm.loop !29

bb.bk:                                            ; preds = %._crit_edge.i.i296
  %i.rm = add i64 %i.ql, 1                        ; 3 uses
  %i.rn = load i64, ptr %i.k, align 8, !tbaa !370
  %i.ro = icmp ugt i64 %i.rm, %i.rn
  br i1 %i.ro, label %bb.bl, label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i298

bb.bl:                                            ; preds = %bb.bk
  %i.rp = load ptr, ptr %i.l, align 8, !tbaa !368
  invoke void %i.rp(ptr noundef nonnull align 8 dereferenceable(172) %7, i64 noundef %i.rm)
          to label %.noexc303 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !994

.noexc303:                                        ; preds = %bb.bl
  %.pre.i.i.i300 = load i64, ptr %i.m, align 8, !tbaa !375 ; 2 uses
  %.pre2.i.i.i301 = add i64 %.pre.i.i.i300, 1
  %.pre.i302 = load ptr, ptr %7, align 8, !tbaa !369
  br label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i298

_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i298: ; preds = %.noexc303, %bb.bk
  %i.rq = phi ptr [ %i.qm, %bb.bk ], [ %.pre.i302, %.noexc303 ]
  %.pre-phi.i.i.i299 = phi i64 [ %i.rm, %bb.bk ], [ %.pre2.i.i.i301, %.noexc303 ]
  %i.rr = phi i64 [ %i.ql, %bb.bk ], [ %.pre.i.i.i300, %.noexc303 ]
  store i64 %.pre-phi.i.i.i299, ptr %i.m, align 8, !tbaa !375
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %i.rq, i64 %i.rr
  store i32 %i.qv, ptr %i.rs, align 4, !tbaa !88
  br label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit304

_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit304:    ; preds = %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i298, %._crit_edge.i.i296, %bb.bi
  br i1 %.not97, label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit318, label %bb.bm

bb.bm:                                            ; preds = %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit304
  %i.rt = load i64, ptr %.2.sroa.gep, align 8, !tbaa !375 ; 7 uses
  %.not14.i.i305 = icmp eq i64 %i.rt, 0
  br i1 %.not14.i.i305, label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit318, label %.lr.ph.i.i306

.lr.ph.i.i306:                                    ; preds = %bb.bm
  %i.ru = load ptr, ptr %.2, align 8, !tbaa !369  ; 4 uses
  %xtraiter1728 = and i64 %i.rt, 1
  %i.rv = icmp eq i64 %i.rt, 1
  br i1 %i.rv, label %.epil.preheader1727, label %.lr.ph.i.i306.new

.lr.ph.i.i306.new:                                ; preds = %.lr.ph.i.i306
  %unroll_iter1732 = and i64 %i.rt, -2
  br label %bb.bn

._crit_edge.i.i310.unr-lcssa:                     ; preds = %bb.bn
  %lcmp.mod1729.not = icmp eq i64 %xtraiter1728, 0
  br i1 %lcmp.mod1729.not, label %._crit_edge.i.i310, label %.epil.preheader1727

.epil.preheader1727:                              ; preds = %._crit_edge.i.i310.unr-lcssa, %.lr.ph.i.i306
  %.013.i.i307.epil.init = phi i64 [ 0, %.lr.ph.i.i306 ], [ %i.st, %._crit_edge.i.i310.unr-lcssa ]
  %.01112.i.i308.epil.init = phi i64 [ 0, %.lr.ph.i.i306 ], [ %i.ss, %._crit_edge.i.i310.unr-lcssa ]
  %lcmp.mod1731 = trunc i64 %i.rt to i1
  call void @llvm.assume(i1 %lcmp.mod1731)
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %i.ru, i64 %.013.i.i307.epil.init ; 2 uses
  %i.rx = load i32, ptr %i.rw, align 4, !tbaa !88
  %i.ry = zext i32 %i.rx to i64
  %i.rz = mul nuw nsw i64 %i.ry, 10
  %i.sa = add nuw nsw i64 %i.rz, %.01112.i.i308.epil.init ; 2 uses
  %i.sb = trunc i64 %i.sa to i32
  store i32 %i.sb, ptr %i.rw, align 4, !tbaa !88
  %i.sc = lshr i64 %i.sa, 32
  br label %._crit_edge.i.i310

._crit_edge.i.i310:                               ; preds = %._crit_edge.i.i310.unr-lcssa, %.epil.preheader1727
  %.lcssa1690 = phi i64 [ %i.ss, %._crit_edge.i.i310.unr-lcssa ], [ %i.sc, %.epil.preheader1727 ] ; 2 uses
  %i.sd = trunc nuw nsw i64 %.lcssa1690 to i32
  %.not.i.i311 = icmp eq i64 %.lcssa1690, 0
  br i1 %.not.i.i311, label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit318, label %bb.bo

bb.bn:                                            ; preds = %bb.bn, %.lr.ph.i.i306.new
  %.013.i.i307 = phi i64 [ 0, %.lr.ph.i.i306.new ], [ %i.st, %bb.bn ] ; 3 uses
  %.01112.i.i308 = phi i64 [ 0, %.lr.ph.i.i306.new ], [ %i.ss, %bb.bn ]
  %niter1733 = phi i64 [ 0, %.lr.ph.i.i306.new ], [ %niter1733.next.1, %bb.bn ]
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %i.ru, i64 %.013.i.i307 ; 2 uses
  %i.sf = load i32, ptr %i.se, align 4, !tbaa !88
  %i.sg = zext i32 %i.sf to i64
  %i.sh = mul nuw nsw i64 %i.sg, 10
  %i.si = add nuw nsw i64 %i.sh, %.01112.i.i308   ; 2 uses
  %i.sj = trunc i64 %i.si to i32
  store i32 %i.sj, ptr %i.se, align 4, !tbaa !88
  %i.sk = lshr i64 %i.si, 32
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %i.ru, i64 %.013.i.i307
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 4 ; 2 uses
  %i.sn = load i32, ptr %i.sm, align 4, !tbaa !88
  %i.so = zext i32 %i.sn to i64
  %i.sp = mul nuw nsw i64 %i.so, 10
  %i.sq = add nuw nsw i64 %i.sp, %i.sk            ; 2 uses
  %i.sr = trunc i64 %i.sq to i32
  store i32 %i.sr, ptr %i.sm, align 4, !tbaa !88
  %i.ss = lshr i64 %i.sq, 32                      ; 3 uses
  %i.st = add nuw i64 %.013.i.i307, 2             ; 2 uses
  %niter1733.next.1 = add nuw i64 %niter1733, 2   ; 2 uses
  %niter1733.ncmp.1 = icmp eq i64 %niter1733.next.1, %unroll_iter1732
  br i1 %niter1733.ncmp.1, label %._crit_edge.i.i310.unr-lcssa, label %bb.bn, !llvm.loop !29

bb.bo:                                            ; preds = %._crit_edge.i.i310
  %i.su = add i64 %i.rt, 1                        ; 3 uses
  %.2.sroa.gep503 = getelementptr inbounds nuw i8, ptr %.2, i64 16
  %i.sv = load i64, ptr %.2.sroa.gep503, align 8, !tbaa !370
  %i.sw = icmp ugt i64 %i.su, %i.sv
  br i1 %i.sw, label %bb.bp, label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i312

bb.bp:                                            ; preds = %bb.bo
  %.2.sroa.gep506 = getelementptr inbounds nuw i8, ptr %.2, i64 24
  %i.sx = load ptr, ptr %.2.sroa.gep506, align 8, !tbaa !368
  invoke void %i.sx(ptr noundef nonnull align 8 dereferenceable(172) %.2, i64 noundef %i.su)
          to label %.noexc317 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !994

.noexc317:                                        ; preds = %bb.bp
  %.pre.i.i.i314 = load i64, ptr %.2.sroa.gep, align 8, !tbaa !375 ; 2 uses
  %.pre2.i.i.i315 = add i64 %.pre.i.i.i314, 1
  %.pre.i316 = load ptr, ptr %.2, align 8, !tbaa !369
  br label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i312

_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i312: ; preds = %.noexc317, %bb.bo
  %i.sy = phi ptr [ %i.ru, %bb.bo ], [ %.pre.i316, %.noexc317 ]
  %.pre-phi.i.i.i313 = phi i64 [ %i.su, %bb.bo ], [ %.pre2.i.i.i315, %.noexc317 ]
  %i.sz = phi i64 [ %i.rt, %bb.bo ], [ %.pre.i.i.i314, %.noexc317 ]
  store i64 %.pre-phi.i.i.i313, ptr %.2.sroa.gep, align 8, !tbaa !375
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %i.sy, i64 %i.sz
  store i32 %i.sd, ptr %i.ta, align 4, !tbaa !88
  br label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit318

_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit318:    ; preds = %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i312, %._crit_edge.i.i310, %bb.bm, %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit, %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit304, %_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit
  %i.tb = and i32 %1, 4
  %.not99 = icmp eq i32 %i.tb, 0
  br i1 %.not99, label %bb.bu, label %bb.bq

bb.bq:                                            ; preds = %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit318
  %i.tc = load i32, ptr %4, align 4, !tbaa !88    ; 3 uses
  %i.td = icmp sgt i32 %i.tc, -1
  %i.te = sub nsw i32 2147483646, %i.tc
  %i.tf = icmp sgt i32 %2, %i.te
  %or.cond.i320 = select i1 %i.td, i1 %i.tf, i1 false
  br i1 %or.cond.i320, label %bb.br, label %_ZN3fmt3v116detail16adjust_precisionERii.exit

bb.br:                                            ; preds = %bb.bq
  %i.tg = call ptr @__cxa_allocate_exception(i64 16) #12 ; 4 uses
  invoke void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.tg, ptr noundef nonnull @.str.50)
          to label %bb.bs unwind label %bb.bt

bb.bs:                                            ; preds = %bb.br
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3fmt3v1112format_errorE, i64 16), ptr %i.tg, align 8, !tbaa !54
  br label %.invoke1473

bb.bt:                                            ; preds = %bb.br
  %i.th = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.tg) #12
  br label %.body

_ZN3fmt3v116detail16adjust_precisionERii.exit:    ; preds = %bb.bq
  %i.ti = add i32 %2, 1
  %i.tj = add i32 %i.ti, %i.tc
  br label %bb.bu

bb.bu:                                            ; preds = %_ZN3fmt3v116detail16adjust_precisionERii.exit, %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit318, %_ZN3fmt3v116detail6bigintlSEi.exit168
  %.0538 = phi i32 [ %2, %_ZN3fmt3v116detail6bigintlSEi.exit168 ], [ %2, %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit318 ], [ %i.tj, %_ZN3fmt3v116detail16adjust_precisionERii.exit ] ; 5 uses
  br i1 %i.mw, label %bb.bv, label %bb.df

bb.bv:                                            ; preds = %bb.bu
  %i.tk = load ptr, ptr %3, align 8, !tbaa !269   ; 3 uses
  %.2.sroa.gep509 = getelementptr inbounds nuw i8, ptr %.2, i64 8 ; 4 uses
  %spec.store.select.sroa.sel510 = select i1 %.not97, ptr %i.m, ptr %.2.sroa.gep509
  %.2.sroa.gep512 = getelementptr inbounds nuw i8, ptr %.2, i64 168
  %spec.store.select.sroa.sel513 = select i1 %.not97, ptr %i.o, ptr %.2.sroa.gep512
  %i.tl = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.tn = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.2.sroa.gep518 = getelementptr inbounds nuw i8, ptr %.2, i64 16
  %.2.sroa.gep521 = getelementptr inbounds nuw i8, ptr %.2, i64 24
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.bv
  %indvars.iv680 = phi i64 [ 0, %bb.bv ], [ %indvars.iv680.be, %.backedge.backedge ] ; 7 uses
  %i.to = invoke noundef i32 @_ZN3fmt3v116detail6bigint13divmod_assignERKS2_(ptr noundef nonnull align 8 dereferenceable(172) %5, ptr noundef nonnull align 8 dereferenceable(172) %6)
          to label %bb.bw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.bw:                                            ; preds = %.backedge
  %i.tp = load i64, ptr %i.c, align 8, !tbaa !375 ; 2 uses
  %i.tq = trunc i64 %i.tp to i32                  ; 2 uses
  %i.tr = load i32, ptr %i.e, align 8, !tbaa !374 ; 3 uses
  %i.ts = add nsw i32 %i.tr, %i.tq                ; 4 uses
  %i.tt = load i64, ptr %i.m, align 8, !tbaa !375 ; 2 uses
  %i.tu = trunc i64 %i.tt to i32                  ; 2 uses
  %i.tv = load i32, ptr %i.o, align 8, !tbaa !374
  %i.tw = add nsw i32 %i.tv, %i.tu                ; 2 uses
  %.not.i322 = icmp eq i32 %i.ts, %i.tw
  br i1 %.not.i322, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.tx = icmp sgt i32 %i.ts, %i.tw
  %i.ty = select i1 %i.tx, i32 1, i32 -1
  br label %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit

bb.by:                                            ; preds = %bb.bw
  %i.tz = sub nsw i32 %i.tq, %i.tu
  %spec.store.select.i = call i32 @llvm.smax.i32(i32 %i.tz, i32 0)
  %i.ua = load ptr, ptr %5, align 8
  %i.ub = load ptr, ptr %7, align 8
  %sext.i323 = shl i64 %i.tp, 32
  %i.uc = ashr exact i64 %sext.i323, 32           ; 3 uses
  %i.ud = zext nneg i32 %spec.store.select.i to i64 ; 3 uses
  %sext55.i = shl i64 %i.tt, 32
  %i.ue = ashr exact i64 %sext55.i, 32            ; 2 uses
  %smin = call i64 @llvm.smin.i64(i64 %i.uc, i64 %i.ud) ; 2 uses
  %.not35.not.i1523 = icmp sgt i64 %i.uc, %i.ud
  br i1 %.not35.not.i1523, label %.lr.ph1527, label %._crit_edge1528

bb.bz:                                            ; preds = %.lr.ph1527
  %.not35.not.i = icmp sgt i64 %indvars.iv.next.i325, %i.ud
  br i1 %.not35.not.i, label %.lr.ph1527, label %._crit_edge1528, !llvm.loop !30

.lr.ph1527:                                       ; preds = %bb.by, %bb.bz
  %indvars.iv.i3241525 = phi i64 [ %indvars.iv.next.i325, %bb.bz ], [ %i.uc, %bb.by ]
  %indvars.iv45.i1524 = phi i64 [ %indvars.iv.next46.i, %bb.bz ], [ %i.ue, %bb.by ]
  %indvars.iv.next.i325 = add nsw i64 %indvars.iv.i3241525, -1 ; 3 uses
  %indvars.iv.next46.i = add nsw i64 %indvars.iv45.i1524, -1 ; 3 uses
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr %i.ua, i64 %indvars.iv.next.i325
  %i.ug = load i32, ptr %i.uf, align 4, !tbaa !88 ; 2 uses
  %i.uh = getelementptr inbounds [4 x i8], ptr %i.ub, i64 %indvars.iv.next46.i
  %i.ui = load i32, ptr %i.uh, align 4, !tbaa !88 ; 2 uses
  %.not37.i = icmp eq i32 %i.ug, %i.ui
  br i1 %.not37.i, label %bb.bz, label %.loopexit.i, !llvm.loop !30

._crit_edge1528:                                  ; preds = %bb.bz, %bb.by
  %indvars.iv45.i.lcssa = phi i64 [ %i.ue, %bb.by ], [ %indvars.iv.next46.i, %bb.bz ] ; 2 uses
  %.not36.i = icmp eq i64 %smin, %indvars.iv45.i.lcssa
  br i1 %.not36.i, label %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit, label %bb.ca

bb.ca:                                            ; preds = %._crit_edge1528
  %i.uj = icmp sgt i64 %smin, %indvars.iv45.i.lcssa
  %i.uk = select i1 %i.uj, i32 1, i32 -1
  br label %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit

.loopexit.i:                                      ; preds = %.lr.ph1527
  %i.ul = icmp ugt i32 %i.ug, %i.ui
  %i.um = select i1 %i.ul, i32 1, i32 -1
  br label %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit

_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit: ; preds = %bb.bx, %._crit_edge1528, %bb.ca, %.loopexit.i
  %.3.i = phi i32 [ %i.ty, %bb.bx ], [ 0, %._crit_edge1528 ], [ %i.uk, %bb.ca ], [ %i.um, %.loopexit.i ]
  %i.un = icmp sge i32 %.3.i, %i.mv               ; 3 uses
  %i.uo = load i64, ptr %spec.store.select.sroa.sel510, align 8, !tbaa !375
  %i.up = trunc i64 %i.uo to i32
  %i.uq = load i32, ptr %spec.store.select.sroa.sel513, align 8, !tbaa !374 ; 3 uses
  %i.ur = add nsw i32 %i.uq, %i.up                ; 2 uses
  %i.us = call noundef i32 @llvm.smax.i32(i32 %i.ts, i32 %i.ur) ; 2 uses
  %i.ut = load i64, ptr %i.h, align 8, !tbaa !375 ; 2 uses
  %i.uu = trunc i64 %i.ut to i32
  %i.uv = load i32, ptr %i.j, align 8, !tbaa !374 ; 3 uses
  %i.uw = add nsw i32 %i.uv, %i.uu                ; 3 uses
  %i.ux = add nsw i32 %i.us, 1
  %i.uy = icmp slt i32 %i.ux, %i.uw
  br i1 %i.uy, label %_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit343, label %bb.cb

bb.cb:                                            ; preds = %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit
  %i.uz = icmp sgt i32 %i.us, %i.uw
  br i1 %i.uz, label %.thread842, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.va = call noundef i32 @llvm.smin.i32(i32 %i.tr, i32 %i.uq)
  %i.vb = call noundef i32 @llvm.smin.i32(i32 %i.va, i32 %i.uv) ; 2 uses
  %.not.not.not53.i326 = icmp sgt i32 %i.uw, %i.vb
  br i1 %.not.not.not53.i326, label %.lr.ph.i328, label %_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit343

.lr.ph.i328:                                      ; preds = %bb.cc
  %i.vc = load ptr, ptr %5, align 8
  %i.vd = load ptr, ptr %spec.store.select, align 8
  %i.ve = load ptr, ptr %6, align 8
  %i.vf = sext i32 %i.uv to i64                   ; 3 uses
  %sext.i329 = shl i64 %i.ut, 32
  %i.vg = ashr exact i64 %sext.i329, 32
  %i.vh = add nsw i64 %i.vg, %i.vf
  %i.vi = sext i32 %i.ur to i64
  %i.vj = sext i32 %i.uq to i64                   ; 2 uses
  %i.vk = sext i32 %i.ts to i64
  %i.vl = sext i32 %i.tr to i64                   ; 2 uses
  %i.vm = sext i32 %i.vb to i64
  br label %bb.cd

bb.cd:                                            ; preds = %bb.ci, %.lr.ph.i328
  %indvars.iv.i330 = phi i64 [ %i.vh, %.lr.ph.i328 ], [ %indvars.iv.next.i332, %bb.ci ] ; 6 uses
  %.03254.i331 = phi i64 [ 0, %.lr.ph.i328 ], [ %i.wj, %bb.ci ] ; 2 uses
  %indvars.iv.next.i332 = add nsw i64 %indvars.iv.i330, -1 ; 5 uses
  %.not.i.i333 = icmp sgt i64 %indvars.iv.i330, %i.vl
  %i.vn = icmp sle i64 %indvars.iv.i330, %i.vk
  %or.cond.i334 = and i1 %.not.i.i333, %i.vn
  br i1 %or.cond.i334, label %bb.ce, label %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit.i335

bb.ce:                                            ; preds = %bb.cd
  %i.vo = sub nsw i64 %indvars.iv.next.i332, %i.vl
  %i.vp = getelementptr inbounds [4 x i8], ptr %i.vc, i64 %i.vo
  %i.vq = load i32, ptr %i.vp, align 4, !tbaa !88
  %i.vr = zext i32 %i.vq to i64
  br label %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit.i335

_ZNK3fmt3v116detail6bigint9get_bigitEi.exit.i335: ; preds = %bb.ce, %bb.cd
  %i.vs = phi i64 [ %i.vr, %bb.ce ], [ 0, %bb.cd ]
  %.not.i43.i336 = icmp sgt i64 %indvars.iv.i330, %i.vj
  %i.vt = icmp sle i64 %indvars.iv.i330, %i.vi
  %or.cond50.i337 = and i1 %.not.i43.i336, %i.vt
  br i1 %or.cond50.i337, label %bb.cf, label %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit44.i338

bb.cf:                                            ; preds = %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit.i335
  %i.vu = sub nsw i64 %indvars.iv.next.i332, %i.vj
  %i.vv = getelementptr inbounds [4 x i8], ptr %i.vd, i64 %i.vu
  %i.vw = load i32, ptr %i.vv, align 4, !tbaa !88
  %i.vx = zext i32 %i.vw to i64
  br label %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit44.i338

_ZNK3fmt3v116detail6bigint9get_bigitEi.exit44.i338: ; preds = %bb.cf, %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit.i335
  %i.vy = phi i64 [ %i.vx, %bb.cf ], [ 0, %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit.i335 ]
  %i.vz = add nuw nsw i64 %i.vy, %i.vs            ; 3 uses
  %.not.i45.i339 = icmp sgt i64 %indvars.iv.i330, %i.vf
  br i1 %.not.i45.i339, label %bb.cg, label %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit46.i340

bb.cg:                                            ; preds = %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit44.i338
  %i.wa = sub nsw i64 %indvars.iv.next.i332, %i.vf
  %i.wb = getelementptr inbounds [4 x i8], ptr %i.ve, i64 %i.wa
  %i.wc = load i32, ptr %i.wb, align 4, !tbaa !88
  %i.wd = zext i32 %i.wc to i64
  %i.we = or disjoint i64 %.03254.i331, %i.wd
  br label %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit46.i340

_ZNK3fmt3v116detail6bigint9get_bigitEi.exit46.i340: ; preds = %bb.cg, %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit44.i338
  %i.wf = phi i64 [ %i.we, %bb.cg ], [ %.03254.i331, %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit44.i338 ] ; 3 uses
  %i.wg = icmp ugt i64 %i.vz, %i.wf
  br i1 %i.wg, label %.thread842, label %bb.ch

bb.ch:                                            ; preds = %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit46.i340
  %i.wh = sub nuw nsw i64 %i.wf, %i.vz            ; 2 uses
  %i.wi = icmp ugt i64 %i.wh, 1
  br i1 %i.wi, label %_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit343, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.wj = shl nuw nsw i64 %i.wh, 32
  %.not.not.not.i341 = icmp sgt i64 %indvars.iv.next.i332, %i.vm
  br i1 %.not.not.not.i341, label %bb.cd, label %.thread.loopexit.i342, !llvm.loop !993

.thread.loopexit.i342:                            ; preds = %bb.ci
  %i.wk = icmp ne i64 %i.wf, %i.vz
  %i.wl = sext i1 %i.wk to i32
  br label %_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit343

_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit343: ; preds = %bb.ch, %.thread.loopexit.i342, %bb.cc, %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit
  %.4.i327 = phi i32 [ %i.wl, %.thread.loopexit.i342 ], [ -1, %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit ], [ 0, %bb.cc ], [ -1, %bb.ch ]
  %i.wm = icmp slt i32 %.4.i327, %i.mu            ; 3 uses
  %i.wn = trunc i32 %i.to to i8                   ; 3 uses
  %i.wo = add i8 %i.wn, 48
  %indvars.iv.next681 = add nuw nsw i64 %indvars.iv680, 1 ; 7 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %i.tk, i64 %indvars.iv680
  store i8 %i.wo, ptr %i.wp, align 1, !tbaa !202
  %or.cond.not = select i1 %i.un, i1 %i.wm, i1 false
  br i1 %or.cond.not, label %bb.cu, label %bb.cj

bb.cj:                                            ; preds = %_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit343
  br i1 %i.un, label %.thread543.sink.split, label %bb.ck

.thread842:                                       ; preds = %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit46.i340, %bb.cb
  %i.wq = trunc i32 %i.to to i8                   ; 3 uses
  %i.wr = add i8 %i.wq, 48
  %indvars.iv.next681836 = add nuw nsw i64 %indvars.iv680, 1 ; 2 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %i.tk, i64 %indvars.iv680
  store i8 %i.wr, ptr %i.ws, align 1, !tbaa !202
  br i1 %i.un, label %.thread543.sink.split, label %.thread851

bb.ck:                                            ; preds = %bb.cj
  br i1 %i.wm, label %.thread543, label %.thread851

.thread851:                                       ; preds = %.thread842, %bb.ck
  %indvars.iv.next681839849854 = phi i64 [ %indvars.iv.next681, %bb.ck ], [ %indvars.iv.next681836, %.thread842 ] ; 6 uses
  %i.wt = phi i8 [ %i.wn, %bb.ck ], [ %i.wq, %.thread842 ] ; 3 uses
  %i.wu = load i64, ptr %i.c, align 8, !tbaa !375
  %i.wv = trunc i64 %i.wu to i32
  %i.ww = load i32, ptr %i.e, align 8, !tbaa !374 ; 3 uses
  %i.wx = add nsw i32 %i.ww, %i.wv                ; 3 uses
  %i.wy = load i64, ptr %i.h, align 8, !tbaa !375 ; 2 uses
  %i.wz = trunc i64 %i.wy to i32
  %i.xa = load i32, ptr %i.j, align 8, !tbaa !374 ; 3 uses
  %i.xb = add nsw i32 %i.xa, %i.wz                ; 3 uses
  %i.xc = add nsw i32 %i.wx, 1
  %i.xd = icmp slt i32 %i.xc, %i.xb
  br i1 %i.xd, label %.thread543, label %bb.cl

bb.cl:                                            ; preds = %.thread851
  %i.xe = icmp sgt i32 %i.wx, %i.xb
  br i1 %i.xe, label %.thread543.sink.split, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.xf = call noundef i32 @llvm.smin.i32(i32 %i.ww, i32 %i.xa) ; 2 uses
  %.not.not.not53.i344 = icmp sgt i32 %i.xb, %i.xf
  br i1 %.not.not.not53.i344, label %.lr.ph.i346, label %bb.cs

.lr.ph.i346:                                      ; preds = %bb.cm
  %i.xg = load ptr, ptr %5, align 8
  %i.xh = load ptr, ptr %6, align 8
  %i.xi = sext i32 %i.xa to i64                   ; 3 uses
  %sext.i347 = shl i64 %i.wy, 32
  %i.xj = ashr exact i64 %sext.i347, 32
  %i.xk = add nsw i64 %i.xj, %i.xi
  %i.xl = sext i32 %i.wx to i64
  %i.xm = sext i32 %i.ww to i64                   ; 2 uses
  %i.xn = sext i32 %i.xf to i64
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cr, %.lr.ph.i346
  %indvars.iv.i348 = phi i64 [ %i.xk, %.lr.ph.i346 ], [ %indvars.iv.next.i350, %bb.cr ] ; 4 uses
  %.03254.i349 = phi i64 [ 0, %.lr.ph.i346 ], [ %i.ye, %bb.cr ] ; 2 uses
  %indvars.iv.next.i350 = add nsw i64 %indvars.iv.i348, -1 ; 4 uses
  %.not.i.i351 = icmp sgt i64 %indvars.iv.i348, %i.xm
  %i.xo = icmp sle i64 %indvars.iv.i348, %i.xl
  %or.cond.i352 = and i1 %.not.i.i351, %i.xo
  br i1 %or.cond.i352, label %bb.co, label %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit44.i356

bb.co:                                            ; preds = %bb.cn
  %i.xp = sub nsw i64 %indvars.iv.next.i350, %i.xm
  %i.xq = getelementptr inbounds [4 x i8], ptr %i.xg, i64 %i.xp
  %i.xr = load i32, ptr %i.xq, align 4, !tbaa !88
  %i.xs = zext i32 %i.xr to i64
  %i.xt = shl nuw nsw i64 %i.xs, 1
  br label %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit44.i356

_ZNK3fmt3v116detail6bigint9get_bigitEi.exit44.i356: ; preds = %bb.cn, %bb.co
  %i.xu = phi i64 [ %i.xt, %bb.co ], [ 0, %bb.cn ] ; 3 uses
  %.not.i45.i357 = icmp sgt i64 %indvars.iv.i348, %i.xi
  br i1 %.not.i45.i357, label %bb.cp, label %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit46.i358

bb.cp:                                            ; preds = %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit44.i356
  %i.xv = sub nsw i64 %indvars.iv.next.i350, %i.xi
  %i.xw = getelementptr inbounds [4 x i8], ptr %i.xh, i64 %i.xv
  %i.xx = load i32, ptr %i.xw, align 4, !tbaa !88
  %i.xy = zext i32 %i.xx to i64
  %i.xz = or disjoint i64 %.03254.i349, %i.xy
  br label %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit46.i358

_ZNK3fmt3v116detail6bigint9get_bigitEi.exit46.i358: ; preds = %bb.cp, %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit44.i356
  %i.ya = phi i64 [ %i.xz, %bb.cp ], [ %.03254.i349, %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit44.i356 ] ; 3 uses
  %i.yb = icmp ugt i64 %i.xu, %i.ya
  br i1 %i.yb, label %.thread543.sink.split, label %bb.cq

bb.cq:                                            ; preds = %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit46.i358
  %i.yc = sub nuw nsw i64 %i.ya, %i.xu            ; 2 uses
  %i.yd = icmp ugt i64 %i.yc, 1
  br i1 %i.yd, label %.thread543, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.ye = shl nuw nsw i64 %i.yc, 32
  %.not.not.not.i359 = icmp sgt i64 %indvars.iv.next.i350, %i.xn
  br i1 %.not.not.not.i359, label %bb.cn, label %.thread.loopexit.i360, !llvm.loop !993

.thread.loopexit.i360:                            ; preds = %bb.cr
  %i.yf = icmp ne i64 %i.ya, %i.xu
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cm, %.thread.loopexit.i360
  %.4.i345.ph = phi i1 [ false, %bb.cm ], [ %i.yf, %.thread.loopexit.i360 ]
  %i.yg = and i32 %i.to, 1
  %.not104 = icmp eq i32 %i.yg, 0
  %or.cond = or i1 %.not104, %.4.i345.ph
  br i1 %or.cond, label %.thread543, label %.thread543.sink.split

.thread543.sink.split:                            ; preds = %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit46.i358, %bb.cs, %bb.cl, %bb.cj, %.thread842
  %.sink901 = phi i8 [ %i.wn, %bb.cj ], [ %i.wq, %.thread842 ], [ %i.wt, %bb.cs ], [ %i.wt, %bb.cl ], [ %i.wt, %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit46.i358 ]
  %indvars.iv.next681839848.ph = phi i64 [ %indvars.iv.next681, %bb.cj ], [ %indvars.iv.next681836, %.thread842 ], [ %indvars.iv.next681839849854, %bb.cs ], [ %indvars.iv.next681839849854, %bb.cl ], [ %indvars.iv.next681839849854, %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit46.i358 ]
  %or.cond.not841845.ph = phi i1 [ %i.wm, %bb.cj ], [ false, %.thread842 ], [ false, %bb.cs ], [ false, %bb.cl ], [ false, %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit46.i358 ]
  %i.yh = getelementptr i8, ptr %i.tk, i64 %indvars.iv680
  %i.yi = add i8 %.sink901, 49
  store i8 %i.yi, ptr %i.yh, align 1, !tbaa !202
  br label %.thread543

.thread543:                                       ; preds = %bb.cq, %.thread543.sink.split, %.thread851, %bb.ck, %bb.cs
  %indvars.iv.next681839848 = phi i64 [ %indvars.iv.next681839849854, %bb.cs ], [ %indvars.iv.next681839849854, %.thread851 ], [ %indvars.iv.next681839848.ph, %.thread543.sink.split ], [ %indvars.iv.next681, %bb.ck ], [ %indvars.iv.next681839849854, %bb.cq ] ; 3 uses
  %or.cond.not841845 = phi i1 [ false, %bb.cs ], [ false, %.thread851 ], [ %or.cond.not841845.ph, %.thread543.sink.split ], [ false, %bb.ck ], [ false, %bb.cq ]
  %i.yj = load i64, ptr %i.tl, align 8, !tbaa !271 ; 2 uses
  %.not829 = icmp ugt i64 %i.yj, %indvars.iv680
  br i1 %.not829, label %.split, label %bb.ct

bb.ct:                                            ; preds = %.thread543
  %i.yk = load ptr, ptr %i.tm, align 8, !tbaa !272
  invoke void %i.yk(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %indvars.iv.next681839848)
          to label %.noexc363 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !995

.noexc363:                                        ; preds = %bb.ct
  %.pre.i362 = load i64, ptr %i.tl, align 8, !tbaa !271
  br label %.split

.split:                                           ; preds = %.noexc363, %.thread543
  %i.yl = phi i64 [ %i.yj, %.thread543 ], [ %.pre.i362, %.noexc363 ]
  %i.ym = call noundef i64 @llvm.umin.i64(i64 %indvars.iv.next681839848, i64 %i.yl)
  store i64 %i.ym, ptr %i.tn, align 8, !tbaa !270
  %i.yn = load i32, ptr %4, align 4, !tbaa !88
  %9 = trunc nuw nsw i64 %indvars.iv680 to i32
  %i.yo = sub nsw i32 %i.yn, %9
  store i32 %i.yo, ptr %4, align 4, !tbaa !88
  br i1 %or.cond.not841845, label %.backedge.backedge, label %.loopexit566

bb.cu:                                            ; preds = %_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit343
  %i.yp = load i64, ptr %i.c, align 8, !tbaa !375 ; 7 uses
  %.not14.i.i364 = icmp eq i64 %i.yp, 0
  br i1 %.not14.i.i364, label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit377, label %.lr.ph.i.i365

.lr.ph.i.i365:                                    ; preds = %bb.cu
  %i.yq = load ptr, ptr %5, align 8, !tbaa !369   ; 4 uses
  %xtraiter1749 = and i64 %i.yp, 1
  %i.yr = icmp eq i64 %i.yp, 1
  br i1 %i.yr, label %.epil.preheader1748, label %.lr.ph.i.i365.new

.lr.ph.i.i365.new:                                ; preds = %.lr.ph.i.i365
  %unroll_iter1753 = and i64 %i.yp, -2
  br label %bb.cv

._crit_edge.i.i369.unr-lcssa:                     ; preds = %bb.cv
  %lcmp.mod1750.not = icmp eq i64 %xtraiter1749, 0
  br i1 %lcmp.mod1750.not, label %._crit_edge.i.i369, label %.epil.preheader1748

.epil.preheader1748:                              ; preds = %._crit_edge.i.i369.unr-lcssa, %.lr.ph.i.i365
  %.013.i.i366.epil.init = phi i64 [ 0, %.lr.ph.i.i365 ], [ %i.zp, %._crit_edge.i.i369.unr-lcssa ]
  %.01112.i.i367.epil.init = phi i64 [ 0, %.lr.ph.i.i365 ], [ %i.zo, %._crit_edge.i.i369.unr-lcssa ]
  %lcmp.mod1752 = trunc i64 %i.yp to i1
  call void @llvm.assume(i1 %lcmp.mod1752)
  %i.ys = getelementptr inbounds nuw [4 x i8], ptr %i.yq, i64 %.013.i.i366.epil.init ; 2 uses
  %i.yt = load i32, ptr %i.ys, align 4, !tbaa !88
  %i.yu = zext i32 %i.yt to i64
  %i.yv = mul nuw nsw i64 %i.yu, 10
  %i.yw = add nuw nsw i64 %i.yv, %.01112.i.i367.epil.init ; 2 uses
  %i.yx = trunc i64 %i.yw to i32
  store i32 %i.yx, ptr %i.ys, align 4, !tbaa !88
  %i.yy = lshr i64 %i.yw, 32
  br label %._crit_edge.i.i369

._crit_edge.i.i369:                               ; preds = %._crit_edge.i.i369.unr-lcssa, %.epil.preheader1748
  %.lcssa1677 = phi i64 [ %i.zo, %._crit_edge.i.i369.unr-lcssa ], [ %i.yy, %.epil.preheader1748 ] ; 2 uses
  %i.yz = trunc nuw nsw i64 %.lcssa1677 to i32
  %.not.i.i370 = icmp eq i64 %.lcssa1677, 0
  br i1 %.not.i.i370, label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit377, label %bb.cw

bb.cv:                                            ; preds = %bb.cv, %.lr.ph.i.i365.new
  %.013.i.i366 = phi i64 [ 0, %.lr.ph.i.i365.new ], [ %i.zp, %bb.cv ] ; 3 uses
  %.01112.i.i367 = phi i64 [ 0, %.lr.ph.i.i365.new ], [ %i.zo, %bb.cv ]
  %niter1754 = phi i64 [ 0, %.lr.ph.i.i365.new ], [ %niter1754.next.1, %bb.cv ]
  %i.za = getelementptr inbounds nuw [4 x i8], ptr %i.yq, i64 %.013.i.i366 ; 2 uses
  %i.zb = load i32, ptr %i.za, align 4, !tbaa !88
  %i.zc = zext i32 %i.zb to i64
  %i.zd = mul nuw nsw i64 %i.zc, 10
  %i.ze = add nuw nsw i64 %i.zd, %.01112.i.i367   ; 2 uses
  %i.zf = trunc i64 %i.ze to i32
  store i32 %i.zf, ptr %i.za, align 4, !tbaa !88
  %i.zg = lshr i64 %i.ze, 32
  %i.zh = getelementptr inbounds nuw [4 x i8], ptr %i.yq, i64 %.013.i.i366
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zh, i64 4 ; 2 uses
  %i.zj = load i32, ptr %i.zi, align 4, !tbaa !88
  %i.zk = zext i32 %i.zj to i64
  %i.zl = mul nuw nsw i64 %i.zk, 10
  %i.zm = add nuw nsw i64 %i.zl, %i.zg            ; 2 uses
  %i.zn = trunc i64 %i.zm to i32
  store i32 %i.zn, ptr %i.zi, align 4, !tbaa !88
  %i.zo = lshr i64 %i.zm, 32                      ; 3 uses
  %i.zp = add nuw i64 %.013.i.i366, 2             ; 2 uses
  %niter1754.next.1 = add nuw i64 %niter1754, 2   ; 2 uses
  %niter1754.ncmp.1 = icmp eq i64 %niter1754.next.1, %unroll_iter1753
  br i1 %niter1754.ncmp.1, label %._crit_edge.i.i369.unr-lcssa, label %bb.cv, !llvm.loop !29

bb.cw:                                            ; preds = %._crit_edge.i.i369
  %i.zq = add i64 %i.yp, 1                        ; 3 uses
  %i.zr = load i64, ptr %i.a, align 8, !tbaa !370
  %i.zs = icmp ugt i64 %i.zq, %i.zr
  br i1 %i.zs, label %bb.cx, label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i371

bb.cx:                                            ; preds = %bb.cw
  %i.zt = load ptr, ptr %i.b, align 8, !tbaa !368
  invoke void %i.zt(ptr noundef nonnull align 8 dereferenceable(172) %5, i64 noundef %i.zq)
          to label %.noexc376 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !994

.noexc376:                                        ; preds = %bb.cx
  %.pre.i.i.i373 = load i64, ptr %i.c, align 8, !tbaa !375 ; 2 uses
  %.pre2.i.i.i374 = add i64 %.pre.i.i.i373, 1
  %.pre.i375 = load ptr, ptr %5, align 8, !tbaa !369
  br label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i371

_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i371: ; preds = %.noexc376, %bb.cw
  %i.zu = phi ptr [ %i.yq, %bb.cw ], [ %.pre.i375, %.noexc376 ]
  %.pre-phi.i.i.i372 = phi i64 [ %i.zq, %bb.cw ], [ %.pre2.i.i.i374, %.noexc376 ]
  %i.zv = phi i64 [ %i.yp, %bb.cw ], [ %.pre.i.i.i373, %.noexc376 ]
  store i64 %.pre-phi.i.i.i372, ptr %i.c, align 8, !tbaa !375
  %i.zw = getelementptr inbounds nuw [4 x i8], ptr %i.zu, i64 %i.zv
  store i32 %i.yz, ptr %i.zw, align 4, !tbaa !88
  br label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit377

_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit377:    ; preds = %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i371, %._crit_edge.i.i369, %bb.cu
  %i.zx = load i64, ptr %i.m, align 8, !tbaa !375 ; 7 uses
  %.not14.i.i378 = icmp eq i64 %i.zx, 0
  br i1 %.not14.i.i378, label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit391, label %.lr.ph.i.i379

.lr.ph.i.i379:                                    ; preds = %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit377
  %i.zy = load ptr, ptr %7, align 8, !tbaa !369   ; 4 uses
  %xtraiter1756 = and i64 %i.zx, 1
  %i.zz = icmp eq i64 %i.zx, 1
  br i1 %i.zz, label %.epil.preheader1755, label %.lr.ph.i.i379.new

.lr.ph.i.i379.new:                                ; preds = %.lr.ph.i.i379
  %unroll_iter1760 = and i64 %i.zx, -2
  br label %bb.cy

._crit_edge.i.i383.unr-lcssa:                     ; preds = %bb.cy
  %lcmp.mod1757.not = icmp eq i64 %xtraiter1756, 0
  br i1 %lcmp.mod1757.not, label %._crit_edge.i.i383, label %.epil.preheader1755

.epil.preheader1755:                              ; preds = %._crit_edge.i.i383.unr-lcssa, %.lr.ph.i.i379
  %.013.i.i380.epil.init = phi i64 [ 0, %.lr.ph.i.i379 ], [ %i.aax, %._crit_edge.i.i383.unr-lcssa ]
  %.01112.i.i381.epil.init = phi i64 [ 0, %.lr.ph.i.i379 ], [ %i.aaw, %._crit_edge.i.i383.unr-lcssa ]
  %lcmp.mod1759 = trunc i64 %i.zx to i1
  call void @llvm.assume(i1 %lcmp.mod1759)
  %i.aaa = getelementptr inbounds nuw [4 x i8], ptr %i.zy, i64 %.013.i.i380.epil.init ; 2 uses
  %i.aab = load i32, ptr %i.aaa, align 4, !tbaa !88
  %i.aac = zext i32 %i.aab to i64
  %i.aad = mul nuw nsw i64 %i.aac, 10
  %i.aae = add nuw nsw i64 %i.aad, %.01112.i.i381.epil.init ; 2 uses
  %i.aaf = trunc i64 %i.aae to i32
  store i32 %i.aaf, ptr %i.aaa, align 4, !tbaa !88
  %i.aag = lshr i64 %i.aae, 32
  br label %._crit_edge.i.i383

._crit_edge.i.i383:                               ; preds = %._crit_edge.i.i383.unr-lcssa, %.epil.preheader1755
  %.lcssa1678.a = phi i64 [ %i.aaw, %._crit_edge.i.i383.unr-lcssa ], [ %i.aag, %.epil.preheader1755 ] ; 2 uses
  %i.aah = trunc nuw nsw i64 %.lcssa1678.a to i32
  %.not.i.i384 = icmp eq i64 %.lcssa1678.a, 0
  br i1 %.not.i.i384, label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit391, label %bb.cz

bb.cy:                                            ; preds = %bb.cy, %.lr.ph.i.i379.new
  %.013.i.i380 = phi i64 [ 0, %.lr.ph.i.i379.new ], [ %i.aax, %bb.cy ] ; 3 uses
  %.01112.i.i381 = phi i64 [ 0, %.lr.ph.i.i379.new ], [ %i.aaw, %bb.cy ]
  %niter1761 = phi i64 [ 0, %.lr.ph.i.i379.new ], [ %niter1761.next.1, %bb.cy ]
  %i.aai = getelementptr inbounds nuw [4 x i8], ptr %i.zy, i64 %.013.i.i380 ; 2 uses
  %i.aaj = load i32, ptr %i.aai, align 4, !tbaa !88
  %i.aak = zext i32 %i.aaj to i64
  %i.aal = mul nuw nsw i64 %i.aak, 10
  %i.aam = add nuw nsw i64 %i.aal, %.01112.i.i381 ; 2 uses
  %i.aan = trunc i64 %i.aam to i32
  store i32 %i.aan, ptr %i.aai, align 4, !tbaa !88
  %i.aao = lshr i64 %i.aam, 32
  %i.aap = getelementptr inbounds nuw [4 x i8], ptr %i.zy, i64 %.013.i.i380
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aap, i64 4 ; 2 uses
  %i.aar = load i32, ptr %i.aaq, align 4, !tbaa !88
  %i.aas = zext i32 %i.aar to i64
  %i.aat = mul nuw nsw i64 %i.aas, 10
  %i.aau = add nuw nsw i64 %i.aat, %i.aao         ; 2 uses
  %i.aav = trunc i64 %i.aau to i32
  store i32 %i.aav, ptr %i.aaq, align 4, !tbaa !88
  %i.aaw = lshr i64 %i.aau, 32                    ; 3 uses
  %i.aax = add nuw i64 %.013.i.i380, 2            ; 2 uses
  %niter1761.next.1 = add nuw i64 %niter1761, 2   ; 2 uses
  %niter1761.ncmp.1 = icmp eq i64 %niter1761.next.1, %unroll_iter1760
  br i1 %niter1761.ncmp.1, label %._crit_edge.i.i383.unr-lcssa, label %bb.cy, !llvm.loop !29

bb.cz:                                            ; preds = %._crit_edge.i.i383
  %i.aay = add i64 %i.zx, 1                       ; 3 uses
  %i.aaz = load i64, ptr %i.k, align 8, !tbaa !370
  %i.aba = icmp ugt i64 %i.aay, %i.aaz
  br i1 %i.aba, label %bb.da, label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i385

bb.da:                                            ; preds = %bb.cz
  %i.abb = load ptr, ptr %i.l, align 8, !tbaa !368
  invoke void %i.abb(ptr noundef nonnull align 8 dereferenceable(172) %7, i64 noundef %i.aay)
          to label %.noexc390 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !994

.noexc390:                                        ; preds = %bb.da
  %.pre.i.i.i387 = load i64, ptr %i.m, align 8, !tbaa !375 ; 2 uses
  %.pre2.i.i.i388 = add i64 %.pre.i.i.i387, 1
  %.pre.i389 = load ptr, ptr %7, align 8, !tbaa !369
  br label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i385

_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i385: ; preds = %.noexc390, %bb.cz
  %i.abc = phi ptr [ %i.zy, %bb.cz ], [ %.pre.i389, %.noexc390 ]
  %.pre-phi.i.i.i386 = phi i64 [ %i.aay, %bb.cz ], [ %.pre2.i.i.i388, %.noexc390 ]
  %i.abd = phi i64 [ %i.zx, %bb.cz ], [ %.pre.i.i.i387, %.noexc390 ]
  store i64 %.pre-phi.i.i.i386, ptr %i.m, align 8, !tbaa !375
  %i.abe = getelementptr inbounds nuw [4 x i8], ptr %i.abc, i64 %i.abd
  store i32 %i.aah, ptr %i.abe, align 4, !tbaa !88
  br label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit391

_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit391:    ; preds = %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i385, %._crit_edge.i.i383, %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit377
  br i1 %.not97, label %.backedge.backedge, label %bb.db

.backedge.backedge:                               ; preds = %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit391, %bb.db, %._crit_edge.i.i397, %.split, %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i399
  %indvars.iv680.be = phi i64 [ %indvars.iv.next681839848, %.split ], [ %indvars.iv.next681, %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i399 ], [ %indvars.iv.next681, %._crit_edge.i.i397 ], [ %indvars.iv.next681, %bb.db ], [ %indvars.iv.next681, %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit391 ]
  br label %.backedge

bb.db:                                            ; preds = %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit391
  %i.abf = load i64, ptr %.2.sroa.gep509, align 8, !tbaa !375 ; 7 uses
  %.not14.i.i392 = icmp eq i64 %i.abf, 0
  br i1 %.not14.i.i392, label %.backedge.backedge, label %.lr.ph.i.i393

.lr.ph.i.i393:                                    ; preds = %bb.db
  %i.abg = load ptr, ptr %.2, align 8, !tbaa !369 ; 4 uses
  %xtraiter1763 = and i64 %i.abf, 1
  %i.abh = icmp eq i64 %i.abf, 1
  br i1 %i.abh, label %.epil.preheader1762, label %.lr.ph.i.i393.new

.lr.ph.i.i393.new:                                ; preds = %.lr.ph.i.i393
  %unroll_iter1767 = and i64 %i.abf, -2
  br label %bb.dc

._crit_edge.i.i397.unr-lcssa:                     ; preds = %bb.dc
  %lcmp.mod1764.not = icmp eq i64 %xtraiter1763, 0
  br i1 %lcmp.mod1764.not, label %._crit_edge.i.i397, label %.epil.preheader1762

.epil.preheader1762:                              ; preds = %._crit_edge.i.i397.unr-lcssa, %.lr.ph.i.i393
  %.013.i.i394.epil.init = phi i64 [ 0, %.lr.ph.i.i393 ], [ %i.acf, %._crit_edge.i.i397.unr-lcssa ]
  %.01112.i.i395.epil.init = phi i64 [ 0, %.lr.ph.i.i393 ], [ %i.ace, %._crit_edge.i.i397.unr-lcssa ]
  %lcmp.mod1766 = trunc i64 %i.abf to i1
  call void @llvm.assume(i1 %lcmp.mod1766)
  %i.abi = getelementptr inbounds nuw [4 x i8], ptr %i.abg, i64 %.013.i.i394.epil.init ; 2 uses
  %i.abj = load i32, ptr %i.abi, align 4, !tbaa !88
  %i.abk = zext i32 %i.abj to i64
  %i.abl = mul nuw nsw i64 %i.abk, 10
  %i.abm = add nuw nsw i64 %i.abl, %.01112.i.i395.epil.init ; 2 uses
  %i.abn = trunc i64 %i.abm to i32
  store i32 %i.abn, ptr %i.abi, align 4, !tbaa !88
  %i.abo = lshr i64 %i.abm, 32
  br label %._crit_edge.i.i397

._crit_edge.i.i397:                               ; preds = %._crit_edge.i.i397.unr-lcssa, %.epil.preheader1762
  %.lcssa1679 = phi i64 [ %i.ace, %._crit_edge.i.i397.unr-lcssa ], [ %i.abo, %.epil.preheader1762 ] ; 2 uses
  %i.abp = trunc nuw nsw i64 %.lcssa1679 to i32
  %.not.i.i398 = icmp eq i64 %.lcssa1679, 0
  br i1 %.not.i.i398, label %.backedge.backedge, label %bb.dd

bb.dc:                                            ; preds = %bb.dc, %.lr.ph.i.i393.new
  %.013.i.i394 = phi i64 [ 0, %.lr.ph.i.i393.new ], [ %i.acf, %bb.dc ] ; 3 uses
  %.01112.i.i395 = phi i64 [ 0, %.lr.ph.i.i393.new ], [ %i.ace, %bb.dc ]
  %niter1768 = phi i64 [ 0, %.lr.ph.i.i393.new ], [ %niter1768.next.1, %bb.dc ]
  %i.abq = getelementptr inbounds nuw [4 x i8], ptr %i.abg, i64 %.013.i.i394 ; 2 uses
  %i.abr = load i32, ptr %i.abq, align 4, !tbaa !88
  %i.abs = zext i32 %i.abr to i64
  %i.abt = mul nuw nsw i64 %i.abs, 10
  %i.abu = add nuw nsw i64 %i.abt, %.01112.i.i395 ; 2 uses
  %i.abv = trunc i64 %i.abu to i32
  store i32 %i.abv, ptr %i.abq, align 4, !tbaa !88
  %i.abw = lshr i64 %i.abu, 32
  %i.abx = getelementptr inbounds nuw [4 x i8], ptr %i.abg, i64 %.013.i.i394
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abx, i64 4 ; 2 uses
  %i.abz = load i32, ptr %i.aby, align 4, !tbaa !88
  %i.aca = zext i32 %i.abz to i64
  %i.acb = mul nuw nsw i64 %i.aca, 10
  %i.acc = add nuw nsw i64 %i.acb, %i.abw         ; 2 uses
  %i.acd = trunc i64 %i.acc to i32
  store i32 %i.acd, ptr %i.aby, align 4, !tbaa !88
  %i.ace = lshr i64 %i.acc, 32                    ; 3 uses
  %i.acf = add nuw i64 %.013.i.i394, 2            ; 2 uses
  %niter1768.next.1 = add nuw i64 %niter1768, 2   ; 2 uses
  %niter1768.ncmp.1 = icmp eq i64 %niter1768.next.1, %unroll_iter1767
  br i1 %niter1768.ncmp.1, label %._crit_edge.i.i397.unr-lcssa, label %bb.dc, !llvm.loop !29

bb.dd:                                            ; preds = %._crit_edge.i.i397
  %i.acg = add i64 %i.abf, 1                      ; 3 uses
  %i.ach = load i64, ptr %.2.sroa.gep518, align 8, !tbaa !370
  %i.aci = icmp ugt i64 %i.acg, %i.ach
  br i1 %i.aci, label %bb.de, label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i399

bb.de:                                            ; preds = %bb.dd
  %i.acj = load ptr, ptr %.2.sroa.gep521, align 8, !tbaa !368
  invoke void %i.acj(ptr noundef nonnull align 8 dereferenceable(172) %.2, i64 noundef %i.acg)
          to label %.noexc404 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !994

.noexc404:                                        ; preds = %bb.de
  %.pre.i.i.i401 = load i64, ptr %.2.sroa.gep509, align 8, !tbaa !375 ; 2 uses
  %.pre2.i.i.i402 = add i64 %.pre.i.i.i401, 1
  %.pre.i403 = load ptr, ptr %.2, align 8, !tbaa !369
  br label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i399

_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i399: ; preds = %.noexc404, %bb.dd
  %i.ack = phi ptr [ %i.abg, %bb.dd ], [ %.pre.i403, %.noexc404 ]
  %.pre-phi.i.i.i400 = phi i64 [ %i.acg, %bb.dd ], [ %.pre2.i.i.i402, %.noexc404 ]
  %i.acl = phi i64 [ %i.abf, %bb.dd ], [ %.pre.i.i.i401, %.noexc404 ]
  store i64 %.pre-phi.i.i.i400, ptr %.2.sroa.gep509, align 8, !tbaa !375
  %i.acm = getelementptr inbounds nuw [4 x i8], ptr %i.ack, i64 %i.acl
  store i32 %i.abp, ptr %i.acm, align 4, !tbaa !88
  br label %.backedge.backedge

bb.df:                                            ; preds = %bb.bu
  %i.acn = add i32 %.0538, -1                     ; 4 uses
  %i.aco = load i32, ptr %4, align 4, !tbaa !88
  %i.acp = sub nsw i32 %i.aco, %i.acn
  store i32 %i.acp, ptr %4, align 4, !tbaa !88
  %i.acq = icmp slt i32 %.0538, 1
  br i1 %i.acq, label %bb.dg, label %bb.dt

bb.dg:                                            ; preds = %bb.df
  %i.acr = icmp eq i32 %.0538, 0
  br i1 %i.acr, label %bb.dh, label %_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit437

bb.dh:                                            ; preds = %bb.dg
  %i.acs = load i64, ptr %i.h, align 8, !tbaa !375 ; 8 uses
  %.not14.i.i406 = icmp eq i64 %i.acs, 0
  br i1 %.not14.i.i406, label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit419, label %.lr.ph.i.i407

.lr.ph.i.i407:                                    ; preds = %bb.dh
  %i.act = load ptr, ptr %6, align 8, !tbaa !369  ; 4 uses
  %xtraiter1742 = and i64 %i.acs, 1
  %i.acu = icmp eq i64 %i.acs, 1
  br i1 %i.acu, label %.epil.preheader1741, label %.lr.ph.i.i407.new

.lr.ph.i.i407.new:                                ; preds = %.lr.ph.i.i407
  %unroll_iter1746 = and i64 %i.acs, -2
  br label %bb.di

._crit_edge.i.i411.unr-lcssa:                     ; preds = %bb.di
  %lcmp.mod1743.not = icmp eq i64 %xtraiter1742, 0
  br i1 %lcmp.mod1743.not, label %._crit_edge.i.i411, label %.epil.preheader1741

.epil.preheader1741:                              ; preds = %._crit_edge.i.i411.unr-lcssa, %.lr.ph.i.i407
  %.013.i.i408.epil.init = phi i64 [ 0, %.lr.ph.i.i407 ], [ %i.ads, %._crit_edge.i.i411.unr-lcssa ]
  %.01112.i.i409.epil.init = phi i64 [ 0, %.lr.ph.i.i407 ], [ %i.adr, %._crit_edge.i.i411.unr-lcssa ]
  %lcmp.mod1745 = trunc i64 %i.acs to i1
  call void @llvm.assume(i1 %lcmp.mod1745)
  %i.acv = getelementptr inbounds nuw [4 x i8], ptr %i.act, i64 %.013.i.i408.epil.init ; 2 uses
  %i.acw = load i32, ptr %i.acv, align 4, !tbaa !88
  %i.acx = zext i32 %i.acw to i64
  %i.acy = mul nuw nsw i64 %i.acx, 10
  %i.acz = add nuw nsw i64 %i.acy, %.01112.i.i409.epil.init ; 2 uses
  %i.ada = trunc i64 %i.acz to i32
  store i32 %i.ada, ptr %i.acv, align 4, !tbaa !88
  %i.adb = lshr i64 %i.acz, 32
  br label %._crit_edge.i.i411

._crit_edge.i.i411:                               ; preds = %._crit_edge.i.i411.unr-lcssa, %.epil.preheader1741
  %.lcssa1680 = phi i64 [ %i.adr, %._crit_edge.i.i411.unr-lcssa ], [ %i.adb, %.epil.preheader1741 ] ; 2 uses
  %i.adc = trunc nuw nsw i64 %.lcssa1680 to i32
  %.not.i.i412 = icmp eq i64 %.lcssa1680, 0
  br i1 %.not.i.i412, label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit419, label %bb.dj

bb.di:                                            ; preds = %bb.di, %.lr.ph.i.i407.new
  %.013.i.i408 = phi i64 [ 0, %.lr.ph.i.i407.new ], [ %i.ads, %bb.di ] ; 3 uses
  %.01112.i.i409 = phi i64 [ 0, %.lr.ph.i.i407.new ], [ %i.adr, %bb.di ]
  %niter1747 = phi i64 [ 0, %.lr.ph.i.i407.new ], [ %niter1747.next.1, %bb.di ]
  %i.add = getelementptr inbounds nuw [4 x i8], ptr %i.act, i64 %.013.i.i408 ; 2 uses
  %i.ade = load i32, ptr %i.add, align 4, !tbaa !88
  %i.adf = zext i32 %i.ade to i64
  %i.adg = mul nuw nsw i64 %i.adf, 10
  %i.adh = add nuw nsw i64 %i.adg, %.01112.i.i409 ; 2 uses
  %i.adi = trunc i64 %i.adh to i32
  store i32 %i.adi, ptr %i.add, align 4, !tbaa !88
  %i.adj = lshr i64 %i.adh, 32
  %i.adk = getelementptr inbounds nuw [4 x i8], ptr %i.act, i64 %.013.i.i408
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adk, i64 4 ; 2 uses
  %i.adm = load i32, ptr %i.adl, align 4, !tbaa !88
  %i.adn = zext i32 %i.adm to i64
  %i.ado = mul nuw nsw i64 %i.adn, 10
  %i.adp = add nuw nsw i64 %i.ado, %i.adj         ; 2 uses
  %i.adq = trunc i64 %i.adp to i32
  store i32 %i.adq, ptr %i.adl, align 4, !tbaa !88
  %i.adr = lshr i64 %i.adp, 32                    ; 3 uses
  %i.ads = add nuw i64 %.013.i.i408, 2            ; 2 uses
  %niter1747.next.1 = add nuw i64 %niter1747, 2   ; 2 uses
  %niter1747.ncmp.1 = icmp eq i64 %niter1747.next.1, %unroll_iter1746
  br i1 %niter1747.ncmp.1, label %._crit_edge.i.i411.unr-lcssa, label %bb.di, !llvm.loop !29

bb.dj:                                            ; preds = %._crit_edge.i.i411
  %i.adt = add i64 %i.acs, 1                      ; 3 uses
  %i.adu = load i64, ptr %i.f, align 8, !tbaa !370
  %i.adv = icmp ugt i64 %i.adt, %i.adu
  br i1 %i.adv, label %bb.dk, label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i413

bb.dk:                                            ; preds = %bb.dj
  %i.adw = load ptr, ptr %i.g, align 8, !tbaa !368
  invoke void %i.adw(ptr noundef nonnull align 8 dereferenceable(172) %6, i64 noundef %i.adt)
          to label %.noexc418 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !994

.noexc418:                                        ; preds = %bb.dk
  %.pre.i.i.i415 = load i64, ptr %i.h, align 8, !tbaa !375 ; 2 uses
  %.pre2.i.i.i416 = add i64 %.pre.i.i.i415, 1
  %.pre.i417 = load ptr, ptr %6, align 8, !tbaa !369
  br label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i413

_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i413: ; preds = %.noexc418, %bb.dj
  %i.adx = phi ptr [ %i.act, %bb.dj ], [ %.pre.i417, %.noexc418 ]
  %.pre-phi.i.i.i414 = phi i64 [ %i.adt, %bb.dj ], [ %.pre2.i.i.i416, %.noexc418 ] ; 2 uses
  %i.ady = phi i64 [ %i.acs, %bb.dj ], [ %.pre.i.i.i415, %.noexc418 ]
  store i64 %.pre-phi.i.i.i414, ptr %i.h, align 8, !tbaa !375
  %i.adz = getelementptr inbounds nuw [4 x i8], ptr %i.adx, i64 %i.ady
  store i32 %i.adc, ptr %i.adz, align 4, !tbaa !88
  br label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit419

_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit419:    ; preds = %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i413, %._crit_edge.i.i411, %bb.dh
  %i.aea = phi i64 [ %.pre-phi.i.i.i414, %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i413 ], [ %i.acs, %._crit_edge.i.i411 ], [ 0, %bb.dh ] ; 2 uses
end_hunk_0
