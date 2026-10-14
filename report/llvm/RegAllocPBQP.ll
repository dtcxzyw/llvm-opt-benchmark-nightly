Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RegAllocPBQP?download=true
inline.NumInlined: 4997
inline.NumDeleted: 2695
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN12_GLOBAL__N_112RegAllocPBQP20runOnMachineFunctionERN4llvm15MachineFunctionE:bb.a
  br label %.lr.ph.i.i.i.i217

.lr.ph.i.i.i.i217:                                ; preds = %.lr.ph.i.i.i.i217.preheader897, %.lr.ph.i.i.i.i217
  %.012.i.i.i.i218 = phi ptr [ %i.le, %.lr.ph.i.i.i.i217 ], [ %.012.i.i.i.i218.ph, %.lr.ph.i.i.i.i217.preheader897 ] ; 2 uses
  %.0911.i.i.i.i219 = phi ptr [ %i.ld, %.lr.ph.i.i.i.i217 ], [ %.0911.i.i.i.i219.ph, %.lr.ph.i.i.i.i217.preheader897 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !714)
  call void @llvm.experimental.noalias.scope.decl(metadata !715)
  %i.lc = load i64, ptr %.0911.i.i.i.i219, align 8, !tbaa !155, !alias.scope !715, !noalias !714
  store i64 %i.lc, ptr %.012.i.i.i.i218, align 8, !tbaa !155, !alias.scope !714, !noalias !715
  store ptr null, ptr %.0911.i.i.i.i219, align 8, !tbaa !155, !alias.scope !715, !noalias !714
  %i.ld = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i219, i64 8 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i218, i64 8 ; 2 uses
  %.not.i.i.i.i220 = icmp eq ptr %i.ld, %i.jz
  br i1 %.not.i.i.i.i220, label %_ZNSt6vectorISt10unique_ptrIN4llvm16PBQPRAConstraintESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i228, label %.lr.ph.i.i.i.i217, !llvm.loop !633

_ZNSt6vectorISt10unique_ptrIN4llvm16PBQPRAConstraintESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i228: ; preds = %.lr.ph.i.i.i.i217, %middle.block785, %_ZNKSt6vectorISt10unique_ptrIN4llvm16PBQPRAConstraintESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i213
  %.0.lcssa.i.i.i.i222 = phi ptr [ %i.kn, %_ZNKSt6vectorISt10unique_ptrIN4llvm16PBQPRAConstraintESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i213 ], [ %i.kv, %middle.block785 ], [ %i.le, %.lr.ph.i.i.i.i217 ]
  %i.lf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i222, i64 8
  %.not.i23.i230 = icmp eq ptr %i.kc, null
  br i1 %.not.i23.i230, label %_ZN4llvm20PBQPRAConstraintList13addConstraintESt10unique_ptrINS_16PBQPRAConstraintESt14default_deleteIS2_EE.exit94, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvm16PBQPRAConstraintESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i228
  %i.lg = load ptr, ptr %i.ey, align 8, !tbaa !156
  %i.lh = ptrtoint ptr %i.lg to i64
  %i.li = sub i64 %i.lh, %i.ke
  call void @_ZdlPvm(ptr noundef nonnull %i.kc, i64 noundef %i.li) #28
  br label %_ZN4llvm20PBQPRAConstraintList13addConstraintESt10unique_ptrINS_16PBQPRAConstraintESt14default_deleteIS2_EE.exit94

_ZN4llvm20PBQPRAConstraintList13addConstraintESt10unique_ptrINS_16PBQPRAConstraintESt14default_deleteIS2_EE.exit94: ; preds = %bb.aa, %_ZNSt6vectorISt10unique_ptrIN4llvm16PBQPRAConstraintESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i228
  store ptr %i.kn, ptr %i.et, align 8, !tbaa !152
  store ptr %i.lf, ptr %i.ew, align 8, !tbaa !153
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %i.kl
  store ptr %i.lj, ptr %i.ey, align 8, !tbaa !156
  %.pr = load ptr, ptr %16, align 8, !tbaa !155   ; 3 uses
  %.not.i95 = icmp eq ptr %.pr, null
  br i1 %.not.i95, label %_ZNSt10unique_ptrIN4llvm16PBQPRAConstraintESt14default_deleteIS1_EED2Ev.exit97, label %_ZNKSt14default_deleteIN4llvm16PBQPRAConstraintEEclEPS1_.exit.i96

_ZNKSt14default_deleteIN4llvm16PBQPRAConstraintEEclEPS1_.exit.i96: ; preds = %_ZN4llvm20PBQPRAConstraintList13addConstraintESt10unique_ptrINS_16PBQPRAConstraintESt14default_deleteIS2_EE.exit94
  %i.lk = load ptr, ptr %.pr, align 8, !tbaa !47
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  %i.lm = load ptr, ptr %i.ll, align 8
  call void %i.lm(ptr noundef nonnull align 8 dereferenceable(8) %.pr) #26, !inline_history !634
  br label %_ZNSt10unique_ptrIN4llvm16PBQPRAConstraintESt14default_deleteIS1_EED2Ev.exit97

_ZNSt10unique_ptrIN4llvm16PBQPRAConstraintESt14default_deleteIS1_EED2Ev.exit97: ; preds = %bb.x, %_ZNSt10unique_ptrIN12_GLOBAL__N_110CoalescingESt14default_deleteIS1_EED2Ev.exit, %_ZN4llvm20PBQPRAConstraintList13addConstraintESt10unique_ptrINS_16PBQPRAConstraintESt14default_deleteIS2_EE.exit94, %_ZNKSt14default_deleteIN4llvm16PBQPRAConstraintEEclEPS1_.exit.i96
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.ln = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 4 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %17, i64 40 ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %17, i64 44 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %17, i64 48
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 14 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 17 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 6 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 4 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 5 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.mb = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.mc = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 6 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 6 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 3 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %17, i64 128 ; 5 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.mu = getelementptr inbounds nuw i8, ptr %17, i64 136 ; 3 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.my = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.mz = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.na = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 3 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.nd = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.ne = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.nf = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 3 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %5, i64 120 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.ni = getelementptr inbounds nuw i8, ptr %5, i64 136
  %i.nj = getelementptr inbounds nuw i8, ptr %5, i64 144
  %i.nk = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.nl = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.nm = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.nn = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 7 uses
  %i.no = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.np = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.nq = getelementptr inbounds nuw i8, ptr %18, i64 40
  %i.nr = getelementptr inbounds nuw i8, ptr %i.bs, i64 96
  %i.ns = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.nt = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %17, i64 152 ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.nw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.nx = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ob = getelementptr inbounds nuw i8, ptr %i.bv, i64 200 ; 6 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.bv, i64 192 ; 6 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.bv, i64 208 ; 4 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.bv, i64 204 ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.bv, i64 464 ; 2 uses
  %i.og = insertelement <2 x ptr> poison, ptr %i.lt, i64 0
  %i.oh = shufflevector <2 x ptr> %i.og, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %_ZN4llvm4PBQP8RegAlloc13GraphMetadataD2Ev.exit

_ZN4llvm4PBQP8RegAlloc13GraphMetadataD2Ev.exit:   ; preds = %_ZNSt10unique_ptrIN4llvm16PBQPRAConstraintESt14default_deleteIS1_EED2Ev.exit97, %._crit_edge.loopexit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  store ptr %1, ptr %17, align 8
  store ptr %i.bu, ptr %.sroa.2.0..sroa_idx, align 8
  store ptr %i.bw, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.ln, i8 0, i64 200, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  %i.oi = load ptr, ptr %i.db, align 8, !tbaa !280 ; 2 uses
  %i.oj = load ptr, ptr %i.eq, align 8, !tbaa !355, !nonnull !93, !align !158 ; 2 uses
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !47
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 200
  %i.om = load ptr, ptr %i.ol, align 8
  %i.on = call noundef ptr %i.om(ptr noundef nonnull align 8 dereferenceable(344) %i.oj) #26, !inline_history !635 ; 5 uses
  %i.oo = load ptr, ptr %i.ls, align 8, !tbaa !73 ; 3 uses
  %.not4.i.i.i.i = icmp eq ptr %i.oo, %i.lt
  br i1 %.not4.i.i.i.i, label %._crit_edge235.i.thread, label %.lr.ph.i.i.i.i98

._crit_edge235.i.thread:                          ; preds = %_ZN4llvm4PBQP8RegAlloc13GraphMetadataD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store i32 0, ptr %i.lu, align 8, !tbaa !71
  store ptr null, ptr %i.lv, align 8, !tbaa !72
  store ptr %i.lu, ptr %i.lw, align 8, !tbaa !73
  store ptr %i.lu, ptr %i.lx, align 8, !tbaa !74
  store i64 0, ptr %i.ly, align 8, !tbaa !75
  call void @_ZNSt8_Rb_treeIN4llvm8RegisterESt4pairIKS1_St6vectorINS0_10MCRegisterESaIS5_EEESt10_Select1stIS8_ESt4lessIS1_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %_ZN12_GLOBAL__N_112RegAllocPBQP15initializeGraphERN4llvm4PBQP8RegAlloc11PBQPRAGraphERNS1_10VirtRegMapERNS1_7SpillerE.exit

.lr.ph.i.i.i.i98:                                 ; preds = %_ZN4llvm4PBQP8RegAlloc13GraphMetadataD2Ev.exit, %.lr.ph.i.i.i.i98
  %.06.i.i.i.i = phi i64 [ %i.oq, %.lr.ph.i.i.i.i98 ], [ 0, %_ZN4llvm4PBQP8RegAlloc13GraphMetadataD2Ev.exit ] ; 2 uses
  %.sroa.02.05.i.i.i.i = phi ptr [ %i.op, %.lr.ph.i.i.i.i98 ], [ %i.oo, %_ZN4llvm4PBQP8RegAlloc13GraphMetadataD2Ev.exit ]
  %i.op = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.02.05.i.i.i.i) #29 ; 2 uses
  %i.oq = add nuw nsw i64 %.06.i.i.i.i, 1         ; 3 uses
  %.not.i.i.i.i99 = icmp eq ptr %i.op, %i.lt
  br i1 %.not.i.i.i.i99, label %_ZSt10__distanceISt23_Rb_tree_const_iteratorIN4llvm8RegisterEEENSt15iterator_traitsIT_E15difference_typeES5_S5_St18input_iterator_tag.exit.i.i.i, label %.lr.ph.i.i.i.i98, !llvm.loop !636

_ZSt10__distanceISt23_Rb_tree_const_iteratorIN4llvm8RegisterEEENSt15iterator_traitsIT_E15difference_typeES5_S5_St18input_iterator_tag.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i98
  %i.or = icmp samesign ugt i64 %.06.i.i.i.i, 2305843009213693950
  br i1 %i.or, label %bb.ab, label %_ZNSt12_Vector_baseIN4llvm8RegisterESaIS1_EE11_M_allocateEm.exit.i.i.i

bb.ab:                                            ; preds = %_ZSt10__distanceISt23_Rb_tree_const_iteratorIN4llvm8RegisterEEENSt15iterator_traitsIT_E15difference_typeES5_S5_St18input_iterator_tag.exit.i.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #27
  unreachable

_ZNSt12_Vector_baseIN4llvm8RegisterESaIS1_EE11_M_allocateEm.exit.i.i.i: ; preds = %_ZSt10__distanceISt23_Rb_tree_const_iteratorIN4llvm8RegisterEEENSt15iterator_traitsIT_E15difference_typeES5_S5_St18input_iterator_tag.exit.i.i.i
  %i.os = shl nuw nsw i64 %i.oq, 2
  %i.ot = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.os) #25 ; 3 uses
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNSt12_Vector_baseIN4llvm8RegisterESaIS1_EE11_M_allocateEm.exit.i.i.i
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.ox, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ot, %_ZNSt12_Vector_baseIN4llvm8RegisterESaIS1_EE11_M_allocateEm.exit.i.i.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i = phi ptr [ %i.ow, %.lr.ph.i.i.i.i.i.i.i ], [ %i.oo, %_ZNSt12_Vector_baseIN4llvm8RegisterESaIS1_EE11_M_allocateEm.exit.i.i.i ] ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 32
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !128
  store i32 %i.ov, ptr %.09.i.i.i.i.i.i.i, align 4, !tbaa !128
  %i.ow = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.04.08.i.i.i.i.i.i.i) #29 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ow, %i.lt
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph225.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !637

.lr.ph225.i:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.ot, i64 %i.oq
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store i32 0, ptr %i.lu, align 8, !tbaa !71
  store ptr null, ptr %i.lv, align 8, !tbaa !72
  store ptr %i.lu, ptr %i.lw, align 8, !tbaa !73
  store ptr %i.lu, ptr %i.lx, align 8, !tbaa !74
  store i64 0, ptr %i.ly, align 8, !tbaa !75
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oi, i64 48
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oi, i64 392
  %i.pb = getelementptr inbounds nuw i8, ptr %i.on, i64 8
  %i.pc = getelementptr inbounds nuw i8, ptr %i.on, i64 56
  br label %bb.ac

bb.ac:                                            ; preds = %bb.cb, %.lr.ph225.i
  %.sroa.16.0 = phi ptr [ %i.oy, %.lr.ph225.i ], [ %.sroa.16.2, %bb.cb ] ; 6 uses
  %.sroa.0345.0 = phi ptr [ %i.ot, %.lr.ph225.i ], [ %.sroa.0345.2, %bb.cb ] ; 12 uses
  %i.pd = phi ptr [ %i.ox, %.lr.ph225.i ], [ %.sroa.9.1, %bb.cb ] ; 2 uses
  %i.pe = ptrtoaddr ptr %i.pd to i64              ; 2 uses
  %i.pf = getelementptr inbounds i8, ptr %i.pd, i64 -4 ; 13 uses
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !128 ; 18 uses
  %i.ph = and i32 %i.pg, 2147483647               ; 6 uses
  %i.pi = load i32, ptr %i.ob, align 8, !tbaa !142 ; 3 uses
  %i.pj = icmp ugt i32 %i.pi, %i.ph
  br i1 %i.pj, label %_ZNK4llvm13LiveIntervals11hasIntervalENS_8RegisterE.exit.i.i, label %bb.ad

_ZNK4llvm13LiveIntervals11hasIntervalENS_8RegisterE.exit.i.i: ; preds = %bb.ac
  %i.pk = zext nneg i32 %i.ph to i64              ; 2 uses
  %i.pl = load ptr, ptr %i.oc, align 8, !tbaa !95 ; 2 uses
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.pl, i64 %i.pk
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !385 ; 2 uses
  %.not.i.i = icmp eq ptr %i.pn, null
  br i1 %.not.i.i, label %_ZN4llvm13LiveIntervals31createAndComputeVirtRegIntervalENS_8RegisterE.exit.i.i, label %_ZN4llvm13LiveIntervals11getIntervalENS_8RegisterE.exit.i

bb.ad:                                            ; preds = %bb.ac
  %i.po = add nuw i32 %i.ph, 1
  %i.pp = zext i32 %i.po to i64                   ; 2 uses
  %i.pq = zext nneg i32 %i.pi to i64              ; 2 uses
  %i.pr = load ptr, ptr %i.od, align 8, !tbaa !391
  %i.ps = sub nuw nsw i64 %i.pp, %i.pq            ; 2 uses
  %i.pt = load i32, ptr %i.oe, align 4, !tbaa !143
  %.not.i.i.i.i.i.not.i.i.i.i.i = icmp ult i32 %i.ph, %i.pt
  br i1 %.not.i.i.i.i.i.not.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12LiveIntervalELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i.i.i.i.i.i, label %bb.ae, !prof !372

bb.ae:                                            ; preds = %bb.ad
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(25) %i.oc, ptr noundef nonnull %i.od, i64 noundef %i.pp, i64 noundef 8) #26
  %.pre.i.i.i.i.i.i.i.i = load i32, ptr %i.ob, align 8, !tbaa !142 ; 2 uses
  %.pre.i.i.i.i.i.i.i = zext i32 %.pre.i.i.i.i.i.i.i.i to i64
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12LiveIntervalELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i.i.i.i.i.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_12LiveIntervalELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ae, %bb.ad
  %.pre-phi.i.i.i.i.i.i.i = phi i64 [ %i.pq, %bb.ad ], [ %.pre.i.i.i.i.i.i.i, %bb.ae ]
  %i.pu = phi i32 [ %i.pi, %bb.ad ], [ %.pre.i.i.i.i.i.i.i.i, %bb.ae ]
  %i.pv = load ptr, ptr %i.oc, align 8, !tbaa !95 ; 2 uses
  %i.pw = getelementptr inbounds nuw [8 x i8], ptr %i.pv, i64 %.pre-phi.i.i.i.i.i.i.i ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ps, 3
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseIPNS_12LiveIntervalELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.py, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.pw, %_ZN4llvm23SmallVectorTemplateBaseIPNS_12LiveIntervalELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  store ptr %i.pr, ptr %.07.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !385
  %i.py = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.py, %i.px
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm10IndexedMapIPNS_12LiveIntervalENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !3

_ZN4llvm10IndexedMapIPNS_12LiveIntervalENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.pz = trunc nuw i64 %i.ps to i32
  %i.qa = add i32 %i.pu, %i.pz
  store i32 %i.qa, ptr %i.ob, align 8, !tbaa !142
  %.pre.i.i = zext nneg i32 %i.ph to i64
  br label %_ZN4llvm13LiveIntervals31createAndComputeVirtRegIntervalENS_8RegisterE.exit.i.i

_ZN4llvm13LiveIntervals31createAndComputeVirtRegIntervalENS_8RegisterE.exit.i.i: ; preds = %_ZN4llvm10IndexedMapIPNS_12LiveIntervalENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i.i.i.i, %_ZNK4llvm13LiveIntervals11hasIntervalENS_8RegisterE.exit.i.i
  %.pre-phi.i.i = phi i64 [ %.pre.i.i, %_ZN4llvm10IndexedMapIPNS_12LiveIntervalENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i.i.i.i ], [ %i.pk, %_ZNK4llvm13LiveIntervals11hasIntervalENS_8RegisterE.exit.i.i ]
  %i.qb = phi ptr [ %i.pv, %_ZN4llvm10IndexedMapIPNS_12LiveIntervalENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i.i.i.i ], [ %i.pl, %_ZNK4llvm13LiveIntervals11hasIntervalENS_8RegisterE.exit.i.i ]
  %i.qc = getelementptr inbounds nuw [8 x i8], ptr %i.qb, i64 %.pre-phi.i.i
  %i.qd = call noundef nonnull align 8 dereferenceable(120) ptr @_ZN4llvm13LiveIntervals14createIntervalENS_8RegisterE(i32 %i.pg) #26 ; 3 uses
  store ptr %i.qd, ptr %i.qc, align 8, !tbaa !385
  %i.qe = call noundef zeroext i1 @_ZN4llvm13LiveIntervals22computeVirtRegIntervalERNS_12LiveIntervalE(ptr noundef nonnull align 8 dereferenceable(424) %i.bu, ptr noundef nonnull align 8 dereferenceable(120) %i.qd) #26 ; 0 uses
  br label %_ZN4llvm13LiveIntervals11getIntervalENS_8RegisterE.exit.i

_ZN4llvm13LiveIntervals11getIntervalENS_8RegisterE.exit.i: ; preds = %_ZN4llvm13LiveIntervals31createAndComputeVirtRegIntervalENS_8RegisterE.exit.i.i, %_ZNK4llvm13LiveIntervals11hasIntervalENS_8RegisterE.exit.i.i
  %.0.i.i = phi ptr [ %i.qd, %_ZN4llvm13LiveIntervals31createAndComputeVirtRegIntervalENS_8RegisterE.exit.i.i ], [ %i.pn, %_ZNK4llvm13LiveIntervals11hasIntervalENS_8RegisterE.exit.i.i ] ; 4 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  %i.qg = load i32, ptr %i.qf, align 8, !tbaa !142
  %.not.i.i.i100 = icmp eq i32 %i.qg, 0
  br i1 %.not.i.i.i100, label %bb.af, label %bb.an

bb.af:                                            ; preds = %_ZN4llvm13LiveIntervals11getIntervalENS_8RegisterE.exit.i
  %i.qh = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 112 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.qh, align 8, !tbaa !128 ; 5 uses
  %.02022.i.i.i.i105 = load ptr, ptr %i.mg, align 8, !tbaa !375 ; 2 uses
  %.not23.i.i.i.i106 = icmp eq ptr %.02022.i.i.i.i105, null
  br i1 %.not23.i.i.i.i106, label %._crit_edge.thread.i.i.i.i115, label %.lr.ph.i.i.i82.i

.lr.ph.i.i.i82.i:                                 ; preds = %bb.af, %.lr.ph.i.i.i82.i
  %.02024.i.i.i.i107 = phi ptr [ %.020.i.i.i.i110, %.lr.ph.i.i.i82.i ], [ %.02022.i.i.i.i105, %bb.af ] ; 4 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %.02024.i.i.i.i107, i64 32
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !377 ; 2 uses
  %i.qk = icmp ult i32 %.sroa.0.0.copyload.i.i, %i.qj ; 2 uses
  %.in.v.i.i.i.i108 = select i1 %i.qk, i64 16, i64 24
  %.in.i.i.i.i109 = getelementptr inbounds nuw i8, ptr %.02024.i.i.i.i107, i64 %.in.v.i.i.i.i108
  %.020.i.i.i.i110 = load ptr, ptr %.in.i.i.i.i109, align 8, !tbaa !375 ; 2 uses
  %.not.i.i.i83.i = icmp eq ptr %.020.i.i.i.i110, null
  br i1 %.not.i.i.i83.i, label %._crit_edge.i.i.i.i111, label %.lr.ph.i.i.i82.i, !llvm.loop !2

._crit_edge.i.i.i.i111:                           ; preds = %.lr.ph.i.i.i82.i
  br i1 %i.qk, label %._crit_edge.thread.i.i.i.i115, label %bb.ah

._crit_edge.thread.i.i.i.i115:                    ; preds = %._crit_edge.i.i.i.i111, %bb.af
  %.019.lcssa29.i.i.i.i116 = phi ptr [ %.02024.i.i.i.i107, %._crit_edge.i.i.i.i111 ], [ %i.mh, %bb.af ] ; 4 uses
  %i.ql = load ptr, ptr %i.mi, align 8, !tbaa !73
  %i.qm = icmp eq ptr %.019.lcssa29.i.i.i.i116, %i.ql
  br i1 %i.qm, label %select.unfold.i.i.i113, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge.thread.i.i.i.i115
  %i.qn = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i.i116) #29
  %.phi.trans.insert.i.i.i117 = getelementptr inbounds nuw i8, ptr %i.qn, i64 32
  %.pre.i.i.i118 = load i32, ptr %.phi.trans.insert.i.i.i117, align 4, !tbaa !377
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %._crit_edge.i.i.i.i111
  %i.qo = phi i32 [ %.pre.i.i.i118, %bb.ag ], [ %i.qj, %._crit_edge.i.i.i.i111 ]
  %.019.lcssa28.i.i.i.i112 = phi ptr [ %.019.lcssa29.i.i.i.i116, %bb.ag ], [ %.02024.i.i.i.i107, %._crit_edge.i.i.i.i111 ]
  %i.qp = icmp ult i32 %i.qo, %.sroa.0.0.copyload.i.i
  br i1 %i.qp, label %select.unfold.i.i.i113, label %_ZNSt3setIN4llvm8RegisterESt4lessIS1_ESaIS1_EE6insertEOS1_.exit.i

select.unfold.i.i.i113:                           ; preds = %bb.ah, %._crit_edge.thread.i.i.i.i115
  %.sroa.4.0.i.ph.i.i.i114 = phi ptr [ %.019.lcssa29.i.i.i.i116, %._crit_edge.thread.i.i.i.i115 ], [ %.019.lcssa28.i.i.i.i112, %bb.ah ] ; 3 uses
  %i.qq = icmp eq ptr %.sroa.4.0.i.ph.i.i.i114, %i.mh
  br i1 %i.qq, label %_ZNSt8_Rb_treeIN4llvm8RegisterES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %select.unfold.i.i.i113
  %i.qr = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i.i114, i64 32
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !377
  %i.qt = icmp ult i32 %.sroa.0.0.copyload.i.i, %i.qs
  br label %_ZNSt8_Rb_treeIN4llvm8RegisterES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i

_ZNSt8_Rb_treeIN4llvm8RegisterES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i: ; preds = %bb.ai, %select.unfold.i.i.i113
  %i.qu = phi i1 [ %i.qt, %bb.ai ], [ true, %select.unfold.i.i.i113 ]
  %i.qv = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #25 ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 32
  store i32 %.sroa.0.0.copyload.i.i, ptr %i.qw, align 4, !tbaa !128
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.qu, ptr noundef nonnull %i.qv, ptr noundef nonnull %.sroa.4.0.i.ph.i.i.i114, ptr noundef nonnull align 8 dereferenceable(32) %i.mh) #26
  %i.qx = load i64, ptr %i.mj, align 8, !tbaa !75
  %i.qy = add i64 %i.qx, 1
  store i64 %i.qy, ptr %i.mj, align 8, !tbaa !75
  %.sroa.0.0.copyload.i84.i.pre = load i32, ptr %i.qh, align 8, !tbaa !128
  br label %_ZNSt3setIN4llvm8RegisterESt4lessIS1_ESaIS1_EE6insertEOS1_.exit.i

_ZNSt3setIN4llvm8RegisterESt4lessIS1_ESaIS1_EE6insertEOS1_.exit.i: ; preds = %_ZNSt8_Rb_treeIN4llvm8RegisterES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i, %bb.ah
  %.sroa.0.0.copyload.i84.i = phi i32 [ %.sroa.0.0.copyload.i84.i.pre, %_ZNSt8_Rb_treeIN4llvm8RegisterES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i ], [ %.sroa.0.0.copyload.i.i, %bb.ah ] ; 4 uses
  %.041.i.i261 = load ptr, ptr %i.mk, align 8, !tbaa !375 ; 3 uses
  %.not42.i.i262 = icmp eq ptr %.041.i.i261, null
  br i1 %.not42.i.i262, label %_ZNSt8_Rb_treeIN4llvm8RegisterES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i286, label %.lr.ph.i.i263

.lr.ph.i.i263:                                    ; preds = %_ZNSt3setIN4llvm8RegisterESt4lessIS1_ESaIS1_EE6insertEOS1_.exit.i, %bb.al
  %.044.i.i264 = phi ptr [ %.0.i.i297, %bb.al ], [ %.041.i.i261, %_ZNSt3setIN4llvm8RegisterESt4lessIS1_ESaIS1_EE6insertEOS1_.exit.i ] ; 7 uses
  %.02243.i.i265 = phi ptr [ %.123.i.i296, %bb.al ], [ %i.lt, %_ZNSt3setIN4llvm8RegisterESt4lessIS1_ESaIS1_EE6insertEOS1_.exit.i ] ; 3 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %.044.i.i264, i64 32
  %i.ra = load i32, ptr %i.qz, align 4, !tbaa !377 ; 2 uses
  %i.rb = icmp ult i32 %i.ra, %.sroa.0.0.copyload.i84.i
  br i1 %i.rb, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i.i263
  %i.rc = icmp ult i32 %.sroa.0.0.copyload.i84.i, %i.ra
  br i1 %i.rc, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.rd = getelementptr inbounds nuw i8, ptr %.044.i.i264, i64 16
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !392 ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %.044.i.i264, i64 24
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !393 ; 2 uses
  %.not10.i.i.i266 = icmp eq ptr %i.re, null
  br i1 %.not10.i.i.i266, label %_ZNSt8_Rb_treeIN4llvm8RegisterES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i275, label %.lr.ph.i.i.i267

.lr.ph.i.i.i267:                                  ; preds = %bb.ak, %.lr.ph.i.i.i267
  %.012.i.i.i268 = phi ptr [ %.1.i.i.i273, %.lr.ph.i.i.i267 ], [ %i.re, %bb.ak ] ; 3 uses
  %.0811.i.i.i269 = phi ptr [ %.19.i.i.i270, %.lr.ph.i.i.i267 ], [ %.044.i.i264, %bb.ak ]
  %i.rh = getelementptr inbounds nuw i8, ptr %.012.i.i.i268, i64 32
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !377
  %i.rj = icmp ult i32 %i.ri, %.sroa.0.0.copyload.i84.i ; 2 uses
  %.19.i.i.i270 = select i1 %i.rj, ptr %.0811.i.i.i269, ptr %.012.i.i.i268 ; 2 uses
  %.1.in.v.i.i.i271 = select i1 %i.rj, i64 24, i64 16
  %.1.in.i.i.i272 = getelementptr inbounds nuw i8, ptr %.012.i.i.i268, i64 %.1.in.v.i.i.i271
  %.1.i.i.i273 = load ptr, ptr %.1.in.i.i.i272, align 8, !tbaa !375 ; 2 uses
  %.not.i.i.i274 = icmp eq ptr %.1.i.i.i273, null
  br i1 %.not.i.i.i274, label %_ZNSt8_Rb_treeIN4llvm8RegisterES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i275, label %.lr.ph.i.i.i267, !llvm.loop !4

_ZNSt8_Rb_treeIN4llvm8RegisterES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i275: ; preds = %.lr.ph.i.i.i267, %bb.ak
  %.08.lcssa.i.i.i276 = phi ptr [ %.044.i.i264, %bb.ak ], [ %.19.i.i.i270, %.lr.ph.i.i.i267 ] ; 2 uses
  %.not10.i24.i.i277 = icmp eq ptr %i.rg, null
  br i1 %.not10.i24.i.i277, label %_ZNSt8_Rb_treeIN4llvm8RegisterES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i286, label %.lr.ph.i25.i.i278

.lr.ph.i25.i.i278:                                ; preds = %_ZNSt8_Rb_treeIN4llvm8RegisterES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i275, %.lr.ph.i25.i.i278
  %.012.i26.i.i279 = phi ptr [ %.1.i31.i.i284, %.lr.ph.i25.i.i278 ], [ %i.rg, %_ZNSt8_Rb_treeIN4llvm8RegisterES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i275 ] ; 3 uses
  %.0811.i27.i.i280 = phi ptr [ %.19.i28.i.i281, %.lr.ph.i25.i.i278 ], [ %.02243.i.i265, %_ZNSt8_Rb_treeIN4llvm8RegisterES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i275 ]
  %i.rk = getelementptr inbounds nuw i8, ptr %.012.i26.i.i279, i64 32
  %i.rl = load i32, ptr %i.rk, align 4, !tbaa !377
  %i.rm = icmp ult i32 %.sroa.0.0.copyload.i84.i, %i.rl ; 2 uses
  %.19.i28.i.i281 = select i1 %i.rm, ptr %.012.i26.i.i279, ptr %.0811.i27.i.i280 ; 2 uses
  %.1.in.v.i29.i.i282 = select i1 %i.rm, i64 16, i64 24
  %.1.in.i30.i.i283 = getelementptr inbounds nuw i8, ptr %.012.i26.i.i279, i64 %.1.in.v.i29.i.i282
  %.1.i31.i.i284 = load ptr, ptr %.1.in.i30.i.i283, align 8, !tbaa !375 ; 2 uses
  %.not.i32.i.i285 = icmp eq ptr %.1.i31.i.i284, null
  br i1 %.not.i32.i.i285, label %_ZNSt8_Rb_treeIN4llvm8RegisterES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i286, label %.lr.ph.i25.i.i278, !llvm.loop !5

bb.al:                                            ; preds = %bb.aj, %.lr.ph.i.i263
  %.sink.i.i295 = phi i64 [ 24, %.lr.ph.i.i263 ], [ 16, %bb.aj ]
  %.123.i.i296 = phi ptr [ %.02243.i.i265, %.lr.ph.i.i263 ], [ %.044.i.i264, %bb.aj ] ; 3 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %.044.i.i264, i64 %.sink.i.i295
  %.0.i.i297 = load ptr, ptr %i.rn, align 8, !tbaa !375 ; 2 uses
  %.not.i.i298 = icmp eq ptr %.0.i.i297, null
  br i1 %.not.i.i298, label %_ZNSt8_Rb_treeIN4llvm8RegisterES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i286, label %.lr.ph.i.i263, !llvm.loop !6

_ZNSt8_Rb_treeIN4llvm8RegisterES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i286: ; preds = %bb.al, %.lr.ph.i25.i.i278, %_ZNSt8_Rb_treeIN4llvm8RegisterES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i275, %_ZNSt3setIN4llvm8RegisterESt4lessIS1_ESaIS1_EE6insertEOS1_.exit.i
  %.sroa.037.0.i.i287 = phi ptr [ %.08.lcssa.i.i.i276, %.lr.ph.i25.i.i278 ], [ %.08.lcssa.i.i.i276, %_ZNSt8_Rb_treeIN4llvm8RegisterES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i275 ], [ %i.lt, %_ZNSt3setIN4llvm8RegisterESt4lessIS1_ESaIS1_EE6insertEOS1_.exit.i ], [ %.123.i.i296, %bb.al ] ; 3 uses
  %.sroa.3.0.i.i288 = phi ptr [ %.19.i28.i.i281, %.lr.ph.i25.i.i278 ], [ %.02243.i.i265, %_ZNSt8_Rb_treeIN4llvm8RegisterES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i275 ], [ %i.lt, %_ZNSt3setIN4llvm8RegisterESt4lessIS1_ESaIS1_EE6insertEOS1_.exit.i ], [ %.123.i.i296, %bb.al ] ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_112RegAllocPBQP20runOnMachineFunctionERN4llvm15MachineFunctionE:bb.a
  %i.va = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.uz) #25 ; 8 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 %i.us
  store i32 %i.sk, ptr %i.vb, align 4, !tbaa !128
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.0166.0216.i, %.sroa.14.0218.i
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvm10MCRegisterESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN4llvm10MCRegisterESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.vc = ptrtoaddr ptr %i.va to i64
  %i.vd = add i64 %i.uq, -4
  %i.ve = sub i64 %i.vd, %i.ur                    ; 2 uses
  %i.vf = lshr i64 %i.ve, 2
  %i.vg = add nuw nsw i64 %i.vf, 1                ; 2 uses
  %min.iters.check843 = icmp ult i64 %i.ve, 28
  %i.vh = sub i64 %i.ur, %i.vc
  %diff.check841 = icmp ugt i64 %i.vh, -32
  %or.cond = or i1 %min.iters.check843, %diff.check841
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader861, label %vector.ph844

vector.ph844:                                     ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec845 = and i64 %i.vg, 9223372036854775800  ; 3 uses
  %i.vi = shl i64 %n.vec845, 2                    ; 2 uses
  %i.vj = getelementptr i8, ptr %i.va, i64 %i.vi  ; 2 uses
  %i.vk = getelementptr i8, ptr %.sroa.0166.0216.i, i64 %i.vi
  br label %vector.body846

vector.body846:                                   ; preds = %vector.body846, %vector.ph844
  %index847 = phi i64 [ 0, %vector.ph844 ], [ %index.next852, %vector.body846 ] ; 2 uses
  %i.vl = shl i64 %index847, 2                    ; 2 uses
  %next.gep848 = getelementptr i8, ptr %i.va, i64 %i.vl ; 2 uses
  %next.gep849 = getelementptr i8, ptr %.sroa.0166.0216.i, i64 %i.vl ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !727)
  call void @llvm.experimental.noalias.scope.decl(metadata !728)
  %i.vm = getelementptr i8, ptr %next.gep849, i64 16
  %wide.load850 = load <4 x i32>, ptr %next.gep849, align 4, !tbaa !128, !alias.scope !728, !noalias !727
  %wide.load851 = load <4 x i32>, ptr %i.vm, align 4, !tbaa !128, !alias.scope !728, !noalias !727
  %i.vn = getelementptr i8, ptr %next.gep848, i64 16
  store <4 x i32> %wide.load850, ptr %next.gep848, align 4, !tbaa !128, !alias.scope !727, !noalias !728
  store <4 x i32> %wide.load851, ptr %i.vn, align 4, !tbaa !128, !alias.scope !727, !noalias !728
  %index.next852 = add nuw i64 %index847, 8       ; 2 uses
  %i.vo = icmp eq i64 %index.next852, %n.vec845
  br i1 %i.vo, label %middle.block853, label %vector.body846, !llvm.loop !646

middle.block853:                                  ; preds = %vector.body846
  %cmp.n854 = icmp eq i64 %i.vg, %n.vec845
  br i1 %cmp.n854, label %_ZNSt6vectorIN4llvm10MCRegisterESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader861

.lr.ph.i.i.i.i.i.i.preheader861:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block853
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.va, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.vj, %middle.block853 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %.sroa.0166.0216.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.vk, %middle.block853 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader861, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.vr, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader861 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.vq, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader861 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !727)
  call void @llvm.experimental.noalias.scope.decl(metadata !728)
  %i.vp = load i32, ptr %.0911.i.i.i.i.i.i, align 4, !tbaa !128, !alias.scope !728, !noalias !727
  store i32 %i.vp, ptr %.012.i.i.i.i.i.i, align 4, !tbaa !128, !alias.scope !727, !noalias !728
  %i.vq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.vq, %.sroa.14.0218.i
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvm10MCRegisterESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !647

_ZNSt6vectorIN4llvm10MCRegisterESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block853, %_ZNKSt6vectorIN4llvm10MCRegisterESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.va, %_ZNKSt6vectorIN4llvm10MCRegisterESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.vj, %middle.block853 ], [ %i.vr, %.lr.ph.i.i.i.i.i.i ]
  %i.vs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 4
  %.not.i23.i.i.i = icmp eq ptr %.sroa.0166.0216.i, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4llvm10MCRegisterESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorIN4llvm10MCRegisterESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0166.0216.i, i64 noundef %i.us) #28
  br label %_ZNSt6vectorIN4llvm10MCRegisterESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN4llvm10MCRegisterESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.aw, %_ZNSt6vectorIN4llvm10MCRegisterESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %i.vt = getelementptr inbounds nuw [4 x i8], ptr %i.va, i64 %i.uy
  br label %_ZNSt6vectorIN4llvm10MCRegisterESaIS1_EE9push_backERKS1_.exit.i

_ZNSt6vectorIN4llvm10MCRegisterESaIS1_EE9push_backERKS1_.exit.i: ; preds = %_ZNK4llvm9LiveRange8overlapsERKS0_.exit.i, %_ZNSt6vectorIN4llvm10MCRegisterESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.at, %bb.ap, %.lr.ph221.i
  %.sroa.0166.1.i = phi ptr [ %.sroa.0166.0216.i, %.lr.ph221.i ], [ %.sroa.0166.0216.i, %bb.at ], [ %i.va, %_ZNSt6vectorIN4llvm10MCRegisterESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.0166.0216.i, %bb.ap ], [ %.sroa.0166.0216.i, %_ZNK4llvm9LiveRange8overlapsERKS0_.exit.i ] ; 4 uses
  %.sroa.9170.1.i = phi ptr [ %.sroa.9170.0217.i, %.lr.ph221.i ], [ %i.up, %bb.at ], [ %i.vs, %_ZNSt6vectorIN4llvm10MCRegisterESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.9170.0217.i, %bb.ap ], [ %.sroa.9170.0217.i, %_ZNK4llvm9LiveRange8overlapsERKS0_.exit.i ] ; 3 uses
  %.sroa.14.1.i = phi ptr [ %.sroa.14.0218.i, %.lr.ph221.i ], [ %.sroa.14.0218.i, %bb.at ], [ %i.vt, %_ZNSt6vectorIN4llvm10MCRegisterESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.14.0218.i, %bb.ap ], [ %.sroa.14.0218.i, %_ZNK4llvm9LiveRange8overlapsERKS0_.exit.i ] ; 3 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %.076219.i, i64 2 ; 2 uses
  %.not81.i = icmp eq ptr %i.vu, %i.sh
  br i1 %.not81.i, label %._crit_edge222.i, label %.lr.ph221.i

._crit_edge222.thread.i:                          ; preds = %._crit_edge222.i, %bb.an
  %.sroa.14.0.lcssa290.i = phi ptr [ %.sroa.14.1.i, %._crit_edge222.i ], [ null, %bb.an ]
  %.sroa.0166.0.lcssa289.i = phi ptr [ %.sroa.0166.1.i, %._crit_edge222.i ], [ null, %bb.an ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  store ptr %i.md, ptr %9, align 8, !tbaa !95
  store i32 0, ptr %i.me, align 8, !tbaa !142
  store i32 8, ptr %i.mf, align 4, !tbaa !143
  call fastcc void @_ZN12_GLOBAL__N_112RegAllocPBQP9spillVRegEN4llvm8RegisterERNS1_15SmallVectorImplIS2_EERNS1_15MachineFunctionERNS1_13LiveIntervalsERNS1_10VirtRegMapERNS1_7SpillerE(ptr noundef nonnull align 8 dereferenceable(440) %0, i32 %i.pg, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(1065) %1, ptr noundef nonnull align 8 dereferenceable(424) %i.bu, ptr noundef nonnull align 8 dereferenceable(128) %i.br, ptr noundef nonnull align 8 dereferenceable(8) %i.da)
  %i.vv = load ptr, ptr %9, align 8, !tbaa !95    ; 11 uses
  %i.vw = ptrtoaddr ptr %i.vv to i64              ; 2 uses
  %i.vx = load i32, ptr %i.me, align 8, !tbaa !142 ; 2 uses
  %i.vy = zext i32 %i.vx to i64                   ; 3 uses
  %.idx = shl nuw nsw i64 %i.vy, 2                ; 5 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vv, i64 %.idx ; 2 uses
  %i.wa = ptrtoint ptr %i.pf to i64               ; 2 uses
  %i.wb = ptrtoint ptr %.sroa.0345.0 to i64       ; 4 uses
  %i.wc = sub i64 %i.wa, %i.wb
  %.not.i252 = icmp eq i32 %i.vx, 0
  br i1 %.not.i252, label %_ZNSt6vectorIN4llvm8RegisterESaIS1_EE15_M_range_insertIPS1_EEvN9__gnu_cxx17__normal_iteratorIS5_S3_EET_S9_St20forward_iterator_tag.exit, label %bb.ax

bb.ax:                                            ; preds = %._crit_edge222.thread.i
  %i.wd = ptrtoint ptr %.sroa.16.0 to i64         ; 2 uses
  %i.we = sub i64 %i.wd, %i.wa
  %.not46.i = icmp ult i64 %i.we, %.idx
  br i1 %.not46.i, label %bb.ay, label %.lr.ph.i.i.i.i.i254.preheader

.lr.ph.i.i.i.i.i254.preheader:                    ; preds = %bb.ax
  %i.wf = add nsw i64 %.idx, -4                   ; 2 uses
  %i.wg = lshr exact i64 %i.wf, 2
  %i.wh = add nuw nsw i64 %i.wg, 1                ; 2 uses
  %min.iters.check826 = icmp ult i64 %i.wf, 28
  br i1 %min.iters.check826, label %.lr.ph.i.i.i.i.i254.preheader869, label %vector.memcheck823

vector.memcheck823:                               ; preds = %.lr.ph.i.i.i.i.i254.preheader
  %i.wi = sub i64 %i.pe, %i.vw
  %i.wj = add i64 %i.wi, -5
  %diff.check824 = icmp ult i64 %i.wj, 31
  br i1 %diff.check824, label %.lr.ph.i.i.i.i.i254.preheader869, label %vector.ph827

vector.ph827:                                     ; preds = %vector.memcheck823
  %n.vec828 = and i64 %i.wh, 9223372036854775800  ; 3 uses
  %i.wk = shl i64 %n.vec828, 2                    ; 2 uses
  %i.wl = getelementptr i8, ptr %i.pf, i64 %i.wk
  %i.wm = getelementptr i8, ptr %i.vv, i64 %i.wk
  br label %vector.body829

vector.body829:                                   ; preds = %vector.body829, %vector.ph827
  %index830 = phi i64 [ 0, %vector.ph827 ], [ %index.next835, %vector.body829 ] ; 2 uses
  %i.wn = shl i64 %index830, 2                    ; 2 uses
  %next.gep831 = getelementptr i8, ptr %i.pf, i64 %i.wn ; 2 uses
  %next.gep832 = getelementptr i8, ptr %i.vv, i64 %i.wn ; 2 uses
  %i.wo = getelementptr i8, ptr %next.gep832, i64 16
  %wide.load833 = load <4 x i32>, ptr %next.gep832, align 4, !tbaa !128
  %wide.load834 = load <4 x i32>, ptr %i.wo, align 4, !tbaa !128
  %i.wp = getelementptr i8, ptr %next.gep831, i64 16
  store <4 x i32> %wide.load833, ptr %next.gep831, align 4, !tbaa !128
  store <4 x i32> %wide.load834, ptr %i.wp, align 4, !tbaa !128
  %index.next835 = add nuw i64 %index830, 8       ; 2 uses
  %i.wq = icmp eq i64 %index.next835, %n.vec828
  br i1 %i.wq, label %middle.block836, label %vector.body829, !llvm.loop !648

middle.block836:                                  ; preds = %vector.body829
  %cmp.n837 = icmp eq i64 %i.wh, %n.vec828
  br i1 %cmp.n837, label %_ZSt22__uninitialized_move_aIPN4llvm8RegisterES2_SaIS1_EET0_T_S5_S4_RT1_.exit53.i, label %.lr.ph.i.i.i.i.i254.preheader869

.lr.ph.i.i.i.i.i254.preheader869:                 ; preds = %vector.memcheck823, %.lr.ph.i.i.i.i.i254.preheader, %middle.block836
  %.011.i.i.i.i.i.ph = phi ptr [ %i.pf, %vector.memcheck823 ], [ %i.pf, %.lr.ph.i.i.i.i.i254.preheader ], [ %i.wl, %middle.block836 ]
  %.0810.i.i.i.i.i.ph = phi ptr [ %i.vv, %vector.memcheck823 ], [ %i.vv, %.lr.ph.i.i.i.i.i254.preheader ], [ %i.wm, %middle.block836 ]
  br label %.lr.ph.i.i.i.i.i254

.lr.ph.i.i.i.i.i254:                              ; preds = %.lr.ph.i.i.i.i.i254.preheader869, %.lr.ph.i.i.i.i.i254
  %.011.i.i.i.i.i = phi ptr [ %i.wt, %.lr.ph.i.i.i.i.i254 ], [ %.011.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i254.preheader869 ] ; 2 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.ws, %.lr.ph.i.i.i.i.i254 ], [ %.0810.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i254.preheader869 ] ; 2 uses
  %i.wr = load i32, ptr %.0810.i.i.i.i.i, align 4, !tbaa !128
  store i32 %i.wr, ptr %.011.i.i.i.i.i, align 4, !tbaa !128
  %i.ws = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 4 ; 2 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i255 = icmp eq ptr %i.ws, %i.vz
  br i1 %.not.i.i.i.i.i255, label %_ZSt22__uninitialized_move_aIPN4llvm8RegisterES2_SaIS1_EET0_T_S5_S4_RT1_.exit53.i, label %.lr.ph.i.i.i.i.i254, !llvm.loop !649

_ZSt22__uninitialized_move_aIPN4llvm8RegisterES2_SaIS1_EET0_T_S5_S4_RT1_.exit53.i: ; preds = %.lr.ph.i.i.i.i.i254, %middle.block836
  %i.wu = getelementptr inbounds nuw i8, ptr %i.pf, i64 %.idx
  br label %_ZNSt6vectorIN4llvm8RegisterESaIS1_EE15_M_range_insertIPS1_EEvN9__gnu_cxx17__normal_iteratorIS5_S3_EET_S9_St20forward_iterator_tag.exit

bb.ay:                                            ; preds = %bb.ax
  %i.wv = ashr exact i64 %i.wc, 2                 ; 4 uses
  %i.ww = sub nsw i64 2305843009213693951, %i.wv
  %i.wx = icmp samesign ult i64 %i.ww, %i.vy
  br i1 %i.wx, label %bb.az, label %_ZNKSt6vectorIN4llvm8RegisterESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.az:                                            ; preds = %bb.ay
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #27
  unreachable

_ZNKSt6vectorIN4llvm8RegisterESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.ay
  %.sroa.speculated.i.i259 = call i64 @llvm.umax.i64(i64 %i.wv, i64 %i.vy)
  %i.wy = add nsw i64 %.sroa.speculated.i.i259, %i.wv ; 2 uses
  %i.wz = icmp ult i64 %i.wy, %i.wv
  %i.xa = call i64 @llvm.umin.i64(i64 %i.wy, i64 2305843009213693951)
  %i.xb = select i1 %i.wz, i64 2305843009213693951, i64 %i.xa ; 3 uses
  %.not.i.i260 = icmp eq i64 %i.xb, 0
  br i1 %.not.i.i260, label %_ZNSt12_Vector_baseIN4llvm8RegisterESaIS1_EE11_M_allocateEm.exit.i, label %bb.ba

bb.ba:                                            ; preds = %_ZNKSt6vectorIN4llvm8RegisterESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.xc = shl nuw nsw i64 %i.xb, 2
  %i.xd = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.xc) #25
  br label %_ZNSt12_Vector_baseIN4llvm8RegisterESaIS1_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN4llvm8RegisterESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.ba, %_ZNKSt6vectorIN4llvm8RegisterESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.xe = phi ptr [ %i.xd, %bb.ba ], [ null, %_ZNKSt6vectorIN4llvm8RegisterESaIS1_EE12_M_check_lenEmPKc.exit.i ] ; 7 uses
  %.not7.i.i.i.i.i55.i = icmp eq ptr %.sroa.0345.0, %i.pf
  br i1 %.not7.i.i.i.i.i55.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm8RegisterES2_SaIS1_EET0_T_S5_S4_RT1_.exit.i, label %.lr.ph.i.i.i.i.i56.i.preheader

.lr.ph.i.i.i.i.i56.i.preheader:                   ; preds = %_ZNSt12_Vector_baseIN4llvm8RegisterESaIS1_EE11_M_allocateEm.exit.i
  %i.xf = ptrtoaddr ptr %i.xe to i64
  %i.xg = add i64 %i.pe, -8
  %i.xh = sub i64 %i.xg, %i.wb                    ; 2 uses
  %i.xi = lshr i64 %i.xh, 2
  %i.xj = add nuw nsw i64 %i.xi, 1                ; 2 uses
  %min.iters.check809 = icmp ult i64 %i.xh, 28
  %i.xk = sub i64 %i.wb, %i.xf
  %diff.check807 = icmp ugt i64 %i.xk, -32
  %or.cond857 = or i1 %min.iters.check809, %diff.check807
  br i1 %or.cond857, label %.lr.ph.i.i.i.i.i56.i.preheader868, label %vector.ph810

vector.ph810:                                     ; preds = %.lr.ph.i.i.i.i.i56.i.preheader
  %n.vec811 = and i64 %i.xj, 9223372036854775800  ; 3 uses
  %i.xl = shl i64 %n.vec811, 2                    ; 2 uses
  %i.xm = getelementptr i8, ptr %i.xe, i64 %i.xl  ; 2 uses
  %i.xn = getelementptr i8, ptr %.sroa.0345.0, i64 %i.xl
  br label %vector.body812

vector.body812:                                   ; preds = %vector.body812, %vector.ph810
  %index813 = phi i64 [ 0, %vector.ph810 ], [ %index.next818, %vector.body812 ] ; 2 uses
  %i.xo = shl i64 %index813, 2                    ; 2 uses
  %next.gep814 = getelementptr i8, ptr %i.xe, i64 %i.xo ; 2 uses
  %next.gep815 = getelementptr i8, ptr %.sroa.0345.0, i64 %i.xo ; 2 uses
  %i.xp = getelementptr i8, ptr %next.gep815, i64 16
  %wide.load816 = load <4 x i32>, ptr %next.gep815, align 4, !tbaa !128
  %wide.load817 = load <4 x i32>, ptr %i.xp, align 4, !tbaa !128
  %i.xq = getelementptr i8, ptr %next.gep814, i64 16
  store <4 x i32> %wide.load816, ptr %next.gep814, align 4, !tbaa !128
  store <4 x i32> %wide.load817, ptr %i.xq, align 4, !tbaa !128
  %index.next818 = add nuw i64 %index813, 8       ; 2 uses
  %i.xr = icmp eq i64 %index.next818, %n.vec811
  br i1 %i.xr, label %middle.block819, label %vector.body812, !llvm.loop !650

middle.block819:                                  ; preds = %vector.body812
  %cmp.n820 = icmp eq i64 %i.xj, %n.vec811
  br i1 %cmp.n820, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm8RegisterES2_SaIS1_EET0_T_S5_S4_RT1_.exit.i, label %.lr.ph.i.i.i.i.i56.i.preheader868

.lr.ph.i.i.i.i.i56.i.preheader868:                ; preds = %.lr.ph.i.i.i.i.i56.i.preheader, %middle.block819
  %.09.i.i.i.i.i57.i.ph = phi ptr [ %i.xe, %.lr.ph.i.i.i.i.i56.i.preheader ], [ %i.xm, %middle.block819 ]
  %.sroa.04.08.i.i.i.i.i58.i.ph = phi ptr [ %.sroa.0345.0, %.lr.ph.i.i.i.i.i56.i.preheader ], [ %i.xn, %middle.block819 ]
  br label %.lr.ph.i.i.i.i.i56.i

.lr.ph.i.i.i.i.i56.i:                             ; preds = %.lr.ph.i.i.i.i.i56.i.preheader868, %.lr.ph.i.i.i.i.i56.i
  %.09.i.i.i.i.i57.i = phi ptr [ %i.xu, %.lr.ph.i.i.i.i.i56.i ], [ %.09.i.i.i.i.i57.i.ph, %.lr.ph.i.i.i.i.i56.i.preheader868 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i58.i = phi ptr [ %i.xt, %.lr.ph.i.i.i.i.i56.i ], [ %.sroa.04.08.i.i.i.i.i58.i.ph, %.lr.ph.i.i.i.i.i56.i.preheader868 ] ; 2 uses
  %i.xs = load i32, ptr %.sroa.04.08.i.i.i.i.i58.i, align 4, !tbaa !128
  store i32 %i.xs, ptr %.09.i.i.i.i.i57.i, align 4, !tbaa !128
  %i.xt = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i58.i, i64 4 ; 2 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i57.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i59.i = icmp eq ptr %i.xt, %i.pf
  br i1 %.not.i.i.i.i.i59.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm8RegisterES2_SaIS1_EET0_T_S5_S4_RT1_.exit.i, label %.lr.ph.i.i.i.i.i56.i, !llvm.loop !651

_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm8RegisterES2_SaIS1_EET0_T_S5_S4_RT1_.exit.i: ; preds = %.lr.ph.i.i.i.i.i56.i, %middle.block819, %_ZNSt12_Vector_baseIN4llvm8RegisterESaIS1_EE11_M_allocateEm.exit.i
  %.0.lcssa.i.i.i.i.i60.i = phi ptr [ %i.xe, %_ZNSt12_Vector_baseIN4llvm8RegisterESaIS1_EE11_M_allocateEm.exit.i ], [ %i.xm, %middle.block819 ], [ %i.xu, %.lr.ph.i.i.i.i.i56.i ] ; 4 uses
  %i.xv = add nsw i64 %.idx, -4                   ; 2 uses
  %i.xw = lshr exact i64 %i.xv, 2
  %i.xx = add nuw nsw i64 %i.xw, 1                ; 2 uses
  %min.iters.check792 = icmp ult i64 %i.xv, 28
  %.0.lcssa.i.i.i.i.i60.i790 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i60.i to i64
  %i.xy = sub i64 %i.vw, %.0.lcssa.i.i.i.i.i60.i790
  %diff.check = icmp ugt i64 %i.xy, -32
  %or.cond858 = select i1 %min.iters.check792, i1 true, i1 %diff.check
  br i1 %or.cond858, label %.lr.ph.i.i.i.i62.i.preheader, label %vector.ph793

vector.ph793:                                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm8RegisterES2_SaIS1_EET0_T_S5_S4_RT1_.exit.i
  %n.vec794 = and i64 %i.xx, 9223372036854775800  ; 3 uses
  %i.xz = shl i64 %n.vec794, 2                    ; 2 uses
  %i.ya = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i60.i, i64 %i.xz ; 2 uses
  %i.yb = getelementptr i8, ptr %i.vv, i64 %i.xz
  br label %vector.body795

vector.body795:                                   ; preds = %vector.body795, %vector.ph793
  %index796 = phi i64 [ 0, %vector.ph793 ], [ %index.next801, %vector.body795 ] ; 2 uses
  %i.yc = shl i64 %index796, 2                    ; 2 uses
  %next.gep797 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i60.i, i64 %i.yc ; 2 uses
  %next.gep798 = getelementptr i8, ptr %i.vv, i64 %i.yc ; 2 uses
  %i.yd = getelementptr i8, ptr %next.gep798, i64 16
  %wide.load799 = load <4 x i32>, ptr %next.gep798, align 4, !tbaa !128
  %wide.load800 = load <4 x i32>, ptr %i.yd, align 4, !tbaa !128
  %i.ye = getelementptr i8, ptr %next.gep797, i64 16
  store <4 x i32> %wide.load799, ptr %next.gep797, align 4, !tbaa !128
  store <4 x i32> %wide.load800, ptr %i.ye, align 4, !tbaa !128
  %index.next801 = add nuw i64 %index796, 8       ; 2 uses
  %i.yf = icmp eq i64 %index.next801, %n.vec794
  br i1 %i.yf, label %middle.block802, label %vector.body795, !llvm.loop !652

middle.block802:                                  ; preds = %vector.body795
  %cmp.n803 = icmp eq i64 %i.xx, %n.vec794
  br i1 %cmp.n803, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm8RegisterES2_SaIS1_EET0_T_S5_S4_RT1_.exit74.i, label %.lr.ph.i.i.i.i62.i.preheader

.lr.ph.i.i.i.i62.i.preheader:                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm8RegisterES2_SaIS1_EET0_T_S5_S4_RT1_.exit.i, %middle.block802
  %.011.i.i.i.i63.i.ph = phi ptr [ %.0.lcssa.i.i.i.i.i60.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm8RegisterES2_SaIS1_EET0_T_S5_S4_RT1_.exit.i ], [ %i.ya, %middle.block802 ]
  %.0810.i.i.i.i64.i.ph = phi ptr [ %i.vv, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm8RegisterES2_SaIS1_EET0_T_S5_S4_RT1_.exit.i ], [ %i.yb, %middle.block802 ]
  br label %.lr.ph.i.i.i.i62.i

.lr.ph.i.i.i.i62.i:                               ; preds = %.lr.ph.i.i.i.i62.i.preheader, %.lr.ph.i.i.i.i62.i
  %.011.i.i.i.i63.i = phi ptr [ %i.yi, %.lr.ph.i.i.i.i62.i ], [ %.011.i.i.i.i63.i.ph, %.lr.ph.i.i.i.i62.i.preheader ] ; 2 uses
  %.0810.i.i.i.i64.i = phi ptr [ %i.yh, %.lr.ph.i.i.i.i62.i ], [ %.0810.i.i.i.i64.i.ph, %.lr.ph.i.i.i.i62.i.preheader ] ; 2 uses
  %i.yg = load i32, ptr %.0810.i.i.i.i64.i, align 4, !tbaa !128
  store i32 %i.yg, ptr %.011.i.i.i.i63.i, align 4, !tbaa !128
  %i.yh = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i64.i, i64 4 ; 2 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i63.i, i64 4 ; 2 uses
  %.not.i.i.i.i65.i = icmp eq ptr %i.yh, %i.vz
  br i1 %.not.i.i.i.i65.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm8RegisterES2_SaIS1_EET0_T_S5_S4_RT1_.exit74.i, label %.lr.ph.i.i.i.i62.i, !llvm.loop !653

_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm8RegisterES2_SaIS1_EET0_T_S5_S4_RT1_.exit74.i: ; preds = %.lr.ph.i.i.i.i62.i, %middle.block802
  %.lcssa697 = phi ptr [ %i.ya, %middle.block802 ], [ %i.yi, %.lr.ph.i.i.i.i62.i ]
  %.not.i75.i = icmp eq ptr %.sroa.0345.0, null
  br i1 %.not.i75.i, label %_ZNSt12_Vector_baseIN4llvm8RegisterESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.bb

bb.bb:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm8RegisterES2_SaIS1_EET0_T_S5_S4_RT1_.exit74.i
  %i.yj = sub i64 %i.wd, %i.wb
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0345.0, i64 noundef %i.yj) #28
  br label %_ZNSt12_Vector_baseIN4llvm8RegisterESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseIN4llvm8RegisterESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.bb, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm8RegisterES2_SaIS1_EET0_T_S5_S4_RT1_.exit74.i
  %i.yk = getelementptr inbounds nuw [4 x i8], ptr %i.xe, i64 %i.xb
  %.pre = load ptr, ptr %9, align 8, !tbaa !95
  br label %_ZNSt6vectorIN4llvm8RegisterESaIS1_EE15_M_range_insertIPS1_EEvN9__gnu_cxx17__normal_iteratorIS5_S3_EET_S9_St20forward_iterator_tag.exit

_ZNSt6vectorIN4llvm8RegisterESaIS1_EE15_M_range_insertIPS1_EEvN9__gnu_cxx17__normal_iteratorIS5_S3_EET_S9_St20forward_iterator_tag.exit: ; preds = %_ZSt22__uninitialized_move_aIPN4llvm8RegisterES2_SaIS1_EET0_T_S5_S4_RT1_.exit53.i, %._crit_edge222.thread.i, %_ZNSt12_Vector_baseIN4llvm8RegisterESaIS1_EE13_M_deallocateEPS1_m.exit.i
  %i.yl = phi ptr [ %i.vv, %._crit_edge222.thread.i ], [ %.pre, %_ZNSt12_Vector_baseIN4llvm8RegisterESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %i.vv, %_ZSt22__uninitialized_move_aIPN4llvm8RegisterES2_SaIS1_EET0_T_S5_S4_RT1_.exit53.i ] ; 2 uses
  %.sroa.16.4 = phi ptr [ %.sroa.16.0, %._crit_edge222.thread.i ], [ %i.yk, %_ZNSt12_Vector_baseIN4llvm8RegisterESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %.sroa.16.0, %_ZSt22__uninitialized_move_aIPN4llvm8RegisterES2_SaIS1_EET0_T_S5_S4_RT1_.exit53.i ] ; 2 uses
  %.sroa.9.2 = phi ptr [ %i.pf, %._crit_edge222.thread.i ], [ %.lcssa697, %_ZNSt12_Vector_baseIN4llvm8RegisterESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %i.wu, %_ZSt22__uninitialized_move_aIPN4llvm8RegisterES2_SaIS1_EET0_T_S5_S4_RT1_.exit53.i ] ; 2 uses
  %.sroa.0345.4 = phi ptr [ %.sroa.0345.0, %._crit_edge222.thread.i ], [ %i.xe, %_ZNSt12_Vector_baseIN4llvm8RegisterESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %.sroa.0345.0, %_ZSt22__uninitialized_move_aIPN4llvm8RegisterES2_SaIS1_EET0_T_S5_S4_RT1_.exit53.i ] ; 2 uses
  %i.ym = icmp eq ptr %i.yl, %i.md
  br i1 %i.ym, label %bb.bz, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorIN4llvm8RegisterESaIS1_EE15_M_range_insertIPS1_EEvN9__gnu_cxx17__normal_iteratorIS5_S3_EET_S9_St20forward_iterator_tag.exit
  call void @free(ptr noundef %i.yl) #26
  br label %bb.bz

bb.bd:                                            ; preds = %._crit_edge222.i
  %i.yn = load ptr, ptr %i.lv, align 8, !tbaa !72 ; 2 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.yn, null
  br i1 %.not10.i.i.i.i.i, label %.critedge.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bd, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.yn, %bb.bd ] ; 4 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.lu, %bb.bd ] ; 2 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.yp = load i32, ptr %i.yo, align 4, !tbaa !377
  %i.yq = icmp ult i32 %i.yp, %i.pg               ; 3 uses
  %.19.i.i.i.i.i = select i1 %i.yq, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.yq, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8, !tbaa !375 ; 2 uses
  %.not.i.i.i.i.i101 = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i101, label %_ZNSt3mapIN4llvm8RegisterESt6vectorINS0_10MCRegisterESaIS3_EESt4lessIS1_ESaISt4pairIKS1_S5_EEE11lower_boundERS9_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !654

_ZNSt3mapIN4llvm8RegisterESt6vectorINS0_10MCRegisterESaIS3_EESt4lessIS1_ESaISt4pairIKS1_S5_EEE11lower_boundERS9_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.yr = icmp eq ptr %.19.i.i.i.i.i, %i.lu
  br i1 %i.yr, label %.critedge.i.i, label %bb.be

bb.be:                                            ; preds = %_ZNSt3mapIN4llvm8RegisterESt6vectorINS0_10MCRegisterESaIS3_EESt4lessIS1_ESaISt4pairIKS1_S5_EEE11lower_boundERS9_.exit.i.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.yq, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.ys = load i32, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !377
  %i.yt = icmp ult i32 %i.pg, %i.ys
  br i1 %i.yt, label %.critedge.i.i, label %_ZNSt3mapIN4llvm8RegisterESt6vectorINS0_10MCRegisterESaIS3_EESt4lessIS1_ESaISt4pairIKS1_S5_EEEixEOS1_.exit.i

.critedge.i.i:                                    ; preds = %bb.be, %_ZNSt3mapIN4llvm8RegisterESt6vectorINS0_10MCRegisterESaIS3_EESt4lessIS1_ESaISt4pairIKS1_S5_EEE11lower_boundERS9_.exit.i.i, %bb.bd
  %.08.lcssa.i.i.i11.i.i = phi ptr [ %.19.i.i.i.i.i, %bb.be ], [ %.19.i.i.i.i.i, %_ZNSt3mapIN4llvm8RegisterESt6vectorINS0_10MCRegisterESaIS3_EESt4lessIS1_ESaISt4pairIKS1_S5_EEE11lower_boundERS9_.exit.i.i ], [ %i.lu, %bb.bd ] ; 11 uses
  %i.yu = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #25 ; 5 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 32
  store i32 %i.pg, ptr %i.yv, align 8, !tbaa !128
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yu, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.yw, i8 0, i64 24, i1 false)
  %i.yx = icmp eq ptr %.08.lcssa.i.i.i11.i.i, %i.lu
  br i1 %i.yx, label %bb.bf, label %bb.bk

bb.bf:                                            ; preds = %.critedge.i.i
  %i.yy = load i64, ptr %i.ly, align 8, !tbaa !75
  %.not.i307 = icmp eq i64 %i.yy, 0
  br i1 %.not.i307, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.yz = load ptr, ptr %i.lx, align 8, !tbaa !375 ; 2 uses
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 32
  %i.zb = load i32, ptr %i.za, align 4, !tbaa !377
  %i.zc = icmp ult i32 %i.zb, %i.pg
  br i1 %i.zc, label %_ZNSt8_Rb_treeIN4llvm8RegisterESt4pairIKS1_St6vectorINS0_10MCRegisterESaIS5_EEESt10_Select1stIS8_ESt4lessIS1_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS3_.exit.thread, label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.02022.i.i = load ptr, ptr %i.lv, align 8, !tbaa !375 ; 2 uses
  %.not23.i.i = icmp eq ptr %.02022.i.i, null
  br i1 %.not23.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i308

.lr.ph.i.i308:                                    ; preds = %bb.bh, %.lr.ph.i.i308
  %.02024.i.i = phi ptr [ %.020.i.i, %.lr.ph.i.i308 ], [ %.02022.i.i, %bb.bh ] ; 5 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 32
  %i.ze = load i32, ptr %i.zd, align 4, !tbaa !377 ; 2 uses
  %i.zf = icmp ult i32 %i.pg, %i.ze               ; 2 uses
  %.in.v.i.i = select i1 %i.zf, i64 16, i64 24
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 %.in.v.i.i
  %.020.i.i = load ptr, ptr %.in.i.i, align 8, !tbaa !375 ; 2 uses
  %.not.i.i309 = icmp eq ptr %.020.i.i, null
  br i1 %.not.i.i309, label %._crit_edge.i.i, label %.lr.ph.i.i308, !llvm.loop !655

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i308
  br i1 %i.zf, label %._crit_edge.thread.i.i, label %bb.bj

end_hunk_1
