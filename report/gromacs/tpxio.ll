Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/tpxio?download=true
inline.NumInlined: 3406
inline.NumDeleted: 1819
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZL11do_inputrecPN3gmx11ISerializerEP10t_inputreci:bb.a
  %i.bmz = load ptr, ptr %i.bmy, align 8
  invoke void %i.bmz(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.bo)
          to label %bb.ky unwind label %bb.lf

bb.ky:                                            ; preds = %bb.kx
  %i.bna = load ptr, ptr %0, align 8, !tbaa !33
  %i.bnb = getelementptr inbounds nuw i8, ptr %i.bna, i64 128
  %i.bnc = load ptr, ptr %i.bnb, align 8
  invoke void %i.bnc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %24)
          to label %bb.kz unwind label %bb.lf

bb.kz:                                            ; preds = %bb.ky
  %i.bnd = load ptr, ptr %0, align 8, !tbaa !33
  %i.bne = getelementptr inbounds nuw i8, ptr %i.bnd, i64 56
  %i.bnf = load ptr, ptr %i.bne, align 8
  invoke void %i.bnf(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.bp)
          to label %bb.la unwind label %bb.lf

bb.la:                                            ; preds = %bb.kz
  %i.bng = load ptr, ptr %0, align 8, !tbaa !33
  %i.bnh = getelementptr inbounds nuw i8, ptr %i.bng, i64 96
  %i.bni = load ptr, ptr %i.bnh, align 8
  invoke void %i.bni(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.br)
          to label %bb.lb unwind label %bb.lf

bb.lb:                                            ; preds = %bb.la
  %i.bnj = load ptr, ptr %0, align 8, !tbaa !33
  %i.bnk = getelementptr inbounds nuw i8, ptr %i.bnj, i64 56
  %i.bnl = load ptr, ptr %i.bnk, align 8
  invoke void %i.bnl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.bq)
          to label %bb.lc unwind label %bb.lf

bb.lc:                                            ; preds = %bb.lb
  %i.bnm = load ptr, ptr %0, align 8, !tbaa !33
  %i.bnn = getelementptr inbounds nuw i8, ptr %i.bnm, i64 56
  %i.bno = load ptr, ptr %i.bnn, align 8
  invoke void %i.bno(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.bo)
          to label %bb.ld unwind label %bb.lf

bb.ld:                                            ; preds = %bb.lc
  %i.bnp = load i32, ptr %i.bp, align 4, !tbaa !27 ; 2 uses
  %i.bnq = icmp sgt i32 %i.bnp, 0
  br i1 %i.bnq, label %bb.le, label %bb.lh

bb.le:                                            ; preds = %bb.ld
  %i.bnr = zext nneg i32 %i.bnp to i64            ; 2 uses
  %i.bns = shl nuw nsw i64 %i.bnr, 2              ; 3 uses
  %i.bnt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bns) #31
          to label %.noexc546 unwind label %bb.lg ; 6 uses

.noexc546:                                        ; preds = %bb.le
  store i32 0, ptr %i.bnt, align 4, !tbaa !27
  %i.bnu = getelementptr i8, ptr %i.bnt, i64 4    ; 3 uses
  %i.bnv = add nsw i64 %i.bnr, -1                 ; 2 uses
  %i.bnw = icmp eq i64 %i.bnv, 0
  br i1 %i.bnw, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc546
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.bnv, 2 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.bnu, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !27
  %i.bnx = getelementptr inbounds nuw i8, ptr %i.bnu, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc546
  %.0.i.i.i.i.i = phi ptr [ %i.bnx, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.bnu, %.noexc546 ]
  %i.bny = ptrtoint ptr %.0.i.i.i.i.i to i64
  %i.bnz = ptrtoint ptr %i.bnt to i64
  %i.boa = sub i64 %i.bny, %i.bnz
  %i.bob = lshr exact i64 %i.boa, 2               ; 2 uses
  %i.boc = trunc i64 %i.bob to i32
  %i.bod = icmp sgt i32 %i.boc, 0
  br i1 %i.bod, label %.lr.ph.preheader.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit

.lr.ph.preheader.i:                               ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %wide.trip.count.i = and i64 %i.bob, 2147483647
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc549, %.lr.ph.preheader.i
  %indvars.iv.i547 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i548, %.noexc549 ] ; 2 uses
  %i.boe = getelementptr inbounds nuw [4 x i8], ptr %i.bnt, i64 %indvars.iv.i547
  %i.bof = load ptr, ptr %0, align 8, !tbaa !33
  %i.bog = getelementptr inbounds nuw i8, ptr %i.bof, i64 56
  %i.boh = load ptr, ptr %i.bog, align 8
  invoke void %i.boh(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.boe)
          to label %.noexc549 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit552, !inline_history !2

.noexc549:                                        ; preds = %.lr.ph.i
  %indvars.iv.next.i548 = add nuw nsw i64 %indvars.iv.i547, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i548, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %.lr.ph.i, !llvm.loop !3

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %.noexc549, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.bnt, i64 noundef %i.bns) #25
  br label %bb.lh

bb.lf:                                            ; preds = %bb.lc, %bb.lb, %bb.la, %bb.kz, %bb.ky, %bb.kx, %bb.kw, %bb.kv, %bb.ku, %bb.kt, %bb.ks
  %i.boi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ll

bb.lg:                                            ; preds = %bb.le
  %i.boj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ll

_ZNSt6vectorIiSaIiEED2Ev.exit552:                 ; preds = %.lr.ph.i
  %i.bok = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bnt, i64 noundef %i.bns) #25
  br label %bb.ll

bb.lh:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.ld
  %i.bol = load i32, ptr %i.bq, align 4, !tbaa !27 ; 2 uses
  %i.bom = icmp sgt i32 %i.bol, 0
  br i1 %i.bom, label %bb.li, label %bb.lk

bb.li:                                            ; preds = %bb.lh
  %i.bon = zext nneg i32 %i.bol to i64            ; 2 uses
  %i.boo = shl nuw nsw i64 %i.bon, 2              ; 3 uses
  %i.bop = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.boo) #31
          to label %.noexc560 unwind label %bb.lj ; 6 uses

.noexc560:                                        ; preds = %bb.li
  store i32 0, ptr %i.bop, align 4, !tbaa !27
  %i.boq = getelementptr i8, ptr %i.bop, i64 4    ; 3 uses
  %i.bor = add nsw i64 %i.bon, -1                 ; 2 uses
  %i.bos = icmp eq i64 %i.bor, 0
  br i1 %i.bos, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit561, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i555

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i555: ; preds = %.noexc560
  %.idx.i.i.i.i.i.i.i556 = shl nuw nsw i64 %i.bor, 2 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.boq, i8 0, i64 %.idx.i.i.i.i.i.i.i556, i1 false), !tbaa !27
  %i.bot = getelementptr inbounds nuw i8, ptr %i.boq, i64 %.idx.i.i.i.i.i.i.i556
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit561

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit561:            ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i555, %.noexc560
  %.0.i.i.i.i.i557 = phi ptr [ %i.bot, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i555 ], [ %i.boq, %.noexc560 ]
  %i.bou = ptrtoint ptr %.0.i.i.i.i.i557 to i64
  %i.bov = ptrtoint ptr %i.bop to i64
  %i.bow = sub i64 %i.bou, %i.bov
  %i.box = lshr exact i64 %i.bow, 2               ; 2 uses
  %i.boy = trunc i64 %i.box to i32
  %i.boz = icmp sgt i32 %i.boy, 0
  br i1 %i.boz, label %.lr.ph.preheader.i562, label %_ZNSt6vectorIiSaIiEED2Ev.exit571

.lr.ph.preheader.i562:                            ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit561
  %wide.trip.count.i563 = and i64 %i.box, 2147483647
  br label %.lr.ph.i564

.lr.ph.i564:                                      ; preds = %.noexc568, %.lr.ph.preheader.i562
  %indvars.iv.i565 = phi i64 [ 0, %.lr.ph.preheader.i562 ], [ %indvars.iv.next.i566, %.noexc568 ] ; 2 uses
  %i.bpa = getelementptr inbounds nuw [4 x i8], ptr %i.bop, i64 %indvars.iv.i565
  %i.bpb = load ptr, ptr %0, align 8, !tbaa !33
  %i.bpc = getelementptr inbounds nuw i8, ptr %i.bpb, i64 56
  %i.bpd = load ptr, ptr %i.bpc, align 8
  invoke void %i.bpd(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.bpa)
          to label %.noexc568 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit573, !inline_history !2

.noexc568:                                        ; preds = %.lr.ph.i564
  %indvars.iv.next.i566 = add nuw nsw i64 %indvars.iv.i565, 1 ; 2 uses
  %exitcond.not.i567 = icmp eq i64 %indvars.iv.next.i566, %wide.trip.count.i563
  br i1 %exitcond.not.i567, label %_ZNSt6vectorIiSaIiEED2Ev.exit571, label %.lr.ph.i564, !llvm.loop !3

_ZNSt6vectorIiSaIiEED2Ev.exit571:                 ; preds = %.noexc568, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit561
  call void @_ZdlPvm(ptr noundef nonnull %i.bop, i64 noundef %i.boo) #25
  br label %bb.lk

bb.lj:                                            ; preds = %bb.li
  %i.bpe = landingpad { ptr, i32 }
          cleanup
  br label %bb.ll

_ZNSt6vectorIiSaIiEED2Ev.exit573:                 ; preds = %.lr.ph.i564
  %i.bpf = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bop, i64 noundef %i.boo) #25
  br label %bb.ll

bb.lk:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit571, %bb.lh
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo) #26
  br label %bb.ln

bb.ll:                                            ; preds = %bb.lj, %_ZNSt6vectorIiSaIiEED2Ev.exit573, %bb.lg, %_ZNSt6vectorIiSaIiEED2Ev.exit552, %bb.lf
  %.pn389.pn = phi { ptr, i32 } [ %i.boj, %bb.lg ], [ %i.boi, %bb.lf ], [ %i.bok, %_ZNSt6vectorIiSaIiEED2Ev.exit552 ], [ %i.bpf, %_ZNSt6vectorIiSaIiEED2Ev.exit573 ], [ %i.bpe, %bb.lj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo) #26
  br label %.body

bb.lm:                                            ; preds = %bb.kp
  store i8 0, ptr %i.bmc, align 1, !tbaa !739
  br label %bb.ln

bb.ln:                                            ; preds = %bb.kr, %bb.lk, %bb.lm
  %i.bpg = icmp sgt i32 %2, 100
  br i1 %i.bpg, label %bb.lo, label %bb.lp

bb.lo:                                            ; preds = %bb.ln
  %i.bph = getelementptr inbounds nuw i8, ptr %1, i64 592 ; 2 uses
  %i.bpi = load ptr, ptr %0, align 8, !tbaa !33
  %i.bpj = getelementptr inbounds nuw i8, ptr %i.bpi, i64 24
  %i.bpk = load ptr, ptr %i.bpj, align 8
  invoke void %i.bpk(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.bph)
          to label %._crit_edge1944 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge1944:                                  ; preds = %bb.lo
  %.pre1945 = load i8, ptr %i.bph, align 8, !tbaa !740, !range !40
  %i.bpl = trunc nuw i8 %.pre1945 to i1
  br i1 %i.bpl, label %.split2302, label %bb.of

.loopexit1441:                                    ; preds = %.lr.ph.i26.i.i
  %lpad.loopexit1443 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp1442.loopexit:                  ; preds = %.lr.ph.i.i.i
  %lpad.loopexit1446 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp1442.loopexit.split-lp.loopexit: ; preds = %.lr.ph128.i, %bb.my, %_ZN3gmx11ISerializer10doIntArrayEPii.exit.i.i, %bb.nb, %_ZL20do_pullgrp_tpx_pre95PN3gmx11ISerializerEP12t_pull_groupP12t_pull_coord.exit.i, %.noexc615, %.noexc616, %.noexc617, %.noexc618, %.noexc619
  %lpad.loopexit1449 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph.i.i110.i
  %lpad.loopexit1452 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph.i72.i.i
  %lpad.loopexit1455 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.noexc645.invoke, %.noexc653, %.noexc652, %.noexc651, %.noexc650, %_ZL13do_pull_coordPN3gmx11ISerializerEP12t_pull_coordi16PullingAlgorithm17PullGroupGeometryPi.exit.i, %bb.oa, %.noexc647, %.noexc638, %.noexc644, %bb.ny, %.noexc642, %bb.nx, %.noexc640, %bb.nw, %bb.nu, %_ZN3gmx11ISerializer10doIntArrayEPii.exit.i107.i, %_ZN3gmx11ISerializer10doIntArrayEPii.exit76.i.i, %bb.nt, %.noexc631, %.noexc629, %bb.nq, %bb.np, %bb.nn
  %lpad.loopexit1458 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph.i15.i.i
  %lpad.loopexit1461 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph.i.i100.i
  %lpad.loopexit1464 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph.i580, %bb.ng, %_ZN3gmx11ISerializer10doIntArrayEPii.exit.i95.i, %bb.nj, %_ZL13do_pull_groupPN3gmx11ISerializerEP12t_pull_group.exit.i
  %lpad.loopexit1467 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.lo, %.split2302, %bb.lp, %bb.ly, %.noexc587, %bb.ma, %.noexc589, %.noexc590, %bb.mb, %.noexc592, %bb.mc, %bb.md, %.noexc595, %bb.mf, %.noexc597, %.noexc598, %.noexc596, %.noexc600, %bb.mg, %bb.mi, %bb.mn, %bb.mr, %bb.mw, %bb.oe, %.noexc655
  %lpad.loopexit.split-lp1468 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.lp:                                            ; preds = %bb.ln
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #26
  store i32 0, ptr %i.ab, align 4, !tbaa !27
  %i.bpm = load ptr, ptr %0, align 8, !tbaa !33
  %i.bpn = getelementptr inbounds nuw i8, ptr %i.bpm, i64 56
  %i.bpo = load ptr, ptr %i.bpn, align 8
  invoke void %i.bpo(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ab)
          to label %bb.lq unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !596

bb.lq:                                            ; preds = %bb.lp
  %i.bpp = load i32, ptr %i.ab, align 4, !tbaa !27 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #26
  %i.bpq = icmp ne i32 %i.bpp, 0                  ; 2 uses
  %i.bpr = getelementptr inbounds nuw i8, ptr %1, i64 592
  %i.bps = zext i1 %i.bpq to i8
  store i8 %i.bps, ptr %i.bpr, align 8, !tbaa !740
  switch i32 %i.bpp, label %bb.lr [
    i32 0, label %bb.lt
    i32 1, label %bb.lt
    i32 2, label %.split2302
    i32 3, label %.split2301
    i32 4, label %.split2300
    i32 5, label %.split2299
    i32 6, label %.split
  ]

.split2301:                                       ; preds = %bb.lq
  br label %.split2302

.split2300:                                       ; preds = %bb.lq
  br label %.split2302

.split2299:                                       ; preds = %bb.lq
  br label %.split2302

.split:                                           ; preds = %bb.lq
  br label %.split2302

bb.lr:                                            ; preds = %bb.lq
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.100, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZL11do_inputrecPN3gmx11ISerializerEP10t_inputreciENK3$_1clEv", ptr noundef nonnull @.str.12, i32 noundef 1631) #29
          to label %.noexc575 unwind label %bb.ls

.noexc575:                                        ; preds = %bb.lr
  unreachable

bb.ls:                                            ; preds = %bb.lr
  %i.bpt = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.lt:                                            ; preds = %bb.lq, %bb.lq
  br i1 %i.bpq, label %.split2302, label %.thread2304

.split2302:                                       ; preds = %.split, %.split2299, %.split2300, %.split2301, %bb.lq, %._crit_edge1944, %bb.lt
  %.013552298 = phi i32 [ 0, %._crit_edge1944 ], [ 0, %bb.lt ], [ 5, %.split ], [ 4, %.split2299 ], [ 3, %.split2300 ], [ 2, %.split2301 ], [ 1, %bb.lq ]
  %i.bpu = load ptr, ptr %0, align 8, !tbaa !33
  %i.bpv = getelementptr inbounds nuw i8, ptr %i.bpu, i64 16
  %i.bpw = load ptr, ptr %i.bpv, align 8
  %i.bpx = invoke noundef zeroext i1 %i.bpw(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.lu unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.lu:                                            ; preds = %.split2302
  br i1 %i.bpx, label %bb.lv, label %_ZNSt10unique_ptrI13pull_params_tSt14default_deleteIS0_EED2Ev.exit

bb.lv:                                            ; preds = %bb.lu
  %i.bpy = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #31
          to label %bb.lw unwind label %bb.lx     ; 2 uses

bb.lw:                                            ; preds = %bb.lv
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bpy, i8 0, i64 80, i1 false), !noalias !741
  %i.bpz = getelementptr inbounds nuw i8, ptr %1, i64 600 ; 2 uses
  %i.bqa = load ptr, ptr %i.bpz, align 8, !tbaa !742 ; 3 uses
  store ptr %i.bpy, ptr %i.bpz, align 8, !tbaa !742
  %.not.i.i.i.i577 = icmp eq ptr %i.bqa, null
  br i1 %.not.i.i.i.i577, label %_ZNSt10unique_ptrI13pull_params_tSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteI13pull_params_tEclEPS0_.exit.i.i.i.i

_ZNKSt14default_deleteI13pull_params_tEclEPS0_.exit.i.i.i.i: ; preds = %bb.lw
  call void @_ZN13pull_params_tD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.bqa) #26
  call void @_ZdlPvm(ptr noundef nonnull %i.bqa, i64 noundef 80) #25
  br label %_ZNSt10unique_ptrI13pull_params_tSt14default_deleteIS0_EED2Ev.exit

bb.lx:                                            ; preds = %bb.lv
  %i.bqb = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt10unique_ptrI13pull_params_tSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.lw, %_ZNKSt14default_deleteI13pull_params_tEclEPS0_.exit.i.i.i.i, %bb.lu
  %i.bqc = getelementptr inbounds nuw i8, ptr %1, i64 600
  %i.bqd = load ptr, ptr %i.bqc, align 8, !tbaa !742 ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #26
  %i.bqe = icmp sgt i32 %2, 94                    ; 2 uses
  br i1 %i.bqe, label %bb.ly, label %.noexc587

bb.ly:                                            ; preds = %_ZNSt10unique_ptrI13pull_params_tSt14default_deleteIS0_EED2Ev.exit
  %i.bqf = load ptr, ptr %0, align 8, !tbaa !33
  %i.bqg = getelementptr inbounds nuw i8, ptr %i.bqf, i64 56
  %i.bqh = load ptr, ptr %i.bqg, align 8
  invoke void %i.bqh(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.bqd)
          to label %.noexc587 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !599

.noexc587:                                        ; preds = %bb.ly, %_ZNSt10unique_ptrI13pull_params_tSt14default_deleteIS0_EED2Ev.exit
  %i.bqi = getelementptr inbounds nuw i8, ptr %i.bqd, i64 4 ; 5 uses
  %i.bqj = load ptr, ptr %0, align 8, !tbaa !33
  %i.bqk = getelementptr inbounds nuw i8, ptr %i.bqj, i64 56
  %i.bql = load ptr, ptr %i.bqk, align 8
  invoke void %i.bql(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.bqi)
          to label %.noexc588 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !599

.noexc588:                                        ; preds = %.noexc587
  %i.bqm = icmp slt i32 %2, 95                    ; 2 uses
  br i1 %i.bqm, label %.thread.i586, label %bb.lz

.thread.i586:                                     ; preds = %.noexc588
  %i.bqn = load i32, ptr %i.bqi, align 4, !tbaa !750
  %i.bqo = add nsw i32 %i.bqn, 1
  store i32 %i.bqo, ptr %i.bqd, align 8, !tbaa !751
  br label %bb.ma

bb.lz:                                            ; preds = %.noexc588
  %i.bqp = icmp samesign ult i32 %2, 101
  br i1 %i.bqp, label %bb.ma, label %bb.mb

bb.ma:                                            ; preds = %bb.lz, %.thread.i586
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #26
  store i32 9, ptr %i.w, align 4, !tbaa !27
  %i.bqq = load ptr, ptr %0, align 8, !tbaa !33
  %i.bqr = getelementptr inbounds nuw i8, ptr %i.bqq, i64 56
  %i.bqs = load ptr, ptr %i.bqr, align 8
  invoke void %i.bqs(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.w)
          to label %.noexc589 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !599

.noexc589:                                        ; preds = %bb.ma
  %i.bqt = load i32, ptr %i.w, align 4, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #26
  %i.bqu = load ptr, ptr %0, align 8, !tbaa !33
  %i.bqv = getelementptr inbounds nuw i8, ptr %i.bqu, i64 104
  %i.bqw = load ptr, ptr %i.bqv, align 8
  invoke void %i.bqw(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.x)
          to label %.noexc590 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !599

.noexc590:                                        ; preds = %.noexc589
  %i.bqx = load ptr, ptr %0, align 8, !tbaa !33
  %i.bqy = getelementptr inbounds nuw i8, ptr %i.bqx, i64 96
  %i.bqz = load ptr, ptr %i.bqy, align 8
  invoke void %i.bqz(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.y)
          to label %.noexc591 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !599

.noexc591:                                        ; preds = %.noexc590
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #26
  br label %bb.mb

bb.mb:                                            ; preds = %.noexc591, %bb.lz
  %.0120.i = phi i32 [ %i.bqt, %.noexc591 ], [ 9, %bb.lz ] ; 4 uses
  %i.bra = getelementptr inbounds nuw i8, ptr %i.bqd, i64 8
  %i.brb = load ptr, ptr %0, align 8, !tbaa !33
  %i.brc = getelementptr inbounds nuw i8, ptr %i.brb, i64 96
  %i.brd = load ptr, ptr %i.brc, align 8
  invoke void %i.brd(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.bra)
          to label %.noexc592 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !599

.noexc592:                                        ; preds = %bb.mb
  %i.bre = getelementptr inbounds nuw i8, ptr %i.bqd, i64 12
  %i.brf = load ptr, ptr %0, align 8, !tbaa !33
  %i.brg = getelementptr inbounds nuw i8, ptr %i.brf, i64 96
  %i.brh = load ptr, ptr %i.brg, align 8
  invoke void %i.brh(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.bre)
          to label %.noexc593 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !599

.noexc593:                                        ; preds = %.noexc592
  br i1 %i.bqe, label %bb.mc, label %.thread122.i

bb.mc:                                            ; preds = %.noexc593
  %i.bri = getelementptr inbounds nuw i8, ptr %i.bqd, i64 16
  %i.brj = load ptr, ptr %0, align 8, !tbaa !33
  %i.brk = getelementptr inbounds nuw i8, ptr %i.brj, i64 24
  %i.brl = load ptr, ptr %i.brk, align 8
  invoke void %i.brl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.bri)
          to label %.noexc594 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !599

.noexc594:                                        ; preds = %bb.mc
  %i.brm = icmp samesign ugt i32 %2, 108
  br i1 %i.brm, label %bb.md, label %bb.me

bb.md:                                            ; preds = %.noexc594
  %i.brn = getelementptr inbounds nuw i8, ptr %i.bqd, i64 17
  %i.bro = load ptr, ptr %0, align 8, !tbaa !33
  %i.brp = getelementptr inbounds nuw i8, ptr %i.bro, i64 24
  %i.brq = load ptr, ptr %i.brp, align 8
  invoke void %i.brq(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.brn)
          to label %.noexc595 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !599

.noexc595:                                        ; preds = %bb.md
  %i.brr = getelementptr inbounds nuw i8, ptr %i.bqd, i64 18
  %i.brs = load ptr, ptr %0, align 8, !tbaa !33
  %i.brt = getelementptr inbounds nuw i8, ptr %i.brs, i64 24
  %i.bru = load ptr, ptr %i.brt, align 8
  invoke void %i.bru(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.brr)
          to label %.noexc596 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !599

bb.me:                                            ; preds = %.noexc594
  %28 = icmp samesign ugt i32 %2, 100
  br i1 %28, label %bb.mf, label %.thread122.i

bb.mf:                                            ; preds = %bb.me
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #26
  %i.brv = load ptr, ptr %0, align 8, !tbaa !33
  %i.brw = getelementptr inbounds nuw i8, ptr %i.brv, i64 56
  %i.brx = load ptr, ptr %i.brw, align 8
  invoke void %i.brx(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.z)
          to label %.noexc597 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !599

.noexc597:                                        ; preds = %bb.mf
  %i.bry = getelementptr inbounds nuw i8, ptr %i.bqd, i64 17
  %i.brz = load ptr, ptr %0, align 8, !tbaa !33
  %i.bsa = getelementptr inbounds nuw i8, ptr %i.brz, i64 24
  %i.bsb = load ptr, ptr %i.bsa, align 8
  invoke void %i.bsb(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.bry)
          to label %.noexc598 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !599

.noexc598:                                        ; preds = %.noexc597
  %i.bsc = getelementptr inbounds nuw i8, ptr %i.bqd, i64 18
  %i.bsd = load ptr, ptr %0, align 8, !tbaa !33
  %i.bse = getelementptr inbounds nuw i8, ptr %i.bsd, i64 24
  %i.bsf = load ptr, ptr %i.bse, align 8
  invoke void %i.bsf(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.bsc)
          to label %.noexc599 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !599

.noexc599:                                        ; preds = %.noexc598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #26
  br label %.noexc596

.thread122.i:                                     ; preds = %bb.me, %.noexc593
  %i.bsg = getelementptr inbounds nuw i8, ptr %i.bqd, i64 17
  store i8 0, ptr %i.bsg, align 1, !tbaa !752
  %i.bsh = getelementptr inbounds nuw i8, ptr %i.bqd, i64 18
  store i8 1, ptr %i.bsh, align 2, !tbaa !753
  br label %.noexc596

.noexc596:                                        ; preds = %.noexc595, %.thread122.i, %.noexc599
  %i.bsi = getelementptr inbounds nuw i8, ptr %i.bqd, i64 20
  %i.bsj = load ptr, ptr %0, align 8, !tbaa !33
  %i.bsk = getelementptr inbounds nuw i8, ptr %i.bsj, i64 56
  %i.bsl = load ptr, ptr %i.bsk, align 8
  invoke void %i.bsl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.bsi)
          to label %.noexc600 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !599

.noexc600:                                        ; preds = %.noexc596
  %i.bsm = getelementptr inbounds nuw i8, ptr %i.bqd, i64 24
  %i.bsn = load ptr, ptr %0, align 8, !tbaa !33
  %i.bso = getelementptr inbounds nuw i8, ptr %i.bsn, i64 56
  %i.bsp = load ptr, ptr %i.bso, align 8
  invoke void %i.bsp(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.bsm)
          to label %.noexc601 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !599

.noexc601:                                        ; preds = %.noexc600
  %i.bsq = icmp sgt i32 %2, 113
  %i.bsr = getelementptr inbounds nuw i8, ptr %i.bqd, i64 19 ; 2 uses
  br i1 %i.bsq, label %bb.mg, label %bb.mh

bb.mg:                                            ; preds = %.noexc601
  %i.bss = load ptr, ptr %0, align 8, !tbaa !33
  %i.bst = getelementptr inbounds nuw i8, ptr %i.bss, i64 24
  %i.bsu = load ptr, ptr %i.bst, align 8
  invoke void %i.bsu(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.bsr)
          to label %.noexc602 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !599

bb.mh:                                            ; preds = %.noexc601
  store i8 0, ptr %i.bsr, align 1, !tbaa !754
  br label %.noexc602

.noexc602:                                        ; preds = %bb.mg, %bb.mh
  %i.bsv = getelementptr inbounds nuw i8, ptr %i.bqd, i64 32 ; 5 uses
  %i.bsw = load i32, ptr %i.bqd, align 8, !tbaa !751
  %i.bsx = sext i32 %i.bsw to i64                 ; 4 uses
  %i.bsy = getelementptr inbounds nuw i8, ptr %i.bqd, i64 40 ; 2 uses
  %i.bsz = load ptr, ptr %i.bsy, align 8, !tbaa !319 ; 3 uses
  %i.bta = load ptr, ptr %i.bsv, align 8, !tbaa !320 ; 2 uses
  %i.btb = ptrtoint ptr %i.bsz to i64
  %i.btc = ptrtoint ptr %i.bta to i64
  %i.btd = sub i64 %i.btb, %i.btc
  %i.bte = sdiv exact i64 %i.btd, 56              ; 3 uses
  %i.btf = icmp ult i64 %i.bte, %i.bsx
  br i1 %i.btf, label %bb.mi, label %bb.mj

bb.mi:                                            ; preds = %.noexc602
  %i.btg = sub nuw nsw i64 %i.bsx, %i.bte
  invoke void @_ZNSt6vectorI12t_pull_groupSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bsv, i64 noundef %i.btg)
          to label %_ZNSt6vectorI12t_pull_groupSaIS0_EE6resizeEm.exit.i unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.mj:                                            ; preds = %.noexc602
  %i.bth = icmp ugt i64 %i.bte, %i.bsx
  br i1 %i.bth, label %bb.mk, label %_ZNSt6vectorI12t_pull_groupSaIS0_EE6resizeEm.exit.i

bb.mk:                                            ; preds = %bb.mj
  %i.bti = getelementptr inbounds nuw [56 x i8], ptr %i.bta, i64 %i.bsx ; 3 uses
  %.not.i.i.i585 = icmp eq ptr %i.bsz, %i.bti
  br i1 %.not.i.i.i585, label %_ZNSt6vectorI12t_pull_groupSaIS0_EE6resizeEm.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.mk, %_ZSt8_DestroyI12t_pull_groupEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.btw, %_ZSt8_DestroyI12t_pull_groupEvPT_.exit.i.i.i.i.i ], [ %i.bti, %bb.mk ] ; 5 uses
  %i.btj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24
  %i.btk = load ptr, ptr %i.btj, align 8, !tbaa !284 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.btk, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i.i.i.i, label %bb.ml

bb.ml:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.btl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 40
  %i.btm = load ptr, ptr %i.btl, align 8, !tbaa !285
  %i.btn = ptrtoint ptr %i.btm to i64
  %i.bto = ptrtoint ptr %i.btk to i64
  %i.btp = sub i64 %i.btn, %i.bto
  call void @_ZdlPvm(ptr noundef nonnull %i.btk, i64 noundef %i.btp) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i.i.i.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i.i.i.i:      ; preds = %bb.ml, %.lr.ph.i.i.i.i.i
  %i.btq = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !209 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i.i = icmp eq ptr %i.btq, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i.i, label %_ZSt8_DestroyI12t_pull_groupEvPT_.exit.i.i.i.i.i, label %bb.mm

bb.mm:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i.i.i.i
  %i.btr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16
  %i.bts = load ptr, ptr %i.btr, align 8, !tbaa !252
  %i.btt = ptrtoint ptr %i.bts to i64
  %i.btu = ptrtoint ptr %i.btq to i64
  %i.btv = sub i64 %i.btt, %i.btu
  call void @_ZdlPvm(ptr noundef nonnull %i.btq, i64 noundef %i.btv) #25
  br label %_ZSt8_DestroyI12t_pull_groupEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyI12t_pull_groupEvPT_.exit.i.i.i.i.i: ; preds = %bb.mm, %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i.i.i.i
  %i.btw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.btw, %i.bsz
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIP12t_pull_groupS0_EvT_S2_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !6

_ZSt8_DestroyIP12t_pull_groupS0_EvT_S2_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyI12t_pull_groupEvPT_.exit.i.i.i.i.i
  store ptr %i.bti, ptr %i.bsy, align 8, !tbaa !319
  br label %_ZNSt6vectorI12t_pull_groupSaIS0_EE6resizeEm.exit.i

_ZNSt6vectorI12t_pull_groupSaIS0_EE6resizeEm.exit.i: ; preds = %bb.mi, %_ZSt8_DestroyIP12t_pull_groupS0_EvT_S2_RSaIT0_E.exit.i.i.i, %bb.mk, %bb.mj
  %i.btx = getelementptr inbounds nuw i8, ptr %i.bqd, i64 56 ; 6 uses
  %i.bty = load i32, ptr %i.bqi, align 4, !tbaa !750
  %i.btz = sext i32 %i.bty to i64                 ; 4 uses
  %i.bua = getelementptr inbounds nuw i8, ptr %i.bqd, i64 64 ; 2 uses
  %i.bub = load ptr, ptr %i.bua, align 8, !tbaa !321 ; 3 uses
  %i.buc = load ptr, ptr %i.btx, align 8, !tbaa !322 ; 2 uses
  %i.bud = ptrtoint ptr %i.bub to i64
  %i.bue = ptrtoint ptr %i.buc to i64
  %i.buf = sub i64 %i.bud, %i.bue
  %i.bug = sdiv exact i64 %i.buf, 176             ; 3 uses
  %i.buh = icmp ult i64 %i.bug, %i.btz
  br i1 %i.buh, label %bb.mn, label %bb.mo

bb.mn:                                            ; preds = %_ZNSt6vectorI12t_pull_groupSaIS0_EE6resizeEm.exit.i
  %i.bui = sub nuw nsw i64 %i.btz, %i.bug
  invoke void @_ZNSt6vectorI12t_pull_coordSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.btx, i64 noundef %i.bui)
          to label %_ZNSt6vectorI12t_pull_coordSaIS0_EE6resizeEm.exit.i unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.mo:                                            ; preds = %_ZNSt6vectorI12t_pull_groupSaIS0_EE6resizeEm.exit.i
  %i.buj = icmp ugt i64 %i.bug, %i.btz
  br i1 %i.buj, label %bb.mp, label %_ZNSt6vectorI12t_pull_coordSaIS0_EE6resizeEm.exit.i

bb.mp:                                            ; preds = %bb.mo
  %i.buk = getelementptr inbounds nuw [176 x i8], ptr %i.buc, i64 %i.btz ; 3 uses
  %.not.i.i90.i = icmp eq ptr %i.bub, %i.buk
  br i1 %.not.i.i90.i, label %_ZNSt6vectorI12t_pull_coordSaIS0_EE6resizeEm.exit.i, label %.lr.ph.i.i.i.i91.i

.lr.ph.i.i.i.i91.i:                               ; preds = %bb.mp, %_ZSt8_DestroyI12t_pull_coordEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i92.i = phi ptr [ %i.bux, %_ZSt8_DestroyI12t_pull_coordEvPT_.exit.i.i.i.i.i ], [ %i.buk, %bb.mp ] ; 5 uses
  %i.bul = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i92.i, i64 48
  %i.bum = load ptr, ptr %i.bul, align 8, !tbaa !25 ; 2 uses
  %i.bun = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i92.i, i64 64 ; 2 uses
  %i.buo = icmp eq ptr %i.bum, %i.bun
  br i1 %i.buo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i91.i
  %i.bup = load i64, ptr %i.bun, align 8, !tbaa !26
  %i.buq = add i64 %i.bup, 1
  call void @_ZdlPvm(ptr noundef %i.bum, i64 noundef %i.buq) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i91.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.bur = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i92.i, i64 8
  %i.bus = load ptr, ptr %i.bur, align 8, !tbaa !25 ; 2 uses
  %i.but = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i92.i, i64 24 ; 2 uses
  %i.buu = icmp eq ptr %i.bus, %i.but
  br i1 %i.buu, label %_ZSt8_DestroyI12t_pull_coordEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i
  %i.buv = load i64, ptr %i.but, align 8, !tbaa !26
  %i.buw = add i64 %i.buv, 1
  call void @_ZdlPvm(ptr noundef %i.bus, i64 noundef %i.buw) #25
  br label %_ZSt8_DestroyI12t_pull_coordEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyI12t_pull_coordEvPT_.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i
  %i.bux = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i92.i, i64 176 ; 2 uses
  %.not.i.i.i.i93.i = icmp eq ptr %i.bux, %i.bub
  br i1 %.not.i.i.i.i93.i, label %_ZSt8_DestroyIP12t_pull_coordS0_EvT_S2_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i91.i, !llvm.loop !7

_ZSt8_DestroyIP12t_pull_coordS0_EvT_S2_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyI12t_pull_coordEvPT_.exit.i.i.i.i.i
  store ptr %i.buk, ptr %i.bua, align 8, !tbaa !321
  br label %_ZNSt6vectorI12t_pull_coordSaIS0_EE6resizeEm.exit.i

_ZNSt6vectorI12t_pull_coordSaIS0_EE6resizeEm.exit.i: ; preds = %bb.mn, %_ZSt8_DestroyIP12t_pull_coordS0_EvT_S2_RSaIT0_E.exit.i.i.i, %bb.mp, %bb.mo
end_hunk_0
begin_hunk_1_@_ZL11do_inputrecPN3gmx11ISerializerEP10t_inputreci:bb.a
  store ptr %i.bwi, ptr %i.bvm, align 8, !tbaa !208
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i

_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i:           ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i.i, %bb.na, %bb.mz, %.noexc610
  %i.bwj = phi i32 [ %.pre30.i.i, %.noexc610 ], [ %i.bvx, %bb.mz ], [ %i.bvx, %bb.na ], [ %i.bvx, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i.i ] ; 2 uses
  %i.bwk = phi ptr [ %.pre.i.i, %.noexc610 ], [ %i.bwa, %bb.mz ], [ %i.bwa, %bb.na ], [ %i.bwa, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i.i ]
  %i.bwl = icmp sgt i32 %i.bwj, 0
  br i1 %i.bwl, label %.lr.ph.preheader.i.i.i, label %_ZN3gmx11ISerializer10doIntArrayEPii.exit.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.bwj to i64
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc611, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %.noexc611 ] ; 2 uses
  %i.bwm = getelementptr inbounds nuw [4 x i8], ptr %i.bwk, i64 %indvars.iv.i.i.i
  %i.bwn = load ptr, ptr %0, align 8, !tbaa !33
  %i.bwo = getelementptr inbounds nuw i8, ptr %i.bwn, i64 56
  %i.bwp = load ptr, ptr %i.bwo, align 8
  invoke void %i.bwp(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.bwm)
          to label %.noexc611 unwind label %.loopexit.split-lp1442.loopexit, !inline_history !599

.noexc611:                                        ; preds = %.lr.ph.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %_ZN3gmx11ISerializer10doIntArrayEPii.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZN3gmx11ISerializer10doIntArrayEPii.exit.i.i:    ; preds = %.noexc611, %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #26
  %i.bwq = getelementptr inbounds nuw i8, ptr %i.bvg, i64 24 ; 4 uses
  %i.bwr = getelementptr inbounds nuw i8, ptr %i.bvg, i64 32 ; 3 uses
  %i.bws = load ptr, ptr %i.bwr, align 8, !tbaa !286
  %i.bwt = load ptr, ptr %i.bwq, align 8, !tbaa !284
  %i.bwu = ptrtoint ptr %i.bws to i64
  %i.bwv = ptrtoint ptr %i.bwt to i64
  %i.bww = sub i64 %i.bwu, %i.bwv
  %i.bwx = lshr exact i64 %i.bww, 2
  %i.bwy = trunc i64 %i.bwx to i32
  store i32 %i.bwy, ptr %i.v, align 4, !tbaa !27
  %i.bwz = load ptr, ptr %0, align 8, !tbaa !33
  %i.bxa = getelementptr inbounds nuw i8, ptr %i.bwz, i64 56
  %i.bxb = load ptr, ptr %i.bxa, align 8
  invoke void %i.bxb(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.v)
          to label %.noexc612 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit, !inline_history !599

.noexc612:                                        ; preds = %_ZN3gmx11ISerializer10doIntArrayEPii.exit.i.i
  %i.bxc = load i32, ptr %i.v, align 4, !tbaa !27 ; 4 uses
  %i.bxd = sext i32 %i.bxc to i64                 ; 4 uses
  %i.bxe = load ptr, ptr %i.bwr, align 8, !tbaa !286 ; 2 uses
  %i.bxf = load ptr, ptr %i.bwq, align 8, !tbaa !284 ; 5 uses
  %i.bxg = ptrtoint ptr %i.bxe to i64
  %i.bxh = ptrtoint ptr %i.bxf to i64
  %i.bxi = sub i64 %i.bxg, %i.bxh
  %i.bxj = ashr exact i64 %i.bxi, 2               ; 3 uses
  %i.bxk = icmp ult i64 %i.bxj, %i.bxd
  br i1 %i.bxk, label %bb.nb, label %bb.nc

bb.nb:                                            ; preds = %.noexc612
  %i.bxl = sub nuw nsw i64 %i.bxd, %i.bxj
  invoke void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bwq, i64 noundef %i.bxl)
          to label %.noexc613 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit

.noexc613:                                        ; preds = %bb.nb
  %.pre31.i.i = load ptr, ptr %i.bwq, align 8, !tbaa !284
  %.pre32.i.i = load i32, ptr %i.v, align 4, !tbaa !27
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i

bb.nc:                                            ; preds = %.noexc612
  %i.bxm = icmp ugt i64 %i.bxj, %i.bxd
  br i1 %i.bxm, label %bb.nd, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i

bb.nd:                                            ; preds = %bb.nc
  %i.bxn = getelementptr inbounds nuw [4 x i8], ptr %i.bxf, i64 %i.bxd ; 2 uses
  %.not.i.i23.i.i = icmp eq ptr %i.bxe, %i.bxn
  br i1 %.not.i.i23.i.i, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i.i:    ; preds = %bb.nd
  store ptr %i.bxn, ptr %i.bwr, align 8, !tbaa !286
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i

_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i:           ; preds = %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i.i, %bb.nd, %bb.nc, %.noexc613
  %i.bxo = phi i32 [ %.pre32.i.i, %.noexc613 ], [ %i.bxc, %bb.nc ], [ %i.bxc, %bb.nd ], [ %i.bxc, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i.i ] ; 2 uses
  %i.bxp = phi ptr [ %.pre31.i.i, %.noexc613 ], [ %i.bxf, %bb.nc ], [ %i.bxf, %bb.nd ], [ %i.bxf, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i.i ]
  %i.bxq = icmp sgt i32 %i.bxo, 0
  br i1 %i.bxq, label %.lr.ph.preheader.i24.i.i, label %_ZL20do_pullgrp_tpx_pre95PN3gmx11ISerializerEP12t_pull_groupP12t_pull_coord.exit.i

.lr.ph.preheader.i24.i.i:                         ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i
  %wide.trip.count.i25.i.i = zext nneg i32 %i.bxo to i64
  br label %.lr.ph.i26.i.i

.lr.ph.i26.i.i:                                   ; preds = %.noexc614, %.lr.ph.preheader.i24.i.i
  %indvars.iv.i27.i.i = phi i64 [ 0, %.lr.ph.preheader.i24.i.i ], [ %indvars.iv.next.i28.i.i, %.noexc614 ] ; 2 uses
  %i.bxr = getelementptr inbounds nuw [4 x i8], ptr %i.bxp, i64 %indvars.iv.i27.i.i
  %i.bxs = load ptr, ptr %0, align 8, !tbaa !33
  %i.bxt = getelementptr inbounds nuw i8, ptr %i.bxs, i64 96
  %i.bxu = load ptr, ptr %i.bxt, align 8
  invoke void %i.bxu(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.bxr)
          to label %.noexc614 unwind label %.loopexit1441, !inline_history !599

.noexc614:                                        ; preds = %.lr.ph.i26.i.i
  %indvars.iv.next.i28.i.i = add nuw nsw i64 %indvars.iv.i27.i.i, 1 ; 2 uses
  %exitcond.not.i29.i.i = icmp eq i64 %indvars.iv.next.i28.i.i, %wide.trip.count.i25.i.i
  br i1 %exitcond.not.i29.i.i, label %_ZL20do_pullgrp_tpx_pre95PN3gmx11ISerializerEP12t_pull_groupP12t_pull_coord.exit.i, label %.lr.ph.i26.i.i, !llvm.loop !1

_ZL20do_pullgrp_tpx_pre95PN3gmx11ISerializerEP12t_pull_groupP12t_pull_coord.exit.i: ; preds = %.noexc614, %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i
  %i.bxv = getelementptr inbounds nuw i8, ptr %i.bvg, i64 48
  %i.bxw = load ptr, ptr %0, align 8, !tbaa !33
  %i.bxx = getelementptr inbounds nuw i8, ptr %i.bxw, i64 56
  %i.bxy = load ptr, ptr %i.bxx, align 8
  invoke void %i.bxy(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.bxv)
          to label %.noexc615 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit, !inline_history !599

.noexc615:                                        ; preds = %_ZL20do_pullgrp_tpx_pre95PN3gmx11ISerializerEP12t_pull_groupP12t_pull_coord.exit.i
  %i.bxz = getelementptr inbounds nuw i8, ptr %i.bvl, i64 140
  %i.bya = load ptr, ptr %0, align 8, !tbaa !33
  %i.byb = getelementptr inbounds nuw i8, ptr %i.bya, i64 128
  %i.byc = load ptr, ptr %i.byb, align 8
  invoke void %i.byc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.bxz)
          to label %.noexc616 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit, !inline_history !599

.noexc616:                                        ; preds = %.noexc615
  %i.byd = getelementptr inbounds nuw i8, ptr %i.bvl, i64 128
  store <2 x float> zeroinitializer, ptr %i.byd, align 4, !tbaa !29
  %i.bye = getelementptr inbounds nuw i8, ptr %i.bvl, i64 136
  store float 0.000000e+00, ptr %i.bye, align 4, !tbaa !29
  %i.byf = load ptr, ptr %0, align 8, !tbaa !33
  %i.byg = getelementptr inbounds nuw i8, ptr %i.byf, i64 128
  %i.byh = load ptr, ptr %i.byg, align 8
  invoke void %i.byh(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %19)
          to label %.noexc617 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit, !inline_history !599

.noexc617:                                        ; preds = %.noexc616
  %i.byi = load float, ptr %19, align 4, !tbaa !29
  %i.byj = getelementptr inbounds nuw i8, ptr %i.bvl, i64 156
  store float %i.byi, ptr %i.byj, align 4, !tbaa !755
  %i.byk = getelementptr inbounds nuw i8, ptr %i.bvl, i64 160
  %i.byl = load ptr, ptr %0, align 8, !tbaa !33
  %i.bym = getelementptr inbounds nuw i8, ptr %i.byl, i64 96
  %i.byn = load ptr, ptr %i.bym, align 8
  invoke void %i.byn(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.byk)
          to label %.noexc618 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit, !inline_history !599

.noexc618:                                        ; preds = %.noexc617
  %i.byo = getelementptr inbounds nuw i8, ptr %i.bvl, i64 164
  %i.byp = load ptr, ptr %0, align 8, !tbaa !33
  %i.byq = getelementptr inbounds nuw i8, ptr %i.byp, i64 96
  %i.byr = load ptr, ptr %i.byq, align 8
  invoke void %i.byr(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.byo)
          to label %.noexc619 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit, !inline_history !599

.noexc619:                                        ; preds = %.noexc618
  %i.bys = getelementptr inbounds nuw i8, ptr %i.bvl, i64 168
  %i.byt = load ptr, ptr %0, align 8, !tbaa !33
  %i.byu = getelementptr inbounds nuw i8, ptr %i.byt, i64 96
  %i.byv = load ptr, ptr %i.byu, align 8
  invoke void %i.byv(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.bys)
          to label %.noexc620 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit, !inline_history !599

.noexc620:                                        ; preds = %.noexc619
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  %.not.i583 = icmp eq i64 %indvars.iv133.i, 0
  br i1 %.not.i583, label %bb.nf, label %bb.ne

bb.ne:                                            ; preds = %.noexc620
  %i.byw = load ptr, ptr %i.btx, align 8, !tbaa !322
  %i.byx = getelementptr inbounds nuw [176 x i8], ptr %i.byw, i64 %i.bvh ; 2 uses
  %i.byy = getelementptr inbounds nuw i8, ptr %i.byx, i64 92
  store i32 0, ptr %i.byy, align 4, !tbaa !27
  %i.byz = getelementptr inbounds nuw i8, ptr %i.byx, i64 96
  %i.bza = trunc nuw nsw i64 %indvars.iv133.i to i32
  store i32 %i.bza, ptr %i.byz, align 4, !tbaa !27
  br label %bb.nf

bb.nf:                                            ; preds = %bb.ne, %.noexc620
  %indvars.iv.next134.i = add nuw nsw i64 %indvars.iv133.i, 1 ; 2 uses
  %i.bzb = load i32, ptr %i.bqd, align 8, !tbaa !751
  %i.bzc = sext i32 %i.bzb to i64
  %i.bzd = icmp slt i64 %indvars.iv.next134.i, %i.bzc
  br i1 %i.bzd, label %.lr.ph128.i, label %._crit_edge.i, !llvm.loop !600

._crit_edge.i:                                    ; preds = %bb.nf, %bb.mx
  %i.bze = load ptr, ptr %i.bsv, align 8, !tbaa !320 ; 2 uses
  %i.bzf = load ptr, ptr %i.bze, align 8, !tbaa !202
  %i.bzg = getelementptr inbounds nuw i8, ptr %i.bze, i64 8
  %i.bzh = load ptr, ptr %i.bzg, align 8, !tbaa !202
  %i.bzi = icmp ne ptr %i.bzf, %i.bzh
  %i.bzj = getelementptr inbounds nuw i8, ptr %i.bqd, i64 16
  %i.bzk = zext i1 %i.bzi to i8
  store i8 %i.bzk, ptr %i.bzj, align 8, !tbaa !756
  br label %.loopexit.i579

.preheader.i:                                     ; preds = %.noexc627, %.preheader123.i
  %i.bzl = load i32, ptr %i.bqi, align 4, !tbaa !750
  %i.bzm = icmp sgt i32 %i.bzl, 0
  br i1 %i.bzm, label %.lr.ph126.i, label %.loopexit.i579

.lr.ph126.i:                                      ; preds = %.preheader.i
  %i.bzn = icmp samesign ugt i32 %2, 106
  %29 = icmp samesign ugt i32 %2, 100             ; 2 uses
  %i.bzo = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.bzp = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.bzq = icmp samesign ugt i32 %2, 109
  %i.bzr = icmp samesign ugt i32 %2, 123
  br label %bb.nm

.lr.ph.i580:                                      ; preds = %.preheader123.i, %.noexc627
  %indvars.iv.i581 = phi i64 [ %indvars.iv.next.i582, %.noexc627 ], [ 0, %.preheader123.i ] ; 2 uses
  %i.bzs = load ptr, ptr %i.bsv, align 8, !tbaa !320
  %i.bzt = getelementptr inbounds nuw [56 x i8], ptr %i.bzs, i64 %indvars.iv.i581 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #26
  %i.bzu = getelementptr inbounds nuw i8, ptr %i.bzt, i64 8 ; 3 uses
  %i.bzv = load ptr, ptr %i.bzu, align 8, !tbaa !208
  %i.bzw = load ptr, ptr %i.bzt, align 8, !tbaa !209
  %i.bzx = ptrtoint ptr %i.bzv to i64
  %i.bzy = ptrtoint ptr %i.bzw to i64
  %i.bzz = sub i64 %i.bzx, %i.bzy
  %i.caa = lshr exact i64 %i.bzz, 2
  %i.cab = trunc i64 %i.caa to i32
  store i32 %i.cab, ptr %i.s, align 4, !tbaa !27
  %i.cac = load ptr, ptr %0, align 8, !tbaa !33
  %i.cad = getelementptr inbounds nuw i8, ptr %i.cac, i64 56
  %i.cae = load ptr, ptr %i.cad, align 8
  invoke void %i.cae(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.s)
          to label %.noexc621 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !599

.noexc621:                                        ; preds = %.lr.ph.i580
  %i.caf = load i32, ptr %i.s, align 4, !tbaa !27 ; 4 uses
  %i.cag = sext i32 %i.caf to i64                 ; 4 uses
  %i.cah = load ptr, ptr %i.bzu, align 8, !tbaa !208 ; 2 uses
  %i.cai = load ptr, ptr %i.bzt, align 8, !tbaa !209 ; 5 uses
  %i.caj = ptrtoint ptr %i.cah to i64
  %i.cak = ptrtoint ptr %i.cai to i64
  %i.cal = sub i64 %i.caj, %i.cak
  %i.cam = ashr exact i64 %i.cal, 2               ; 3 uses
  %i.can = icmp ult i64 %i.cam, %i.cag
  br i1 %i.can, label %bb.ng, label %bb.nh

bb.ng:                                            ; preds = %.noexc621
  %i.cao = sub nuw nsw i64 %i.cag, %i.cam
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bzt, i64 noundef %i.cao)
          to label %.noexc622 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc622:                                        ; preds = %bb.ng
  %.pre.i106.i = load ptr, ptr %i.bzt, align 8, !tbaa !209
  %.pre19.i.i = load i32, ptr %i.s, align 4, !tbaa !27
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i94.i

bb.nh:                                            ; preds = %.noexc621
  %i.cap = icmp ugt i64 %i.cam, %i.cag
  br i1 %i.cap, label %bb.ni, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i94.i

bb.ni:                                            ; preds = %bb.nh
  %i.caq = getelementptr inbounds nuw [4 x i8], ptr %i.cai, i64 %i.cag ; 2 uses
  %.not.i.i.i104.i = icmp eq ptr %i.cah, %i.caq
  br i1 %.not.i.i.i104.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i94.i, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i105.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i105.i: ; preds = %bb.ni
  store ptr %i.caq, ptr %i.bzu, align 8, !tbaa !208
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i94.i

_ZNSt6vectorIiSaIiEE6resizeEm.exit.i94.i:         ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i105.i, %bb.ni, %bb.nh, %.noexc622
  %i.car = phi i32 [ %.pre19.i.i, %.noexc622 ], [ %i.caf, %bb.nh ], [ %i.caf, %bb.ni ], [ %i.caf, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i105.i ] ; 2 uses
  %i.cas = phi ptr [ %.pre.i106.i, %.noexc622 ], [ %i.cai, %bb.nh ], [ %i.cai, %bb.ni ], [ %i.cai, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i105.i ]
  %i.cat = icmp sgt i32 %i.car, 0
  br i1 %i.cat, label %.lr.ph.preheader.i.i98.i, label %_ZN3gmx11ISerializer10doIntArrayEPii.exit.i95.i

.lr.ph.preheader.i.i98.i:                         ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i94.i
  %wide.trip.count.i.i99.i = zext nneg i32 %i.car to i64
  br label %.lr.ph.i.i100.i

.lr.ph.i.i100.i:                                  ; preds = %.noexc623, %.lr.ph.preheader.i.i98.i
  %indvars.iv.i.i101.i = phi i64 [ 0, %.lr.ph.preheader.i.i98.i ], [ %indvars.iv.next.i.i102.i, %.noexc623 ] ; 2 uses
  %i.cau = getelementptr inbounds nuw [4 x i8], ptr %i.cas, i64 %indvars.iv.i.i101.i
  %i.cav = load ptr, ptr %0, align 8, !tbaa !33
  %i.caw = getelementptr inbounds nuw i8, ptr %i.cav, i64 56
  %i.cax = load ptr, ptr %i.caw, align 8
  invoke void %i.cax(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.cau)
          to label %.noexc623 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !599

.noexc623:                                        ; preds = %.lr.ph.i.i100.i
  %indvars.iv.next.i.i102.i = add nuw nsw i64 %indvars.iv.i.i101.i, 1 ; 2 uses
  %exitcond.not.i.i103.i = icmp eq i64 %indvars.iv.next.i.i102.i, %wide.trip.count.i.i99.i
  br i1 %exitcond.not.i.i103.i, label %_ZN3gmx11ISerializer10doIntArrayEPii.exit.i95.i, label %.lr.ph.i.i100.i, !llvm.loop !3

_ZN3gmx11ISerializer10doIntArrayEPii.exit.i95.i:  ; preds = %.noexc623, %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i94.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #26
  %i.cay = getelementptr inbounds nuw i8, ptr %i.bzt, i64 24 ; 4 uses
  %i.caz = getelementptr inbounds nuw i8, ptr %i.bzt, i64 32 ; 3 uses
  %i.cba = load ptr, ptr %i.caz, align 8, !tbaa !286
  %i.cbb = load ptr, ptr %i.cay, align 8, !tbaa !284
  %i.cbc = ptrtoint ptr %i.cba to i64
  %i.cbd = ptrtoint ptr %i.cbb to i64
  %i.cbe = sub i64 %i.cbc, %i.cbd
  %i.cbf = lshr exact i64 %i.cbe, 2
  %i.cbg = trunc i64 %i.cbf to i32
  store i32 %i.cbg, ptr %i.t, align 4, !tbaa !27
  %i.cbh = load ptr, ptr %0, align 8, !tbaa !33
  %i.cbi = getelementptr inbounds nuw i8, ptr %i.cbh, i64 56
  %i.cbj = load ptr, ptr %i.cbi, align 8
  invoke void %i.cbj(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.t)
          to label %.noexc624 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !599

.noexc624:                                        ; preds = %_ZN3gmx11ISerializer10doIntArrayEPii.exit.i95.i
  %i.cbk = load i32, ptr %i.t, align 4, !tbaa !27 ; 4 uses
  %i.cbl = sext i32 %i.cbk to i64                 ; 4 uses
  %i.cbm = load ptr, ptr %i.caz, align 8, !tbaa !286 ; 2 uses
  %i.cbn = load ptr, ptr %i.cay, align 8, !tbaa !284 ; 5 uses
  %i.cbo = ptrtoint ptr %i.cbm to i64
  %i.cbp = ptrtoint ptr %i.cbn to i64
  %i.cbq = sub i64 %i.cbo, %i.cbp
  %i.cbr = ashr exact i64 %i.cbq, 2               ; 3 uses
  %i.cbs = icmp ult i64 %i.cbr, %i.cbl
  br i1 %i.cbs, label %bb.nj, label %bb.nk

bb.nj:                                            ; preds = %.noexc624
  %i.cbt = sub nuw nsw i64 %i.cbl, %i.cbr
  invoke void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cay, i64 noundef %i.cbt)
          to label %.noexc625 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc625:                                        ; preds = %bb.nj
  %.pre20.i.i = load ptr, ptr %i.cay, align 8, !tbaa !284
  %.pre21.i.i = load i32, ptr %i.t, align 4, !tbaa !27
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i96.i

bb.nk:                                            ; preds = %.noexc624
  %i.cbu = icmp ugt i64 %i.cbr, %i.cbl
  br i1 %i.cbu, label %bb.nl, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i96.i

bb.nl:                                            ; preds = %bb.nk
  %i.cbv = getelementptr inbounds nuw [4 x i8], ptr %i.cbn, i64 %i.cbl ; 2 uses
  %.not.i.i12.i.i = icmp eq ptr %i.cbm, %i.cbv
  br i1 %.not.i.i12.i.i, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i96.i, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i97.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i97.i:  ; preds = %bb.nl
  store ptr %i.cbv, ptr %i.caz, align 8, !tbaa !286
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i96.i

_ZNSt6vectorIfSaIfEE6resizeEm.exit.i96.i:         ; preds = %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i97.i, %bb.nl, %bb.nk, %.noexc625
  %i.cbw = phi i32 [ %.pre21.i.i, %.noexc625 ], [ %i.cbk, %bb.nk ], [ %i.cbk, %bb.nl ], [ %i.cbk, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i97.i ] ; 2 uses
  %i.cbx = phi ptr [ %.pre20.i.i, %.noexc625 ], [ %i.cbn, %bb.nk ], [ %i.cbn, %bb.nl ], [ %i.cbn, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i97.i ]
  %i.cby = icmp sgt i32 %i.cbw, 0
  br i1 %i.cby, label %.lr.ph.preheader.i13.i.i, label %_ZL13do_pull_groupPN3gmx11ISerializerEP12t_pull_group.exit.i

.lr.ph.preheader.i13.i.i:                         ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i96.i
  %wide.trip.count.i14.i.i = zext nneg i32 %i.cbw to i64
  br label %.lr.ph.i15.i.i

.lr.ph.i15.i.i:                                   ; preds = %.noexc626, %.lr.ph.preheader.i13.i.i
  %indvars.iv.i16.i.i = phi i64 [ 0, %.lr.ph.preheader.i13.i.i ], [ %indvars.iv.next.i17.i.i, %.noexc626 ] ; 2 uses
  %i.cbz = getelementptr inbounds nuw [4 x i8], ptr %i.cbx, i64 %indvars.iv.i16.i.i
  %i.cca = load ptr, ptr %0, align 8, !tbaa !33
  %i.ccb = getelementptr inbounds nuw i8, ptr %i.cca, i64 96
  %i.ccc = load ptr, ptr %i.ccb, align 8
  invoke void %i.ccc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.cbz)
          to label %.noexc626 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !599

.noexc626:                                        ; preds = %.lr.ph.i15.i.i
  %indvars.iv.next.i17.i.i = add nuw nsw i64 %indvars.iv.i16.i.i, 1 ; 2 uses
  %exitcond.not.i18.i.i = icmp eq i64 %indvars.iv.next.i17.i.i, %wide.trip.count.i14.i.i
  br i1 %exitcond.not.i18.i.i, label %_ZL13do_pull_groupPN3gmx11ISerializerEP12t_pull_group.exit.i, label %.lr.ph.i15.i.i, !llvm.loop !1

_ZL13do_pull_groupPN3gmx11ISerializerEP12t_pull_group.exit.i: ; preds = %.noexc626, %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i96.i
  %i.ccd = getelementptr inbounds nuw i8, ptr %i.bzt, i64 48
  %i.cce = load ptr, ptr %0, align 8, !tbaa !33
  %i.ccf = getelementptr inbounds nuw i8, ptr %i.cce, i64 56
  %i.ccg = load ptr, ptr %i.ccf, align 8
  invoke void %i.ccg(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ccd)
          to label %.noexc627 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !599

.noexc627:                                        ; preds = %_ZL13do_pull_groupPN3gmx11ISerializerEP12t_pull_group.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #26
  %indvars.iv.next.i582 = add nuw nsw i64 %indvars.iv.i581, 1 ; 2 uses
  %i.cch = load i32, ptr %i.bqd, align 8, !tbaa !751
  %i.cci = sext i32 %i.cch to i64
  %i.ccj = icmp slt i64 %indvars.iv.next.i582, %i.cci
  br i1 %i.ccj, label %.lr.ph.i580, label %.preheader.i, !llvm.loop !601

bb.nm:                                            ; preds = %bb.od, %.lr.ph126.i
  %indvars.iv130.i = phi i64 [ 0, %.lr.ph126.i ], [ %indvars.iv.next131.i, %bb.od ] ; 4 uses
  %i.cck = load ptr, ptr %i.btx, align 8, !tbaa !322
  %i.ccl = getelementptr inbounds nuw [176 x i8], ptr %i.cck, i64 %indvars.iv130.i ; 32 uses
  br i1 %i.bzn, label %bb.nn, label %bb.nw

bb.nn:                                            ; preds = %bb.nm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #26
  %i.ccm = load i32, ptr %i.ccl, align 4, !tbaa !757
  store i32 %i.ccm, ptr %i.r, align 4, !tbaa !27
  %i.ccn = load ptr, ptr %0, align 8, !tbaa !33
  %i.cco = getelementptr inbounds nuw i8, ptr %i.ccn, i64 56
  %i.ccp = load ptr, ptr %i.cco, align 8
  invoke void %i.ccp(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.r)
          to label %.noexc628 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !599

.noexc628:                                        ; preds = %bb.nn
  %i.ccq = load i32, ptr %i.r, align 4, !tbaa !27 ; 2 uses
  store i32 %i.ccq, ptr %i.ccl, align 4, !tbaa !757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #26
  br i1 %i.bzq, label %bb.no, label %bb.nq

bb.no:                                            ; preds = %.noexc628
  %i.ccr = icmp eq i32 %i.ccq, 5
  %i.ccs = getelementptr inbounds nuw i8, ptr %i.ccl, i64 8 ; 2 uses
  br i1 %i.ccr, label %bb.np, label %.noexc629.sink.split

bb.np:                                            ; preds = %bb.no
  %i.cct = load ptr, ptr %0, align 8, !tbaa !33
  %i.ccu = getelementptr inbounds nuw i8, ptr %i.cct, i64 136
  %i.ccv = load ptr, ptr %i.ccu, align 8
  invoke void %i.ccv(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ccs)
          to label %.noexc629 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !599

bb.nq:                                            ; preds = %.noexc628
  %i.ccw = load ptr, ptr %0, align 8, !tbaa !33
  %i.ccx = getelementptr inbounds nuw i8, ptr %i.ccw, i64 16
  %i.ccy = load ptr, ptr %i.ccx, align 8
  %i.ccz = invoke noundef zeroext i1 %i.ccy(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %.noexc630 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !599

.noexc630:                                        ; preds = %bb.nq
  br i1 %i.ccz, label %bb.nr, label %.noexc629

bb.nr:                                            ; preds = %.noexc630
  %i.cda = getelementptr inbounds nuw i8, ptr %i.ccl, i64 8
  br label %.noexc629.sink.split

.noexc629.sink.split:                             ; preds = %bb.no, %bb.nr
  %.sink.in = phi ptr [ %i.cda, %bb.nr ], [ %i.ccs, %bb.no ]
  %i.cdb = getelementptr inbounds nuw i8, ptr %i.ccl, i64 16
  store i64 0, ptr %i.cdb, align 8, !tbaa !31
  %.sink = load ptr, ptr %.sink.in, align 8, !tbaa !25
  store i8 0, ptr %.sink, align 1, !tbaa !26
  br label %.noexc629

.noexc629:                                        ; preds = %.noexc629.sink.split, %bb.np, %.noexc630
  %i.cdc = getelementptr inbounds nuw i8, ptr %i.ccl, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #26
  %i.cdd = load i32, ptr %i.cdc, align 4, !tbaa !758
  store i32 %i.cdd, ptr %i.q, align 4, !tbaa !27
  %i.cde = load ptr, ptr %0, align 8, !tbaa !33
  %i.cdf = getelementptr inbounds nuw i8, ptr %i.cde, i64 56
  %i.cdg = load ptr, ptr %i.cdf, align 8
  invoke void %i.cdg(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.q)
          to label %.noexc631 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !599

.noexc631:                                        ; preds = %.noexc629
  %i.cdh = load i32, ptr %i.q, align 4, !tbaa !27
  store i32 %i.cdh, ptr %i.cdc, align 4, !tbaa !758
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #26
  %i.cdi = getelementptr inbounds nuw i8, ptr %i.ccl, i64 88 ; 4 uses
  %i.cdj = load ptr, ptr %0, align 8, !tbaa !33
  %i.cdk = getelementptr inbounds nuw i8, ptr %i.cdj, i64 56
  %i.cdl = load ptr, ptr %i.cdk, align 8
  invoke void %i.cdl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.cdi)
          to label %.noexc632 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !599

.noexc632:                                        ; preds = %.noexc631
  %i.cdm = load i32, ptr %i.cdi, align 8, !tbaa !759 ; 4 uses
  %i.cdn = icmp slt i32 %i.cdm, 7
  br i1 %i.cdn, label %bb.ns, label %bb.nt

bb.ns:                                            ; preds = %.noexc632
  %i.cdo = getelementptr inbounds nuw i8, ptr %i.ccl, i64 92
  %i.cdp = icmp sgt i32 %i.cdm, 0
  br i1 %i.cdp, label %.lr.ph.preheader.i.i108.i, label %_ZN3gmx11ISerializer10doIntArrayEPii.exit.i107.i

.lr.ph.preheader.i.i108.i:                        ; preds = %bb.ns
  %wide.trip.count.i.i109.i = zext nneg i32 %i.cdm to i64
  br label %.lr.ph.i.i110.i

.lr.ph.i.i110.i:                                  ; preds = %.noexc633, %.lr.ph.preheader.i.i108.i
  %indvars.iv.i.i111.i = phi i64 [ 0, %.lr.ph.preheader.i.i108.i ], [ %indvars.iv.next.i.i112.i, %.noexc633 ] ; 2 uses
  %i.cdq = getelementptr inbounds nuw [4 x i8], ptr %i.cdo, i64 %indvars.iv.i.i111.i
  %i.cdr = load ptr, ptr %0, align 8, !tbaa !33
  %i.cds = getelementptr inbounds nuw i8, ptr %i.cdr, i64 56
  %i.cdt = load ptr, ptr %i.cds, align 8
  invoke void %i.cdt(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.cdq)
          to label %.noexc633 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !599

.noexc633:                                        ; preds = %.lr.ph.i.i110.i
  %indvars.iv.next.i.i112.i = add nuw nsw i64 %indvars.iv.i.i111.i, 1 ; 2 uses
  %exitcond.not.i.i113.i = icmp eq i64 %indvars.iv.next.i.i112.i, %wide.trip.count.i.i109.i
  br i1 %exitcond.not.i.i113.i, label %_ZN3gmx11ISerializer10doIntArrayEPii.exit.i107.i, label %.lr.ph.i.i110.i, !llvm.loop !3

bb.nt:                                            ; preds = %.noexc632
  %i.cdu = zext nneg i32 %i.cdm to i64
  %i.cdv = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.12, i32 noundef 402, i64 noundef range(i64 -2147483648, 2147483648) %i.cdu, i64 noundef 4)
          to label %.noexc634 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc634:                                        ; preds = %bb.nt
  %i.cdw = load i32, ptr %i.cdi, align 8, !tbaa !759 ; 2 uses
  %i.cdx = icmp sgt i32 %i.cdw, 0
  br i1 %i.cdx, label %.lr.ph.preheader.i70.i.i, label %_ZN3gmx11ISerializer10doIntArrayEPii.exit76.i.i

.lr.ph.preheader.i70.i.i:                         ; preds = %.noexc634
  %wide.trip.count.i71.i.i = zext nneg i32 %i.cdw to i64
  br label %.lr.ph.i72.i.i

.lr.ph.i72.i.i:                                   ; preds = %.noexc635, %.lr.ph.preheader.i70.i.i
  %indvars.iv.i73.i.i = phi i64 [ 0, %.lr.ph.preheader.i70.i.i ], [ %indvars.iv.next.i74.i.i, %.noexc635 ] ; 2 uses
  %i.cdy = getelementptr inbounds nuw [4 x i8], ptr %i.cdv, i64 %indvars.iv.i73.i.i
  %i.cdz = load ptr, ptr %0, align 8, !tbaa !33
  %i.cea = getelementptr inbounds nuw i8, ptr %i.cdz, i64 56
  %i.ceb = load ptr, ptr %i.cea, align 8
  invoke void %i.ceb(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.cdy)
          to label %.noexc635 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !599

.noexc635:                                        ; preds = %.lr.ph.i72.i.i
  %indvars.iv.next.i74.i.i = add nuw nsw i64 %indvars.iv.i73.i.i, 1 ; 2 uses
  %exitcond.not.i75.i.i = icmp eq i64 %indvars.iv.next.i74.i.i, %wide.trip.count.i71.i.i
  br i1 %exitcond.not.i75.i.i, label %_ZN3gmx11ISerializer10doIntArrayEPii.exit76.i.i, label %.lr.ph.i72.i.i, !llvm.loop !3

_ZN3gmx11ISerializer10doIntArrayEPii.exit76.i.i:  ; preds = %.noexc635, %.noexc634
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.12, i32 noundef 404, ptr noundef %i.cdv)
          to label %.noexc636 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc636:                                        ; preds = %_ZN3gmx11ISerializer10doIntArrayEPii.exit76.i.i
  store i32 0, ptr %i.cdi, align 8, !tbaa !759
  br label %_ZN3gmx11ISerializer10doIntArrayEPii.exit.i107.i

_ZN3gmx11ISerializer10doIntArrayEPii.exit.i107.i: ; preds = %.noexc633, %.noexc636, %bb.ns
  %i.cec = getelementptr inbounds nuw i8, ptr %i.ccl, i64 116
  %i.ced = load ptr, ptr %0, align 8, !tbaa !33
  %i.cee = getelementptr inbounds nuw i8, ptr %i.ced, i64 104
  %i.cef = load ptr, ptr %i.cee, align 8
  invoke void %i.cef(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.cec)
          to label %.noexc637 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !599

.noexc637:                                        ; preds = %_ZN3gmx11ISerializer10doIntArrayEPii.exit.i107.i
  br i1 %i.bzr, label %.noexc645.invoke, label %bb.nu

bb.nu:                                            ; preds = %.noexc637
  %i.ceg = load ptr, ptr %0, align 8, !tbaa !33
  %i.ceh = getelementptr inbounds nuw i8, ptr %i.ceg, i64 16
  %i.cei = load ptr, ptr %i.ceh, align 8
  %i.cej = invoke noundef zeroext i1 %i.cei(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %.noexc639 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !599

.noexc639:                                        ; preds = %bb.nu
  br i1 %i.cej, label %bb.nv, label %.noexc638

bb.nv:                                            ; preds = %.noexc639
  %i.cek = getelementptr inbounds nuw i8, ptr %i.ccl, i64 48
  %i.cel = getelementptr inbounds nuw i8, ptr %i.ccl, i64 56
  store i64 0, ptr %i.cel, align 8, !tbaa !31
  %i.cem = load ptr, ptr %i.cek, align 8, !tbaa !25
  store i8 0, ptr %i.cem, align 1, !tbaa !26
  br label %.noexc638

bb.nw:                                            ; preds = %bb.nm
  %i.cen = getelementptr inbounds nuw i8, ptr %i.ccl, i64 88 ; 3 uses
  store i32 2, ptr %i.cen, align 8, !tbaa !759
  %i.ceo = getelementptr inbounds nuw i8, ptr %i.ccl, i64 92
  %i.cep = load ptr, ptr %0, align 8, !tbaa !33
  %i.ceq = getelementptr inbounds nuw i8, ptr %i.cep, i64 56
  %i.cer = load ptr, ptr %i.ceq, align 8
  invoke void %i.cer(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ceo)
          to label %.noexc640 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !599

.noexc640:                                        ; preds = %bb.nw
  %i.ces = getelementptr inbounds nuw i8, ptr %i.ccl, i64 96
  %i.cet = load ptr, ptr %0, align 8, !tbaa !33
  %i.ceu = getelementptr inbounds nuw i8, ptr %i.cet, i64 56
  %i.cev = load ptr, ptr %i.ceu, align 8
  invoke void %i.cev(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ces)
          to label %.noexc641 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !599

.noexc641:                                        ; preds = %.noexc640
  br i1 %29, label %bb.nx, label %bb.nz

bb.nx:                                            ; preds = %.noexc641
  %i.cew = getelementptr inbounds nuw i8, ptr %i.ccl, i64 40 ; 3 uses
  %i.cex = load i32, ptr %i.cew, align 8, !tbaa !329
  %i.cey = icmp eq i32 %i.cex, 4
  %i.cez = select i1 %i.cey, i32 4, i32 2
  store i32 %i.cez, ptr %i.cen, align 8, !tbaa !759
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #26
  %i.cfa = load i32, ptr %i.ccl, align 8, !tbaa !757
  store i32 %i.cfa, ptr %i.p, align 4, !tbaa !27
  %i.cfb = load ptr, ptr %0, align 8, !tbaa !33
  %i.cfc = getelementptr inbounds nuw i8, ptr %i.cfb, i64 56
  %i.cfd = load ptr, ptr %i.cfc, align 8
  invoke void %i.cfd(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.p)
          to label %.noexc642 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !599

.noexc642:                                        ; preds = %bb.nx
  %i.cfe = load i32, ptr %i.p, align 4, !tbaa !27
  store i32 %i.cfe, ptr %i.ccl, align 8, !tbaa !757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #26
  %i.cff = load i32, ptr %i.cew, align 8, !tbaa !758
  store i32 %i.cff, ptr %i.o, align 4, !tbaa !27
  %i.cfg = load ptr, ptr %0, align 8, !tbaa !33
  %i.cfh = getelementptr inbounds nuw i8, ptr %i.cfg, i64 56
  %i.cfi = load ptr, ptr %i.cfh, align 8
  invoke void %i.cfi(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.o)
          to label %.noexc643 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !599

.noexc643:                                        ; preds = %.noexc642
  %i.cfj = load i32, ptr %i.o, align 4, !tbaa !27
  store i32 %i.cfj, ptr %i.cew, align 8, !tbaa !758
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #26
  %i.cfk = load i32, ptr %i.cen, align 8, !tbaa !759
  %i.cfl = icmp eq i32 %i.cfk, 4
  br i1 %i.cfl, label %bb.ny, label %.noexc645.invoke

bb.ny:                                            ; preds = %.noexc643
  %i.cfm = getelementptr inbounds nuw i8, ptr %i.ccl, i64 100
  %i.cfn = load ptr, ptr %0, align 8, !tbaa !33
  %i.cfo = getelementptr inbounds nuw i8, ptr %i.cfn, i64 56
  %i.cfp = load ptr, ptr %i.cfo, align 8
  invoke void %i.cfp(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.cfm)
          to label %.noexc644 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !599

.noexc644:                                        ; preds = %bb.ny
  %i.cfq = getelementptr inbounds nuw i8, ptr %i.ccl, i64 104
  %i.cfr = load ptr, ptr %0, align 8, !tbaa !33
  %i.cfs = getelementptr inbounds nuw i8, ptr %i.cfr, i64 56
  %i.cft = load ptr, ptr %i.cfs, align 8
  invoke void %i.cft(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.cfq)
          to label %.noexc645.invoke unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !599

.noexc645.invoke:                                 ; preds = %.noexc643, %.noexc644, %.noexc637
  %.sink2532 = phi i64 [ 48, %.noexc637 ], [ 116, %.noexc644 ], [ 116, %.noexc643 ]
  %.sink2531 = phi i64 [ 136, %.noexc637 ], [ 104, %.noexc644 ], [ 104, %.noexc643 ]
  %i.cfu = getelementptr inbounds nuw i8, ptr %i.ccl, i64 %.sink2532
  %i.cfv = load ptr, ptr %0, align 8, !tbaa !33
  %i.cfw = getelementptr inbounds nuw i8, ptr %i.cfv, i64 %.sink2531
  %i.cfx = load ptr, ptr %i.cfw, align 8
  invoke void %i.cfx(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.cfu)
          to label %.noexc638 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !599

bb.nz:                                            ; preds = %.noexc641
  store i32 %.013552298, ptr %i.ccl, align 8, !tbaa !330
  %i.cfy = getelementptr inbounds nuw i8, ptr %i.ccl, i64 40
  store i32 %.0120.i, ptr %i.cfy, align 8, !tbaa !329
  %i.cfz = getelementptr inbounds nuw i8, ptr %i.ccl, i64 116
  %i.cga = load i32, ptr %i.x, align 4, !tbaa !27
  store i32 %i.cga, ptr %i.cfz, align 4, !tbaa !27
  %i.cgb = load i32, ptr %i.bzo, align 4, !tbaa !27
  %i.cgc = getelementptr inbounds nuw i8, ptr %i.ccl, i64 120
  store i32 %i.cgb, ptr %i.cgc, align 8, !tbaa !27
  %i.cgd = load i32, ptr %i.bzp, align 4, !tbaa !27
  %i.cge = getelementptr inbounds nuw i8, ptr %i.ccl, i64 124
  store i32 %i.cgd, ptr %i.cge, align 4, !tbaa !27
  br label %.noexc638

.noexc638:                                        ; preds = %.noexc645.invoke, %bb.nz, %bb.nv, %.noexc639
  %i.cgf = getelementptr inbounds nuw i8, ptr %i.ccl, i64 128
  %i.cgg = load ptr, ptr %0, align 8, !tbaa !33
  %i.cgh = getelementptr inbounds nuw i8, ptr %i.cgg, i64 128
  %i.cgi = load ptr, ptr %i.cgh, align 8
  invoke void %i.cgi(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.cgf)
          to label %.noexc647 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !599

.noexc647:                                        ; preds = %.noexc638
  %i.cgj = getelementptr inbounds nuw i8, ptr %i.ccl, i64 140
  %i.cgk = load ptr, ptr %0, align 8, !tbaa !33
  %i.cgl = getelementptr inbounds nuw i8, ptr %i.cgk, i64 128
  %i.cgm = load ptr, ptr %i.cgl, align 8
  invoke void %i.cgm(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.cgj)
          to label %.noexc648 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !599

.noexc648:                                        ; preds = %.noexc647
  %i.cgn = getelementptr inbounds nuw i8, ptr %i.ccl, i64 152 ; 2 uses
  br i1 %29, label %bb.oa, label %bb.ob

bb.oa:                                            ; preds = %.noexc648
  %i.cgo = load ptr, ptr %0, align 8, !tbaa !33
  %i.cgp = getelementptr inbounds nuw i8, ptr %i.cgo, i64 24
  %i.cgq = load ptr, ptr %i.cgp, align 8
  invoke void %i.cgq(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.cgn)
          to label %_ZL13do_pull_coordPN3gmx11ISerializerEP12t_pull_coordi16PullingAlgorithm17PullGroupGeometryPi.exit.i unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !599

bb.ob:                                            ; preds = %.noexc648
  store i8 0, ptr %i.cgn, align 8, !tbaa !760
  br label %_ZL13do_pull_coordPN3gmx11ISerializerEP12t_pull_coordi16PullingAlgorithm17PullGroupGeometryPi.exit.i

_ZL13do_pull_coordPN3gmx11ISerializerEP12t_pull_coordi16PullingAlgorithm17PullGroupGeometryPi.exit.i: ; preds = %bb.oa, %bb.ob
  %i.cgr = getelementptr inbounds nuw i8, ptr %i.ccl, i64 156
  %i.cgs = load ptr, ptr %0, align 8, !tbaa !33
  %i.cgt = getelementptr inbounds nuw i8, ptr %i.cgs, i64 96
  %i.cgu = load ptr, ptr %i.cgt, align 8
  invoke void %i.cgu(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.cgr)
          to label %.noexc650 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !599

.noexc650:                                        ; preds = %_ZL13do_pull_coordPN3gmx11ISerializerEP12t_pull_coordi16PullingAlgorithm17PullGroupGeometryPi.exit.i
  %i.cgv = getelementptr inbounds nuw i8, ptr %i.ccl, i64 160
  %i.cgw = load ptr, ptr %0, align 8, !tbaa !33
  %i.cgx = getelementptr inbounds nuw i8, ptr %i.cgw, i64 96
  %i.cgy = load ptr, ptr %i.cgx, align 8
  invoke void %i.cgy(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.cgv)
          to label %.noexc651 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !599

.noexc651:                                        ; preds = %.noexc650
  %i.cgz = getelementptr inbounds nuw i8, ptr %i.ccl, i64 164
  %i.cha = load ptr, ptr %0, align 8, !tbaa !33
  %i.chb = getelementptr inbounds nuw i8, ptr %i.cha, i64 96
  %i.chc = load ptr, ptr %i.chb, align 8
  invoke void %i.chc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.cgz)
          to label %.noexc652 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !599

.noexc652:                                        ; preds = %.noexc651
  %i.chd = getelementptr inbounds nuw i8, ptr %i.ccl, i64 168
  %i.che = load ptr, ptr %0, align 8, !tbaa !33
  %i.chf = getelementptr inbounds nuw i8, ptr %i.che, i64 96
  %i.chg = load ptr, ptr %i.chf, align 8
  invoke void %i.chg(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.chd)
          to label %.noexc653 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !599

.noexc653:                                        ; preds = %.noexc652
  %i.chh = load ptr, ptr %0, align 8, !tbaa !33
  %i.chi = getelementptr inbounds nuw i8, ptr %i.chh, i64 16
  %i.chj = load ptr, ptr %i.chi, align 8
  %i.chk = invoke noundef zeroext i1 %i.chj(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %.noexc654 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !599

.noexc654:                                        ; preds = %.noexc653
  br i1 %i.chk, label %bb.oc, label %bb.od

bb.oc:                                            ; preds = %.noexc654
  %i.chl = load ptr, ptr %i.btx, align 8, !tbaa !322
  %i.chm = getelementptr inbounds nuw [176 x i8], ptr %i.chl, i64 %indvars.iv130.i
  %i.chn = getelementptr inbounds nuw i8, ptr %i.chm, i64 172
  %i.cho = trunc nuw nsw i64 %indvars.iv130.i to i32
  store i32 %i.cho, ptr %i.chn, align 4, !tbaa !331
  br label %bb.od

bb.od:                                            ; preds = %bb.oc, %.noexc654
  %indvars.iv.next131.i = add nuw nsw i64 %indvars.iv130.i, 1 ; 2 uses
  %i.chp = load i32, ptr %i.bqi, align 4, !tbaa !750
  %i.chq = sext i32 %i.chp to i64
  %i.chr = icmp slt i64 %indvars.iv.next131.i, %i.chq
  br i1 %i.chr, label %bb.nm, label %.loopexit.i579, !llvm.loop !602

.loopexit.i579:                                   ; preds = %bb.od, %.preheader.i, %._crit_edge.i
  %i.chs = icmp sgt i32 %2, 115
  br i1 %i.chs, label %bb.oe, label %_ZL7do_pullPN3gmx11ISerializerEP13pull_params_ti16PullingAlgorithm.exit

bb.oe:                                            ; preds = %.loopexit.i579
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #26
  %i.cht = getelementptr inbounds nuw i8, ptr %i.bqd, i64 28 ; 2 uses
  %i.chu = load i8, ptr %i.cht, align 4, !tbaa !761, !range !40, !noundef !41
  store i8 %i.chu, ptr %i.aa, align 1, !tbaa !105
  %i.chv = load ptr, ptr %0, align 8, !tbaa !33
  %i.chw = getelementptr inbounds nuw i8, ptr %i.chv, i64 24
  %i.chx = load ptr, ptr %i.chw, align 8
  invoke void %i.chx(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.aa)
          to label %.noexc655 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !599

.noexc655:                                        ; preds = %bb.oe
  %i.chy = load i8, ptr %i.aa, align 1, !tbaa !105, !range !40, !noundef !41
  store i8 %i.chy, ptr %i.cht, align 4, !tbaa !761
  %i.chz = getelementptr inbounds nuw i8, ptr %i.bqd, i64 29 ; 2 uses
  %i.cia = load i8, ptr %i.chz, align 1, !tbaa !762, !range !40, !noundef !41
  store i8 %i.cia, ptr %i.aa, align 1, !tbaa !105
  %i.cib = load ptr, ptr %0, align 8, !tbaa !33
  %i.cic = getelementptr inbounds nuw i8, ptr %i.cib, i64 24
  %i.cid = load ptr, ptr %i.cic, align 8
  invoke void %i.cid(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.aa)
          to label %.noexc656 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !599

.noexc656:                                        ; preds = %.noexc655
  %i.cie = load i8, ptr %i.aa, align 1, !tbaa !105, !range !40, !noundef !41
  store i8 %i.cie, ptr %i.chz, align 1, !tbaa !762
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #26
  br label %_ZL7do_pullPN3gmx11ISerializerEP13pull_params_ti16PullingAlgorithm.exit

_ZL7do_pullPN3gmx11ISerializerEP13pull_params_ti16PullingAlgorithm.exit: ; preds = %.loopexit.i579, %.noexc656
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #26
  br label %bb.of

bb.of:                                            ; preds = %._crit_edge1944, %_ZL7do_pullPN3gmx11ISerializerEP13pull_params_ti16PullingAlgorithm.exit
  %i.cif = icmp sgt i32 %2, 111
  br i1 %i.cif, label %bb.og, label %.thread2304

bb.og:                                            ; preds = %bb.of
  %i.cig = getelementptr inbounds nuw i8, ptr %1, i64 608 ; 2 uses
  %i.cih = load ptr, ptr %0, align 8, !tbaa !33
  %i.cii = getelementptr inbounds nuw i8, ptr %i.cih, i64 24
  %i.cij = load ptr, ptr %i.cii, align 8
  invoke void %i.cij(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.cig)
          to label %bb.oh unwind label %.loopexit.split-lp1382.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.oh:                                            ; preds = %bb.og
  %i.cik = load i8, ptr %i.cig, align 8, !tbaa !763, !range !40, !noundef !41
  %i.cil = trunc nuw i8 %i.cik to i1
  br i1 %i.cil, label %bb.oi, label %_ZNSt10unique_ptrIN3gmx9AwhParamsESt14default_deleteIS1_EED2Ev.exit.thread

bb.oi:                                            ; preds = %bb.oh
  %i.cim = load ptr, ptr %0, align 8, !tbaa !33
  %i.cin = getelementptr inbounds nuw i8, ptr %i.cim, i64 16
  %i.cio = load ptr, ptr %i.cin, align 8
  %i.cip = invoke noundef zeroext i1 %i.cio(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.oj unwind label %.loopexit.split-lp1382.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.oj:                                            ; preds = %bb.oi
  br i1 %i.cip, label %bb.ok, label %bb.oq

bb.ok:                                            ; preds = %bb.oj
  %i.ciq = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #31
          to label %.noexc657 unwind label %bb.op ; 3 uses

.noexc657:                                        ; preds = %bb.ok
  %i.cir = icmp samesign ult i32 %2, 138
  %i.cis = icmp samesign ult i32 %2, 132
  %i.cit = icmp samesign ult i32 %2, 130
  invoke void @_ZN3gmx9AwhParamsC1EPNS_11ISerializerEbbb(ptr noundef nonnull align 8 dereferenceable(49) %i.ciq, ptr noundef nonnull %0, i1 noundef zeroext %i.cit, i1 noundef zeroext %i.cis, i1 noundef zeroext %i.cir)
          to label %_ZSt11make_uniqueIN3gmx9AwhParamsEJRPNS0_11ISerializerEbbbEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.ol, !noalias !764

bb.ol:                                            ; preds = %.noexc657
  %i.ciu = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ciq, i64 noundef 56) #25, !noalias !764
  br label %.body

_ZSt11make_uniqueIN3gmx9AwhParamsEJRPNS0_11ISerializerEbbbEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %.noexc657
  %i.civ = getelementptr inbounds nuw i8, ptr %1, i64 616 ; 2 uses
  %i.ciw = load ptr, ptr %i.civ, align 8, !tbaa !765 ; 6 uses
  store ptr %i.ciq, ptr %i.civ, align 8, !tbaa !765
  %.not.i.i.i.i660 = icmp eq ptr %i.ciw, null
  br i1 %.not.i.i.i.i660, label %_ZNSt10unique_ptrIN3gmx9AwhParamsESt14default_deleteIS1_EED2Ev.exit.thread, label %bb.om

bb.om:                                            ; preds = %_ZSt11make_uniqueIN3gmx9AwhParamsEJRPNS0_11ISerializerEbbbEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.cix = load ptr, ptr %i.ciw, align 8, !tbaa !768 ; 3 uses
  %i.ciy = getelementptr inbounds nuw i8, ptr %i.ciw, i64 8
  %i.ciz = load ptr, ptr %i.ciy, align 8, !tbaa !769 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cix, %i.ciz
  br i1 %.not4.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN3gmx13AwhBiasParamsES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.om, %_ZSt8_DestroyIN3gmx13AwhBiasParamsEEvPT_.exit.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cjg, %_ZSt8_DestroyIN3gmx13AwhBiasParamsEEvPT_.exit.i.i.i.i.i.i.i.i.i ], [ %i.cix, %bb.om ] ; 3 uses
  %i.cja = load ptr, ptr %.05.i.i.i.i.i.i.i.i.i, align 8, !tbaa !772 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cja, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN3gmx13AwhBiasParamsEEvPT_.exit.i.i.i.i.i.i.i.i.i, label %bb.on

bb.on:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.cjb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i, i64 16
  %i.cjc = load ptr, ptr %i.cjb, align 8, !tbaa !773
  %i.cjd = ptrtoint ptr %i.cjc to i64
  %i.cje = ptrtoint ptr %i.cja to i64
  %i.cjf = sub i64 %i.cjd, %i.cje
  call void @_ZdlPvm(ptr noundef nonnull %i.cja, i64 noundef %i.cjf) #25
  br label %_ZSt8_DestroyIN3gmx13AwhBiasParamsEEvPT_.exit.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyIN3gmx13AwhBiasParamsEEvPT_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.on, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.cjg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i, i64 104 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i661 = icmp eq ptr %i.cjg, %i.ciz
  br i1 %.not.i.i.i.i.i.i.i.i.i661, label %_ZSt8_DestroyIPN3gmx13AwhBiasParamsES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !605

_ZSt8_DestroyIPN3gmx13AwhBiasParamsES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN3gmx13AwhBiasParamsEEvPT_.exit.i.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i = load ptr, ptr %i.ciw, align 8, !tbaa !768
  br label %_ZSt8_DestroyIPN3gmx13AwhBiasParamsES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i

_ZSt8_DestroyIPN3gmx13AwhBiasParamsES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN3gmx13AwhBiasParamsES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i, %bb.om
  %i.cjh = phi ptr [ %.pr.i.i.i.i.i.i.i, %_ZSt8_DestroyIPN3gmx13AwhBiasParamsES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i ], [ %i.cix, %bb.om ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i.i = icmp eq ptr %i.cjh, null
  br i1 %.not.i.i1.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN3gmx9AwhParamsEEclEPS1_.exit.i.i.i.i, label %bb.oo

bb.oo:                                            ; preds = %_ZSt8_DestroyIPN3gmx13AwhBiasParamsES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i
  %i.cji = getelementptr inbounds nuw i8, ptr %i.ciw, i64 16
  %i.cjj = load ptr, ptr %i.cji, align 8, !tbaa !774
  %i.cjk = ptrtoint ptr %i.cjj to i64
  %i.cjl = ptrtoint ptr %i.cjh to i64
  %i.cjm = sub i64 %i.cjk, %i.cjl
  call void @_ZdlPvm(ptr noundef nonnull %i.cjh, i64 noundef %i.cjm) #25
end_hunk_1
