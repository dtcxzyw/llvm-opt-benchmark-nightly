inline.NumInlined: 734
inline.NumDeleted: 191
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN10ExportGold12writeGeoFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEid:bb.a
  %i.pa = invoke noundef signext i8 %i.oz(ptr noundef nonnull align 8 dereferenceable(570) %i.os, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i650 unwind label %.loopexit1054, !inline_history !58

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i650: ; preds = %.noexc653, %bb.bh
  %.0.i.i.i651 = phi i8 [ %i.ow, %bb.bh ], [ %i.pa, %.noexc653 ]
  %i.pb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.om, i8 noundef signext %.0.i.i.i651)
          to label %.noexc655 unwind label %.loopexit1054

.noexc655:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i650
  %i.pc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.pb)
          to label %_ZNSolsEPFRSoS_E.exit299 unwind label %.loopexit1054 ; 0 uses

_ZNSolsEPFRSoS_E.exit299:                         ; preds = %.noexc655
  %i.pd = add nuw nsw i32 %.01761092, 1           ; 2 uses
  %i.pe = load i32, ptr %i.a, align 4, !tbaa !4
  %i.pf = icmp slt i32 %i.pd, %i.pe
  br i1 %i.pf, label %.lr.ph1093, label %.loopexit1053, !llvm.loop !95

.loopexit1054:                                    ; preds = %.lr.ph1093, %bb.bi, %.noexc653, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i650, %.noexc655
  %lpad.loopexit1056 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit524.thread

.loopexit.split-lp1055:                           ; preds = %bb.bg
  %lpad.loopexit.split-lp1057 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit524.thread

.loopexit1053:                                    ; preds = %_ZNSolsEPFRSoS_E.exit299, %_ZNSolsEPFRSoS_E.exit287, %.preheader1059, %.preheader1052, %bb.al
  %i.pg = load ptr, ptr %0, align 8, !tbaa !8     ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 232
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !70
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pg, i64 88
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !96 ; 8 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !71
  %i.po = load ptr, ptr %i.pl, align 8, !tbaa !17
  %i.pp = ptrtoint ptr %i.pn to i64
  %i.pq = ptrtoint ptr %i.po to i64
  %i.pr = sub i64 %i.pp, %i.pq
  %i.ps = lshr i64 %i.pr, 2                       ; 2 uses
  %i.pt = trunc i64 %i.ps to i32                  ; 5 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !71
  %i.px = load ptr, ptr %i.pu, align 8, !tbaa !17
  %i.py = ptrtoint ptr %i.pw to i64
  %i.pz = ptrtoint ptr %i.px to i64
  %i.qa = sub i64 %i.py, %i.pz
  %i.qb = lshr i64 %i.qa, 2                       ; 2 uses
  %i.qc = trunc i64 %i.qb to i32                  ; 5 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !71
  %i.qg = load ptr, ptr %i.qd, align 8, !tbaa !17
  %i.qh = ptrtoint ptr %i.qf to i64
  %i.qi = ptrtoint ptr %i.qg to i64
  %i.qj = sub i64 %i.qh, %i.qi                    ; 2 uses
  %i.qk = lshr i64 %i.qj, 2                       ; 2 uses
  %i.ql = trunc i64 %i.qk to i32                  ; 4 uses
  %i.qm = load i32, ptr @_ZN8Parallel4mypeE, align 4, !tbaa !4
  %i.qn = icmp eq i32 %i.qm, 0
  br i1 %i.qn, label %bb.bj, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit308

bb.bj:                                            ; preds = %.loopexit1053
  %i.qo = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.qp = load i32, ptr @_ZN8Parallel5numpeE, align 4, !tbaa !4
  %i.qq = sext i32 %i.qp to i64                   ; 7 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !71 ; 2 uses
  %i.qt = load ptr, ptr %i.qo, align 8, !tbaa !17 ; 2 uses
  %i.qu = ptrtoint ptr %i.qs to i64
  %i.qv = ptrtoint ptr %i.qt to i64
  %i.qw = sub i64 %i.qu, %i.qv
  %i.qx = ashr exact i64 %i.qw, 2                 ; 3 uses
  %i.qy = icmp ult i64 %i.qx, %i.qq
  br i1 %i.qy, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.qz = sub nuw nsw i64 %i.qq, %i.qx
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.qo, i64 noundef %i.qz)
          to label %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge unwind label %bb.bt

._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge:    ; preds = %bb.bk
  %.pre = load i32, ptr @_ZN8Parallel5numpeE, align 4, !tbaa !4
  %.pre1224 = sext i32 %.pre to i64
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.bl:                                            ; preds = %bb.bj
  %i.ra = icmp ugt i64 %i.qx, %i.qq
  br i1 %i.ra, label %bb.bm, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.bm:                                            ; preds = %bb.bl
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr %i.qt, i64 %i.qq ; 2 uses
  %.not.i.i = icmp eq ptr %i.qs, %i.rb
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.bm
  store ptr %i.rb, ptr %i.qr, align 8, !tbaa !71
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i, %bb.bm, %bb.bl
  %.pre-phi = phi i64 [ %.pre1224, %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge ], [ %i.qq, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ], [ %i.qq, %bb.bm ], [ %i.qq, %bb.bl ] ; 7 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !71 ; 2 uses
  %i.rf = load ptr, ptr %i.rc, align 8, !tbaa !17 ; 2 uses
  %i.rg = ptrtoint ptr %i.re to i64
  %i.rh = ptrtoint ptr %i.rf to i64
  %i.ri = sub i64 %i.rg, %i.rh
  %i.rj = ashr exact i64 %i.ri, 2                 ; 3 uses
  %i.rk = icmp ult i64 %i.rj, %.pre-phi
  br i1 %i.rk, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.rl = sub nuw nsw i64 %.pre-phi, %i.rj
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.rc, i64 noundef %i.rl)
          to label %._ZNSt6vectorIiSaIiEE6resizeEm.exit304_crit_edge unwind label %bb.bt

._ZNSt6vectorIiSaIiEE6resizeEm.exit304_crit_edge: ; preds = %bb.bn
  %.pre1223 = load i32, ptr @_ZN8Parallel5numpeE, align 4, !tbaa !4
  %.pre1225 = sext i32 %.pre1223 to i64
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit304

bb.bo:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.rm = icmp ugt i64 %i.rj, %.pre-phi
  br i1 %i.rm, label %bb.bp, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit304

bb.bp:                                            ; preds = %bb.bo
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %i.rf, i64 %.pre-phi ; 2 uses
  %.not.i.i301 = icmp eq ptr %i.re, %i.rn
  br i1 %.not.i.i301, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit304, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i302

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i302:     ; preds = %bb.bp
  store ptr %i.rn, ptr %i.rd, align 8, !tbaa !71
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit304

_ZNSt6vectorIiSaIiEE6resizeEm.exit304:            ; preds = %._ZNSt6vectorIiSaIiEE6resizeEm.exit304_crit_edge, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i302, %bb.bp, %bb.bo
  %.pre-phi1226 = phi i64 [ %.pre1225, %._ZNSt6vectorIiSaIiEE6resizeEm.exit304_crit_edge ], [ %.pre-phi, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i302 ], [ %.pre-phi, %bb.bp ], [ %.pre-phi, %bb.bo ] ; 4 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !71 ; 2 uses
  %i.rr = load ptr, ptr %i.ro, align 8, !tbaa !17 ; 2 uses
  %i.rs = ptrtoint ptr %i.rq to i64
  %i.rt = ptrtoint ptr %i.rr to i64
  %i.ru = sub i64 %i.rs, %i.rt
  %i.rv = ashr exact i64 %i.ru, 2                 ; 3 uses
  %i.rw = icmp ult i64 %i.rv, %.pre-phi1226
  br i1 %i.rw, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit304
  %i.rx = sub nuw nsw i64 %.pre-phi1226, %i.rv
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ro, i64 noundef %i.rx)
          to label %_ZNSt6vectorIiSaIiEE6resizeEm.exit308 unwind label %bb.bt

bb.br:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit304
  %i.ry = icmp ugt i64 %i.rv, %.pre-phi1226
  br i1 %i.ry, label %bb.bs, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit308

bb.bs:                                            ; preds = %bb.br
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %i.rr, i64 %.pre-phi1226 ; 2 uses
  %.not.i.i305 = icmp eq ptr %i.rq, %i.rz
  br i1 %.not.i.i305, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit308, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i306

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i306:     ; preds = %bb.bs
  store ptr %i.rz, ptr %i.rp, align 8, !tbaa !71
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit308

bb.bt:                                            ; preds = %bb.bq, %bb.bn, %bb.bk, %bb.bv, %bb.bu, %_ZNSt6vectorIiSaIiEE6resizeEm.exit308
  %i.sa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit524.thread

_ZNSt6vectorIiSaIiEE6resizeEm.exit308:            ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i306, %bb.bs, %bb.br, %bb.bq, %.loopexit1053
  %i.sb = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !17
  invoke void @_ZN8Parallel6gatherEiPi(i32 noundef %i.pt, ptr noundef nonnull %i.sc)
          to label %bb.bu unwind label %bb.bt

bb.bu:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit308
  %i.sd = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !17
  invoke void @_ZN8Parallel6gatherEiPi(i32 noundef %i.qc, ptr noundef nonnull %i.se)
          to label %bb.bv unwind label %bb.bt

bb.bv:                                            ; preds = %bb.bu
  %i.sf = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !17
  invoke void @_ZN8Parallel6gatherEiPi(i32 noundef %i.ql, ptr noundef nonnull %i.sg)
          to label %bb.bw unwind label %bb.bt

bb.bw:                                            ; preds = %bb.bv
  %i.sh = load ptr, ptr %i.sb, align 8, !tbaa !97 ; 6 uses
  %i.si = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !97 ; 3 uses
  %.not5.i = icmp eq ptr %i.sh, %i.sj
  br i1 %.not5.i, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit, label %.lr.ph.i309.preheader

.lr.ph.i309.preheader:                            ; preds = %bb.bw
  %6 = ptrtoint ptr %i.sj to i64
  %7 = ptrtoint ptr %i.sh to i64
  %i.sk = add i64 %6, -4
  %i.sl = sub i64 %i.sk, %7                       ; 2 uses
  %i.sm = lshr i64 %i.sl, 2
  %i.sn = add nuw nsw i64 %i.sm, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.sl, 28
  br i1 %min.iters.check, label %.lr.ph.i309.preheader1502, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i309.preheader
  %n.vec = and i64 %i.sn, 9223372036854775800     ; 3 uses
  %i.so = shl i64 %n.vec, 2
  %i.sp = getelementptr i8, ptr %i.sh, i64 %i.so
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ss, %vector.body ]
  %vec.phi1392 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.st, %vector.body ]
  %i.sq = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.sh, i64 %i.sq ; 2 uses
  %i.sr = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !4
  %wide.load1393 = load <4 x i32>, ptr %i.sr, align 4, !tbaa !4
  %i.ss = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.st = add <4 x i32> %wide.load1393, %vec.phi1392 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.su = icmp eq i64 %index.next, %n.vec
  br i1 %i.su, label %middle.block, label %vector.body, !llvm.loop !98

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.st, %i.ss
  %i.sv = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.sn, %n.vec
  br i1 %cmp.n, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit, label %.lr.ph.i309.preheader1502

.lr.ph.i309.preheader1502:                        ; preds = %.lr.ph.i309.preheader, %middle.block
  %.07.i.ph = phi i32 [ 0, %.lr.ph.i309.preheader ], [ %i.sv, %middle.block ]
  %.sroa.02.06.i.ph = phi ptr [ %i.sh, %.lr.ph.i309.preheader ], [ %i.sp, %middle.block ]
  br label %.lr.ph.i309

.lr.ph.i309:                                      ; preds = %.lr.ph.i309.preheader1502, %.lr.ph.i309
  %.07.i = phi i32 [ %i.sx, %.lr.ph.i309 ], [ %.07.i.ph, %.lr.ph.i309.preheader1502 ]
  %.sroa.02.06.i = phi ptr [ %i.sy, %.lr.ph.i309 ], [ %.sroa.02.06.i.ph, %.lr.ph.i309.preheader1502 ] ; 2 uses
  %i.sw = load i32, ptr %.sroa.02.06.i, align 4, !tbaa !4
  %i.sx = add nsw i32 %i.sw, %.07.i               ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 4 ; 2 uses
  %.not.i310 = icmp eq ptr %i.sy, %i.sj
  br i1 %.not.i310, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit, label %.lr.ph.i309, !llvm.loop !101

_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit: ; preds = %.lr.ph.i309, %middle.block, %bb.bw
  %.0.lcssa.i = phi i32 [ 0, %bb.bw ], [ %i.sv, %middle.block ], [ %i.sx, %.lr.ph.i309 ] ; 5 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 6 uses
  store i32 %.0.lcssa.i, ptr %i.sz, align 8, !tbaa !102
  %i.ta = load ptr, ptr %i.sd, align 8, !tbaa !97 ; 5 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.tc = load ptr, ptr %i.tb, align 8, !tbaa !97 ; 3 uses
  %.not5.i312 = icmp eq ptr %i.ta, %i.tc
  br i1 %.not5.i312, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit319, label %.lr.ph.i313.preheader

.lr.ph.i313.preheader:                            ; preds = %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit
  %8 = ptrtoint ptr %i.tc to i64
  %9 = ptrtoint ptr %i.ta to i64
  %i.td = add i64 %8, -4
  %i.te = sub i64 %i.td, %9                       ; 2 uses
  %i.tf = lshr i64 %i.te, 2
  %i.tg = add nuw nsw i64 %i.tf, 1                ; 2 uses
  %min.iters.check1395 = icmp ult i64 %i.te, 28
  br i1 %min.iters.check1395, label %.lr.ph.i313.preheader1498, label %vector.ph1396

vector.ph1396:                                    ; preds = %.lr.ph.i313.preheader
  %n.vec1398 = and i64 %i.tg, 9223372036854775800 ; 3 uses
  %i.th = shl i64 %n.vec1398, 2
  %i.ti = getelementptr i8, ptr %i.ta, i64 %i.th
  br label %vector.body1399

vector.body1399:                                  ; preds = %vector.body1399, %vector.ph1396
  %index1400 = phi i64 [ 0, %vector.ph1396 ], [ %index.next1406, %vector.body1399 ] ; 2 uses
  %vec.phi1401 = phi <4 x i32> [ zeroinitializer, %vector.ph1396 ], [ %i.tl, %vector.body1399 ]
  %vec.phi1402 = phi <4 x i32> [ zeroinitializer, %vector.ph1396 ], [ %i.tm, %vector.body1399 ]
  %i.tj = shl i64 %index1400, 2
  %next.gep1403 = getelementptr i8, ptr %i.ta, i64 %i.tj ; 2 uses
  %i.tk = getelementptr i8, ptr %next.gep1403, i64 16
  %wide.load1404 = load <4 x i32>, ptr %next.gep1403, align 4, !tbaa !4
  %wide.load1405 = load <4 x i32>, ptr %i.tk, align 4, !tbaa !4
  %i.tl = add <4 x i32> %wide.load1404, %vec.phi1401 ; 2 uses
  %i.tm = add <4 x i32> %wide.load1405, %vec.phi1402 ; 2 uses
  %index.next1406 = add nuw i64 %index1400, 8     ; 2 uses
  %i.tn = icmp eq i64 %index.next1406, %n.vec1398
  br i1 %i.tn, label %middle.block1407, label %vector.body1399, !llvm.loop !103

middle.block1407:                                 ; preds = %vector.body1399
  %bin.rdx1408 = add <4 x i32> %i.tm, %i.tl
  %i.to = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1408) ; 2 uses
  %cmp.n1409 = icmp eq i64 %i.tg, %n.vec1398
  br i1 %cmp.n1409, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit319, label %.lr.ph.i313.preheader1498

.lr.ph.i313.preheader1498:                        ; preds = %.lr.ph.i313.preheader, %middle.block1407
  %.07.i314.ph = phi i32 [ 0, %.lr.ph.i313.preheader ], [ %i.to, %middle.block1407 ]
  %.sroa.02.06.i315.ph = phi ptr [ %i.ta, %.lr.ph.i313.preheader ], [ %i.ti, %middle.block1407 ]
  br label %.lr.ph.i313

.lr.ph.i313:                                      ; preds = %.lr.ph.i313.preheader1498, %.lr.ph.i313
  %.07.i314 = phi i32 [ %i.tq, %.lr.ph.i313 ], [ %.07.i314.ph, %.lr.ph.i313.preheader1498 ]
  %.sroa.02.06.i315 = phi ptr [ %i.tr, %.lr.ph.i313 ], [ %.sroa.02.06.i315.ph, %.lr.ph.i313.preheader1498 ] ; 2 uses
  %i.tp = load i32, ptr %.sroa.02.06.i315, align 4, !tbaa !4
  %i.tq = add nsw i32 %i.tp, %.07.i314            ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i315, i64 4 ; 2 uses
  %.not.i316 = icmp eq ptr %i.tr, %i.tc
  br i1 %.not.i316, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit319, label %.lr.ph.i313, !llvm.loop !104

_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit319: ; preds = %.lr.ph.i313, %middle.block1407, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit
  %.0.lcssa.i318 = phi i32 [ 0, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit ], [ %i.to, %middle.block1407 ], [ %i.tq, %.lr.ph.i313 ]
  %i.ts = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 7 uses
  store i32 %.0.lcssa.i318, ptr %i.ts, align 4, !tbaa !105
  %i.tt = load ptr, ptr %i.sf, align 8, !tbaa !97 ; 5 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !97 ; 3 uses
  %.not5.i320 = icmp eq ptr %i.tt, %i.tv
  br i1 %.not5.i320, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit327, label %.lr.ph.i321.preheader

.lr.ph.i321.preheader:                            ; preds = %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit319
  %10 = ptrtoint ptr %i.tv to i64
  %11 = ptrtoint ptr %i.tt to i64
  %i.tw = add i64 %10, -4
  %i.tx = sub i64 %i.tw, %11                      ; 2 uses
  %i.ty = lshr i64 %i.tx, 2
  %i.tz = add nuw nsw i64 %i.ty, 1                ; 2 uses
  %min.iters.check1413 = icmp ult i64 %i.tx, 28
  br i1 %min.iters.check1413, label %.lr.ph.i321.preheader1494, label %vector.ph1414

vector.ph1414:                                    ; preds = %.lr.ph.i321.preheader
  %n.vec1416 = and i64 %i.tz, 9223372036854775800 ; 3 uses
  %i.ua = shl i64 %n.vec1416, 2
  %i.ub = getelementptr i8, ptr %i.tt, i64 %i.ua
  br label %vector.body1417

vector.body1417:                                  ; preds = %vector.body1417, %vector.ph1414
  %index1418 = phi i64 [ 0, %vector.ph1414 ], [ %index.next1424, %vector.body1417 ] ; 2 uses
  %vec.phi1419 = phi <4 x i32> [ zeroinitializer, %vector.ph1414 ], [ %i.ue, %vector.body1417 ]
  %vec.phi1420 = phi <4 x i32> [ zeroinitializer, %vector.ph1414 ], [ %i.uf, %vector.body1417 ]
  %i.uc = shl i64 %index1418, 2
  %next.gep1421 = getelementptr i8, ptr %i.tt, i64 %i.uc ; 2 uses
  %i.ud = getelementptr i8, ptr %next.gep1421, i64 16
  %wide.load1422 = load <4 x i32>, ptr %next.gep1421, align 4, !tbaa !4
  %wide.load1423 = load <4 x i32>, ptr %i.ud, align 4, !tbaa !4
  %i.ue = add <4 x i32> %wide.load1422, %vec.phi1419 ; 2 uses
  %i.uf = add <4 x i32> %wide.load1423, %vec.phi1420 ; 2 uses
  %index.next1424 = add nuw i64 %index1418, 8     ; 2 uses
  %i.ug = icmp eq i64 %index.next1424, %n.vec1416
  br i1 %i.ug, label %middle.block1425, label %vector.body1417, !llvm.loop !106

middle.block1425:                                 ; preds = %vector.body1417
  %bin.rdx1426 = add <4 x i32> %i.uf, %i.ue
  %i.uh = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1426) ; 2 uses
  %cmp.n1427 = icmp eq i64 %i.tz, %n.vec1416
  br i1 %cmp.n1427, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit327, label %.lr.ph.i321.preheader1494

.lr.ph.i321.preheader1494:                        ; preds = %.lr.ph.i321.preheader, %middle.block1425
  %.07.i322.ph = phi i32 [ 0, %.lr.ph.i321.preheader ], [ %i.uh, %middle.block1425 ]
  %.sroa.02.06.i323.ph = phi ptr [ %i.tt, %.lr.ph.i321.preheader ], [ %i.ub, %middle.block1425 ]
  br label %.lr.ph.i321

.lr.ph.i321:                                      ; preds = %.lr.ph.i321.preheader1494, %.lr.ph.i321
  %.07.i322 = phi i32 [ %i.uj, %.lr.ph.i321 ], [ %.07.i322.ph, %.lr.ph.i321.preheader1494 ]
  %.sroa.02.06.i323 = phi ptr [ %i.uk, %.lr.ph.i321 ], [ %.sroa.02.06.i323.ph, %.lr.ph.i321.preheader1494 ] ; 2 uses
  %i.ui = load i32, ptr %.sroa.02.06.i323, align 4, !tbaa !4
  %i.uj = add nsw i32 %i.ui, %.07.i322            ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i323, i64 4 ; 2 uses
  %.not.i324 = icmp eq ptr %i.uk, %i.tv
  br i1 %.not.i324, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit327, label %.lr.ph.i321, !llvm.loop !107

_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit327: ; preds = %.lr.ph.i321, %middle.block1425, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit319
  %.0.lcssa.i326 = phi i32 [ 0, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit319 ], [ %i.uh, %middle.block1425 ], [ %i.uj, %.lr.ph.i321 ]
  %i.ul = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 8 uses
  store i32 %.0.lcssa.i326, ptr %i.ul, align 8, !tbaa !108
  %i.um = load i32, ptr @_ZN8Parallel4mypeE, align 4, !tbaa !4
  %i.un = icmp eq i32 %i.um, 0
  %i.uo = load i32, ptr @_ZN8Parallel5numpeE, align 4
  %i.up = select i1 %i.un, i32 %i.uo, i32 0       ; 3 uses
  %i.uq = sext i32 %i.up to i64                   ; 3 uses
  %i.ur = icmp slt i32 %i.up, 0
  br i1 %i.ur, label %bb.bx, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i328

bb.bx:                                            ; preds = %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit327
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.33) #16
          to label %.noexc334 unwind label %bb.ce

.noexc334:                                        ; preds = %bb.bx
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i328: ; preds = %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit327
  %.not.i.i.i.i329 = icmp eq i32 %i.up, 0
  br i1 %.not.i.i.i.i329, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit336, label %bb.by

bb.by:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i328
  %i.us = shl nuw nsw i64 %i.uq, 2
  %i.ut = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.us) #18
          to label %.noexc335 unwind label %bb.ce ; 5 uses

.noexc335:                                        ; preds = %bb.by
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr %i.ut, i64 %i.uq ; 2 uses
  store i32 0, ptr %i.ut, align 4, !tbaa !4
  %i.uv = getelementptr i8, ptr %i.ut, i64 4      ; 3 uses
  %i.uw = add nsw i64 %i.uq, -1                   ; 2 uses
  %i.ux = icmp eq i64 %i.uw, 0
  br i1 %i.ux, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit336, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i330

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i330: ; preds = %.noexc335
  %.idx.i.i.i.i.i.i.i331 = shl nuw nsw i64 %i.uw, 2 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.uv, i8 0, i64 %.idx.i.i.i.i.i.i.i331, i1 false), !tbaa !4
  %i.uy = getelementptr inbounds nuw i8, ptr %i.uv, i64 %.idx.i.i.i.i.i.i.i331
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit336

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit336:            ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i330, %.noexc335, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i328
  %.sroa.17.0 = phi ptr [ %i.uu, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i330 ], [ %i.uu, %.noexc335 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i328 ] ; 2 uses
  %.sroa.0889.0 = phi ptr [ %i.ut, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i330 ], [ %i.ut, %.noexc335 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i328 ] ; 27 uses
  %.0.i.i.i.i.i332 = phi ptr [ %i.uy, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i330 ], [ %i.uv, %.noexc335 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i328 ] ; 3 uses
  %.0.i.i.i.i.i3321459 = ptrtoint ptr %.0.i.i.i.i.i332 to i64
  %.sroa.0889.01460 = ptrtoint ptr %.sroa.0889.0 to i64
  %.sroa.0889.01430 = ptrtoaddr ptr %.sroa.0889.0 to i64 ; 2 uses
  %i.uz = mul nsw i32 %i.pt, 3                    ; 2 uses
  %i.va = sext i32 %i.uz to i64                   ; 3 uses
  %i.vb = icmp slt i32 %i.pt, 0
  br i1 %i.vb, label %bb.bz, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i337

bb.bz:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit336
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.33) #16
          to label %.noexc343 unwind label %bb.cf

.noexc343:                                        ; preds = %bb.bz
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i337: ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit336
  %.not.i.i.i.i338 = icmp eq i32 %i.pt, 0         ; 2 uses
  br i1 %.not.i.i.i.i338, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit345, label %bb.ca

bb.ca:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i337
  %i.vc = shl nuw nsw i64 %i.va, 2
  %i.vd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vc) #18
          to label %.noexc344 unwind label %bb.cf ; 5 uses

.noexc344:                                        ; preds = %bb.ca
  %i.ve = getelementptr inbounds nuw [4 x i8], ptr %i.vd, i64 %i.va ; 2 uses
  store i32 0, ptr %i.vd, align 4, !tbaa !4
  %i.vf = add nsw i64 %i.va, -1                   ; 2 uses
  %i.vg = icmp eq i64 %i.vf, 0
  br i1 %i.vg, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit345, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i339

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i339: ; preds = %.noexc344
  %i.vh = getelementptr i8, ptr %i.vd, i64 4
  %.idx.i.i.i.i.i.i.i340 = shl nuw nsw i64 %i.vf, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.vh, i8 0, i64 %.idx.i.i.i.i.i.i.i340, i1 false), !tbaa !4
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit345

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit345:            ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i339, %.noexc344, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i337
  %.sroa.0881.0 = phi ptr [ %i.vd, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i339 ], [ %i.vd, %.noexc344 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i337 ] ; 9 uses
  %.sroa.11886.0 = phi ptr [ %i.ve, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i339 ], [ %i.ve, %.noexc344 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i337 ] ; 2 uses
  %i.vi = sext i32 %.0.lcssa.i to i64             ; 4 uses
  %i.vj = icmp slt i32 %.0.lcssa.i, 0
  br i1 %i.vj, label %bb.cb, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i346

bb.cb:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit345
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.33) #16
          to label %.noexc352 unwind label %bb.cg

.noexc352:                                        ; preds = %bb.cb
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i346: ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit345
  %.not.i.i.i.i347 = icmp ne i32 %.0.lcssa.i, 0
  call void @llvm.assume(i1 %.not.i.i.i.i347)
  %i.vk = shl nuw nsw i64 %i.vi, 2
  %i.vl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vk) #18
          to label %.noexc353 unwind label %bb.cg ; 6 uses

.noexc353:                                        ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i346
  store i32 0, ptr %i.vl, align 4, !tbaa !4
  %i.vm = add nsw i64 %i.vi, -1                   ; 2 uses
  %i.vn = icmp eq i64 %i.vm, 0
  br i1 %i.vn, label %bb.cc, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i348

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i348: ; preds = %.noexc353
  %i.vo = getelementptr i8, ptr %i.vl, i64 4
  %.idx.i.i.i.i.i.i.i349 = shl nuw nsw i64 %i.vm, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.vo, i8 0, i64 %.idx.i.i.i.i.i.i.i349, i1 false), !tbaa !4
  br label %bb.cc

bb.cc:                                            ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i348, %.noexc353
  %i.vp = mul nuw nsw i32 %.0.lcssa.i, 3
  %i.vq = zext nneg i32 %i.vp to i64              ; 3 uses
  %i.vr = shl nuw nsw i64 %i.vq, 2                ; 2 uses
  %i.vs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vr) #18
          to label %.noexc362 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit518.thread ; 8 uses

.noexc362:                                        ; preds = %bb.cc
  store i32 0, ptr %i.vs, align 4, !tbaa !4
  %i.vt = getelementptr i8, ptr %i.vs, i64 4
  %.idx.i.i.i.i.i.i.i358 = add nsw i64 %i.vr, -4
  call void @llvm.memset.p0.i64(ptr align 4 %i.vt, i8 0, i64 %.idx.i.i.i.i.i.i.i358, i1 false), !tbaa !4
  %i.vu = load ptr, ptr %i.pl, align 8, !tbaa !17
  invoke void @_ZN8Parallel7gathervIiEEvPKT_iPS1_PKi(ptr noundef nonnull %i.vu, i32 noundef %i.pt, ptr noundef nonnull %i.vl, ptr noundef nonnull %i.sh)
          to label %bb.cd unwind label %bb.ch

bb.cd:                                            ; preds = %.noexc362
  %i.vv = load i32, ptr @_ZN8Parallel4mypeE, align 4, !tbaa !4
  %i.vw = icmp eq i32 %i.vv, 0
  br i1 %i.vw, label %.preheader1050, label %.loopexit1051

.preheader1050:                                   ; preds = %bb.cd
  %i.vx = load i32, ptr @_ZN8Parallel5numpeE, align 4, !tbaa !4 ; 3 uses
  %i.vy = icmp sgt i32 %i.vx, 0
  br i1 %i.vy, label %.lr.ph1095, label %.loopexit1051

.lr.ph1095:                                       ; preds = %.preheader1050
  %i.vz = load ptr, ptr %i.sb, align 8, !tbaa !17 ; 7 uses
  %wide.trip.count = zext nneg i32 %i.vx to i64   ; 5 uses
  %min.iters.check1432 = icmp ult i32 %i.vx, 8
  %i.wa = ptrtoaddr ptr %i.vz to i64
  %i.wb = sub i64 %i.wa, %.sroa.0889.01430
  %diff.check = icmp ugt i64 %i.wb, -32
  %or.cond = select i1 %min.iters.check1432, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph1431.preheader, label %vector.ph1433

vector.ph1433:                                    ; preds = %.lr.ph1095
  %n.vec1435 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vector.body1436

vector.body1436:                                  ; preds = %vector.body1436, %vector.ph1433
  %index1437 = phi i64 [ 0, %vector.ph1433 ], [ %index.next1440, %vector.body1436 ] ; 3 uses
  %i.wc = getelementptr inbounds nuw [4 x i8], ptr %i.vz, i64 %index1437 ; 2 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 16
  %wide.load1438 = load <4 x i32>, ptr %i.wc, align 4, !tbaa !4
  %wide.load1439 = load <4 x i32>, ptr %i.wd, align 4, !tbaa !4
  %i.we = mul nsw <4 x i32> %wide.load1438, splat (i32 3)
  %i.wf = mul nsw <4 x i32> %wide.load1439, splat (i32 3)
  %i.wg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0889.0, i64 %index1437 ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 16
  store <4 x i32> %i.we, ptr %i.wg, align 4, !tbaa !4
  store <4 x i32> %i.wf, ptr %i.wh, align 4, !tbaa !4
  %index.next1440 = add nuw i64 %index1437, 8     ; 2 uses
  %i.wi = icmp eq i64 %index.next1440, %n.vec1435
  br i1 %i.wi, label %middle.block1441, label %vector.body1436, !llvm.loop !109

middle.block1441:                                 ; preds = %vector.body1436
  %cmp.n1442 = icmp eq i64 %n.vec1435, %wide.trip.count
  br i1 %cmp.n1442, label %.loopexit1051, label %scalar.ph1431.preheader

scalar.ph1431.preheader:                          ; preds = %.lr.ph1095, %middle.block1441
  %indvars.iv1156.ph = phi i64 [ 0, %.lr.ph1095 ], [ %n.vec1435, %middle.block1441 ] ; 3 uses
  %xtraiter1508 = and i64 %wide.trip.count, 3     ; 2 uses
  %lcmp.mod1509.not = icmp eq i64 %xtraiter1508, 0
  br i1 %lcmp.mod1509.not, label %scalar.ph1431.prol.loopexit, label %scalar.ph1431.prol

scalar.ph1431.prol:                               ; preds = %scalar.ph1431.preheader, %scalar.ph1431.prol
  %indvars.iv1156.prol = phi i64 [ %indvars.iv.next1157.prol, %scalar.ph1431.prol ], [ %indvars.iv1156.ph, %scalar.ph1431.preheader ] ; 3 uses
  %prol.iter1510 = phi i64 [ %prol.iter1510.next, %scalar.ph1431.prol ], [ 0, %scalar.ph1431.preheader ]
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %i.vz, i64 %indvars.iv1156.prol
  %i.wk = load i32, ptr %i.wj, align 4, !tbaa !4
  %i.wl = mul nsw i32 %i.wk, 3
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0889.0, i64 %indvars.iv1156.prol
  store i32 %i.wl, ptr %i.wm, align 4, !tbaa !4
  %indvars.iv.next1157.prol = add nuw nsw i64 %indvars.iv1156.prol, 1 ; 2 uses
  %prol.iter1510.next = add i64 %prol.iter1510, 1 ; 2 uses
  %prol.iter1510.cmp.not = icmp eq i64 %prol.iter1510.next, %xtraiter1508
  br i1 %prol.iter1510.cmp.not, label %scalar.ph1431.prol.loopexit, label %scalar.ph1431.prol, !llvm.loop !110

scalar.ph1431.prol.loopexit:                      ; preds = %scalar.ph1431.prol, %scalar.ph1431.preheader
  %indvars.iv1156.unr = phi i64 [ %indvars.iv1156.ph, %scalar.ph1431.preheader ], [ %indvars.iv.next1157.prol, %scalar.ph1431.prol ]
  %i.wn = sub nsw i64 %indvars.iv1156.ph, %wide.trip.count
  %i.wo = icmp ugt i64 %i.wn, -4
  br i1 %i.wo, label %.loopexit1051, label %scalar.ph1431

bb.ce:                                            ; preds = %bb.by, %bb.bx
  %i.wp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit524.thread

bb.cf:                                            ; preds = %bb.ca, %bb.bz
  %i.wq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit522

bb.cg:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i346, %bb.cb
  %i.wr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit520

_ZNSt6vectorIiSaIiEED2Ev.exit518.thread:          ; preds = %bb.cc
  %i.ws = landingpad { ptr, i32 }
          cleanup
  br label %bb.fy

bb.ch:                                            ; preds = %.invoke1364, %.noexc677, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i672, %.noexc675, %bb.cr, %.noexc666, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i661, %.noexc664, %bb.cn, %bb.cl, %bb.co, %._crit_edge, %.noexc362
  %i.wt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit516.thread1337

scalar.ph1431:                                    ; preds = %scalar.ph1431.prol.loopexit, %scalar.ph1431
  %indvars.iv1156 = phi i64 [ %indvars.iv.next1157.3, %scalar.ph1431 ], [ %indvars.iv1156.unr, %scalar.ph1431.prol.loopexit ] ; 6 uses
  %i.wu = getelementptr inbounds nuw [4 x i8], ptr %i.vz, i64 %indvars.iv1156
  %i.wv = load i32, ptr %i.wu, align 4, !tbaa !4
  %i.ww = mul nsw i32 %i.wv, 3
  %i.wx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0889.0, i64 %indvars.iv1156
  store i32 %i.ww, ptr %i.wx, align 4, !tbaa !4
  %indvars.iv.next1157 = add nuw nsw i64 %indvars.iv1156, 1 ; 2 uses
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %i.vz, i64 %indvars.iv.next1157
  %i.wz = load i32, ptr %i.wy, align 4, !tbaa !4
  %i.xa = mul nsw i32 %i.wz, 3
  %i.xb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0889.0, i64 %indvars.iv.next1157
  store i32 %i.xa, ptr %i.xb, align 4, !tbaa !4
  %indvars.iv.next1157.1 = add nuw nsw i64 %indvars.iv1156, 2 ; 2 uses
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr %i.vz, i64 %indvars.iv.next1157.1
  %i.xd = load i32, ptr %i.xc, align 4, !tbaa !4
  %i.xe = mul nsw i32 %i.xd, 3
  %i.xf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0889.0, i64 %indvars.iv.next1157.1
  store i32 %i.xe, ptr %i.xf, align 4, !tbaa !4
  %indvars.iv.next1157.2 = add nuw nsw i64 %indvars.iv1156, 3 ; 2 uses
  %i.xg = getelementptr inbounds nuw [4 x i8], ptr %i.vz, i64 %indvars.iv.next1157.2
  %i.xh = load i32, ptr %i.xg, align 4, !tbaa !4
  %i.xi = mul nsw i32 %i.xh, 3
  %i.xj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0889.0, i64 %indvars.iv.next1157.2
  store i32 %i.xi, ptr %i.xj, align 4, !tbaa !4
  %indvars.iv.next1157.3 = add nuw nsw i64 %indvars.iv1156, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next1157.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit1051, label %scalar.ph1431, !llvm.loop !111

.loopexit1051:                                    ; preds = %scalar.ph1431.prol.loopexit, %scalar.ph1431, %middle.block1441, %.preheader1050, %bb.cd
  br i1 %.not.i.i.i.i338, label %._crit_edge, label %.lr.ph1098

.lr.ph1098:                                       ; preds = %.loopexit1051
  %i.xk = load ptr, ptr %i.pl, align 8, !tbaa !17
  %i.xl = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.xm = load ptr, ptr %i.xl, align 8, !tbaa !17
  %i.xn = load i32, ptr %i.b, align 4, !tbaa !4   ; 3 uses
  %wide.trip.count1166 = and i64 %i.ps, 2147483647
  br label %bb.ci

._crit_edge:                                      ; preds = %bb.ci, %.loopexit1051
  invoke void @_ZN8Parallel7gathervIiEEvPKT_iPS1_PKi(ptr noundef nonnull %.sroa.0881.0, i32 noundef %i.uz, ptr noundef nonnull %i.vs, ptr noundef nonnull %.sroa.0889.0)
          to label %bb.cj unwind label %bb.ch

bb.ci:                                            ; preds = %.lr.ph1098, %bb.ci
  %indvars.iv1163 = phi i64 [ 0, %.lr.ph1098 ], [ %indvars.iv.next1164, %bb.ci ] ; 3 uses
  %i.xo = getelementptr inbounds nuw [4 x i8], ptr %i.xk, i64 %indvars.iv1163
  %i.xp = load i32, ptr %i.xo, align 4, !tbaa !4
  %i.xq = sext i32 %i.xp to i64
  %i.xr = getelementptr inbounds nuw [4 x i8], ptr %i.xm, i64 %i.xq
  %i.xs = load i32, ptr %i.xr, align 4, !tbaa !4
  %i.xt = mul nuw nsw i64 %indvars.iv1163, 3      ; 3 uses
  %i.xu = sext i32 %i.xs to i64                   ; 3 uses
  %i.xv = getelementptr inbounds [4 x i8], ptr %i.pk, i64 %i.xu
  %i.xw = load i32, ptr %i.xv, align 4, !tbaa !4
  %i.xx = add nsw i32 %i.xn, %i.xw
  %i.xy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0881.0, i64 %i.xt
  store i32 %i.xx, ptr %i.xy, align 4, !tbaa !4
  %i.xz = getelementptr [4 x i8], ptr %i.pk, i64 %i.xu
  %i.ya = getelementptr i8, ptr %i.xz, i64 4
  %i.yb = load i32, ptr %i.ya, align 4, !tbaa !4
  %i.yc = add nsw i32 %i.xn, %i.yb
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0881.0, i64 %i.xt
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 4
  store i32 %i.yc, ptr %i.ye, align 4, !tbaa !4
  %i.yf = getelementptr [4 x i8], ptr %i.pk, i64 %i.xu
  %i.yg = getelementptr i8, ptr %i.yf, i64 8
  %i.yh = load i32, ptr %i.yg, align 4, !tbaa !4
  %i.yi = add nsw i32 %i.xn, %i.yh
  %i.yj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0881.0, i64 %i.xt
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yj, i64 8
  store i32 %i.yi, ptr %i.yk, align 4, !tbaa !4
  %indvars.iv.next1164 = add nuw nsw i64 %indvars.iv1163, 1 ; 2 uses
  %exitcond1167.not = icmp eq i64 %indvars.iv.next1164, %wide.trip.count1166
  br i1 %exitcond1167.not, label %._crit_edge, label %bb.ci, !llvm.loop !112

bb.cj:                                            ; preds = %._crit_edge
  %i.yl = load i32, ptr @_ZN8Parallel4mypeE, align 4, !tbaa !4
  %i.ym = icmp eq i32 %i.yl, 0
  br i1 %i.ym, label %bb.ck, label %.loopexit1039

bb.ck:                                            ; preds = %bb.cj
  %i.yn = load i32, ptr %i.sz, align 8, !tbaa !102
  %i.yo = icmp sgt i32 %i.yn, 0
  br i1 %i.yo, label %bb.cl, label %.loopexit1039

bb.cl:                                            ; preds = %bb.ck
  %i.yp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.27, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit365 unwind label %bb.ch ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit365: ; preds = %bb.cl
  %i.yq = load ptr, ptr %4, align 8, !tbaa !33
  %i.yr = getelementptr i8, ptr %i.yq, i64 -24
  %i.ys = load i64, ptr %i.yr, align 8
  %i.yt = getelementptr inbounds i8, ptr %4, i64 %i.ys
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 240
  %i.yv = load ptr, ptr %i.yu, align 8, !tbaa !45 ; 6 uses
  %.not.i.i.i658 = icmp eq ptr %i.yv, null
  br i1 %.not.i.i.i658, label %.invoke1364, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i659

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i659: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit365
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 56
  %i.yx = load i8, ptr %i.yw, align 8, !tbaa !53
  %.not.i1.i.i660 = icmp eq i8 %i.yx, 0
  br i1 %.not.i1.i.i660, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i659
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yv, i64 67
  %i.yz = load i8, ptr %i.yy, align 1, !tbaa !25
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i661

bb.cn:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i659
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.yv)
          to label %.noexc664 unwind label %bb.ch

.noexc664:                                        ; preds = %bb.cn
  %i.za = load ptr, ptr %i.yv, align 8, !tbaa !33
  %i.zb = getelementptr inbounds nuw i8, ptr %i.za, i64 48
  %i.zc = load ptr, ptr %i.zb, align 8
  %i.zd = invoke noundef signext i8 %i.zc(ptr noundef nonnull align 8 dereferenceable(570) %i.yv, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i661 unwind label %bb.ch, !inline_history !58

end_hunk_0
begin_hunk_1_@_ZN10ExportGold12writeGeoFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEid:bb.a
  %i.abp = load i32, ptr %i.abo, align 4, !tbaa !4
  %i.abq = add nsw i32 %i.abp, 1
  %i.abr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %i.abq)
          to label %bb.cz unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit516.thread ; 0 uses

bb.cw:                                            ; preds = %bb.db
  invoke void @_ZSt16__throw_bad_castv() #16
          to label %.noexc696 unwind label %.loopexit.split-lp1041

.noexc696:                                        ; preds = %bb.cw
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i692: ; preds = %bb.db
  %i.abs = getelementptr inbounds nuw i8, ptr %i.adb, i64 56
  %i.abt = load i8, ptr %i.abs, align 8, !tbaa !53
  %.not.i1.i.i693 = icmp eq i8 %i.abt, 0
  br i1 %.not.i1.i.i693, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i692
  %i.abu = getelementptr inbounds nuw i8, ptr %i.adb, i64 67
  %i.abv = load i8, ptr %i.abu, align 1, !tbaa !25
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i694

bb.cy:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i692
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.adb)
          to label %.noexc697 unwind label %.loopexit1040

.noexc697:                                        ; preds = %bb.cy
  %i.abw = load ptr, ptr %i.adb, align 8, !tbaa !33
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abw, i64 48
  %i.aby = load ptr, ptr %i.abx, align 8
  %i.abz = invoke noundef signext i8 %i.aby(ptr noundef nonnull align 8 dereferenceable(570) %i.adb, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i694 unwind label %.loopexit1040, !inline_history !58

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i694: ; preds = %.noexc697, %bb.cx
  %.0.i.i.i695 = phi i8 [ %i.abv, %bb.cx ], [ %i.abz, %.noexc697 ]
  %i.aca = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %4, i8 noundef signext %.0.i.i.i695)
          to label %.noexc699 unwind label %.loopexit1040

.noexc699:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i694
  %i.acb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aca)
          to label %_ZNSolsEPFRSoS_E.exit373 unwind label %.loopexit1040 ; 0 uses

bb.cz:                                            ; preds = %.preheader1037
  %i.acc = load ptr, ptr %4, align 8, !tbaa !33
  %i.acd = getelementptr i8, ptr %i.acc, i64 -24
  %i.ace = load i64, ptr %i.acd, align 8
  %i.acf = getelementptr inbounds i8, ptr %4, i64 %i.ace
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 16
  store i64 10, ptr %i.acg, align 8, !tbaa !82
  %i.ach = getelementptr inbounds nuw [4 x i8], ptr %i.vs, i64 %i.abi
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ach, i64 4
  %i.acj = load i32, ptr %i.aci, align 4, !tbaa !4
  %i.ack = add nsw i32 %i.acj, 1
  %i.acl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %i.ack)
          to label %bb.da unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit516.thread ; 0 uses

bb.da:                                            ; preds = %bb.cz
  %i.acm = load ptr, ptr %4, align 8, !tbaa !33
  %i.acn = getelementptr i8, ptr %i.acm, i64 -24
  %i.aco = load i64, ptr %i.acn, align 8
  %i.acp = getelementptr inbounds i8, ptr %4, i64 %i.aco
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acp, i64 16
  store i64 10, ptr %i.acq, align 8, !tbaa !82
  %i.acr = getelementptr inbounds nuw [4 x i8], ptr %i.vs, i64 %i.abi
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acr, i64 8
  %i.act = load i32, ptr %i.acs, align 4, !tbaa !4
  %i.acu = add nsw i32 %i.act, 1
  %i.acv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %i.acu)
          to label %bb.db unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit516.thread ; 0 uses

bb.db:                                            ; preds = %bb.da
  %i.acw = load ptr, ptr %4, align 8, !tbaa !33
  %i.acx = getelementptr i8, ptr %i.acw, i64 -24
  %i.acy = load i64, ptr %i.acx, align 8
  %i.acz = getelementptr inbounds i8, ptr %4, i64 %i.acy
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acz, i64 240
  %i.adb = load ptr, ptr %i.ada, align 8, !tbaa !45 ; 6 uses
  %.not.i.i.i691 = icmp eq ptr %i.adb, null
  br i1 %.not.i.i.i691, label %bb.cw, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i692

_ZNSt6vectorIiSaIiEED2Ev.exit516.thread:          ; preds = %bb.da, %bb.cz, %.preheader1037
  %i.adc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit516.thread1337

_ZNSolsEPFRSoS_E.exit373:                         ; preds = %.noexc699
  %indvars.iv.next1176 = add nuw nsw i64 %indvars.iv1175, 1 ; 2 uses
  %i.add = load i32, ptr %i.sz, align 8, !tbaa !102
  %i.ade = sext i32 %i.add to i64
  %i.adf = icmp slt i64 %indvars.iv.next1176, %i.ade
  br i1 %i.adf, label %.preheader1037, label %.loopexit1039, !llvm.loop !114

.loopexit1040:                                    ; preds = %bb.cy, %.noexc697, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i694, %.noexc699
  %lpad.loopexit1042 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit516.thread1337

.loopexit.split-lp1041:                           ; preds = %bb.cw
  %lpad.loopexit.split-lp1043 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit516.thread1337

.loopexit1039:                                    ; preds = %_ZNSolsEPFRSoS_E.exit373, %_ZNSolsEPFRSoS_E.exit369.preheader, %.preheader1038, %bb.ck, %bb.cj
  %i.adg = shl nsw i32 %i.qc, 2                   ; 2 uses
  %i.adh = sext i32 %i.adg to i64                 ; 2 uses
  %i.adi = icmp slt i32 %i.qc, 0
  br i1 %i.adi, label %bb.dc, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i374

bb.dc:                                            ; preds = %.loopexit1039
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.33) #16
          to label %.noexc380 unwind label %bb.dh

.noexc380:                                        ; preds = %bb.dc
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i374: ; preds = %.loopexit1039
  %.not.i.i.i.i375 = icmp eq i32 %i.qc, 0         ; 2 uses
  br i1 %.not.i.i.i.i375, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit382, label %bb.dd

bb.dd:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i374
  %i.adj = shl nuw nsw i64 %i.adh, 2              ; 2 uses
  %i.adk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.adj) #18
          to label %.noexc381 unwind label %bb.dh ; 4 uses

.noexc381:                                        ; preds = %bb.dd
  %i.adl = getelementptr inbounds nuw [4 x i8], ptr %i.adk, i64 %i.adh
  store i32 0, ptr %i.adk, align 4, !tbaa !4
  %i.adm = getelementptr i8, ptr %i.adk, i64 4
  %.idx.i.i.i.i.i.i.i377 = add nsw i64 %i.adj, -4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.adm, i8 0, i64 %.idx.i.i.i.i.i.i.i377, i1 false), !tbaa !4
  %i.adn = ptrtoint ptr %i.adl to i64
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit382

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit382:            ; preds = %.noexc381, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i374
  %.sroa.0857.0 = phi ptr [ %i.adk, %.noexc381 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i374 ] ; 10 uses
  %.sroa.11862.0 = phi i64 [ %i.adn, %.noexc381 ], [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i374 ] ; 2 uses
  %i.ado = load i32, ptr %i.ts, align 4, !tbaa !105 ; 4 uses
  %i.adp = sext i32 %i.ado to i64                 ; 4 uses
  %i.adq = icmp slt i32 %i.ado, 0
  br i1 %i.adq, label %bb.de, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i383

bb.de:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit382
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.33) #16
          to label %.noexc389 unwind label %bb.di

.noexc389:                                        ; preds = %bb.de
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i383: ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit382
  %.not.i.i.i.i384 = icmp ne i32 %i.ado, 0
  call void @llvm.assume(i1 %.not.i.i.i.i384)
  %i.adr = shl nuw nsw i64 %i.adp, 2
  %i.ads = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.adr) #18
          to label %.noexc390 unwind label %bb.di ; 6 uses

.noexc390:                                        ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i383
  store i32 0, ptr %i.ads, align 4, !tbaa !4
  %i.adt = add nsw i64 %i.adp, -1                 ; 2 uses
  %i.adu = icmp eq i64 %i.adt, 0
  br i1 %i.adu, label %bb.df, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i385

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i385: ; preds = %.noexc390
  %i.adv = getelementptr i8, ptr %i.ads, i64 4
  %.idx.i.i.i.i.i.i.i386 = shl nuw nsw i64 %i.adt, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.adv, i8 0, i64 %.idx.i.i.i.i.i.i.i386, i1 false), !tbaa !4
  br label %bb.df

bb.df:                                            ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i385, %.noexc390
  %i.adw = shl nsw i32 %i.ado, 2
  %i.adx = zext nneg i32 %i.adw to i64            ; 3 uses
  %i.ady = shl nuw nsw i64 %i.adx, 2              ; 2 uses
  %i.adz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ady) #18
          to label %.noexc399 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit512.thread ; 9 uses

.noexc399:                                        ; preds = %bb.df
  store i32 0, ptr %i.adz, align 4, !tbaa !4
  %i.aea = getelementptr i8, ptr %i.adz, i64 4
  %.idx.i.i.i.i.i.i.i395 = add nsw i64 %i.ady, -4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.aea, i8 0, i64 %.idx.i.i.i.i.i.i.i395, i1 false), !tbaa !4
  %i.aeb = load ptr, ptr %i.pu, align 8, !tbaa !17
  %i.aec = load ptr, ptr %i.sd, align 8, !tbaa !17
  invoke void @_ZN8Parallel7gathervIiEEvPKT_iPS1_PKi(ptr noundef nonnull %i.aeb, i32 noundef %i.qc, ptr noundef nonnull %i.ads, ptr noundef nonnull %i.aec)
          to label %bb.dg unwind label %bb.dj

bb.dg:                                            ; preds = %.noexc399
  %i.aed = load i32, ptr @_ZN8Parallel4mypeE, align 4, !tbaa !4
  %i.aee = icmp eq i32 %i.aed, 0
  br i1 %i.aee, label %.preheader1035, label %.loopexit1036

.preheader1035:                                   ; preds = %bb.dg
  %i.aef = load i32, ptr @_ZN8Parallel5numpeE, align 4, !tbaa !4 ; 3 uses
  %i.aeg = icmp sgt i32 %i.aef, 0
  br i1 %i.aeg, label %.lr.ph1104, label %.loopexit1036

.lr.ph1104:                                       ; preds = %.preheader1035
  %i.aeh = load ptr, ptr %i.sd, align 8, !tbaa !17 ; 7 uses
  %wide.trip.count1181 = zext nneg i32 %i.aef to i64 ; 5 uses
  %min.iters.check1447 = icmp ult i32 %i.aef, 8
  %i.aei = ptrtoaddr ptr %i.aeh to i64
  %i.aej = sub i64 %i.aei, %.sroa.0889.01430
  %diff.check1445 = icmp ugt i64 %i.aej, -32
  %or.cond1483 = select i1 %min.iters.check1447, i1 true, i1 %diff.check1445
  br i1 %or.cond1483, label %scalar.ph1446.preheader, label %vector.ph1448

vector.ph1448:                                    ; preds = %.lr.ph1104
  %n.vec1450 = and i64 %wide.trip.count1181, 2147483640 ; 3 uses
  br label %vector.body1451

vector.body1451:                                  ; preds = %vector.body1451, %vector.ph1448
  %index1452 = phi i64 [ 0, %vector.ph1448 ], [ %index.next1455, %vector.body1451 ] ; 3 uses
  %i.aek = getelementptr inbounds nuw [4 x i8], ptr %i.aeh, i64 %index1452 ; 2 uses
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aek, i64 16
  %wide.load1453 = load <4 x i32>, ptr %i.aek, align 4, !tbaa !4
  %wide.load1454 = load <4 x i32>, ptr %i.ael, align 4, !tbaa !4
  %i.aem = shl nsw <4 x i32> %wide.load1453, splat (i32 2)
  %i.aen = shl nsw <4 x i32> %wide.load1454, splat (i32 2)
  %i.aeo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0889.0, i64 %index1452 ; 2 uses
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aeo, i64 16
  store <4 x i32> %i.aem, ptr %i.aeo, align 4, !tbaa !4
  store <4 x i32> %i.aen, ptr %i.aep, align 4, !tbaa !4
  %index.next1455 = add nuw i64 %index1452, 8     ; 2 uses
  %i.aeq = icmp eq i64 %index.next1455, %n.vec1450
  br i1 %i.aeq, label %middle.block1456, label %vector.body1451, !llvm.loop !115

middle.block1456:                                 ; preds = %vector.body1451
  %cmp.n1457 = icmp eq i64 %n.vec1450, %wide.trip.count1181
  br i1 %cmp.n1457, label %.loopexit1036, label %scalar.ph1446.preheader

scalar.ph1446.preheader:                          ; preds = %.lr.ph1104, %middle.block1456
  %indvars.iv1178.ph = phi i64 [ 0, %.lr.ph1104 ], [ %n.vec1450, %middle.block1456 ] ; 3 uses
  %xtraiter1511 = and i64 %wide.trip.count1181, 3 ; 2 uses
  %lcmp.mod1512.not = icmp eq i64 %xtraiter1511, 0
  br i1 %lcmp.mod1512.not, label %scalar.ph1446.prol.loopexit, label %scalar.ph1446.prol

scalar.ph1446.prol:                               ; preds = %scalar.ph1446.preheader, %scalar.ph1446.prol
  %indvars.iv1178.prol = phi i64 [ %indvars.iv.next1179.prol, %scalar.ph1446.prol ], [ %indvars.iv1178.ph, %scalar.ph1446.preheader ] ; 3 uses
  %prol.iter1513 = phi i64 [ %prol.iter1513.next, %scalar.ph1446.prol ], [ 0, %scalar.ph1446.preheader ]
  %i.aer = getelementptr inbounds nuw [4 x i8], ptr %i.aeh, i64 %indvars.iv1178.prol
  %i.aes = load i32, ptr %i.aer, align 4, !tbaa !4
  %i.aet = shl nsw i32 %i.aes, 2
  %i.aeu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0889.0, i64 %indvars.iv1178.prol
  store i32 %i.aet, ptr %i.aeu, align 4, !tbaa !4
  %indvars.iv.next1179.prol = add nuw nsw i64 %indvars.iv1178.prol, 1 ; 2 uses
  %prol.iter1513.next = add i64 %prol.iter1513, 1 ; 2 uses
  %prol.iter1513.cmp.not = icmp eq i64 %prol.iter1513.next, %xtraiter1511
  br i1 %prol.iter1513.cmp.not, label %scalar.ph1446.prol.loopexit, label %scalar.ph1446.prol, !llvm.loop !116

scalar.ph1446.prol.loopexit:                      ; preds = %scalar.ph1446.prol, %scalar.ph1446.preheader
  %indvars.iv1178.unr = phi i64 [ %indvars.iv1178.ph, %scalar.ph1446.preheader ], [ %indvars.iv.next1179.prol, %scalar.ph1446.prol ]
  %i.aev = sub nsw i64 %indvars.iv1178.ph, %wide.trip.count1181
  %i.aew = icmp ugt i64 %i.aev, -4
  br i1 %i.aew, label %.loopexit1036, label %scalar.ph1446

bb.dh:                                            ; preds = %bb.dd, %bb.dc
  %i.aex = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit516.thread1337

bb.di:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i383, %bb.de
  %i.aey = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit514

_ZNSt6vectorIiSaIiEED2Ev.exit512.thread:          ; preds = %bb.df
  %i.aez = landingpad { ptr, i32 }
          cleanup
  br label %bb.fw

bb.dj:                                            ; preds = %.invoke1366, %.noexc721, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i716, %.noexc719, %bb.dt, %.noexc710, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i705, %.noexc708, %bb.dp, %bb.dn, %bb.dq, %._crit_edge1109, %.noexc399
  %i.afa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit510.thread1327

scalar.ph1446:                                    ; preds = %scalar.ph1446.prol.loopexit, %scalar.ph1446
  %indvars.iv1178 = phi i64 [ %indvars.iv.next1179.3, %scalar.ph1446 ], [ %indvars.iv1178.unr, %scalar.ph1446.prol.loopexit ] ; 6 uses
  %i.afb = getelementptr inbounds nuw [4 x i8], ptr %i.aeh, i64 %indvars.iv1178
  %i.afc = load i32, ptr %i.afb, align 4, !tbaa !4
  %i.afd = shl nsw i32 %i.afc, 2
  %i.afe = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0889.0, i64 %indvars.iv1178
  store i32 %i.afd, ptr %i.afe, align 4, !tbaa !4
  %indvars.iv.next1179 = add nuw nsw i64 %indvars.iv1178, 1 ; 2 uses
  %i.aff = getelementptr inbounds nuw [4 x i8], ptr %i.aeh, i64 %indvars.iv.next1179
  %i.afg = load i32, ptr %i.aff, align 4, !tbaa !4
  %i.afh = shl nsw i32 %i.afg, 2
  %i.afi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0889.0, i64 %indvars.iv.next1179
  store i32 %i.afh, ptr %i.afi, align 4, !tbaa !4
  %indvars.iv.next1179.1 = add nuw nsw i64 %indvars.iv1178, 2 ; 2 uses
  %i.afj = getelementptr inbounds nuw [4 x i8], ptr %i.aeh, i64 %indvars.iv.next1179.1
  %i.afk = load i32, ptr %i.afj, align 4, !tbaa !4
  %i.afl = shl nsw i32 %i.afk, 2
  %i.afm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0889.0, i64 %indvars.iv.next1179.1
  store i32 %i.afl, ptr %i.afm, align 4, !tbaa !4
  %indvars.iv.next1179.2 = add nuw nsw i64 %indvars.iv1178, 3 ; 2 uses
  %i.afn = getelementptr inbounds nuw [4 x i8], ptr %i.aeh, i64 %indvars.iv.next1179.2
  %i.afo = load i32, ptr %i.afn, align 4, !tbaa !4
  %i.afp = shl nsw i32 %i.afo, 2
  %i.afq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0889.0, i64 %indvars.iv.next1179.2
  store i32 %i.afp, ptr %i.afq, align 4, !tbaa !4
  %indvars.iv.next1179.3 = add nuw nsw i64 %indvars.iv1178, 4 ; 2 uses
  %exitcond1182.not.3 = icmp eq i64 %indvars.iv.next1179.3, %wide.trip.count1181
  br i1 %exitcond1182.not.3, label %.loopexit1036, label %scalar.ph1446, !llvm.loop !117

.loopexit1036:                                    ; preds = %scalar.ph1446.prol.loopexit, %scalar.ph1446, %middle.block1456, %.preheader1035, %bb.dg
  br i1 %.not.i.i.i.i375, label %._crit_edge1109, label %.lr.ph1108

.lr.ph1108:                                       ; preds = %.loopexit1036
  %i.afr = load ptr, ptr %i.pu, align 8, !tbaa !17
  %i.afs = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aft = load ptr, ptr %i.afs, align 8, !tbaa !17
  %i.afu = load i32, ptr %i.b, align 4, !tbaa !4  ; 4 uses
  %wide.trip.count1191 = and i64 %i.qb, 2147483647
  br label %bb.dk

._crit_edge1109:                                  ; preds = %bb.dk, %.loopexit1036
  invoke void @_ZN8Parallel7gathervIiEEvPKT_iPS1_PKi(ptr noundef nonnull %.sroa.0857.0, i32 noundef %i.adg, ptr noundef nonnull %i.adz, ptr noundef nonnull %.sroa.0889.0)
          to label %bb.dl unwind label %bb.dj

bb.dk:                                            ; preds = %.lr.ph1108, %bb.dk
  %indvars.iv1187 = phi i64 [ 0, %.lr.ph1108 ], [ %indvars.iv.next1188, %bb.dk ] ; 3 uses
  %i.afv = getelementptr inbounds nuw [4 x i8], ptr %i.afr, i64 %indvars.iv1187
  %i.afw = load i32, ptr %i.afv, align 4, !tbaa !4
  %i.afx = sext i32 %i.afw to i64
  %i.afy = getelementptr inbounds nuw [4 x i8], ptr %i.aft, i64 %i.afx
  %i.afz = load i32, ptr %i.afy, align 4, !tbaa !4
  %i.aga = shl nsw i64 %indvars.iv1187, 2         ; 4 uses
  %i.agb = sext i32 %i.afz to i64                 ; 4 uses
  %i.agc = getelementptr inbounds [4 x i8], ptr %i.pk, i64 %i.agb
  %i.agd = load i32, ptr %i.agc, align 4, !tbaa !4
  %i.age = add nsw i32 %i.afu, %i.agd
  %i.agf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0857.0, i64 %i.aga
  store i32 %i.age, ptr %i.agf, align 4, !tbaa !4
  %i.agg = getelementptr [4 x i8], ptr %i.pk, i64 %i.agb
  %i.agh = getelementptr i8, ptr %i.agg, i64 4
  %i.agi = load i32, ptr %i.agh, align 4, !tbaa !4
  %i.agj = add nsw i32 %i.afu, %i.agi
  %i.agk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0857.0, i64 %i.aga
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agk, i64 4
  store i32 %i.agj, ptr %i.agl, align 4, !tbaa !4
  %i.agm = getelementptr [4 x i8], ptr %i.pk, i64 %i.agb
  %i.agn = getelementptr i8, ptr %i.agm, i64 8
  %i.ago = load i32, ptr %i.agn, align 4, !tbaa !4
  %i.agp = add nsw i32 %i.afu, %i.ago
  %i.agq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0857.0, i64 %i.aga
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agq, i64 8
  store i32 %i.agp, ptr %i.agr, align 4, !tbaa !4
  %i.ags = getelementptr [4 x i8], ptr %i.pk, i64 %i.agb
  %i.agt = getelementptr i8, ptr %i.ags, i64 12
  %i.agu = load i32, ptr %i.agt, align 4, !tbaa !4
  %i.agv = add nsw i32 %i.afu, %i.agu
  %i.agw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0857.0, i64 %i.aga
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agw, i64 12
  store i32 %i.agv, ptr %i.agx, align 4, !tbaa !4
  %indvars.iv.next1188 = add nuw nsw i64 %indvars.iv1187, 1 ; 2 uses
  %exitcond1192.not = icmp eq i64 %indvars.iv.next1188, %wide.trip.count1191
  br i1 %exitcond1192.not, label %._crit_edge1109, label %bb.dk, !llvm.loop !118

bb.dl:                                            ; preds = %._crit_edge1109
  %i.agy = load i32, ptr @_ZN8Parallel4mypeE, align 4, !tbaa !4
  %i.agz = icmp eq i32 %i.agy, 0
  br i1 %i.agz, label %bb.dm, label %.loopexit1024

bb.dm:                                            ; preds = %bb.dl
  %i.aha = load i32, ptr %i.ts, align 4, !tbaa !105
  %i.ahb = icmp sgt i32 %i.aha, 0
  br i1 %i.ahb, label %bb.dn, label %.loopexit1024

bb.dn:                                            ; preds = %bb.dm
  %i.ahc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.28, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit402 unwind label %bb.dj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit402: ; preds = %bb.dn
  %i.ahd = load ptr, ptr %4, align 8, !tbaa !33
  %i.ahe = getelementptr i8, ptr %i.ahd, i64 -24
  %i.ahf = load i64, ptr %i.ahe, align 8
  %i.ahg = getelementptr inbounds i8, ptr %4, i64 %i.ahf
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahg, i64 240
  %i.ahi = load ptr, ptr %i.ahh, align 8, !tbaa !45 ; 6 uses
  %.not.i.i.i702 = icmp eq ptr %i.ahi, null
  br i1 %.not.i.i.i702, label %.invoke1366, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i703

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i703: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit402
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahi, i64 56
  %i.ahk = load i8, ptr %i.ahj, align 8, !tbaa !53
  %.not.i1.i.i704 = icmp eq i8 %i.ahk, 0
  br i1 %.not.i1.i.i704, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i703
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahi, i64 67
  %i.ahm = load i8, ptr %i.ahl, align 1, !tbaa !25
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i705

bb.dp:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i703
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ahi)
          to label %.noexc708 unwind label %bb.dj

.noexc708:                                        ; preds = %bb.dp
  %i.ahn = load ptr, ptr %i.ahi, align 8, !tbaa !33
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahn, i64 48
  %i.ahp = load ptr, ptr %i.aho, align 8
  %i.ahq = invoke noundef signext i8 %i.ahp(ptr noundef nonnull align 8 dereferenceable(570) %i.ahi, i8 noundef signext 10)
end_hunk_1
