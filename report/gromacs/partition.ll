Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/partition?download=true
inline.NumInlined: 2655
inline.NumDeleted: 1066
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZN3gmx19dd_partition_systemEP8_IO_FILERKNS_8MDLoggerElP12gmx_domdec_tbP7t_stateRK10gmx_mtop_tRK10t_inputrecRKNS_18MDModulesNotifiersEPNS_10ImdSessionEP6pull_tS8_PNS_12ForceBuffersEPNS_7MDAtomsEP14gmx_localtop_tP10t_forcerecPNS_19VirtualSitesHandlerEPNS_11ConstraintsEP6t_nrnbP13gmx_wallcycleb:bb.a
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
  %i.cxy = phi i64 [ %i.cyk, %bb.ma ], [ 7, %vector.main.loop.iter.check1509 ] ; 2 uses
  %i.cxz = getelementptr inbounds nuw [4 x i8], ptr %i.cxx, i64 %index1514 ; 3 uses
  %i.cya = getelementptr inbounds nuw i8, ptr %i.cxz, i64 32
  %i.cyb = getelementptr inbounds nuw i8, ptr %i.cxz, i64 64
  %wide.load1520.a = load <8 x i32>, ptr %i.cxz, align 4, !tbaa !210, !alias.scope !700
  %wide.load1521 = load <8 x i32>, ptr %i.cya, align 4, !tbaa !210, !alias.scope !700
  %74 = load <16 x i32>, ptr %i.cyb, align 4, !tbaa !210, !alias.scope !700
  %i.cyc = icmp sgt <8 x i32> %wide.load1520.a, zeroinitializer
  %i.cyd = icmp sgt <8 x i32> %wide.load1521, zeroinitializer
  %75 = shufflevector <16 x i32> %74, <16 x i32> poison, <32 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cye = icmp sgt <32 x i32> %75, <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %i.cyf = shufflevector <8 x i1> %i.cyd, <8 x i1> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cyg = shufflevector <32 x i1> %i.cye, <32 x i1> %i.cyf, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cyh = shufflevector <8 x i1> %i.cyc, <8 x i1> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cyi = shufflevector <32 x i1> %i.cyg, <32 x i1> %i.cyh, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39>
  %i.cyj = bitcast <32 x i1> %i.cyi to i32
  %.not1647 = icmp eq i32 %i.cyj, 0
  br i1 %.not1647, label %bb.ma, label %bb.lz

bb.lz:                                            ; preds = %vector.body1513
  store i8 0, ptr %i.cpa, align 8, !tbaa !698, !alias.scope !701, !noalias !702
  br label %bb.ma

bb.ma:                                            ; preds = %vector.body1513, %bb.lz
  %index.next1585 = add nuw i64 %index1514, 32    ; 2 uses
  %i.cyk = add nuw i64 %i.cxy, 32
  %i.cyl = icmp eq i64 %index.next1585, %n.vec1512
  br i1 %i.cyl, label %middle.block1587, label %vector.body1513, !llvm.loop !513

middle.block1587:                                 ; preds = %bb.ma
  %i.cym = trunc i64 %i.cxy to i32
  %i.cyn = add i32 %i.cym, 25
  store i32 %i.cyn, ptr %i.j, align 4, !tbaa !210, !alias.scope !703, !noalias !700
  br i1 %cmp.n1588, label %.loopexit351.i, label %vec.epilog.iter.check1592

vec.epilog.iter.check1592:                        ; preds = %middle.block1587
  br i1 %min.epilog.iters.check1593, label %vec.epilog.scalar.ph1591.preheader, label %vec.epilog.ph1594, !prof !393

vec.epilog.ph1594:                                ; preds = %vector.main.loop.iter.check1509, %vec.epilog.iter.check1592
  %vec.epilog.resume.val1589 = phi i64 [ %n.vec1512, %vec.epilog.iter.check1592 ], [ 0, %vector.main.loop.iter.check1509 ] ; 2 uses
  %i.cyo = or disjoint i64 %vec.epilog.resume.val1589, 7
  br label %vec.epilog.vector.body1599

vec.epilog.vector.body1599:                       ; preds = %bb.mc, %vec.epilog.ph1594
  %index1600 = phi i64 [ %vec.epilog.resume.val1589, %vec.epilog.ph1594 ], [ %index.next1619, %bb.mc ] ; 2 uses
  %i.cyp = phi i64 [ %i.cyo, %vec.epilog.ph1594 ], [ %i.cyt, %bb.mc ] ; 2 uses
  %i.cyq = getelementptr inbounds nuw [4 x i8], ptr %i.cxx, i64 %index1600
  %wide.load1602 = load <8 x i32>, ptr %i.cyq, align 4, !tbaa !210, !alias.scope !700
  %i.cyr = icmp sgt <8 x i32> %wide.load1602, zeroinitializer
  %i.cys = bitcast <8 x i1> %i.cyr to i8
  %.not1648 = icmp eq i8 %i.cys, 0
  br i1 %.not1648, label %bb.mc, label %bb.mb

bb.mb:                                            ; preds = %vec.epilog.vector.body1599
  store i8 0, ptr %i.cpa, align 8, !tbaa !698, !alias.scope !701, !noalias !702
  br label %bb.mc

bb.mc:                                            ; preds = %vec.epilog.vector.body1599, %bb.mb
  %index.next1619 = add nuw i64 %index1600, 8     ; 2 uses
  %i.cyt = add nuw nsw i64 %i.cyp, 8
  %i.cyu = icmp eq i64 %index.next1619, %n.vec1595
  br i1 %i.cyu, label %vec.epilog.middle.block1621, label %vec.epilog.vector.body1599, !llvm.loop !514

vec.epilog.middle.block1621:                      ; preds = %bb.mc
  %i.cyv = trunc i64 %i.cyp to i32
  %i.cyw = add i32 %i.cyv, 1
  store i32 %i.cyw, ptr %i.j, align 4, !tbaa !210, !alias.scope !703, !noalias !700
  br i1 %cmp.n1622, label %.loopexit351.i, label %vec.epilog.scalar.ph1591.preheader

vec.epilog.scalar.ph1591.preheader:               ; preds = %iter.check1590, %vector.memcheck1495, %vec.epilog.iter.check1592, %vec.epilog.middle.block1621
  %indvars.iv590.i.ph = phi i64 [ 0, %iter.check1590 ], [ 0, %vector.memcheck1495 ], [ %n.vec1512, %vec.epilog.iter.check1592 ], [ %n.vec1595, %vec.epilog.middle.block1621 ] ; 3 uses
  br i1 %lcmp.mod1787.not, label %vec.epilog.scalar.ph1591.prol.loopexit, label %vec.epilog.scalar.ph1591.prol

vec.epilog.scalar.ph1591.prol:                    ; preds = %vec.epilog.scalar.ph1591.preheader, %bb.me
  %indvars.iv590.i.prol = phi i64 [ %indvars.iv.next591.i.prol, %bb.me ], [ %indvars.iv590.i.ph, %vec.epilog.scalar.ph1591.preheader ] ; 2 uses
  %prol.iter1788 = phi i64 [ %prol.iter1788.next, %bb.me ], [ 0, %vec.epilog.scalar.ph1591.preheader ]
  %i.cyx = getelementptr inbounds nuw [4 x i8], ptr %i.cxx, i64 %indvars.iv590.i.prol
  %i.cyy = load i32, ptr %i.cyx, align 4, !tbaa !210
  %i.cyz = icmp sgt i32 %i.cyy, 0
  br i1 %i.cyz, label %bb.md, label %bb.me

bb.md:                                            ; preds = %vec.epilog.scalar.ph1591.prol
  store i8 0, ptr %i.cpa, align 8, !tbaa !698
  br label %bb.me

bb.me:                                            ; preds = %bb.md, %vec.epilog.scalar.ph1591.prol
  %indvars.iv.next591.i.prol = add nuw nsw i64 %indvars.iv590.i.prol, 1 ; 3 uses
  %i.cza = trunc nuw nsw i64 %indvars.iv.next591.i.prol to i32
  store i32 %i.cza, ptr %i.j, align 4, !tbaa !210
  %prol.iter1788.next = add i64 %prol.iter1788, 1 ; 2 uses
  %prol.iter1788.cmp.not = icmp eq i64 %prol.iter1788.next, %xtraiter1786
  br i1 %prol.iter1788.cmp.not, label %vec.epilog.scalar.ph1591.prol.loopexit, label %vec.epilog.scalar.ph1591.prol, !llvm.loop !515

vec.epilog.scalar.ph1591.prol.loopexit:           ; preds = %bb.me, %vec.epilog.scalar.ph1591.preheader
  %indvars.iv590.i.unr = phi i64 [ %indvars.iv590.i.ph, %vec.epilog.scalar.ph1591.preheader ], [ %indvars.iv.next591.i.prol, %bb.me ]
  %i.czb = sub nsw i64 %indvars.iv590.i.ph, %wide.trip.count593.i
  %i.czc = icmp ugt i64 %i.czb, -4
  br i1 %i.czc, label %.loopexit351.i, label %vec.epilog.scalar.ph1591

vec.epilog.scalar.ph1591:                         ; preds = %vec.epilog.scalar.ph1591.prol.loopexit, %bb.mj
  %indvars.iv590.i = phi i64 [ %indvars.iv.next591.i.3, %bb.mj ], [ %indvars.iv590.i.unr, %vec.epilog.scalar.ph1591.prol.loopexit ] ; 5 uses
  %i.czd = getelementptr inbounds nuw [4 x i8], ptr %i.cxx, i64 %indvars.iv590.i
  %i.cze = load i32, ptr %i.czd, align 4, !tbaa !210
  %i.czf = icmp sgt i32 %i.cze, 0
  br i1 %i.czf, label %bb.mf, label %vec.epilog.scalar.ph1591.1

bb.mf:                                            ; preds = %vec.epilog.scalar.ph1591
  store i8 0, ptr %i.cpa, align 8, !tbaa !698
  br label %vec.epilog.scalar.ph1591.1

vec.epilog.scalar.ph1591.1:                       ; preds = %bb.mf, %vec.epilog.scalar.ph1591
  %indvars.iv.next591.i = add nuw nsw i64 %indvars.iv590.i, 1 ; 2 uses
  %i.czg = trunc nuw nsw i64 %indvars.iv.next591.i to i32
  store i32 %i.czg, ptr %i.j, align 4, !tbaa !210
  %i.czh = getelementptr inbounds nuw [4 x i8], ptr %i.cxx, i64 %indvars.iv.next591.i
  %i.czi = load i32, ptr %i.czh, align 4, !tbaa !210
  %i.czj = icmp sgt i32 %i.czi, 0
  br i1 %i.czj, label %bb.mg, label %vec.epilog.scalar.ph1591.2

bb.mg:                                            ; preds = %vec.epilog.scalar.ph1591.1
  store i8 0, ptr %i.cpa, align 8, !tbaa !698
  br label %vec.epilog.scalar.ph1591.2

vec.epilog.scalar.ph1591.2:                       ; preds = %bb.mg, %vec.epilog.scalar.ph1591.1
  %indvars.iv.next591.i.1 = add nuw nsw i64 %indvars.iv590.i, 2 ; 2 uses
  %i.czk = trunc nuw nsw i64 %indvars.iv.next591.i.1 to i32
  store i32 %i.czk, ptr %i.j, align 4, !tbaa !210
  %i.czl = getelementptr inbounds nuw [4 x i8], ptr %i.cxx, i64 %indvars.iv.next591.i.1
  %i.czm = load i32, ptr %i.czl, align 4, !tbaa !210
  %i.czn = icmp sgt i32 %i.czm, 0
  br i1 %i.czn, label %bb.mh, label %vec.epilog.scalar.ph1591.3

bb.mh:                                            ; preds = %vec.epilog.scalar.ph1591.2
  store i8 0, ptr %i.cpa, align 8, !tbaa !698
  br label %vec.epilog.scalar.ph1591.3

vec.epilog.scalar.ph1591.3:                       ; preds = %bb.mh, %vec.epilog.scalar.ph1591.2
  %indvars.iv.next591.i.2 = add nuw nsw i64 %indvars.iv590.i, 3 ; 2 uses
  %i.czo = trunc nuw nsw i64 %indvars.iv.next591.i.2 to i32
  store i32 %i.czo, ptr %i.j, align 4, !tbaa !210
  %i.czp = getelementptr inbounds nuw [4 x i8], ptr %i.cxx, i64 %indvars.iv.next591.i.2
  %i.czq = load i32, ptr %i.czp, align 4, !tbaa !210
  %i.czr = icmp sgt i32 %i.czq, 0
  br i1 %i.czr, label %bb.mi, label %bb.mj

bb.mi:                                            ; preds = %vec.epilog.scalar.ph1591.3
  store i8 0, ptr %i.cpa, align 8, !tbaa !698
  br label %bb.mj

bb.mj:                                            ; preds = %bb.mi, %vec.epilog.scalar.ph1591.3
  %indvars.iv.next591.i.3 = add nuw nsw i64 %indvars.iv590.i, 4 ; 3 uses
  %i.czs = trunc nuw nsw i64 %indvars.iv.next591.i.3 to i32
  store i32 %i.czs, ptr %i.j, align 4, !tbaa !210
  %exitcond594.not.i.3 = icmp eq i64 %indvars.iv.next591.i.3, %wide.trip.count593.i
  br i1 %exitcond594.not.i.3, label %.loopexit351.i, label %vec.epilog.scalar.ph1591, !llvm.loop !516

.loopexit351.i:                                   ; preds = %vec.epilog.scalar.ph1591.prol.loopexit, %bb.mj, %middle.block1587, %vec.epilog.middle.block1621, %.preheader350.i, %._crit_edge509.i
  %i.czt = load i8, ptr %i.cpa, align 8, !tbaa !698, !range !335, !noundef !336
  %i.czu = trunc nuw i8 %i.czt to i1
  br i1 %i.czu, label %bb.ml, label %bb.mk

bb.mk:                                            ; preds = %.loopexit351.i
  %i.czv = load ptr, ptr %i.ab, align 8, !tbaa !409
  %i.czw = getelementptr inbounds nuw i8, ptr %i.czv, i64 24
  %i.czx = getelementptr inbounds [4 x i8], ptr %i.czw, i64 %i.cpm
  %i.czy = load i32, ptr %i.czx, align 4, !tbaa !210
  %i.czz = sext i32 %i.czy to i64
  br label %bb.ml

bb.ml:                                            ; preds = %bb.mk, %.loopexit351.i
  %.0139.i = phi i64 [ 0, %.loopexit351.i ], [ %i.czz, %bb.mk ] ; 7 uses
  %i.daa = load ptr, ptr %i.m, align 8, !tbaa !15 ; 6 uses
  %i.dab = getelementptr inbounds nuw i8, ptr %i.daa, i64 1072 ; 2 uses
  %i.dac = getelementptr inbounds nuw i8, ptr %i.daa, i64 1096 ; 6 uses
  %i.dad = load i8, ptr %i.dac, align 8, !tbaa !704, !range !335, !noundef !336
  %i.dae = trunc nuw i8 %i.dad to i1
  br i1 %i.dae, label %bb.mm, label %bb.mn

bb.mm:                                            ; preds = %bb.ml
  call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.138, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN8DDBufferIiE7acquireEmENKUlvE_clEv, ptr noundef nonnull @.str.139, i32 noundef 359) #29
  unreachable

bb.mn:                                            ; preds = %bb.ml
  store i8 1, ptr %i.dac, align 8, !tbaa !704
  %i.daf = getelementptr inbounds nuw i8, ptr %i.daa, i64 1080 ; 3 uses
  %i.dag = load ptr, ptr %i.daf, align 8, !tbaa !372 ; 4 uses
  %i.dah = load ptr, ptr %i.dab, align 8, !tbaa !371 ; 11 uses
  %i.dai = ptrtoint ptr %i.dag to i64             ; 3 uses
  %i.daj = ptrtoint ptr %i.dah to i64             ; 4 uses
  %i.dak = sub i64 %i.dai, %i.daj                 ; 2 uses
  %i.dal = ashr exact i64 %i.dak, 2               ; 6 uses
  %i.dam = icmp ugt i64 %.0139.i, %i.dal
  br i1 %i.dam, label %bb.mo, label %_ZN14DDBufferAccessIiEC2ER8DDBufferIiEm.exit.i

bb.mo:                                            ; preds = %bb.mn
  %i.dan = sub nuw nsw i64 %.0139.i, %i.dal       ; 5 uses
  %i.dao = getelementptr inbounds nuw i8, ptr %i.daa, i64 1088 ; 3 uses
  %i.dap = load ptr, ptr %i.dao, align 8, !tbaa !420
  %i.daq = ptrtoint ptr %i.dap to i64
  %i.dar = sub i64 %i.daq, %i.dai
  %i.das = ashr exact i64 %i.dar, 2               ; 2 uses
  %i.dat = icmp ult i64 %i.dal, 2305843009213693952
  call void @llvm.assume(i1 %i.dat)
  %i.dau = xor i64 %i.dal, 2305843009213693951    ; 2 uses
  %i.dav = icmp ule i64 %i.das, %i.dau
  call void @llvm.assume(i1 %i.dav)
  %.not37.i.i268.i = icmp ult i64 %i.das, %i.dan
  br i1 %.not37.i.i268.i, label %bb.mq, label %bb.mp

bb.mp:                                            ; preds = %bb.mo
end_hunk_0
