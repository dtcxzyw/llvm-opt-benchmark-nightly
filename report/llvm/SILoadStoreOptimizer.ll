Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SILoadStoreOptimizer?download=true
inline.NumInlined: 1704
inline.NumDeleted: 759
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN12_GLOBAL__N_120SILoadStoreOptimizer29optimizeInstsWithSameBaseAddrERNSt7__cxx114listINS0_11CombineInfoESaIS3_EEERb:bb.a
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.anj, ptr noundef nonnull align 8 dereferenceable(1065) %i.ani, ptr noundef nonnull align 8 dereferenceable(32) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.aoj = call fastcc noundef ptr @_ZN12_GLOBAL__N_120SILoadStoreOptimizer24combineKnownAdjacentMMOsERKNS0_11CombineInfoES3_(ptr noundef nonnull readonly align 8 dereferenceable(232) %i.dd, ptr noundef nonnull readonly align 8 dereferenceable(232) %i.de)
  call void @_ZN4llvm12MachineInstr13addMemOperandERNS_15MachineFunctionEPNS_17MachineMemOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.anj, ptr noundef nonnull align 8 dereferenceable(1065) %i.ani, ptr noundef %i.aoj) #18
  %i.aok = load ptr, ptr %i.dd, align 8, !tbaa !440
  %i.aol = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %i.aok) #18 ; 0 uses
  %i.aom = load ptr, ptr %i.de, align 8, !tbaa !440
  %i.aon = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %i.aom) #18 ; 0 uses
  %i.aoo = getelementptr inbounds nuw i8, ptr %spec.select, i64 32
  %i.aop = load i32, ptr %i.aoo, align 8, !tbaa !445
  %i.aoq = load i32, ptr %i.amy, align 8, !tbaa !445
  %i.aor = add i32 %i.aoq, %i.aop
  %i.aos = icmp ult i32 %i.aor, 4
  %i.aot = load i8, ptr %2, align 1, !tbaa !370, !range !157, !noundef !143
  %i.aou = zext i1 %i.aos to i8
  %i.aov = or i8 %i.aot, %i.aou
  store i8 %i.aov, ptr %2, align 1, !tbaa !370
  br label %bb.dh

bb.dh:                                            ; preds = %_ZN12_GLOBAL__N_120SILoadStoreOptimizer18mergeFlatStorePairERNS0_11CombineInfoES2_N4llvm26MachineInstrBundleIteratorINS3_12MachineInstrELb0EEE.exit, %_ZN12_GLOBAL__N_120SILoadStoreOptimizer17mergeFlatLoadPairERNS0_11CombineInfoES2_N4llvm26MachineInstrBundleIteratorINS3_12MachineInstrELb0EEE.exit, %_ZN12_GLOBAL__N_120SILoadStoreOptimizer21mergeTBufferStorePairERNS0_11CombineInfoES2_N4llvm26MachineInstrBundleIteratorINS3_12MachineInstrELb0EEE.exit, %_ZN12_GLOBAL__N_120SILoadStoreOptimizer20mergeTBufferLoadPairERNS0_11CombineInfoES2_N4llvm26MachineInstrBundleIteratorINS3_12MachineInstrELb0EEE.exit, %_ZN12_GLOBAL__N_120SILoadStoreOptimizer14mergeImagePairERNS0_11CombineInfoES2_N4llvm26MachineInstrBundleIteratorINS3_12MachineInstrELb0EEE.exit, %_ZN12_GLOBAL__N_120SILoadStoreOptimizer20mergeBufferStorePairERNS0_11CombineInfoES2_N4llvm26MachineInstrBundleIteratorINS3_12MachineInstrELb0EEE.exit, %_ZN12_GLOBAL__N_120SILoadStoreOptimizer19mergeBufferLoadPairERNS0_11CombineInfoES2_N4llvm26MachineInstrBundleIteratorINS3_12MachineInstrELb0EEE.exit, %_ZN12_GLOBAL__N_120SILoadStoreOptimizer20mergeSMemLoadImmPairERNS0_11CombineInfoES2_N4llvm26MachineInstrBundleIteratorINS3_12MachineInstrELb0EEE.exit, %_ZN12_GLOBAL__N_120SILoadStoreOptimizer15mergeWrite2PairERNS0_11CombineInfoES2_N4llvm26MachineInstrBundleIteratorINS3_12MachineInstrELb0EEE.exit, %_ZN12_GLOBAL__N_120SILoadStoreOptimizer14mergeRead2PairERNS0_11CombineInfoES2_N4llvm26MachineInstrBundleIteratorINS3_12MachineInstrELb0EEE.exit
  %.sroa.0191.0 = phi ptr [ %i.qz, %_ZN12_GLOBAL__N_120SILoadStoreOptimizer14mergeRead2PairERNS0_11CombineInfoES2_N4llvm26MachineInstrBundleIteratorINS3_12MachineInstrELb0EEE.exit ], [ %i.tj, %_ZN12_GLOBAL__N_120SILoadStoreOptimizer15mergeWrite2PairERNS0_11CombineInfoES2_N4llvm26MachineInstrBundleIteratorINS3_12MachineInstrELb0EEE.exit ], [ %i.vo, %_ZN12_GLOBAL__N_120SILoadStoreOptimizer20mergeSMemLoadImmPairERNS0_11CombineInfoES2_N4llvm26MachineInstrBundleIteratorINS3_12MachineInstrELb0EEE.exit ], [ %i.xy, %_ZN12_GLOBAL__N_120SILoadStoreOptimizer19mergeBufferLoadPairERNS0_11CombineInfoES2_N4llvm26MachineInstrBundleIteratorINS3_12MachineInstrELb0EEE.exit ], [ %i.zr, %_ZN12_GLOBAL__N_120SILoadStoreOptimizer20mergeBufferStorePairERNS0_11CombineInfoES2_N4llvm26MachineInstrBundleIteratorINS3_12MachineInstrELb0EEE.exit ], [ %i.acy, %_ZN12_GLOBAL__N_120SILoadStoreOptimizer14mergeImagePairERNS0_11CombineInfoES2_N4llvm26MachineInstrBundleIteratorINS3_12MachineInstrELb0EEE.exit ], [ %i.afi, %_ZN12_GLOBAL__N_120SILoadStoreOptimizer20mergeTBufferLoadPairERNS0_11CombineInfoES2_N4llvm26MachineInstrBundleIteratorINS3_12MachineInstrELb0EEE.exit ], [ %i.ahx, %_ZN12_GLOBAL__N_120SILoadStoreOptimizer21mergeTBufferStorePairERNS0_11CombineInfoES2_N4llvm26MachineInstrBundleIteratorINS3_12MachineInstrELb0EEE.exit ], [ %i.als, %_ZN12_GLOBAL__N_120SILoadStoreOptimizer17mergeFlatLoadPairERNS0_11CombineInfoES2_N4llvm26MachineInstrBundleIteratorINS3_12MachineInstrELb0EEE.exit ], [ %i.anj, %_ZN12_GLOBAL__N_120SILoadStoreOptimizer18mergeFlatStorePairERNS0_11CombineInfoES2_N4llvm26MachineInstrBundleIteratorINS3_12MachineInstrELb0EEE.exit ]
  call fastcc void @_ZN12_GLOBAL__N_120SILoadStoreOptimizer11CombineInfo5setMIEN4llvm26MachineInstrBundleIteratorINS2_12MachineInstrELb0EEERKS0_(ptr noundef nonnull align 8 dereferenceable(232) %i.dd, ptr nonnull %.sroa.0191.0, ptr noundef nonnull align 8 dereferenceable(49) %0)
  %i.aow = getelementptr inbounds nuw i8, ptr %.4.i, i64 228
  %i.aox = load i32, ptr %i.aow, align 4, !tbaa !427
  %i.aoy = getelementptr inbounds nuw i8, ptr %spec.select, i64 244
  store i32 %i.aox, ptr %i.aoy, align 4, !tbaa !427
  %i.aoz = icmp eq ptr %.sroa.0197.0211, %spec.select202
  %spec.select203 = select i1 %i.aoz, ptr %storemerge213, ptr %.sroa.0197.0211
  %i.apa = load i64, ptr %i.cx, align 8, !tbaa !434
  %i.apb = add i64 %i.apa, -1
  store i64 %i.apb, ptr %i.cx, align 8, !tbaa !434
  call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %spec.select202) #18
  call void @_ZdlPvm(ptr noundef nonnull %spec.select202, i64 noundef 248) #22
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %_ZN12_GLOBAL__N_120SILoadStoreOptimizer20checkAndPrepareMergeERNS0_11CombineInfoES2_.exit.thread
  %.sroa.0197.2 = phi ptr [ %i.oe, %_ZN12_GLOBAL__N_120SILoadStoreOptimizer20checkAndPrepareMergeERNS0_11CombineInfoES2_.exit.thread ], [ %spec.select203, %bb.dh ] ; 2 uses
  %.1 = phi i1 [ %.091212, %_ZN12_GLOBAL__N_120SILoadStoreOptimizer20checkAndPrepareMergeERNS0_11CombineInfoES2_.exit.thread ], [ true, %bb.dh ] ; 2 uses
  %storemerge = load ptr, ptr %.sroa.0197.2, align 8, !tbaa !430 ; 2 uses
  %.not204 = icmp eq ptr %storemerge, %1
  br i1 %.not204, label %.loopexit, label %bb.b, !llvm.loop !813

.loopexit:                                        ; preds = %bb.di, %.preheader, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %.preheader ], [ %.1, %bb.di ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define internal fastcc noundef i32 @_ZN12_GLOBAL__N_115getInstSubclassEjRKN4llvm11SIInstrInfoE(i32 noundef %0, ptr nofree readonly captures(none) %.8.val) unnamed_addr #9 {
bb.a:
  switch i32 %0, label %bb.b [
    i32 3352, label %bb.q
    i32 3353, label %bb.q
    i32 3354, label %bb.q
    i32 3358, label %bb.q
    i32 3430, label %bb.q
    i32 3431, label %bb.q
    i32 3432, label %bb.q
    i32 3433, label %bb.q
    i32 4999, label %bb.h
    i32 4975, label %bb.h
    i32 4981, label %bb.h
    i32 4987, label %bb.h
    i32 4993, label %bb.h
    i32 4976, label %bb.h
    i32 4982, label %bb.h
    i32 4988, label %bb.h
    i32 4994, label %bb.h
    i32 5001, label %bb.i
    i32 4978, label %bb.i
    i32 4984, label %bb.i
    i32 4990, label %bb.i
    i32 4996, label %bb.i
    i32 4979, label %bb.i
    i32 4985, label %bb.i
    i32 4991, label %bb.i
    i32 4997, label %bb.i
    i32 5212, label %bb.j
    i32 5188, label %bb.j
    i32 5194, label %bb.j
    i32 5200, label %bb.j
    i32 5206, label %bb.j
    i32 5189, label %bb.j
    i32 5195, label %bb.j
    i32 5201, label %bb.j
    i32 5207, label %bb.j
    i32 3986, label %bb.k
    i32 3987, label %bb.k
    i32 3989, label %bb.k
    i32 3991, label %bb.k
    i32 3671, label %bb.k
    i32 3672, label %bb.k
    i32 3674, label %bb.k
    i32 3676, label %bb.k
    i32 3995, label %bb.l
    i32 3988, label %bb.l
    i32 3990, label %bb.l
    i32 3992, label %bb.l
    i32 4072, label %bb.m
    i32 4073, label %bb.m
    i32 4075, label %bb.m
    i32 4077, label %bb.m
    i32 3719, label %bb.m
    i32 3720, label %bb.m
    i32 3722, label %bb.m
    i32 3724, label %bb.m
    i32 4081, label %bb.n
    i32 4074, label %bb.n
    i32 4076, label %bb.n
    i32 4078, label %bb.n
    i32 3678, label %bb.o
    i32 3673, label %bb.o
    i32 3675, label %bb.o
    i32 3677, label %bb.o
    i32 3726, label %bb.p
    i32 3721, label %bb.p
    i32 3723, label %bb.p
    i32 3725, label %bb.p
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = zext i32 %0 to i64
  %i.b = sub nsw i64 0, %i.a
  %i.c = getelementptr inbounds [32 x i8], ptr %.8.val, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !358  ; 3 uses
  %i.f = and i64 %i.e, 131072
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef i32 @_ZN4llvm6AMDGPU18getMUBUFBaseOpcodeEj(i32 noundef %0) #21
  br label %bb.q

bb.d:                                             ; preds = %bb.b
  %i.h = and i64 %i.e, 7340032
  %.not1 = icmp eq i64 %i.h, 0
  br i1 %.not1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call noundef ptr @_ZN4llvm6AMDGPU11getMIMGInfoEj(i32 noundef %0) #21
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !453
  br label %bb.q

bb.f:                                             ; preds = %bb.d
  %i.l = and i64 %i.e, 262144
  %.not2 = icmp eq i64 %i.l, 0
  br i1 %.not2, label %bb.q, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = tail call noundef i32 @_ZN4llvm6AMDGPU18getMTBUFBaseOpcodeEj(i32 noundef %0) #21
  br label %bb.q

bb.h:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.q

bb.i:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.q

bb.j:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.q

bb.k:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.q

bb.l:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.q

bb.m:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.q

bb.n:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.q

bb.o:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.q

bb.p:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.f, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.e, %bb.c
  %.0 = phi i32 [ %i.g, %bb.c ], [ %i.k, %bb.e ], [ %i.m, %bb.g ], [ 3726, %bb.p ], [ -1, %bb.f ], [ 4999, %bb.h ], [ 5001, %bb.i ], [ 5212, %bb.j ], [ 3671, %bb.k ], [ 3995, %bb.l ], [ 3719, %bb.m ], [ 4081, %bb.n ], [ 3678, %bb.o ], [ %0, %bb.a ], [ %0, %bb.a ], [ %0, %bb.a ], [ %0, %bb.a ], [ %0, %bb.a ], [ %0, %bb.a ], [ %0, %bb.a ], [ %0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, argmem: readwrite) uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_120SILoadStoreOptimizer20offsetsCanBeCombinedERNS0_11CombineInfoERKN4llvm12GCNSubtargetES2_b(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(232) %0, ptr nofree noundef nonnull readonly align 8 dereferenceable(520232) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(232) %2, i1 noundef zeroext %3) unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !435  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 5 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !435  ; 6 uses
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !439  ; 9 uses
  %i.h = urem i32 %i.b, %i.g
  %i.i = udiv exact i32 %i.b, %i.g                ; 11 uses
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.ae

bb.c:                                             ; preds = %bb.b
  %i.j = urem i32 %i.d, %i.g
  %i.k = udiv exact i32 %i.d, %i.g                ; 11 uses
  %.not108 = icmp eq i32 %i.j, 0
  br i1 %.not108, label %bb.d, label %bb.ae

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !431  ; 3 uses
  %.off = add i32 %i.m, -9
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.o = load i32, ptr %i.n, align 4, !tbaa !442  ; 2 uses
  %i.p = trunc i32 %i.o to i8
  %i.q = tail call noundef ptr @_ZN4llvm6AMDGPU22getGcnBufferFormatInfoEhRKNS_15MCSubtargetInfoE(i8 noundef zeroext %i.p, ptr noundef nonnull align 8 dereferenceable(320) %1) #21 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.s = load i32, ptr %i.r, align 4, !tbaa !442
  %i.t = trunc i32 %i.s to i8
  %i.u = tail call noundef ptr @_ZN4llvm6AMDGPU22getGcnBufferFormatInfoEhRKNS_15MCSubtargetInfoE(i8 noundef zeroext %i.t, ptr noundef nonnull align 8 dereferenceable(320) %1) #21 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !444
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !444
  %.not116 = icmp eq i32 %i.w, %i.y
  br i1 %.not116, label %bb.f, label %bb.ae

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !462
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !462
  %.not117 = icmp eq i32 %i.aa, %i.ac
  br i1 %.not117, label %bb.g, label %bb.ae

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !445 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !445 ; 2 uses
  %i.ah = add i32 %i.ag, %i.ae                    ; 2 uses
  %i.ai = icmp eq i32 %i.ah, 3
  %i.aj = icmp ult i32 %i.g, 3
  %spec.select = select i1 %i.aj, i32 4, i32 3
  %.095 = select i1 %i.ai, i32 %spec.select, i32 %i.ah ; 2 uses
  %i.ak = tail call fastcc noundef i32 @_ZL28getBufferFormatWithCompCountjjRKN4llvm12GCNSubtargetE(i32 noundef %i.o, i32 noundef %.095, ptr noundef nonnull align 8 dereferenceable(520232) %1)
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.ae, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = udiv exact i32 %i.b, %i.g               ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !439
  %i.ap = udiv i32 %i.d, %i.ao                    ; 2 uses
  %i.aq = add i32 %i.am, %i.ae
  %.not118 = icmp eq i32 %i.aq, %i.ap
  %i.ar = add i32 %i.ap, %i.ag
  %.not119 = icmp eq i32 %i.ar, %i.am
  %or.cond169 = or i1 %.not118, %.not119
  br i1 %or.cond169, label %bb.i, label %bb.ae

bb.i:                                             ; preds = %bb.h
  %i.as = mul i32 %.095, %i.g
  %.sroa.speculated164 = tail call i32 @llvm.umin.i32(i32 %i.as, i32 4)
  %i.at = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.b)
  %i.au = urem i32 %i.at, %.sroa.speculated164
  %.not120 = icmp eq i32 %i.au, 0
  br label %bb.ae

bb.j:                                             ; preds = %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store i8 0, ptr %i.av, align 8, !tbaa !454
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store i32 0, ptr %i.aw, align 8, !tbaa !461
  %.off121 = add i32 %i.m, -1
  %switch122 = icmp ult i32 %.off121, 2
  br i1 %switch122, label %bb.r, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !445 ; 3 uses
  %i.az = add i32 %i.ay, %i.i
  %.not111 = icmp eq i32 %i.az, %i.k
  br i1 %.not111, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !445
  %i.bc = add i32 %i.bb, %i.k
  %.not112 = icmp eq i32 %i.bc, %i.i
  br i1 %.not112, label %bb.m, label %bb.ae

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !426 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !426
  %.not113 = icmp eq i32 %i.be, %i.bg
  %i.bh = and i32 %i.be, 2048
  %.not114 = icmp eq i32 %i.bh, 0
  %or.cond = and i1 %.not113, %.not114
  br i1 %or.cond, label %bb.n, label %bb.ae

bb.n:                                             ; preds = %bb.m
  %.off123 = add i32 %i.m, -3
  %switch124 = icmp ult i32 %.off123, 3
  br i1 %switch124, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !445 ; 2 uses
  %.not115 = icmp eq i32 %i.ay, %i.bj
  br i1 %.not115, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bk = icmp ult i32 %i.ay, %i.bj
  %i.bl = icmp uge i32 %i.b, %i.d
  %i.bm = xor i1 %i.bl, %i.bk
  br i1 %i.bm, label %bb.ae, label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.o, %bb.p
  br label %bb.ae

bb.r:                                             ; preds = %bb.j
  %i.bn = or i32 %i.k, %i.i
  %i.bo = and i32 %i.bn, 63
  %or.cond171 = icmp eq i32 %i.bo, 0
  br i1 %or.cond171, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.bp = lshr exact i32 %i.i, 6
  %i.bq = icmp ult i32 %i.i, 16384
  br i1 %i.bq, label %bb.t, label %bb.z

bb.t:                                             ; preds = %bb.s
  %i.br = lshr i32 %i.k, 6
  %i.bs = icmp ult i32 %i.k, 16384
  br i1 %i.bs, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  br i1 %3, label %bb.v, label %bb.ae

bb.v:                                             ; preds = %bb.u
  store i32 %i.bp, ptr %i.a, align 4, !tbaa !435
  store i32 %i.br, ptr %i.c, align 4, !tbaa !435
  store i8 1, ptr %i.av, align 8, !tbaa !454
  br label %bb.ae

bb.w:                                             ; preds = %bb.r
  %4 = icmp ult i32 %i.i, 256
  %or.cond173.a = icmp ult i32 %i.k, 256
  %or.cond173 = select i1 %4, i1 %or.cond173.a, i1 false
  br i1 %or.cond173, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  br i1 %3, label %bb.y, label %bb.ae

bb.y:                                             ; preds = %bb.x
  store i32 %i.i, ptr %i.a, align 4, !tbaa !435
  store i32 %i.k, ptr %i.c, align 4, !tbaa !435
  br label %bb.ae

bb.z:                                             ; preds = %bb.t, %bb.s, %bb.w
  %.sroa.speculated141 = tail call i32 @llvm.umin.i32(i32 %i.k, i32 %i.i) ; 5 uses
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.i, i32 %i.k) ; 3 uses
  %i.bt = sub nuw i32 %.sroa.speculated, %.sroa.speculated141 ; 2 uses
  %i.bu = and i32 %i.bt, -16321
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  br i1 %3, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.bw = add i32 %.sroa.speculated, -16321
  %i.bx = xor i32 %i.bw, %.sroa.speculated141
  %i.by = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bx, i1 false) ; 2 uses
  %i.bz = icmp eq i32 %i.by, 31
  %i.ca = ashr exact i32 -2147483648, %i.by
  %i.cb = or i32 %i.ca, 63
  %i.cc = select i1 %i.bz, i32 -1, i32 %i.cb
  %i.cd = and i32 %i.cc, %.sroa.speculated141     ; 3 uses
  %i.ce = mul i32 %i.cd, %i.g
  store i32 %i.ce, ptr %i.aw, align 8, !tbaa !461
  %i.cf = sub i32 %i.i, %i.cd
  %i.cg = lshr i32 %i.cf, 6
  store i32 %i.cg, ptr %i.a, align 4, !tbaa !435
  %i.ch = sub i32 %i.k, %i.cd
  %i.ci = lshr i32 %i.ch, 6
  store i32 %i.ci, ptr %i.c, align 4, !tbaa !435
  store i8 1, ptr %i.av, align 8, !tbaa !454
  br label %bb.ae

bb.ac:                                            ; preds = %bb.z
  %i.cj = icmp ult i32 %i.bt, 256                 ; 2 uses
  %brmerge.not = and i1 %3, %i.cj
  br i1 %brmerge.not, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ck = add i32 %.sroa.speculated, -256
  %i.cl = xor i32 %i.ck, %.sroa.speculated141
  %i.cm = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cl, i1 false) ; 2 uses
  %i.cn = icmp eq i32 %i.cm, 31
  %i.co = ashr exact i32 -2147483648, %i.cm
  %i.cp = select i1 %i.cn, i32 -1, i32 %i.co
  %i.cq = and i32 %i.cp, %.sroa.speculated141     ; 3 uses
  %i.cr = mul i32 %i.cq, %i.g
  store i32 %i.cr, ptr %i.aw, align 8, !tbaa !461
  %i.cs = sub i32 %i.i, %i.cq
  store i32 %i.cs, ptr %i.a, align 4, !tbaa !435
  %i.ct = sub i32 %i.k, %i.cq
  store i32 %i.ct, ptr %i.c, align 4, !tbaa !435
  br label %bb.ae

bb.ae:                                            ; preds = %bb.h, %bb.q, %bb.l, %bb.m, %bb.p, %bb.v, %bb.u, %bb.y, %bb.x, %bb.ad, %bb.aa, %bb.ab, %bb.ac, %bb.f, %bb.e, %bb.i, %bb.g, %bb.b, %bb.c, %bb.a
  %.6 = phi i1 [ false, %bb.h ], [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ], [ false, %bb.e ], [ false, %bb.f ], [ false, %bb.g ], [ %.not120, %bb.i ], [ true, %bb.x ], [ false, %bb.l ], [ false, %bb.m ], [ true, %bb.q ], [ false, %bb.p ], [ true, %bb.u ], [ true, %bb.v ], [ true, %bb.y ], [ %i.cj, %bb.ac ], [ true, %bb.aa ], [ true, %bb.ab ], [ true, %bb.ad ]
  ret i1 %.6
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_120SILoadStoreOptimizer19canSwapInstructionsERKN4llvm8DenseSetINS1_8RegisterENS1_12DenseMapInfoIS3_vEEEES8_RKNS1_12MachineInstrESB_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(49) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(80) %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK4llvm12MachineInstr14mayLoadOrStoreENS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %3, i32 noundef 1)
  br i1 %i.a, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZNK4llvm12MachineInstr14mayLoadOrStoreENS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %4, i32 noundef 1)
  br i1 %i.b, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.d = load i32, ptr %i.c, align 4, !tbaa !376
  %i.e = add i32 %i.d, -1
  %spec.select.i.i = icmp ult i32 %i.e, 2
  br i1 %spec.select.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !421
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.i = load i64, ptr %i.h, align 8, !tbaa !359
  %i.j = and i64 %i.i, 16
  %.not.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.not.i, label %bb.e, label %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit.thread

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.l = load i32, ptr %i.k, align 4, !tbaa !375  ; 2 uses
  %i.m = and i32 %i.l, 12
  %i.n = icmp eq i32 %i.m, 0
  %i.o = and i32 %i.l, 4
  %i.p = icmp ne i32 %i.o, 0
  %or.cond.i.i = or i1 %i.n, %i.p
  br i1 %or.cond.i.i, label %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit, label %.split

.split:                                           ; preds = %bb.e
  %i.q = tail call noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %3, i64 noundef 1048576, i32 noundef 1) #18
  br i1 %i.q, label %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit.thread, label %bb.f

_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit: ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !356
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !438
  %i.v = and i64 %i.u, 1048576
  %.not50 = icmp eq i64 %i.v, 0
  br i1 %.not50, label %bb.f, label %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit.thread

bb.f:                                             ; preds = %.split, %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.x = load i32, ptr %i.w, align 4, !tbaa !376
  %i.y = add i32 %i.x, -1
  %spec.select.i.i29 = icmp ult i32 %i.y, 2
  br i1 %spec.select.i.i29, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !421
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !359
  %i.ad = and i64 %i.ac, 16
  %.not.not.i32 = icmp eq i64 %i.ad, 0
  br i1 %.not.not.i32, label %bb.h, label %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit.thread

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !375 ; 2 uses
  %i.ag = and i32 %i.af, 12
  %i.ah = icmp eq i32 %i.ag, 0
  %i.ai = and i32 %i.af, 4
  %i.aj = icmp ne i32 %i.ai, 0
  %or.cond.i.i30 = or i1 %i.ah, %i.aj
  br i1 %or.cond.i.i30, label %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit33, label %.split44

.split44:                                         ; preds = %bb.h
  %i.ak = tail call noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %4, i64 noundef 1048576, i32 noundef 1) #18
  br i1 %i.ak, label %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit.thread, label %bb.i

_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit33: ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !356
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !438
  %i.ap = and i64 %i.ao, 1048576
  %.not51 = icmp eq i64 %i.ap, 0
  br i1 %.not51, label %bb.i, label %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit.thread

_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit.thread: ; preds = %bb.g, %bb.d, %.split44, %.split, %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit33, %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !156
  %i.as = tail call noundef zeroext i1 @_ZNK4llvm12MachineInstr8mayAliasEPNS_9AAResultsERKS0_b(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef %i.ar, ptr noundef nonnull align 8 dereferenceable(80) %4, i1 noundef zeroext true) #18
  br i1 %i.as, label %_ZNK4llvm6detail12DenseSetImplINS_8RegisterENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE8containsERKS2_.exit, label %bb.i

bb.i:                                             ; preds = %.split44, %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit.thread, %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit33, %bb.b, %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !421 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.aw = load i24, ptr %i.av, align 8            ; 2 uses
  %i.ax = zext i24 %i.aw to i64
  %.idx = shl nuw nsw i64 %i.ax, 5
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 %.idx
  %.not56 = icmp eq i24 %i.aw, 0
  br i1 %.not56, label %_ZNK4llvm6detail12DenseSetImplINS_8RegisterENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE8containsERKS2_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 20
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %.critedge.thread
  %.02657 = phi ptr [ %i.au, %.lr.ph ], [ %i.dj, %.critedge.thread ] ; 3 uses
  %i.bd = load i32, ptr %.02657, align 8          ; 3 uses
  %i.be = and i32 %i.bd, 255
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.k, label %.critedge.thread

bb.k:                                             ; preds = %bb.j
  %i.bg = and i32 %i.bd, 16777216
  %i.bh = icmp ne i32 %i.bg, 0                    ; 2 uses
  %i.bi = and i32 %i.bd, 805306368
  %or.cond.not.i = icmp eq i32 %i.bi, 0
  %or.cond = or i1 %i.bh, %or.cond.not.i
  br i1 %or.cond, label %_ZNK4llvm14MachineOperand8readsRegEv.exit.thread, label %.critedge.thread

_ZNK4llvm14MachineOperand8readsRegEv.exit.thread: ; preds = %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %.02657, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !359 ; 4 uses
  %i.bl = load ptr, ptr %1, align 8, !tbaa !458, !noalias !868
  %i.bm = load ptr, ptr %i.az, align 8, !tbaa !464, !noalias !868 ; 2 uses
  %i.bn = load i32, ptr %i.ba, align 4, !tbaa !457, !noalias !868 ; 2 uses
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %.critedge, label %bb.l

bb.l:                                             ; preds = %_ZNK4llvm14MachineOperand8readsRegEv.exit.thread
  %i.bp = add i32 %i.bn, -1                       ; 2 uses
  %i.bq = mul i32 %i.bk, 37
  %.019.i.i.i = and i32 %i.bp, %i.bq              ; 3 uses
  %i.br = zext i32 %.019.i.i.i to i64             ; 2 uses
  %i.bs = lshr i64 %i.br, 5
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !360
end_hunk_0
