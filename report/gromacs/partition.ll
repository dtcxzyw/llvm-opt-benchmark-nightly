Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/partition?download=true
inline.NumInlined: 2655
inline.NumDeleted: 1066
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZN3gmx19dd_partition_systemEP8_IO_FILERKNS_8MDLoggerElP12gmx_domdec_tbP7t_stateRK10gmx_mtop_tRK10t_inputrecRKNS_18MDModulesNotifiersEPNS_10ImdSessionEP6pull_tS8_PNS_12ForceBuffersEPNS_7MDAtomsEP14gmx_localtop_tP10t_forcerecPNS_19VirtualSitesHandlerEPNS_11ConstraintsEP6t_nrnbP13gmx_wallcycleb:bb.a
  store i32 0, ptr %i.e, align 4, !tbaa !210
  %i.cmy = icmp sgt i32 %i.cmf, 0
  br i1 %i.cmy, label %.lr.ph526.i, label %._crit_edge527.i

.lr.ph526.i:                                      ; preds = %bb.kz
  %i.cmz = getelementptr inbounds nuw i8, ptr %51, i64 56 ; 2 uses
  %i.cna = getelementptr inbounds nuw i8, ptr %3, i64 256
  %i.cnb = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.cnc = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.cnd = getelementptr inbounds nuw i8, ptr %27, i64 8
  %scevgep1497 = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  br label %bb.la

bb.la:                                            ; preds = %_ZL18make_cell2at_indexP21gmx_domdec_comm_dim_tii.exit.i, %.lr.ph526.i
  %i.cne = phi ptr [ %3, %.lr.ph526.i ], [ %i.dvr, %_ZL18make_cell2at_indexP21gmx_domdec_comm_dim_tii.exit.i ] ; 2 uses
  %.0141524.i = phi i32 [ %i.cmx, %.lr.ph526.i ], [ %.1142.lcssa683.i, %_ZL18make_cell2at_indexP21gmx_domdec_comm_dim_tii.exit.i ] ; 2 uses
  %.0143523.i = phi i32 [ 1, %.lr.ph526.i ], [ %.pre-phi, %_ZL18make_cell2at_indexP21gmx_domdec_comm_dim_tii.exit.i ] ; 23 uses
  %storemerge522.i = phi i32 [ 0, %.lr.ph526.i ], [ %i.dvq, %_ZL18make_cell2at_indexP21gmx_domdec_comm_dim_tii.exit.i ] ; 4 uses
  %i.cnf = getelementptr inbounds nuw i8, ptr %i.cne, i64 180 ; 6 uses
  %i.cng = sext i32 %storemerge522.i to i64       ; 3 uses
  %i.cnh = getelementptr inbounds nuw [4 x i8], ptr %i.cnf, i64 %i.cng
  %i.cni = load i32, ptr %i.cnh, align 4, !tbaa !210 ; 4 uses
  store i32 %i.cni, ptr %i.f, align 4, !tbaa !210
  %i.cnj = load ptr, ptr %i.m, align 8, !tbaa !15 ; 2 uses
  %i.cnk = getelementptr inbounds nuw i8, ptr %i.cnj, i64 904
  %i.cnl = getelementptr inbounds nuw [32 x i8], ptr %i.cnk, i64 %i.cng ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #19
  store i8 0, ptr %i.aa, align 1, !tbaa !366
  %.not165490.i = icmp slt i32 %storemerge522.i, 0
  br i1 %.not165490.i, label %._crit_edge.i547, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.la
  %i.cnm = add nuw i32 %storemerge522.i, 1
  %wide.trip.count.i542 = zext nneg i32 %i.cnm to i64 ; 2 uses
  %xtraiter1774 = and i64 %wide.trip.count.i542, 3 ; 3 uses
  %i.cnn = icmp ult i32 %storemerge522.i, 3
  br i1 %i.cnn, label %.lr.ph.i543.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter1778 = and i64 %wide.trip.count.i542, 2147483644
  br label %.lr.ph.i543

._crit_edge.i547.loopexit.unr-lcssa:              ; preds = %bb.lh
  %lcmp.mod1776.not = icmp eq i64 %xtraiter1774, 0
  br i1 %lcmp.mod1776.not, label %._crit_edge.i547, label %.lr.ph.i543.epil.preheader

.lr.ph.i543.epil.preheader:                       ; preds = %._crit_edge.i547.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i544.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i545.3, %._crit_edge.i547.loopexit.unr-lcssa ]
  %lcmp.mod1777 = icmp ne i64 %xtraiter1774, 0
  call void @llvm.assume(i1 %lcmp.mod1777)
  br label %.lr.ph.i543.epil

.lr.ph.i543.epil:                                 ; preds = %bb.lc, %.lr.ph.i543.epil.preheader
  %indvars.iv.i544.epil = phi i64 [ %indvars.iv.i544.epil.init, %.lr.ph.i543.epil.preheader ], [ %indvars.iv.next.i545.epil, %bb.lc ] ; 2 uses
  %epil.iter1775 = phi i64 [ 0, %.lr.ph.i543.epil.preheader ], [ %epil.iter1775.next, %bb.lc ]
  %i.cno = getelementptr inbounds nuw [4 x i8], ptr %i.cnf, i64 %indvars.iv.i544.epil
  %i.cnp = load i32, ptr %i.cno, align 4, !tbaa !210
  %i.cnq = sext i32 %i.cnp to i64
  %i.cnr = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.cnq
  %i.cns = load i32, ptr %i.cnr, align 4, !tbaa !210
  %.not178.i.epil = icmp eq i32 %i.cns, 0
  br i1 %.not178.i.epil, label %bb.lc, label %bb.lb

bb.lb:                                            ; preds = %.lr.ph.i543.epil
  store i8 1, ptr %i.aa, align 1, !tbaa !366
  br label %bb.lc

bb.lc:                                            ; preds = %bb.lb, %.lr.ph.i543.epil
  %indvars.iv.next.i545.epil = add nuw nsw i64 %indvars.iv.i544.epil, 1
  %epil.iter1775.next = add i64 %epil.iter1775, 1 ; 2 uses
  %epil.iter1775.cmp.not = icmp eq i64 %epil.iter1775.next, %xtraiter1774
  br i1 %epil.iter1775.cmp.not, label %._crit_edge.i547, label %.lr.ph.i543.epil, !llvm.loop !502

._crit_edge.i547:                                 ; preds = %._crit_edge.i547.loopexit.unr-lcssa, %bb.lc, %bb.la
  %i.cnt = load i32, ptr %51, align 4, !tbaa !665
  %.not166.i = icmp slt i32 %i.cni, %i.cnt
  br i1 %.not166.i, label %._crit_edge._crit_edge.i, label %bb.li

._crit_edge._crit_edge.i:                         ; preds = %._crit_edge.i547
  %.pre617.i = sext i32 %i.cni to i64
  br label %bb.lj

.lr.ph.i543:                                      ; preds = %bb.lh, %.lr.ph.preheader.i.new
  %indvars.iv.i544 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i545.3, %bb.lh ] ; 5 uses
  %niter1779 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter1779.next.3, %bb.lh ]
  %i.cnu = getelementptr inbounds nuw [4 x i8], ptr %i.cnf, i64 %indvars.iv.i544
  %i.cnv = load i32, ptr %i.cnu, align 4, !tbaa !210
  %i.cnw = sext i32 %i.cnv to i64
  %i.cnx = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.cnw
  %i.cny = load i32, ptr %i.cnx, align 4, !tbaa !210
  %.not178.i = icmp eq i32 %i.cny, 0
  br i1 %.not178.i, label %.lr.ph.i543.1, label %bb.ld

bb.ld:                                            ; preds = %.lr.ph.i543
  store i8 1, ptr %i.aa, align 1, !tbaa !366
  br label %.lr.ph.i543.1

.lr.ph.i543.1:                                    ; preds = %bb.ld, %.lr.ph.i543
  %i.cnz = getelementptr inbounds nuw [4 x i8], ptr %i.cnf, i64 %indvars.iv.i544
  %i.coa = getelementptr inbounds nuw i8, ptr %i.cnz, i64 4
  %i.cob = load i32, ptr %i.coa, align 4, !tbaa !210
  %i.coc = sext i32 %i.cob to i64
  %i.cod = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.coc
  %i.coe = load i32, ptr %i.cod, align 4, !tbaa !210
  %.not178.i.1 = icmp eq i32 %i.coe, 0
  br i1 %.not178.i.1, label %.lr.ph.i543.2, label %bb.le

bb.le:                                            ; preds = %.lr.ph.i543.1
  store i8 1, ptr %i.aa, align 1, !tbaa !366
  br label %.lr.ph.i543.2

.lr.ph.i543.2:                                    ; preds = %bb.le, %.lr.ph.i543.1
  %i.cof = getelementptr inbounds nuw [4 x i8], ptr %i.cnf, i64 %indvars.iv.i544
  %i.cog = getelementptr inbounds nuw i8, ptr %i.cof, i64 8
  %i.coh = load i32, ptr %i.cog, align 4, !tbaa !210
  %i.coi = sext i32 %i.coh to i64
  %i.coj = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.coi
  %i.cok = load i32, ptr %i.coj, align 4, !tbaa !210
  %.not178.i.2 = icmp eq i32 %i.cok, 0
  br i1 %.not178.i.2, label %.lr.ph.i543.3, label %bb.lf

bb.lf:                                            ; preds = %.lr.ph.i543.2
  store i8 1, ptr %i.aa, align 1, !tbaa !366
  br label %.lr.ph.i543.3

.lr.ph.i543.3:                                    ; preds = %bb.lf, %.lr.ph.i543.2
  %i.col = getelementptr inbounds nuw [4 x i8], ptr %i.cnf, i64 %indvars.iv.i544
  %i.com = getelementptr inbounds nuw i8, ptr %i.col, i64 12
  %i.con = load i32, ptr %i.com, align 4, !tbaa !210
  %i.coo = sext i32 %i.con to i64
  %i.cop = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.coo
  %i.coq = load i32, ptr %i.cop, align 4, !tbaa !210
  %.not178.i.3 = icmp eq i32 %i.coq, 0
  br i1 %.not178.i.3, label %bb.lh, label %bb.lg

bb.lg:                                            ; preds = %.lr.ph.i543.3
  store i8 1, ptr %i.aa, align 1, !tbaa !366
  br label %bb.lh

bb.lh:                                            ; preds = %bb.lg, %.lr.ph.i543.3
  %indvars.iv.next.i545.3 = add nuw nsw i64 %indvars.iv.i544, 4 ; 2 uses
  %niter1779.next.3 = add i64 %niter1779, 4       ; 2 uses
  %niter1779.ncmp.3 = icmp eq i64 %niter1779.next.3, %unroll_iter1778
  br i1 %niter1779.ncmp.3, label %._crit_edge.i547.loopexit.unr-lcssa, label %.lr.ph.i543, !llvm.loop !503

bb.li:                                            ; preds = %._crit_edge.i547
  %i.cor = getelementptr inbounds nuw i8, ptr %i.cne, i64 36
  %i.cos = sext i32 %i.cni to i64                 ; 2 uses
  %i.cot = getelementptr inbounds nuw [4 x i8], ptr %i.cor, i64 %i.cos
  %i.cou = load i32, ptr %i.cot, align 4, !tbaa !210
  %i.cov = icmp eq i32 %i.cou, 0
  %spec.select.i548 = select i1 %i.cov, i32 0, i32 %.0143523.i
  br label %bb.lj

bb.lj:                                            ; preds = %bb.li, %._crit_edge._crit_edge.i
  %.pre-phi.i = phi i64 [ %i.cos, %bb.li ], [ %.pre617.i, %._crit_edge._crit_edge.i ] ; 2 uses
  %.0144.i = phi i32 [ %spec.select.i548, %bb.li ], [ %.0143523.i, %._crit_edge._crit_edge.i ] ; 5 uses
  %i.cow = getelementptr inbounds [36 x i8], ptr %i.cmz, i64 %.pre-phi.i
  store ptr %i.cow, ptr %i.s, align 8, !tbaa !401
  %i.cox = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %.pre-phi.i
  %i.coy = load float, ptr %i.cox, align 4, !tbaa !211 ; 2 uses
  %i.coz = fmul float %i.coy, %i.coy
  store float %i.coz, ptr %i.v, align 4, !tbaa !211
  %i.cpa = getelementptr inbounds nuw i8, ptr %i.cnl, i64 24 ; 15 uses
  store i8 1, ptr %i.cpa, align 8, !tbaa !698
  %i.cpb = getelementptr inbounds nuw i8, ptr %i.cnl, i64 8 ; 2 uses
  %i.cpc = load ptr, ptr %i.cpb, align 8, !tbaa !678
  %i.cpd = load ptr, ptr %i.cnl, align 8, !tbaa !679
  %i.cpe = ptrtoint ptr %i.cpc to i64
  %i.cpf = ptrtoint ptr %i.cpd to i64
  %i.cpg = sub i64 %i.cpe, %i.cpf
  %i.cph = sdiv exact i64 %i.cpg, 112
  %i.cpi = trunc i64 %i.cph to i32
  %i.cpj = icmp sgt i32 %i.cpi, 0
  br i1 %i.cpj, label %.lr.ph518.i, label %._ZL18make_cell2at_indexP21gmx_domdec_comm_dim_tii.exit.i_crit_edge

._ZL18make_cell2at_indexP21gmx_domdec_comm_dim_tii.exit.i_crit_edge: ; preds = %bb.lj
  %.pre819 = shl nsw i32 %.0143523.i, 1
  br label %_ZL18make_cell2at_indexP21gmx_domdec_comm_dim_tii.exit.i

.lr.ph518.i:                                      ; preds = %bb.lj
  %i.cpk = icmp sgt i32 %.0144.i, 0
  %i.cpl = icmp slt i32 %.0144.i, %.0143523.i
  %i.cpm = sext i32 %.0143523.i to i64            ; 9 uses
  %i.cpn = add nsw i32 %.0143523.i, 1
  %i.cpo = sext i32 %i.cpn to i64                 ; 2 uses
  %i.cpp = add nsw i32 %.0143523.i, 2
  %i.cpq = sext i32 %i.cpp to i64                 ; 2 uses
  %i.cpr = add i32 %.0143523.i, -1                ; 2 uses
  %i.cps = icmp sgt i32 %.0143523.i, 1
  %i.cpt = icmp sgt i32 %.0143523.i, 0            ; 2 uses
  %i.cpu = zext i32 %.0143523.i to i64            ; 8 uses
  %invariant.gep.i.i549 = getelementptr [4 x i8], ptr %i.cmq, i64 %i.cpu ; 2 uses
  %i.cpv = shl i32 %.0143523.i, 1                 ; 6 uses
  %i.cpw = icmp slt i32 %.0143523.i, %i.cpv
  %wide.trip.count593.i = zext i32 %i.cpr to i64  ; 9 uses
  %scevgep = getelementptr i8, ptr %i.cnj, i64 929
  %i.cpx = shl nsw i64 %i.cng, 5
  %scevgep1496 = getelementptr i8, ptr %scevgep, i64 %i.cpx ; 2 uses
  %i.cpy = shl nuw nsw i64 %wide.trip.count593.i, 2
  %min.iters.check1508 = icmp ult i32 %.0143523.i, 9
  %bound0 = icmp ult ptr %i.cpa, %scevgep1497
  %bound1 = icmp ult ptr %i.j, %scevgep1496
  %found.conflict = and i1 %bound0, %bound1
  %min.iters.check1510 = icmp ult i32 %.0143523.i, 33
  %i.cpz = and i64 %wide.trip.count593.i, 24
  %n.vec1512 = and i64 %wide.trip.count593.i, 4294967264 ; 4 uses
  %cmp.n1588 = icmp eq i64 %n.vec1512, %wide.trip.count593.i
  %min.epilog.iters.check1593 = icmp eq i64 %i.cpz, 0
  %n.vec1595 = and i64 %wide.trip.count593.i, 4294967288 ; 3 uses
  %cmp.n1622 = icmp eq i64 %n.vec1595, %wide.trip.count593.i
  %xtraiter1786 = and i64 %wide.trip.count593.i, 3 ; 2 uses
  %lcmp.mod1787.not = icmp eq i64 %xtraiter1786, 0
  br label %bb.lk

._crit_edge519.i:                                 ; preds = %_ZN14DDBufferAccessIiED2Ev.exit.i
  %.pre612.i = load i8, ptr %i.cpa, align 8, !tbaa !698, !range !335
  %i.cqa = trunc nuw i8 %.pre612.i to i1
  br i1 %i.cqa, label %_ZL18make_cell2at_indexP21gmx_domdec_comm_dim_tii.exit.i, label %bb.oi

bb.lk:                                            ; preds = %_ZN14DDBufferAccessIiED2Ev.exit.i, %.lr.ph518.i
  %indvars.iv596.i = phi i64 [ 0, %.lr.ph518.i ], [ %indvars.iv.next597.i, %_ZN14DDBufferAccessIiED2Ev.exit.i ] ; 7 uses
  %.1142516.i = phi i32 [ %.0141524.i, %.lr.ph518.i ], [ %i.dsq, %_ZN14DDBufferAccessIiED2Ev.exit.i ]
  %i.cqb = load i8, ptr %i.p, align 1, !tbaa !366, !range !335, !noundef !336
  %i.cqc = trunc nuw i8 %i.cqb to i1
  %i.cqd = load i8, ptr %i.o, align 1, !range !335
  %i.cqe = trunc nuw i8 %i.cqd to i1
  %or.cond.i550 = select i1 %i.cqc, i1 true, i1 %i.cqe
  %i.cqf = icmp eq i64 %indvars.iv596.i, 0        ; 6 uses
  %i.cqg = and i1 %i.cqf, %or.cond.i550
  %i.cqh = zext i1 %i.cqg to i8
  store i8 %i.cqh, ptr %i.q, align 1, !tbaa !366
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #19
  %i.cqi = load ptr, ptr %i.cnl, align 8, !tbaa !679
  %i.cqj = getelementptr inbounds nuw [112 x i8], ptr %i.cqi, i64 %indvars.iv596.i ; 4 uses
  store ptr %i.cqj, ptr %i.ab, align 8, !tbaa !409
  %i.cqk = getelementptr inbounds nuw i8, ptr %i.cqj, i64 56
  %i.cql = load ptr, ptr %i.cqk, align 8, !tbaa !411 ; 2 uses
  %i.cqm = getelementptr inbounds nuw i8, ptr %i.cqj, i64 64 ; 2 uses
  %i.cqn = load ptr, ptr %i.cqm, align 8, !tbaa !412
  %.not.i.i.i551 = icmp eq ptr %i.cqn, %i.cql
  br i1 %.not.i.i.i551, label %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE5clearEv.exit.i, label %bb.ll

bb.ll:                                            ; preds = %bb.lk
  store ptr %i.cql, ptr %i.cqm, align 8, !tbaa !412
  br label %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE5clearEv.exit.i

_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE5clearEv.exit.i: ; preds = %bb.ll, %bb.lk
  %i.cqo = load ptr, ptr %i.m, align 8, !tbaa !15 ; 3 uses
  %i.cqp = getelementptr inbounds nuw i8, ptr %i.cqo, i64 1136
  %i.cqq = load ptr, ptr %i.cqp, align 8, !tbaa !413 ; 8 uses
  %i.cqr = load ptr, ptr %i.cqq, align 8, !tbaa !371 ; 2 uses
  %i.cqs = getelementptr inbounds nuw i8, ptr %i.cqq, i64 8 ; 2 uses
  %i.cqt = load ptr, ptr %i.cqs, align 8, !tbaa !372
  %.not.i.i.i.i552 = icmp eq ptr %i.cqt, %i.cqr
  br i1 %.not.i.i.i.i552, label %_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE5clearEv.exit.i.i, label %bb.lm

bb.lm:                                            ; preds = %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE5clearEv.exit.i
  store ptr %i.cqr, ptr %i.cqs, align 8, !tbaa !372
  br label %_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE5clearEv.exit.i.i

_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE5clearEv.exit.i.i: ; preds = %bb.lm, %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE5clearEv.exit.i
  %i.cqu = getelementptr inbounds nuw i8, ptr %i.cqq, i64 24
  %i.cqv = load ptr, ptr %i.cqu, align 8, !tbaa !371 ; 2 uses
  %i.cqw = getelementptr inbounds nuw i8, ptr %i.cqq, i64 32 ; 2 uses
  %i.cqx = load ptr, ptr %i.cqw, align 8, !tbaa !372
  %.not.i.i5.i.i = icmp eq ptr %i.cqx, %i.cqv
  br i1 %.not.i.i5.i.i, label %_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE5clearEv.exit6.i.i, label %bb.ln

bb.ln:                                            ; preds = %_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE5clearEv.exit.i.i
  store ptr %i.cqv, ptr %i.cqw, align 8, !tbaa !372
  br label %_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE5clearEv.exit6.i.i

_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE5clearEv.exit6.i.i: ; preds = %bb.ln, %_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE5clearEv.exit.i.i
  %i.cqy = getelementptr inbounds nuw i8, ptr %i.cqq, i64 48
  %i.cqz = load ptr, ptr %i.cqy, align 8, !tbaa !414 ; 2 uses
  %i.cra = getelementptr inbounds nuw i8, ptr %i.cqq, i64 56 ; 2 uses
  %i.crb = load ptr, ptr %i.cra, align 8, !tbaa !415
  %.not.i.i7.i.i = icmp eq ptr %i.crb, %i.cqz
  br i1 %.not.i.i7.i.i, label %_ZL18clearCommSetupDataP20dd_comm_setup_work_t.exit.i, label %_ZSt8_DestroyIPN3gmx11BasicVectorIfEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN3gmx11BasicVectorIfEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE5clearEv.exit6.i.i
  store ptr %i.cqz, ptr %i.cra, align 8, !tbaa !415
  br label %_ZL18clearCommSetupDataP20dd_comm_setup_work_t.exit.i

_ZL18clearCommSetupDataP20dd_comm_setup_work_t.exit.i: ; preds = %_ZSt8_DestroyIPN3gmx11BasicVectorIfEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i, %_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE5clearEv.exit6.i.i
  %i.crc = getelementptr inbounds nuw i8, ptr %i.cqq, i64 72
  store i32 0, ptr %i.crc, align 8, !tbaa !417
  %i.crd = getelementptr inbounds nuw i8, ptr %i.cqq, i64 76
  store i32 0, ptr %i.crd, align 4, !tbaa !418
  store i32 0, ptr %i.j, align 4, !tbaa !210
  br i1 %i.cpk, label %.lr.ph506.i, label %.preheader352.i

.preheader352.i:                                  ; preds = %._crit_edge504.i, %_ZL18clearCommSetupDataP20dd_comm_setup_work_t.exit.i
  %i.cre = phi ptr [ %i.cqo, %_ZL18clearCommSetupDataP20dd_comm_setup_work_t.exit.i ], [ %i.cur, %._crit_edge504.i ]
  %i.crf = phi ptr [ %i.cqj, %_ZL18clearCommSetupDataP20dd_comm_setup_work_t.exit.i ], [ %i.cuq, %._crit_edge504.i ] ; 8 uses
  store i32 %.0144.i, ptr %i.j, align 4, !tbaa !210
  br i1 %i.cpl, label %.lr.ph508.i, label %._crit_edge509.i

.lr.ph506.i:                                      ; preds = %_ZL18clearCommSetupDataP20dd_comm_setup_work_t.exit.i, %._crit_edge504.i
  %i.crg = phi ptr [ %i.cur, %._crit_edge504.i ], [ %i.cqo, %_ZL18clearCommSetupDataP20dd_comm_setup_work_t.exit.i ] ; 2 uses
  %storemerge167505.i = phi i32 [ %i.cut, %._crit_edge504.i ], [ 0, %_ZL18clearCommSetupDataP20dd_comm_setup_work_t.exit.i ] ; 3 uses
  %i.crh = load i32, ptr %i.e, align 4, !tbaa !210 ; 2 uses
  %i.cri = icmp sgt i32 %i.crh, 0
  %i.crj = load i8, ptr %i.aa, align 1, !range !335
  %i.crk = trunc nuw i8 %i.crj to i1
  %or.cond3.i = select i1 %i.cri, i1 %i.crk, i1 false
  br i1 %or.cond3.i, label %.preheader.i560, label %.loopexit.i559

.preheader.i560:                                  ; preds = %.lr.ph506.i
  %i.crl = load i32, ptr %i.f, align 4, !tbaa !210 ; 2 uses
  %i.crm = icmp sgt i32 %i.crl, 0
  br i1 %i.crm, label %.lr.ph500.i, label %.loopexit.i559

.lr.ph500.i:                                      ; preds = %.preheader.i560
  %i.crn = load ptr, ptr %i.a, align 8
  %i.cro = getelementptr inbounds nuw i8, ptr %i.crn, i64 180
  %i.crp = add nsw i32 %storemerge167505.i, %.0143523.i
  %i.crq = sext i32 %i.crp to i64
  %i.crr = getelementptr inbounds nuw [12 x i8], ptr %i.cna, i64 %i.crq ; 3 uses
  %wide.trip.count585.i = zext nneg i32 %i.crl to i64
  br label %bb.lo

bb.lo:                                            ; preds = %bb.ls, %.lr.ph500.i
  %indvars.iv582.i = phi i64 [ 0, %.lr.ph500.i ], [ %indvars.iv.next583.i, %bb.ls ] ; 6 uses
  %i.crs = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv582.i ; 5 uses
  store float 1.000000e+00, ptr %i.crs, align 4, !tbaa !211
  %i.crt = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv582.i
  %i.cru = load i32, ptr %i.crt, align 4, !tbaa !210
  %.not176.i = icmp eq i32 %i.cru, 0
  br i1 %.not176.i, label %bb.ls, label %bb.lp

bb.lp:                                            ; preds = %bb.lo
  %i.crv = getelementptr inbounds nuw [4 x i8], ptr %i.cro, i64 %indvars.iv582.i
  %i.crw = load i32, ptr %i.crv, align 4, !tbaa !210 ; 4 uses
  %i.crx = icmp slt i32 %i.crw, 2
  br i1 %i.crx, label %.lr.ph495.i, label %._crit_edge496.i

.lr.ph495.i:                                      ; preds = %bb.lp
  %i.cry = getelementptr inbounds nuw [36 x i8], ptr %i.cmz, i64 %indvars.iv582.i
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.cry, i64 %indvars.iv582.i ; 3 uses
  %i.crz = sext i32 %i.crw to i64                 ; 2 uses
  %i.csa = and i32 %i.crw, 1
  %lcmp.mod1783.not = icmp eq i32 %i.csa, 0
  br i1 %lcmp.mod1783.not, label %.prol.loopexit1781, label %.prol.preheader1780

.prol.preheader1780:                              ; preds = %.lr.ph495.i
  %indvars.iv.next579.i.prol = add nsw i64 %i.crz, 1 ; 4 uses
  %i.csb = getelementptr inbounds nuw [4 x i8], ptr %i.crr, i64 %indvars.iv.next579.i.prol
  %i.csc = load i32, ptr %i.csb, align 4, !tbaa !210
  %.not177.i.prol = icmp eq i32 %i.csc, 0
  %gep498.phi.trans.insert.i.prol = getelementptr [12 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next579.i.prol
  %.pre605.i.prol = load float, ptr %gep498.phi.trans.insert.i.prol, align 4, !tbaa !211 ; 3 uses
  %i.csd = fcmp ult float %.pre605.i.prol, 0.000000e+00
  %or.cond732.i.prol = select i1 %.not177.i.prol, i1 true, i1 %i.csd
  br i1 %or.cond732.i.prol, label %._crit_edge604.i.prol, label %.prol.loopexit1781

._crit_edge604.i.prol:                            ; preds = %.prol.preheader1780
  %i.cse = fmul float %.pre605.i.prol, %.pre605.i.prol
  %i.csf = fadd float %i.cse, 1.000000e+00        ; 3 uses
  store float %i.csf, ptr %i.crs, align 4, !tbaa !211
  br label %.prol.loopexit1781

.prol.loopexit1781:                               ; preds = %.prol.preheader1780, %._crit_edge604.i.prol, %.lr.ph495.i
  %.lcssa1654.unr = phi float [ poison, %.lr.ph495.i ], [ 1.000000e+00, %.prol.preheader1780 ], [ %i.csf, %._crit_edge604.i.prol ]
  %.unr1785 = phi float [ 1.000000e+00, %.lr.ph495.i ], [ 1.000000e+00, %.prol.preheader1780 ], [ %i.csf, %._crit_edge604.i.prol ]
  %indvars.iv578.i.unr = phi i64 [ %i.crz, %.lr.ph495.i ], [ %indvars.iv.next579.i.prol, %._crit_edge604.i.prol ], [ %indvars.iv.next579.i.prol, %.prol.preheader1780 ]
  %i.csg = icmp eq i32 %i.crw, 1
  br i1 %i.csg, label %._crit_edge496.i, label %.lr.ph495.i.new

._crit_edge496.i:                                 ; preds = %.prol.loopexit1781, %bb.lr, %bb.lp
  %i.csh = phi float [ 1.000000e+00, %bb.lp ], [ %.lcssa1654.unr, %.prol.loopexit1781 ], [ %i.csv, %bb.lr ]
  %i.csi = fdiv float 1.000000e+00, %i.csh
  store float %i.csi, ptr %i.crs, align 4, !tbaa !211
  br label %bb.ls

.lr.ph495.i.new:                                  ; preds = %.prol.loopexit1781, %bb.lr
  %i.csj = phi float [ %i.csv, %bb.lr ], [ %.unr1785, %.prol.loopexit1781 ] ; 2 uses
  %indvars.iv578.i = phi i64 [ %indvars.iv.next579.i.1, %bb.lr ], [ %indvars.iv578.i.unr, %.prol.loopexit1781 ] ; 3 uses
  %indvars.iv.next579.i = add nsw i64 %indvars.iv578.i, 1 ; 2 uses
  %i.csk = getelementptr inbounds nuw [4 x i8], ptr %i.crr, i64 %indvars.iv.next579.i
  %i.csl = load i32, ptr %i.csk, align 4, !tbaa !210
  %.not177.i = icmp eq i32 %i.csl, 0
  %gep498.phi.trans.insert.i = getelementptr [12 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next579.i
  %.pre605.i = load float, ptr %gep498.phi.trans.insert.i, align 4, !tbaa !211 ; 3 uses
  %i.csm = fcmp ult float %.pre605.i, 0.000000e+00
  %or.cond732.i = select i1 %.not177.i, i1 true, i1 %i.csm
  br i1 %or.cond732.i, label %._crit_edge604.i, label %bb.lq

._crit_edge604.i:                                 ; preds = %.lr.ph495.i.new
  %i.csn = fmul float %.pre605.i, %.pre605.i
  %i.cso = fadd float %i.csj, %i.csn              ; 2 uses
  store float %i.cso, ptr %i.crs, align 4, !tbaa !211
  br label %bb.lq

bb.lq:                                            ; preds = %._crit_edge604.i, %.lr.ph495.i.new
  %i.csp = phi float [ %i.csj, %.lr.ph495.i.new ], [ %i.cso, %._crit_edge604.i ] ; 2 uses
  %indvars.iv.next579.i.1 = add nsw i64 %indvars.iv578.i, 2 ; 3 uses
  %i.csq = getelementptr inbounds nuw [4 x i8], ptr %i.crr, i64 %indvars.iv.next579.i.1
  %i.csr = load i32, ptr %i.csq, align 4, !tbaa !210
  %.not177.i.1 = icmp eq i32 %i.csr, 0
  %gep498.phi.trans.insert.i.1 = getelementptr [12 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next579.i.1
  %.pre605.i.1 = load float, ptr %gep498.phi.trans.insert.i.1, align 4, !tbaa !211 ; 3 uses
  %i.css = fcmp ult float %.pre605.i.1, 0.000000e+00
  %or.cond732.i.1 = select i1 %.not177.i.1, i1 true, i1 %i.css
  br i1 %or.cond732.i.1, label %._crit_edge604.i.1, label %bb.lr

._crit_edge604.i.1:                               ; preds = %bb.lq
  %i.cst = fmul float %.pre605.i.1, %.pre605.i.1
  %i.csu = fadd float %i.csp, %i.cst              ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN3gmx19dd_partition_systemEP8_IO_FILERKNS_8MDLoggerElP12gmx_domdec_tbP7t_stateRK10gmx_mtop_tRK10t_inputrecRKNS_18MDModulesNotifiersEPNS_10ImdSessionEP6pull_tS8_PNS_12ForceBuffersEPNS_7MDAtomsEP14gmx_localtop_tP10t_forcerecPNS_19VirtualSitesHandlerEPNS_11ConstraintsEP6t_nrnbP13gmx_wallcycleb:bb.a
  %i.ctg = add nsw i32 %storemerge167505.i, %.0143523.i
  %i.cth = sext i32 %i.ctg to i64
  %i.cti = getelementptr [4 x i8], ptr %i.cmq, i64 %i.cth ; 2 uses
  %i.ctj = load i32, ptr %i.cti, align 4, !tbaa !210
  %i.ctk = getelementptr i8, ptr %i.cti, i64 4
  %i.ctl = load i32, ptr %i.ctk, align 4, !tbaa !210 ; 3 uses
  %.not.i.i196.i = icmp sgt i32 %i.ctj, %i.ctl
  br i1 %.not.i.i196.i, label %bb.lw, label %_ZNK3gmx11DomdecZones9atomRangeEi.exit201.i

bb.lw:                                            ; preds = %bb.lv
  call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.128, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN3gmx5RangeIiEC1EiiENKUlvE_clEv, ptr noundef nonnull @.str.129, i32 noundef 111) #29
  unreachable

_ZNK3gmx11DomdecZones9atomRangeEi.exit201.i:      ; preds = %bb.lv
  store i32 %i.ctl, ptr %i.ad, align 4, !tbaa !210
  %i.ctm = load ptr, ptr %i.cnl, align 8, !tbaa !679
  %i.ctn = getelementptr [112 x i8], ptr %i.ctm, i64 %indvars.iv596.i
  %i.cto = getelementptr i8, ptr %i.ctn, i64 -88
  %i.ctp = getelementptr inbounds [4 x i8], ptr %i.cto, i64 %i.csy
  %i.ctq = load i32, ptr %i.ctp, align 4, !tbaa !210
  %i.ctr = sub nsw i32 %i.ctl, %i.ctq
  store i32 %i.ctr, ptr %i.ac, align 4, !tbaa !210
  br label %bb.lx

bb.lx:                                            ; preds = %_ZNK3gmx11DomdecZones9atomRangeEi.exit201.i, %_ZNK3gmx11DomdecZones9atomRangeEi.exit195.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae) #19
  %i.cts = getelementptr inbounds nuw i8, ptr %i.crg, i64 1136
  %i.ctt = getelementptr inbounds nuw i8, ptr %i.crg, i64 1144
  %i.ctu = load ptr, ptr %i.ctt, align 8, !tbaa !419
  %i.ctv = load ptr, ptr %i.cts, align 8, !tbaa !413
  %i.ctw = ptrtoint ptr %i.ctu to i64
  %i.ctx = ptrtoint ptr %i.ctv to i64
  %i.cty = sub i64 %i.ctw, %i.ctx
  %i.ctz = sdiv exact i64 %i.cty, 80
  %i.cua = trunc i64 %i.ctz to i32                ; 2 uses
  store i32 %i.cua, ptr %i.ae, align 4, !tbaa !210
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.ace, i32 %i.cua)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 31, ptr nonnull @_ZL22setup_dd_communicationP12gmx_domdec_tPA3_fP11gmx_ddbox_tP10t_forcerecP7t_state.omp_outlined, ptr nonnull %i.ae, ptr nonnull %i.m, ptr nonnull %i.ac, ptr nonnull %i.ad, ptr nonnull %i.a, ptr nonnull %i.k, ptr nonnull %i.j, ptr nonnull %i.f, ptr nonnull %i.e, ptr nonnull %i.g, ptr nonnull %i.h, ptr nonnull %i.i, ptr nonnull %i.y, ptr nonnull %i.z, ptr nonnull %i.b, ptr nonnull %i.aa, ptr nonnull %i.r, ptr nonnull %i.v, ptr nonnull %i.w, ptr nonnull %i.s, ptr nonnull %i.t, ptr nonnull %i.u, ptr nonnull %23, ptr nonnull %i.x, ptr nonnull %i.q, ptr nonnull %i.n, ptr nonnull %i.o, ptr nonnull %i.p, ptr nonnull %i.d, ptr nonnull %i.c, ptr nonnull %i.ab)
  %i.cub = load ptr, ptr %i.m, align 8, !tbaa !15 ; 2 uses
  %i.cuc = getelementptr inbounds nuw i8, ptr %i.cub, i64 1136
  %i.cud = load ptr, ptr %i.cuc, align 8, !tbaa !413 ; 6 uses
  %i.cue = getelementptr inbounds nuw i8, ptr %i.cud, i64 24 ; 2 uses
  %i.cuf = getelementptr inbounds nuw i8, ptr %i.cud, i64 48 ; 2 uses
  %i.cug = getelementptr inbounds nuw i8, ptr %i.cud, i64 76
  %i.cuh = load i32, ptr %i.cug, align 4, !tbaa !418
  %i.cui = load ptr, ptr %i.ab, align 8, !tbaa !409 ; 3 uses
  %i.cuj = load i32, ptr %i.j, align 4, !tbaa !210
  %i.cuk = sext i32 %i.cuj to i64
  %i.cul = getelementptr inbounds [4 x i8], ptr %i.cui, i64 %i.cuk
  store i32 %i.cuh, ptr %i.cul, align 4, !tbaa !210
  %i.cum = load i32, ptr %i.ae, align 4, !tbaa !210
  %i.cun = icmp sgt i32 %i.cum, 1
  br i1 %i.cun, label %.lr.ph503.i, label %._crit_edge504.i

.lr.ph503.i:                                      ; preds = %bb.lx
  %i.cuo = getelementptr inbounds nuw i8, ptr %i.cud, i64 32
  %i.cup = getelementptr inbounds nuw i8, ptr %i.cud, i64 56
  br label %bb.ly

._crit_edge504.i:                                 ; preds = %bb.ly, %bb.lx
  %i.cuq = phi ptr [ %i.cui, %bb.lx ], [ %i.cwo, %bb.ly ]
  %i.cur = phi ptr [ %i.cub, %bb.lx ], [ %i.cwg, %bb.ly ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #19
  %i.cus = load i32, ptr %i.j, align 4, !tbaa !210
  %i.cut = add nsw i32 %i.cus, 1                  ; 3 uses
  store i32 %i.cut, ptr %i.j, align 4, !tbaa !210
  %i.cuu = icmp slt i32 %i.cut, %.0144.i
  br i1 %i.cuu, label %.lr.ph506.i, label %.preheader352.i, !llvm.loop !506

bb.ly:                                            ; preds = %bb.ly, %.lr.ph503.i
  %i.cuv = phi ptr [ %i.cui, %.lr.ph503.i ], [ %i.cwo, %bb.ly ] ; 3 uses
  %i.cuw = phi ptr [ %i.cud, %.lr.ph503.i ], [ %i.cwi, %bb.ly ]
  %indvars.iv587.i = phi i64 [ 1, %.lr.ph503.i ], [ %indvars.iv.next588.i, %bb.ly ] ; 2 uses
  %i.cux = getelementptr inbounds nuw [80 x i8], ptr %i.cuw, i64 %indvars.iv587.i ; 8 uses
  %i.cuy = getelementptr inbounds nuw i8, ptr %i.cuv, i64 48
  %i.cuz = getelementptr inbounds nuw i8, ptr %i.cuv, i64 64
  %i.cva = load ptr, ptr %i.cuz, align 8, !tbaa !699
  %i.cvb = load ptr, ptr %i.cux, align 8, !tbaa !699
  %i.cvc = getelementptr inbounds nuw i8, ptr %i.cux, i64 8
  %i.cvd = load ptr, ptr %i.cvc, align 8, !tbaa !699
  %i.cve = getelementptr inbounds nuw i8, ptr %i.cuv, i64 56
  %i.cvf = load ptr, ptr %i.cve, align 8, !tbaa !699 ; 2 uses
  %i.cvg = ptrtoint ptr %i.cva to i64
  %i.cvh = ptrtoint ptr %i.cvf to i64
  %i.cvi = sub i64 %i.cvg, %i.cvh
  %i.cvj = getelementptr inbounds i8, ptr %i.cvf, i64 %i.cvi
  call void @_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKiS_IiNS0_30DefaultInitializationAllocatorIiSaIiEEEEEEEEvNS7_IPiS4_EET_SH_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %i.cuy, ptr %i.cvj, ptr %i.cvb, ptr %i.cvd)
  %i.cvk = load ptr, ptr %i.cuo, align 8, !tbaa !699
  %i.cvl = getelementptr inbounds nuw i8, ptr %i.cux, i64 24
  %i.cvm = load ptr, ptr %i.cvl, align 8, !tbaa !699
  %i.cvn = getelementptr inbounds nuw i8, ptr %i.cux, i64 32
  %i.cvo = load ptr, ptr %i.cvn, align 8, !tbaa !699
  %i.cvp = load ptr, ptr %i.cue, align 8, !tbaa !699 ; 2 uses
  %i.cvq = ptrtoint ptr %i.cvk to i64
  %i.cvr = ptrtoint ptr %i.cvp to i64
  %i.cvs = sub i64 %i.cvq, %i.cvr
  %i.cvt = getelementptr inbounds i8, ptr %i.cvp, i64 %i.cvs
  call void @_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKiS4_EEEEvNS7_IPiS4_EET_SD_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.cue, ptr %i.cvt, ptr %i.cvm, ptr %i.cvo)
  %i.cvu = load ptr, ptr %i.cup, align 8, !tbaa !385
  %i.cvv = getelementptr inbounds nuw i8, ptr %i.cux, i64 48
  %i.cvw = load ptr, ptr %i.cvv, align 8, !tbaa !385
  %i.cvx = getelementptr inbounds nuw i8, ptr %i.cux, i64 56
  %i.cvy = load ptr, ptr %i.cvx, align 8, !tbaa !385
  %i.cvz = load ptr, ptr %i.cuf, align 8, !tbaa !385 ; 2 uses
  %i.cwa = ptrtoint ptr %i.cvu to i64
  %i.cwb = ptrtoint ptr %i.cvz to i64
  %i.cwc = sub i64 %i.cwa, %i.cwb
  %i.cwd = getelementptr inbounds i8, ptr %i.cvz, i64 %i.cwc
  call void @_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEvNS7_IPS2_S4_EET_SD_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.cuf, ptr %i.cwd, ptr %i.cvw, ptr %i.cvy)
  %i.cwe = getelementptr inbounds nuw i8, ptr %i.cux, i64 72
  %i.cwf = load i32, ptr %i.cwe, align 8, !tbaa !417
  %i.cwg = load ptr, ptr %i.m, align 8, !tbaa !15 ; 2 uses
  %i.cwh = getelementptr inbounds nuw i8, ptr %i.cwg, i64 1136
  %i.cwi = load ptr, ptr %i.cwh, align 8, !tbaa !413 ; 2 uses
  %i.cwj = getelementptr inbounds nuw i8, ptr %i.cwi, i64 72 ; 2 uses
  %i.cwk = load i32, ptr %i.cwj, align 8, !tbaa !417
  %i.cwl = add nsw i32 %i.cwk, %i.cwf
  store i32 %i.cwl, ptr %i.cwj, align 8, !tbaa !417
  %i.cwm = getelementptr inbounds nuw i8, ptr %i.cux, i64 76
  %i.cwn = load i32, ptr %i.cwm, align 4, !tbaa !418
  %i.cwo = load ptr, ptr %i.ab, align 8, !tbaa !409 ; 3 uses
  %i.cwp = load i32, ptr %i.j, align 4, !tbaa !210
  %i.cwq = sext i32 %i.cwp to i64
  %i.cwr = getelementptr inbounds [4 x i8], ptr %i.cwo, i64 %i.cwq ; 2 uses
  %i.cws = load i32, ptr %i.cwr, align 4, !tbaa !210
  %i.cwt = add nsw i32 %i.cws, %i.cwn
  store i32 %i.cwt, ptr %i.cwr, align 4, !tbaa !210
  %indvars.iv.next588.i = add nuw nsw i64 %indvars.iv587.i, 1 ; 2 uses
  %i.cwu = load i32, ptr %i.ae, align 4, !tbaa !210
  %i.cwv = sext i32 %i.cwu to i64
  %i.cww = icmp slt i64 %indvars.iv.next588.i, %i.cwv
  br i1 %i.cww, label %bb.ly, label %._crit_edge504.i, !llvm.loop !507

.lr.ph508.i:                                      ; preds = %.preheader352.i, %.lr.ph508.i
  %storemerge168507.i = phi i32 [ %i.cxa, %.lr.ph508.i ], [ %.0144.i, %.preheader352.i ]
  %i.cwx = sext i32 %storemerge168507.i to i64
  %i.cwy = getelementptr inbounds [4 x i8], ptr %i.crf, i64 %i.cwx
  store i32 0, ptr %i.cwy, align 4, !tbaa !210
  %i.cwz = load i32, ptr %i.j, align 4, !tbaa !210
  %i.cxa = add nsw i32 %i.cwz, 1                  ; 3 uses
  store i32 %i.cxa, ptr %i.j, align 4, !tbaa !210
  %i.cxb = icmp slt i32 %i.cxa, %.0143523.i
  br i1 %i.cxb, label %.lr.ph508.i, label %._crit_edge509.i, !llvm.loop !508

._crit_edge509.i:                                 ; preds = %.lr.ph508.i, %.preheader352.i
  %i.cxc = getelementptr inbounds nuw i8, ptr %i.crf, i64 56
  %i.cxd = getelementptr inbounds nuw i8, ptr %i.crf, i64 64
  %i.cxe = load ptr, ptr %i.cxd, align 8, !tbaa !412
  %i.cxf = load ptr, ptr %i.cxc, align 8, !tbaa !411
  %i.cxg = ptrtoint ptr %i.cxe to i64
  %i.cxh = ptrtoint ptr %i.cxf to i64
  %i.cxi = sub i64 %i.cxg, %i.cxh
  %i.cxj = lshr exact i64 %i.cxi, 2
  %i.cxk = trunc i64 %i.cxj to i32
  %i.cxl = getelementptr inbounds [4 x i8], ptr %i.crf, i64 %i.cpm
  store i32 %i.cxk, ptr %i.cxl, align 4, !tbaa !210
  %i.cxm = getelementptr inbounds nuw i8, ptr %i.cre, i64 1136
  %i.cxn = load ptr, ptr %i.cxm, align 8, !tbaa !413
  %i.cxo = getelementptr inbounds nuw i8, ptr %i.cxn, i64 72
  %i.cxp = load i32, ptr %i.cxo, align 8, !tbaa !417
  %i.cxq = getelementptr inbounds [4 x i8], ptr %i.crf, i64 %i.cpo
  store i32 %i.cxp, ptr %i.cxq, align 4, !tbaa !210
  %i.cxr = load ptr, ptr %i.a, align 8, !tbaa !400
  %i.cxs = load i32, ptr %i.e, align 4, !tbaa !210
  %i.cxt = getelementptr inbounds nuw [4 x i8], ptr %i.crf, i64 %i.cpq
  %i.cxu = getelementptr inbounds nuw i8, ptr %i.crf, i64 24 ; 2 uses
  %i.cxv = getelementptr inbounds nuw [4 x i8], ptr %i.cxu, i64 %i.cpq
  store ptr %i.cxu, ptr %25, align 8
  store ptr %i.cxv, ptr %i.cnb, align 8
  call void @_Z10ddSendrecvIiEvPK12gmx_domdec_tiiN3gmx8ArrayRefIT_EES6_(ptr noundef %i.cxr, i32 noundef %i.cxs, i32 noundef 1, ptr nonnull %i.crf, ptr nonnull %i.cxt, ptr noundef nonnull byval(%"class.gmx::ArrayRef.495") align 8 %25)
  br i1 %i.cqf, label %.loopexit351.i, label %.preheader350.i

.preheader350.i:                                  ; preds = %._crit_edge509.i
  store i32 0, ptr %i.j, align 4, !tbaa !210
  br i1 %i.cps, label %iter.check1590, label %.loopexit351.i

iter.check1590:                                   ; preds = %.preheader350.i
  %i.cxw = load ptr, ptr %i.ab, align 8, !tbaa !409 ; 2 uses
  %i.cxx = getelementptr inbounds nuw i8, ptr %i.cxw, i64 24 ; 9 uses
  br i1 %min.iters.check1508, label %vec.epilog.scalar.ph1591.preheader, label %vector.memcheck1495

vector.memcheck1495:                              ; preds = %iter.check1590
  %scevgep1498 = getelementptr i8, ptr %i.cxw, i64 24
  %scevgep1499 = getelementptr i8, ptr %scevgep1498, i64 %i.cpy ; 2 uses
  %bound01500 = icmp ult ptr %i.cpa, %scevgep1499
  %bound11501 = icmp ult ptr %i.cxx, %scevgep1496
  %found.conflict1502 = and i1 %bound01500, %bound11501
  %conflict.rdx = or i1 %found.conflict, %found.conflict1502
  %bound01503 = icmp ult ptr %i.j, %scevgep1499
  %bound11504 = icmp ult ptr %i.cxx, %scevgep1497
  %found.conflict1505 = and i1 %bound01503, %bound11504
  %conflict.rdx1506 = or i1 %conflict.rdx, %found.conflict1505
  br i1 %conflict.rdx1506, label %vec.epilog.scalar.ph1591.preheader, label %vector.main.loop.iter.check1509

vector.main.loop.iter.check1509:                  ; preds = %vector.memcheck1495
  br i1 %min.iters.check1510, label %vec.epilog.ph1594, label %vector.body1513

vector.body1513:                                  ; preds = %vector.main.loop.iter.check1509, %bb.ma
  %index1514 = phi i64 [ %index.next1585, %bb.ma ], [ 0, %vector.main.loop.iter.check1509 ] ; 2 uses
  %i.cxy = phi i64 [ %i.cym, %bb.ma ], [ 7, %vector.main.loop.iter.check1509 ] ; 2 uses
  %i.cxz = getelementptr inbounds nuw [4 x i8], ptr %i.cxx, i64 %index1514 ; 4 uses
  %i.cya = getelementptr inbounds nuw i8, ptr %i.cxz, i64 32
  %i.cyb = getelementptr inbounds nuw i8, ptr %i.cxz, i64 64
  %i.cyc = getelementptr inbounds nuw i8, ptr %i.cxz, i64 96
  %wide.load1519 = load <8 x i32>, ptr %i.cxz, align 4, !tbaa !210, !alias.scope !700
  %wide.load1520 = load <8 x i32>, ptr %i.cya, align 4, !tbaa !210, !alias.scope !700
  %wide.load1521 = load <8 x i32>, ptr %i.cyb, align 4, !tbaa !210, !alias.scope !700
  %wide.load1522 = load <8 x i32>, ptr %i.cyc, align 4, !tbaa !210, !alias.scope !700
  %i.cyd = icmp sgt <8 x i32> %wide.load1519, zeroinitializer
  %i.cye = icmp sgt <8 x i32> %wide.load1520, zeroinitializer
  %i.cyf = shufflevector <8 x i32> %wide.load1522, <8 x i32> %wide.load1521, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cyg = icmp sgt <32 x i32> %i.cyf, <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %i.cyh = shufflevector <8 x i1> %i.cye, <8 x i1> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cyi = shufflevector <32 x i1> %i.cyg, <32 x i1> %i.cyh, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cyj = shufflevector <8 x i1> %i.cyd, <8 x i1> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cyk = shufflevector <32 x i1> %i.cyi, <32 x i1> %i.cyj, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39>
  %i.cyl = bitcast <32 x i1> %i.cyk to i32
  %.not1647 = icmp eq i32 %i.cyl, 0
  br i1 %.not1647, label %bb.ma, label %bb.lz

bb.lz:                                            ; preds = %vector.body1513
  store i8 0, ptr %i.cpa, align 8, !tbaa !698, !alias.scope !701, !noalias !702
  br label %bb.ma

bb.ma:                                            ; preds = %vector.body1513, %bb.lz
  %index.next1585 = add nuw i64 %index1514, 32    ; 2 uses
  %i.cym = add nuw i64 %i.cxy, 32
  %i.cyn = icmp eq i64 %index.next1585, %n.vec1512
  br i1 %i.cyn, label %middle.block1587, label %vector.body1513, !llvm.loop !513

middle.block1587:                                 ; preds = %bb.ma
  %i.cyo = trunc i64 %i.cxy to i32
  %i.cyp = add i32 %i.cyo, 25
  store i32 %i.cyp, ptr %i.j, align 4, !tbaa !210, !alias.scope !703, !noalias !700
  br i1 %cmp.n1588, label %.loopexit351.i, label %vec.epilog.iter.check1592

vec.epilog.iter.check1592:                        ; preds = %middle.block1587
  br i1 %min.epilog.iters.check1593, label %vec.epilog.scalar.ph1591.preheader, label %vec.epilog.ph1594, !prof !393

vec.epilog.ph1594:                                ; preds = %vector.main.loop.iter.check1509, %vec.epilog.iter.check1592
  %vec.epilog.resume.val1589 = phi i64 [ %n.vec1512, %vec.epilog.iter.check1592 ], [ 0, %vector.main.loop.iter.check1509 ] ; 2 uses
  %74 = or disjoint i64 %vec.epilog.resume.val1589, 7
  br label %vec.epilog.vector.body1599

vec.epilog.vector.body1599:                       ; preds = %bb.mc, %vec.epilog.ph1594
  %index1600 = phi i64 [ %vec.epilog.resume.val1589, %vec.epilog.ph1594 ], [ %index.next1619, %bb.mc ] ; 2 uses
  %i.cyq = phi i64 [ %74, %vec.epilog.ph1594 ], [ %i.cys, %bb.mc ] ; 2 uses
  %i.cyr = getelementptr inbounds nuw [4 x i8], ptr %i.cxx, i64 %index1600
  %wide.load1602 = load <8 x i32>, ptr %i.cyr, align 4, !tbaa !210, !alias.scope !700
  %75 = icmp sgt <8 x i32> %wide.load1602, zeroinitializer
  %76 = bitcast <8 x i1> %75 to i8
  %.not1648 = icmp eq i8 %76, 0
  br i1 %.not1648, label %bb.mc, label %bb.mb

bb.mb:                                            ; preds = %vec.epilog.vector.body1599
  store i8 0, ptr %i.cpa, align 8, !tbaa !698, !alias.scope !701, !noalias !702
  br label %bb.mc

bb.mc:                                            ; preds = %vec.epilog.vector.body1599, %bb.mb
  %index.next1619 = add nuw i64 %index1600, 8     ; 2 uses
  %i.cys = add nuw nsw i64 %i.cyq, 8
  %i.cyt = icmp eq i64 %index.next1619, %n.vec1595
  br i1 %i.cyt, label %vec.epilog.middle.block1621, label %vec.epilog.vector.body1599, !llvm.loop !514

vec.epilog.middle.block1621:                      ; preds = %bb.mc
  %i.cyu = trunc i64 %i.cyq to i32
  %i.cyv = add i32 %i.cyu, 1
  store i32 %i.cyv, ptr %i.j, align 4, !tbaa !210, !alias.scope !703, !noalias !700
  br i1 %cmp.n1622, label %.loopexit351.i, label %vec.epilog.scalar.ph1591.preheader

vec.epilog.scalar.ph1591.preheader:               ; preds = %iter.check1590, %vector.memcheck1495, %vec.epilog.iter.check1592, %vec.epilog.middle.block1621
  %indvars.iv590.i.ph = phi i64 [ 0, %iter.check1590 ], [ 0, %vector.memcheck1495 ], [ %n.vec1512, %vec.epilog.iter.check1592 ], [ %n.vec1595, %vec.epilog.middle.block1621 ] ; 3 uses
  br i1 %lcmp.mod1787.not, label %vec.epilog.scalar.ph1591.prol.loopexit, label %vec.epilog.scalar.ph1591.prol

vec.epilog.scalar.ph1591.prol:                    ; preds = %vec.epilog.scalar.ph1591.preheader, %bb.me
  %indvars.iv590.i.prol = phi i64 [ %indvars.iv.next591.i.prol, %bb.me ], [ %indvars.iv590.i.ph, %vec.epilog.scalar.ph1591.preheader ] ; 2 uses
  %prol.iter1788 = phi i64 [ %prol.iter1788.next, %bb.me ], [ 0, %vec.epilog.scalar.ph1591.preheader ]
  %i.cyw = getelementptr inbounds nuw [4 x i8], ptr %i.cxx, i64 %indvars.iv590.i.prol
  %i.cyx = load i32, ptr %i.cyw, align 4, !tbaa !210
  %i.cyy = icmp sgt i32 %i.cyx, 0
  br i1 %i.cyy, label %bb.md, label %bb.me

bb.md:                                            ; preds = %vec.epilog.scalar.ph1591.prol
  store i8 0, ptr %i.cpa, align 8, !tbaa !698
  br label %bb.me

bb.me:                                            ; preds = %bb.md, %vec.epilog.scalar.ph1591.prol
  %indvars.iv.next591.i.prol = add nuw nsw i64 %indvars.iv590.i.prol, 1 ; 3 uses
  %i.cyz = trunc nuw nsw i64 %indvars.iv.next591.i.prol to i32
  store i32 %i.cyz, ptr %i.j, align 4, !tbaa !210
  %prol.iter1788.next = add i64 %prol.iter1788, 1 ; 2 uses
  %prol.iter1788.cmp.not = icmp eq i64 %prol.iter1788.next, %xtraiter1786
  br i1 %prol.iter1788.cmp.not, label %vec.epilog.scalar.ph1591.prol.loopexit, label %vec.epilog.scalar.ph1591.prol, !llvm.loop !515

vec.epilog.scalar.ph1591.prol.loopexit:           ; preds = %bb.me, %vec.epilog.scalar.ph1591.preheader
  %indvars.iv590.i.unr = phi i64 [ %indvars.iv590.i.ph, %vec.epilog.scalar.ph1591.preheader ], [ %indvars.iv.next591.i.prol, %bb.me ]
  %i.cza = sub nsw i64 %indvars.iv590.i.ph, %wide.trip.count593.i
  %i.czb = icmp ugt i64 %i.cza, -4
  br i1 %i.czb, label %.loopexit351.i, label %vec.epilog.scalar.ph1591

vec.epilog.scalar.ph1591:                         ; preds = %vec.epilog.scalar.ph1591.prol.loopexit, %bb.mj
  %indvars.iv590.i = phi i64 [ %indvars.iv.next591.i.3, %bb.mj ], [ %indvars.iv590.i.unr, %vec.epilog.scalar.ph1591.prol.loopexit ] ; 5 uses
  %i.czc = getelementptr inbounds nuw [4 x i8], ptr %i.cxx, i64 %indvars.iv590.i
  %i.czd = load i32, ptr %i.czc, align 4, !tbaa !210
  %i.cze = icmp sgt i32 %i.czd, 0
  br i1 %i.cze, label %bb.mf, label %vec.epilog.scalar.ph1591.1

bb.mf:                                            ; preds = %vec.epilog.scalar.ph1591
  store i8 0, ptr %i.cpa, align 8, !tbaa !698
  br label %vec.epilog.scalar.ph1591.1

vec.epilog.scalar.ph1591.1:                       ; preds = %bb.mf, %vec.epilog.scalar.ph1591
  %indvars.iv.next591.i = add nuw nsw i64 %indvars.iv590.i, 1 ; 2 uses
  %i.czf = trunc nuw nsw i64 %indvars.iv.next591.i to i32
  store i32 %i.czf, ptr %i.j, align 4, !tbaa !210
  %i.czg = getelementptr inbounds nuw [4 x i8], ptr %i.cxx, i64 %indvars.iv.next591.i
  %i.czh = load i32, ptr %i.czg, align 4, !tbaa !210
  %i.czi = icmp sgt i32 %i.czh, 0
  br i1 %i.czi, label %bb.mg, label %vec.epilog.scalar.ph1591.2

bb.mg:                                            ; preds = %vec.epilog.scalar.ph1591.1
  store i8 0, ptr %i.cpa, align 8, !tbaa !698
  br label %vec.epilog.scalar.ph1591.2

vec.epilog.scalar.ph1591.2:                       ; preds = %bb.mg, %vec.epilog.scalar.ph1591.1
  %indvars.iv.next591.i.1 = add nuw nsw i64 %indvars.iv590.i, 2 ; 2 uses
  %i.czj = trunc nuw nsw i64 %indvars.iv.next591.i.1 to i32
  store i32 %i.czj, ptr %i.j, align 4, !tbaa !210
  %i.czk = getelementptr inbounds nuw [4 x i8], ptr %i.cxx, i64 %indvars.iv.next591.i.1
  %i.czl = load i32, ptr %i.czk, align 4, !tbaa !210
  %i.czm = icmp sgt i32 %i.czl, 0
  br i1 %i.czm, label %bb.mh, label %vec.epilog.scalar.ph1591.3

bb.mh:                                            ; preds = %vec.epilog.scalar.ph1591.2
  store i8 0, ptr %i.cpa, align 8, !tbaa !698
  br label %vec.epilog.scalar.ph1591.3

vec.epilog.scalar.ph1591.3:                       ; preds = %bb.mh, %vec.epilog.scalar.ph1591.2
  %indvars.iv.next591.i.2 = add nuw nsw i64 %indvars.iv590.i, 3 ; 2 uses
  %i.czn = trunc nuw nsw i64 %indvars.iv.next591.i.2 to i32
  store i32 %i.czn, ptr %i.j, align 4, !tbaa !210
  %i.czo = getelementptr inbounds nuw [4 x i8], ptr %i.cxx, i64 %indvars.iv.next591.i.2
  %i.czp = load i32, ptr %i.czo, align 4, !tbaa !210
  %i.czq = icmp sgt i32 %i.czp, 0
  br i1 %i.czq, label %bb.mi, label %bb.mj

bb.mi:                                            ; preds = %vec.epilog.scalar.ph1591.3
  store i8 0, ptr %i.cpa, align 8, !tbaa !698
  br label %bb.mj

bb.mj:                                            ; preds = %bb.mi, %vec.epilog.scalar.ph1591.3
  %indvars.iv.next591.i.3 = add nuw nsw i64 %indvars.iv590.i, 4 ; 3 uses
  %i.czr = trunc nuw nsw i64 %indvars.iv.next591.i.3 to i32
  store i32 %i.czr, ptr %i.j, align 4, !tbaa !210
  %exitcond594.not.i.3 = icmp eq i64 %indvars.iv.next591.i.3, %wide.trip.count593.i
  br i1 %exitcond594.not.i.3, label %.loopexit351.i, label %vec.epilog.scalar.ph1591, !llvm.loop !516

.loopexit351.i:                                   ; preds = %vec.epilog.scalar.ph1591.prol.loopexit, %bb.mj, %middle.block1587, %vec.epilog.middle.block1621, %.preheader350.i, %._crit_edge509.i
  %i.czs = load i8, ptr %i.cpa, align 8, !tbaa !698, !range !335, !noundef !336
  %i.czt = trunc nuw i8 %i.czs to i1
  br i1 %i.czt, label %bb.ml, label %bb.mk

bb.mk:                                            ; preds = %.loopexit351.i
  %i.czu = load ptr, ptr %i.ab, align 8, !tbaa !409
  %i.czv = getelementptr inbounds nuw i8, ptr %i.czu, i64 24
  %i.czw = getelementptr inbounds [4 x i8], ptr %i.czv, i64 %i.cpm
  %i.czx = load i32, ptr %i.czw, align 4, !tbaa !210
  %i.czy = sext i32 %i.czx to i64
  br label %bb.ml

bb.ml:                                            ; preds = %bb.mk, %.loopexit351.i
  %.0139.i = phi i64 [ 0, %.loopexit351.i ], [ %i.czy, %bb.mk ] ; 7 uses
  %i.czz = load ptr, ptr %i.m, align 8, !tbaa !15 ; 6 uses
  %i.daa = getelementptr inbounds nuw i8, ptr %i.czz, i64 1072 ; 2 uses
  %i.dab = getelementptr inbounds nuw i8, ptr %i.czz, i64 1096 ; 6 uses
  %i.dac = load i8, ptr %i.dab, align 8, !tbaa !704, !range !335, !noundef !336
  %i.dad = trunc nuw i8 %i.dac to i1
  br i1 %i.dad, label %bb.mm, label %bb.mn

bb.mm:                                            ; preds = %bb.ml
  call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.138, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN8DDBufferIiE7acquireEmENKUlvE_clEv, ptr noundef nonnull @.str.139, i32 noundef 359) #29
  unreachable

bb.mn:                                            ; preds = %bb.ml
  store i8 1, ptr %i.dab, align 8, !tbaa !704
  %i.dae = getelementptr inbounds nuw i8, ptr %i.czz, i64 1080 ; 3 uses
  %i.daf = load ptr, ptr %i.dae, align 8, !tbaa !372 ; 4 uses
  %i.dag = load ptr, ptr %i.daa, align 8, !tbaa !371 ; 11 uses
  %i.dah = ptrtoint ptr %i.daf to i64             ; 3 uses
  %i.dai = ptrtoint ptr %i.dag to i64             ; 4 uses
  %i.daj = sub i64 %i.dah, %i.dai                 ; 2 uses
  %i.dak = ashr exact i64 %i.daj, 2               ; 6 uses
  %i.dal = icmp ugt i64 %.0139.i, %i.dak
  br i1 %i.dal, label %bb.mo, label %_ZN14DDBufferAccessIiEC2ER8DDBufferIiEm.exit.i

bb.mo:                                            ; preds = %bb.mn
  %i.dam = sub nuw nsw i64 %.0139.i, %i.dak       ; 5 uses
  %i.dan = getelementptr inbounds nuw i8, ptr %i.czz, i64 1088 ; 3 uses
  %i.dao = load ptr, ptr %i.dan, align 8, !tbaa !420
  %i.dap = ptrtoint ptr %i.dao to i64
  %i.daq = sub i64 %i.dap, %i.dah
  %i.dar = ashr exact i64 %i.daq, 2               ; 2 uses
  %i.das = icmp ult i64 %i.dak, 2305843009213693952
  call void @llvm.assume(i1 %i.das)
  %i.dat = xor i64 %i.dak, 2305843009213693951    ; 2 uses
  %i.dau = icmp ule i64 %i.dar, %i.dat
  call void @llvm.assume(i1 %i.dau)
  %.not37.i.i268.i = icmp ult i64 %i.dar, %i.dam
  br i1 %.not37.i.i268.i, label %bb.mq, label %bb.mp

bb.mp:                                            ; preds = %bb.mo
  %i.dav = shl nuw nsw i64 %i.dam, 2
  %scevgep.i.i.i269.i = getelementptr i8, ptr %i.daf, i64 %i.dav
  store ptr %scevgep.i.i.i269.i, ptr %i.dae, align 8, !tbaa !372
  br label %_ZN14DDBufferAccessIiEC2ER8DDBufferIiEm.exit.i

bb.mq:                                            ; preds = %bb.mo
  %i.daw = icmp ult i64 %i.dat, %i.dam
  br i1 %i.daw, label %bb.mr, label %_ZNKSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE12_M_check_lenEmPKc.exit.i.i270.i

bb.mr:                                            ; preds = %bb.mq
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.130) #29
  unreachable

_ZNKSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE12_M_check_lenEmPKc.exit.i.i270.i: ; preds = %bb.mq
  %.sroa.speculated.i.i.i271.i = call i64 @llvm.umax.i64(i64 %i.dak, i64 %i.dam)
  %i.dax = add nuw nsw i64 %.sroa.speculated.i.i.i271.i, %i.dak
  %i.day = call i64 @llvm.umin.i64(i64 %i.dax, i64 2305843009213693951) ; 2 uses
  %i.daz = shl nuw nsw i64 %i.day, 2
  %i.dba = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.daz) #35 ; 10 uses
  %i.dbb = getelementptr inbounds nuw i8, ptr %i.dba, i64 %i.daj
  %.not13.i.i.i.i272.i = icmp eq ptr %i.dag, %i.daf
  br i1 %.not13.i.i.i.i272.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_N3gmx30DefaultInitializationAllocatorIiSaIiEEEET0_T_S6_S5_RT1_.exit.i.i277.i, label %iter.check1479

iter.check1479:                                   ; preds = %_ZNKSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE12_M_check_lenEmPKc.exit.i.i270.i
  %i.dbc = ptrtoaddr ptr %i.dba to i64
  %i.dbd = add i64 %i.dah, -4
  %i.dbe = sub i64 %i.dbd, %i.dai                 ; 3 uses
  %i.dbf = lshr i64 %i.dbe, 2
  %i.dbg = add nuw nsw i64 %i.dbf, 1              ; 5 uses
  %min.iters.check1460 = icmp ult i64 %i.dbe, 28
  %i.dbh = sub i64 %i.dai, %i.dbc
  %diff.check1458 = icmp ugt i64 %i.dbh, -128
  %or.cond1645 = or i1 %min.iters.check1460, %diff.check1458
  br i1 %or.cond1645, label %.lr.ph.i.i.i.i273.i.preheader, label %vector.main.loop.iter.check1461

vector.main.loop.iter.check1461:                  ; preds = %iter.check1479
  %min.iters.check1462 = icmp ult i64 %i.dbe, 124
  br i1 %min.iters.check1462, label %vec.epilog.ph1483, label %vector.ph1463

vector.ph1463:                                    ; preds = %vector.main.loop.iter.check1461
  %i.dbi = and i64 %i.dbg, 24
  %n.vec1464 = and i64 %i.dbg, 9223372036854775776 ; 4 uses
  %i.dbj = shl i64 %n.vec1464, 2                  ; 2 uses
  %i.dbk = getelementptr i8, ptr %i.dba, i64 %i.dbj
  %i.dbl = getelementptr i8, ptr %i.dag, i64 %i.dbj
  br label %vector.body1465

vector.body1465:                                  ; preds = %vector.ph1463, %vector.body1465
  %index1466 = phi i64 [ 0, %vector.ph1463 ], [ %index.next1473, %vector.body1465 ] ; 2 uses
  %i.dbm = shl i64 %index1466, 2                  ; 2 uses
  %next.gep1467 = getelementptr i8, ptr %i.dba, i64 %i.dbm ; 4 uses
  %next.gep1468 = getelementptr i8, ptr %i.dag, i64 %i.dbm ; 4 uses
  %i.dbn = getelementptr i8, ptr %next.gep1468, i64 32
  %i.dbo = getelementptr i8, ptr %next.gep1468, i64 64
  %i.dbp = getelementptr i8, ptr %next.gep1468, i64 96
  %wide.load1469 = load <8 x i32>, ptr %next.gep1468, align 4, !tbaa !210
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
  %scevgep = getelementptr i8, ptr %i.hf, i64 %i.if
  %scevgep68 = getelementptr i8, ptr %i.ie, i64 -8
  %i.ig = shl nuw nsw i64 %wide.trip.count22, 4
  %scevgep69 = getelementptr i8, ptr %scevgep68, i64 %i.ig
  %bound0 = icmp ult ptr %i.hf, %scevgep69
  %bound1 = icmp ult ptr %i.ie, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph71

vector.ph71:                                      ; preds = %vector.memcheck
  %n.vec72 = and i64 %wide.trip.count22, 2147483640 ; 3 uses
  %broadcast.splatinsert73 = insertelement <8 x float> poison, float %i.hd, i64 0
  %broadcast.splat74 = shufflevector <8 x float> %broadcast.splatinsert73, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body75

vector.body75:                                    ; preds = %vector.body75, %vector.ph71
  %index76 = phi i64 [ 0, %vector.ph71 ], [ %index.next80, %vector.body75 ] ; 2 uses
  %vec.ind77 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph71 ], [ %vec.ind.next81, %vector.body75 ] ; 3 uses
  %vec.ind78.a = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph71 ], [ %vec.ind.next82, %vector.body75 ] ; 2 uses
  %i.ih = uitofp nneg <8 x i32> %vec.ind78.a to <8 x float>
  %i.ii = fdiv <8 x float> %i.ih, %broadcast.splat74 ; 2 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %index76
  store <8 x float> %i.ii, ptr %i.ij, align 4, !tbaa !211, !alias.scope !849, !noalias !850
  %wide.gep = getelementptr inbounds nuw [16 x i8], ptr %i.ie, <8 x i64> %vec.ind77 ; 2 uses
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ii, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !359, !alias.scope !850
  %6 = trunc <8 x i64> %vec.ind77 to <8 x i32>
  %7 = add <8 x i32> %6, splat (i32 1)
  %i.ik = uitofp nneg <8 x i32> %7 to <8 x float>
  %i.il = fdiv <8 x float> %i.ik, %broadcast.splat74
  %wide.gep79 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.il, <8 x ptr> align 4 %wide.gep79, <8 x i1> splat (i1 true)), !tbaa !360, !alias.scope !850
  %index.next80 = add nuw i64 %index76, 8         ; 2 uses
  %vec.ind.next81 = add nuw nsw <8 x i64> %vec.ind77, splat (i64 8)
  %vec.ind.next82 = add <8 x i32> %vec.ind78.a, splat (i32 8)
  %i.im = icmp eq i64 %index.next80, %n.vec72
  br i1 %i.im, label %middle.block83, label %vector.body75, !llvm.loop !844

middle.block83:                                   ; preds = %vector.body75
  %cmp.n84 = icmp eq i64 %n.vec72, %wide.trip.count22
  br i1 %cmp.n84, label %._crit_edge12, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph11.split, %middle.block83
  %indvars.iv19.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph11.split ], [ %n.vec72, %middle.block83 ] ; 3 uses
  %xtraiter89 = and i64 %wide.trip.count22, 3     ; 2 uses
  %lcmp.mod90.not = icmp eq i64 %xtraiter89, 0
  br i1 %lcmp.mod90.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol.preheader

scalar.ph.prol.preheader:                         ; preds = %scalar.ph.preheader
  %i.in = insertelement <2 x float> poison, float %i.hd, i64 0
  %i.io = shufflevector <2 x float> %i.in, <2 x float> poison, <2 x i32> zeroinitializer
  br label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.prol, %scalar.ph.prol.preheader
  %indvars.iv19.prol = phi i64 [ %indvars.iv.next20.prol, %scalar.ph.prol ], [ %indvars.iv19.ph, %scalar.ph.prol.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.prol.preheader ]
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv19.prol
  %i.iq = getelementptr inbounds nuw [16 x i8], ptr %i.ie, i64 %indvars.iv19.prol
  %indvars.iv.next20.prol = add nuw nsw i64 %indvars.iv19.prol, 1 ; 3 uses
  %i.ir = trunc nsw i64 %indvars.iv.next20.prol to i32
  %i.is = trunc nsw i64 %indvars.iv19.prol to i32
  %i.it = insertelement <2 x i32> poison, i32 %i.is, i64 0
  %i.iu = insertelement <2 x i32> %i.it, i32 %i.ir, i64 1
  %i.iv = uitofp <2 x i32> %i.iu to <2 x float>
  %i.iw = fdiv <2 x float> %i.iv, %i.io           ; 2 uses
  %i.ix = extractelement <2 x float> %i.iw, i64 0
  store float %i.ix, ptr %i.ip, align 4, !tbaa !211
  store <2 x float> %i.iw, ptr %i.iq, align 4, !tbaa !211
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter89
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !845

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv19.unr = phi i64 [ %indvars.iv19.ph, %scalar.ph.preheader ], [ %indvars.iv.next20.prol, %scalar.ph.prol ]
  %i.iy = sub nsw i64 %indvars.iv19.ph, %wide.trip.count22
  %i.iz = icmp ugt i64 %i.iy, -4
  br i1 %i.iz, label %._crit_edge12, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %i.ja = insertelement <2 x float> poison, float %i.hd, i64 0
  %i.jb = shufflevector <2 x float> %i.ja, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jc = insertelement <2 x float> poison, float %i.hd, i64 0
  %i.jd = shufflevector <2 x float> %i.jc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.je = insertelement <2 x float> poison, float %i.hd, i64 0
  %i.jf = shufflevector <2 x float> %i.je, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jg = insertelement <2 x float> poison, float %i.hd, i64 0
  %i.jh = shufflevector <2 x float> %i.jg, <2 x float> poison, <2 x i32> zeroinitializer
  br label %scalar.ph

._crit_edge12:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %.lr.ph11.split.us, %middle.block83, %middle.block, %vec.epilog.middle.block, %.._crit_edge12_crit_edge
  %i.ji = phi ptr [ %.pre, %.._crit_edge12_crit_edge ], [ %i.hf, %middle.block ], [ %i.hf, %middle.block83 ], [ %i.hf, %vec.epilog.middle.block ], [ %i.hf, %.lr.ph11.split.us ], [ %i.hf, %scalar.ph ], [ %i.hf, %scalar.ph.prol.loopexit ]
  %i.jj = sext i32 %i.hb to i64
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.ji, i64 %i.jj
  store float 1.000000e+00, ptr %i.jk, align 4, !tbaa !211
  br label %bb.v

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv19 = phi i64 [ %indvars.iv19.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next20.3, %scalar.ph ] ; 7 uses
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv19
  %i.jm = getelementptr inbounds nuw [16 x i8], ptr %i.ie, i64 %indvars.iv19
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1 ; 4 uses
  %i.jn = trunc nsw i64 %indvars.iv.next20 to i32
  %i.jo = trunc nsw i64 %indvars.iv19 to i32
  %i.jp = insertelement <2 x i32> poison, i32 %i.jo, i64 0
  %i.jq = insertelement <2 x i32> %i.jp, i32 %i.jn, i64 1
  %i.jr = uitofp <2 x i32> %i.jq to <2 x float>
  %i.js = fdiv <2 x float> %i.jr, %i.jb           ; 2 uses
  %i.jt = extractelement <2 x float> %i.js, i64 0
  store float %i.jt, ptr %i.jl, align 4, !tbaa !211
  store <2 x float> %i.js, ptr %i.jm, align 4, !tbaa !211
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv.next20
  %i.jv = getelementptr inbounds nuw [16 x i8], ptr %i.ie, i64 %indvars.iv.next20
  %indvars.iv.next20.1 = add nuw nsw i64 %indvars.iv19, 2 ; 4 uses
  %i.jw = trunc nsw i64 %indvars.iv.next20.1 to i32
  %i.jx = trunc nsw i64 %indvars.iv.next20 to i32
  %i.jy = insertelement <2 x i32> poison, i32 %i.jx, i64 0
  %i.jz = insertelement <2 x i32> %i.jy, i32 %i.jw, i64 1
  %i.ka = uitofp <2 x i32> %i.jz to <2 x float>
  %i.kb = fdiv <2 x float> %i.ka, %i.jd           ; 2 uses
  %i.kc = extractelement <2 x float> %i.kb, i64 0
  store float %i.kc, ptr %i.ju, align 4, !tbaa !211
  store <2 x float> %i.kb, ptr %i.jv, align 4, !tbaa !211
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv.next20.1
  %i.ke = getelementptr inbounds nuw [16 x i8], ptr %i.ie, i64 %indvars.iv.next20.1
  %indvars.iv.next20.2 = add nuw nsw i64 %indvars.iv19, 3 ; 4 uses
  %i.kf = trunc nsw i64 %indvars.iv.next20.2 to i32
  %i.kg = trunc nsw i64 %indvars.iv.next20.1 to i32
  %i.kh = insertelement <2 x i32> poison, i32 %i.kg, i64 0
  %i.ki = insertelement <2 x i32> %i.kh, i32 %i.kf, i64 1
  %i.kj = uitofp <2 x i32> %i.ki to <2 x float>
  %i.kk = fdiv <2 x float> %i.kj, %i.jf           ; 2 uses
  %i.kl = extractelement <2 x float> %i.kk, i64 0
  store float %i.kl, ptr %i.kd, align 4, !tbaa !211
  store <2 x float> %i.kk, ptr %i.ke, align 4, !tbaa !211
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv.next20.2
  %i.kn = getelementptr inbounds nuw [16 x i8], ptr %i.ie, i64 %indvars.iv.next20.2
  %indvars.iv.next20.3 = add nuw nsw i64 %indvars.iv19, 4 ; 3 uses
  %i.ko = trunc nsw i64 %indvars.iv.next20.3 to i32
  %i.kp = trunc nsw i64 %indvars.iv.next20.2 to i32
  %i.kq = insertelement <2 x i32> poison, i32 %i.kp, i64 0
  %i.kr = insertelement <2 x i32> %i.kq, i32 %i.ko, i64 1
  %i.ks = uitofp <2 x i32> %i.kr to <2 x float>
  %i.kt = fdiv <2 x float> %i.ks, %i.jh           ; 2 uses
  %i.ku = extractelement <2 x float> %i.kt, i64 0
  store float %i.ku, ptr %i.km, align 4, !tbaa !211
  store <2 x float> %i.kt, ptr %i.kn, align 4, !tbaa !211
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
