Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/partition?download=true
inline.NumInlined: 2655
inline.NumDeleted: 1066
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZN3gmx19dd_partition_systemEP8_IO_FILERKNS_8MDLoggerElP12gmx_domdec_tbP7t_stateRK10gmx_mtop_tRK10t_inputrecRKNS_18MDModulesNotifiersEPNS_10ImdSessionEP6pull_tS8_PNS_12ForceBuffersEPNS_7MDAtomsEP14gmx_localtop_tP10t_forcerecPNS_19VirtualSitesHandlerEPNS_11ConstraintsEP6t_nrnbP13gmx_wallcycleb:bb.a
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
  %index1514 = phi i64 [ %index.next1585, %bb.lz ], [ 0, %vector.main.loop.iter.check1509 ] ; 2 uses
  %i.cye = phi i64 [ %i.cyq, %bb.lz ], [ 7, %vector.main.loop.iter.check1509 ] ; 2 uses
  %i.cyf = getelementptr inbounds nuw [4 x i8], ptr %i.cyb, i64 %index1514 ; 4 uses
  %74 = getelementptr inbounds nuw i8, ptr %i.cyf, i64 32
  %i.cyg = getelementptr inbounds nuw i8, ptr %i.cyf, i64 64
  %i.cyh = getelementptr inbounds nuw i8, ptr %i.cyf, i64 96
  %wide.load1519 = load <8 x i32>, ptr %i.cyf, align 4, !tbaa !210, !alias.scope !700
  %wide.load1520.a = load <8 x i32>, ptr %74, align 4, !tbaa !210, !alias.scope !700
  %wide.load1521 = load <8 x i32>, ptr %i.cyg, align 4, !tbaa !210, !alias.scope !700
  %wide.load1522 = load <8 x i32>, ptr %i.cyh, align 4, !tbaa !210, !alias.scope !700
  %i.cyi = icmp sgt <8 x i32> %wide.load1519, zeroinitializer
  %i.cyj = icmp sgt <8 x i32> %wide.load1520.a, zeroinitializer
  %75 = shufflevector <8 x i32> %wide.load1522, <8 x i32> %wide.load1521, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cyk = icmp sgt <32 x i32> %75, <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cyl = shufflevector <8 x i1> %i.cyj, <8 x i1> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cym = shufflevector <32 x i1> %i.cyk, <32 x i1> %i.cyl, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cyn = shufflevector <8 x i1> %i.cyi, <8 x i1> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cyo = shufflevector <32 x i1> %i.cym, <32 x i1> %i.cyn, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39>
  %i.cyp = bitcast <32 x i1> %i.cyo to i32
  %.not1647 = icmp eq i32 %i.cyp, 0
  br i1 %.not1647, label %bb.lz, label %bb.ly

bb.ly:                                            ; preds = %vector.body1513
  store i8 0, ptr %i.cpe, align 8, !tbaa !698, !alias.scope !701, !noalias !702
  br label %bb.lz

bb.lz:                                            ; preds = %vector.body1513, %bb.ly
  %index.next1585 = add nuw i64 %index1514, 32    ; 2 uses
  %i.cyq = add nuw i64 %i.cye, 32
  %i.cyr = icmp eq i64 %index.next1585, %n.vec1512
  br i1 %i.cyr, label %middle.block1587, label %vector.body1513, !llvm.loop !513

middle.block1587:                                 ; preds = %bb.lz
  %i.cys = trunc i64 %i.cye to i32
  %i.cyt = add i32 %i.cys, 25
  store i32 %i.cyt, ptr %i.j, align 4, !tbaa !210, !alias.scope !703, !noalias !700
  br i1 %cmp.n1588, label %.loopexit352.i, label %vec.epilog.iter.check1590

vec.epilog.iter.check1590:                        ; preds = %middle.block1587
  br i1 %min.epilog.iters.check1592, label %vec.epilog.scalar.ph1591.preheader, label %vec.epilog.ph1593, !prof !393

vec.epilog.ph1593:                                ; preds = %vector.main.loop.iter.check1509, %vec.epilog.iter.check1590
  %vec.epilog.resume.val1594 = phi i64 [ %n.vec1512, %vec.epilog.iter.check1590 ], [ 0, %vector.main.loop.iter.check1509 ] ; 2 uses
  %i.cyu = or disjoint i64 %vec.epilog.resume.val1594, 7
  br label %vec.epilog.vector.body1599

vec.epilog.vector.body1599:                       ; preds = %bb.mb, %vec.epilog.ph1593
  %index1600 = phi i64 [ %vec.epilog.resume.val1594, %vec.epilog.ph1593 ], [ %index.next1619, %bb.mb ] ; 2 uses
  %i.cyv = phi i64 [ %i.cyu, %vec.epilog.ph1593 ], [ %i.cyz, %bb.mb ] ; 2 uses
  %i.cyw = getelementptr inbounds nuw [4 x i8], ptr %i.cyb, i64 %index1600
  %wide.load1602 = load <8 x i32>, ptr %i.cyw, align 4, !tbaa !210, !alias.scope !700
  %i.cyx = icmp sgt <8 x i32> %wide.load1602, zeroinitializer
  %i.cyy = bitcast <8 x i1> %i.cyx to i8
  %.not1648 = icmp eq i8 %i.cyy, 0
  br i1 %.not1648, label %bb.mb, label %bb.ma

bb.ma:                                            ; preds = %vec.epilog.vector.body1599
  store i8 0, ptr %i.cpe, align 8, !tbaa !698, !alias.scope !701, !noalias !702
  br label %bb.mb

bb.mb:                                            ; preds = %vec.epilog.vector.body1599, %bb.ma
  %index.next1619 = add nuw i64 %index1600, 8     ; 2 uses
  %i.cyz = add nuw nsw i64 %i.cyv, 8
  %i.cza = icmp eq i64 %index.next1619, %n.vec1595
  br i1 %i.cza, label %vec.epilog.middle.block1621, label %vec.epilog.vector.body1599, !llvm.loop !514

vec.epilog.middle.block1621:                      ; preds = %bb.mb
  %i.czb = trunc i64 %i.cyv to i32
  %i.czc = add i32 %i.czb, 1
  store i32 %i.czc, ptr %i.j, align 4, !tbaa !210, !alias.scope !703, !noalias !700
  br i1 %cmp.n1622, label %.loopexit352.i, label %vec.epilog.scalar.ph1591.preheader

vec.epilog.scalar.ph1591.preheader:               ; preds = %iter.check1589, %vector.memcheck1501, %vec.epilog.iter.check1590, %vec.epilog.middle.block1621
  %indvars.iv570.i.ph = phi i64 [ 0, %iter.check1589 ], [ 0, %vector.memcheck1501 ], [ %n.vec1512, %vec.epilog.iter.check1590 ], [ %n.vec1595, %vec.epilog.middle.block1621 ] ; 3 uses
  br i1 %lcmp.mod1789.not, label %vec.epilog.scalar.ph1591.prol.loopexit, label %vec.epilog.scalar.ph1591.prol

vec.epilog.scalar.ph1591.prol:                    ; preds = %vec.epilog.scalar.ph1591.preheader, %bb.md
  %indvars.iv570.i.prol = phi i64 [ %indvars.iv.next571.i.prol, %bb.md ], [ %indvars.iv570.i.ph, %vec.epilog.scalar.ph1591.preheader ] ; 2 uses
  %prol.iter1790 = phi i64 [ %prol.iter1790.next, %bb.md ], [ 0, %vec.epilog.scalar.ph1591.preheader ]
  %i.czd = getelementptr inbounds nuw [4 x i8], ptr %i.cyb, i64 %indvars.iv570.i.prol
  %i.cze = load i32, ptr %i.czd, align 4, !tbaa !210
  %i.czf = icmp sgt i32 %i.cze, 0
  br i1 %i.czf, label %bb.mc, label %bb.md

bb.mc:                                            ; preds = %vec.epilog.scalar.ph1591.prol
  store i8 0, ptr %i.cpe, align 8, !tbaa !698
  br label %bb.md

bb.md:                                            ; preds = %bb.mc, %vec.epilog.scalar.ph1591.prol
  %indvars.iv.next571.i.prol = add nuw nsw i64 %indvars.iv570.i.prol, 1 ; 3 uses
  %i.czg = trunc nuw nsw i64 %indvars.iv.next571.i.prol to i32
  store i32 %i.czg, ptr %i.j, align 4, !tbaa !210
  %prol.iter1790.next = add i64 %prol.iter1790, 1 ; 2 uses
  %prol.iter1790.cmp.not = icmp eq i64 %prol.iter1790.next, %xtraiter1788
  br i1 %prol.iter1790.cmp.not, label %vec.epilog.scalar.ph1591.prol.loopexit, label %vec.epilog.scalar.ph1591.prol, !llvm.loop !515

vec.epilog.scalar.ph1591.prol.loopexit:           ; preds = %bb.md, %vec.epilog.scalar.ph1591.preheader
  %indvars.iv570.i.unr = phi i64 [ %indvars.iv570.i.ph, %vec.epilog.scalar.ph1591.preheader ], [ %indvars.iv.next571.i.prol, %bb.md ]
  %i.czh = sub nsw i64 %indvars.iv570.i.ph, %wide.trip.count573.i
  %i.czi = icmp ugt i64 %i.czh, -4
  br i1 %i.czi, label %.loopexit352.i, label %vec.epilog.scalar.ph1591

vec.epilog.scalar.ph1591:                         ; preds = %vec.epilog.scalar.ph1591.prol.loopexit, %bb.mi
  %indvars.iv570.i = phi i64 [ %indvars.iv.next571.i.3, %bb.mi ], [ %indvars.iv570.i.unr, %vec.epilog.scalar.ph1591.prol.loopexit ] ; 5 uses
  %i.czj = getelementptr inbounds nuw [4 x i8], ptr %i.cyb, i64 %indvars.iv570.i
  %i.czk = load i32, ptr %i.czj, align 4, !tbaa !210
  %i.czl = icmp sgt i32 %i.czk, 0
  br i1 %i.czl, label %bb.me, label %vec.epilog.scalar.ph1591.1

bb.me:                                            ; preds = %vec.epilog.scalar.ph1591
  store i8 0, ptr %i.cpe, align 8, !tbaa !698
  br label %vec.epilog.scalar.ph1591.1

vec.epilog.scalar.ph1591.1:                       ; preds = %bb.me, %vec.epilog.scalar.ph1591
  %indvars.iv.next571.i = add nuw nsw i64 %indvars.iv570.i, 1 ; 2 uses
  %i.czm = trunc nuw nsw i64 %indvars.iv.next571.i to i32
  store i32 %i.czm, ptr %i.j, align 4, !tbaa !210
  %i.czn = getelementptr inbounds nuw [4 x i8], ptr %i.cyb, i64 %indvars.iv.next571.i
  %i.czo = load i32, ptr %i.czn, align 4, !tbaa !210
  %i.czp = icmp sgt i32 %i.czo, 0
  br i1 %i.czp, label %bb.mf, label %vec.epilog.scalar.ph1591.2

bb.mf:                                            ; preds = %vec.epilog.scalar.ph1591.1
  store i8 0, ptr %i.cpe, align 8, !tbaa !698
  br label %vec.epilog.scalar.ph1591.2

vec.epilog.scalar.ph1591.2:                       ; preds = %bb.mf, %vec.epilog.scalar.ph1591.1
  %indvars.iv.next571.i.1 = add nuw nsw i64 %indvars.iv570.i, 2 ; 2 uses
  %i.czq = trunc nuw nsw i64 %indvars.iv.next571.i.1 to i32
  store i32 %i.czq, ptr %i.j, align 4, !tbaa !210
  %i.czr = getelementptr inbounds nuw [4 x i8], ptr %i.cyb, i64 %indvars.iv.next571.i.1
  %i.czs = load i32, ptr %i.czr, align 4, !tbaa !210
  %i.czt = icmp sgt i32 %i.czs, 0
  br i1 %i.czt, label %bb.mg, label %vec.epilog.scalar.ph1591.3

bb.mg:                                            ; preds = %vec.epilog.scalar.ph1591.2
  store i8 0, ptr %i.cpe, align 8, !tbaa !698
  br label %vec.epilog.scalar.ph1591.3

vec.epilog.scalar.ph1591.3:                       ; preds = %bb.mg, %vec.epilog.scalar.ph1591.2
  %indvars.iv.next571.i.2 = add nuw nsw i64 %indvars.iv570.i, 3 ; 2 uses
  %i.czu = trunc nuw nsw i64 %indvars.iv.next571.i.2 to i32
  store i32 %i.czu, ptr %i.j, align 4, !tbaa !210
  %i.czv = getelementptr inbounds nuw [4 x i8], ptr %i.cyb, i64 %indvars.iv.next571.i.2
  %i.czw = load i32, ptr %i.czv, align 4, !tbaa !210
  %i.czx = icmp sgt i32 %i.czw, 0
  br i1 %i.czx, label %bb.mh, label %bb.mi

bb.mh:                                            ; preds = %vec.epilog.scalar.ph1591.3
  store i8 0, ptr %i.cpe, align 8, !tbaa !698
  br label %bb.mi

bb.mi:                                            ; preds = %bb.mh, %vec.epilog.scalar.ph1591.3
  %indvars.iv.next571.i.3 = add nuw nsw i64 %indvars.iv570.i, 4 ; 3 uses
  %i.czy = trunc nuw nsw i64 %indvars.iv.next571.i.3 to i32
  store i32 %i.czy, ptr %i.j, align 4, !tbaa !210
  %exitcond574.not.i.3 = icmp eq i64 %indvars.iv.next571.i.3, %wide.trip.count573.i
  br i1 %exitcond574.not.i.3, label %.loopexit352.i, label %vec.epilog.scalar.ph1591, !llvm.loop !516

.loopexit352.i:                                   ; preds = %vec.epilog.scalar.ph1591.prol.loopexit, %bb.mi, %middle.block1587, %vec.epilog.middle.block1621, %.preheader351.i, %._crit_edge493.i
  %i.czz = load i8, ptr %i.cpe, align 8, !tbaa !698, !range !335, !noundef !336
  %i.daa = trunc nuw i8 %i.czz to i1
  br i1 %i.daa, label %bb.mk, label %bb.mj

bb.mj:                                            ; preds = %.loopexit352.i
  %i.dab = load ptr, ptr %i.ab, align 8, !tbaa !409
  %i.dac = getelementptr inbounds nuw i8, ptr %i.dab, i64 24
  %i.dad = getelementptr inbounds [4 x i8], ptr %i.dac, i64 %i.cpq
  %i.dae = load i32, ptr %i.dad, align 4, !tbaa !210
  %i.daf = sext i32 %i.dae to i64
  br label %bb.mk

bb.mk:                                            ; preds = %bb.mj, %.loopexit352.i
  %.0139.i = phi i64 [ 0, %.loopexit352.i ], [ %i.daf, %bb.mj ] ; 7 uses
  %i.dag = load ptr, ptr %i.m, align 8, !tbaa !15 ; 6 uses
  %i.dah = getelementptr inbounds nuw i8, ptr %i.dag, i64 1072 ; 2 uses
  %i.dai = getelementptr inbounds nuw i8, ptr %i.dag, i64 1096 ; 6 uses
  %i.daj = load i8, ptr %i.dai, align 8, !tbaa !704, !range !335, !noundef !336
  %i.dak = trunc nuw i8 %i.daj to i1
  br i1 %i.dak, label %bb.ml, label %bb.mm

bb.ml:                                            ; preds = %bb.mk
  call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.138, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN8DDBufferIiE7acquireEmENKUlvE_clEv, ptr noundef nonnull @.str.139, i32 noundef 359) #29
  unreachable

bb.mm:                                            ; preds = %bb.mk
  store i8 1, ptr %i.dai, align 8, !tbaa !704
  %i.dal = getelementptr inbounds nuw i8, ptr %i.dag, i64 1080 ; 3 uses
  %i.dam = load ptr, ptr %i.dal, align 8, !tbaa !372 ; 4 uses
  %i.dan = load ptr, ptr %i.dah, align 8, !tbaa !371 ; 11 uses
  %i.dao = ptrtoint ptr %i.dam to i64             ; 3 uses
  %i.dap = ptrtoint ptr %i.dan to i64             ; 4 uses
  %i.daq = sub i64 %i.dao, %i.dap                 ; 2 uses
  %i.dar = ashr exact i64 %i.daq, 2               ; 6 uses
  %i.das = icmp ugt i64 %.0139.i, %i.dar
  br i1 %i.das, label %bb.mn, label %_ZN14DDBufferAccessIiEC2ER8DDBufferIiEm.exit.i

bb.mn:                                            ; preds = %bb.mm
  %i.dat = sub nuw nsw i64 %.0139.i, %i.dar       ; 5 uses
  %i.dau = getelementptr inbounds nuw i8, ptr %i.dag, i64 1088 ; 3 uses
  %i.dav = load ptr, ptr %i.dau, align 8, !tbaa !420
  %i.daw = ptrtoint ptr %i.dav to i64
  %i.dax = sub i64 %i.daw, %i.dao
  %i.day = ashr exact i64 %i.dax, 2               ; 2 uses
  %i.daz = icmp ult i64 %i.dar, 2305843009213693952
  call void @llvm.assume(i1 %i.daz)
  %i.dba = xor i64 %i.dar, 2305843009213693951    ; 2 uses
  %i.dbb = icmp ule i64 %i.day, %i.dba
  call void @llvm.assume(i1 %i.dbb)
  %.not37.i.i268.i = icmp ult i64 %i.day, %i.dat
  br i1 %.not37.i.i268.i, label %bb.mp, label %bb.mo

bb.mo:                                            ; preds = %bb.mn
end_hunk_0
