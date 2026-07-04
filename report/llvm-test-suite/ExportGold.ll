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
end_hunk_0
begin_hunk_1_@_ZN10ExportGold12writeGeoFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEid:bb.a
_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i422: ; preds = %.noexc427
  %i.ams = getelementptr i8, ptr %i.amp, i64 4
  %.idx.i.i.i.i.i.i.i423 = shl nuw nsw i64 %i.amq, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ams, i8 0, i64 %.idx.i.i.i.i.i.i.i423, i1 false), !tbaa !4
  br label %bb.ei

bb.ei:                                            ; preds = %.noexc427, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i422
  %i.amt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.amo) #18
          to label %.noexc436 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit506.thread1322 ; 7 uses

.noexc436:                                        ; preds = %bb.ei
  store i32 0, ptr %i.amt, align 4, !tbaa !4
  br i1 %i.amr, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit437, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i431

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i431: ; preds = %.noexc436
  %i.amu = getelementptr i8, ptr %i.amt, i64 4
  %.idx.i.i.i.i.i.i.i432 = shl nuw nsw i64 %i.amq, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.amu, i8 0, i64 %.idx.i.i.i.i.i.i.i432, i1 false), !tbaa !4
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit437

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit437:            ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i431, %.noexc436
  %i.amv = load ptr, ptr %i.qd, align 8, !tbaa !17
  %i.amw = load ptr, ptr %i.sf, align 8, !tbaa !17
  invoke void @_ZN8Parallel7gathervIiEEvPKT_iPS1_PKi(ptr noundef nonnull %i.amv, i32 noundef %i.ql, ptr noundef nonnull %i.amp, ptr noundef nonnull %i.amw)
          to label %.preheader1021 unwind label %bb.ek

.preheader1021:                                   ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit437
  %i.amx = icmp sgt i32 %i.ql, 0
  br i1 %i.amx, label %.lr.ph1127, label %._crit_edge1128

.lr.ph1127:                                       ; preds = %.preheader1021
  %i.amy = getelementptr inbounds nuw i8, ptr %0, i64 80
  %wide.trip.count1209 = and i64 %i.qk, 2147483647
  br label %bb.el

._crit_edge1128.loopexit:                         ; preds = %._crit_edge1120
  %i.amz = ptrtoint ptr %.sroa.10828.1.lcssa to i64
  br label %._crit_edge1128

._crit_edge1128:                                  ; preds = %._crit_edge1128.loopexit, %.preheader1021
  %.sroa.0823.0.lcssa = phi ptr [ null, %.preheader1021 ], [ %.sroa.0823.2.lcssa, %._crit_edge1128.loopexit ] ; 7 uses
  %.sroa.10828.0.lcssa = phi i64 [ 0, %.preheader1021 ], [ %i.amz, %._crit_edge1128.loopexit ]
  %.sroa.14.0.lcssa = phi ptr [ null, %.preheader1021 ], [ %.sroa.14.2.lcssa, %._crit_edge1128.loopexit ] ; 5 uses
  %i.ana = load ptr, ptr %i.sf, align 8, !tbaa !17
  invoke void @_ZN8Parallel7gathervIiEEvPKT_iPS1_PKi(ptr noundef nonnull %.sroa.0833.0, i32 noundef %i.ql, ptr noundef nonnull %i.amt, ptr noundef nonnull %i.ana)
          to label %bb.er unwind label %bb.ek

bb.ej:                                            ; preds = %bb.eg, %bb.ef
  %i.anb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit510.thread1327

_ZNSt6vectorIiSaIiEED2Ev.exit506.thread:          ; preds = %bb.eh, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i420
  %i.anc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit508

_ZNSt6vectorIiSaIiEED2Ev.exit506.thread1322:      ; preds = %bb.ei
  %i.and = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.amp, i64 noundef %i.amo) #14
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit508

bb.ek:                                            ; preds = %._crit_edge1128, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit437
  %.sroa.0823.1 = phi ptr [ %.sroa.0823.0.lcssa, %._crit_edge1128 ], [ null, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit437 ]
  %.sroa.14.1 = phi ptr [ %.sroa.14.0.lcssa, %._crit_edge1128 ], [ null, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit437 ]
  %i.ane = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit506

bb.el:                                            ; preds = %.lr.ph1127, %._crit_edge1120
  %indvars.iv1206 = phi i64 [ 0, %.lr.ph1127 ], [ %indvars.iv.next1207, %._crit_edge1120 ] ; 3 uses
  %.sroa.14.01125 = phi ptr [ null, %.lr.ph1127 ], [ %.sroa.14.2.lcssa, %._crit_edge1120 ] ; 2 uses
  %.sroa.10828.01124 = phi ptr [ null, %.lr.ph1127 ], [ %.sroa.10828.1.lcssa, %._crit_edge1120 ] ; 2 uses
  %.sroa.0823.01123 = phi ptr [ null, %.lr.ph1127 ], [ %.sroa.0823.2.lcssa, %._crit_edge1120 ] ; 2 uses
  %i.anf = load ptr, ptr %i.qd, align 8, !tbaa !17
  %i.ang = getelementptr inbounds nuw [4 x i8], ptr %i.anf, i64 %indvars.iv1206
  %i.anh = load i32, ptr %i.ang, align 4, !tbaa !4
  %i.ani = sext i32 %i.anh to i64                 ; 2 uses
  %i.anj = load ptr, ptr %i.amy, align 8, !tbaa !17
  %i.ank = getelementptr inbounds nuw [4 x i8], ptr %i.anj, i64 %i.ani
  %i.anl = load i32, ptr %i.ank, align 4, !tbaa !4
  %i.anm = getelementptr inbounds [4 x i8], ptr %i.pi, i64 %i.ani ; 2 uses
  %i.ann = load i32, ptr %i.anm, align 4, !tbaa !4 ; 2 uses
  %i.ano = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0833.0, i64 %indvars.iv1206
  store i32 %i.ann, ptr %i.ano, align 4, !tbaa !4
  %i.anp = icmp sgt i32 %i.ann, 0
  br i1 %i.anp, label %.lr.ph1119.preheader, label %._crit_edge1120

.lr.ph1119.preheader:                             ; preds = %bb.el
  %i.anq = sext i32 %i.anl to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.pk, i64 %i.anq
  br label %.lr.ph1119

._crit_edge1120:                                  ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit, %bb.el
  %.sroa.0823.2.lcssa = phi ptr [ %.sroa.0823.01123, %bb.el ], [ %.sroa.0823.6, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %.sroa.10828.1.lcssa = phi ptr [ %.sroa.10828.01124, %bb.el ], [ %.sroa.10828.2, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %.sroa.14.2.lcssa = phi ptr [ %.sroa.14.01125, %bb.el ], [ %.sroa.14.6, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %indvars.iv.next1207 = add nuw nsw i64 %indvars.iv1206, 1 ; 2 uses
  %exitcond1210.not = icmp eq i64 %indvars.iv.next1207, %wide.trip.count1209
  br i1 %exitcond1210.not, label %._crit_edge1128.loopexit, label %bb.el, !llvm.loop !121

.lr.ph1119:                                       ; preds = %.lr.ph1119.preheader, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %indvars.iv1203 = phi i64 [ 0, %.lr.ph1119.preheader ], [ %indvars.iv.next1204, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %.sroa.14.21116 = phi ptr [ %.sroa.14.01125, %.lr.ph1119.preheader ], [ %.sroa.14.6, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 5 uses
  %.sroa.10828.11115 = phi ptr [ %.sroa.10828.01124, %.lr.ph1119.preheader ], [ %.sroa.10828.2, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 3 uses
  %.sroa.0823.21114 = phi ptr [ %.sroa.0823.01123, %.lr.ph1119.preheader ], [ %.sroa.0823.6, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 7 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv1203
  %i.anr = load i32, ptr %gep, align 4, !tbaa !4
  %i.ans = load i32, ptr %i.b, align 4, !tbaa !4
  %i.ant = add nsw i32 %i.ans, %i.anr             ; 2 uses
  %.not.i.i438 = icmp eq ptr %.sroa.10828.11115, %.sroa.14.21116
  br i1 %.not.i.i438, label %bb.en, label %bb.em

bb.em:                                            ; preds = %.lr.ph1119
  store i32 %i.ant, ptr %.sroa.10828.11115, align 4, !tbaa !4
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.en:                                            ; preds = %.lr.ph1119
  %i.anu = ptrtoint ptr %.sroa.14.21116 to i64
  %i.anv = ptrtoint ptr %.sroa.0823.21114 to i64
  %i.anw = sub i64 %i.anu, %i.anv                 ; 6 uses
  %i.anx = icmp eq i64 %i.anw, 9223372036854775804
  br i1 %i.anx, label %bb.eo, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.eo:                                            ; preds = %bb.en
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #16
          to label %.noexc440 unwind label %.loopexit.split-lp1017

.noexc440:                                        ; preds = %bb.eo
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.en
  %i.any = ashr exact i64 %i.anw, 2               ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.any, i64 1)
  %i.anz = add nsw i64 %.sroa.speculated.i.i.i.i, %i.any ; 2 uses
  %i.aoa = icmp ult i64 %i.anz, %i.any
  %i.aob = call i64 @llvm.umin.i64(i64 %i.anz, i64 2305843009213693951)
  %i.aoc = select i1 %i.aoa, i64 2305843009213693951, i64 %i.aob ; 3 uses
  %.not.i.i.i.i439 = icmp ne i64 %i.aoc, 0
  call void @llvm.assume(i1 %.not.i.i.i.i439)
  %i.aod = shl nuw nsw i64 %i.aoc, 2
  %i.aoe = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aod) #18
          to label %.noexc441 unwind label %.loopexit1016 ; 4 uses

.noexc441:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.aof = getelementptr inbounds i8, ptr %i.aoe, i64 %i.anw ; 2 uses
  store i32 %i.ant, ptr %i.aof, align 4, !tbaa !4
  %i.aog = icmp sgt i64 %i.anw, 0
  br i1 %i.aog, label %bb.ep, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.ep:                                            ; preds = %.noexc441
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aoe, ptr align 4 %.sroa.0823.21114, i64 %i.anw, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.ep, %.noexc441
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0823.21114, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.eq

bb.eq:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0823.21114, i64 noundef %i.anw) #14
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.eq, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.aoh = getelementptr inbounds nuw [4 x i8], ptr %i.aoe, i64 %i.aoc
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.em
  %.sroa.0823.6 = phi ptr [ %i.aoe, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.0823.21114, %bb.em ] ; 2 uses
  %.pn999 = phi ptr [ %i.aof, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.10828.11115, %bb.em ]
  %.sroa.14.6 = phi ptr [ %i.aoh, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.14.21116, %bb.em ] ; 2 uses
  %.sroa.10828.2 = getelementptr inbounds nuw i8, ptr %.pn999, i64 4 ; 2 uses
  %indvars.iv.next1204 = add nuw nsw i64 %indvars.iv1203, 1 ; 2 uses
  %i.aoi = load i32, ptr %i.anm, align 4, !tbaa !4
  %i.aoj = sext i32 %i.aoi to i64
  %i.aok = icmp slt i64 %indvars.iv.next1204, %i.aoj
  br i1 %i.aok, label %.lr.ph1119, label %._crit_edge1120, !llvm.loop !122

.loopexit1016:                                    ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit1018 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit506

.loopexit.split-lp1017:                           ; preds = %bb.eo
  %lpad.loopexit.split-lp1019 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit506

bb.er:                                            ; preds = %._crit_edge1128
  %i.aol = ptrtoint ptr %.sroa.0823.0.lcssa to i64 ; 2 uses
  %i.aom = sub i64 %.sroa.10828.0.lcssa, %i.aol
  %i.aon = lshr exact i64 %i.aom, 2
  %i.aoo = trunc i64 %i.aon to i32                ; 2 uses
  invoke void @_ZN8Parallel6gatherEiPi(i32 noundef %i.aoo, ptr noundef nonnull %.sroa.0889.0)
          to label %bb.es unwind label %bb.fd

bb.es:                                            ; preds = %bb.er
  %.not5.i442 = icmp ne ptr %.sroa.0889.0, %.0.i.i.i.i.i332
  call void @llvm.assume(i1 %.not5.i442)
  %i.aop = add i64 %.0.i.i.i.i.i3321459, -4
  %i.aoq = sub i64 %i.aop, %.sroa.0889.01460      ; 2 uses
  %i.aor = lshr i64 %i.aoq, 2
  %i.aos = add nuw nsw i64 %i.aor, 1              ; 2 uses
  %min.iters.check1462 = icmp ult i64 %i.aoq, 28
  br i1 %min.iters.check1462, label %.lr.ph.i443.preheader, label %vector.ph1463

vector.ph1463:                                    ; preds = %bb.es
  %n.vec1465 = and i64 %i.aos, 9223372036854775800 ; 3 uses
  %i.aot = shl i64 %n.vec1465, 2
  %i.aou = getelementptr i8, ptr %.sroa.0889.0, i64 %i.aot
  br label %vector.body1466

vector.body1466:                                  ; preds = %vector.body1466, %vector.ph1463
  %index1467 = phi i64 [ 0, %vector.ph1463 ], [ %index.next1473, %vector.body1466 ] ; 2 uses
  %vec.phi1468.a = phi <4 x i32> [ zeroinitializer, %vector.ph1463 ], [ %i.aox, %vector.body1466 ]
  %vec.phi1469 = phi <4 x i32> [ zeroinitializer, %vector.ph1463 ], [ %i.aoy, %vector.body1466 ]
  %i.aov = shl i64 %index1467, 2
  %next.gep1470 = getelementptr i8, ptr %.sroa.0889.0, i64 %i.aov ; 2 uses
  %i.aow = getelementptr i8, ptr %next.gep1470, i64 16
  %wide.load1471.a = load <4 x i32>, ptr %next.gep1470, align 4, !tbaa !4
  %wide.load1472 = load <4 x i32>, ptr %i.aow, align 4, !tbaa !4
  %i.aox = add <4 x i32> %wide.load1471.a, %vec.phi1468.a ; 2 uses
  %i.aoy = add <4 x i32> %wide.load1472, %vec.phi1469 ; 2 uses
  %index.next1473 = add nuw i64 %index1467, 8     ; 2 uses
  %i.aoz = icmp eq i64 %index.next1473, %n.vec1465
  br i1 %i.aoz, label %middle.block1474, label %vector.body1466, !llvm.loop !123

middle.block1474:                                 ; preds = %vector.body1466
  %bin.rdx1475 = add <4 x i32> %i.aoy, %i.aox
  %i.apa = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1475) ; 2 uses
  %cmp.n1476 = icmp eq i64 %i.aos, %n.vec1465
  br i1 %cmp.n1476, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit449, label %.lr.ph.i443.preheader

.lr.ph.i443.preheader:                            ; preds = %bb.es, %middle.block1474
  %.07.i444.ph = phi i32 [ 0, %bb.es ], [ %i.apa, %middle.block1474 ]
  %.sroa.02.06.i445.ph = phi ptr [ %.sroa.0889.0, %bb.es ], [ %i.aou, %middle.block1474 ]
  br label %.lr.ph.i443

.lr.ph.i443:                                      ; preds = %.lr.ph.i443.preheader, %.lr.ph.i443
  %.07.i444 = phi i32 [ %i.apc, %.lr.ph.i443 ], [ %.07.i444.ph, %.lr.ph.i443.preheader ]
  %.sroa.02.06.i445 = phi ptr [ %i.apd, %.lr.ph.i443 ], [ %.sroa.02.06.i445.ph, %.lr.ph.i443.preheader ] ; 2 uses
  %i.apb = load i32, ptr %.sroa.02.06.i445, align 4, !tbaa !4
  %i.apc = add nsw i32 %i.apb, %.07.i444          ; 2 uses
  %i.apd = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i445, i64 4 ; 2 uses
  %.not.i446 = icmp eq ptr %i.apd, %.0.i.i.i.i.i332
  br i1 %.not.i446, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit449, label %.lr.ph.i443, !llvm.loop !124

_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit449: ; preds = %.lr.ph.i443, %middle.block1474
  %.lcssa1380 = phi i32 [ %i.apa, %middle.block1474 ], [ %i.apc, %.lr.ph.i443 ] ; 3 uses
  %i.ape = sext i32 %.lcssa1380 to i64            ; 2 uses
  %i.apf = icmp slt i32 %.lcssa1380, 0
  br i1 %i.apf, label %bb.et, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i450

bb.et:                                            ; preds = %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit449
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.33) #16
          to label %.noexc456 unwind label %bb.fe

.noexc456:                                        ; preds = %bb.et
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i450: ; preds = %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit449
  %.not.i.i.i.i451 = icmp ne i32 %.lcssa1380, 0
  call void @llvm.assume(i1 %.not.i.i.i.i451)
  %i.apg = shl nuw nsw i64 %i.ape, 2              ; 3 uses
  %i.aph = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.apg) #18
          to label %.noexc457 unwind label %bb.fe ; 6 uses

.noexc457:                                        ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i450
  store i32 0, ptr %i.aph, align 4, !tbaa !4
  %i.api = add nsw i64 %i.ape, -1                 ; 2 uses
  %i.apj = icmp eq i64 %i.api, 0
  br i1 %i.apj, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit458, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i452

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i452: ; preds = %.noexc457
  %i.apk = getelementptr i8, ptr %i.aph, i64 4
  %.idx.i.i.i.i.i.i.i453 = shl nuw nsw i64 %i.api, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.apk, i8 0, i64 %.idx.i.i.i.i.i.i.i453, i1 false), !tbaa !4
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit458

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit458:            ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i452, %.noexc457
  invoke void @_ZN8Parallel7gathervIiEEvPKT_iPS1_PKi(ptr noundef nonnull %.sroa.0823.0.lcssa, i32 noundef %i.aoo, ptr noundef nonnull %i.aph, ptr noundef nonnull %.sroa.0889.0)
          to label %bb.eu unwind label %bb.ff

bb.eu:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit458
  %i.apl = load i32, ptr @_ZN8Parallel4mypeE, align 4, !tbaa !4
  %i.apm = icmp eq i32 %i.apl, 0
  br i1 %i.apm, label %bb.ev, label %_ZNSt6vectorIiSaIiEED2Ev.exit500

bb.ev:                                            ; preds = %bb.eu
  %i.apn = load i32, ptr %i.ul, align 8, !tbaa !108
  %i.apo = icmp sgt i32 %i.apn, 0
  br i1 %i.apo, label %bb.ew, label %.thread938

bb.ew:                                            ; preds = %bb.ev
  %i.app = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.29, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit460 unwind label %bb.ff ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit460: ; preds = %bb.ew
  %i.apq = load ptr, ptr %4, align 8, !tbaa !33
  %i.apr = getelementptr i8, ptr %i.apq, i64 -24
  %i.aps = load i64, ptr %i.apr, align 8
  %i.apt = getelementptr inbounds i8, ptr %4, i64 %i.aps
  %i.apu = getelementptr inbounds nuw i8, ptr %i.apt, i64 240
  %i.apv = load ptr, ptr %i.apu, align 8, !tbaa !45 ; 6 uses
  %.not.i.i.i746 = icmp eq ptr %i.apv, null
  br i1 %.not.i.i.i746, label %.invoke1368, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i747

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i747: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit460
  %i.apw = getelementptr inbounds nuw i8, ptr %i.apv, i64 56
  %i.apx = load i8, ptr %i.apw, align 8, !tbaa !53
  %.not.i1.i.i748 = icmp eq i8 %i.apx, 0
  br i1 %.not.i1.i.i748, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i747
  %i.apy = getelementptr inbounds nuw i8, ptr %i.apv, i64 67
  %i.apz = load i8, ptr %i.apy, align 1, !tbaa !25
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i749

bb.ey:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i747
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.apv)
          to label %.noexc752 unwind label %bb.ff

.noexc752:                                        ; preds = %bb.ey
  %i.aqa = load ptr, ptr %i.apv, align 8, !tbaa !33
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.aqa, i64 48
  %i.aqc = load ptr, ptr %i.aqb, align 8
  %i.aqd = invoke noundef signext i8 %i.aqc(ptr noundef nonnull align 8 dereferenceable(570) %i.apv, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i749 unwind label %bb.ff, !inline_history !58

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i749: ; preds = %.noexc752, %bb.ex
  %.0.i.i.i750 = phi i8 [ %i.apz, %bb.ex ], [ %i.aqd, %.noexc752 ]
  %i.aqe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %4, i8 noundef signext %.0.i.i.i750)
          to label %.noexc754 unwind label %bb.ff

.noexc754:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i749
  %i.aqf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aqe)
          to label %bb.ez unwind label %bb.ff     ; 0 uses

bb.ez:                                            ; preds = %.noexc754
  %i.aqg = load ptr, ptr %4, align 8, !tbaa !33
  %i.aqh = getelementptr i8, ptr %i.aqg, i64 -24
  %i.aqi = load i64, ptr %i.aqh, align 8
  %i.aqj = getelementptr inbounds i8, ptr %4, i64 %i.aqi
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.aqj, i64 16
  store i64 10, ptr %i.aqk, align 8, !tbaa !82
  %i.aql = load i32, ptr %i.ul, align 8, !tbaa !108
  %i.aqm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %i.aql)
          to label %bb.fa unwind label %bb.ff     ; 3 uses

bb.fa:                                            ; preds = %bb.ez
  %i.aqn = load ptr, ptr %i.aqm, align 8, !tbaa !33
  %i.aqo = getelementptr i8, ptr %i.aqn, i64 -24
  %i.aqp = load i64, ptr %i.aqo, align 8
  %i.aqq = getelementptr inbounds i8, ptr %i.aqm, i64 %i.aqp
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.aqq, i64 240
  %i.aqs = load ptr, ptr %i.aqr, align 8, !tbaa !45 ; 6 uses
  %.not.i.i.i757 = icmp eq ptr %i.aqs, null
  br i1 %.not.i.i.i757, label %.invoke1368, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i758

.invoke1368:                                      ; preds = %bb.fa, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit460
  invoke void @_ZSt16__throw_bad_castv() #16
          to label %.cont1369 unwind label %bb.ff

.cont1369:                                        ; preds = %.invoke1368
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i758: ; preds = %bb.fa
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aqs, i64 56
  %i.aqu = load i8, ptr %i.aqt, align 8, !tbaa !53
  %.not.i1.i.i759 = icmp eq i8 %i.aqu, 0
  br i1 %.not.i1.i.i759, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i758
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.aqs, i64 67
  %i.aqw = load i8, ptr %i.aqv, align 1, !tbaa !25
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i760

bb.fc:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i758
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aqs)
          to label %.noexc763 unwind label %bb.ff

.noexc763:                                        ; preds = %bb.fc
  %i.aqx = load ptr, ptr %i.aqs, align 8, !tbaa !33
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.aqx, i64 48
  %i.aqz = load ptr, ptr %i.aqy, align 8
  %i.ara = invoke noundef signext i8 %i.aqz(ptr noundef nonnull align 8 dereferenceable(570) %i.aqs, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i760 unwind label %bb.ff, !inline_history !58

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i760: ; preds = %.noexc763, %bb.fb
  %.0.i.i.i761 = phi i8 [ %i.aqw, %bb.fb ], [ %i.ara, %.noexc763 ]
  %i.arb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.aqm, i8 noundef signext %.0.i.i.i761)
          to label %.noexc765 unwind label %bb.ff

.noexc765:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i760
  %i.arc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.arb)
          to label %_ZNSolsEPFRSoS_E.exit464.preheader unwind label %bb.ff ; 0 uses

_ZNSolsEPFRSoS_E.exit464.preheader:               ; preds = %.noexc765
  %i.ard = load i32, ptr %i.ul, align 8, !tbaa !108
  %i.are = icmp sgt i32 %i.ard, 0
  br i1 %i.are, label %.lr.ph1133, label %._crit_edge1143
end_hunk_1
