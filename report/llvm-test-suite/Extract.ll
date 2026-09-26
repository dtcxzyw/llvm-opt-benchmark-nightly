Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/Extract?download=true
inline.NumInlined: 200
inline.NumDeleted: 87
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_Z18DecompressArchivesP7CCodecsRK13CRecordVectorIiER13CObjectVectorI11CStringBaseIwEES9_RKN9NWildcard11CCensorNodeERK15CExtractOptionsP15IOpenCallbackUIP18IExtractCallbackUIRS7_R15CDecompressStat:bb.a
  br i1 %i.om, label %.preheader.i.i327, label %bb.cl

.preheader.i.i327:                                ; preds = %.noexc337
  %i.on = icmp sgt i32 %.pre1.i, 0
  %.pre.i.i328 = load ptr, ptr %25, align 8, !tbaa !23 ; 9 uses
  br i1 %i.on, label %.lr.ph.i.i332, label %._crit_edge.i.i329

.lr.ph.i.i332:                                    ; preds = %.preheader.i.i327
  %.pre.i.i328706 = ptrtoaddr ptr %.pre.i.i328 to i64
  %wide.trip.count.i.i333 = zext nneg i32 %.pre1.i to i64 ; 5 uses
  %min.iters.check709 = icmp ult i32 %.pre1.i, 8
  %i.oo = sub i64 %.pre.i.i328706, %i.ok
  %diff.check707 = icmp ugt i64 %i.oo, -32
  %or.cond753 = select i1 %min.iters.check709, i1 true, i1 %diff.check707
  br i1 %or.cond753, label %scalar.ph708.preheader, label %vector.ph710

vector.ph710:                                     ; preds = %.lr.ph.i.i332
  %n.vec711 = and i64 %wide.trip.count.i.i333, 2147483640 ; 3 uses
  br label %vector.body712

vector.body712:                                   ; preds = %vector.body712, %vector.ph710
  %index713 = phi i64 [ 0, %vector.ph710 ], [ %index.next716, %vector.body712 ] ; 3 uses
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i328, i64 %index713 ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 16
  %wide.load714 = load <4 x i32>, ptr %i.op, align 4, !tbaa !25
  %wide.load715 = load <4 x i32>, ptr %i.oq, align 4, !tbaa !25
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.oj, i64 %index713 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 16
  store <4 x i32> %wide.load714, ptr %i.or, align 4, !tbaa !25
  store <4 x i32> %wide.load715, ptr %i.os, align 4, !tbaa !25
  %index.next716 = add nuw i64 %index713, 8       ; 2 uses
  %i.ot = icmp eq i64 %index.next716, %n.vec711
  br i1 %i.ot, label %middle.block717, label %vector.body712, !llvm.loop !81

middle.block717:                                  ; preds = %vector.body712
  %cmp.n718 = icmp eq i64 %n.vec711, %wide.trip.count.i.i333
  br i1 %cmp.n718, label %._crit_edge.thread.i.i330, label %scalar.ph708.preheader

scalar.ph708.preheader:                           ; preds = %.lr.ph.i.i332, %middle.block717
  %indvars.iv.i.i334.ph = phi i64 [ 0, %.lr.ph.i.i332 ], [ %n.vec711, %middle.block717 ] ; 3 uses
  %xtraiter791 = and i64 %wide.trip.count.i.i333, 3 ; 2 uses
  %lcmp.mod792.not = icmp eq i64 %xtraiter791, 0
  br i1 %lcmp.mod792.not, label %scalar.ph708.prol.loopexit, label %scalar.ph708.prol

scalar.ph708.prol:                                ; preds = %scalar.ph708.preheader, %scalar.ph708.prol
  %indvars.iv.i.i334.prol = phi i64 [ %indvars.iv.next.i.i335.prol, %scalar.ph708.prol ], [ %indvars.iv.i.i334.ph, %scalar.ph708.preheader ] ; 3 uses
  %prol.iter793 = phi i64 [ %prol.iter793.next, %scalar.ph708.prol ], [ 0, %scalar.ph708.preheader ]
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i328, i64 %indvars.iv.i.i334.prol
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !25
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.oj, i64 %indvars.iv.i.i334.prol
  store i32 %i.ov, ptr %i.ow, align 4, !tbaa !25
  %indvars.iv.next.i.i335.prol = add nuw nsw i64 %indvars.iv.i.i334.prol, 1 ; 2 uses
  %prol.iter793.next = add i64 %prol.iter793, 1   ; 2 uses
  %prol.iter793.cmp.not = icmp eq i64 %prol.iter793.next, %xtraiter791
  br i1 %prol.iter793.cmp.not, label %scalar.ph708.prol.loopexit, label %scalar.ph708.prol, !llvm.loop !82

scalar.ph708.prol.loopexit:                       ; preds = %scalar.ph708.prol, %scalar.ph708.preheader
  %indvars.iv.i.i334.unr = phi i64 [ %indvars.iv.i.i334.ph, %scalar.ph708.preheader ], [ %indvars.iv.next.i.i335.prol, %scalar.ph708.prol ]
  %i.ox = sub nsw i64 %indvars.iv.i.i334.ph, %wide.trip.count.i.i333
  %i.oy = icmp ugt i64 %i.ox, -4
  br i1 %i.oy, label %._crit_edge.thread.i.i330, label %scalar.ph708

._crit_edge.i.i329:                               ; preds = %.preheader.i.i327
  %i.oz = icmp eq ptr %.pre.i.i328, null
  br i1 %i.oz, label %bb.cl, label %._crit_edge.thread.i.i330

scalar.ph708:                                     ; preds = %scalar.ph708.prol.loopexit, %scalar.ph708
  %indvars.iv.i.i334 = phi i64 [ %indvars.iv.next.i.i335.3, %scalar.ph708 ], [ %indvars.iv.i.i334.unr, %scalar.ph708.prol.loopexit ] ; 6 uses
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i328, i64 %indvars.iv.i.i334
  %i.pb = load i32, ptr %i.pa, align 4, !tbaa !25
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.oj, i64 %indvars.iv.i.i334
  store i32 %i.pb, ptr %i.pc, align 4, !tbaa !25
  %indvars.iv.next.i.i335 = add nuw nsw i64 %indvars.iv.i.i334, 1 ; 2 uses
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i328, i64 %indvars.iv.next.i.i335
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !25
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.oj, i64 %indvars.iv.next.i.i335
  store i32 %i.pe, ptr %i.pf, align 4, !tbaa !25
  %indvars.iv.next.i.i335.1 = add nuw nsw i64 %indvars.iv.i.i334, 2 ; 2 uses
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i328, i64 %indvars.iv.next.i.i335.1
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !25
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.oj, i64 %indvars.iv.next.i.i335.1
  store i32 %i.ph, ptr %i.pi, align 4, !tbaa !25
  %indvars.iv.next.i.i335.2 = add nuw nsw i64 %indvars.iv.i.i334, 3 ; 2 uses
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i328, i64 %indvars.iv.next.i.i335.2
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !25
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.oj, i64 %indvars.iv.next.i.i335.2
  store i32 %i.pk, ptr %i.pl, align 4, !tbaa !25
  %indvars.iv.next.i.i335.3 = add nuw nsw i64 %indvars.iv.i.i334, 4 ; 2 uses
  %exitcond.not.i.i336.3 = icmp eq i64 %indvars.iv.next.i.i335.3, %wide.trip.count.i.i333
  br i1 %exitcond.not.i.i336.3, label %._crit_edge.thread.i.i330, label %scalar.ph708, !llvm.loop !83

._crit_edge.thread.i.i330:                        ; preds = %scalar.ph708.prol.loopexit, %scalar.ph708, %middle.block717, %._crit_edge.i.i329
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i328) #16
  %.pre.i331 = load i32, ptr %i.dp, align 8, !tbaa !22
  br label %bb.cl

bb.cl:                                            ; preds = %._crit_edge.thread.i.i330, %._crit_edge.i.i329, %.noexc337
  %i.pm = phi i32 [ %.pre1.i, %.noexc337 ], [ %.pre1.i, %._crit_edge.i.i329 ], [ %.pre.i331, %._crit_edge.thread.i.i330 ]
  store ptr %i.oj, ptr %25, align 8, !tbaa !23
  %i.pn = sext i32 %i.pm to i64
  %i.po = getelementptr inbounds [4 x i8], ptr %i.oj, i64 %i.pn
  store i32 0, ptr %i.po, align 4, !tbaa !25
  store i32 4, ptr %i.dq, align 4, !tbaa !21
  %i.pp = load ptr, ptr %6, align 8, !tbaa !14
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 32
  %i.pr = load ptr, ptr %i.pq, align 8
  %i.ps = invoke noundef i32 %i.pr(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(16) %25)
          to label %bb.cm unwind label %bb.co     ; 2 uses

bb.cm:                                            ; preds = %bb.cl
  %.not257 = icmp eq i32 %i.ps, 0
  br i1 %.not257, label %bb.cp, label %.thread373

bb.cn:                                            ; preds = %bb.ck
  %i.pt = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit359

bb.co:                                            ; preds = %bb.cl
  %i.pu = landingpad { ptr, i32 }
          cleanup
  br label %.body355

bb.cp:                                            ; preds = %bb.cm
  %i.pv = load i32, ptr %i.dp, align 8, !tbaa !22
  %i.pw = icmp eq i32 %i.pv, 0
  br i1 %i.pw, label %bb.ct, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.px = load ptr, ptr %7, align 8, !tbaa !14
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 120
  %i.pz = load ptr, ptr %i.py, align 8
  %i.qa = invoke noundef i32 %i.pz(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(16) %25)
          to label %bb.cr unwind label %bb.cs     ; 2 uses

bb.cr:                                            ; preds = %bb.cq
  %.not258 = icmp eq i32 %i.qa, 0
  br i1 %.not258, label %bb.ct, label %.thread373

bb.cs:                                            ; preds = %bb.cq
  %i.qb = landingpad { ptr, i32 }
          cleanup
  br label %.body355

bb.ct:                                            ; preds = %bb.cr, %bb.cp
  %i.qc = load i32, ptr %i.dr, align 4, !tbaa !34 ; 3 uses
  %.not260484 = icmp sgt i32 %i.qc, 0
  br i1 %.not260484, label %.lr.ph487, label %.._crit_edge488_crit_edge

.._crit_edge488_crit_edge:                        ; preds = %bb.ct
  %.pre537 = sext i32 %i.qc to i64
  br label %._crit_edge488

.lr.ph487:                                        ; preds = %bb.ct, %.thread
  %i.qd = phi i32 [ %i.qr, %.thread ], [ %i.qc, %bb.ct ]
  %indvars.iv529 = phi i64 [ %indvars.iv.next530, %.thread ], [ 0, %bb.ct ] ; 2 uses
  %i.qe = load ptr, ptr %i.ds, align 8, !tbaa !32
  %i.qf = getelementptr inbounds nuw [8 x i8], ptr %i.qe, i64 %indvars.iv529
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !33 ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 72
  %i.qi = load i32, ptr %i.qh, align 8, !tbaa !22
  %i.qj = icmp eq i32 %i.qi, 0
  br i1 %i.qj, label %.thread, label %bb.cu

bb.cu:                                            ; preds = %.lr.ph487
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qg, i64 64
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !23
  %i.qm = load ptr, ptr %7, align 8, !tbaa !14
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 72
  %i.qo = load ptr, ptr %i.qn, align 8
  %i.qp = invoke noundef i32 %i.qo(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %i.ql)
          to label %bb.cw unwind label %bb.cv     ; 2 uses

bb.cv:                                            ; preds = %bb.cu
  %i.qq = landingpad { ptr, i32 }
          cleanup
  br label %.body355

bb.cw:                                            ; preds = %bb.cu
  %.not259 = icmp eq i32 %i.qp, 0
  br i1 %.not259, label %..thread_crit_edge, label %.thread373

..thread_crit_edge:                               ; preds = %bb.cw
  %.pre536 = load i32, ptr %i.dr, align 4, !tbaa !34
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %.lr.ph487
  %i.qr = phi i32 [ %.pre536, %..thread_crit_edge ], [ %i.qd, %.lr.ph487 ] ; 2 uses
  %indvars.iv.next530 = add nuw nsw i64 %indvars.iv529, 1 ; 2 uses
  %i.qs = sext i32 %i.qr to i64                   ; 2 uses
  %.not260 = icmp slt i64 %indvars.iv.next530, %i.qs
  br i1 %.not260, label %.lr.ph487, label %._crit_edge488, !llvm.loop !84

._crit_edge488:                                   ; preds = %.thread, %.._crit_edge488_crit_edge
  %.pre-phi = phi i64 [ %.pre537, %.._crit_edge488_crit_edge ], [ %i.qs, %.thread ]
  %i.qt = load ptr, ptr %i.ds, align 8, !tbaa !32
  %i.qu = getelementptr [8 x i8], ptr %i.qt, i64 %.pre-phi
  %i.qv = getelementptr i8, ptr %i.qu, i64 -8
  %i.qw = load ptr, ptr %i.qv, align 8, !tbaa !33 ; 6 uses
  %i.qx = load i8, ptr %5, align 8, !tbaa !103, !range !104, !noundef !105
  %i.qy = trunc nuw i8 %i.qx to i1
  %i.qz = load i8, ptr %i.dt, align 4, !range !104
  %i.ra = xor i8 %i.qz, 1
  %i.rb = select i1 %i.qy, i8 0, i8 %i.ra
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qw, i64 56
  store i8 %i.rb, ptr %i.rc, align 8, !tbaa !119
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qw, i64 48
  %i.re = load i64, ptr %i.du, align 8
  store i64 %i.re, ptr %i.rd, align 8
  %i.rf = load i64, ptr %19, align 8, !tbaa !107
  %i.rg = load i64, ptr %i.cz, align 8, !tbaa !115
  %i.rh = add i64 %i.rg, %i.rf
  %i.ri = load ptr, ptr %i.qw, align 8, !tbaa !60 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dv, i8 0, i64 16, i1 false)
  store i64 4, ptr %i.dw, align 8, !tbaa !12
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIjE, i64 16), ptr %10, align 8, !tbaa !14
  %26 = load i8, ptr %5, align 8, !tbaa !103, !range !104, !noundef !105
  %27 = trunc nuw i8 %26 to i1
  br i1 %27, label %bb.dv, label %bb.cx

bb.cx:                                            ; preds = %._crit_edge488
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !14
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 56
  %i.rl = load ptr, ptr %i.rk, align 8
  %i.rm = invoke noundef i32 %i.rl(ptr noundef nonnull align 8 dereferenceable(8) %i.ri, ptr noundef nonnull %i.a)
          to label %bb.cy unwind label %bb.cz     ; 2 uses

bb.cy:                                            ; preds = %bb.cx
  %.not.i338 = icmp eq i32 %i.rm, 0
  br i1 %.not.i338, label %.preheader.i, label %.thread225.i

.preheader.i:                                     ; preds = %bb.cy
  %i.rn = load i32, ptr %i.a, align 4, !tbaa !8
  %.not236.i = icmp eq i32 %i.rn, 0
  br i1 %.not236.i, label %._crit_edge.i, label %.lr.ph.i339

bb.cz:                                            ; preds = %bb.cx
  %i.ro = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

.lr.ph.i339:                                      ; preds = %.preheader.i, %_ZN11CStringBaseIwED2Ev.exit.jt4.i
  %.067234.i = phi i32 [ %i.tp, %_ZN11CStringBaseIwED2Ev.exit.jt4.i ], [ 0, %.preheader.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  %i.rp = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #15
          to label %.noexc.i340 unwind label %bb.dc ; 9 uses

.noexc.i340:                                      ; preds = %.lr.ph.i339
  %i.rq = ptrtoaddr ptr %i.rp to i64
  %i.rr = load i32, ptr %i.dy, align 4, !tbaa !21
  %i.rs = icmp sgt i32 %i.rr, 0
  %.pre1.i.i341 = load i32, ptr %i.dx, align 8, !tbaa !22 ; 5 uses
  br i1 %i.rs, label %.preheader.i.i.i345, label %bb.da

.preheader.i.i.i345:                              ; preds = %.noexc.i340
  %i.rt = icmp sgt i32 %.pre1.i.i341, 0
  %.pre.i.i.i346 = load ptr, ptr %11, align 8, !tbaa !23 ; 9 uses
  br i1 %i.rt, label %.lr.ph.i.i.i350, label %._crit_edge.i.i.i347

.lr.ph.i.i.i350:                                  ; preds = %.preheader.i.i.i345
  %.pre.i.i.i346691 = ptrtoaddr ptr %.pre.i.i.i346 to i64
  %wide.trip.count.i.i.i351 = zext nneg i32 %.pre1.i.i341 to i64 ; 5 uses
  %min.iters.check694 = icmp ult i32 %.pre1.i.i341, 8
  %i.ru = sub i64 %.pre.i.i.i346691, %i.rq
  %diff.check692 = icmp ugt i64 %i.ru, -32
  %or.cond754 = select i1 %min.iters.check694, i1 true, i1 %diff.check692
  br i1 %or.cond754, label %scalar.ph693.preheader, label %vector.ph695

vector.ph695:                                     ; preds = %.lr.ph.i.i.i350
  %n.vec696 = and i64 %wide.trip.count.i.i.i351, 2147483640 ; 3 uses
  br label %vector.body697

vector.body697:                                   ; preds = %vector.body697, %vector.ph695
  %index698 = phi i64 [ 0, %vector.ph695 ], [ %index.next701, %vector.body697 ] ; 3 uses
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i346, i64 %index698 ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 16
  %wide.load699 = load <4 x i32>, ptr %i.rv, align 4, !tbaa !25
  %wide.load700 = load <4 x i32>, ptr %i.rw, align 4, !tbaa !25
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.rp, i64 %index698 ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 16
  store <4 x i32> %wide.load699, ptr %i.rx, align 4, !tbaa !25
  store <4 x i32> %wide.load700, ptr %i.ry, align 4, !tbaa !25
  %index.next701 = add nuw i64 %index698, 8       ; 2 uses
  %i.rz = icmp eq i64 %index.next701, %n.vec696
  br i1 %i.rz, label %middle.block702, label %vector.body697, !llvm.loop !85

middle.block702:                                  ; preds = %vector.body697
  %cmp.n703 = icmp eq i64 %n.vec696, %wide.trip.count.i.i.i351
  br i1 %cmp.n703, label %._crit_edge.thread.i.i.i348, label %scalar.ph693.preheader

scalar.ph693.preheader:                           ; preds = %.lr.ph.i.i.i350, %middle.block702
  %indvars.iv.i.i.i352.ph = phi i64 [ 0, %.lr.ph.i.i.i350 ], [ %n.vec696, %middle.block702 ] ; 3 uses
  %xtraiter794 = and i64 %wide.trip.count.i.i.i351, 3 ; 2 uses
  %lcmp.mod795.not = icmp eq i64 %xtraiter794, 0
  br i1 %lcmp.mod795.not, label %scalar.ph693.prol.loopexit, label %scalar.ph693.prol

scalar.ph693.prol:                                ; preds = %scalar.ph693.preheader, %scalar.ph693.prol
  %indvars.iv.i.i.i352.prol = phi i64 [ %indvars.iv.next.i.i.i353.prol, %scalar.ph693.prol ], [ %indvars.iv.i.i.i352.ph, %scalar.ph693.preheader ] ; 3 uses
  %prol.iter796 = phi i64 [ %prol.iter796.next, %scalar.ph693.prol ], [ 0, %scalar.ph693.preheader ]
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i346, i64 %indvars.iv.i.i.i352.prol
  %i.sb = load i32, ptr %i.sa, align 4, !tbaa !25
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr %i.rp, i64 %indvars.iv.i.i.i352.prol
  store i32 %i.sb, ptr %i.sc, align 4, !tbaa !25
  %indvars.iv.next.i.i.i353.prol = add nuw nsw i64 %indvars.iv.i.i.i352.prol, 1 ; 2 uses
  %prol.iter796.next = add i64 %prol.iter796, 1   ; 2 uses
  %prol.iter796.cmp.not = icmp eq i64 %prol.iter796.next, %xtraiter794
  br i1 %prol.iter796.cmp.not, label %scalar.ph693.prol.loopexit, label %scalar.ph693.prol, !llvm.loop !86

scalar.ph693.prol.loopexit:                       ; preds = %scalar.ph693.prol, %scalar.ph693.preheader
  %indvars.iv.i.i.i352.unr = phi i64 [ %indvars.iv.i.i.i352.ph, %scalar.ph693.preheader ], [ %indvars.iv.next.i.i.i353.prol, %scalar.ph693.prol ]
  %i.sd = sub nsw i64 %indvars.iv.i.i.i352.ph, %wide.trip.count.i.i.i351
  %i.se = icmp ugt i64 %i.sd, -4
  br i1 %i.se, label %._crit_edge.thread.i.i.i348, label %scalar.ph693

._crit_edge.i.i.i347:                             ; preds = %.preheader.i.i.i345
  %i.sf = icmp eq ptr %.pre.i.i.i346, null
  br i1 %i.sf, label %bb.da, label %._crit_edge.thread.i.i.i348

scalar.ph693:                                     ; preds = %scalar.ph693.prol.loopexit, %scalar.ph693
  %indvars.iv.i.i.i352 = phi i64 [ %indvars.iv.next.i.i.i353.3, %scalar.ph693 ], [ %indvars.iv.i.i.i352.unr, %scalar.ph693.prol.loopexit ] ; 6 uses
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i346, i64 %indvars.iv.i.i.i352
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !25
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %i.rp, i64 %indvars.iv.i.i.i352
  store i32 %i.sh, ptr %i.si, align 4, !tbaa !25
  %indvars.iv.next.i.i.i353 = add nuw nsw i64 %indvars.iv.i.i.i352, 1 ; 2 uses
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i346, i64 %indvars.iv.next.i.i.i353
  %i.sk = load i32, ptr %i.sj, align 4, !tbaa !25
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %i.rp, i64 %indvars.iv.next.i.i.i353
  store i32 %i.sk, ptr %i.sl, align 4, !tbaa !25
  %indvars.iv.next.i.i.i353.1 = add nuw nsw i64 %indvars.iv.i.i.i352, 2 ; 2 uses
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i346, i64 %indvars.iv.next.i.i.i353.1
  %i.sn = load i32, ptr %i.sm, align 4, !tbaa !25
  %i.so = getelementptr inbounds nuw [4 x i8], ptr %i.rp, i64 %indvars.iv.next.i.i.i353.1
  store i32 %i.sn, ptr %i.so, align 4, !tbaa !25
  %indvars.iv.next.i.i.i353.2 = add nuw nsw i64 %indvars.iv.i.i.i352, 3 ; 2 uses
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i346, i64 %indvars.iv.next.i.i.i353.2
  %i.sq = load i32, ptr %i.sp, align 4, !tbaa !25
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %i.rp, i64 %indvars.iv.next.i.i.i353.2
  store i32 %i.sq, ptr %i.sr, align 4, !tbaa !25
  %indvars.iv.next.i.i.i353.3 = add nuw nsw i64 %indvars.iv.i.i.i352, 4 ; 2 uses
  %exitcond.not.i.i.i354.3 = icmp eq i64 %indvars.iv.next.i.i.i353.3, %wide.trip.count.i.i.i351
  br i1 %exitcond.not.i.i.i354.3, label %._crit_edge.thread.i.i.i348, label %scalar.ph693, !llvm.loop !87

._crit_edge.thread.i.i.i348:                      ; preds = %scalar.ph693.prol.loopexit, %scalar.ph693, %middle.block702, %._crit_edge.i.i.i347
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i.i346) #16
  %.pre.i.i349 = load i32, ptr %i.dx, align 8, !tbaa !22
  br label %bb.da

bb.da:                                            ; preds = %._crit_edge.thread.i.i.i348, %._crit_edge.i.i.i347, %.noexc.i340
  %i.ss = phi i32 [ %.pre1.i.i341, %.noexc.i340 ], [ %.pre1.i.i341, %._crit_edge.i.i.i347 ], [ %.pre.i.i349, %._crit_edge.thread.i.i.i348 ]
  store ptr %i.rp, ptr %11, align 8, !tbaa !23
  %i.st = sext i32 %i.ss to i64
  %i.su = getelementptr inbounds [4 x i8], ptr %i.rp, i64 %i.st
  store i32 0, ptr %i.su, align 4, !tbaa !25
  store i32 4, ptr %i.dy, align 4, !tbaa !21
  %i.sv = invoke noundef i32 @_ZNK4CArc11GetItemPathEjR11CStringBaseIwE(ptr noundef nonnull align 8 dereferenceable(80) %i.qw, i32 noundef %.067234.i, ptr noundef nonnull align 8 dereferenceable(16) %11)
          to label %bb.db unwind label %bb.dd     ; 2 uses

bb.db:                                            ; preds = %bb.da
  %.not104.i = icmp eq i32 %i.sv, 0
  br i1 %.not104.i, label %bb.de, label %.loopexit.i342

bb.dc:                                            ; preds = %.lr.ph.i339
  %i.sw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit125.i

bb.dd:                                            ; preds = %bb.da
  %i.sx = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

bb.de:                                            ; preds = %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.sy = invoke noundef i32 @_Z19IsArchiveItemFolderP10IInArchivejRb(ptr noundef nonnull %i.ri, i32 noundef %.067234.i, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.df unwind label %bb.dg     ; 2 uses

bb.df:                                            ; preds = %bb.de
  %.not105.i = icmp eq i32 %i.sy, 0
  br i1 %.not105.i, label %bb.dh, label %bb.dl

bb.dg:                                            ; preds = %bb.de
  %i.sz = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.dh:                                            ; preds = %bb.df
  %i.ta = load i8, ptr %i.b, align 1, !tbaa !120, !range !104, !noundef !105
  %i.tb = trunc nuw i8 %i.ta to i1
  %i.tc = xor i1 %i.tb, true
  %i.td = invoke noundef zeroext i1 @_ZNK9NWildcard11CCensorNode9CheckPathERK11CStringBaseIwEb(ptr noundef nonnull align 8 dereferenceable(120) %4, ptr noundef nonnull align 8 dereferenceable(16) %11, i1 noundef zeroext %i.tc)
          to label %bb.di unwind label %bb.dj

bb.di:                                            ; preds = %bb.dh
  br i1 %i.td, label %bb.dk, label %bb.dm

bb.dj:                                            ; preds = %bb.dk, %bb.dh
  %i.te = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.dk:                                            ; preds = %bb.di
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %_ZN13CRecordVectorIjE3AddEj.exit.i unwind label %bb.dj

_ZN13CRecordVectorIjE3AddEj.exit.i:               ; preds = %bb.dk
  %i.tf = load ptr, ptr %i.dz, align 8, !tbaa !32
  %i.tg = load i32, ptr %i.ea, align 4, !tbaa !34
  %i.th = sext i32 %i.tg to i64
  %i.ti = getelementptr inbounds [4 x i8], ptr %i.tf, i64 %i.th
  store i32 %.067234.i, ptr %i.ti, align 4, !tbaa !8
  %i.tj = load i32, ptr %i.ea, align 4, !tbaa !34
  %i.tk = add nsw i32 %i.tj, 1
  store i32 %i.tk, ptr %i.ea, align 4, !tbaa !34
  br label %bb.dm

bb.dl:                                            ; preds = %bb.df
end_hunk_0
