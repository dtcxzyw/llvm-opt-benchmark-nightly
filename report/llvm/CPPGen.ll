Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CPPGen?download=true
begin_hunk_0_@_ZN4mlir4pdll16codegenPDLLToCPPERKNS0_3ast6ModuleENS_8ModuleOpERN4llvm11raw_ostreamE:bb.a
_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit84.i.i: ; preds = %bb.cj, %bb.ci, %bb.ch
  %i.np = phi ptr [ %.pre96.i.i, %bb.ch ], [ %i.no, %bb.cj ], [ %i.nh, %bb.ci ] ; 2 uses
  %.0.i83.i.i = phi ptr [ %i.nm, %bb.ch ], [ %.0.i.i79.i.i, %bb.cj ], [ %.0.i.i79.i.i, %bb.ci ] ; 3 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %.0.i83.i.i, i64 24
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !57
  %i.ns = ptrtoint ptr %i.nr to i64
  %i.nt = ptrtoint ptr %i.np to i64
  %i.nu = sub i64 %i.ns, %i.nt
  %i.nv = icmp ult i64 %i.nu, 4
  br i1 %i.nv, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit84.i.i
  %i.nw = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i83.i.i, ptr noundef nonnull @.str.22, i64 noundef 4) #11 ; 0 uses
  br label %_ZN12_GLOBAL__N_17CodeGen27generateConstraintOrRewriteEPKN4mlir4pdll3ast12CallableDeclEbRN4llvm9StringSetINS7_15MallocAllocatorEEE.exit.i

bb.cl:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit84.i.i
  %i.nx = getelementptr inbounds nuw i8, ptr %.0.i83.i.i, i64 32 ; 2 uses
  store i32 168459530, ptr %i.np, align 1
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !61
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 4
  store ptr %i.nz, ptr %i.nx, align 8, !tbaa !61
  br label %_ZN12_GLOBAL__N_17CodeGen27generateConstraintOrRewriteEPKN4mlir4pdll3ast12CallableDeclEbRN4llvm9StringSetINS7_15MallocAllocatorEEE.exit.i

_ZN12_GLOBAL__N_17CodeGen27generateConstraintOrRewriteEPKN4mlir4pdll3ast12CallableDeclEbRN4llvm9StringSetINS7_15MallocAllocatorEEE.exit.i: ; preds = %bb.cl, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %"_ZN4llvm10TypeSwitchIPKN4mlir4pdll3ast4DeclEvE4CaseINS3_15UserRewriteDeclERZN12_GLOBAL__N_17CodeGen29generateConstraintAndRewritesERKNS3_6ModuleENS1_8ModuleOpERNS_9StringSetINS_15MallocAllocatorEEEE3$_1EERS7_OT0_.exit.i.i"

"_ZN4llvm10TypeSwitchIPKN4mlir4pdll3ast4DeclEvE4CaseINS3_15UserRewriteDeclERZN12_GLOBAL__N_17CodeGen29generateConstraintAndRewritesERKNS3_6ModuleENS1_8ModuleOpERNS_9StringSetINS_15MallocAllocatorEEEE3$_1EERS7_OT0_.exit.i.i": ; preds = %_ZN12_GLOBAL__N_17CodeGen27generateConstraintOrRewriteEPKN4mlir4pdll3ast12CallableDeclEbRN4llvm9StringSetINS7_15MallocAllocatorEEE.exit.i, %_ZNK4llvm9StringSetINS_15MallocAllocatorEE8containsENS_9StringRefE.exit.i.i18.i.i, %bb.m, %bb.l, %_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPKN4mlir4pdll3ast4DeclEvEES8_E9castValueINS5_15UserRewriteDeclERKS8_EEDcOT0_.exit.i.i.i, %_ZNK4llvm9StringSetINS_15MallocAllocatorEE8containsENS_9StringRefE.exit.i.i.i.i, %bb.i, %bb.h
  %i.oa = getelementptr inbounds nuw i8, ptr %.037.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.oa, %i.p
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.e

_ZN12_GLOBAL__N_17CodeGen29generateConstraintAndRewritesERKN4mlir4pdll3ast6ModuleENS1_8ModuleOpERN4llvm9StringSetINS8_15MallocAllocatorEEE.exit.i: ; preds = %.loopexit.loopexit.i.i.i, %bb.b, %._crit_edge.i.i
  %i.ob = phi ptr [ %.pre.i.i.i, %.loopexit.loopexit.i.i.i ], [ %.pre13.i.i.i, %bb.b ], [ %.pre13.i.i.i, %._crit_edge.i.i ]
  call void @free(ptr noundef %i.ob) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  %i.oc = load ptr, ptr %24, align 8, !tbaa !53, !nonnull !55, !align !56 ; 3 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 24
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !57
  %i.of = getelementptr inbounds nuw i8, ptr %i.oc, i64 32 ; 3 uses
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !61 ; 2 uses
  %i.oh = ptrtoint ptr %i.oe to i64
  %i.oi = ptrtoint ptr %i.og to i64
  %i.oj = sub i64 %i.oh, %i.oi
  %i.ok = icmp ult i64 %i.oj, 12
  br i1 %i.ok, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %_ZN12_GLOBAL__N_17CodeGen29generateConstraintAndRewritesERKN4mlir4pdll3ast6ModuleENS1_8ModuleOpERN4llvm9StringSetINS8_15MallocAllocatorEEE.exit.i
  %i.ol = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.oc, ptr noundef nonnull @.str, i64 noundef 12) #11 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i

bb.cn:                                            ; preds = %_ZN12_GLOBAL__N_17CodeGen29generateConstraintAndRewritesERKN4mlir4pdll3ast6ModuleENS1_8ModuleOpERN4llvm9StringSetINS8_15MallocAllocatorEEE.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.og, ptr noundef nonnull align 1 dereferenceable(12) @.str, i64 12, i1 false)
  %i.om = load ptr, ptr %i.of, align 8, !tbaa !61
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 12
  store ptr %i.on, ptr %i.of, align 8, !tbaa !61
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i

_ZN4llvm11raw_ostreamlsEPKc.exit.i:               ; preds = %bb.cn, %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #11
  %i.oo = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  store ptr %i.oo, ptr %15, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store i64 20, ptr %i.c, align 8, !tbaa !51
  %i.op = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) #11 ; 2 uses
  store ptr %i.op, ptr %15, align 8, !tbaa !76
  %i.oq = load i64, ptr %i.c, align 8, !tbaa !51  ; 3 uses
  store i64 %i.oq, ptr %i.oo, align 8, !tbaa !52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.op, ptr noundef nonnull align 1 dereferenceable(20) @.str.1, i64 20, i1 false)
  %i.or = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.oq, ptr %i.or, align 8, !tbaa !78
  %i.os = load ptr, ptr %15, align 8, !tbaa !76
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 %i.oq
  store i8 0, ptr %i.ot, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #11
  %i.ou = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ov = load i32, ptr %i.ou, align 4, !noalias !79 ; 3 uses
  %i.ow = and i32 %i.ov, 8388607
  %i.ox = icmp ne i32 %i.ow, 0
  call void @llvm.assume(i1 %i.ox)
  %i.oy = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.oz = lshr i32 %i.ov, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.oz, 1
  %i.pa = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.pb = getelementptr inbounds nuw [16 x i8], ptr %i.oy, i64 %i.pa
  %i.pc = lshr i32 %i.ov, 21
  %i.pd = and i32 %i.pc, 2040
  %i.pe = zext nneg i32 %i.pd to i64
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pb, i64 %i.pe
  %i.pg = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ph = load i32, ptr %i.pg, align 8, !tbaa !82, !noalias !79
  %i.pi = zext i32 %i.ph to i64
  %i.pj = getelementptr inbounds nuw [32 x i8], ptr %i.pf, i64 %i.pi
  call void @_ZN4mlir6Region6getOpsINS_3pdl9PatternOpEEEN4llvm14iterator_rangeINS_6detail11op_iteratorIT_NS0_10OpIteratorEEEEEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::iterator_range") align 8 %16, ptr noundef nonnull align 8 dereferenceable(28) %i.pj)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %17, ptr noundef nonnull align 8 dereferenceable(128) %16, i64 64, i1 false)
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %16, i64 80
  %.sroa.3.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8 ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !99 ; 2 uses
  %.not7683.i = icmp eq ptr %i.pl, %.sroa.3.0.copyload.i
  br i1 %.not7683.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i
  %i.pm = getelementptr inbounds nuw i8, ptr %17, i64 56
  %i.pn = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.po = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 6 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 5 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.pr = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.ps = getelementptr inbounds nuw i8, ptr %23, i64 33
  %i.pt = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 6 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 5 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %13, i64 12 ; 2 uses
  %i.pw = ptrtoint ptr %21 to i64
  %i.px = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.py = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 7 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.qb = ptrtoint ptr %5 to i64
  %i.qc = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.qd = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.qe = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.qf = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.qg = ptrtoint ptr %i.qf to i64
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.qh = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.qi = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.qj = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.qk = ptrtoint ptr %10 to i64
  %i.ql = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.qm = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.qn = getelementptr inbounds nuw i8, ptr %17, i64 40 ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %17, i64 48
  br label %bb.cs

._crit_edge.i:                                    ; preds = %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorIN4mlir6detail18op_filter_iteratorINS2_3pdl9PatternOpENS2_6Region10OpIteratorEEEPFS6_RNS2_9OperationEES6_EES9_St20forward_iterator_tagS6_lPS6_S6_EppEv.exit.i, %_ZN4llvm11raw_ostreamlsEPKc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #11
  %i.qp = load ptr, ptr %24, align 8, !tbaa !53, !nonnull !55, !align !56 ; 4 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 24
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !57
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qp, i64 32 ; 3 uses
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !61 ; 2 uses
  %i.qu = ptrtoint ptr %i.qr to i64
  %i.qv = ptrtoint ptr %i.qt to i64
  %i.qw = sub i64 %i.qu, %i.qv
  %i.qx = icmp ult i64 %i.qw, 20
  br i1 %i.qx, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %._crit_edge.i
  %i.qy = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.qp, ptr noundef nonnull @.str.2, i64 noundef 20) #11 ; 0 uses
  %.pre18 = load ptr, ptr %24, align 8, !tbaa !53 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre18, i64 32
  %.pre19 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !61
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit15.i

bb.cp:                                            ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.qt, ptr noundef nonnull align 1 dereferenceable(20) @.str.2, i64 20, i1 false)
  %i.qz = load ptr, ptr %i.qs, align 8, !tbaa !61
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 20 ; 2 uses
  store ptr %i.ra, ptr %i.qs, align 8, !tbaa !61
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit15.i

_ZN4llvm11raw_ostreamlsEPKc.exit15.i:             ; preds = %bb.cp, %bb.co
  %i.rb = phi ptr [ %i.ra, %bb.cp ], [ %.pre19, %bb.co ] ; 2 uses
  %i.rc = phi ptr [ %i.qp, %bb.cp ], [ %.pre18, %bb.co ] ; 3 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 24
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !57
  %i.rf = ptrtoint ptr %i.re to i64
  %i.rg = ptrtoint ptr %i.rb to i64
  %i.rh = sub i64 %i.rf, %i.rg
  %i.ri = icmp ult i64 %i.rh, 153
  br i1 %i.ri, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit15.i
  %i.rj = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.rc, ptr noundef nonnull @.str.3, i64 noundef 153) #11 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit18.i

bb.cr:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit15.i
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rc, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(153) %i.rb, ptr noundef nonnull align 1 dereferenceable(153) @.str.3, i64 153, i1 false)
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !61
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 153
  store ptr %i.rm, ptr %i.rk, align 8, !tbaa !61
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit18.i

_ZN4llvm11raw_ostreamlsEPKc.exit18.i:             ; preds = %bb.cr, %bb.cq
  %i.rn = load ptr, ptr %i.e, align 8, !tbaa !15  ; 2 uses
  %i.ro = load i32, ptr %i.g, align 8, !tbaa !17  ; 2 uses
  %i.rp = zext i32 %i.ro to i64
  %.idx.i = shl nuw nsw i64 %i.rp, 5
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rn, i64 %.idx.i
  %.not85.i = icmp eq i32 %i.ro, 0
  br i1 %.not85.i, label %._crit_edge88.i, label %.lr.ph87.i

bb.cs:                                            ; preds = %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorIN4mlir6detail18op_filter_iteratorINS2_3pdl9PatternOpENS2_6Region10OpIteratorEEEPFS6_RNS2_9OperationEES6_EES9_St20forward_iterator_tagS6_lPS6_S6_EppEv.exit.i, %.lr.ph.i
  %.sroa.0.0.i = phi ptr [ undef, %.lr.ph.i ], [ %.sroa.0.2.i, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorIN4mlir6detail18op_filter_iteratorINS2_3pdl9PatternOpENS2_6Region10OpIteratorEEEPFS6_RNS2_9OperationEES6_EES9_St20forward_iterator_tagS6_lPS6_S6_EppEv.exit.i ] ; 2 uses
  %i.rr = phi ptr [ %i.pl, %.lr.ph.i ], [ %i.xu, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorIN4mlir6detail18op_filter_iteratorINS2_3pdl9PatternOpENS2_6Region10OpIteratorEEEPFS6_RNS2_9OperationEES6_EES9_St20forward_iterator_tagS6_lPS6_S6_EppEv.exit.i ]
  %.084.i = phi i32 [ 0, %.lr.ph.i ], [ %.2.i, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorIN4mlir6detail18op_filter_iteratorINS2_3pdl9PatternOpENS2_6Region10OpIteratorEEEPFS6_RNS2_9OperationEES6_EES9_St20forward_iterator_tagS6_lPS6_S6_EppEv.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #11
  %i.rs = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %i.rr) #11
  %i.rt = load ptr, ptr %i.pm, align 8, !tbaa !102
  %i.ru = call ptr %i.rt(ptr noundef nonnull align 8 dereferenceable(64) %i.rs) #11, !inline_history !104
  store ptr %i.ru, ptr %18, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #11
  call void @_ZN4mlir3pdl9PatternOp10getSymNameEv(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %19, ptr noundef nonnull align 8 dereferenceable(8) %18) #11
  %i.rv = load i8, ptr %i.pn, align 8, !tbaa !105, !range !106, !noundef !55
  %i.rw = trunc nuw i8 %i.rv to i1
  br i1 %i.rw, label %bb.ct, label %bb.cz

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #11
  call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %i.rx = load ptr, ptr %19, align 8, !tbaa !73, !noalias !107 ; 3 uses
  %.not.i19.i = icmp eq ptr %i.rx, null
  br i1 %.not.i19.i, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  store ptr %i.py, ptr %20, align 8, !tbaa !74, !alias.scope !107
  store i64 0, ptr %i.pz, align 8, !tbaa !78, !alias.scope !107
  store i8 0, ptr %i.py, align 8, !tbaa !52, !alias.scope !107
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.i

bb.cv:                                            ; preds = %bb.ct
  %i.ry = load i64, ptr %i.px, align 8, !tbaa !71, !noalias !107 ; 4 uses
  store ptr %i.py, ptr %20, align 8, !tbaa !74, !alias.scope !107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11, !noalias !107
  store i64 %i.ry, ptr %i.b, align 8, !tbaa !51, !noalias !107
  %i.rz = icmp ugt i64 %i.ry, 15
  br i1 %i.rz, label %bb.cw, label %._crit_edge.i.i.i.i

bb.cw:                                            ; preds = %bb.cv
  %i.sa = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #11 ; 2 uses
  store ptr %i.sa, ptr %20, align 8, !tbaa !76, !alias.scope !107
  %i.sb = load i64, ptr %i.b, align 8, !tbaa !51, !noalias !107
  store i64 %i.sb, ptr %i.py, align 8, !tbaa !52, !alias.scope !107
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.cw, %bb.cv
  %i.sc = phi ptr [ %i.sa, %bb.cw ], [ %i.py, %bb.cv ] ; 2 uses
  switch i64 %i.ry, label %bb.cy [
    i64 1, label %bb.cx
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i
  ]

bb.cx:                                            ; preds = %._crit_edge.i.i.i.i
  %i.sd = load i8, ptr %i.rx, align 1, !tbaa !52
  store i8 %i.sd, ptr %i.sc, align 1, !tbaa !52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i

bb.cy:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.sc, ptr nonnull align 1 %i.rx, i64 %i.ry, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i: ; preds = %bb.cy, %bb.cx, %._crit_edge.i.i.i.i
  %i.se = load i64, ptr %i.b, align 8, !tbaa !51, !noalias !107 ; 2 uses
  store i64 %i.se, ptr %i.pz, align 8, !tbaa !78, !alias.scope !107
  %i.sf = load ptr, ptr %20, align 8, !tbaa !76, !alias.scope !107
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 %i.se
  store i8 0, ptr %i.sg, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11, !noalias !107
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.i

_ZNK4llvm9StringRef3strB5cxx11Ev.exit.i:          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i, %bb.cu
  %i.sh = call noundef zeroext i1 @_ZN4llvm9SetVectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11SmallVectorIS6_Lj1EEENS_9StringSetINS_15MallocAllocatorEEELj0EE6insertERKS6_(ptr noundef nonnull align 8 dereferenceable(72) %13, ptr noundef nonnull align 8 dereferenceable(32) %20) ; 0 uses
  %i.si = load ptr, ptr %20, align 8, !tbaa !76   ; 2 uses
  %i.sj = icmp eq ptr %i.si, %i.py
  br i1 %i.sj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.i
  %i.sk = load i64, ptr %i.py, align 8, !tbaa !52
  %i.sl = add i64 %i.sk, 1
  call void @_ZdlPvm(ptr noundef %i.si, i64 noundef %i.sl) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #11
  br label %bb.do

bb.cz:                                            ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #11
  store ptr %i.po, ptr %21, align 8, !tbaa !74
  store i64 0, ptr %i.pp, align 8, !tbaa !78
  store i8 0, ptr %i.po, align 8, !tbaa !52
  %25 = ptrtoint ptr %.sroa.0.0.i to i64
  br label %_ZN4llvmplERKNS_5TwineES2_.exit.i

_ZN4llvmplERKNS_5TwineES2_.exit.i:                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i, %bb.cz
  %.sroa.0.1.i = phi i64 [ %25, %bb.cz ], [ %.sroa.0.0.insert.insert.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i ]
  %.1.i = phi i32 [ %.084.i, %bb.cz ], [ %i.sm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #11
  %i.sm = add nsw i32 %.1.i, 1                    ; 2 uses
  %.sroa.0.0.insert.ext.i = zext i32 %.1.i to i64
  %.sroa.0.0.insert.mask.i = and i64 %.sroa.0.1.i, -4294967296
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.0.insert.mask.i, %.sroa.0.0.insert.ext.i ; 2 uses
  %i.sn = inttoptr i64 %.sroa.0.0.insert.insert.i to ptr ; 2 uses
  store ptr %15, ptr %23, align 8, !alias.scope !110
  store ptr %i.sn, ptr %i.pq, align 8, !alias.scope !110
  store i8 4, ptr %i.pr, align 8, !tbaa !115, !alias.scope !110
  store i8 10, ptr %i.ps, align 1, !tbaa !118, !alias.scope !110
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef nonnull align 8 dereferenceable(34) %23) #11
  %i.so = load ptr, ptr %21, align 8, !tbaa !76   ; 6 uses
  %i.sp = icmp eq ptr %i.so, %i.po
  %i.sq = load ptr, ptr %22, align 8, !tbaa !76   ; 5 uses
  %i.sr = icmp eq ptr %i.sq, %i.pt                ; 2 uses
  br i1 %i.sp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit.i
  br i1 %i.sr, label %bb.da, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit.i
  br i1 %i.sr, label %bb.da, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.da:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ss = load i64, ptr %i.pu, align 8, !tbaa !78 ; 3 uses
  %i.st = icmp ult i64 %i.ss, 16
  call void @llvm.assume(i1 %i.st)
  switch i64 %i.ss, label %bb.dc [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.db
  ]

bb.db:                                            ; preds = %bb.da
  %i.su = load i8, ptr %i.sq, align 1, !tbaa !52
  store i8 %i.su, ptr %i.so, align 1, !tbaa !52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.dc:                                            ; preds = %bb.da
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.so, ptr align 1 %i.sq, i64 %i.ss, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.dc, %bb.db, %bb.da
  %i.sv = load i64, ptr %i.pu, align 8, !tbaa !78 ; 2 uses
  store i64 %i.sv, ptr %i.pp, align 8, !tbaa !78
  %i.sw = load ptr, ptr %21, align 8, !tbaa !76
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 %i.sv
  store i8 0, ptr %i.sx, align 1, !tbaa !52
  %.pre.i.i = load ptr, ptr %22, align 8, !tbaa !76
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr %i.sq, ptr %21, align 8, !tbaa !76
  %i.sy = load <2 x i64>, ptr %i.pu, align 8, !tbaa !52
  store <2 x i64> %i.sy, ptr %i.pp, align 8, !tbaa !52
  br label %bb.de

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.sz = load i64, ptr %i.po, align 8, !tbaa !52
  store ptr %i.sq, ptr %21, align 8, !tbaa !76
  %i.ta = load <2 x i64>, ptr %i.pu, align 8, !tbaa !52
  store <2 x i64> %i.ta, ptr %i.pp, align 8, !tbaa !52
  %.not.i21.i = icmp eq ptr %i.so, null
  br i1 %.not.i21.i, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.so, ptr %22, align 8, !tbaa !76
  store i64 %i.sz, ptr %i.pt, align 8, !tbaa !52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.de:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.pt, ptr %22, align 8, !tbaa !76
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.de, %bb.dd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
  %i.tb = phi ptr [ %i.so, %bb.dd ], [ %i.pt, %bb.de ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  store i64 0, ptr %i.pu, align 8, !tbaa !78
  store i8 0, ptr %i.tb, align 1, !tbaa !52
  %i.tc = load ptr, ptr %22, align 8, !tbaa !76   ; 2 uses
  %i.td = icmp eq ptr %i.tc, %i.pt
  br i1 %i.td, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  %i.te = load i64, ptr %i.pt, align 8, !tbaa !52
  %i.tf = add i64 %i.te, 1
  call void @_ZdlPvm(ptr noundef %i.tc, i64 noundef %i.tf) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #11
  %i.tg = load ptr, ptr %21, align 8, !tbaa !76   ; 3 uses
  %i.th = load i64, ptr %i.pp, align 8, !tbaa !78 ; 7 uses
  %i.ti = call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr %i.tg, i64 %i.th) #11
  %i.tj = call noundef i32 @_ZN4llvm13StringMapImpl15LookupBucketForENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(72) %13, ptr %i.tg, i64 %i.th, i32 noundef %i.ti) #11 ; 2 uses
  %i.tk = load ptr, ptr %13, align 8, !tbaa !31   ; 2 uses
  %i.tl = zext i32 %i.tj to i64                   ; 2 uses
  %i.tm = getelementptr inbounds nuw [8 x i8], ptr %i.tk, i64 %i.tl
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !33
  %.not.i.i.i.i.i = icmp eq ptr %i.tn, null
  br i1 %.not.i.i.i.i.i, label %bb.df, label %_ZN4llvmplERKNS_5TwineES2_.exit.i, !llvm.loop !119

bb.df:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i
  %i.to = getelementptr inbounds nuw [8 x i8], ptr %i.tk, i64 %i.tl
  %i.tp = add i64 %i.th, 9
  %i.tq = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.tp, i64 noundef 8) #11 ; 3 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.th, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.tr, ptr align 1 %i.tg, i64 %i.th, i1 false)
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 %i.th
  store i8 0, ptr %i.ts, align 1, !tbaa !52
  store i64 %i.th, ptr %i.tq, align 8, !tbaa !35
  store ptr %i.tq, ptr %i.to, align 8, !tbaa !33
  %i.tt = load i32, ptr %i.pv, align 4, !tbaa !30
  %i.tu = add i32 %i.tt, 1
  store i32 %i.tu, ptr %i.pv, align 4, !tbaa !30
  %i.tv = call noundef i32 @_ZN4llvm13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(72) %13, i32 noundef %i.tj) #11 ; 0 uses
  %i.tw = load i32, ptr %i.g, align 8, !tbaa !17  ; 2 uses
  %i.tx = zext i32 %i.tw to i64                   ; 2 uses
  %i.ty = add nuw nsw i64 %i.tx, 1                ; 2 uses
  %i.tz = load i32, ptr %i.h, align 4, !tbaa !18
  %.not.i.i.not.i.i = icmp ult i32 %i.tw, %i.tz
  %.pre3.i.i = load ptr, ptr %i.e, align 8, !tbaa !15 ; 4 uses
  br i1 %.not.i.i.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE28reserveForParamAndGetAddressERKS6_m.exit.i.i, label %bb.di, !prof !120

bb.di:                                            ; preds = %bb.dh
  %i.ua = getelementptr inbounds nuw [32 x i8], ptr %.pre3.i.i, i64 %i.tx
  %i.ub = icmp uge ptr %21, %.pre3.i.i
  %i.uc = icmp ult ptr %21, %i.ua
  %spec.select.i.i.i.i.i.i = and i1 %i.ub, %i.uc
  br i1 %spec.select.i.i.i.i.i.i, label %bb.dj, label %.critedge.i.i.i.i, !prof !121

bb.dj:                                            ; preds = %bb.di
  %i.ud = ptrtoint ptr %.pre3.i.i to i64
  %i.ue = sub i64 %i.pw, %i.ud
  call void @_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 noundef %i.ty)
  %i.uf = load ptr, ptr %i.e, align 8, !tbaa !15  ; 2 uses
  %i.ug = getelementptr inbounds i8, ptr %i.uf, i64 %i.ue
  br label %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE28reserveForParamAndGetAddressERKS6_m.exit.i.i

.critedge.i.i.i.i:                                ; preds = %bb.di
  call void @_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 noundef %i.ty)
  %.pre.i71.i = load ptr, ptr %i.e, align 8, !tbaa !15
  br label %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE28reserveForParamAndGetAddressERKS6_m.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE28reserveForParamAndGetAddressERKS6_m.exit.i.i: ; preds = %.critedge.i.i.i.i, %bb.dj, %bb.dh
  %i.uh = phi ptr [ %.pre3.i.i, %bb.dh ], [ %i.uf, %bb.dj ], [ %.pre.i71.i, %.critedge.i.i.i.i ]
  %.016.i.i.i.i = phi ptr [ %21, %bb.dh ], [ %i.ug, %bb.dj ], [ %21, %.critedge.i.i.i.i ] ; 2 uses
  %i.ui = load i32, ptr %i.g, align 8, !tbaa !17
  %i.uj = zext i32 %i.ui to i64
  %i.uk = getelementptr inbounds nuw [32 x i8], ptr %i.uh, i64 %i.uj ; 6 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 16 ; 3 uses
  store ptr %i.ul, ptr %i.uk, align 8, !tbaa !74
  %i.um = load ptr, ptr %.016.i.i.i.i, align 8, !tbaa !76 ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i, i64 8
  %i.uo = load i64, ptr %i.un, align 8, !tbaa !78 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 %i.uo, ptr %i.a, align 8, !tbaa !51
  %i.up = icmp ugt i64 %i.uo, 15
  br i1 %i.up, label %bb.dk, label %._crit_edge.i.i.i72.i

bb.dk:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE28reserveForParamAndGetAddressERKS6_m.exit.i.i
  %i.uq = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.uk, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #11 ; 2 uses
  store ptr %i.uq, ptr %i.uk, align 8, !tbaa !76
  %i.ur = load i64, ptr %i.a, align 8, !tbaa !51
  store i64 %i.ur, ptr %i.ul, align 8, !tbaa !52
  br label %._crit_edge.i.i.i72.i

._crit_edge.i.i.i72.i:                            ; preds = %bb.dk, %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE28reserveForParamAndGetAddressERKS6_m.exit.i.i
  %i.us = phi ptr [ %i.uq, %bb.dk ], [ %i.ul, %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE28reserveForParamAndGetAddressERKS6_m.exit.i.i ] ; 2 uses
  switch i64 %i.uo, label %bb.dm [
    i64 1, label %bb.dl
    i64 0, label %bb.dn
  ]

bb.dl:                                            ; preds = %._crit_edge.i.i.i72.i
  %i.ut = load i8, ptr %i.um, align 1, !tbaa !52
  store i8 %i.ut, ptr %i.us, align 1, !tbaa !52
  br label %bb.dn

bb.dm:                                            ; preds = %._crit_edge.i.i.i72.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.us, ptr align 1 %i.um, i64 %i.uo, i1 false)
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl, %._crit_edge.i.i.i72.i
  %i.uu = load i64, ptr %i.a, align 8, !tbaa !51  ; 2 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uk, i64 8
  store i64 %i.uu, ptr %i.uv, align 8, !tbaa !78
  %i.uw = load ptr, ptr %i.uk, align 8, !tbaa !76
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 %i.uu
  store i8 0, ptr %i.ux, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.uy = load i32, ptr %i.g, align 8, !tbaa !17
  %i.uz = add i32 %i.uy, 1
  store i32 %i.uz, ptr %i.g, align 8, !tbaa !17
  %i.va = load ptr, ptr %21, align 8, !tbaa !76   ; 2 uses
  %i.vb = icmp eq ptr %i.va, %i.po
  br i1 %i.vb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.i: ; preds = %bb.dn
  %i.vc = load i64, ptr %i.po, align 8, !tbaa !52
  %i.vd = add i64 %i.vc, 1
  call void @_ZdlPvm(ptr noundef %i.va, i64 noundef %i.vd) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i: ; preds = %bb.dn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #11
  br label %bb.do

bb.do:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.sroa.0.2.i = phi ptr [ %.sroa.0.0.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.sn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i ]
  %.2.i = phi i32 [ %.084.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.sm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #11
  %.sroa.0.0.copyload.i = load ptr, ptr %18, align 8 ; 2 uses
  %i.ve = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.vf = load i32, ptr %i.g, align 8, !tbaa !17
  %i.vg = zext i32 %i.vf to i64
  %i.vh = getelementptr inbounds nuw [32 x i8], ptr %i.ve, i64 %i.vg ; 2 uses
  %i.vi = getelementptr inbounds i8, ptr %i.vh, i64 -32
  %i.vj = load ptr, ptr %i.vi, align 8, !tbaa !76
  %i.vk = getelementptr inbounds i8, ptr %i.vh, i64 -24
  %i.vl = load i64, ptr %i.vk, align 8, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.vj, ptr %5, align 8
  store i64 %i.vl, ptr %i.qa, align 8
  %i.vm = load ptr, ptr %24, align 8, !tbaa !53, !nonnull !55, !align !56
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  store ptr @.str.32, ptr %6, align 8, !tbaa !50, !alias.scope !122
  store i64 211, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !51, !alias.scope !122
  store ptr %i.qc, ptr %i.qd, align 8, !tbaa !127, !alias.scope !122
  store i64 1, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !51, !alias.scope !122
  store i8 1, ptr %i.qe, align 8, !tbaa !129, !alias.scope !122
  store i64 %i.qb, ptr %i.qf, align 8, !tbaa !132, !alias.scope !122
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRS3_EEEEvlS2_S3_, ptr %i.qc, align 8, !alias.scope !122
  store i64 %i.qg, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !52, !alias.scope !122
  %i.vn = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsERKNS_19formatv_object_baseE(ptr noundef nonnull align 8 dereferenceable(48) %i.vm, ptr noundef nonnull align 8 dereferenceable(33) %6) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %i.vo = load ptr, ptr %24, align 8, !tbaa !53, !nonnull !55, !align !56 ; 3 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 24
  %i.vq = load ptr, ptr %i.vp, align 8, !tbaa !57
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vo, i64 32 ; 3 uses
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !61 ; 2 uses
  %i.vt = ptrtoint ptr %i.vq to i64
  %i.vu = ptrtoint ptr %i.vs to i64
  %i.vv = sub i64 %i.vt, %i.vu
  %i.vw = icmp ult i64 %i.vv, 7
  br i1 %i.vw, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.vx = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.vo, ptr noundef nonnull @.str.33, i64 noundef 7) #11 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i

bb.dq:                                            ; preds = %bb.do
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.vs, ptr noundef nonnull align 1 dereferenceable(7) @.str.33, i64 7, i1 false)
  %i.vy = load ptr, ptr %i.vr, align 8, !tbaa !61
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 7
  store ptr %i.vz, ptr %i.vr, align 8, !tbaa !61
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit.i.i:             ; preds = %bb.dq, %bb.dp
  %i.wa = load ptr, ptr %24, align 8, !tbaa !53, !nonnull !55, !align !56
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  call void @_ZN4mlir15OpPrintingFlagsC1Ev(ptr noundef nonnull align 8 dereferenceable(42) %7) #11
  %i.wb = call noundef nonnull align 8 dereferenceable(42) ptr @_ZN4mlir15OpPrintingFlags15enableDebugInfoEbb(ptr noundef nonnull align 8 dereferenceable(42) %7, i1 noundef zeroext true, i1 noundef zeroext false) #11
  call void @_ZN4mlir9Operation5printERN4llvm11raw_ostreamERKNS_15OpPrintingFlagsE(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(48) %i.wa, ptr noundef nonnull align 8 dereferenceable(42) %i.wb) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  %i.wc = load ptr, ptr %24, align 8, !tbaa !53, !nonnull !55, !align !56 ; 3 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 24
  %i.we = load ptr, ptr %i.wd, align 8, !tbaa !57
  %i.wf = getelementptr inbounds nuw i8, ptr %i.wc, i64 32 ; 3 uses
  %i.wg = load ptr, ptr %i.wf, align 8, !tbaa !61 ; 2 uses
  %i.wh = ptrtoint ptr %i.we to i64
  %i.wi = ptrtoint ptr %i.wg to i64
  %i.wj = sub i64 %i.wh, %i.wi
  %i.wk = icmp ult i64 %i.wj, 61
  br i1 %i.wk, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i
  %i.wl = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.wc, ptr noundef nonnull @.str.34, i64 noundef 61) #11 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit5.i.i

bb.ds:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(61) %i.wg, ptr noundef nonnull align 1 dereferenceable(61) @.str.34, i64 61, i1 false)
  %i.wm = load ptr, ptr %i.wf, align 8, !tbaa !61
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 61
  store ptr %i.wn, ptr %i.wf, align 8, !tbaa !61
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit5.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit5.i.i:            ; preds = %bb.ds, %bb.dr
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %8, i8 0, i64 16, i1 false)
  store i32 8, ptr %i.qh, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  store ptr %14, ptr %9, align 8, !tbaa !19
  store ptr %8, ptr %i.qi, align 8, !tbaa !19
  store ptr %24, ptr %i.qj, align 8, !tbaa !134
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  store ptr %9, ptr %10, align 8, !tbaa !137
  call void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.0.copyload.i, ptr nonnull @"_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZN12_GLOBAL__N_17CodeGen8generateENS1_3pdl9PatternOpENS_9StringRefERNS_9StringSetINS_15MallocAllocatorEEEE3$_0EEvlS3_", i64 %i.qk, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  %i.wo = load ptr, ptr %24, align 8, !tbaa !53, !nonnull !55, !align !56 ; 3 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 24
  %i.wq = load ptr, ptr %i.wp, align 8, !tbaa !57
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wo, i64 32 ; 3 uses
  %i.ws = load ptr, ptr %i.wr, align 8, !tbaa !61 ; 2 uses
  %i.wt = ptrtoint ptr %i.wq to i64
  %i.wu = ptrtoint ptr %i.ws to i64
  %i.wv = sub i64 %i.wt, %i.wu
  %i.ww = icmp ult i64 %i.wv, 8
  br i1 %i.ww, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit5.i.i
  %i.wx = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.wo, ptr noundef nonnull @.str.35, i64 noundef 8) #11 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit8.i.i

bb.du:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit5.i.i
  store i64 723456098379309088, ptr %i.ws, align 1
  %i.wy = load ptr, ptr %i.wr, align 8, !tbaa !61
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 8
  store ptr %i.wz, ptr %i.wr, align 8, !tbaa !61
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit8.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit8.i.i:            ; preds = %bb.du, %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  %i.xa = load i32, ptr %i.ql, align 4, !tbaa !30
  %i.xb = icmp eq i32 %i.xa, 0
  %.pre13.i.i28.i = load ptr, ptr %8, align 8, !tbaa !31 ; 4 uses
  br i1 %i.xb, label %_ZN12_GLOBAL__N_17CodeGen8generateEN4mlir3pdl9PatternOpEN4llvm9StringRefERNS4_9StringSetINS4_15MallocAllocatorEEE.exit.i, label %bb.dv

bb.dv:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit8.i.i
  %i.xc = load i32, ptr %i.qm, align 8, !tbaa !32 ; 2 uses
  %i.xd = zext i32 %i.xc to i64
  %.idx.i.i29.i = shl nuw nsw i64 %i.xd, 3
  %i.xe = getelementptr inbounds nuw i8, ptr %.pre13.i.i28.i, i64 %.idx.i.i29.i
  %.not11.i.i30.i = icmp eq i32 %i.xc, 0
  br i1 %.not11.i.i30.i, label %_ZN12_GLOBAL__N_17CodeGen8generateEN4mlir3pdl9PatternOpEN4llvm9StringRefERNS4_9StringSetINS4_15MallocAllocatorEEE.exit.i, label %.lr.ph.i.i31.i

.lr.ph.i.i31.i:                                   ; preds = %bb.dv, %bb.dx
  %.012.i.i32.i = phi ptr [ %i.xi, %bb.dx ], [ %.pre13.i.i28.i, %bb.dv ] ; 2 uses
  %i.xf = load ptr, ptr %.012.i.i32.i, align 8, !tbaa !33 ; 3 uses
  %.not10.i.i33.i = icmp eq ptr %i.xf, null
  br i1 %.not10.i.i33.i, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %.lr.ph.i.i31.i
  %i.xg = load i64, ptr %i.xf, align 8, !tbaa !35
  %i.xh = add i64 %i.xg, 9
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef nonnull align 8 dereferenceable(8) %i.xf, i64 noundef %i.xh, i64 noundef 8) #11
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %.lr.ph.i.i31.i
  %i.xi = getelementptr inbounds nuw i8, ptr %.012.i.i32.i, i64 8 ; 2 uses
  %.not.i.i34.i = icmp eq ptr %i.xi, %i.xe
  br i1 %.not.i.i34.i, label %.loopexit.loopexit.i.i35.i, label %.lr.ph.i.i31.i

.loopexit.loopexit.i.i35.i:                       ; preds = %bb.dx
  %.pre.i.i36.i = load ptr, ptr %8, align 8, !tbaa !31
  br label %_ZN12_GLOBAL__N_17CodeGen8generateEN4mlir3pdl9PatternOpEN4llvm9StringRefERNS4_9StringSetINS4_15MallocAllocatorEEE.exit.i

_ZN12_GLOBAL__N_17CodeGen8generateEN4mlir3pdl9PatternOpEN4llvm9StringRefERNS4_9StringSetINS4_15MallocAllocatorEEE.exit.i: ; preds = %.loopexit.loopexit.i.i35.i, %bb.dv, %_ZN4llvm11raw_ostreamlsEPKc.exit8.i.i
  %i.xj = phi ptr [ %.pre.i.i36.i, %.loopexit.loopexit.i.i35.i ], [ %.pre13.i.i28.i, %bb.dv ], [ %.pre13.i.i28.i, %_ZN4llvm11raw_ostreamlsEPKc.exit8.i.i ]
  call void @free(ptr noundef %i.xj) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #11
  %i.xk = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4mlir6Region10OpIteratorppEv(ptr noundef nonnull align 8 dereferenceable(56) %17) #11 ; 0 uses
  %i.xl = load ptr, ptr %i.pk, align 8, !tbaa !99 ; 3 uses
  %i.xm = load ptr, ptr %i.qn, align 8, !tbaa !99
  %.not1.i.i.i.i = icmp eq ptr %i.xl, %i.xm
  br i1 %.not1.i.i.i.i, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorIN4mlir6detail18op_filter_iteratorINS2_3pdl9PatternOpENS2_6Region10OpIteratorEEEPFS6_RNS2_9OperationEES6_EES9_St20forward_iterator_tagS6_lPS6_S6_EppEv.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN12_GLOBAL__N_17CodeGen8generateEN4mlir3pdl9PatternOpEN4llvm9StringRefERNS4_9StringSetINS4_15MallocAllocatorEEE.exit.i, %bb.dy
  %i.xn = phi ptr [ %i.xs, %bb.dy ], [ %i.xl, %_ZN12_GLOBAL__N_17CodeGen8generateEN4mlir3pdl9PatternOpEN4llvm9StringRefERNS4_9StringSetINS4_15MallocAllocatorEEE.exit.i ]
  %i.xo = load ptr, ptr %i.qo, align 8, !tbaa !138
  %i.xp = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %i.xn) #11
  %i.xq = call noundef zeroext i1 %i.xo(ptr noundef nonnull align 8 dereferenceable(64) %i.xp) #11, !inline_history !145
  br i1 %i.xq, label %.lr.ph.i.i.i._ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorIN4mlir6detail18op_filter_iteratorINS2_3pdl9PatternOpENS2_6Region10OpIteratorEEEPFS6_RNS2_9OperationEES6_EES9_St20forward_iterator_tagS6_lPS6_S6_EppEv.exit.loopexit_crit_edge.i, label %bb.dy

.lr.ph.i.i.i._ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorIN4mlir6detail18op_filter_iteratorINS2_3pdl9PatternOpENS2_6Region10OpIteratorEEEPFS6_RNS2_9OperationEES6_EES9_St20forward_iterator_tagS6_lPS6_S6_EppEv.exit.loopexit_crit_edge.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.pre.i = load ptr, ptr %i.pk, align 8, !tbaa !99
  br label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorIN4mlir6detail18op_filter_iteratorINS2_3pdl9PatternOpENS2_6Region10OpIteratorEEEPFS6_RNS2_9OperationEES6_EES9_St20forward_iterator_tagS6_lPS6_S6_EppEv.exit.i

bb.dy:                                            ; preds = %.lr.ph.i.i.i.i
  %i.xr = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4mlir6Region10OpIteratorppEv(ptr noundef nonnull align 8 dereferenceable(56) %17) #11 ; 0 uses
  %i.xs = load ptr, ptr %i.pk, align 8, !tbaa !99 ; 3 uses
  %i.xt = load ptr, ptr %i.qn, align 8, !tbaa !99
  %.not.i.i.i37.i = icmp eq ptr %i.xs, %i.xt
  br i1 %.not.i.i.i37.i, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorIN4mlir6detail18op_filter_iteratorINS2_3pdl9PatternOpENS2_6Region10OpIteratorEEEPFS6_RNS2_9OperationEES6_EES9_St20forward_iterator_tagS6_lPS6_S6_EppEv.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !146

_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorIN4mlir6detail18op_filter_iteratorINS2_3pdl9PatternOpENS2_6Region10OpIteratorEEEPFS6_RNS2_9OperationEES6_EES9_St20forward_iterator_tagS6_lPS6_S6_EppEv.exit.i: ; preds = %bb.dy, %.lr.ph.i.i.i._ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorIN4mlir6detail18op_filter_iteratorINS2_3pdl9PatternOpENS2_6Region10OpIteratorEEEPFS6_RNS2_9OperationEES6_EES9_St20forward_iterator_tagS6_lPS6_S6_EppEv.exit.loopexit_crit_edge.i, %_ZN12_GLOBAL__N_17CodeGen8generateEN4mlir3pdl9PatternOpEN4llvm9StringRefERNS4_9StringSetINS4_15MallocAllocatorEEE.exit.i
  %i.xu = phi ptr [ %i.xl, %_ZN12_GLOBAL__N_17CodeGen8generateEN4mlir3pdl9PatternOpEN4llvm9StringRefERNS4_9StringSetINS4_15MallocAllocatorEEE.exit.i ], [ %.pre.pre.i, %.lr.ph.i.i.i._ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorIN4mlir6detail18op_filter_iteratorINS2_3pdl9PatternOpENS2_6Region10OpIteratorEEEPFS6_RNS2_9OperationEES6_EES9_St20forward_iterator_tagS6_lPS6_S6_EppEv.exit.loopexit_crit_edge.i ], [ %i.xs, %bb.dy ] ; 2 uses
  %.not76.i = icmp eq ptr %i.xu, %.sroa.3.0.copyload.i
  br i1 %.not76.i, label %._crit_edge.i, label %bb.cs

._crit_edge88.i:                                  ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit64.i, %_ZN4llvm11raw_ostreamlsEPKc.exit18.i
  %i.xv = load ptr, ptr %24, align 8, !tbaa !53, !nonnull !55, !align !56 ; 3 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xv, i64 24
  %i.xx = load ptr, ptr %i.xw, align 8, !tbaa !57
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xv, i64 32 ; 3 uses
  %i.xz = load ptr, ptr %i.xy, align 8, !tbaa !61 ; 2 uses
  %i.ya = ptrtoint ptr %i.xx to i64
  %i.yb = ptrtoint ptr %i.xz to i64
  %i.yc = sub i64 %i.ya, %i.yb
  %i.yd = icmp ult i64 %i.yc, 2
  br i1 %i.yd, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %._crit_edge88.i
  %i.ye = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.xv, ptr noundef nonnull @.str.6, i64 noundef 2) #11 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit40.i

bb.ea:                                            ; preds = %._crit_edge88.i
  store i16 2685, ptr %i.xz, align 1
end_hunk_0
