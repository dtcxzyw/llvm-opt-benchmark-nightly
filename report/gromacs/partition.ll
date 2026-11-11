Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/partition?download=true
inline.NumInlined: 2655
inline.NumDeleted: 1066
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZN3gmx19dd_partition_systemEP8_IO_FILERKNS_8MDLoggerElP12gmx_domdec_tbP7t_stateRK10gmx_mtop_tRK10t_inputrecRKNS_18MDModulesNotifiersEPNS_10ImdSessionEP6pull_tS8_PNS_12ForceBuffersEPNS_7MDAtomsEP14gmx_localtop_tP10t_forcerecPNS_19VirtualSitesHandlerEPNS_11ConstraintsEP6t_nrnbP13gmx_wallcycleb:bb.a
  store i32 0, ptr %i.e, align 4, !tbaa !210
  %i.cnc = icmp sgt i32 %i.cmj, 0
  br i1 %i.cnc, label %.lr.ph510.i, label %._crit_edge511.i

.lr.ph510.i:                                      ; preds = %bb.ky
  %i.cnd = getelementptr inbounds nuw i8, ptr %51, i64 56 ; 2 uses
  %i.cne = getelementptr inbounds nuw i8, ptr %3, i64 256
  %i.cnf = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.cng = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.cnh = getelementptr inbounds nuw i8, ptr %27, i64 8
  %scevgep = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  br label %bb.kz

bb.kz:                                            ; preds = %_ZL18make_cell2at_indexP21gmx_domdec_comm_dim_tii.exit.i, %.lr.ph510.i
  %i.cni = phi ptr [ %3, %.lr.ph510.i ], [ %i.dvw, %_ZL18make_cell2at_indexP21gmx_domdec_comm_dim_tii.exit.i ] ; 2 uses
  %.0141508.i = phi i32 [ %i.cnb, %.lr.ph510.i ], [ %.1142.lcssa663.i, %_ZL18make_cell2at_indexP21gmx_domdec_comm_dim_tii.exit.i ] ; 2 uses
  %.0143507.i = phi i32 [ 1, %.lr.ph510.i ], [ %.pre-phi, %_ZL18make_cell2at_indexP21gmx_domdec_comm_dim_tii.exit.i ] ; 23 uses
  %storemerge506.i = phi i32 [ 0, %.lr.ph510.i ], [ %i.dvv, %_ZL18make_cell2at_indexP21gmx_domdec_comm_dim_tii.exit.i ] ; 4 uses
  %i.cnj = getelementptr inbounds nuw i8, ptr %i.cni, i64 180 ; 6 uses
  %i.cnk = sext i32 %storemerge506.i to i64       ; 3 uses
  %i.cnl = getelementptr inbounds nuw [4 x i8], ptr %i.cnj, i64 %i.cnk
  %i.cnm = load i32, ptr %i.cnl, align 4, !tbaa !210 ; 4 uses
  store i32 %i.cnm, ptr %i.f, align 4, !tbaa !210
  %i.cnn = load ptr, ptr %i.m, align 8, !tbaa !15 ; 2 uses
  %i.cno = getelementptr inbounds nuw i8, ptr %i.cnn, i64 904
  %i.cnp = getelementptr inbounds nuw [32 x i8], ptr %i.cno, i64 %i.cnk ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #19
  store i8 0, ptr %i.aa, align 1, !tbaa !366
  %.not165474.i = icmp slt i32 %storemerge506.i, 0
  br i1 %.not165474.i, label %._crit_edge.i547, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.kz
  %i.cnq = add nuw i32 %storemerge506.i, 1
  %wide.trip.count.i542 = zext nneg i32 %i.cnq to i64 ; 2 uses
  %xtraiter1776 = and i64 %wide.trip.count.i542, 3 ; 3 uses
  %i.cnr = icmp ult i32 %storemerge506.i, 3
  br i1 %i.cnr, label %.lr.ph.i543.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter1780 = and i64 %wide.trip.count.i542, 2147483644
  br label %.lr.ph.i543

._crit_edge.i547.loopexit.unr-lcssa:              ; preds = %bb.lg
  %lcmp.mod1778.not = icmp eq i64 %xtraiter1776, 0
  br i1 %lcmp.mod1778.not, label %._crit_edge.i547, label %.lr.ph.i543.epil.preheader

.lr.ph.i543.epil.preheader:                       ; preds = %._crit_edge.i547.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i544.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i545.3, %._crit_edge.i547.loopexit.unr-lcssa ]
  %lcmp.mod1779 = icmp ne i64 %xtraiter1776, 0
  call void @llvm.assume(i1 %lcmp.mod1779)
  br label %.lr.ph.i543.epil

.lr.ph.i543.epil:                                 ; preds = %bb.lb, %.lr.ph.i543.epil.preheader
  %indvars.iv.i544.epil = phi i64 [ %indvars.iv.i544.epil.init, %.lr.ph.i543.epil.preheader ], [ %indvars.iv.next.i545.epil, %bb.lb ] ; 2 uses
  %epil.iter1777 = phi i64 [ 0, %.lr.ph.i543.epil.preheader ], [ %epil.iter1777.next, %bb.lb ]
  %i.cns = getelementptr inbounds nuw [4 x i8], ptr %i.cnj, i64 %indvars.iv.i544.epil
  %i.cnt = load i32, ptr %i.cns, align 4, !tbaa !210
  %i.cnu = sext i32 %i.cnt to i64
  %i.cnv = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.cnu
  %i.cnw = load i32, ptr %i.cnv, align 4, !tbaa !210
  %.not178.i.epil = icmp eq i32 %i.cnw, 0
  br i1 %.not178.i.epil, label %bb.lb, label %bb.la

bb.la:                                            ; preds = %.lr.ph.i543.epil
  store i8 1, ptr %i.aa, align 1, !tbaa !366
  br label %bb.lb

bb.lb:                                            ; preds = %bb.la, %.lr.ph.i543.epil
  %indvars.iv.next.i545.epil = add nuw nsw i64 %indvars.iv.i544.epil, 1
  %epil.iter1777.next = add i64 %epil.iter1777, 1 ; 2 uses
  %epil.iter1777.cmp.not = icmp eq i64 %epil.iter1777.next, %xtraiter1776
  br i1 %epil.iter1777.cmp.not, label %._crit_edge.i547, label %.lr.ph.i543.epil, !llvm.loop !502

._crit_edge.i547:                                 ; preds = %._crit_edge.i547.loopexit.unr-lcssa, %bb.lb, %bb.kz
  %i.cnx = load i32, ptr %51, align 4, !tbaa !665
  %.not166.i = icmp slt i32 %i.cnm, %i.cnx
  br i1 %.not166.i, label %._crit_edge._crit_edge.i, label %bb.lh

._crit_edge._crit_edge.i:                         ; preds = %._crit_edge.i547
  %.pre597.i = sext i32 %i.cnm to i64
  br label %bb.li

.lr.ph.i543:                                      ; preds = %bb.lg, %.lr.ph.preheader.i.new
  %indvars.iv.i544 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i545.3, %bb.lg ] ; 5 uses
  %niter1781 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter1781.next.3, %bb.lg ]
  %i.cny = getelementptr inbounds nuw [4 x i8], ptr %i.cnj, i64 %indvars.iv.i544
  %i.cnz = load i32, ptr %i.cny, align 4, !tbaa !210
  %i.coa = sext i32 %i.cnz to i64
  %i.cob = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.coa
  %i.coc = load i32, ptr %i.cob, align 4, !tbaa !210
  %.not178.i = icmp eq i32 %i.coc, 0
  br i1 %.not178.i, label %.lr.ph.i543.1, label %bb.lc

bb.lc:                                            ; preds = %.lr.ph.i543
  store i8 1, ptr %i.aa, align 1, !tbaa !366
  br label %.lr.ph.i543.1

.lr.ph.i543.1:                                    ; preds = %bb.lc, %.lr.ph.i543
  %i.cod = getelementptr inbounds nuw [4 x i8], ptr %i.cnj, i64 %indvars.iv.i544
  %i.coe = getelementptr inbounds nuw i8, ptr %i.cod, i64 4
  %i.cof = load i32, ptr %i.coe, align 4, !tbaa !210
  %i.cog = sext i32 %i.cof to i64
  %i.coh = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.cog
  %i.coi = load i32, ptr %i.coh, align 4, !tbaa !210
  %.not178.i.1 = icmp eq i32 %i.coi, 0
  br i1 %.not178.i.1, label %.lr.ph.i543.2, label %bb.ld

bb.ld:                                            ; preds = %.lr.ph.i543.1
  store i8 1, ptr %i.aa, align 1, !tbaa !366
  br label %.lr.ph.i543.2

.lr.ph.i543.2:                                    ; preds = %bb.ld, %.lr.ph.i543.1
  %i.coj = getelementptr inbounds nuw [4 x i8], ptr %i.cnj, i64 %indvars.iv.i544
  %i.cok = getelementptr inbounds nuw i8, ptr %i.coj, i64 8
  %i.col = load i32, ptr %i.cok, align 4, !tbaa !210
  %i.com = sext i32 %i.col to i64
  %i.con = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.com
  %i.coo = load i32, ptr %i.con, align 4, !tbaa !210
  %.not178.i.2 = icmp eq i32 %i.coo, 0
  br i1 %.not178.i.2, label %.lr.ph.i543.3, label %bb.le

bb.le:                                            ; preds = %.lr.ph.i543.2
  store i8 1, ptr %i.aa, align 1, !tbaa !366
  br label %.lr.ph.i543.3

.lr.ph.i543.3:                                    ; preds = %bb.le, %.lr.ph.i543.2
  %i.cop = getelementptr inbounds nuw [4 x i8], ptr %i.cnj, i64 %indvars.iv.i544
  %i.coq = getelementptr inbounds nuw i8, ptr %i.cop, i64 12
  %i.cor = load i32, ptr %i.coq, align 4, !tbaa !210
  %i.cos = sext i32 %i.cor to i64
  %i.cot = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.cos
  %i.cou = load i32, ptr %i.cot, align 4, !tbaa !210
  %.not178.i.3 = icmp eq i32 %i.cou, 0
  br i1 %.not178.i.3, label %bb.lg, label %bb.lf

bb.lf:                                            ; preds = %.lr.ph.i543.3
  store i8 1, ptr %i.aa, align 1, !tbaa !366
  br label %bb.lg

bb.lg:                                            ; preds = %bb.lf, %.lr.ph.i543.3
  %indvars.iv.next.i545.3 = add nuw nsw i64 %indvars.iv.i544, 4 ; 2 uses
  %niter1781.next.3 = add i64 %niter1781, 4       ; 2 uses
  %niter1781.ncmp.3 = icmp eq i64 %niter1781.next.3, %unroll_iter1780
  br i1 %niter1781.ncmp.3, label %._crit_edge.i547.loopexit.unr-lcssa, label %.lr.ph.i543, !llvm.loop !503

bb.lh:                                            ; preds = %._crit_edge.i547
  %i.cov = getelementptr inbounds nuw i8, ptr %i.cni, i64 36
  %i.cow = sext i32 %i.cnm to i64                 ; 2 uses
  %i.cox = getelementptr inbounds nuw [4 x i8], ptr %i.cov, i64 %i.cow
  %i.coy = load i32, ptr %i.cox, align 4, !tbaa !210
  %i.coz = icmp eq i32 %i.coy, 0
  %spec.select.i548 = select i1 %i.coz, i32 0, i32 %.0143507.i
  br label %bb.li

bb.li:                                            ; preds = %bb.lh, %._crit_edge._crit_edge.i
  %.pre-phi.i = phi i64 [ %i.cow, %bb.lh ], [ %.pre597.i, %._crit_edge._crit_edge.i ] ; 2 uses
  %.0144.i = phi i32 [ %spec.select.i548, %bb.lh ], [ %.0143507.i, %._crit_edge._crit_edge.i ] ; 5 uses
  %i.cpa = getelementptr inbounds [36 x i8], ptr %i.cnd, i64 %.pre-phi.i
  store ptr %i.cpa, ptr %i.s, align 8, !tbaa !401
  %i.cpb = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %.pre-phi.i
  %i.cpc = load float, ptr %i.cpb, align 4, !tbaa !211 ; 2 uses
  %i.cpd = fmul float %i.cpc, %i.cpc
  store float %i.cpd, ptr %i.v, align 4, !tbaa !211
  %i.cpe = getelementptr inbounds nuw i8, ptr %i.cnp, i64 24 ; 15 uses
  store i8 1, ptr %i.cpe, align 8, !tbaa !698
  %i.cpf = getelementptr inbounds nuw i8, ptr %i.cnp, i64 8 ; 2 uses
  %i.cpg = load ptr, ptr %i.cpf, align 8, !tbaa !678
  %i.cph = load ptr, ptr %i.cnp, align 8, !tbaa !679
  %i.cpi = ptrtoint ptr %i.cpg to i64
  %i.cpj = ptrtoint ptr %i.cph to i64
  %i.cpk = sub i64 %i.cpi, %i.cpj
  %i.cpl = sdiv exact i64 %i.cpk, 112
  %i.cpm = trunc i64 %i.cpl to i32
  %i.cpn = icmp sgt i32 %i.cpm, 0
  br i1 %i.cpn, label %.lr.ph502.i, label %._ZL18make_cell2at_indexP21gmx_domdec_comm_dim_tii.exit.i_crit_edge

._ZL18make_cell2at_indexP21gmx_domdec_comm_dim_tii.exit.i_crit_edge: ; preds = %bb.li
  %.pre817 = shl nsw i32 %.0143507.i, 1
  br label %_ZL18make_cell2at_indexP21gmx_domdec_comm_dim_tii.exit.i

.lr.ph502.i:                                      ; preds = %bb.li
  %i.cpo = icmp sgt i32 %.0144.i, 0
  %i.cpp = icmp slt i32 %.0144.i, %.0143507.i
  %i.cpq = sext i32 %.0143507.i to i64            ; 9 uses
  %i.cpr = add nsw i32 %.0143507.i, 1
  %i.cps = sext i32 %i.cpr to i64                 ; 2 uses
  %i.cpt = add nsw i32 %.0143507.i, 2
  %i.cpu = sext i32 %i.cpt to i64                 ; 2 uses
  %i.cpv = add i32 %.0143507.i, -1                ; 2 uses
  %i.cpw = icmp sgt i32 %.0143507.i, 1
  %i.cpx = icmp sgt i32 %.0143507.i, 0            ; 2 uses
  %i.cpy = zext i32 %.0143507.i to i64            ; 8 uses
  %invariant.gep.i.i549 = getelementptr [4 x i8], ptr %i.cmu, i64 %i.cpy ; 2 uses
  %i.cpz = shl i32 %.0143507.i, 1                 ; 6 uses
  %i.cqa = icmp slt i32 %.0143507.i, %i.cpz
  %wide.trip.count573.i = zext i32 %i.cpv to i64  ; 9 uses
  %i.cqb = shl nuw nsw i64 %wide.trip.count573.i, 2
  %scevgep1497 = getelementptr i8, ptr %i.cnn, i64 929
  %i.cqc = shl nsw i64 %i.cnk, 5
  %scevgep1498 = getelementptr i8, ptr %scevgep1497, i64 %i.cqc ; 2 uses
  %min.iters.check1500 = icmp ult i32 %.0143507.i, 5
  %bound0 = icmp ult ptr %i.cpe, %scevgep
  %bound1 = icmp ult ptr %i.j, %scevgep1498
  %found.conflict = and i1 %bound0, %bound1
  %min.iters.check1510 = icmp ult i32 %.0143507.i, 33
  %i.cqd = and i64 %wide.trip.count573.i, 28
  %n.vec1512 = and i64 %wide.trip.count573.i, 4294967264 ; 4 uses
  %cmp.n1588 = icmp eq i64 %n.vec1512, %wide.trip.count573.i
  %min.epilog.iters.check1592 = icmp eq i64 %i.cqd, 0
  %n.vec1595 = and i64 %wide.trip.count573.i, 4294967292 ; 3 uses
  %cmp.n1622 = icmp eq i64 %n.vec1595, %wide.trip.count573.i
  %xtraiter1788 = and i64 %wide.trip.count573.i, 3 ; 2 uses
  %lcmp.mod1789.not = icmp eq i64 %xtraiter1788, 0
  br label %bb.lj

._crit_edge503.i:                                 ; preds = %_ZN14DDBufferAccessIiED2Ev.exit.i
  %.pre592.i = load i8, ptr %i.cpe, align 8, !tbaa !698, !range !335
  %i.cqe = trunc nuw i8 %.pre592.i to i1
  br i1 %i.cqe, label %_ZL18make_cell2at_indexP21gmx_domdec_comm_dim_tii.exit.i, label %bb.od

bb.lj:                                            ; preds = %_ZN14DDBufferAccessIiED2Ev.exit.i, %.lr.ph502.i
  %indvars.iv576.i = phi i64 [ 0, %.lr.ph502.i ], [ %indvars.iv.next577.i, %_ZN14DDBufferAccessIiED2Ev.exit.i ] ; 7 uses
  %.1142500.i = phi i32 [ %.0141508.i, %.lr.ph502.i ], [ %i.dsw, %_ZN14DDBufferAccessIiED2Ev.exit.i ]
  %i.cqf = load i8, ptr %i.p, align 1, !tbaa !366, !range !335, !noundef !336
  %i.cqg = trunc nuw i8 %i.cqf to i1
  %i.cqh = load i8, ptr %i.o, align 1, !range !335
  %i.cqi = trunc nuw i8 %i.cqh to i1
  %or.cond.i550 = select i1 %i.cqg, i1 true, i1 %i.cqi
  %i.cqj = icmp eq i64 %indvars.iv576.i, 0        ; 6 uses
  %i.cqk = and i1 %i.cqj, %or.cond.i550
  %i.cql = zext i1 %i.cqk to i8
  store i8 %i.cql, ptr %i.q, align 1, !tbaa !366
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #19
  %i.cqm = load ptr, ptr %i.cnp, align 8, !tbaa !679
  %i.cqn = getelementptr inbounds nuw [112 x i8], ptr %i.cqm, i64 %indvars.iv576.i ; 4 uses
  store ptr %i.cqn, ptr %i.ab, align 8, !tbaa !409
  %i.cqo = getelementptr inbounds nuw i8, ptr %i.cqn, i64 56
  %i.cqp = load ptr, ptr %i.cqo, align 8, !tbaa !411 ; 2 uses
  %i.cqq = getelementptr inbounds nuw i8, ptr %i.cqn, i64 64 ; 2 uses
  %i.cqr = load ptr, ptr %i.cqq, align 8, !tbaa !412
  %.not.i.i.i551 = icmp eq ptr %i.cqr, %i.cqp
  br i1 %.not.i.i.i551, label %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE5clearEv.exit.i, label %bb.lk

bb.lk:                                            ; preds = %bb.lj
  store ptr %i.cqp, ptr %i.cqq, align 8, !tbaa !412
  br label %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE5clearEv.exit.i

_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE5clearEv.exit.i: ; preds = %bb.lk, %bb.lj
  %i.cqs = load ptr, ptr %i.m, align 8, !tbaa !15 ; 3 uses
  %i.cqt = getelementptr inbounds nuw i8, ptr %i.cqs, i64 1136
  %i.cqu = load ptr, ptr %i.cqt, align 8, !tbaa !413 ; 8 uses
  %i.cqv = load ptr, ptr %i.cqu, align 8, !tbaa !371 ; 2 uses
  %i.cqw = getelementptr inbounds nuw i8, ptr %i.cqu, i64 8 ; 2 uses
  %i.cqx = load ptr, ptr %i.cqw, align 8, !tbaa !372
  %.not.i.i.i.i552 = icmp eq ptr %i.cqx, %i.cqv
  br i1 %.not.i.i.i.i552, label %_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE5clearEv.exit.i.i, label %bb.ll

bb.ll:                                            ; preds = %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE5clearEv.exit.i
  store ptr %i.cqv, ptr %i.cqw, align 8, !tbaa !372
  br label %_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE5clearEv.exit.i.i

_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE5clearEv.exit.i.i: ; preds = %bb.ll, %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE5clearEv.exit.i
  %i.cqy = getelementptr inbounds nuw i8, ptr %i.cqu, i64 24
  %i.cqz = load ptr, ptr %i.cqy, align 8, !tbaa !371 ; 2 uses
  %i.cra = getelementptr inbounds nuw i8, ptr %i.cqu, i64 32 ; 2 uses
  %i.crb = load ptr, ptr %i.cra, align 8, !tbaa !372
  %.not.i.i5.i.i = icmp eq ptr %i.crb, %i.cqz
  br i1 %.not.i.i5.i.i, label %_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE5clearEv.exit6.i.i, label %bb.lm

bb.lm:                                            ; preds = %_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE5clearEv.exit.i.i
  store ptr %i.cqz, ptr %i.cra, align 8, !tbaa !372
  br label %_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE5clearEv.exit6.i.i

_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE5clearEv.exit6.i.i: ; preds = %bb.lm, %_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE5clearEv.exit.i.i
  %i.crc = getelementptr inbounds nuw i8, ptr %i.cqu, i64 48
  %i.crd = load ptr, ptr %i.crc, align 8, !tbaa !414 ; 2 uses
  %i.cre = getelementptr inbounds nuw i8, ptr %i.cqu, i64 56 ; 2 uses
  %i.crf = load ptr, ptr %i.cre, align 8, !tbaa !415
  %.not.i.i7.i.i = icmp eq ptr %i.crf, %i.crd
  br i1 %.not.i.i7.i.i, label %_ZL18clearCommSetupDataP20dd_comm_setup_work_t.exit.i, label %_ZSt8_DestroyIPN3gmx11BasicVectorIfEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN3gmx11BasicVectorIfEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE5clearEv.exit6.i.i
  store ptr %i.crd, ptr %i.cre, align 8, !tbaa !415
  br label %_ZL18clearCommSetupDataP20dd_comm_setup_work_t.exit.i

_ZL18clearCommSetupDataP20dd_comm_setup_work_t.exit.i: ; preds = %_ZSt8_DestroyIPN3gmx11BasicVectorIfEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i, %_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE5clearEv.exit6.i.i
  %i.crg = getelementptr inbounds nuw i8, ptr %i.cqu, i64 72
  store i32 0, ptr %i.crg, align 8, !tbaa !417
  %i.crh = getelementptr inbounds nuw i8, ptr %i.cqu, i64 76
  store i32 0, ptr %i.crh, align 4, !tbaa !418
  store i32 0, ptr %i.j, align 4, !tbaa !210
  br i1 %i.cpo, label %.lr.ph490.i, label %.preheader353.i

.preheader353.i:                                  ; preds = %._crit_edge488.i, %_ZL18clearCommSetupDataP20dd_comm_setup_work_t.exit.i
  %i.cri = phi ptr [ %i.cqs, %_ZL18clearCommSetupDataP20dd_comm_setup_work_t.exit.i ], [ %i.cuv, %._crit_edge488.i ]
  %i.crj = phi ptr [ %i.cqn, %_ZL18clearCommSetupDataP20dd_comm_setup_work_t.exit.i ], [ %i.cuu, %._crit_edge488.i ] ; 8 uses
  store i32 %.0144.i, ptr %i.j, align 4, !tbaa !210
  br i1 %i.cpp, label %.lr.ph492.i, label %._crit_edge493.i

.lr.ph490.i:                                      ; preds = %_ZL18clearCommSetupDataP20dd_comm_setup_work_t.exit.i, %._crit_edge488.i
  %i.crk = phi ptr [ %i.cuv, %._crit_edge488.i ], [ %i.cqs, %_ZL18clearCommSetupDataP20dd_comm_setup_work_t.exit.i ] ; 2 uses
  %storemerge167489.i = phi i32 [ %i.cux, %._crit_edge488.i ], [ 0, %_ZL18clearCommSetupDataP20dd_comm_setup_work_t.exit.i ] ; 3 uses
  %i.crl = load i32, ptr %i.e, align 4, !tbaa !210 ; 2 uses
  %i.crm = icmp sgt i32 %i.crl, 0
  %i.crn = load i8, ptr %i.aa, align 1, !range !335
  %i.cro = trunc nuw i8 %i.crn to i1
  %or.cond3.i = select i1 %i.crm, i1 %i.cro, i1 false
  br i1 %or.cond3.i, label %.preheader.i560, label %.loopexit.i559

.preheader.i560:                                  ; preds = %.lr.ph490.i
  %i.crp = load i32, ptr %i.f, align 4, !tbaa !210 ; 2 uses
  %i.crq = icmp sgt i32 %i.crp, 0
  br i1 %i.crq, label %.lr.ph484.i, label %.loopexit.i559

.lr.ph484.i:                                      ; preds = %.preheader.i560
  %i.crr = load ptr, ptr %i.a, align 8
  %i.crs = getelementptr inbounds nuw i8, ptr %i.crr, i64 180
  %i.crt = add nsw i32 %storemerge167489.i, %.0143507.i
  %i.cru = sext i32 %i.crt to i64
  %i.crv = getelementptr inbounds nuw [12 x i8], ptr %i.cne, i64 %i.cru ; 3 uses
  %wide.trip.count565.i = zext nneg i32 %i.crp to i64
  br label %bb.ln

bb.ln:                                            ; preds = %bb.lr, %.lr.ph484.i
  %indvars.iv562.i = phi i64 [ 0, %.lr.ph484.i ], [ %indvars.iv.next563.i, %bb.lr ] ; 6 uses
  %i.crw = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv562.i ; 5 uses
  store float 1.000000e+00, ptr %i.crw, align 4, !tbaa !211
  %i.crx = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv562.i
  %i.cry = load i32, ptr %i.crx, align 4, !tbaa !210
  %.not176.i = icmp eq i32 %i.cry, 0
  br i1 %.not176.i, label %bb.lr, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %i.crz = getelementptr inbounds nuw [4 x i8], ptr %i.crs, i64 %indvars.iv562.i
  %i.csa = load i32, ptr %i.crz, align 4, !tbaa !210 ; 4 uses
  %i.csb = icmp slt i32 %i.csa, 2
  br i1 %i.csb, label %.lr.ph479.i, label %._crit_edge480.i

.lr.ph479.i:                                      ; preds = %bb.lo
  %i.csc = getelementptr inbounds nuw [36 x i8], ptr %i.cnd, i64 %indvars.iv562.i
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.csc, i64 %indvars.iv562.i ; 3 uses
  %i.csd = sext i32 %i.csa to i64                 ; 2 uses
  %i.cse = and i32 %i.csa, 1
  %lcmp.mod1785.not = icmp eq i32 %i.cse, 0
  br i1 %lcmp.mod1785.not, label %.prol.loopexit1783, label %.prol.preheader1782

.prol.preheader1782:                              ; preds = %.lr.ph479.i
  %indvars.iv.next559.i.prol = add nsw i64 %i.csd, 1 ; 4 uses
  %i.csf = getelementptr inbounds nuw [4 x i8], ptr %i.crv, i64 %indvars.iv.next559.i.prol
  %i.csg = load i32, ptr %i.csf, align 4, !tbaa !210
  %.not177.i.prol = icmp eq i32 %i.csg, 0
  %gep482.phi.trans.insert.i.prol = getelementptr [12 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next559.i.prol
  %.pre585.i.prol = load float, ptr %gep482.phi.trans.insert.i.prol, align 4, !tbaa !211 ; 3 uses
  %i.csh = fcmp ult float %.pre585.i.prol, 0.000000e+00
  %or.cond708.i.prol = select i1 %.not177.i.prol, i1 true, i1 %i.csh
  br i1 %or.cond708.i.prol, label %._crit_edge584.i.prol, label %.prol.loopexit1783

._crit_edge584.i.prol:                            ; preds = %.prol.preheader1782
  %i.csi = fmul float %.pre585.i.prol, %.pre585.i.prol
  %i.csj = fadd float %i.csi, 1.000000e+00        ; 3 uses
  store float %i.csj, ptr %i.crw, align 4, !tbaa !211
  br label %.prol.loopexit1783

.prol.loopexit1783:                               ; preds = %.prol.preheader1782, %._crit_edge584.i.prol, %.lr.ph479.i
  %.lcssa1660.unr = phi float [ poison, %.lr.ph479.i ], [ 1.000000e+00, %.prol.preheader1782 ], [ %i.csj, %._crit_edge584.i.prol ]
  %.unr1787 = phi float [ 1.000000e+00, %.lr.ph479.i ], [ 1.000000e+00, %.prol.preheader1782 ], [ %i.csj, %._crit_edge584.i.prol ]
  %indvars.iv558.i.unr = phi i64 [ %i.csd, %.lr.ph479.i ], [ %indvars.iv.next559.i.prol, %._crit_edge584.i.prol ], [ %indvars.iv.next559.i.prol, %.prol.preheader1782 ]
  %i.csk = icmp eq i32 %i.csa, 1
  br i1 %i.csk, label %._crit_edge480.i, label %.lr.ph479.i.new

._crit_edge480.i:                                 ; preds = %.prol.loopexit1783, %bb.lq, %bb.lo
  %i.csl = phi float [ 1.000000e+00, %bb.lo ], [ %.lcssa1660.unr, %.prol.loopexit1783 ], [ %i.csz, %bb.lq ]
  %i.csm = fdiv float 1.000000e+00, %i.csl
  store float %i.csm, ptr %i.crw, align 4, !tbaa !211
  br label %bb.lr

.lr.ph479.i.new:                                  ; preds = %.prol.loopexit1783, %bb.lq
  %i.csn = phi float [ %i.csz, %bb.lq ], [ %.unr1787, %.prol.loopexit1783 ] ; 2 uses
  %indvars.iv558.i = phi i64 [ %indvars.iv.next559.i.1, %bb.lq ], [ %indvars.iv558.i.unr, %.prol.loopexit1783 ] ; 3 uses
  %indvars.iv.next559.i = add nsw i64 %indvars.iv558.i, 1 ; 2 uses
  %i.cso = getelementptr inbounds nuw [4 x i8], ptr %i.crv, i64 %indvars.iv.next559.i
  %i.csp = load i32, ptr %i.cso, align 4, !tbaa !210
  %.not177.i = icmp eq i32 %i.csp, 0
  %gep482.phi.trans.insert.i = getelementptr [12 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next559.i
  %.pre585.i = load float, ptr %gep482.phi.trans.insert.i, align 4, !tbaa !211 ; 3 uses
  %i.csq = fcmp ult float %.pre585.i, 0.000000e+00
  %or.cond708.i = select i1 %.not177.i, i1 true, i1 %i.csq
  br i1 %or.cond708.i, label %._crit_edge584.i, label %bb.lp

._crit_edge584.i:                                 ; preds = %.lr.ph479.i.new
  %i.csr = fmul float %.pre585.i, %.pre585.i
  %i.css = fadd float %i.csn, %i.csr              ; 2 uses
  store float %i.css, ptr %i.crw, align 4, !tbaa !211
  br label %bb.lp

bb.lp:                                            ; preds = %._crit_edge584.i, %.lr.ph479.i.new
  %i.cst = phi float [ %i.csn, %.lr.ph479.i.new ], [ %i.css, %._crit_edge584.i ] ; 2 uses
  %indvars.iv.next559.i.1 = add nsw i64 %indvars.iv558.i, 2 ; 3 uses
  %i.csu = getelementptr inbounds nuw [4 x i8], ptr %i.crv, i64 %indvars.iv.next559.i.1
  %i.csv = load i32, ptr %i.csu, align 4, !tbaa !210
  %.not177.i.1 = icmp eq i32 %i.csv, 0
  %gep482.phi.trans.insert.i.1 = getelementptr [12 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next559.i.1
  %.pre585.i.1 = load float, ptr %gep482.phi.trans.insert.i.1, align 4, !tbaa !211 ; 3 uses
  %i.csw = fcmp ult float %.pre585.i.1, 0.000000e+00
  %or.cond708.i.1 = select i1 %.not177.i.1, i1 true, i1 %i.csw
  br i1 %or.cond708.i.1, label %._crit_edge584.i.1, label %bb.lq

._crit_edge584.i.1:                               ; preds = %bb.lp
  %i.csx = fmul float %.pre585.i.1, %.pre585.i.1
  %i.csy = fadd float %i.cst, %i.csx              ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN3gmx19dd_partition_systemEP8_IO_FILERKNS_8MDLoggerElP12gmx_domdec_tbP7t_stateRK10gmx_mtop_tRK10t_inputrecRKNS_18MDModulesNotifiersEPNS_10ImdSessionEP6pull_tS8_PNS_12ForceBuffersEPNS_7MDAtomsEP14gmx_localtop_tP10t_forcerecPNS_19VirtualSitesHandlerEPNS_11ConstraintsEP6t_nrnbP13gmx_wallcycleb:bb.a
  %i.ctk = add nsw i32 %storemerge167489.i, %.0143507.i
  %i.ctl = sext i32 %i.ctk to i64
  %i.ctm = getelementptr [4 x i8], ptr %i.cmu, i64 %i.ctl ; 2 uses
  %i.ctn = load i32, ptr %i.ctm, align 4, !tbaa !210
  %i.cto = getelementptr i8, ptr %i.ctm, i64 4
  %i.ctp = load i32, ptr %i.cto, align 4, !tbaa !210 ; 3 uses
  %.not.i.i196.i = icmp sgt i32 %i.ctn, %i.ctp
  br i1 %.not.i.i196.i, label %bb.lv, label %_ZNK3gmx11DomdecZones9atomRangeEi.exit201.i

bb.lv:                                            ; preds = %bb.lu
  call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.128, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN3gmx5RangeIiEC1EiiENKUlvE_clEv, ptr noundef nonnull @.str.129, i32 noundef 111) #29
  unreachable

_ZNK3gmx11DomdecZones9atomRangeEi.exit201.i:      ; preds = %bb.lu
  store i32 %i.ctp, ptr %i.ad, align 4, !tbaa !210
  %i.ctq = load ptr, ptr %i.cnp, align 8, !tbaa !679
  %i.ctr = getelementptr [112 x i8], ptr %i.ctq, i64 %indvars.iv576.i
  %i.cts = getelementptr i8, ptr %i.ctr, i64 -88
  %i.ctt = getelementptr inbounds [4 x i8], ptr %i.cts, i64 %i.ctc
  %i.ctu = load i32, ptr %i.ctt, align 4, !tbaa !210
  %i.ctv = sub nsw i32 %i.ctp, %i.ctu
  store i32 %i.ctv, ptr %i.ac, align 4, !tbaa !210
  br label %bb.lw

bb.lw:                                            ; preds = %_ZNK3gmx11DomdecZones9atomRangeEi.exit201.i, %_ZNK3gmx11DomdecZones9atomRangeEi.exit195.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae) #19
  %i.ctw = getelementptr inbounds nuw i8, ptr %i.crk, i64 1136
  %i.ctx = getelementptr inbounds nuw i8, ptr %i.crk, i64 1144
  %i.cty = load ptr, ptr %i.ctx, align 8, !tbaa !419
  %i.ctz = load ptr, ptr %i.ctw, align 8, !tbaa !413
  %i.cua = ptrtoint ptr %i.cty to i64
  %i.cub = ptrtoint ptr %i.ctz to i64
  %i.cuc = sub i64 %i.cua, %i.cub
  %i.cud = sdiv exact i64 %i.cuc, 80
  %i.cue = trunc i64 %i.cud to i32                ; 2 uses
  store i32 %i.cue, ptr %i.ae, align 4, !tbaa !210
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.acf, i32 %i.cue)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 31, ptr nonnull @_ZL22setup_dd_communicationP12gmx_domdec_tPA3_fP11gmx_ddbox_tP10t_forcerecP7t_state.omp_outlined, ptr nonnull %i.ae, ptr nonnull %i.m, ptr nonnull %i.ac, ptr nonnull %i.ad, ptr nonnull %i.a, ptr nonnull %i.k, ptr nonnull %i.j, ptr nonnull %i.f, ptr nonnull %i.e, ptr nonnull %i.g, ptr nonnull %i.h, ptr nonnull %i.i, ptr nonnull %i.y, ptr nonnull %i.z, ptr nonnull %i.b, ptr nonnull %i.aa, ptr nonnull %i.r, ptr nonnull %i.v, ptr nonnull %i.w, ptr nonnull %i.s, ptr nonnull %i.t, ptr nonnull %i.u, ptr nonnull %23, ptr nonnull %i.x, ptr nonnull %i.q, ptr nonnull %i.n, ptr nonnull %i.o, ptr nonnull %i.p, ptr nonnull %i.d, ptr nonnull %i.c, ptr nonnull %i.ab)
  %i.cuf = load ptr, ptr %i.m, align 8, !tbaa !15 ; 2 uses
  %i.cug = getelementptr inbounds nuw i8, ptr %i.cuf, i64 1136
  %i.cuh = load ptr, ptr %i.cug, align 8, !tbaa !413 ; 6 uses
  %i.cui = getelementptr inbounds nuw i8, ptr %i.cuh, i64 24 ; 2 uses
  %i.cuj = getelementptr inbounds nuw i8, ptr %i.cuh, i64 48 ; 2 uses
  %i.cuk = getelementptr inbounds nuw i8, ptr %i.cuh, i64 76
  %i.cul = load i32, ptr %i.cuk, align 4, !tbaa !418
  %i.cum = load ptr, ptr %i.ab, align 8, !tbaa !409 ; 3 uses
  %i.cun = load i32, ptr %i.j, align 4, !tbaa !210
  %i.cuo = sext i32 %i.cun to i64
  %i.cup = getelementptr inbounds [4 x i8], ptr %i.cum, i64 %i.cuo
  store i32 %i.cul, ptr %i.cup, align 4, !tbaa !210
  %i.cuq = load i32, ptr %i.ae, align 4, !tbaa !210
  %i.cur = icmp sgt i32 %i.cuq, 1
  br i1 %i.cur, label %.lr.ph487.i, label %._crit_edge488.i

.lr.ph487.i:                                      ; preds = %bb.lw
  %i.cus = getelementptr inbounds nuw i8, ptr %i.cuh, i64 32
  %i.cut = getelementptr inbounds nuw i8, ptr %i.cuh, i64 56
  br label %bb.lx

._crit_edge488.i:                                 ; preds = %bb.lx, %bb.lw
  %i.cuu = phi ptr [ %i.cum, %bb.lw ], [ %i.cws, %bb.lx ]
  %i.cuv = phi ptr [ %i.cuf, %bb.lw ], [ %i.cwk, %bb.lx ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #19
  %i.cuw = load i32, ptr %i.j, align 4, !tbaa !210
  %i.cux = add nsw i32 %i.cuw, 1                  ; 3 uses
  store i32 %i.cux, ptr %i.j, align 4, !tbaa !210
  %i.cuy = icmp slt i32 %i.cux, %.0144.i
  br i1 %i.cuy, label %.lr.ph490.i, label %.preheader353.i, !llvm.loop !506

bb.lx:                                            ; preds = %bb.lx, %.lr.ph487.i
  %i.cuz = phi ptr [ %i.cum, %.lr.ph487.i ], [ %i.cws, %bb.lx ] ; 3 uses
  %i.cva = phi ptr [ %i.cuh, %.lr.ph487.i ], [ %i.cwm, %bb.lx ]
  %indvars.iv567.i = phi i64 [ 1, %.lr.ph487.i ], [ %indvars.iv.next568.i, %bb.lx ] ; 2 uses
  %i.cvb = getelementptr inbounds nuw [80 x i8], ptr %i.cva, i64 %indvars.iv567.i ; 8 uses
  %i.cvc = getelementptr inbounds nuw i8, ptr %i.cuz, i64 48
  %i.cvd = getelementptr inbounds nuw i8, ptr %i.cuz, i64 64
  %i.cve = load ptr, ptr %i.cvd, align 8, !tbaa !699
  %i.cvf = load ptr, ptr %i.cvb, align 8, !tbaa !699
  %i.cvg = getelementptr inbounds nuw i8, ptr %i.cvb, i64 8
  %i.cvh = load ptr, ptr %i.cvg, align 8, !tbaa !699
  %i.cvi = getelementptr inbounds nuw i8, ptr %i.cuz, i64 56
  %i.cvj = load ptr, ptr %i.cvi, align 8, !tbaa !699 ; 2 uses
  %i.cvk = ptrtoint ptr %i.cve to i64
  %i.cvl = ptrtoint ptr %i.cvj to i64
  %i.cvm = sub i64 %i.cvk, %i.cvl
  %i.cvn = getelementptr inbounds i8, ptr %i.cvj, i64 %i.cvm
  call void @_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKiS_IiNS0_30DefaultInitializationAllocatorIiSaIiEEEEEEEEvNS7_IPiS4_EET_SH_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %i.cvc, ptr %i.cvn, ptr %i.cvf, ptr %i.cvh)
  %i.cvo = load ptr, ptr %i.cus, align 8, !tbaa !699
  %i.cvp = getelementptr inbounds nuw i8, ptr %i.cvb, i64 24
  %i.cvq = load ptr, ptr %i.cvp, align 8, !tbaa !699
  %i.cvr = getelementptr inbounds nuw i8, ptr %i.cvb, i64 32
  %i.cvs = load ptr, ptr %i.cvr, align 8, !tbaa !699
  %i.cvt = load ptr, ptr %i.cui, align 8, !tbaa !699 ; 2 uses
  %i.cvu = ptrtoint ptr %i.cvo to i64
  %i.cvv = ptrtoint ptr %i.cvt to i64
  %i.cvw = sub i64 %i.cvu, %i.cvv
  %i.cvx = getelementptr inbounds i8, ptr %i.cvt, i64 %i.cvw
  call void @_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKiS4_EEEEvNS7_IPiS4_EET_SD_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.cui, ptr %i.cvx, ptr %i.cvq, ptr %i.cvs)
  %i.cvy = load ptr, ptr %i.cut, align 8, !tbaa !385
  %i.cvz = getelementptr inbounds nuw i8, ptr %i.cvb, i64 48
  %i.cwa = load ptr, ptr %i.cvz, align 8, !tbaa !385
  %i.cwb = getelementptr inbounds nuw i8, ptr %i.cvb, i64 56
  %i.cwc = load ptr, ptr %i.cwb, align 8, !tbaa !385
  %i.cwd = load ptr, ptr %i.cuj, align 8, !tbaa !385 ; 2 uses
  %i.cwe = ptrtoint ptr %i.cvy to i64
  %i.cwf = ptrtoint ptr %i.cwd to i64
  %i.cwg = sub i64 %i.cwe, %i.cwf
  %i.cwh = getelementptr inbounds i8, ptr %i.cwd, i64 %i.cwg
  call void @_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEvNS7_IPS2_S4_EET_SD_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.cuj, ptr %i.cwh, ptr %i.cwa, ptr %i.cwc)
  %i.cwi = getelementptr inbounds nuw i8, ptr %i.cvb, i64 72
  %i.cwj = load i32, ptr %i.cwi, align 8, !tbaa !417
  %i.cwk = load ptr, ptr %i.m, align 8, !tbaa !15 ; 2 uses
  %i.cwl = getelementptr inbounds nuw i8, ptr %i.cwk, i64 1136
  %i.cwm = load ptr, ptr %i.cwl, align 8, !tbaa !413 ; 2 uses
  %i.cwn = getelementptr inbounds nuw i8, ptr %i.cwm, i64 72 ; 2 uses
  %i.cwo = load i32, ptr %i.cwn, align 8, !tbaa !417
  %i.cwp = add nsw i32 %i.cwo, %i.cwj
  store i32 %i.cwp, ptr %i.cwn, align 8, !tbaa !417
  %i.cwq = getelementptr inbounds nuw i8, ptr %i.cvb, i64 76
  %i.cwr = load i32, ptr %i.cwq, align 4, !tbaa !418
  %i.cws = load ptr, ptr %i.ab, align 8, !tbaa !409 ; 3 uses
  %i.cwt = load i32, ptr %i.j, align 4, !tbaa !210
  %i.cwu = sext i32 %i.cwt to i64
  %i.cwv = getelementptr inbounds [4 x i8], ptr %i.cws, i64 %i.cwu ; 2 uses
  %i.cww = load i32, ptr %i.cwv, align 4, !tbaa !210
  %i.cwx = add nsw i32 %i.cww, %i.cwr
  store i32 %i.cwx, ptr %i.cwv, align 4, !tbaa !210
  %indvars.iv.next568.i = add nuw nsw i64 %indvars.iv567.i, 1 ; 2 uses
  %i.cwy = load i32, ptr %i.ae, align 4, !tbaa !210
  %i.cwz = sext i32 %i.cwy to i64
  %i.cxa = icmp slt i64 %indvars.iv.next568.i, %i.cwz
  br i1 %i.cxa, label %bb.lx, label %._crit_edge488.i, !llvm.loop !507

.lr.ph492.i:                                      ; preds = %.preheader353.i, %.lr.ph492.i
  %storemerge168491.i = phi i32 [ %i.cxe, %.lr.ph492.i ], [ %.0144.i, %.preheader353.i ]
  %i.cxb = sext i32 %storemerge168491.i to i64
  %i.cxc = getelementptr inbounds [4 x i8], ptr %i.crj, i64 %i.cxb
  store i32 0, ptr %i.cxc, align 4, !tbaa !210
  %i.cxd = load i32, ptr %i.j, align 4, !tbaa !210
  %i.cxe = add nsw i32 %i.cxd, 1                  ; 3 uses
  store i32 %i.cxe, ptr %i.j, align 4, !tbaa !210
  %i.cxf = icmp slt i32 %i.cxe, %.0143507.i
  br i1 %i.cxf, label %.lr.ph492.i, label %._crit_edge493.i, !llvm.loop !508

._crit_edge493.i:                                 ; preds = %.lr.ph492.i, %.preheader353.i
  %i.cxg = getelementptr inbounds nuw i8, ptr %i.crj, i64 56
  %i.cxh = getelementptr inbounds nuw i8, ptr %i.crj, i64 64
  %i.cxi = load ptr, ptr %i.cxh, align 8, !tbaa !412
  %i.cxj = load ptr, ptr %i.cxg, align 8, !tbaa !411
  %i.cxk = ptrtoint ptr %i.cxi to i64
  %i.cxl = ptrtoint ptr %i.cxj to i64
  %i.cxm = sub i64 %i.cxk, %i.cxl
  %i.cxn = lshr exact i64 %i.cxm, 2
  %i.cxo = trunc i64 %i.cxn to i32
  %i.cxp = getelementptr inbounds [4 x i8], ptr %i.crj, i64 %i.cpq
  store i32 %i.cxo, ptr %i.cxp, align 4, !tbaa !210
  %i.cxq = getelementptr inbounds nuw i8, ptr %i.cri, i64 1136
  %i.cxr = load ptr, ptr %i.cxq, align 8, !tbaa !413
  %i.cxs = getelementptr inbounds nuw i8, ptr %i.cxr, i64 72
  %i.cxt = load i32, ptr %i.cxs, align 8, !tbaa !417
  %i.cxu = getelementptr inbounds [4 x i8], ptr %i.crj, i64 %i.cps
  store i32 %i.cxt, ptr %i.cxu, align 4, !tbaa !210
  %i.cxv = load ptr, ptr %i.a, align 8, !tbaa !400
  %i.cxw = load i32, ptr %i.e, align 4, !tbaa !210
  %i.cxx = getelementptr inbounds nuw [4 x i8], ptr %i.crj, i64 %i.cpu
  %i.cxy = getelementptr inbounds nuw i8, ptr %i.crj, i64 24 ; 2 uses
  %i.cxz = getelementptr inbounds nuw [4 x i8], ptr %i.cxy, i64 %i.cpu
  store ptr %i.cxy, ptr %25, align 8
  store ptr %i.cxz, ptr %i.cnf, align 8
  call void @_Z10ddSendrecvIiEvPK12gmx_domdec_tiiN3gmx8ArrayRefIT_EES6_(ptr noundef %i.cxv, i32 noundef %i.cxw, i32 noundef 1, ptr nonnull %i.crj, ptr nonnull %i.cxx, ptr noundef nonnull byval(%"class.gmx::ArrayRef.495") align 8 %25)
  br i1 %i.cqj, label %.loopexit352.i, label %.preheader351.i

.preheader351.i:                                  ; preds = %._crit_edge493.i
  store i32 0, ptr %i.j, align 4, !tbaa !210
  br i1 %i.cpw, label %iter.check1589, label %.loopexit352.i

iter.check1589:                                   ; preds = %.preheader351.i
  %i.cya = load ptr, ptr %i.ab, align 8, !tbaa !409 ; 2 uses
  %i.cyb = getelementptr inbounds nuw i8, ptr %i.cya, i64 24 ; 9 uses
  br i1 %min.iters.check1500, label %vec.epilog.scalar.ph1591.preheader, label %vector.memcheck1501

vector.memcheck1501:                              ; preds = %iter.check1589
  %i.cyc = getelementptr i8, ptr %i.cya, i64 %i.cqb
  %i.cyd = getelementptr i8, ptr %i.cyc, i64 24   ; 2 uses
  %bound01502 = icmp ult ptr %i.cpe, %i.cyd
  %bound11503 = icmp ult ptr %i.cyb, %scevgep1498
  %found.conflict1504 = and i1 %bound01502, %bound11503
  %conflict.rdx = or i1 %found.conflict, %found.conflict1504
  %bound01505 = icmp ult ptr %i.j, %i.cyd
  %bound11506 = icmp ult ptr %i.cyb, %scevgep
  %found.conflict1507 = and i1 %bound01505, %bound11506
  %conflict.rdx1508 = or i1 %conflict.rdx, %found.conflict1507
  br i1 %conflict.rdx1508, label %vec.epilog.scalar.ph1591.preheader, label %vector.main.loop.iter.check1509

vector.main.loop.iter.check1509:                  ; preds = %vector.memcheck1501
  br i1 %min.iters.check1510, label %vec.epilog.ph1593, label %vector.body1513

vector.body1513:                                  ; preds = %vector.main.loop.iter.check1509, %bb.lz
  %i.cye = phi i64 [ %i.cys, %bb.lz ], [ 0, %vector.main.loop.iter.check1509 ] ; 3 uses
  %i.cyf = getelementptr inbounds nuw [4 x i8], ptr %i.cyb, i64 %i.cye ; 3 uses
  %i.cyg = getelementptr inbounds nuw i8, ptr %i.cyf, i64 32
  %i.cyh = getelementptr inbounds nuw i8, ptr %i.cyf, i64 64
  %wide.load1519 = load <8 x i32>, ptr %i.cyf, align 4, !tbaa !210, !alias.scope !700
  %wide.load1520 = load <8 x i32>, ptr %i.cyg, align 4, !tbaa !210, !alias.scope !700
  %i.cyi = load <16 x i32>, ptr %i.cyh, align 4, !tbaa !210, !alias.scope !700
  %i.cyj = icmp sgt <8 x i32> %wide.load1519, zeroinitializer
  %i.cyk = icmp sgt <8 x i32> %wide.load1520, zeroinitializer
  %i.cyl = shufflevector <16 x i32> %i.cyi, <16 x i32> poison, <32 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cym = icmp sgt <32 x i32> %i.cyl, <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cyn = shufflevector <8 x i1> %i.cyk, <8 x i1> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cyo = shufflevector <32 x i1> %i.cym, <32 x i1> %i.cyn, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cyp = shufflevector <8 x i1> %i.cyj, <8 x i1> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cyq = shufflevector <32 x i1> %i.cyo, <32 x i1> %i.cyp, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39>
  %i.cyr = bitcast <32 x i1> %i.cyq to i32
  %.not1647 = icmp eq i32 %i.cyr, 0
  br i1 %.not1647, label %bb.lz, label %bb.ly

bb.ly:                                            ; preds = %vector.body1513
  store i8 0, ptr %i.cpe, align 8, !tbaa !698, !alias.scope !701, !noalias !702
  br label %bb.lz

bb.lz:                                            ; preds = %vector.body1513, %bb.ly
  %i.cys = add nuw i64 %i.cye, 32                 ; 2 uses
  %i.cyt = icmp eq i64 %i.cys, %n.vec1512
  br i1 %i.cyt, label %middle.block1587, label %vector.body1513, !llvm.loop !513

middle.block1587:                                 ; preds = %bb.lz
  %i.cyu = trunc i64 %i.cye to i32
  %i.cyv = add i32 %i.cyu, 32
  store i32 %i.cyv, ptr %i.j, align 4, !tbaa !210, !alias.scope !703, !noalias !700
  br i1 %cmp.n1588, label %.loopexit352.i, label %vec.epilog.iter.check1590

vec.epilog.iter.check1590:                        ; preds = %middle.block1587
  br i1 %min.epilog.iters.check1592, label %vec.epilog.scalar.ph1591.preheader, label %vec.epilog.ph1593, !prof !383

vec.epilog.ph1593:                                ; preds = %vector.main.loop.iter.check1509, %vec.epilog.iter.check1590
  %vec.epilog.resume.val1594 = phi i64 [ %n.vec1512, %vec.epilog.iter.check1590 ], [ 0, %vector.main.loop.iter.check1509 ]
  br label %vec.epilog.vector.body1599

vec.epilog.vector.body1599:                       ; preds = %bb.mb, %vec.epilog.ph1593
  %i.cyw = phi i64 [ %vec.epilog.resume.val1594, %vec.epilog.ph1593 ], [ %i.cyy, %bb.mb ] ; 3 uses
  %i.cyx = getelementptr inbounds nuw [4 x i8], ptr %i.cyb, i64 %i.cyw
  %wide.load1593 = load <4 x i32>, ptr %i.cyx, align 4, !tbaa !210, !alias.scope !700
  %74 = icmp sgt <4 x i32> %wide.load1593, zeroinitializer
  %75 = bitcast <4 x i1> %74 to i4
  %.not1648 = icmp eq i4 %75, 0
  br i1 %.not1648, label %bb.mb, label %bb.ma

bb.ma:                                            ; preds = %vec.epilog.vector.body1599
  store i8 0, ptr %i.cpe, align 8, !tbaa !698, !alias.scope !701, !noalias !702
  br label %bb.mb

bb.mb:                                            ; preds = %vec.epilog.vector.body1599, %bb.ma
  %i.cyy = add nuw i64 %i.cyw, 4                  ; 2 uses
  %i.cyz = icmp eq i64 %i.cyy, %n.vec1595
  br i1 %i.cyz, label %vec.epilog.middle.block1621, label %vec.epilog.vector.body1599, !llvm.loop !514

vec.epilog.middle.block1621:                      ; preds = %bb.mb
  %i.cza = trunc i64 %i.cyw to i32
  %i.czb = add i32 %i.cza, 4
  store i32 %i.czb, ptr %i.j, align 4, !tbaa !210, !alias.scope !703, !noalias !700
  br i1 %cmp.n1622, label %.loopexit352.i, label %vec.epilog.scalar.ph1591.preheader

vec.epilog.scalar.ph1591.preheader:               ; preds = %iter.check1589, %vector.memcheck1501, %vec.epilog.iter.check1590, %vec.epilog.middle.block1621
  %indvars.iv570.i.ph = phi i64 [ 0, %iter.check1589 ], [ 0, %vector.memcheck1501 ], [ %n.vec1512, %vec.epilog.iter.check1590 ], [ %n.vec1595, %vec.epilog.middle.block1621 ] ; 3 uses
  br i1 %lcmp.mod1789.not, label %vec.epilog.scalar.ph1591.prol.loopexit, label %vec.epilog.scalar.ph1591.prol

vec.epilog.scalar.ph1591.prol:                    ; preds = %vec.epilog.scalar.ph1591.preheader, %bb.md
  %indvars.iv570.i.prol = phi i64 [ %indvars.iv.next571.i.prol, %bb.md ], [ %indvars.iv570.i.ph, %vec.epilog.scalar.ph1591.preheader ] ; 2 uses
  %prol.iter1790 = phi i64 [ %prol.iter1790.next, %bb.md ], [ 0, %vec.epilog.scalar.ph1591.preheader ]
  %i.czc = getelementptr inbounds nuw [4 x i8], ptr %i.cyb, i64 %indvars.iv570.i.prol
  %i.czd = load i32, ptr %i.czc, align 4, !tbaa !210
  %i.cze = icmp sgt i32 %i.czd, 0
  br i1 %i.cze, label %bb.mc, label %bb.md

bb.mc:                                            ; preds = %vec.epilog.scalar.ph1591.prol
  store i8 0, ptr %i.cpe, align 8, !tbaa !698
  br label %bb.md

bb.md:                                            ; preds = %bb.mc, %vec.epilog.scalar.ph1591.prol
  %indvars.iv.next571.i.prol = add nuw nsw i64 %indvars.iv570.i.prol, 1 ; 3 uses
  %i.czf = trunc nuw nsw i64 %indvars.iv.next571.i.prol to i32
  store i32 %i.czf, ptr %i.j, align 4, !tbaa !210
  %prol.iter1790.next = add i64 %prol.iter1790, 1 ; 2 uses
  %prol.iter1790.cmp.not = icmp eq i64 %prol.iter1790.next, %xtraiter1788
  br i1 %prol.iter1790.cmp.not, label %vec.epilog.scalar.ph1591.prol.loopexit, label %vec.epilog.scalar.ph1591.prol, !llvm.loop !515

vec.epilog.scalar.ph1591.prol.loopexit:           ; preds = %bb.md, %vec.epilog.scalar.ph1591.preheader
  %indvars.iv570.i.unr = phi i64 [ %indvars.iv570.i.ph, %vec.epilog.scalar.ph1591.preheader ], [ %indvars.iv.next571.i.prol, %bb.md ]
  %i.czg = sub nsw i64 %indvars.iv570.i.ph, %wide.trip.count573.i
  %i.czh = icmp ugt i64 %i.czg, -4
  br i1 %i.czh, label %.loopexit352.i, label %vec.epilog.scalar.ph1591

vec.epilog.scalar.ph1591:                         ; preds = %vec.epilog.scalar.ph1591.prol.loopexit, %bb.mi
  %indvars.iv570.i = phi i64 [ %indvars.iv.next571.i.3, %bb.mi ], [ %indvars.iv570.i.unr, %vec.epilog.scalar.ph1591.prol.loopexit ] ; 5 uses
  %i.czi = getelementptr inbounds nuw [4 x i8], ptr %i.cyb, i64 %indvars.iv570.i
  %i.czj = load i32, ptr %i.czi, align 4, !tbaa !210
  %i.czk = icmp sgt i32 %i.czj, 0
  br i1 %i.czk, label %bb.me, label %vec.epilog.scalar.ph1591.1

bb.me:                                            ; preds = %vec.epilog.scalar.ph1591
  store i8 0, ptr %i.cpe, align 8, !tbaa !698
  br label %vec.epilog.scalar.ph1591.1

vec.epilog.scalar.ph1591.1:                       ; preds = %bb.me, %vec.epilog.scalar.ph1591
  %indvars.iv.next571.i = add nuw nsw i64 %indvars.iv570.i, 1 ; 2 uses
  %i.czl = trunc nuw nsw i64 %indvars.iv.next571.i to i32
  store i32 %i.czl, ptr %i.j, align 4, !tbaa !210
  %i.czm = getelementptr inbounds nuw [4 x i8], ptr %i.cyb, i64 %indvars.iv.next571.i
  %i.czn = load i32, ptr %i.czm, align 4, !tbaa !210
  %i.czo = icmp sgt i32 %i.czn, 0
  br i1 %i.czo, label %bb.mf, label %vec.epilog.scalar.ph1591.2

bb.mf:                                            ; preds = %vec.epilog.scalar.ph1591.1
  store i8 0, ptr %i.cpe, align 8, !tbaa !698
  br label %vec.epilog.scalar.ph1591.2

vec.epilog.scalar.ph1591.2:                       ; preds = %bb.mf, %vec.epilog.scalar.ph1591.1
  %indvars.iv.next571.i.1 = add nuw nsw i64 %indvars.iv570.i, 2 ; 2 uses
  %i.czp = trunc nuw nsw i64 %indvars.iv.next571.i.1 to i32
  store i32 %i.czp, ptr %i.j, align 4, !tbaa !210
  %i.czq = getelementptr inbounds nuw [4 x i8], ptr %i.cyb, i64 %indvars.iv.next571.i.1
  %i.czr = load i32, ptr %i.czq, align 4, !tbaa !210
  %i.czs = icmp sgt i32 %i.czr, 0
  br i1 %i.czs, label %bb.mg, label %vec.epilog.scalar.ph1591.3

bb.mg:                                            ; preds = %vec.epilog.scalar.ph1591.2
  store i8 0, ptr %i.cpe, align 8, !tbaa !698
  br label %vec.epilog.scalar.ph1591.3

vec.epilog.scalar.ph1591.3:                       ; preds = %bb.mg, %vec.epilog.scalar.ph1591.2
  %indvars.iv.next571.i.2 = add nuw nsw i64 %indvars.iv570.i, 3 ; 2 uses
  %i.czt = trunc nuw nsw i64 %indvars.iv.next571.i.2 to i32
  store i32 %i.czt, ptr %i.j, align 4, !tbaa !210
  %i.czu = getelementptr inbounds nuw [4 x i8], ptr %i.cyb, i64 %indvars.iv.next571.i.2
  %i.czv = load i32, ptr %i.czu, align 4, !tbaa !210
  %i.czw = icmp sgt i32 %i.czv, 0
  br i1 %i.czw, label %bb.mh, label %bb.mi

bb.mh:                                            ; preds = %vec.epilog.scalar.ph1591.3
  store i8 0, ptr %i.cpe, align 8, !tbaa !698
  br label %bb.mi

bb.mi:                                            ; preds = %bb.mh, %vec.epilog.scalar.ph1591.3
  %indvars.iv.next571.i.3 = add nuw nsw i64 %indvars.iv570.i, 4 ; 3 uses
  %i.czx = trunc nuw nsw i64 %indvars.iv.next571.i.3 to i32
  store i32 %i.czx, ptr %i.j, align 4, !tbaa !210
  %exitcond574.not.i.3 = icmp eq i64 %indvars.iv.next571.i.3, %wide.trip.count573.i
  br i1 %exitcond574.not.i.3, label %.loopexit352.i, label %vec.epilog.scalar.ph1591, !llvm.loop !516

.loopexit352.i:                                   ; preds = %vec.epilog.scalar.ph1591.prol.loopexit, %bb.mi, %middle.block1587, %vec.epilog.middle.block1621, %.preheader351.i, %._crit_edge493.i
  %i.czy = load i8, ptr %i.cpe, align 8, !tbaa !698, !range !335, !noundef !336
  %i.czz = trunc nuw i8 %i.czy to i1
  br i1 %i.czz, label %bb.mk, label %bb.mj

bb.mj:                                            ; preds = %.loopexit352.i
  %i.daa = load ptr, ptr %i.ab, align 8, !tbaa !409
  %i.dab = getelementptr inbounds nuw i8, ptr %i.daa, i64 24
  %i.dac = getelementptr inbounds [4 x i8], ptr %i.dab, i64 %i.cpq
  %i.dad = load i32, ptr %i.dac, align 4, !tbaa !210
  %i.dae = sext i32 %i.dad to i64
  br label %bb.mk

bb.mk:                                            ; preds = %bb.mj, %.loopexit352.i
  %.0139.i = phi i64 [ 0, %.loopexit352.i ], [ %i.dae, %bb.mj ] ; 7 uses
  %i.daf = load ptr, ptr %i.m, align 8, !tbaa !15 ; 6 uses
  %i.dag = getelementptr inbounds nuw i8, ptr %i.daf, i64 1072 ; 2 uses
  %i.dah = getelementptr inbounds nuw i8, ptr %i.daf, i64 1096 ; 6 uses
  %i.dai = load i8, ptr %i.dah, align 8, !tbaa !704, !range !335, !noundef !336
  %i.daj = trunc nuw i8 %i.dai to i1
  br i1 %i.daj, label %bb.ml, label %bb.mm

bb.ml:                                            ; preds = %bb.mk
  call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.138, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN8DDBufferIiE7acquireEmENKUlvE_clEv, ptr noundef nonnull @.str.139, i32 noundef 359) #29
  unreachable

bb.mm:                                            ; preds = %bb.mk
  store i8 1, ptr %i.dah, align 8, !tbaa !704
  %i.dak = getelementptr inbounds nuw i8, ptr %i.daf, i64 1080 ; 3 uses
  %i.dal = load ptr, ptr %i.dak, align 8, !tbaa !372 ; 4 uses
  %i.dam = load ptr, ptr %i.dag, align 8, !tbaa !371 ; 11 uses
  %i.dan = ptrtoint ptr %i.dal to i64             ; 3 uses
  %i.dao = ptrtoint ptr %i.dam to i64             ; 4 uses
  %i.dap = sub i64 %i.dan, %i.dao                 ; 2 uses
  %i.daq = ashr exact i64 %i.dap, 2               ; 6 uses
  %i.dar = icmp ugt i64 %.0139.i, %i.daq
  br i1 %i.dar, label %bb.mn, label %_ZN14DDBufferAccessIiEC2ER8DDBufferIiEm.exit.i

bb.mn:                                            ; preds = %bb.mm
  %i.das = sub nuw nsw i64 %.0139.i, %i.daq       ; 5 uses
  %i.dat = getelementptr inbounds nuw i8, ptr %i.daf, i64 1088 ; 3 uses
  %i.dau = load ptr, ptr %i.dat, align 8, !tbaa !420
  %i.dav = ptrtoint ptr %i.dau to i64
  %i.daw = sub i64 %i.dav, %i.dan
  %i.dax = ashr exact i64 %i.daw, 2               ; 2 uses
  %i.day = icmp ult i64 %i.daq, 2305843009213693952
  call void @llvm.assume(i1 %i.day)
  %i.daz = xor i64 %i.daq, 2305843009213693951    ; 2 uses
  %i.dba = icmp ule i64 %i.dax, %i.daz
  call void @llvm.assume(i1 %i.dba)
  %.not37.i.i268.i = icmp ult i64 %i.dax, %i.das
  br i1 %.not37.i.i268.i, label %bb.mp, label %bb.mo

bb.mo:                                            ; preds = %bb.mn
  %i.dbb = shl nuw nsw i64 %i.das, 2
  %scevgep.i.i.i269.i = getelementptr i8, ptr %i.dal, i64 %i.dbb
  store ptr %scevgep.i.i.i269.i, ptr %i.dak, align 8, !tbaa !372
  br label %_ZN14DDBufferAccessIiEC2ER8DDBufferIiEm.exit.i

bb.mp:                                            ; preds = %bb.mn
  %i.dbc = icmp ult i64 %i.daz, %i.das
  br i1 %i.dbc, label %bb.mq, label %_ZNKSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE12_M_check_lenEmPKc.exit.i.i270.i

bb.mq:                                            ; preds = %bb.mp
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.130) #29
  unreachable

_ZNKSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE12_M_check_lenEmPKc.exit.i.i270.i: ; preds = %bb.mp
  %.sroa.speculated.i.i.i271.i = call i64 @llvm.umax.i64(i64 %i.daq, i64 %i.das)
  %i.dbd = add nuw nsw i64 %.sroa.speculated.i.i.i271.i, %i.daq
  %i.dbe = call i64 @llvm.umin.i64(i64 %i.dbd, i64 2305843009213693951) ; 2 uses
  %i.dbf = shl nuw nsw i64 %i.dbe, 2
  %i.dbg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dbf) #35 ; 10 uses
  %i.dbh = getelementptr inbounds nuw i8, ptr %i.dbg, i64 %i.dap
  %.not13.i.i.i.i272.i = icmp eq ptr %i.dam, %i.dal
  br i1 %.not13.i.i.i.i272.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_N3gmx30DefaultInitializationAllocatorIiSaIiEEEET0_T_S6_S5_RT1_.exit.i.i277.i, label %iter.check1468

iter.check1468:                                   ; preds = %_ZNKSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE12_M_check_lenEmPKc.exit.i.i270.i
  %i.dbi = ptrtoaddr ptr %i.dbg to i64
  %i.dbj = add i64 %i.dan, -4
  %i.dbk = sub i64 %i.dbj, %i.dao                 ; 3 uses
  %i.dbl = lshr i64 %i.dbk, 2
  %i.dbm = add nuw nsw i64 %i.dbl, 1              ; 5 uses
  %min.iters.check1450 = icmp ult i64 %i.dbk, 28
  %i.dbn = sub i64 %i.dao, %i.dbi
  %diff.check1452 = icmp ugt i64 %i.dbn, -128
  %or.cond1645 = or i1 %min.iters.check1450, %diff.check1452
  br i1 %or.cond1645, label %.lr.ph.i.i.i.i273.i.preheader, label %vector.main.loop.iter.check1453

vector.main.loop.iter.check1453:                  ; preds = %iter.check1468
  %min.iters.check1454 = icmp ult i64 %i.dbk, 124
  br i1 %min.iters.check1454, label %vec.epilog.ph1472, label %vector.ph1455

vector.ph1455:                                    ; preds = %vector.main.loop.iter.check1453
  %i.dbo = and i64 %i.dbm, 24
  %n.vec1456 = and i64 %i.dbm, 9223372036854775776 ; 4 uses
  %i.dbp = shl i64 %n.vec1456, 2                  ; 2 uses
  %i.dbq = getelementptr i8, ptr %i.dbg, i64 %i.dbp
  %i.dbr = getelementptr i8, ptr %i.dam, i64 %i.dbp
  br label %vector.body1457

vector.body1457:                                  ; preds = %vector.ph1455, %vector.body1457
  %index1458 = phi i64 [ 0, %vector.ph1455 ], [ %index.next1465, %vector.body1457 ] ; 2 uses
  %i.dbs = shl i64 %index1458, 2                  ; 2 uses
  %next.gep1459 = getelementptr i8, ptr %i.dbg, i64 %i.dbs ; 4 uses
  %next.gep1460 = getelementptr i8, ptr %i.dam, i64 %i.dbs ; 4 uses
  %i.dbt = getelementptr i8, ptr %next.gep1460, i64 32
  %i.dbu = getelementptr i8, ptr %next.gep1460, i64 64
  %i.dbv = getelementptr i8, ptr %next.gep1460, i64 96
  %wide.load1461 = load <8 x i32>, ptr %next.gep1460, align 4, !tbaa !210
end_hunk_1
begin_hunk_2_@_ZL11turn_on_dlbRKN3gmx8MDLoggerEP12gmx_domdec_tl:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.fx = load ptr, ptr %4, align 8, !tbaa !235   ; 2 uses
  %i.fy = icmp eq ptr %i.fx, %i.ee
  br i1 %i.fy, label %_ZN3gmx14LogEntryWriterD2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i88: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87
  %i.fz = load i64, ptr %i.ee, align 8, !tbaa !236
  %i.ga = add i64 %i.fz, 1
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.ga) #30
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit90

_ZN3gmx14LogEntryWriterD2Ev.exit90:               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i88
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.w

bb.q:                                             ; preds = %bb.j, %_ZN3gmx14LogEntryWriterD2Ev.exit84
  %i.gb = getelementptr inbounds nuw i8, ptr %i.b, i64 392
  store i32 4, ptr %i.gb, align 8, !tbaa !343
  %i.gc = getelementptr inbounds nuw i8, ptr %i.b, i64 1604
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !210 ; 2 uses
  %i.ge = icmp sgt i32 %i.gd, 0
  br i1 %i.ge, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.126, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZL11turn_on_dlbRKN3gmx8MDLoggerEP12gmx_domdec_tlENK3$_0clEv", ptr noundef nonnull @.str.1, i32 noundef 1287) #29
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.gf = getelementptr inbounds nuw i8, ptr %i.b, i64 1584
  %i.gg = load float, ptr %i.gf, align 8, !tbaa !211
  %i.gh = uitofp nneg i32 %i.gd to float
  %i.gi = fdiv float %i.gg, %i.gh
  %i.gj = getelementptr inbounds nuw i8, ptr %i.b, i64 1668
  store float %i.gi, ptr %i.gj, align 4, !tbaa !365
  call void @_Z14set_dlb_limitsP12gmx_domdec_t(ptr noundef nonnull %0)
  %i.gk = load i32, ptr %i.i, align 8, !tbaa !208 ; 2 uses
  %i.gl = icmp sgt i32 %i.gk, 0
  br i1 %i.gl, label %.lr.ph16, label %.loopexit

.lr.ph16:                                         ; preds = %bb.s
  %i.gm = getelementptr inbounds nuw i8, ptr %i.b, i64 1480
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !209
  %i.go = getelementptr inbounds nuw i8, ptr %i.b, i64 1504
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 164
  %wide.trip.count32 = zext nneg i32 %i.gk to i64
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph16, %bb.v
  %indvars.iv29 = phi i64 [ 0, %.lr.ph16 ], [ %indvars.iv.next30, %bb.v ] ; 5 uses
  %i.gq = getelementptr inbounds nuw [48 x i8], ptr %i.gn, i64 %indvars.iv29
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !354 ; 4 uses
  %.not = icmp eq ptr %i.gr, null
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gs = load ptr, ptr %i.go, align 8, !tbaa !346
  %i.gt = getelementptr inbounds nuw [64 x i8], ptr %i.gs, i64 %indvars.iv29 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 32
  %i.gv = load float, ptr %i.gu, align 8, !tbaa !348
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 40
  store float %i.gv, ptr %i.gw, align 8, !tbaa !350
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv29
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !210
  %i.gz = sext i32 %i.gy to i64
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.gz
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !210 ; 8 uses
  %i.hc = icmp sgt i32 %i.hb, 0
  br i1 %i.hc, label %.lr.ph11, label %.._crit_edge12_crit_edge

.._crit_edge12_crit_edge:                         ; preds = %bb.u
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.gr, i64 40
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !353
  br label %._crit_edge12

.lr.ph11:                                         ; preds = %bb.u
  %i.hd = uitofp nneg i32 %i.hb to float          ; 9 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.gr, i64 40
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !353 ; 17 uses
  %.not65 = icmp eq i64 %indvars.iv29, 0
  br i1 %.not65, label %iter.check, label %.lr.ph11.split

iter.check:                                       ; preds = %.lr.ph11
  %wide.trip.count27 = zext nneg i32 %i.hb to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.hb, 4
  br i1 %min.iters.check, label %.lr.ph11.split.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check57 = icmp ult i32 %i.hb, 32
  br i1 %min.iters.check57, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.hg = and i64 %wide.trip.count27, 28
  %n.vec = and i64 %wide.trip.count27, 2147483616 ; 4 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.hd, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add <8 x i32> %vec.ind, splat (i32 8)
  %step.add.2 = add <8 x i32> %vec.ind, splat (i32 16)
  %step.add.3 = add <8 x i32> %vec.ind, splat (i32 24)
  %i.hh = uitofp nneg <8 x i32> %vec.ind to <8 x float>
  %i.hi = uitofp nneg <8 x i32> %step.add to <8 x float>
  %i.hj = uitofp nneg <8 x i32> %step.add.2 to <8 x float>
  %i.hk = uitofp nneg <8 x i32> %step.add.3 to <8 x float>
  %i.hl = fdiv <8 x float> %i.hh, %broadcast.splat
  %i.hm = fdiv <8 x float> %i.hi, %broadcast.splat
  %i.hn = fdiv <8 x float> %i.hj, %broadcast.splat
  %i.ho = fdiv <8 x float> %i.hk, %broadcast.splat
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %index ; 4 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 32
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hp, i64 64
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hp, i64 96
  store <8 x float> %i.hl, ptr %i.hp, align 4, !tbaa !211
  store <8 x float> %i.hm, ptr %i.hq, align 4, !tbaa !211
  store <8 x float> %i.hn, ptr %i.hr, align 4, !tbaa !211
  store <8 x float> %i.ho, ptr %i.hs, align 4, !tbaa !211
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 32)
  %i.ht = icmp eq i64 %index.next, %n.vec
  br i1 %i.ht, label %middle.block, label %vector.body, !llvm.loop !838

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count27
  br i1 %cmp.n, label %._crit_edge12, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.hg, 0
  br i1 %min.epilog.iters.check, label %.lr.ph11.split.us.preheader, label %vec.epilog.ph, !prof !383

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec58 = and i64 %wide.trip.count27, 2147483644 ; 3 uses
  %broadcast.splatinsert59 = insertelement <4 x float> poison, float %i.hd, i64 0
  %broadcast.splat60 = shufflevector <4 x float> %broadcast.splatinsert59, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hu = trunc nuw nsw i64 %vec.epilog.resume.val to i32
  %broadcast.splatinsert61 = insertelement <4 x i32> poison, i32 %i.hu, i64 0
  %broadcast.splat62 = shufflevector <4 x i32> %broadcast.splatinsert61, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i32> %broadcast.splat62, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index63 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next65, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind64 = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next66, %vec.epilog.vector.body ] ; 2 uses
  %i.hv = uitofp nneg <4 x i32> %vec.ind64 to <4 x float>
  %i.hw = fdiv <4 x float> %i.hv, %broadcast.splat60
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %index63
  store <4 x float> %i.hw, ptr %i.hx, align 4, !tbaa !211
  %index.next65 = add nuw i64 %index63, 4         ; 2 uses
  %vec.ind.next66 = add <4 x i32> %vec.ind64, splat (i32 4)
  %i.hy = icmp eq i64 %index.next65, %n.vec58
  br i1 %i.hy, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !839

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n67 = icmp eq i64 %n.vec58, %wide.trip.count27
  br i1 %cmp.n67, label %._crit_edge12, label %.lr.ph11.split.us.preheader

.lr.ph11.split.us.preheader:                      ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv24.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec58, %vec.epilog.middle.block ]
  br label %.lr.ph11.split.us

.lr.ph11.split.us:                                ; preds = %.lr.ph11.split.us.preheader, %.lr.ph11.split.us
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %.lr.ph11.split.us ], [ %indvars.iv24.ph, %.lr.ph11.split.us.preheader ] ; 3 uses
  %i.hz = trunc nuw nsw i64 %indvars.iv24 to i32
  %i.ia = uitofp nneg i32 %i.hz to float
  %i.ib = fdiv float %i.ia, %i.hd
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv24
  store float %i.ib, ptr %i.ic, align 4, !tbaa !211
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1 ; 2 uses
  %exitcond28.not = icmp eq i64 %indvars.iv.next25, %wide.trip.count27
  br i1 %exitcond28.not, label %._crit_edge12, label %.lr.ph11.split.us, !llvm.loop !840

.lr.ph11.split:                                   ; preds = %.lr.ph11
  %i.id = getelementptr inbounds nuw i8, ptr %i.gr, i64 88
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !357 ; 8 uses
  %wide.trip.count22 = zext nneg i32 %i.hb to i64 ; 7 uses
  %min.iters.check70 = icmp ult i32 %i.hb, 8
  br i1 %min.iters.check70, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph11.split
  %i.if = shl nuw nsw i64 %wide.trip.count22, 2
  %i.ig = getelementptr i8, ptr %i.hf, i64 %i.if
  %i.ih = shl nuw nsw i64 %wide.trip.count22, 4
  %i.ii = getelementptr i8, ptr %i.ie, i64 %i.ih
  %i.ij = getelementptr i8, ptr %i.ii, i64 -8
  %bound0 = icmp ult ptr %i.hf, %i.ij
  %bound1 = icmp ult ptr %i.ie, %i.ig
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph71

vector.ph71:                                      ; preds = %vector.memcheck
  %n.vec72 = and i64 %wide.trip.count22, 2147483640 ; 3 uses
  %broadcast.splatinsert73 = insertelement <8 x float> poison, float %i.hd, i64 0
  %broadcast.splat74 = shufflevector <8 x float> %broadcast.splatinsert73, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body75

vector.body75:                                    ; preds = %vector.body75, %vector.ph71
  %index76 = phi i64 [ 0, %vector.ph71 ], [ %index.next80, %vector.body75 ] ; 2 uses
  %vec.ind77 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph71 ], [ %vec.ind.next81, %vector.body75 ] ; 2 uses
  %vec.ind78 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph71 ], [ %vec.ind.next83, %vector.body75 ] ; 2 uses
  %vec.ind78.a = phi <8 x i32> [ <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>, %vector.ph71 ], [ %vec.ind.next82, %vector.body75 ] ; 2 uses
  %i.ik = uitofp nneg <8 x i32> %vec.ind78 to <8 x float>
  %i.il = fdiv <8 x float> %i.ik, %broadcast.splat74 ; 2 uses
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %index76
  store <8 x float> %i.il, ptr %i.im, align 4, !tbaa !211, !alias.scope !849, !noalias !850
  %wide.gep = getelementptr inbounds nuw [16 x i8], ptr %i.ie, <8 x i64> %vec.ind77 ; 2 uses
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.il, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !359, !alias.scope !850
  %i.in = uitofp nneg <8 x i32> %vec.ind78.a to <8 x float>
  %i.io = fdiv <8 x float> %i.in, %broadcast.splat74
  %wide.gep79 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.io, <8 x ptr> align 4 %wide.gep79, <8 x i1> splat (i1 true)), !tbaa !360, !alias.scope !850
  %index.next80 = add nuw i64 %index76, 8         ; 2 uses
  %vec.ind.next81 = add nuw nsw <8 x i64> %vec.ind77, splat (i64 8)
  %vec.ind.next83 = add <8 x i32> %vec.ind78, splat (i32 8)
  %vec.ind.next82 = add <8 x i32> %vec.ind78.a, splat (i32 8)
  %i.ip = icmp eq i64 %index.next80, %n.vec72
  br i1 %i.ip, label %middle.block83, label %vector.body75, !llvm.loop !844

middle.block83:                                   ; preds = %vector.body75
  %cmp.n84 = icmp eq i64 %n.vec72, %wide.trip.count22
  br i1 %cmp.n84, label %._crit_edge12, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph11.split, %middle.block83
  %indvars.iv19.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph11.split ], [ %n.vec72, %middle.block83 ] ; 3 uses
  %xtraiter89 = and i64 %wide.trip.count22, 3     ; 2 uses
  %lcmp.mod90.not = icmp eq i64 %xtraiter89, 0
  br i1 %lcmp.mod90.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol.preheader

scalar.ph.prol.preheader:                         ; preds = %scalar.ph.preheader
  %i.iq = insertelement <2 x float> poison, float %i.hd, i64 0
  %i.ir = shufflevector <2 x float> %i.iq, <2 x float> poison, <2 x i32> zeroinitializer
  br label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.prol, %scalar.ph.prol.preheader
  %indvars.iv19.prol = phi i64 [ %indvars.iv.next20.prol, %scalar.ph.prol ], [ %indvars.iv19.ph, %scalar.ph.prol.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.prol.preheader ]
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv19.prol
  %i.it = getelementptr inbounds nuw [16 x i8], ptr %i.ie, i64 %indvars.iv19.prol
  %indvars.iv.next20.prol = add nuw nsw i64 %indvars.iv19.prol, 1 ; 3 uses
  %i.iu = trunc nsw i64 %indvars.iv19.prol to i32
  %i.iv = trunc nsw i64 %indvars.iv.next20.prol to i32
  %i.iw = insertelement <2 x i32> poison, i32 %i.iu, i64 0
  %i.ix = insertelement <2 x i32> %i.iw, i32 %i.iv, i64 1
  %i.iy = uitofp nneg <2 x i32> %i.ix to <2 x float>
  %i.iz = fdiv <2 x float> %i.iy, %i.ir           ; 2 uses
  %i.ja = extractelement <2 x float> %i.iz, i64 0
  store float %i.ja, ptr %i.is, align 4, !tbaa !211
  store <2 x float> %i.iz, ptr %i.it, align 4, !tbaa !211
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter89
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !845

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv19.unr = phi i64 [ %indvars.iv19.ph, %scalar.ph.preheader ], [ %indvars.iv.next20.prol, %scalar.ph.prol ]
  %i.jb = sub nsw i64 %indvars.iv19.ph, %wide.trip.count22
  %i.jc = icmp ugt i64 %i.jb, -4
  br i1 %i.jc, label %._crit_edge12, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %i.jd = insertelement <2 x float> poison, float %i.hd, i64 0
  %i.je = shufflevector <2 x float> %i.jd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jf = insertelement <2 x float> poison, float %i.hd, i64 0
  %i.jg = shufflevector <2 x float> %i.jf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jh = insertelement <2 x float> poison, float %i.hd, i64 0
  %i.ji = shufflevector <2 x float> %i.jh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jj = insertelement <2 x float> poison, float %i.hd, i64 0
  %i.jk = shufflevector <2 x float> %i.jj, <2 x float> poison, <2 x i32> zeroinitializer
  br label %scalar.ph

._crit_edge12:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %.lr.ph11.split.us, %middle.block83, %middle.block, %vec.epilog.middle.block, %.._crit_edge12_crit_edge
  %i.jl = phi ptr [ %.pre, %.._crit_edge12_crit_edge ], [ %i.hf, %middle.block ], [ %i.hf, %middle.block83 ], [ %i.hf, %vec.epilog.middle.block ], [ %i.hf, %.lr.ph11.split.us ], [ %i.hf, %scalar.ph ], [ %i.hf, %scalar.ph.prol.loopexit ]
  %i.jm = sext i32 %i.hb to i64
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %i.jm
  store float 1.000000e+00, ptr %i.jn, align 4, !tbaa !211
  br label %bb.v

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv19 = phi i64 [ %indvars.iv19.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next20.3, %scalar.ph ] ; 7 uses
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv19
  %i.jp = getelementptr inbounds nuw [16 x i8], ptr %i.ie, i64 %indvars.iv19
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1 ; 4 uses
  %i.jq = trunc nsw i64 %indvars.iv19 to i32
  %i.jr = trunc nsw i64 %indvars.iv.next20 to i32
  %i.js = insertelement <2 x i32> poison, i32 %i.jq, i64 0
  %i.jt = insertelement <2 x i32> %i.js, i32 %i.jr, i64 1
  %i.ju = uitofp nneg <2 x i32> %i.jt to <2 x float>
  %i.jv = fdiv <2 x float> %i.ju, %i.je           ; 2 uses
  %i.jw = extractelement <2 x float> %i.jv, i64 0
  store float %i.jw, ptr %i.jo, align 4, !tbaa !211
  store <2 x float> %i.jv, ptr %i.jp, align 4, !tbaa !211
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv.next20
  %i.jy = getelementptr inbounds nuw [16 x i8], ptr %i.ie, i64 %indvars.iv.next20
  %indvars.iv.next20.1 = add nuw nsw i64 %indvars.iv19, 2 ; 4 uses
  %i.jz = trunc nsw i64 %indvars.iv.next20 to i32
  %i.ka = trunc nsw i64 %indvars.iv.next20.1 to i32
  %i.kb = insertelement <2 x i32> poison, i32 %i.jz, i64 0
  %i.kc = insertelement <2 x i32> %i.kb, i32 %i.ka, i64 1
  %i.kd = uitofp nneg <2 x i32> %i.kc to <2 x float>
  %i.ke = fdiv <2 x float> %i.kd, %i.jg           ; 2 uses
  %i.kf = extractelement <2 x float> %i.ke, i64 0
  store float %i.kf, ptr %i.jx, align 4, !tbaa !211
  store <2 x float> %i.ke, ptr %i.jy, align 4, !tbaa !211
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv.next20.1
  %i.kh = getelementptr inbounds nuw [16 x i8], ptr %i.ie, i64 %indvars.iv.next20.1
  %indvars.iv.next20.2 = add nuw nsw i64 %indvars.iv19, 3 ; 4 uses
  %i.ki = trunc nsw i64 %indvars.iv.next20.1 to i32
  %i.kj = trunc nsw i64 %indvars.iv.next20.2 to i32
  %i.kk = insertelement <2 x i32> poison, i32 %i.ki, i64 0
  %i.kl = insertelement <2 x i32> %i.kk, i32 %i.kj, i64 1
  %i.km = uitofp nneg <2 x i32> %i.kl to <2 x float>
  %i.kn = fdiv <2 x float> %i.km, %i.ji           ; 2 uses
  %i.ko = extractelement <2 x float> %i.kn, i64 0
  store float %i.ko, ptr %i.kg, align 4, !tbaa !211
  store <2 x float> %i.kn, ptr %i.kh, align 4, !tbaa !211
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv.next20.2
  %i.kq = getelementptr inbounds nuw [16 x i8], ptr %i.ie, i64 %indvars.iv.next20.2
  %indvars.iv.next20.3 = add nuw nsw i64 %indvars.iv19, 4 ; 3 uses
  %i.kr = trunc nsw i64 %indvars.iv.next20.2 to i32
  %i.ks = trunc nsw i64 %indvars.iv.next20.3 to i32
  %i.kt = insertelement <2 x i32> poison, i32 %i.kr, i64 0
  %i.ku = insertelement <2 x i32> %i.kt, i32 %i.ks, i64 1
  %i.kv = uitofp nneg <2 x i32> %i.ku to <2 x float>
  %i.kw = fdiv <2 x float> %i.kv, %i.jk           ; 2 uses
  %i.kx = extractelement <2 x float> %i.kw, i64 0
  store float %i.kx, ptr %i.kp, align 4, !tbaa !211
  store <2 x float> %i.kw, ptr %i.kq, align 4, !tbaa !211
  %exitcond23.not.3 = icmp eq i64 %indvars.iv.next20.3, %wide.trip.count22
  br i1 %exitcond23.not.3, label %._crit_edge12, label %scalar.ph, !llvm.loop !846

bb.v:                                             ; preds = %._crit_edge12, %bb.t
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1 ; 2 uses
  %exitcond33.not = icmp eq i64 %indvars.iv.next30, %wide.trip.count32
  br i1 %exitcond33.not, label %.loopexit, label %bb.t, !llvm.loop !847

.loopexit:                                        ; preds = %bb.v, %bb.s, %bb.i
  ret void

bb.w:                                             ; preds = %_ZN3gmx14LogEntryWriterD2Ev.exit90, %_ZN3gmx14LogEntryWriterD2Ev.exit74
  %.pn66.pn = phi { ptr, i32 } [ %.pn66, %_ZN3gmx14LogEntryWriterD2Ev.exit74 ], [ %.pn, %_ZN3gmx14LogEntryWriterD2Ev.exit90 ]
  resume { ptr, i32 } %.pn66.pn
}

declare void @_Z9set_ddboxRK12gmx_domdec_tbPA3_KfbN3gmx8ArrayRefIKNS5_11BasicVectorIfEEEEP11gmx_ddbox_t(ptr noundef nonnull align 8 dereferenceable(1097), i1 noundef zeroext, ptr noundef, i1 noundef zeroext, ptr, ptr, ptr noundef) local_unnamed_addr #5

declare void @_Z15distributeStateRKN3gmx8MDLoggerEP12gmx_domdec_tRK10gmx_mtop_tP7t_stateRK11gmx_ddbox_tS9_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef nonnull align 8 dereferenceable(768), ptr noundef, ptr noundef nonnull align 4 dereferenceable(200), ptr noundef) local_unnamed_addr #5

declare void @_Z28dd_resize_atominfo_and_stateP10t_forcerecP7t_statei(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZL15make_dd_indicesP12gmx_domdec_ti(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i32, ptr %i.a, align 4, !tbaa !384  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !371
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !369  ; 7 uses
  %i.g = icmp sgt i32 %i.b, 0
  br i1 %i.g, label %.lr.ph81, label %._crit_edge82

.lr.ph81:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.i = getelementptr i8, ptr %0, i64 356
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %wide.trip.count = zext nneg i32 %i.b to i64
  %i.m = zext nneg i32 %i.b to i64
  br label %bb.b

._crit_edge82:                                    ; preds = %._crit_edge, %bb.a
  %.038.lcssa = phi i32 [ 0, %bb.a ], [ %spec.select, %._crit_edge ]
  ret i32 %.038.lcssa

bb.b:                                             ; preds = %.lr.ph81, %._crit_edge
  %indvars.iv87 = phi i64 [ 0, %.lr.ph81 ], [ %indvars.iv.next88, %._crit_edge ] ; 5 uses
  %.03778 = phi i32 [ %1, %.lr.ph81 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %.03877 = phi i32 [ 0, %.lr.ph81 ], [ %spec.select, %._crit_edge ]
  %i.n = icmp eq i64 %indvars.iv87, 0             ; 2 uses
  br i1 %i.n, label %.split, label %.split41

.split:                                           ; preds = %bb.b
  %i.o = load i32, ptr %i.h, align 8, !tbaa !210  ; 2 uses
  %i.p = load i32, ptr %i.i, align 4, !tbaa !210  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.o, %i.p
  br i1 %.not.i.i, label %bb.c, label %_ZNK3gmx11DomdecZones9atomRangeEi.exit

bb.c:                                             ; preds = %.split
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.128, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN3gmx5RangeIiEC1EiiENKUlvE_clEv, ptr noundef nonnull @.str.129, i32 noundef 111) #29
  unreachable

.split41:                                         ; preds = %bb.b
  %i.q = getelementptr [4 x i8], ptr %i.h, i64 %indvars.iv87 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !210  ; 3 uses
  %i.s = getelementptr i8, ptr %i.q, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !210  ; 2 uses
  %.not.i.i44 = icmp sgt i32 %i.r, %i.t
  br i1 %.not.i.i44, label %bb.d, label %_ZNK3gmx11DomdecZones9atomRangeEi.exit

bb.d:                                             ; preds = %.split41
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.128, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN3gmx5RangeIiEC1EiiENKUlvE_clEv, ptr noundef nonnull @.str.129, i32 noundef 111) #29
  unreachable

_ZNK3gmx11DomdecZones9atomRangeEi.exit:           ; preds = %.split, %.split41
  %i.u = phi i32 [ %i.r, %.split41 ], [ %i.o, %.split ]
  %phi.call.in = phi i32 [ %i.t, %.split41 ], [ %i.p, %.split ] ; 2 uses
  %.035 = phi i32 [ %i.r, %.split41 ], [ %1, %.split ] ; 2 uses
  %i.v = icmp slt i32 %.035, %phi.call.in
  br i1 %i.v, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNK3gmx11DomdecZones9atomRangeEi.exit
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv87
  %i.x = load i32, ptr %i.w, align 4, !tbaa !210
  %i.y = add nsw i32 %i.x, %i.u
end_hunk_2
