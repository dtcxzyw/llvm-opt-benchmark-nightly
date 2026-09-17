Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/StraightLineStrengthReduce?download=true
inline.NumInlined: 3795
inline.NumDeleted: 2083
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN12_GLOBAL__N_126StraightLineStrengthReduce13runOnFunctionERN4llvm8FunctionE:bb.a

_ZNK4llvm25generic_gep_type_iteratorIPKNS_3UseEE26getSequentialElementStrideERKNS_10DataLayoutE.exit.i.i: ; preds = %_ZNK4llvm25generic_gep_type_iteratorIPKNS_3UseEE14getIndexedTypeEv.exit.i.thread71.i.i, %bb.al
  %.pn.i.i.i = phi { i64, i8 } [ %.fca.1.insert.i.i39.i.i, %bb.al ], [ %i.ih, %_ZNK4llvm25generic_gep_type_iteratorIPKNS_3UseEE14getIndexedTypeEv.exit.i.thread71.i.i ] ; 2 uses
  %.fca.1.extract.i.i = extractvalue { i64, i8 } %.pn.i.i.i, 1
  %i.ii = trunc nuw i8 %.fca.1.extract.i.i to i1
  br i1 %i.ii, label %bb.am, label %_ZNK4llvm8TypeSizecvmEv.exit.i.i

bb.am:                                            ; preds = %_ZNK4llvm25generic_gep_type_iteratorIPKNS_3UseEE26getSequentialElementStrideERKNS_10DataLayoutE.exit.i.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.8) #22
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit.i.i:                 ; preds = %_ZNK4llvm25generic_gep_type_iteratorIPKNS_3UseEE26getSequentialElementStrideERKNS_10DataLayoutE.exit.i.i
  %.fca.0.extract.i.i = extractvalue { i64, i8 } %.pn.i.i.i, 0
  %i.ij = load ptr, ptr %0, align 8, !tbaa !89
  %i.ik = load ptr, ptr %i.fe, align 8, !tbaa !125
  %i.il = call noundef ptr @_ZNK4llvm10DataLayout12getIndexTypeEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.ij, ptr noundef %i.ik) #21
  %i.im = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.il, i64 noundef %.fca.0.extract.i.i, i1 noundef zeroext true, i1 noundef zeroext true) #21 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !125
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.iq = load i32, ptr %i.ip, align 8
  %i.ir = lshr i32 %i.iq, 8
  %i.is = load ptr, ptr %0, align 8, !tbaa !89
  %i.it = load i32, ptr %i.fj, align 4
  %i.iu = and i32 %i.it, 268435455
  %i.iv = zext nneg i32 %i.iu to i64
  %i.iw = sub nsw i64 0, %i.iv
  %i.ix = getelementptr inbounds [32 x i8], ptr %.ptr, i64 %i.iw
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !130
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !125 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %i.jc = load i32, ptr %i.jb, align 8            ; 2 uses
  %i.jd = and i32 %i.jc, 254
  %spec.select.i.i.i.i.i.i.i = icmp eq i32 %i.jd, 18
  br i1 %spec.select.i.i.i.i.i.i.i, label %bb.an, label %_ZNK4llvm17GetElementPtrInst15getAddressSpaceEv.exit.i.i

bb.an:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i.i
  %i.je = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !140
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !141
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %.pre.i.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i.i, align 8
  br label %_ZNK4llvm17GetElementPtrInst15getAddressSpaceEv.exit.i.i

_ZNK4llvm17GetElementPtrInst15getAddressSpaceEv.exit.i.i: ; preds = %bb.an, %_ZNK4llvm8TypeSizecvmEv.exit.i.i
  %i.jh = phi i32 [ %.pre.i.i.i.i.i, %bb.an ], [ %i.jc, %_ZNK4llvm8TypeSizecvmEv.exit.i.i ]
  %i.ji = lshr i32 %i.jh, 8
  %i.jj = call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK4llvm10DataLayout14getPointerSpecEj(ptr noundef nonnull align 8 dereferenceable(912) %i.is, i32 noundef %i.ji) #21
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 12
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !147
  %.not34.i.i = icmp ugt i32 %i.ir, %i.jl
  br i1 %.not34.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZNK4llvm17GetElementPtrInst15getAddressSpaceEv.exit.i.i
  %i.jm = and i64 %i.hl, -8
  %i.jn = inttoptr i64 %i.jm to ptr
  call fastcc void @_ZN12_GLOBAL__N_126StraightLineStrengthReduce30allocateCandidatesAndFindBasisENS0_9Candidate4KindEPKN4llvm4SCEVEPNS3_11ConstantIntEPNS3_5ValueEPNS3_11InstructionE(ptr noundef nonnull align 8 dereferenceable(264) %0, i32 noundef 3, ptr noundef %i.jn, ptr noundef %i.im, ptr noundef nonnull %i.ht, ptr noundef nonnull %.ptr)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %_ZNK4llvm17GetElementPtrInst15getAddressSpaceEv.exit.i.i
  %i.jo = load i8, ptr %i.ht, align 8, !tbaa !124
  %.not.i.i.i10.i = icmp eq i8 %i.jo, 71
  br i1 %.not.i.i.i10.i, label %bb.aq, label %bb.au

bb.aq:                                            ; preds = %bb.ap
  %i.jp = getelementptr inbounds i8, ptr %i.ht, i64 -32
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !130 ; 3 uses
  %.not.i.not.i.i.i.i = icmp eq ptr %i.jq, null
  br i1 %.not.i.not.i.i.i.i, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !125
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  %i.ju = load i32, ptr %i.jt, align 8
  %i.jv = lshr i32 %i.ju, 8
  %i.jw = load ptr, ptr %0, align 8, !tbaa !89
  %i.jx = load i32, ptr %i.fj, align 4
  %i.jy = and i32 %i.jx, 268435455
  %i.jz = zext nneg i32 %i.jy to i64
  %i.ka = sub nsw i64 0, %i.jz
  %i.kb = getelementptr inbounds [32 x i8], ptr %.ptr, i64 %i.ka
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !130
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !125 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %i.kg = load i32, ptr %i.kf, align 8            ; 2 uses
  %i.kh = and i32 %i.kg, 254
  %spec.select.i.i.i.i.i40.i.i = icmp eq i32 %i.kh, 18
  br i1 %spec.select.i.i.i.i.i40.i.i, label %bb.as, label %_ZNK4llvm17GetElementPtrInst15getAddressSpaceEv.exit43.i.i

bb.as:                                            ; preds = %bb.ar
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ke, i64 16
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !140
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !141
  %.phi.trans.insert.i.i.i41.i.i = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %.pre.i.i.i42.i.i = load i32, ptr %.phi.trans.insert.i.i.i41.i.i, align 8
  br label %_ZNK4llvm17GetElementPtrInst15getAddressSpaceEv.exit43.i.i

_ZNK4llvm17GetElementPtrInst15getAddressSpaceEv.exit43.i.i: ; preds = %bb.as, %bb.ar
  %i.kl = phi i32 [ %.pre.i.i.i42.i.i, %bb.as ], [ %i.kg, %bb.ar ]
  %i.km = lshr i32 %i.kl, 8
  %i.kn = call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK4llvm10DataLayout14getPointerSpecEj(ptr noundef nonnull align 8 dereferenceable(912) %i.jw, i32 noundef %i.km) #21
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 12
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !147
  %.not35.i.i = icmp ugt i32 %i.jv, %i.kp
  br i1 %.not35.i.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_ZNK4llvm17GetElementPtrInst15getAddressSpaceEv.exit43.i.i
  %i.kq = and i64 %i.hl, -8
  %i.kr = inttoptr i64 %i.kq to ptr
  call fastcc void @_ZN12_GLOBAL__N_126StraightLineStrengthReduce30allocateCandidatesAndFindBasisENS0_9Candidate4KindEPKN4llvm4SCEVEPNS3_11ConstantIntEPNS3_5ValueEPNS3_11InstructionE(ptr noundef nonnull align 8 dereferenceable(264) %0, i32 noundef 3, ptr noundef %i.kr, ptr noundef %i.im, ptr noundef nonnull %i.jq, ptr noundef nonnull %.ptr)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %_ZNK4llvm17GetElementPtrInst15getAddressSpaceEv.exit43.i.i, %bb.aq, %bb.ap
  %i.ks = load ptr, ptr %24, align 8, !tbaa !27
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %i.gt
  store i64 %i.gw, ptr %i.kt, align 8
  %i.ku = add i32 %.03288.i.i, 1                  ; 3 uses
  br i1 %.not.not.i.i.i.i, label %bb.av, label %_ZNK4llvm25generic_gep_type_iteratorIPKNS_3UseEE14getIndexedTypeEv.exit.i48.i.i

bb.av:                                            ; preds = %bb.au
  %i.kv = icmp ne i64 %i.go, 2
  %.not10.not.i.i51.i.i = or i1 %i.kv, %.not.not15.i.i.i.i
  br i1 %.not10.not.i.i51.i.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.kw = getelementptr inbounds nuw i8, ptr %i.hx, i64 24
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !139
  br label %_ZNK4llvm25generic_gep_type_iteratorIPKNS_3UseEE14getIndexedTypeEv.exit.i48.i.i

bb.ax:                                            ; preds = %bb.av, %.thread78.i.i
  %i.ky = phi i32 [ %i.gq, %.thread78.i.i ], [ %i.ku, %bb.av ]
  %i.kz = phi ptr [ %i.gr, %.thread78.i.i ], [ %i.hx, %bb.av ]
  %i.la = load ptr, ptr %.sroa.060.089.i.i, align 8, !tbaa !130
  %i.lb = call noundef ptr @_ZNK4llvm10StructType14getTypeAtIndexEPKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(32) %i.kz, ptr noundef %i.la) #21
  br label %_ZNK4llvm25generic_gep_type_iteratorIPKNS_3UseEE14getIndexedTypeEv.exit.i48.i.i

_ZNK4llvm25generic_gep_type_iteratorIPKNS_3UseEE14getIndexedTypeEv.exit.i48.i.i: ; preds = %bb.ax, %bb.aw, %bb.au
  %i.lc = phi i32 [ %i.ky, %bb.ax ], [ %i.ku, %bb.aw ], [ %i.ku, %bb.au ] ; 2 uses
  %.2.i.i49.i.i = phi ptr [ %i.lb, %bb.ax ], [ %i.kx, %bb.aw ], [ %i.hx, %bb.au ] ; 5 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %.2.i.i49.i.i, i64 8
  %i.le = load i32, ptr %i.ld, align 8            ; 2 uses
  %i.lf = and i32 %i.le, 255                      ; 2 uses
  %i.lg = icmp ne i32 %i.lf, 17
  %.not12.i.i.i = icmp eq ptr %.2.i.i49.i.i, null ; 2 uses
  %.not.i50.i.i = or i1 %.not12.i.i.i, %i.lg
  br i1 %.not.i50.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %_ZNK4llvm25generic_gep_type_iteratorIPKNS_3UseEE14getIndexedTypeEv.exit.i48.i.i
  %i.lh = getelementptr inbounds nuw i8, ptr %.2.i.i49.i.i, i64 24
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !149
  %i.lj = ptrtoint ptr %i.li to i64
  %i.lk = or i64 %i.lj, 4
  br label %_ZN4llvm25generic_gep_type_iteratorIPKNS_3UseEEppEv.exit.i.i

bb.az:                                            ; preds = %_ZNK4llvm25generic_gep_type_iteratorIPKNS_3UseEE14getIndexedTypeEv.exit.i48.i.i
  %i.ll = and i32 %i.le, 254
  %spec.select.i.i.i.i.i.i.i.i.i.i.i = icmp ne i32 %i.ll, 18
  %.not9.i.i.i = or i1 %.not12.i.i.i, %spec.select.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not9.i.i.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.lm = ptrtoint ptr %.2.i.i49.i.i to i64
  %i.ln = or i64 %i.lm, 2
  br label %_ZN4llvm25generic_gep_type_iteratorIPKNS_3UseEEppEv.exit.i.i

bb.bb:                                            ; preds = %bb.az
  %i.lo = icmp eq i32 %i.lf, 16
  %i.lp = ptrtoint ptr %.2.i.i49.i.i to i64
  %i.lq = select i1 %i.lo, i64 %i.lp, i64 0
  br label %_ZN4llvm25generic_gep_type_iteratorIPKNS_3UseEEppEv.exit.i.i

_ZN4llvm25generic_gep_type_iteratorIPKNS_3UseEEppEv.exit.i.i: ; preds = %bb.bb, %bb.ba, %bb.ay
  %.sink.i.i.i = phi i64 [ %i.ln, %bb.ba ], [ %i.lq, %bb.bb ], [ %i.lk, %bb.ay ]
  %.not33.i.i = icmp eq i32 %i.lc, %.pre-phi.i.i
  br i1 %.not33.i.i, label %._crit_edge91.i.i, label %bb.ai, !llvm.loop !340

_ZN12_GLOBAL__N_126StraightLineStrengthReduce30allocateCandidatesAndFindBasisEPN4llvm11InstructionE.exit: ; preds = %.lr.ph, %bb.q, %_ZNK4llvm4User10getOperandEj.exit14.i.i, %bb.u, %bb.v, %_ZNK4llvm4User10getOperandEj.exit14.i6.i, %bb.z, %bb.aa, %_ZN4llvm11SmallVectorINS_8SCEVUseTIPKNS_4SCEVEEELj4EED2Ev.exit.i.i
  %i.lr = getelementptr inbounds nuw i8, ptr %.sroa.011.079, i64 8
  %.sroa.011.0 = load ptr, ptr %i.lr, align 8, !tbaa !418 ; 2 uses
  %.not51 = icmp eq ptr %.sroa.011.0, %i.ds
  br i1 %.not51, label %._crit_edge, label %.lr.ph

._crit_edge85:                                    ; preds = %_ZN12_GLOBAL__N_126StraightLineStrengthReduce13addDependencyERNS0_9CandidateEPS1_.exit, %_ZN4llvm14iterator_rangeINS_11df_iteratorIPNS_13DominatorTreeENS_23df_iterator_default_setIPNS_15DomTreeNodeBaseINS_10BasicBlockEEELj8EEELb0ENS_11GraphTraitsIS3_EEEEED2Ev.exit
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !150 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 8 uses
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !151
  %.not.i.i.i50 = icmp eq ptr %i.lv, %i.lt
  br i1 %.not.i.i.i50, label %_ZNSt6vectorIPN4llvm11InstructionESaIS2_EE5clearEv.exit.i, label %bb.bc

bb.bc:                                            ; preds = %._crit_edge85
  store ptr %i.lt, ptr %i.lu, align 8, !tbaa !151
  br label %_ZNSt6vectorIPN4llvm11InstructionESaIS2_EE5clearEv.exit.i

_ZNSt6vectorIPN4llvm11InstructionESaIS2_EE5clearEv.exit.i: ; preds = %bb.bc, %._crit_edge85
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 0, i64 24, i1 false)
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 7 uses
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !27 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 8 uses
  %i.lz = load i32, ptr %i.ly, align 8, !tbaa !131 ; 2 uses
  %i.ma = zext i32 %i.lz to i64
  %.idx.i = shl nuw nsw i64 %i.ma, 5
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lx, i64 %.idx.i
  %.not83.i = icmp eq i32 %i.lz, 0
  br i1 %.not83.i, label %._crit_edge86.i, label %.lr.ph85.i

.lr.ph85.i:                                       ; preds = %_ZNSt6vectorIPN4llvm11InstructionESaIS2_EE5clearEv.exit.i
  %i.mc = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %21, i64 20 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 3 uses
  br label %bb.bd

._crit_edge86.i:                                  ; preds = %._crit_edge.i, %_ZNSt6vectorIPN4llvm11InstructionESaIS2_EE5clearEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #21
  %i.mf = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 4 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 5 uses
  store i64 8, ptr %i.mf, align 8, !tbaa !156
  %i.mh = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #23 ; 2 uses
  store ptr %i.mh, ptr %22, align 8, !tbaa !157
  %i.mi = load i64, ptr %i.mf, align 8, !tbaa !156
  %i.mj = add i64 %i.mi, -1
  %i.mk = lshr i64 %i.mj, 1
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %i.mk ; 3 uses
  %i.mm = call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #23 ; 6 uses
  store ptr %i.mm, ptr %i.ml, align 8, !tbaa !158
  %i.mn = getelementptr inbounds nuw i8, ptr %22, i64 40 ; 5 uses
  store ptr %i.ml, ptr %i.mn, align 8, !tbaa !159
  %i.mo = getelementptr inbounds nuw i8, ptr %22, i64 24 ; 3 uses
  store ptr %i.mm, ptr %i.mo, align 8, !tbaa !160
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mm, i64 512 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %22, i64 32 ; 4 uses
  store ptr %i.mp, ptr %i.mq, align 8, !tbaa !161
  %i.mr = getelementptr inbounds nuw i8, ptr %22, i64 48 ; 9 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %22, i64 72 ; 5 uses
  store ptr %i.ml, ptr %i.ms, align 8, !tbaa !159
  %i.mt = getelementptr inbounds nuw i8, ptr %22, i64 56 ; 3 uses
  store ptr %i.mm, ptr %i.mt, align 8, !tbaa !160
  %i.mu = getelementptr inbounds nuw i8, ptr %22, i64 64 ; 4 uses
  store ptr %i.mp, ptr %i.mu, align 8, !tbaa !161
  store ptr %i.mm, ptr %i.mg, align 8, !tbaa !420
  store ptr %i.mm, ptr %i.mr, align 8, !tbaa !162
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, i8 0, i64 24, i1 false)
  %i.mv = load ptr, ptr %i.lw, align 8, !tbaa !27 ; 2 uses
  %i.mw = load i32, ptr %i.ly, align 8, !tbaa !131 ; 2 uses
  %i.mx = zext i32 %i.mw to i64
  %.idx96.i = shl nuw nsw i64 %i.mx, 5
  %i.my = getelementptr inbounds nuw i8, ptr %i.mv, i64 %.idx96.i
  %.not2387.i = icmp eq i32 %i.mw, 0
  br i1 %.not2387.i, label %._crit_edge95.i, label %.lr.ph90.i

bb.bd:                                            ; preds = %._crit_edge.i, %.lr.ph85.i
  %.02284.i = phi ptr [ %i.lx, %.lr.ph85.i ], [ %i.ne, %._crit_edge.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i32 0, ptr %i.b, align 4, !tbaa !163
  %i.mz = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E24lookupOrInsertIntoBucketIRKS3_JiEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %21, ptr noundef nonnull align 8 dereferenceable(8) %.02284.i, ptr noundef nonnull align 4 dereferenceable(4) %i.b), !noalias !421 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %i.na = getelementptr inbounds nuw i8, ptr %.02284.i, i64 8
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !158 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %.02284.i, i64 16
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !158 ; 2 uses
  %.not7381.i = icmp eq ptr %i.nb, %i.nd
  br i1 %.not7381.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.bd
  %.pre.i51 = load ptr, ptr %21, align 8, !tbaa !166, !noalias !422
  %.pre103.i = load ptr, ptr %i.mc, align 8, !tbaa !167, !noalias !422
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit.i, %bb.bd
  %i.ne = getelementptr inbounds nuw i8, ptr %.02284.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.ne, %i.mb
  br i1 %.not.i, label %._crit_edge86.i, label %bb.bd

.lr.ph.i:                                         ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit.i, %.lr.ph.preheader.i
  %i.nf = phi ptr [ %i.qq, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit.i ], [ %.pre103.i, %.lr.ph.preheader.i ] ; 4 uses
  %i.ng = phi ptr [ %i.qr, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit.i ], [ %.pre.i51, %.lr.ph.preheader.i ] ; 4 uses
  %.sroa.065.082.i = phi ptr [ %i.qt, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit.i ], [ %i.nb, %.lr.ph.preheader.i ] ; 2 uses
  %i.nh = load ptr, ptr %.sroa.065.082.i, align 8, !tbaa !169 ; 5 uses
  %i.ni = load i32, ptr %i.md, align 4, !tbaa !170, !noalias !422 ; 4 uses
  %i.nj = icmp eq i32 %i.ni, 0
  br i1 %i.nj, label %.loopexit.i.i, label %bb.be

bb.be:                                            ; preds = %.lr.ph.i
  %i.nk = add i32 %i.ni, -1                       ; 2 uses
  %i.nl = ptrtoint ptr %i.nh to i64
  %i.nm = mul i64 %i.nl, -4658895280553007687     ; 2 uses
  %i.nn = lshr i64 %i.nm, 31
  %i.no = xor i64 %i.nn, %i.nm
  %i.np = trunc i64 %i.no to i32
  %i.nq = and i32 %i.nk, %i.np                    ; 3 uses
  %i.nr = zext i32 %i.nq to i64                   ; 2 uses
  %i.ns = getelementptr inbounds nuw [16 x i8], ptr %i.ng, i64 %i.nr ; 2 uses
  %i.nt = lshr i64 %i.nr, 5
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %i.nt
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !163
  %i.nw = and i32 %i.nq, 31
  %i.nx = lshr i32 %i.nv, %i.nw
  %i.ny = trunc i32 %i.nx to i1
  br i1 %i.ny, label %.lr.ph.i.i.i, label %.loopexit.i.i, !prof !171

.lr.ph.i.i.i:                                     ; preds = %bb.be, %bb.bf
  %i.nz = phi ptr [ %i.of, %bb.bf ], [ %i.ns, %bb.be ] ; 3 uses
  %.024.i.i.i = phi i32 [ %i.od, %bb.bf ], [ %i.nq, %bb.be ]
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !169
  %i.ob = icmp eq ptr %i.nh, %i.oa
  br i1 %i.ob, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit.loopexit.i, label %bb.bf, !prof !133

bb.bf:                                            ; preds = %.lr.ph.i.i.i
  %i.oc = add nuw i32 %.024.i.i.i, 1
  %i.od = and i32 %i.oc, %i.nk                    ; 3 uses
  %i.oe = zext i32 %i.od to i64                   ; 2 uses
  %i.of = getelementptr inbounds nuw [16 x i8], ptr %i.ng, i64 %i.oe ; 2 uses
  %i.og = lshr i64 %i.oe, 5
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %i.og
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !163
  %i.oj = and i32 %i.od, 31
  %i.ok = lshr i32 %i.oi, %i.oj
  %i.ol = trunc i32 %i.ok to i1
  br i1 %i.ol, label %.lr.ph.i.i.i, label %.loopexit.i.i, !prof !172, !llvm.loop !3

.loopexit.i.i:                                    ; preds = %bb.bf, %bb.be, %.lr.ph.i
  %.lcssa28.sink.i.ph.i.i = phi ptr [ %i.ns, %bb.be ], [ null, %.lr.ph.i ], [ %i.of, %bb.bf ]
  %i.om = load i32, ptr %i.me, align 8, !tbaa !173
  %i.on = shl i32 %i.om, 2
  %i.oo = add i32 %i.on, 4
  %i.op = mul i32 %i.ni, 3
  %.not.i.i32.i = icmp ult i32 %i.oo, %i.op
  br i1 %.not.i.i32.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit.i.i, label %bb.bg, !prof !133

bb.bg:                                            ; preds = %.loopexit.i.i
  %i.oq = shl i32 %i.ni, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %21, i32 noundef %i.oq)
  %i.or = load ptr, ptr %21, align 8, !tbaa !166, !noalias !423 ; 5 uses
  %i.os = load ptr, ptr %i.mc, align 8, !tbaa !167, !noalias !423 ; 5 uses
  %i.ot = load i32, ptr %i.md, align 4, !tbaa !170, !noalias !423 ; 2 uses
  %i.ou = icmp ne i32 %i.ot, 0
  call void @llvm.assume(i1 %i.ou)
  %i.ov = add i32 %i.ot, -1                       ; 2 uses
  %i.ow = ptrtoint ptr %i.nh to i64
  %i.ox = mul i64 %i.ow, -4658895280553007687     ; 2 uses
  %i.oy = lshr i64 %i.ox, 31
  %i.oz = xor i64 %i.oy, %i.ox
  %i.pa = trunc i64 %i.oz to i32
  %i.pb = and i32 %i.ov, %i.pa                    ; 3 uses
  %i.pc = zext i32 %i.pb to i64                   ; 2 uses
  %i.pd = getelementptr inbounds nuw [16 x i8], ptr %i.or, i64 %i.pc ; 2 uses
  %i.pe = lshr i64 %i.pc, 5
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.os, i64 %i.pe
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !163
  %i.ph = and i32 %i.pb, 31
  %i.pi = lshr i32 %i.pg, %i.ph
  %i.pj = trunc i32 %i.pi to i1
  br i1 %i.pj, label %.lr.ph.i.i56, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit.i.i, !prof !171

.lr.ph.i.i56:                                     ; preds = %bb.bg, %bb.bh
  %i.pk = phi ptr [ %i.pq, %bb.bh ], [ %i.pd, %bb.bg ] ; 2 uses
  %.024.i.i = phi i32 [ %i.po, %bb.bh ], [ %i.pb, %bb.bg ]
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !169
  %i.pm = icmp eq ptr %i.nh, %i.pl
  br i1 %i.pm, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit.i.i, label %bb.bh, !prof !133

bb.bh:                                            ; preds = %.lr.ph.i.i56
  %i.pn = add nuw i32 %.024.i.i, 1
  %i.po = and i32 %i.pn, %i.ov                    ; 3 uses
  %i.pp = zext i32 %i.po to i64                   ; 2 uses
  %i.pq = getelementptr inbounds nuw [16 x i8], ptr %i.or, i64 %i.pp ; 2 uses
  %i.pr = lshr i64 %i.pp, 5
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.os, i64 %i.pr
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !163
  %i.pu = and i32 %i.po, 31
  %i.pv = lshr i32 %i.pt, %i.pu
  %i.pw = trunc i32 %i.pv to i1
  br i1 %i.pw, label %.lr.ph.i.i56, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit.i.i, !prof !172, !llvm.loop !3

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit.i.i: ; preds = %bb.bh, %.lr.ph.i.i56, %bb.bg, %.loopexit.i.i
  %i.px = phi ptr [ %i.nf, %.loopexit.i.i ], [ %i.os, %bb.bg ], [ %i.os, %.lr.ph.i.i56 ], [ %i.os, %bb.bh ] ; 2 uses
  %i.py = phi ptr [ %i.ng, %.loopexit.i.i ], [ %i.or, %bb.bg ], [ %i.or, %.lr.ph.i.i56 ], [ %i.or, %bb.bh ] ; 2 uses
  %i.pz = phi ptr [ %.lcssa28.sink.i.ph.i.i, %.loopexit.i.i ], [ %i.pd, %bb.bg ], [ %i.pq, %bb.bh ], [ %i.pk, %.lr.ph.i.i56 ] ; 4 uses
  %i.qa = ptrtoint ptr %i.pz to i64
  %i.qb = ptrtoint ptr %i.py to i64
  %i.qc = sub i64 %i.qa, %i.qb
  %i.qd = ashr exact i64 %i.qc, 4                 ; 2 uses
  %i.qe = trunc i64 %i.qd to i32
  %i.qf = and i32 %i.qe, 31
  %i.qg = shl nuw i32 1, %i.qf
  %i.qh = lshr i64 %i.qd, 5
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.px, i64 %i.qh ; 2 uses
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !163
  %i.qk = or i32 %i.qg, %i.qj
  store i32 %i.qk, ptr %i.qi, align 4, !tbaa !163
  %i.ql = load i32, ptr %i.me, align 8, !tbaa !173
  %i.qm = add i32 %i.ql, 1
  store i32 %i.qm, ptr %i.me, align 8, !tbaa !173
  store ptr %i.nh, ptr %i.pz, align 8, !tbaa !169
  %i.qn = getelementptr inbounds nuw i8, ptr %i.pz, i64 8
  store i32 0, ptr %i.qn, align 8, !tbaa !163
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.nz, i64 8
  %.pre104.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !163
  %i.qo = add nsw i32 %.pre104.i, 1
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit.loopexit.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit.i.i
  %i.qp = phi i32 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit.i.i ], [ %i.qo, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit.loopexit.i ]
  %i.qq = phi ptr [ %i.px, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit.i.i ], [ %i.nf, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit.loopexit.i ]
  %i.qr = phi ptr [ %i.py, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit.i.i ], [ %i.ng, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit.loopexit.i ]
  %.sroa.0.0.i.i = phi ptr [ %i.pz, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit.i.i ], [ %i.nz, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit.loopexit.i ]
  %i.qs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8
  store i32 %i.qp, ptr %i.qs, align 4, !tbaa !163
  %i.qt = getelementptr inbounds nuw i8, ptr %.sroa.065.082.i, i64 8 ; 2 uses
  %.not73.i = icmp eq ptr %i.qt, %i.nd
  br i1 %.not73.i, label %._crit_edge.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %_ZNSt5queueIPN4llvm11InstructionESt5dequeIS2_SaIS2_EEE4pushERKS2_.exit.i
  %.pre105.i = load ptr, ptr %i.mr, align 8, !tbaa !174
  %.pre106.i = load ptr, ptr %i.mg, align 8, !tbaa !174 ; 2 uses
  %i.qu = icmp eq ptr %.pre105.i, %.pre106.i
  br i1 %i.qu, label %._crit_edge95.i, label %.lr.ph94.i

.lr.ph94.i:                                       ; preds = %.preheader.i
  %i.qv = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.qx = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %21, i64 20 ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 3 uses
  br label %bb.bl

.lr.ph90.i:                                       ; preds = %._crit_edge86.i, %_ZNSt5queueIPN4llvm11InstructionESt5dequeIS2_SaIS2_EEE4pushERKS2_.exit.i
  %.088.i = phi ptr [ %i.rj, %_ZNSt5queueIPN4llvm11InstructionESt5dequeIS2_SaIS2_EEE4pushERKS2_.exit.i ], [ %i.mv, %._crit_edge86.i ] ; 4 uses
  %i.ra = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %21, ptr noundef nonnull align 8 dereferenceable(8) %.088.i)
  %.fca.0.extract.i24.i = extractvalue { ptr, i8 } %i.ra, 0
  %i.rb = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i24.i, i64 8
  %i.rc = load i32, ptr %i.rb, align 4, !tbaa !163
  %i.rd = icmp eq i32 %i.rc, 0
  br i1 %i.rd, label %bb.bi, label %_ZNSt5queueIPN4llvm11InstructionESt5dequeIS2_SaIS2_EEE4pushERKS2_.exit.i

bb.bi:                                            ; preds = %.lr.ph90.i
  %i.re = load ptr, ptr %i.mr, align 8, !tbaa !162 ; 3 uses
  %i.rf = load ptr, ptr %i.mu, align 8, !tbaa !424
  %i.rg = getelementptr inbounds i8, ptr %i.rf, i64 -8
  %.not.i.i25.i = icmp eq ptr %i.re, %i.rg
  br i1 %.not.i.i25.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.rh = load ptr, ptr %.088.i, align 8, !tbaa !169
  store ptr %i.rh, ptr %i.re, align 8, !tbaa !169
  %i.ri = getelementptr inbounds nuw i8, ptr %i.re, i64 8
  store ptr %i.ri, ptr %i.mr, align 8, !tbaa !162
  br label %_ZNSt5queueIPN4llvm11InstructionESt5dequeIS2_SaIS2_EEE4pushERKS2_.exit.i

bb.bk:                                            ; preds = %bb.bi
  call void @_ZNSt5dequeIPN4llvm11InstructionESaIS2_EE16_M_push_back_auxIJRKS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %22, ptr noundef nonnull align 8 dereferenceable(8) %.088.i)
  br label %_ZNSt5queueIPN4llvm11InstructionESt5dequeIS2_SaIS2_EEE4pushERKS2_.exit.i

_ZNSt5queueIPN4llvm11InstructionESt5dequeIS2_SaIS2_EEE4pushERKS2_.exit.i: ; preds = %bb.bk, %bb.bj, %.lr.ph90.i
  %i.rj = getelementptr inbounds nuw i8, ptr %.088.i, i64 32 ; 2 uses
  %.not23.i = icmp eq ptr %i.rj, %i.my
  br i1 %.not23.i, label %.preheader.i, label %.lr.ph90.i

bb.bl:                                            ; preds = %.loopexit.i, %.lr.ph94.i
  %i.rk = phi ptr [ %.pre106.i, %.lr.ph94.i ], [ %i.yv, %.loopexit.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !169
  store ptr %i.rl, ptr %i.c, align 8, !tbaa !169
  %i.rm = load ptr, ptr %i.mq, align 8, !tbaa !425
  %i.rn = getelementptr inbounds i8, ptr %i.rm, i64 -8
  %.not.i.i26.i = icmp eq ptr %i.rk, %i.rn
  br i1 %.not.i.i26.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rk, i64 8
  br label %_ZNSt5queueIPN4llvm11InstructionESt5dequeIS2_SaIS2_EEE3popEv.exit.i

bb.bn:                                            ; preds = %bb.bl
  %i.rp = load ptr, ptr %i.mo, align 8, !tbaa !426
  call void @_ZdlPvm(ptr noundef %i.rp, i64 noundef 512) #24
  %i.rq = load ptr, ptr %i.mn, align 8, !tbaa !175
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 8 ; 2 uses
  store ptr %i.rr, ptr %i.mn, align 8, !tbaa !159
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !158 ; 3 uses
  store ptr %i.rs, ptr %i.mo, align 8, !tbaa !160
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 512
  store ptr %i.rt, ptr %i.mq, align 8, !tbaa !161
  br label %_ZNSt5queueIPN4llvm11InstructionESt5dequeIS2_SaIS2_EEE3popEv.exit.i

_ZNSt5queueIPN4llvm11InstructionESt5dequeIS2_SaIS2_EEE3popEv.exit.i: ; preds = %bb.bn, %bb.bm
  %storemerge.i.i.i = phi ptr [ %i.ro, %bb.bm ], [ %i.rs, %bb.bn ]
  store ptr %storemerge.i.i.i, ptr %i.mg, align 8, !tbaa !420
  %i.ru = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(8) %i.c), !noalias !427
  %.fca.1.extract.i.i.i.i = extractvalue { ptr, i8 } %i.ru, 1
  %i.rv = trunc nuw i8 %.fca.1.extract.i.i.i.i to i1
  br i1 %i.rv, label %bb.bo, label %.loopexit.i, !llvm.loop !359

bb.bo:                                            ; preds = %_ZNSt5queueIPN4llvm11InstructionESt5dequeIS2_SaIS2_EEE3popEv.exit.i
  %i.rw = load ptr, ptr %i.lu, align 8, !tbaa !151 ; 4 uses
  %i.rx = load ptr, ptr %i.qv, align 8, !tbaa !176
  %.not.i.i52 = icmp eq ptr %i.rw, %i.rx
  br i1 %.not.i.i52, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ry = load ptr, ptr %i.c, align 8, !tbaa !169
  store ptr %i.ry, ptr %i.rw, align 8, !tbaa !169
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rw, i64 8
  store ptr %i.rz, ptr %i.lu, align 8, !tbaa !151
  br label %_ZNSt6vectorIPN4llvm11InstructionESaIS2_EE9push_backERKS2_.exit.i

bb.bq:                                            ; preds = %bb.bo
  %i.sa = load ptr, ptr %i.ls, align 8, !tbaa !150 ; 4 uses
  %i.sb = ptrtoint ptr %i.rw to i64
  %i.sc = ptrtoint ptr %i.sa to i64               ; 2 uses
  %i.sd = sub i64 %i.sb, %i.sc                    ; 5 uses
  %i.se = icmp eq i64 %i.sd, 9223372036854775800
  br i1 %i.se, label %bb.br, label %_ZNKSt6vectorIPN4llvm11InstructionESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.br:                                            ; preds = %bb.bq
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #22
  unreachable

_ZNKSt6vectorIPN4llvm11InstructionESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bq
  %i.sf = ashr exact i64 %i.sd, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.sf, i64 1)
  %i.sg = add nsw i64 %.sroa.speculated.i.i.i.i, %i.sf ; 2 uses
  %i.sh = icmp ult i64 %i.sg, %i.sf
  %i.si = call i64 @llvm.umin.i64(i64 %i.sg, i64 1152921504606846975)
  %i.sj = select i1 %i.sh, i64 1152921504606846975, i64 %i.si ; 3 uses
  %.not.i.i.i.i55 = icmp ne i64 %i.sj, 0
  call void @llvm.assume(i1 %.not.i.i.i.i55)
  %i.sk = shl nuw nsw i64 %i.sj, 3
  %i.sl = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.sk) #23 ; 4 uses
  %i.sm = getelementptr inbounds i8, ptr %i.sl, i64 %i.sd ; 2 uses
  %i.sn = load ptr, ptr %i.c, align 8, !tbaa !169
  store ptr %i.sn, ptr %i.sm, align 8, !tbaa !169
  %i.so = icmp sgt i64 %i.sd, 0
  br i1 %i.so, label %bb.bs, label %_ZNSt6vectorIPN4llvm11InstructionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.bs:                                            ; preds = %_ZNKSt6vectorIPN4llvm11InstructionESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.sl, ptr align 8 %i.sa, i64 %i.sd, i1 false)
  br label %_ZNSt6vectorIPN4llvm11InstructionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPN4llvm11InstructionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.bs, %_ZNKSt6vectorIPN4llvm11InstructionESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sm, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.sa, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN4llvm11InstructionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.bt

bb.bt:                                            ; preds = %_ZNSt6vectorIPN4llvm11InstructionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  %i.sq = load ptr, ptr %i.qv, align 8, !tbaa !176
  %i.sr = ptrtoint ptr %i.sq to i64
  %i.ss = sub i64 %i.sr, %i.sc
  call void @_ZdlPvm(ptr noundef nonnull %i.sa, i64 noundef %i.ss) #24
  br label %_ZNSt6vectorIPN4llvm11InstructionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN4llvm11InstructionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.bt, %_ZNSt6vectorIPN4llvm11InstructionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.sl, ptr %i.ls, align 8, !tbaa !150
  store ptr %i.sp, ptr %i.lu, align 8, !tbaa !151
  %i.st = getelementptr inbounds nuw [8 x i8], ptr %i.sl, i64 %i.sj
  store ptr %i.st, ptr %i.qv, align 8, !tbaa !176
  br label %_ZNSt6vectorIPN4llvm11InstructionESaIS2_EE9push_backERKS2_.exit.i

_ZNSt6vectorIPN4llvm11InstructionESaIS2_EE9push_backERKS2_.exit.i: ; preds = %_ZNSt6vectorIPN4llvm11InstructionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.bp
  %i.su = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(40) %29, ptr noundef nonnull align 8 dereferenceable(8) %i.c), !noalias !428 ; 2 uses
  %.fca.0.extract.i.i.i.i.i53 = extractvalue { ptr, i8 } %i.su, 0
  %.fca.1.extract.i.i.i.i.i54 = extractvalue { ptr, i8 } %i.su, 1
  %i.sv = trunc nuw i8 %.fca.1.extract.i.i.i.i.i54 to i1
  %i.sw = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i.i.i53, i64 8 ; 2 uses
  br i1 %i.sv, label %bb.bu, label %bb.bx

bb.bu:                                            ; preds = %_ZNSt6vectorIPN4llvm11InstructionESaIS2_EE9push_backERKS2_.exit.i
  %i.sx = load i32, ptr %i.ly, align 8, !tbaa !131 ; 3 uses
  store i32 %i.sx, ptr %i.sw, align 8, !tbaa !178
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  store ptr %i.c, ptr %19, align 8, !tbaa !158, !alias.scope !429
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #21
  %i.sy = load i32, ptr %i.qw, align 4, !tbaa !132
  %.not.i.i.i27.i = icmp ult i32 %i.sx, %i.sy
  br i1 %.not.i.i.i27.i, label %bb.bw, label %bb.bv, !prof !133

bb.bv:                                            ; preds = %bb.bu
  %i.sz = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_11InstructionESt6vectorIS3_SaIS3_EEELb0EE18growAndEmplaceBackIJRKSt21piecewise_construct_tSt5tupleIJRKS3_EESD_IJEEEEERS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.lw, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 1 dereferenceable(1) %20) ; 0 uses
  %.pre.i.i.i = load i32, ptr %i.ly, align 8, !tbaa !131
  br label %_ZN4llvm15SmallVectorImplISt4pairIPNS_11InstructionESt6vectorIS3_SaIS3_EEEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS3_EESD_IJEEEEERS7_DpOT_.exit.i.i.i

bb.bw:                                            ; preds = %bb.bu
  %i.ta = zext i32 %i.sx to i64
  %i.tb = load ptr, ptr %i.lw, align 8, !tbaa !27
  %i.tc = getelementptr inbounds nuw [32 x i8], ptr %i.tb, i64 %i.ta ; 2 uses
  %i.td = load ptr, ptr %i.c, align 8, !tbaa !169
  store ptr %i.td, ptr %i.tc, align 8, !tbaa !180
  %i.te = getelementptr inbounds nuw i8, ptr %i.tc, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.te, i8 0, i64 24, i1 false)
  %i.tf = load i32, ptr %i.ly, align 8, !tbaa !131
  %i.tg = add i32 %i.tf, 1                        ; 2 uses
  store i32 %i.tg, ptr %i.ly, align 8, !tbaa !131
  br label %_ZN4llvm15SmallVectorImplISt4pairIPNS_11InstructionESt6vectorIS3_SaIS3_EEEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS3_EESD_IJEEEEERS7_DpOT_.exit.i.i.i

_ZN4llvm15SmallVectorImplISt4pairIPNS_11InstructionESt6vectorIS3_SaIS3_EEEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS3_EESD_IJEEEEERS7_DpOT_.exit.i.i.i: ; preds = %bb.bw, %bb.bv
  %i.th = phi i32 [ %.pre.i.i.i, %bb.bv ], [ %i.tg, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  %i.ti = load ptr, ptr %i.lw, align 8, !tbaa !27
  %i.tj = zext i32 %i.th to i64
  %i.tk = getelementptr inbounds nuw [32 x i8], ptr %i.ti, i64 %i.tj
  %i.tl = getelementptr inbounds i8, ptr %i.tk, i64 -32
  br label %_ZN4llvm9MapVectorIPNS_11InstructionESt6vectorIS2_SaIS2_EENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_S5_ELj0EEELj0EEixERKS2_.exit.i

bb.bx:                                            ; preds = %_ZNSt6vectorIPN4llvm11InstructionESaIS2_EE9push_backERKS2_.exit.i
  %i.tm = load ptr, ptr %i.lw, align 8, !tbaa !27
  %i.tn = load i32, ptr %i.sw, align 8, !tbaa !178
  %i.to = zext i32 %i.tn to i64
  %i.tp = getelementptr inbounds nuw [32 x i8], ptr %i.tm, i64 %i.to
  br label %_ZN4llvm9MapVectorIPNS_11InstructionESt6vectorIS2_SaIS2_EENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_S5_ELj0EEELj0EEixERKS2_.exit.i

_ZN4llvm9MapVectorIPNS_11InstructionESt6vectorIS2_SaIS2_EENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_S5_ELj0EEELj0EEixERKS2_.exit.i: ; preds = %bb.bx, %_ZN4llvm15SmallVectorImplISt4pairIPNS_11InstructionESt6vectorIS3_SaIS3_EEEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS3_EESD_IJEEEEERS7_DpOT_.exit.i.i.i
  %.sroa.09.0.i.i.i = phi ptr [ %i.tl, %_ZN4llvm15SmallVectorImplISt4pairIPNS_11InstructionESt6vectorIS3_SaIS3_EEEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS3_EESD_IJEEEEERS7_DpOT_.exit.i.i.i ], [ %i.tp, %bb.bx ] ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i, i64 8
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !158 ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i, i64 16
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !158 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_126StraightLineStrengthReduce13runOnFunctionERN4llvm8FunctionE:bb.a
  br i1 %.not.i6.not.i.i.i.i, label %bb.fe, label %bb.fb

bb.fb:                                            ; preds = %_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_11is_zero_intENS_11ConstantIntELb1EE5matchINS_5ValueEEEbPT_.exit.i.i.i.i
  %i.ash = load ptr, ptr %i.abb, align 8, !tbaa !458, !nonnull !37, !align !216
  store ptr %i.asg, ptr %i.ash, align 8, !tbaa !238
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %i.asi = getelementptr inbounds nuw i8, ptr %i.amw, i64 32
  %i.asj = load ptr, ptr %i.asi, align 8, !tbaa !214 ; 2 uses
  %i.ask = load ptr, ptr %i.a, align 8, !tbaa !238 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  store i16 257, ptr %i.abc, align 8
  %i.asl = load ptr, ptr %i.aak, align 8, !tbaa !232, !nonnull !37, !align !216 ; 2 uses
  %i.asm = load ptr, ptr %i.asl, align 8, !tbaa !29
  %i.asn = getelementptr inbounds nuw i8, ptr %i.asm, i64 32
  %i.aso = load ptr, ptr %i.asn, align 8
  %i.asp = call noundef ptr %i.aso(ptr noundef nonnull align 8 dereferenceable(8) %i.asl, i32 noundef 16, ptr noundef %i.asj, ptr noundef %i.ask, i1 noundef zeroext false, i1 noundef zeroext false) #21, !inline_history !411 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.asp, null
  br i1 %.not.not.i.i, label %bb.fc, label %_ZN4llvm13IRBuilderBase9CreateSubEPNS_5ValueES2_RKNS_5TwineEbb.exit.i

bb.fc:                                            ; preds = %bb.fb
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store i8 1, ptr %i.abd, align 8, !tbaa !235
  store i8 1, ptr %i.abe, align 1, !tbaa !236
  %i.asq = call noundef ptr @_ZN4llvm14BinaryOperator6CreateENS_11Instruction9BinaryOpsEPNS_5ValueES4_RKNS_5TwineENS_14InsertPositionE(i32 noundef 16, ptr noundef %i.asj, ptr noundef %i.ask, ptr noundef nonnull align 8 dereferenceable(34) %2, ptr null, i64 0) #21 ; 3 uses
  %i.asr = load ptr, ptr %i.aal, align 8, !tbaa !237, !nonnull !37, !align !216 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.aat, align 8
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %i.ass = load ptr, ptr %i.asr, align 8, !tbaa !29
  %i.ast = getelementptr inbounds nuw i8, ptr %i.ass, i64 16
  %i.asu = load ptr, ptr %i.ast, align 8
  call void %i.asu(ptr noundef nonnull align 8 dereferenceable(8) %i.asr, ptr noundef %i.asq, ptr noundef nonnull align 8 dereferenceable(34) %11, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.2.0.copyload.i.i.i.i) #21, !inline_history !412
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %9, ptr noundef %i.asq) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %_ZN4llvm13IRBuilderBase9CreateSubEPNS_5ValueES2_RKNS_5TwineEbb.exit.i

_ZN4llvm13IRBuilderBase9CreateSubEPNS_5ValueES2_RKNS_5TwineEbb.exit.i: ; preds = %bb.fc, %bb.fb
  %.1.i23.i = phi ptr [ %i.asp, %bb.fb ], [ %i.asq, %bb.fc ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %12, i8 0, i64 32, i1 false)
  %i.asv = call noundef zeroext i1 @_ZN4llvm42RecursivelyDeleteTriviallyDeadInstructionsEPNS_5ValueEPKNS_17TargetLibraryInfoEPNS_16MemorySSAUpdaterESt8functionIFvS1_EE(ptr noundef nonnull %.2.i38.i, ptr noundef null, ptr noundef null, ptr nofree noundef nonnull align 8 dereferenceable(32) %12) #21 ; 0 uses
  %i.asw = load ptr, ptr %i.abf, align 8, !tbaa !31 ; 2 uses
  %.not.i24.i = icmp eq ptr %i.asw, null
  br i1 %.not.i24.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.fd

bb.fd:                                            ; preds = %_ZN4llvm13IRBuilderBase9CreateSubEPNS_5ValueES2_RKNS_5TwineEbb.exit.i
  %i.asx = call noundef zeroext i1 %i.asw(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef 3) #21, !inline_history !413 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.i

bb.fe:                                            ; preds = %_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_11is_zero_intENS_11ConstantIntELb1EE5matchINS_5ValueEEEbPT_.exit.i.i.i.i, %_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_11is_zero_intENS_11ConstantIntELb1EE10match_implINS_5ValueEEEbPT_.exit.i.i.i.i.i, %.split.i.i.i.i.i, %_ZNK4llvm12PatternMatch11is_zero_int7isValueERKNS_5APIntE.exit.i.i.i.i.i.i, %.split7.i.i.i.i.i, %bb.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %i.asy = getelementptr inbounds nuw i8, ptr %i.amw, i64 32
  %i.asz = load ptr, ptr %i.asy, align 8, !tbaa !214 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  store i16 257, ptr %i.abg, align 8
  %i.ata = load ptr, ptr %i.aak, align 8, !tbaa !232, !nonnull !37, !align !216 ; 2 uses
  %i.atb = load ptr, ptr %i.ata, align 8, !tbaa !29
  %i.atc = getelementptr inbounds nuw i8, ptr %i.atb, i64 32
  %i.atd = load ptr, ptr %i.atc, align 8
  %i.ate = call noundef ptr %i.atd(ptr noundef nonnull align 8 dereferenceable(8) %i.ata, i32 noundef 14, ptr noundef %i.asz, ptr noundef nonnull %.2.i38.i, i1 noundef zeroext false, i1 noundef zeroext false) #21, !inline_history !414 ; 2 uses
  %.not.not.i25.i = icmp eq ptr %i.ate, null
  br i1 %.not.not.i25.i, label %bb.ff, label %_ZN4llvm13IRBuilderBase9CreateAddEPNS_5ValueES2_RKNS_5TwineEbb.exit.i

bb.ff:                                            ; preds = %bb.fe
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store i8 1, ptr %i.abh, align 8, !tbaa !235
  store i8 1, ptr %i.abi, align 1, !tbaa !236
  %i.atf = call noundef ptr @_ZN4llvm14BinaryOperator6CreateENS_11Instruction9BinaryOpsEPNS_5ValueES4_RKNS_5TwineENS_14InsertPositionE(i32 noundef 14, ptr noundef %i.asz, ptr noundef nonnull %.2.i38.i, ptr noundef nonnull align 8 dereferenceable(34) %1, ptr null, i64 0) #21 ; 3 uses
  %i.atg = load ptr, ptr %i.aal, align 8, !tbaa !237, !nonnull !37, !align !216 ; 2 uses
  %.sroa.0.0.copyload.i.i.i27.i = load ptr, ptr %i.aat, align 8
  %.sroa.2.0.copyload.i.i.i29.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %i.ath = load ptr, ptr %i.atg, align 8, !tbaa !29
  %i.ati = getelementptr inbounds nuw i8, ptr %i.ath, i64 16
  %i.atj = load ptr, ptr %i.ati, align 8
  call void %i.atj(ptr noundef nonnull align 8 dereferenceable(8) %i.atg, ptr noundef %i.atf, ptr noundef nonnull align 8 dereferenceable(34) %13, ptr %.sroa.0.0.copyload.i.i.i27.i, i64 %.sroa.2.0.copyload.i.i.i29.i) #21, !inline_history !415
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %9, ptr noundef %i.atf) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %_ZN4llvm13IRBuilderBase9CreateAddEPNS_5ValueES2_RKNS_5TwineEbb.exit.i

_ZN4llvm13IRBuilderBase9CreateAddEPNS_5ValueES2_RKNS_5TwineEbb.exit.i: ; preds = %bb.ff, %bb.fe
  %.1.i26.i = phi ptr [ %i.ate, %bb.fe ], [ %i.atf, %bb.ff ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br label %_ZNSt14_Function_baseD2Ev.exit.i

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %_ZN4llvm13IRBuilderBase9CreateAddEPNS_5ValueES2_RKNS_5TwineEbb.exit.i, %bb.fd, %_ZN4llvm13IRBuilderBase9CreateSubEPNS_5ValueES2_RKNS_5TwineEbb.exit.i
  %.0.i = phi ptr [ %.1.i26.i, %_ZN4llvm13IRBuilderBase9CreateAddEPNS_5ValueES2_RKNS_5TwineEbb.exit.i ], [ %.1.i23.i, %_ZN4llvm13IRBuilderBase9CreateSubEPNS_5ValueES2_RKNS_5TwineEbb.exit.i ], [ %.1.i23.i, %bb.fd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.fh

bb.fg:                                            ; preds = %_ZN12_GLOBAL__N_126StraightLineStrengthReduce8emitBumpERKNS0_9CandidateES3_RN4llvm9IRBuilderINS4_14ConstantFolderENS4_24IRBuilderDefaultInserterEEEPKNS4_10DataLayoutE.exit.thread35.i
  %i.atk = load ptr, ptr %i.amx, align 8, !tbaa !214
  %i.atl = call noundef zeroext i1 @_ZNK4llvm17GetElementPtrInst10isInBoundsEv(ptr noundef nonnull align 8 dereferenceable(88) %i.atk) #21
  %i.atm = getelementptr inbounds nuw i8, ptr %i.amw, i64 32
  %i.atn = load ptr, ptr %i.atm, align 8, !tbaa !214
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  %i.ato = select i1 %i.atl, i32 3, i32 0
  store i16 257, ptr %i.abj, align 8
  %i.atp = call noundef ptr @_ZN4llvm13IRBuilderBase12CreatePtrAddEPNS_5ValueES2_RKNS_5TwineENS_14GEPNoWrapFlagsE(ptr noundef nonnull align 8 dereferenceable(88) %9, ptr noundef %i.atn, ptr noundef nonnull %.2.i38.i, ptr noundef nonnull align 8 dereferenceable(34) %14, i32 %i.ato)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %_ZNSt14_Function_baseD2Ev.exit.i
  %.1.i = phi ptr [ %.0.i, %_ZNSt14_Function_baseD2Ev.exit.i ], [ %i.atp, %bb.fg ] ; 2 uses
  %i.atq = load ptr, ptr %i.amx, align 8, !tbaa !214
  call void @_ZN4llvm5Value8takeNameEPS0_(ptr noundef nonnull align 8 dereferenceable(24) %.1.i, ptr noundef %i.atq) #21
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %_ZN12_GLOBAL__N_126StraightLineStrengthReduce8emitBumpERKNS0_9CandidateES3_RN4llvm9IRBuilderINS4_14ConstantFolderENS4_24IRBuilderDefaultInserterEEEPKNS4_10DataLayoutE.exit.thread.i
  %.2.i83 = phi ptr [ %.1.i, %bb.fh ], [ %i.ari, %_ZN12_GLOBAL__N_126StraightLineStrengthReduce8emitBumpERKNS0_9CandidateES3_RN4llvm9IRBuilderINS4_14ConstantFolderENS4_24IRBuilderDefaultInserterEEEPKNS4_10DataLayoutE.exit.thread.i ]
  %i.atr = load ptr, ptr %i.amx, align 8, !tbaa !214
  call void @_ZN4llvm5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.atr, ptr noundef %.2.i83) #21
  %i.ats = load ptr, ptr %i.abl, align 8, !tbaa !151 ; 4 uses
  %i.att = load ptr, ptr %i.abm, align 8, !tbaa !176
  %.not.i30.i = icmp eq ptr %i.ats, %i.att
  br i1 %.not.i30.i, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.atu = load ptr, ptr %i.amx, align 8, !tbaa !169
  store ptr %i.atu, ptr %i.ats, align 8, !tbaa !169
  %i.atv = getelementptr inbounds nuw i8, ptr %i.ats, i64 8
  store ptr %i.atv, ptr %i.abl, align 8, !tbaa !151
  br label %_ZNSt6vectorIPN4llvm11InstructionESaIS2_EE9push_backERKS2_.exit.i84

bb.fk:                                            ; preds = %bb.fi
  %i.atw = load ptr, ptr %i.abk, align 8, !tbaa !150 ; 4 uses
  %i.atx = ptrtoint ptr %i.ats to i64
  %i.aty = ptrtoint ptr %i.atw to i64             ; 2 uses
  %i.atz = sub i64 %i.atx, %i.aty                 ; 5 uses
  %i.aua = icmp eq i64 %i.atz, 9223372036854775800
  br i1 %i.aua, label %bb.fl, label %_ZNKSt6vectorIPN4llvm11InstructionESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i85

bb.fl:                                            ; preds = %bb.fk
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #22
  unreachable

_ZNKSt6vectorIPN4llvm11InstructionESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i85: ; preds = %bb.fk
  %i.aub = ashr exact i64 %i.atz, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i86 = call i64 @llvm.umax.i64(i64 %i.aub, i64 1)
  %i.auc = add nsw i64 %.sroa.speculated.i.i.i.i86, %i.aub ; 2 uses
  %i.aud = icmp ult i64 %i.auc, %i.aub
  %i.aue = call i64 @llvm.umin.i64(i64 %i.auc, i64 1152921504606846975)
  %i.auf = select i1 %i.aud, i64 1152921504606846975, i64 %i.aue ; 3 uses
  %.not.i.i.i.i87 = icmp ne i64 %i.auf, 0
  call void @llvm.assume(i1 %.not.i.i.i.i87)
  %i.aug = shl nuw nsw i64 %i.auf, 3
  %i.auh = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aug) #23 ; 4 uses
  %i.aui = getelementptr inbounds i8, ptr %i.auh, i64 %i.atz ; 2 uses
  %i.auj = load ptr, ptr %i.amx, align 8, !tbaa !169
  store ptr %i.auj, ptr %i.aui, align 8, !tbaa !169
  %i.auk = icmp sgt i64 %i.atz, 0
  br i1 %i.auk, label %bb.fm, label %_ZNSt6vectorIPN4llvm11InstructionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i88

bb.fm:                                            ; preds = %_ZNKSt6vectorIPN4llvm11InstructionESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i85
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.auh, ptr align 8 %i.atw, i64 %i.atz, i1 false)
  br label %_ZNSt6vectorIPN4llvm11InstructionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i88

_ZNSt6vectorIPN4llvm11InstructionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i88: ; preds = %bb.fm, %_ZNKSt6vectorIPN4llvm11InstructionESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i85
  %i.aul = getelementptr inbounds nuw i8, ptr %i.aui, i64 8
  %.not.i17.i.i.i89 = icmp eq ptr %i.atw, null
  br i1 %.not.i17.i.i.i89, label %_ZNSt6vectorIPN4llvm11InstructionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i90, label %bb.fn

bb.fn:                                            ; preds = %_ZNSt6vectorIPN4llvm11InstructionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i88
  %i.aum = load ptr, ptr %i.abm, align 8, !tbaa !176
  %i.aun = ptrtoint ptr %i.aum to i64
  %i.auo = sub i64 %i.aun, %i.aty
  call void @_ZdlPvm(ptr noundef nonnull %i.atw, i64 noundef %i.auo) #24
  br label %_ZNSt6vectorIPN4llvm11InstructionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i90

_ZNSt6vectorIPN4llvm11InstructionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i90: ; preds = %bb.fn, %_ZNSt6vectorIPN4llvm11InstructionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i88
  store ptr %i.auh, ptr %i.abk, align 8, !tbaa !150
  store ptr %i.aul, ptr %i.abl, align 8, !tbaa !151
  %i.aup = getelementptr inbounds nuw [8 x i8], ptr %i.auh, i64 %i.auf
  store ptr %i.aup, ptr %i.abm, align 8, !tbaa !176
  br label %_ZNSt6vectorIPN4llvm11InstructionESaIS2_EE9push_backERKS2_.exit.i84

_ZNSt6vectorIPN4llvm11InstructionESaIS2_EE9push_backERKS2_.exit.i84: ; preds = %_ZNSt6vectorIPN4llvm11InstructionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i90, %bb.fj
  call void @_ZN4llvm24IRBuilderDefaultInserterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aai) #21
  call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aah) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %_ZN12_GLOBAL__N_126StraightLineStrengthReduce16rewriteCandidateERKNS0_9CandidateE.exit

_ZN12_GLOBAL__N_126StraightLineStrengthReduce16rewriteCandidateERKNS0_9CandidateE.exit: ; preds = %_ZN4llvm12DebugCounter13shouldExecuteERNS0_11CounterInfoE.exit.i, %_ZNSt6vectorIPN4llvm11InstructionESaIS2_EE9push_backERKS2_.exit.i84
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  br label %_ZNK12_GLOBAL__N_126StraightLineStrengthReduce20pickRewriteCandidateEPN4llvm11InstructionE.exit.thread

_ZNK12_GLOBAL__N_126StraightLineStrengthReduce20pickRewriteCandidateEPN4llvm11InstructionE.exit.thread: ; preds = %bb.de, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionENS_11SmallVectorIPN12_GLOBAL__N_126StraightLineStrengthReduce9CandidateELj3EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E4findEPKS2_.exit.i, %_ZN12_GLOBAL__N_126StraightLineStrengthReduce16rewriteCandidateERKNS0_9CandidateE.exit, %_ZNK12_GLOBAL__N_126StraightLineStrengthReduce20pickRewriteCandidateEPN4llvm11InstructionE.exit
  %.not53 = icmp eq ptr %i.aep, %i.aad
  br i1 %.not53, label %._crit_edge89, label %bb.db

._crit_edge94:                                    ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %.pre113 = load ptr, ptr %i.aek, align 8, !tbaa !158 ; 2 uses
  %.pre114 = load ptr, ptr %i.aem, align 8, !tbaa !158
  %.not243 = icmp eq ptr %.pre113, %.pre114
  br i1 %.not243, label %_ZNSt6vectorIPN4llvm11InstructionESaIS2_EE5clearEv.exit, label %bb.fo

bb.fo:                                            ; preds = %._crit_edge94
  store ptr %.pre113, ptr %i.aem, align 8, !tbaa !151
  br label %_ZNSt6vectorIPN4llvm11InstructionESaIS2_EE5clearEv.exit

_ZNSt6vectorIPN4llvm11InstructionESaIS2_EE5clearEv.exit: ; preds = %._crit_edge89, %._crit_edge94, %bb.fo
  %i.auq = phi i1 [ true, %bb.fo ], [ false, %._crit_edge94 ], [ false, %._crit_edge89 ]
  %i.aur = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.aus = load i32, ptr %i.aur, align 8, !tbaa !239 ; 2 uses
  %i.aut = icmp eq i32 %i.aus, 0
  br i1 %i.aut, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E5clearEv.exit.i, label %bb.fp

bb.fp:                                            ; preds = %_ZNSt6vectorIPN4llvm11InstructionESaIS2_EE5clearEv.exit
  %i.auu = shl i32 %i.aus, 2
  %i.auv = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.auw = load i32, ptr %i.auv, align 4, !tbaa !240 ; 3 uses
  %i.aux = icmp ult i32 %i.auu, %i.auw
  %i.auy = icmp ugt i32 %i.auw, 64
  %or.cond.i.i = and i1 %i.aux, %i.auy
  br i1 %or.cond.i.i, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E16shrink_and_clearEv(ptr noundef nonnull align 8 dereferenceable(40) %29)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E5clearEv.exit.i

bb.fr:                                            ; preds = %bb.fp
  %i.auz = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ava = load ptr, ptr %i.auz, align 8, !tbaa !241
  %i.avb = zext i32 %i.auw to i64
  %i.avc = add nuw nsw i64 %i.avb, 31
  %i.avd = lshr i64 %i.avc, 3
  %i.ave = and i64 %i.avd, 1073741820
  call void @llvm.memset.p0.i64(ptr align 4 %i.ava, i8 0, i64 %i.ave, i1 false)
  store i32 0, ptr %i.aur, align 8, !tbaa !239
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E5clearEv.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E5clearEv.exit.i: ; preds = %bb.fr, %bb.fq, %_ZNSt6vectorIPN4llvm11InstructionESaIS2_EE5clearEv.exit
  %i.avf = load ptr, ptr %i.lw, align 8, !tbaa !27 ; 2 uses
  %i.avg = load i32, ptr %i.ly, align 8, !tbaa !131 ; 2 uses
  %.not4.i.i.i = icmp eq i32 %i.avg, 0
  br i1 %.not4.i.i.i, label %_ZN4llvm9MapVectorIPNS_11InstructionESt6vectorIS2_SaIS2_EENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_S5_ELj0EEELj0EE5clearEv.exit, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E5clearEv.exit.i
  %i.avh = zext i32 %i.avg to i64
  %.idx.i.i = shl nuw nsw i64 %i.avh, 5
  %i.avi = getelementptr inbounds nuw i8, ptr %i.avf, i64 %.idx.i.i
  br label %.lr.ph.i.i.i96

.lr.ph.i.i.i96:                                   ; preds = %_ZNSt4pairIPN4llvm11InstructionESt6vectorIS2_SaIS2_EEED2Ev.exit.i.i.i, %.lr.ph.i.preheader.i.i
  %.05.i.i.i = phi ptr [ %i.avj, %_ZNSt4pairIPN4llvm11InstructionESt6vectorIS2_SaIS2_EEED2Ev.exit.i.i.i ], [ %i.avi, %.lr.ph.i.preheader.i.i ] ; 3 uses
  %i.avj = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -32 ; 2 uses
  %i.avk = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -24
  %i.avl = load ptr, ptr %i.avk, align 8, !tbaa !150 ; 3 uses
  %.not.i.i.i.i.i.i.i97 = icmp eq ptr %i.avl, null
  br i1 %.not.i.i.i.i.i.i.i97, label %_ZNSt4pairIPN4llvm11InstructionESt6vectorIS2_SaIS2_EEED2Ev.exit.i.i.i, label %bb.fs

bb.fs:                                            ; preds = %.lr.ph.i.i.i96
  %i.avm = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -8
  %i.avn = load ptr, ptr %i.avm, align 8, !tbaa !176
  %i.avo = ptrtoint ptr %i.avn to i64
  %i.avp = ptrtoint ptr %i.avl to i64
  %i.avq = sub i64 %i.avo, %i.avp
  call void @_ZdlPvm(ptr noundef nonnull %i.avl, i64 noundef %i.avq) #24
  br label %_ZNSt4pairIPN4llvm11InstructionESt6vectorIS2_SaIS2_EEED2Ev.exit.i.i.i

_ZNSt4pairIPN4llvm11InstructionESt6vectorIS2_SaIS2_EEED2Ev.exit.i.i.i: ; preds = %bb.fs, %.lr.ph.i.i.i96
  %.not.i.i.i98 = icmp eq ptr %i.avf, %i.avj
  br i1 %.not.i.i.i98, label %_ZN4llvm9MapVectorIPNS_11InstructionESt6vectorIS2_SaIS2_EENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_S5_ELj0EEELj0EE5clearEv.exit, label %.lr.ph.i.i.i96, !llvm.loop !4

_ZN4llvm9MapVectorIPNS_11InstructionESt6vectorIS2_SaIS2_EENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_S5_ELj0EEELj0EE5clearEv.exit: ; preds = %_ZNSt4pairIPN4llvm11InstructionESt6vectorIS2_SaIS2_EEED2Ev.exit.i.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E5clearEv.exit.i
  store i32 0, ptr %i.ly, align 8, !tbaa !131
  %i.avr = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  %i.avs = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %.val5.i = load i32, ptr %i.avs, align 8, !tbaa !242 ; 3 uses
  %i.avt = icmp eq i32 %.val5.i, 0
  br i1 %i.avt, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionENS_11SmallVectorIPN12_GLOBAL__N_126StraightLineStrengthReduce9CandidateELj3EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E5clearEv.exit, label %bb.ft

bb.ft:                                            ; preds = %_ZN4llvm9MapVectorIPNS_11InstructionESt6vectorIS2_SaIS2_EENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_S5_ELj0EEELj0EE5clearEv.exit
  %i.avu = shl i32 %.val5.i, 2
  %i.avv = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 6 uses
  %.val2.i = load i32, ptr %i.avv, align 4, !tbaa !200 ; 6 uses
  %i.avw = icmp ult i32 %i.avu, %.val2.i
  br i1 %i.avw, label %bb.fu, label %bb.gc

bb.fu:                                            ; preds = %bb.ft
  %i.avx = icmp ugt i32 %.val2.i, 64
  %.val4.i.i.pre115 = load ptr, ptr %i.avr, align 8, !tbaa !198 ; 2 uses
  br i1 %i.avx, label %.lr.ph11.preheader.i.i.i, label %.lr.ph11.preheader.i.i

.lr.ph11.preheader.i.i.i:                         ; preds = %bb.fu
  %i.avy = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %.val3.i.i.i = load ptr, ptr %i.avy, align 8, !tbaa !199
  %i.avz = zext i32 %.val2.i to i64
  %i.awa = add nuw nsw i64 %i.avz, 31
  %i.awb = lshr i64 %i.awa, 5
  br label %.lr.ph11.i.i.i

.lr.ph11.i.i.i:                                   ; preds = %._crit_edge.i.i.i, %.lr.ph11.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph11.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.awc = getelementptr inbounds nuw [4 x i8], ptr %.val3.i.i.i, i64 %indvars.iv.i.i.i
  %i.awd = load i32, ptr %i.awc, align 4, !tbaa !163 ; 2 uses
  %.not11.i6.i.i.i = icmp eq i32 %i.awd, 0
  br i1 %.not11.i6.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i101

.lr.ph.i.i.i101:                                  ; preds = %.lr.ph11.i.i.i
  %indvars.iv.tr.i.i.i = trunc nuw i64 %indvars.iv.i.i.i to i32
  %i.awe = shl nuw i32 %indvars.iv.tr.i.i.i, 5
  br label %bb.fv

bb.fv:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionENS_11SmallVectorIPN12_GLOBAL__N_126StraightLineStrengthReduce9CandidateELj3EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph.i.i.i101
  %.0.i7.i.i.i = phi i32 [ %i.awd, %.lr.ph.i.i.i101 ], [ %i.awo, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionENS_11SmallVectorIPN12_GLOBAL__N_126StraightLineStrengthReduce9CandidateELj3EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E10destroyAllEvENKUljE_clEj.exit.i.i.i ] ; 3 uses
  %i.awf = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i7.i.i.i, i1 true)
  %i.awg = or disjoint i32 %i.awf, %i.awe
  %i.awh = zext i32 %i.awg to i64
  %i.awi = getelementptr inbounds nuw [48 x i8], ptr %.val4.i.i.pre115, i64 %i.awh ; 2 uses
  %i.awj = getelementptr inbounds nuw i8, ptr %i.awi, i64 8
  %i.awk = load ptr, ptr %i.awj, align 8, !tbaa !27 ; 2 uses
  %i.awl = getelementptr inbounds nuw i8, ptr %i.awi, i64 24
  %i.awm = icmp eq ptr %i.awk, %i.awl
  br i1 %i.awm, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionENS_11SmallVectorIPN12_GLOBAL__N_126StraightLineStrengthReduce9CandidateELj3EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E10destroyAllEvENKUljE_clEj.exit.i.i.i, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  call void @free(ptr noundef %i.awk) #21
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionENS_11SmallVectorIPN12_GLOBAL__N_126StraightLineStrengthReduce9CandidateELj3EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E10destroyAllEvENKUljE_clEj.exit.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionENS_11SmallVectorIPN12_GLOBAL__N_126StraightLineStrengthReduce9CandidateELj3EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E10destroyAllEvENKUljE_clEj.exit.i.i.i: ; preds = %bb.fw, %bb.fv
  %i.awn = add i32 %.0.i7.i.i.i, -1
  %i.awo = and i32 %i.awn, %.0.i7.i.i.i           ; 2 uses
  %.not11.i.i.i.i = icmp eq i32 %i.awo, 0
  br i1 %.not11.i.i.i.i, label %._crit_edge.i.i.i, label %bb.fv, !llvm.loop !5

._crit_edge.i.i.i:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionENS_11SmallVectorIPN12_GLOBAL__N_126StraightLineStrengthReduce9CandidateELj3EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph11.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i102 = icmp eq i64 %indvars.iv.next.i.i.i, %i.awb
  br i1 %.not.i.i.i.i102, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionENS_11SmallVectorIPN12_GLOBAL__N_126StraightLineStrengthReduce9CandidateELj3EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E10destroyAllEv.exit.i.i, label %.lr.ph11.i.i.i, !llvm.loop !6

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionENS_11SmallVectorIPN12_GLOBAL__N_126StraightLineStrengthReduce9CandidateELj3EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E10destroyAllEv.exit.i.i: ; preds = %._crit_edge.i.i.i
  %i.awp = add i32 %.val5.i, -1
  %i.awq = call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.awp, i1 false)
  %i.awr = sub nuw nsw i32 33, %i.awq
  %i.aws = shl nuw i32 1, %i.awr                  ; 2 uses
  %.sroa.speculated.i.i.i = call i32 @llvm.umax.i32(i32 %i.aws, i32 64) ; 2 uses
  %.not.i.i103 = icmp eq i32 %i.aws, %.val2.i     ; 2 uses
  %spec.select10.i.i.i = select i1 %.not.i.i103, i32 0, i32 %.sroa.speculated.i.i.i
  %.sroa.39.0.insert.ext.i.i.i = zext i32 %spec.select10.i.i.i to i64 ; 2 uses
  br i1 %.not.i.i103, label %bb.fx, label %bb.fz

bb.fx:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionENS_11SmallVectorIPN12_GLOBAL__N_126StraightLineStrengthReduce9CandidateELj3EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E10destroyAllEv.exit.i.i
  store i32 0, ptr %i.avs, align 8, !tbaa !242
  %.val1.i.i.i = load i32, ptr %i.avv, align 4, !tbaa !200 ; 2 uses
  %.not.i4.i.i = icmp eq i32 %.val1.i.i.i, 0
  br i1 %.not.i4.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionENS_11SmallVectorIPN12_GLOBAL__N_126StraightLineStrengthReduce9CandidateELj3EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E5clearEv.exit, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %.val2.i5.i.i = load ptr, ptr %i.avy, align 8, !tbaa !199
  %i.awt = zext i32 %.val1.i.i.i to i64
  %i.awu = add nuw nsw i64 %i.awt, 31
  %i.awv = lshr i64 %i.awu, 3
  %i.aww = and i64 %i.awv, 1073741820
  call void @llvm.memset.p0.i64(ptr align 4 %.val2.i5.i.i, i8 0, i64 %i.aww, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionENS_11SmallVectorIPN12_GLOBAL__N_126StraightLineStrengthReduce9CandidateELj3EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E5clearEv.exit

bb.fz:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionENS_11SmallVectorIPN12_GLOBAL__N_126StraightLineStrengthReduce9CandidateELj3EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E10destroyAllEv.exit.i.i
  %i.awx = load i32, ptr %i.avv, align 4, !tbaa !200 ; 2 uses
  %i.awy = icmp eq i32 %i.awx, 0
  br i1 %i.awy, label %_ZN4llvm8DenseMapIPNS_11InstructionENS_11SmallVectorIPN12_GLOBAL__N_126StraightLineStrengthReduce9CandidateELj3EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEE17deallocateBucketsEv.exit.i.i, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.awz = load ptr, ptr %i.avr, align 8, !tbaa !198
  %i.axa = zext i32 %i.awx to i64                 ; 2 uses
  %i.axb = mul nuw nsw i64 %i.axa, 48
  %i.axc = add nuw nsw i64 %i.axa, 31
  %i.axd = lshr i64 %i.axc, 3
  %i.axe = and i64 %i.axd, 1073741820
  %i.axf = add nuw nsw i64 %i.axe, %i.axb
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.awz, i64 noundef %i.axf, i64 noundef 8) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.avr, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_11InstructionENS_11SmallVectorIPN12_GLOBAL__N_126StraightLineStrengthReduce9CandidateELj3EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEE17deallocateBucketsEv.exit.i.i

_ZN4llvm8DenseMapIPNS_11InstructionENS_11SmallVectorIPN12_GLOBAL__N_126StraightLineStrengthReduce9CandidateELj3EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEE17deallocateBucketsEv.exit.i.i: ; preds = %bb.ga, %bb.fz
  store i32 %.sroa.speculated.i.i.i, ptr %i.avv, align 4, !tbaa !200
  %i.axg = mul nuw nsw i64 %.sroa.39.0.insert.ext.i.i.i, 48
  %i.axh = add nuw nsw i64 %.sroa.39.0.insert.ext.i.i.i, 31
  %i.axi = lshr i64 %i.axh, 3
  %i.axj = and i64 %i.axi, 1073741820
  %i.axk = add nuw nsw i64 %i.axj, %i.axg
  %i.axl = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.axk, i64 noundef 8) #21 ; 2 uses
  %i.axm = load i32, ptr %i.avv, align 4, !tbaa !200 ; 2 uses
  %i.axn = zext i32 %i.axm to i64                 ; 2 uses
  %i.axo = mul nuw nsw i64 %i.axn, 48
  %i.axp = getelementptr inbounds nuw i8, ptr %i.axl, i64 %i.axo ; 2 uses
  store ptr %i.axl, ptr %i.avr, align 8, !tbaa !198
  store ptr %i.axp, ptr %i.avy, align 8, !tbaa !199
  store i32 0, ptr %i.avs, align 8, !tbaa !242
  %.not.i.i7.i.i = icmp eq i32 %i.axm, 0
  br i1 %.not.i.i7.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionENS_11SmallVectorIPN12_GLOBAL__N_126StraightLineStrengthReduce9CandidateELj3EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E5clearEv.exit, label %bb.gb

bb.gb:                                            ; preds = %_ZN4llvm8DenseMapIPNS_11InstructionENS_11SmallVectorIPN12_GLOBAL__N_126StraightLineStrengthReduce9CandidateELj3EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEE17deallocateBucketsEv.exit.i.i
  %i.axq = add nuw nsw i64 %i.axn, 31
  %i.axr = lshr i64 %i.axq, 3
  %i.axs = and i64 %i.axr, 1073741820
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.axp, i8 0, i64 %i.axs, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionENS_11SmallVectorIPN12_GLOBAL__N_126StraightLineStrengthReduce9CandidateELj3EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E5clearEv.exit

bb.gc:                                            ; preds = %bb.ft
  %i.axt = icmp eq i32 %.val2.i, 0
  br i1 %i.axt, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionENS_11SmallVectorIPN12_GLOBAL__N_126StraightLineStrengthReduce9CandidateELj3EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E10destroyAllEv.exit.i, label %..lr.ph11.preheader.i.i_crit_edge

..lr.ph11.preheader.i.i_crit_edge:                ; preds = %bb.gc
  %.val4.i.i.pre = load ptr, ptr %i.avr, align 8, !tbaa !198
  br label %.lr.ph11.preheader.i.i

.lr.ph11.preheader.i.i:                           ; preds = %..lr.ph11.preheader.i.i_crit_edge, %bb.fu
  %.val4.i.i = phi ptr [ %.val4.i.i.pre, %..lr.ph11.preheader.i.i_crit_edge ], [ %.val4.i.i.pre115, %bb.fu ]
  %i.axu = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.val3.i6.i = load ptr, ptr %i.axu, align 8, !tbaa !199
  %i.axv = zext i32 %.val2.i to i64
  %i.axw = add nuw nsw i64 %i.axv, 31
  %i.axx = lshr i64 %i.axw, 5
  br label %.lr.ph11.i.i

.lr.ph11.i.i:                                     ; preds = %._crit_edge.i.i100, %.lr.ph11.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph11.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i100 ] ; 3 uses
end_hunk_1
