inline.NumInlined: 6287
inline.NumDeleted: 1145
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 40
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN12seq_rewriter14mk_seq_extractEP4exprS1_S1_R7obj_refIS0_11ast_managerE:bb.a
  br i1 %or.cond17, label %bb.ft, label %bb.fv

bb.ft:                                            ; preds = %bb.fs
  %i.pi = invoke noundef zeroext i1 @_ZeqRK8rationali(ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 0)
          to label %bb.fu unwind label %bb.dw

bb.fu:                                            ; preds = %bb.ft
  %i.pj = load ptr, ptr %i.r, align 8
  %i.pk = icmp eq ptr %3, %i.pj
  %or.cond250 = select i1 %i.pi, i1 %i.pk, i1 false
  br i1 %or.cond250, label %.invoke, label %bb.fv

.invoke:                                          ; preds = %bb.fu, %bb.fq
  %i.pl = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7obj_refI4expr11ast_managerEaSEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %1)
          to label %bb.io unwind label %bb.dw     ; 0 uses

bb.fv:                                            ; preds = %bb.fs, %bb.fu
  %i.pm = invoke noundef zeroext i1 @_ZNK8seq_util3str10is_extractEPK4exprRPS1_S5_S5_(ptr noundef nonnull align 8 dereferenceable(20) %i.an, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %bb.fw unwind label %bb.dw

bb.fw:                                            ; preds = %bb.fv
  br i1 %i.pm, label %bb.fx, label %_ZNK10arith_util10is_numeralEPK4expr.exit.thread

bb.fx:                                            ; preds = %bb.fw
  %i.pn = invoke noundef zeroext i1 @_ZN12seq_rewriter9is_suffixEP4exprS1_S1_(ptr noundef nonnull align 8 dereferenceable(1800) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3)
          to label %bb.fy unwind label %bb.dw

bb.fy:                                            ; preds = %bb.fx
  br i1 %i.pn, label %bb.fz, label %_ZNK10arith_util10is_numeralEPK4expr.exit.thread

bb.fz:                                            ; preds = %bb.fy
  %i.po = load ptr, ptr %i.r, align 8, !tbaa !8   ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 4
  %i.pq = load i32, ptr %i.pp, align 4
  %i.pr = and i32 %i.pq, 65535
  %i.ps = icmp eq i32 %i.pr, 0
  br i1 %i.ps, label %bb.ga, label %_ZNK10arith_util10is_numeralEPK4expr.exit.thread

bb.ga:                                            ; preds = %bb.fz
  %i.pt = getelementptr inbounds nuw i8, ptr %i.po, i64 16
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !169
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 24
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !162 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.pw, null
  br i1 %.not.i.i.i.i.i, label %_ZNK10arith_util10is_numeralEPK4expr.exit.thread, label %_ZNK10arith_util10is_numeralEPK4expr.exit

_ZNK10arith_util10is_numeralEPK4expr.exit:        ; preds = %bb.ga
  %i.px = load i32, ptr %i.pw, align 8, !tbaa !173
  %i.py = icmp eq i32 %i.px, 5
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pw, i64 4
  %i.qa = load i32, ptr %i.pz, align 4
  %i.qb = icmp eq i32 %i.qa, 0
  %i.qc = select i1 %i.py, i1 %i.qb, i1 false
  br i1 %i.qc, label %bb.gb, label %_ZNK10arith_util10is_numeralEPK4expr.exit.thread

bb.gb:                                            ; preds = %_ZNK10arith_util10is_numeralEPK4expr.exit
  %i.qd = load ptr, ptr %i.q, align 8, !tbaa !8   ; 3 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 4
  %i.qf = load i32, ptr %i.qe, align 4
  %i.qg = and i32 %i.qf, 65535
  %i.qh = icmp eq i32 %i.qg, 0
  br i1 %i.qh, label %bb.gc, label %_ZNK10arith_util10is_numeralEPK4expr.exit.thread

bb.gc:                                            ; preds = %bb.gb
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qd, i64 16
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !169
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 24
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !162 ; 3 uses
  %.not.i.i.i.i.i347 = icmp eq ptr %i.ql, null
  br i1 %.not.i.i.i.i.i347, label %_ZNK10arith_util10is_numeralEPK4expr.exit.thread, label %_ZNK10arith_util10is_numeralEPK4expr.exit348

_ZNK10arith_util10is_numeralEPK4expr.exit348:     ; preds = %bb.gc
  %i.qm = load i32, ptr %i.ql, align 8, !tbaa !173
  %i.qn = icmp eq i32 %i.qm, 5
  %i.qo = getelementptr inbounds nuw i8, ptr %i.ql, i64 4
  %i.qp = load i32, ptr %i.qo, align 4
  %i.qq = icmp eq i32 %i.qp, 0
  %i.qr = select i1 %i.qn, i1 %i.qq, i1 false
  br i1 %i.qr, label %bb.gd, label %_ZNK10arith_util10is_numeralEPK4expr.exit.thread

bb.gd:                                            ; preds = %_ZNK10arith_util10is_numeralEPK4expr.exit348
  %i.qs = load ptr, ptr %i.p, align 8, !tbaa !8
  %i.qt = load ptr, ptr %i.ap, align 8, !tbaa !263, !nonnull !14, !align !15
  %i.qu = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.qt, i32 noundef 5, i32 noundef 6, ptr noundef %2, ptr noundef nonnull %i.qd)
          to label %_ZNK10arith_util6mk_addEP4exprS1_.exit350 unwind label %bb.dw

_ZNK10arith_util6mk_addEP4exprS1_.exit350:        ; preds = %bb.gd
  %i.qv = load ptr, ptr %i.r, align 8, !tbaa !8
  %i.qw = load ptr, ptr %i.ap, align 8, !tbaa !263, !nonnull !14, !align !15
  %i.qx = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.qw, i32 noundef 5, i32 noundef 7, ptr noundef %i.qv, ptr noundef %2)
          to label %_ZNK10arith_util6mk_subEP4exprS1_.exit352 unwind label %bb.dw

_ZNK10arith_util6mk_subEP4exprS1_.exit352:        ; preds = %_ZNK10arith_util6mk_addEP4exprS1_.exit350
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store ptr %i.qs, ptr %i.b, align 16, !tbaa !8
  %i.qy = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.qu, ptr %i.qy, align 8, !tbaa !8
  %i.qz = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.qx, ptr %i.qz, align 16, !tbaa !8
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !219, !nonnull !14, !align !15
  %i.rc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.rd = load i32, ptr %i.rc, align 8, !tbaa !90
  %i.re = invoke noundef ptr @_ZN11ast_manager6mk_appEiijPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.rb, i32 noundef %i.rd, i32 noundef 6, i32 noundef 3, ptr noundef nonnull %i.b)
          to label %bb.ge unwind label %bb.dw

bb.ge:                                            ; preds = %_ZNK10arith_util6mk_subEP4exprS1_.exit352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.rf = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7obj_refI4expr11ast_managerEaSEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.re)
          to label %bb.io unwind label %bb.dw     ; 0 uses

_ZNK10arith_util10is_numeralEPK4expr.exit.thread: ; preds = %bb.gc, %bb.gb, %bb.ga, %bb.fz, %_ZNK10arith_util10is_numeralEPK4expr.exit348, %_ZNK10arith_util10is_numeralEPK4expr.exit, %bb.fy, %bb.fw
  br i1 %i.fp, label %.preheader411, label %bb.io

.preheader411:                                    ; preds = %_ZNK10arith_util10is_numeralEPK4expr.exit.thread
  %i.rg = load ptr, ptr %i.ix, align 8, !tbaa !93 ; 2 uses
  %i.rh = icmp eq ptr %i.rg, null
  br i1 %i.rh, label %.critedge.thread, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.lr.ph

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.lr.ph: ; preds = %.preheader411
  %i.ri = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.lr.ph, %bb.gj
  %indvars.iv = phi i64 [ 0, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.lr.ph ], [ %indvars.iv.next, %bb.gj ] ; 5 uses
  %i.rj = phi ptr [ %i.rg, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.lr.ph ], [ %i.sh, %bb.gj ] ; 2 uses
  %i.rk = getelementptr inbounds i8, ptr %i.rj, i64 -4
  %i.rl = load i32, ptr %i.rk, align 4, !tbaa !106
  %i.rm = zext i32 %i.rl to i64
  %i.rn = icmp samesign ult i64 %indvars.iv, %i.rm
  %i.ro = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  br i1 %i.rn, label %bb.gf, label %.critedge

bb.gf:                                            ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.rp = getelementptr inbounds nuw [8 x i8], ptr %i.rj, i64 %indvars.iv
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !8  ; 2 uses
  %i.rr = load i32, ptr %i.ri, align 8, !tbaa !90
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rq, i64 4
  %i.rt = load i32, ptr %i.rs, align 4
  %i.ru = and i32 %i.rt, 65535
  %i.rv = icmp eq i32 %i.ru, 0
  br i1 %i.rv, label %bb.gg, label %.critedge

bb.gg:                                            ; preds = %bb.gf
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rq, i64 16
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !169
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 24
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !162 ; 3 uses
  %.not.i.i.i.i355 = icmp eq ptr %i.rz, null
  br i1 %.not.i.i.i.i355, label %.critedge, label %_ZNK8seq_util3str7is_unitEPK4expr.exit

_ZNK8seq_util3str7is_unitEPK4expr.exit:           ; preds = %bb.gg
  %i.sa = load i32, ptr %i.rz, align 8, !tbaa !173
  %i.sb = icmp eq i32 %i.sa, %i.rr
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rz, i64 4
  %i.sd = load i32, ptr %i.sc, align 4
  %i.se = icmp eq i32 %i.sd, 0
  %i.sf = select i1 %i.sb, i1 %i.se, i1 false
  br i1 %i.sf, label %bb.gh, label %.critedge

bb.gh:                                            ; preds = %_ZNK8seq_util3str7is_unitEPK4expr.exit
  %i.sg = invoke noundef zeroext i1 @_ZltiRK8rational(i32 noundef %i.ro, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.gi unwind label %.loopexit

bb.gi:                                            ; preds = %bb.gh
  br i1 %i.sg, label %bb.gj, label %.critedge

bb.gj:                                            ; preds = %bb.gi
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.sh = load ptr, ptr %i.ix, align 8, !tbaa !93 ; 2 uses
  %i.si = icmp eq ptr %i.sh, null
  br i1 %i.si, label %.critedge.thread502.loopexit, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, !llvm.loop !264

.loopexit:                                        ; preds = %bb.gh
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ip

.loopexit.split-lp:                               ; preds = %.critedge.thread
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ip

.critedge:                                        ; preds = %bb.gi, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, %_ZNK8seq_util3str7is_unitEPK4expr.exit, %bb.gf, %bb.gg
  %i.sj = icmp eq i64 %indvars.iv, 0
  br i1 %i.sj, label %.critedge.thread, label %.critedge.thread502

.critedge.thread:                                 ; preds = %.preheader411, %.critedge
  %i.sk = invoke noundef zeroext i1 @_ZgtRK8rationali(ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 0)
          to label %bb.gk unwind label %.loopexit.split-lp

bb.gk:                                            ; preds = %.critedge.thread
  br i1 %i.sk, label %bb.io, label %.critedge.thread502

.critedge.thread502.loopexit:                     ; preds = %bb.gj
  %indvars.le = trunc nuw i64 %indvars.iv.next to i32
  br label %.critedge.thread502

.critedge.thread502:                              ; preds = %.critedge.thread502.loopexit, %bb.gk, %.critedge
  %i.sl = phi i1 [ true, %bb.gk ], [ false, %.critedge ], [ false, %.critedge.thread502.loopexit ]
  %.0171.lcssa500 = phi i32 [ 0, %bb.gk ], [ %i.ro, %.critedge ], [ %indvars.le, %.critedge.thread502.loopexit ] ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  %i.sm = ptrtoint ptr %0 to i64
  %i.sn = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  %i.so = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.sp = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 0, ptr %i.sp, align 8
  store i64 %i.sm, ptr %18, align 8, !tbaa !265
  store ptr @"_ZNSt17_Function_handlerIFbP4exprEZN12seq_rewriter14mk_seq_extractES1_S1_S1_R7obj_refIS0_11ast_managerEE3$_0E9_M_invokeERKSt9_Any_dataOS1_", ptr %i.so, align 8, !tbaa !266
  store ptr @"_ZNSt17_Function_handlerIFbP4exprEZN12seq_rewriter14mk_seq_extractES1_S1_S1_R7obj_refIS0_11ast_managerEE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation", ptr %i.sn, align 8, !tbaa !269
  %i.sq = invoke noundef zeroext i1 @_ZeqRK8rationali(ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 0)
          to label %bb.gl unwind label %bb.gs

bb.gl:                                            ; preds = %.critedge.thread502
  br i1 %i.sq, label %bb.gm, label %bb.gz

bb.gm:                                            ; preds = %bb.gl
  %i.sr = invoke noundef zeroext i1 @_ZNK10ref_vectorI4expr11ast_managerE6forallERSt8functionIFbPS0_EE(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %bb.gn unwind label %bb.gs

bb.gn:                                            ; preds = %bb.gm
  br i1 %i.sr, label %bb.go, label %bb.gz

bb.go:                                            ; preds = %bb.gn
  %i.ss = invoke noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %1)
          to label %bb.gp unwind label %bb.gs

bb.gp:                                            ; preds = %bb.go
  %i.st = invoke noundef ptr @_ZNK8seq_util3str8mk_emptyEP4sort(ptr noundef nonnull align 8 dereferenceable(20) %i.an, ptr noundef %i.ss)
          to label %bb.gq unwind label %bb.gs

bb.gq:                                            ; preds = %bb.gp
  %i.su = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7obj_refI4expr11ast_managerEaSEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.st)
          to label %.preheader unwind label %bb.gs ; 0 uses

.preheader:                                       ; preds = %bb.gq, %bb.gy
  %.0170 = phi i32 [ %i.tl, %bb.gy ], [ 1, %bb.gq ] ; 4 uses
  %i.sv = load ptr, ptr %i.ix, align 8, !tbaa !93 ; 2 uses
  %i.sw = icmp eq ptr %i.sv, null
  br i1 %i.sw, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit357, label %bb.gr

bb.gr:                                            ; preds = %.preheader
  %i.sx = getelementptr inbounds i8, ptr %i.sv, i64 -4
  %i.sy = load i32, ptr %i.sx, align 4, !tbaa !106
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit357

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit357: ; preds = %.preheader, %bb.gr
  %.0.i.i356 = phi i32 [ %i.sy, %bb.gr ], [ 0, %.preheader ]
  %.not216 = icmp ugt i32 %.0170, %.0.i.i356
  br i1 %.not216, label %.critedge254, label %bb.gu

bb.gs:                                            ; preds = %bb.hh, %bb.hf, %bb.he, %bb.hd, %bb.gz, %bb.gq, %bb.gp, %bb.go, %bb.gm, %.critedge.thread502
  %i.sz = landingpad { ptr, i32 }
          cleanup
  br label %bb.il

bb.gt:                                            ; preds = %bb.gx, %bb.gv, %_ZN11ast_manager6mk_iteEP4exprS1_S1_.exit, %bb.gw, %_ZNK10arith_util5mk_geEP4exprS1_.exit, %bb.gu
  %i.ta = landingpad { ptr, i32 }
          cleanup
  br label %bb.il

bb.gu:                                            ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit357
  %i.tb = load ptr, ptr %0, align 8, !tbaa !89, !nonnull !14, !align !15
  %i.tc = invoke noundef ptr @_ZN10arith_util6mk_intEj(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i32 noundef %.0170)
          to label %bb.gv unwind label %bb.gt

bb.gv:                                            ; preds = %bb.gu
  %i.td = load ptr, ptr %i.ap, align 8, !tbaa !263, !nonnull !14, !align !15
  %i.te = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.td, i32 noundef 5, i32 noundef 3, ptr noundef %3, ptr noundef %i.tc)
          to label %_ZNK10arith_util5mk_geEP4exprS1_.exit unwind label %bb.gt

_ZNK10arith_util5mk_geEP4exprS1_.exit:            ; preds = %bb.gv
  %i.tf = load ptr, ptr %i.ix, align 8, !tbaa !93
  %i.tg = invoke noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %1)
          to label %bb.gw unwind label %bb.gt

bb.gw:                                            ; preds = %_ZNK10arith_util5mk_geEP4exprS1_.exit
  %i.th = invoke noundef ptr @_ZNK8seq_util3str9mk_concatEjPKP4exprP4sort(ptr noundef nonnull align 8 dereferenceable(20) %i.an, i32 noundef %.0170, ptr noundef %i.tf, ptr noundef %i.tg)
          to label %bb.gx unwind label %bb.gt

bb.gx:                                            ; preds = %bb.gw
  %i.ti = load ptr, ptr %4, align 8, !tbaa !16
  %i.tj = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_S1_(ptr noundef nonnull align 8 dereferenceable(952) %i.tb, i32 noundef 0, i32 noundef 4, ptr noundef %i.te, ptr noundef %i.th, ptr noundef %i.ti)
          to label %_ZN11ast_manager6mk_iteEP4exprS1_S1_.exit unwind label %bb.gt

_ZN11ast_manager6mk_iteEP4exprS1_S1_.exit:        ; preds = %bb.gx
  %i.tk = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7obj_refI4expr11ast_managerEaSEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.tj)
          to label %bb.gy unwind label %bb.gt     ; 0 uses

bb.gy:                                            ; preds = %_ZN11ast_manager6mk_iteEP4exprS1_S1_.exit
  %i.tl = add i32 %.0170, 1
  br label %.preheader, !llvm.loop !270

bb.gz:                                            ; preds = %bb.gn, %bb.gl
  %i.tm = invoke noundef zeroext i1 @_ZeqRK8rationali(ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 0)
          to label %bb.ha unwind label %bb.gs

bb.ha:                                            ; preds = %bb.gz
  %.not = xor i1 %i.tm, true
  %or.cond19 = or i1 %i.iu, %.not
  br i1 %or.cond19, label %bb.hb, label %.critedge254

bb.hb:                                            ; preds = %bb.ha
  %i.tn = load ptr, ptr %i.ix, align 8, !tbaa !93 ; 2 uses
  %i.to = icmp eq ptr %i.tn, null
  br i1 %i.to, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit361, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.tp = getelementptr inbounds i8, ptr %i.tn, i64 -4
  %i.tq = load i32, ptr %i.tp, align 4, !tbaa !106
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit361

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit361: ; preds = %bb.hb, %bb.hc
  %.0.i.i360 = phi i32 [ %i.tq, %bb.hc ], [ 0, %bb.hb ]
  %i.tr = icmp eq i32 %.0171.lcssa500, %.0.i.i360
  br i1 %i.tr, label %bb.hd, label %bb.hg

bb.hd:                                            ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit361
  %i.ts = invoke noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %1)
          to label %bb.he unwind label %bb.gs

bb.he:                                            ; preds = %bb.hd
  %i.tt = invoke noundef ptr @_ZNK8seq_util3str8mk_emptyEP4sort(ptr noundef nonnull align 8 dereferenceable(20) %i.an, ptr noundef %i.ts)
          to label %bb.hf unwind label %bb.gs

bb.hf:                                            ; preds = %bb.he
  %i.tu = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7obj_refI4expr11ast_managerEaSEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.tt)
          to label %.critedge254 unwind label %bb.gs ; 0 uses

bb.hg:                                            ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit361
  br i1 %i.iu, label %bb.hh, label %bb.hv

bb.hh:                                            ; preds = %bb.hg
  %i.tv = invoke noundef zeroext i1 @_ZeqRK8rationali(ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %.0171.lcssa500)
          to label %bb.hi unwind label %bb.gs

bb.hi:                                            ; preds = %bb.hh
  br i1 %i.tv, label %bb.hj, label %bb.hv

bb.hj:                                            ; preds = %bb.hi
  %i.tw = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !234
  %i.tx = invoke noundef i64 @_ZNK11mpz_managerILb1EE10get_uint64ERK3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.tw, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNK8rational12get_unsignedEv.exit363 unwind label %bb.hm ; 2 uses

_ZNK8rational12get_unsignedEv.exit363:            ; preds = %bb.hj
  %i.ty = trunc i64 %i.tx to i32                  ; 4 uses
  %i.tz = load ptr, ptr %i.ix, align 8, !tbaa !93 ; 7 uses
  %i.ua = icmp eq ptr %i.tz, null
  br i1 %i.ua, label %.critedge21.thread509, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit365.lr.ph

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit365.lr.ph: ; preds = %_ZNK8rational12get_unsignedEv.exit363
  %i.ub = getelementptr inbounds i8, ptr %i.tz, i64 -4
  %i.uc = load i32, ptr %i.ub, align 4, !tbaa !106 ; 3 uses
  %i.ud = icmp ult i32 %.0171.lcssa500, %i.uc
  br i1 %i.ud, label %.lr.ph, label %.critedge21.thread

.lr.ph:                                           ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit365.lr.ph
  %i.ue = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.uf = load i32, ptr %i.ue, align 8, !tbaa !90
  %20 = zext i32 %.0171.lcssa500 to i64           ; 2 uses
  %21 = and i64 %i.tx, 4294967295
  %wide.trip.count = zext i32 %i.uc to i64
  %invariant.op = add nuw nsw i64 %21, %20
  br label %bb.hk

bb.hk:                                            ; preds = %.lr.ph, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit365
  %indvars.iv461 = phi i64 [ %20, %.lr.ph ], [ %indvars.iv.next462, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit365 ] ; 6 uses
  %i.ug = getelementptr inbounds nuw [8 x i8], ptr %i.tz, i64 %indvars.iv461
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !8  ; 2 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 4
  %i.uj = load i32, ptr %i.ui, align 4
  %i.uk = and i32 %i.uj, 65535
  %i.ul = icmp eq i32 %i.uk, 0
  br i1 %i.ul, label %bb.hl, label %.critedge21.split.loop.exit521

bb.hl:                                            ; preds = %bb.hk
  %i.um = getelementptr inbounds nuw i8, ptr %i.uh, i64 16
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !169
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 24
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !162 ; 3 uses
  %.not.i.i.i.i366 = icmp eq ptr %i.up, null
  br i1 %.not.i.i.i.i366, label %.critedge21.split.loop.exit523, label %_ZNK8seq_util3str7is_unitEPK4expr.exit367

_ZNK8seq_util3str7is_unitEPK4expr.exit367:        ; preds = %bb.hl
  %i.uq = load i32, ptr %i.up, align 8, !tbaa !173
  %i.ur = icmp eq i32 %i.uq, %i.uf
  %i.us = getelementptr inbounds nuw i8, ptr %i.up, i64 4
  %i.ut = load i32, ptr %i.us, align 4
  %i.uu = icmp eq i32 %i.ut, 0
  %i.uv = select i1 %i.ur, i1 %i.uu, i1 false
  %i.uw = icmp samesign ult i64 %indvars.iv461, %invariant.op
  %or.cond252 = and i1 %i.uv, %i.uw
  br i1 %or.cond252, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit365, label %.critedge21.split.loop.exit519

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit365: ; preds = %_ZNK8seq_util3str7is_unitEPK4expr.exit367
  %indvars.iv.next462 = add nuw nsw i64 %indvars.iv461, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next462, %wide.trip.count
  br i1 %exitcond.not, label %.critedge21, label %bb.hk

bb.hm:                                            ; preds = %bb.hj
  %i.ux = landingpad { ptr, i32 }
          cleanup
  br label %bb.il

bb.hn:                                            ; preds = %bb.hq, %bb.hp, %bb.ho
  %i.uy = landingpad { ptr, i32 }
          cleanup
  br label %bb.il

.critedge21.split.loop.exit519:                   ; preds = %_ZNK8seq_util3str7is_unitEPK4expr.exit367
  %22 = trunc nuw i64 %indvars.iv461 to i32
  br label %.critedge21

.critedge21.split.loop.exit521:                   ; preds = %bb.hk
  %23 = trunc nuw i64 %indvars.iv461 to i32
  br label %.critedge21

.critedge21.split.loop.exit523:                   ; preds = %bb.hl
  %24 = trunc nuw i64 %indvars.iv461 to i32
  br label %.critedge21

.critedge21:                                      ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit365, %.critedge21.split.loop.exit523, %.critedge21.split.loop.exit521, %.critedge21.split.loop.exit519
  %.0.lcssa = phi i32 [ %23, %.critedge21.split.loop.exit521 ], [ %24, %.critedge21.split.loop.exit523 ], [ %22, %.critedge21.split.loop.exit519 ], [ %i.uc, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit365 ] ; 2 uses
  %i.uz = sub i32 %.0.lcssa, %.0171.lcssa500
  %i.va = icmp eq i32 %i.uz, %i.ty
  br i1 %i.va, label %bb.ho, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit369.thread

.critedge21.thread509:                            ; preds = %_ZNK8rational12get_unsignedEv.exit363
  %i.vb = icmp eq i32 %i.ty, 0
  br i1 %i.vb, label %bb.ho, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit369

.critedge21.thread:                               ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit365.lr.ph
  %i.vc = icmp eq i32 %i.ty, 0
  br i1 %i.vc, label %bb.ho, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit369.thread

bb.ho:                                            ; preds = %.critedge21.thread509, %.critedge21.thread, %.critedge21
  %i.vd = invoke noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %1)
          to label %bb.hp unwind label %bb.hn

bb.hp:                                            ; preds = %bb.ho
  %i.ve = zext i32 %.0171.lcssa500 to i64
  %i.vf = getelementptr inbounds nuw [8 x i8], ptr %i.tz, i64 %i.ve
  %i.vg = invoke noundef ptr @_ZNK8seq_util3str9mk_concatEjPKP4exprP4sort(ptr noundef nonnull align 8 dereferenceable(20) %i.an, i32 noundef %i.ty, ptr noundef %i.vf, ptr noundef %i.vd)
          to label %bb.hq unwind label %bb.hn

bb.hq:                                            ; preds = %bb.hp
  %i.vh = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7obj_refI4expr11ast_managerEaSEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.vg)
          to label %.critedge254 unwind label %bb.hn ; 0 uses

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit369: ; preds = %.critedge21.thread509
  %i.vi = icmp eq i32 %.0171.lcssa500, 0
  br i1 %i.vi, label %bb.hr, label %bb.hv

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit369.thread: ; preds = %.critedge21, %.critedge21.thread
  %.0.lcssa505508 = phi i32 [ %.0171.lcssa500, %.critedge21.thread ], [ %.0.lcssa, %.critedge21 ] ; 2 uses
  %i.vj = getelementptr inbounds i8, ptr %i.tz, i64 -4
  %i.vk = load i32, ptr %i.vj, align 4, !tbaa !106
  %i.vl = icmp eq i32 %.0.lcssa505508, %i.vk
  br i1 %i.vl, label %bb.hr, label %bb.hv

bb.hr:                                            ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit369.thread, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit369
  %.0.i.i370 = phi i32 [ 0, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit369 ], [ %.0.lcssa505508, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit369.thread ]
  %i.vm = load ptr, ptr %i.tz, align 8, !tbaa !8
  %i.vn = invoke noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %i.vm)
          to label %bb.hs unwind label %bb.hu

bb.hs:                                            ; preds = %bb.hr
  %i.vo = zext i32 %.0171.lcssa500 to i64
  %i.vp = getelementptr inbounds nuw [8 x i8], ptr %i.tz, i64 %i.vo
  %i.vq = sub i32 %.0.i.i370, %.0171.lcssa500
  %i.vr = invoke noundef ptr @_ZNK8seq_util3str9mk_concatEjPKP4exprP4sort(ptr noundef nonnull align 8 dereferenceable(20) %i.an, i32 noundef %i.vq, ptr noundef nonnull %i.vp, ptr noundef %i.vn)
          to label %bb.ht unwind label %bb.hu

bb.ht:                                            ; preds = %bb.hs
  %i.vs = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7obj_refI4expr11ast_managerEaSEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.vr)
          to label %.critedge254 unwind label %bb.hu ; 0 uses

bb.hu:                                            ; preds = %bb.ht, %bb.hs, %bb.hr
  %i.vt = landingpad { ptr, i32 }
          cleanup
  br label %bb.il

bb.hv:                                            ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit369.thread, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit369, %bb.hi, %bb.hg
  br i1 %i.sl, label %.critedge254, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25
  %i.vu = load ptr, ptr %0, align 8, !tbaa !89, !nonnull !14, !align !15
  store ptr null, ptr %19, align 8, !tbaa !16
  %i.vv = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %i.vu, ptr %i.vv, align 8, !tbaa !17
  %i.vw = invoke noundef ptr @_ZN10arith_util6mk_intEj(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i32 noundef %.0171.lcssa500)
          to label %bb.hx unwind label %bb.ig

bb.hx:                                            ; preds = %bb.hw
  %i.vx = load ptr, ptr %i.ap, align 8, !tbaa !263, !nonnull !14, !align !15
  %i.vy = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.vx, i32 noundef 5, i32 noundef 7, ptr noundef %2, ptr noundef %i.vw)
          to label %_ZNK10arith_util6mk_subEP4exprS1_.exit373 unwind label %bb.ig

_ZNK10arith_util6mk_subEP4exprS1_.exit373:        ; preds = %bb.hx
  %i.vz = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7obj_refI4expr11ast_managerEaSEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef %i.vy)
          to label %bb.hy unwind label %bb.ig     ; 0 uses

bb.hy:                                            ; preds = %_ZNK10arith_util6mk_subEP4exprS1_.exit373
  %i.wa = load ptr, ptr %i.ix, align 8, !tbaa !93 ; 4 uses
  %i.wb = icmp eq ptr %i.wa, null
  br i1 %i.wb, label %bb.ia, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.wc = getelementptr inbounds i8, ptr %i.wa, i64 -4
  %i.wd = load i32, ptr %i.wc, align 4, !tbaa !106
  br label %bb.ia

bb.ia:                                            ; preds = %bb.hz, %bb.hy
  %.0.i.i374 = phi i32 [ %i.wd, %bb.hz ], [ 0, %bb.hy ]
  %i.we = load ptr, ptr %i.wa, align 8, !tbaa !8
  %i.wf = invoke noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %i.we)
          to label %bb.ib unwind label %bb.ih

bb.ib:                                            ; preds = %bb.ia
  %i.wg = zext i32 %.0171.lcssa500 to i64
  %i.wh = getelementptr inbounds nuw [8 x i8], ptr %i.wa, i64 %i.wg
  %i.wi = sub i32 %.0.i.i374, %.0171.lcssa500
  %i.wj = invoke noundef ptr @_ZNK8seq_util3str9mk_concatEjPKP4exprP4sort(ptr noundef nonnull align 8 dereferenceable(20) %i.an, i32 noundef %i.wi, ptr noundef nonnull %i.wh, ptr noundef %i.wf)
          to label %bb.ic unwind label %bb.ih

bb.ic:                                            ; preds = %bb.ib
  %i.wk = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7obj_refI4expr11ast_managerEaSEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.wj)
          to label %bb.id unwind label %bb.ih     ; 0 uses

bb.id:                                            ; preds = %bb.ic
  %i.wl = load ptr, ptr %4, align 8, !tbaa !16
  %i.wm = load ptr, ptr %19, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store ptr %i.wl, ptr %i.a, align 16, !tbaa !8
  %i.wn = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.wm, ptr %i.wn, align 8, !tbaa !8
  %i.wo = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %3, ptr %i.wo, align 16, !tbaa !8
  %i.wp = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.wq = load ptr, ptr %i.wp, align 8, !tbaa !219, !nonnull !14, !align !15
  %i.wr = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ws = load i32, ptr %i.wr, align 8, !tbaa !90
  %i.wt = invoke noundef ptr @_ZN11ast_manager6mk_appEiijPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.wq, i32 noundef %i.ws, i32 noundef 6, i32 noundef 3, ptr noundef nonnull %i.a)
          to label %bb.ie unwind label %bb.ig

bb.ie:                                            ; preds = %bb.id
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.wu = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7obj_refI4expr11ast_managerEaSEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.wt)
          to label %bb.if unwind label %bb.ig     ; 0 uses

bb.if:                                            ; preds = %bb.ie
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %19) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  br label %.critedge254

bb.ig:                                            ; preds = %bb.id, %bb.hx, %bb.ie, %_ZNK10arith_util6mk_subEP4exprS1_.exit373, %bb.hw
  %i.wv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ii

bb.ih:                                            ; preds = %bb.ic, %bb.ib, %bb.ia
  %i.ww = landingpad { ptr, i32 }
          cleanup
  br label %bb.ii

bb.ii:                                            ; preds = %bb.ih, %bb.ig
  %.pn213 = phi { ptr, i32 } [ %i.wv, %bb.ig ], [ %i.ww, %bb.ih ]
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %19) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  br label %bb.il

.critedge254:                                     ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit357, %bb.ht, %bb.hq, %bb.hv, %bb.hf, %bb.ha, %bb.if
  %.1201 = phi i32 [ 4, %bb.ht ], [ 5, %bb.ha ], [ 4, %bb.hf ], [ 2, %bb.if ], [ 5, %bb.hv ], [ 4, %bb.hq ], [ 3, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit357 ]
  %i.wx = load ptr, ptr %i.sn, align 8, !tbaa !269 ; 2 uses
  %.not.i380 = icmp eq ptr %i.wx, null
  br i1 %.not.i380, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.ij

bb.ij:                                            ; preds = %.critedge254
  %i.wy = invoke noundef zeroext i1 %i.wx(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %18, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.ik ; 0 uses

bb.ik:                                            ; preds = %bb.ij
  %i.wz = landingpad { ptr, i32 }
          catch ptr null
  %i.xa = extractvalue { ptr, i32 } %i.wz, 0
  call void @__clang_call_terminate(ptr %i.xa) #26
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %.critedge254, %bb.ij
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  br label %bb.io

bb.il:                                            ; preds = %bb.hm, %bb.hu, %bb.hn, %bb.ii, %bb.gt, %bb.gs
  %.pn217 = phi { ptr, i32 } [ %i.ta, %bb.gt ], [ %i.sz, %bb.gs ], [ %.pn213, %bb.ii ], [ %i.ux, %bb.hm ], [ %i.uy, %bb.hn ], [ %i.vt, %bb.hu ]
  %i.xb = load ptr, ptr %i.sn, align 8, !tbaa !269 ; 2 uses
  %.not.i381 = icmp eq ptr %i.xb, null
  br i1 %.not.i381, label %_ZNSt14_Function_baseD2Ev.exit382, label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.xc = invoke noundef zeroext i1 %i.xb(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %18, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit382 unwind label %bb.in ; 0 uses

bb.in:                                            ; preds = %bb.im
  %i.xd = landingpad { ptr, i32 }
          catch ptr null
  %i.xe = extractvalue { ptr, i32 } %i.xd, 0
  call void @__clang_call_terminate(ptr %i.xe) #26
  unreachable

_ZNSt14_Function_baseD2Ev.exit382:                ; preds = %bb.il, %bb.im
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  br label %bb.ip

bb.io:                                            ; preds = %.invoke516, %.invoke, %_ZNSt14_Function_baseD2Ev.exit, %bb.gk, %_ZNK10arith_util10is_numeralEPK4expr.exit.thread, %bb.ge, %bb.ev, %bb.fg
  %.3203 = phi i32 [ 1, %bb.ge ], [ %.1201, %_ZNSt14_Function_baseD2Ev.exit ], [ 0, %.invoke516 ], [ 2, %bb.fg ], [ 2, %bb.ev ], [ 5, %bb.gk ], [ 4, %.invoke ], [ 5, %_ZNK10arith_util10is_numeralEPK4expr.exit.thread ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %bb.iq

bb.ip:                                            ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt14_Function_baseD2Ev.exit382, %bb.dz, %bb.fj, %bb.em, %bb.dw
end_hunk_0
