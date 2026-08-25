Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MSP430BranchSelector?download=true
begin_hunk_0_@_ZN4llvm22MSP430BranchSelectPass3runERNS_15MachineFunctionERNS_15AnalysisManagerIS1_JEEE:bb.a
  %4 = alloca %"class.(anonymous namespace)::MSP430BSelImpl", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.a = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_114MSP430BSelImpl20runOnMachineFunctionERN4llvm15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(1065) %2)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm39getMachineFunctionPassPreservedAnalysesEv(ptr dead_on_unwind writable sret(%"class.llvm::PreservedAnalyses") align 8 %0) #12
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.ptr1.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %.ptr1.i, ptr %0, align 8, !tbaa !20, !alias.scope !23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 2, ptr %i.b, align 8, !tbaa !26, !alias.scope !23
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.d, align 8, !tbaa !14, !alias.scope !23
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.f, ptr %i.e, align 8, !tbaa !20, !alias.scope !23
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 2, ptr %i.g, align 8, !tbaa !26, !alias.scope !23
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %i.h, align 4, !tbaa !27, !alias.scope !23
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %i.i, align 8, !tbaa !14, !alias.scope !23
  store i32 1, ptr %i.c, align 4, !tbaa !27, !alias.scope !23, !noalias !28
  store ptr @_ZN4llvm17PreservedAnalyses14AllAnalysesKeyE, ptr %.ptr1.i, align 8, !tbaa !31, !alias.scope !23, !noalias !28
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_114MSP430BSelImpl20runOnMachineFunctionERN4llvm15MachineFunctionE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %3 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %4 = alloca %"class.llvm::SmallVector.155", align 8 ; 9 uses
  %5 = alloca %"class.llvm::SmallVector.99", align 8 ; 11 uses
  store ptr %1, ptr %0, align 8, !tbaa !32
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36, !nonnull !19, !align !153 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(344) %i.b) #12
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !154
  %i.h = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL19BranchSelectEnabled, i64 120), align 8, !tbaa !155, !range !18, !noundef !19
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.j, ptr %5, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i32 0, ptr %i.k, align 8, !tbaa !161
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 16, ptr %i.l, align 4, !tbaa !162
  %i.m = call fastcc noundef i32 @_ZN12_GLOBAL__N_114MSP430BSelImpl15measureFunctionERN4llvm11SmallVectorIiLj16EEEPNS1_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(80) %5, ptr noundef null)
  %i.n = sdiv i32 %i.m, 2
  %narrow.i = add nsw i32 %i.n, 512
  %i.o = icmp ult i32 %narrow.i, 1024
  br i1 %i.o, label %_ZN12_GLOBAL__N_114MSP430BSelImpl14expandBranchesERN4llvm11SmallVectorIiLj16EEE.exit.thread, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.p = load ptr, ptr %0, align 8, !tbaa !32     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 304
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 296 ; 2 uses
  %.sroa.0156.0211.i18 = load ptr, ptr %i.q, align 8, !tbaa !163 ; 2 uses
  %.not221.i19 = icmp eq ptr %.sroa.0156.0211.i18, %i.r
  br i1 %.not221.i19, label %_ZN12_GLOBAL__N_114MSP430BSelImpl14expandBranchesERN4llvm11SmallVectorIiLj16EEE.exit.thread, label %.lr.ph215.i.lr.ph

.lr.ph215.i.lr.ph:                                ; preds = %.preheader
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %.lr.ph215.i

.lr.ph215.i:                                      ; preds = %.lr.ph215.i.lr.ph, %.backedge
  %.sroa.0156.0211.i21 = phi ptr [ %.sroa.0156.0211.i18, %.lr.ph215.i.lr.ph ], [ %.sroa.0156.0211.i, %.backedge ]
  %i.z = phi ptr [ %i.r, %.lr.ph215.i.lr.ph ], [ %i.ht, %.backedge ]
  %.020 = phi i1 [ false, %.lr.ph215.i.lr.ph ], [ true, %.backedge ]
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge210.i, %.lr.ph215.i
  %.sroa.0156.0213.i = phi ptr [ %.sroa.0156.0211.i21, %.lr.ph215.i ], [ %.sroa.0156.0.i, %._crit_edge210.i ] ; 13 uses
  %.065212.i = phi i1 [ false, %.lr.ph215.i ], [ %.166.lcssa.i, %._crit_edge210.i ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0156.0213.i, i64 56
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0156.0213.i, i64 48 ; 9 uses
  %.sroa.0144.0203.i = load ptr, ptr %i.aa, align 8, !tbaa !164 ; 2 uses
  %.not181204.i = icmp eq ptr %.sroa.0144.0203.i, %i.ab
  br i1 %.not181204.i, label %._crit_edge210.i, label %.lr.ph209.i

.lr.ph209.i:                                      ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0156.0213.i, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0156.0213.i, i64 32 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0156.0213.i, i64 40 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0156.0213.i, i64 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit125.i, %.lr.ph209.i
  %.sroa.0144.0207.i = phi ptr [ %.sroa.0144.0203.i, %.lr.ph209.i ], [ %.sroa.0144.0.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit125.i ] ; 23 uses
  %.166206.i = phi i1 [ %.065212.i, %.lr.ph209.i ], [ %.368.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit125.i ] ; 2 uses
  %.074205.i = phi i32 [ 0, %.lr.ph209.i ], [ %.276.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit125.i ]
  %i.ag = load ptr, ptr %i.g, align 8, !tbaa !154 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 168
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = call noundef i32 %i.aj(ptr noundef nonnull align 8 dereferenceable(432) %i.ag, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0144.0207.i) #12, !inline_history !169
  %i.al = add i32 %i.ak, %.074205.i               ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0144.0207.i, i64 52 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !170 ; 2 uses
  %.not.i = icmp eq i32 %i.an, 534
  %i.ao = and i32 %i.an, -2
  %i.ap = icmp eq i32 %i.ao, 534
  br i1 %i.ap, label %bb.e, label %.thread.i

bb.e:                                             ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0144.0207.i, i64 32 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !183
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !184 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load i32, ptr %i.au, align 8, !tbaa !185
  %i.aw = sext i32 %i.av to i64
  %i.ax = load ptr, ptr %5, align 8, !tbaa !21    ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.aw
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !228
  %i.ba = load i32, ptr %i.ac, align 8, !tbaa !185
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !228
  %i.be = add i32 %i.al, %i.bd
  %i.bf = sub i32 %i.az, %i.be
  %i.bg = sdiv i32 %i.bf, 2
  %narrow.i.i = add nsw i32 %i.bg, 512
  %i.bh = icmp ult i32 %narrow.i.i, 1024
  br i1 %i.bh, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %.not.i, label %.preheader185.preheader.i, label %.critedge.i

.preheader185.preheader.i:                        ; preds = %bb.f
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.0144.0207.i, align 8
  %i.bi = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i.i = icmp eq i64 %i.bi, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i: ; preds = %.preheader185.preheader.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0144.0207.i, i64 44
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !229
  %i.bl = and i32 %i.bk, 8
  %.not34.i.i.i.i.i = icmp eq i32 %i.bl, 0
  br i1 %.not34.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i
  %.sroa.0.05.i.i.i.i.i = phi ptr [ %i.bn, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i ], [ %.sroa.0144.0207.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !164 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 44
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !229
  %i.bq = and i32 %i.bp, 8
  %.not3.i.i.i.i.i = icmp eq i32 %i.bq, 0
  br i1 %.not3.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i, !llvm.loop !230

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, %.preheader185.preheader.i
  %.sroa.0.1.i.i.i.i.i = phi ptr [ %.sroa.0144.0207.i, %.preheader185.preheader.i ], [ %.sroa.0144.0207.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i ], [ %i.bn, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i ]
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !164
  %.not182.i = icmp eq ptr %i.bs, %i.ab
  br i1 %.not182.i, label %.critedge.i, label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_17MachineBasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i

_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_17MachineBasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i: ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i
  %i.bt = load ptr, ptr %0, align 8, !tbaa !32
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0156.0213.i, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !232
  %i.bw = call noundef ptr @_ZN4llvm15MachineFunction23CreateMachineBasicBlockEPKNS_10BasicBlockESt8optionalINS_10UniqueBBIDEE(ptr noundef nonnull align 8 dereferenceable(1065) %i.bt, ptr noundef %i.bv, i64 undef, i8 0) #12 ; 10 uses
  %i.bx = load ptr, ptr %0, align 8, !tbaa !32
  %i.by = load ptr, ptr %i.af, align 8, !tbaa !163 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 296
  call void @_ZN4llvm21ilist_callback_traitsINS_17MachineBasicBlockEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, ptr noundef %i.bw) #12
  %i.ca = load ptr, ptr %i.by, align 8, !tbaa !233 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr %i.by, ptr %i.cb, align 8, !tbaa !163
  store ptr %i.ca, ptr %i.bw, align 8, !tbaa !233
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store ptr %i.bw, ptr %i.cc, align 8, !tbaa !163
  store ptr %i.bw, ptr %i.by, align 8, !tbaa !233
  %.0.copyload.i.i.i.i.i.i.i.i.i.i89.i = load i64, ptr %.sroa.0144.0207.i, align 8
  %i.cd = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i89.i, 4
  %.not.i.i.i.i90.i = icmp eq i64 %i.cd, 0
  br i1 %.not.i.i.i.i90.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i94.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i91.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i94.i: ; preds = %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_17MachineBasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0144.0207.i, i64 44
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !229
  %i.cg = and i32 %i.cf, 8
  %.not34.i.i.i.i95.i = icmp eq i32 %i.cg, 0
  br i1 %.not34.i.i.i.i95.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i91.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i96.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i96.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i94.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i96.i
  %.sroa.0.05.i.i.i.i97.i = phi ptr [ %i.ci, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i96.i ], [ %.sroa.0144.0207.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i94.i ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i97.i, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !164 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 44
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !229
  %i.cl = and i32 %i.ck, 8
  %.not3.i.i.i.i98.i = icmp eq i32 %i.cl, 0
  br i1 %.not3.i.i.i.i98.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i91.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i96.i, !llvm.loop !230

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i91.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i96.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i94.i, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_17MachineBasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i
  %.sroa.0.1.i.i.i.i92.i = phi ptr [ %.sroa.0144.0207.i, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_17MachineBasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i ], [ %.sroa.0144.0207.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i94.i ], [ %i.ci, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i96.i ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i92.i, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !164 ; 7 uses
  %i.co = icmp eq ptr %i.cn, %i.ab
  %i.cp = icmp eq ptr %i.bw, %.sroa.0156.0213.i
  %or.cond.i.i.i = or i1 %i.cp, %i.co
  br i1 %or.cond.i.i.i, label %_ZN4llvm17MachineBasicBlock6spliceENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEPS0_S3_S3_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i91.i
  %6 = getelementptr inbounds nuw i8, ptr %i.bw, i64 48 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE21transferNodesFromListERS2_NS_14ilist_iteratorINS_12ilist_detail12node_optionsIS1_Lb1ELb1EvLb0EvEELb0ELb0EEES8_(ptr noundef nonnull align 8 dereferenceable(24) %i.cq, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr %i.cn, ptr nonnull %i.ab) #12
  %.0.copyload.i.i.i.i.i.i.i.i.i.i100.i = load i64, ptr %i.ab, align 8
  %i.cr = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i100.i, -8 ; 2 uses
  %i.cs = inttoptr i64 %i.cr to ptr
  %.0.copyload.i.i.i.i20.i.i.i.i.i.i.i = load i64, ptr %i.cn, align 8
  %i.ct = and i64 %.0.copyload.i.i.i.i20.i.i.i.i.i.i.i, -8
  %i.cu = inttoptr i64 %i.ct to ptr
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store ptr %i.ab, ptr %i.cv, align 8, !tbaa !164
  %.0.copyload.i.i.i.i21.i.i.i.i.i.i.i = load i64, ptr %i.cn, align 8
  %i.cw = and i64 %.0.copyload.i.i.i.i21.i.i.i.i.i.i.i, -8
  %.0.copyload.i.i.i.i22.i.i.i.i.i.i.i = load i64, ptr %i.ab, align 8
  %i.cx = and i64 %.0.copyload.i.i.i.i22.i.i.i.i.i.i.i, 7
  %i.cy = or disjoint i64 %i.cx, %i.cw
  store i64 %i.cy, ptr %i.ab, align 8
  %.0.copyload.i.i.i.i23.i.i.i.i.i.i.i = load i64, ptr %6, align 8
  %i.cz = and i64 %.0.copyload.i.i.i.i23.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.da = inttoptr i64 %i.cz to ptr
  %i.db = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store ptr %6, ptr %i.db, align 8, !tbaa !164
  %.0.copyload.i.i.i.i24.i.i.i.i.i.i.i = load i64, ptr %i.cn, align 8
  %i.dc = and i64 %.0.copyload.i.i.i.i24.i.i.i.i.i.i.i, 7
  %i.dd = or disjoint i64 %i.dc, %i.cz
  store i64 %i.dd, ptr %i.cn, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store ptr %i.cn, ptr %i.de, align 8, !tbaa !164
  %.0.copyload.i.i.i.i25.i.i.i.i.i.i.i = load i64, ptr %6, align 8
  %i.df = and i64 %.0.copyload.i.i.i.i25.i.i.i.i.i.i.i, 7
  %i.dg = or disjoint i64 %i.df, %i.cr
  store i64 %i.dg, ptr %6, align 8
  br label %_ZN4llvm17MachineBasicBlock6spliceENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEPS0_S3_S3_.exit.i

_ZN4llvm17MachineBasicBlock6spliceENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEPS0_S3_S3_.exit.i: ; preds = %bb.g, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i91.i
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0156.0213.i, i64 112
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !21 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0156.0213.i, i64 120
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !161 ; 2 uses
  %i.dl = zext i32 %i.dk to i64
  %.idx.i = shl nuw nsw i64 %i.dl, 3
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 %.idx.i
  %.not81218.i = icmp eq i32 %i.dk, 0
  br i1 %.not81218.i, label %.thread178.i, label %.lr.ph220.i

.lr.ph220.i:                                      ; preds = %_ZN4llvm17MachineBasicBlock6spliceENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEPS0_S3_S3_.exit.i, %bb.i
  %.077219.i = phi ptr [ %i.dp, %bb.i ], [ %i.di, %_ZN4llvm17MachineBasicBlock6spliceENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEPS0_S3_S3_.exit.i ] ; 2 uses
  %i.dn = load ptr, ptr %.077219.i, align 8, !tbaa !234 ; 3 uses
  %i.do = icmp eq ptr %i.dn, %i.at
  br i1 %i.do, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph220.i
  call void @_ZN4llvm17MachineBasicBlock16replaceSuccessorEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(360) %.sroa.0156.0213.i, ptr noundef %i.dn, ptr noundef nonnull %i.bw) #12
  call void @_ZN4llvm17MachineBasicBlock12addSuccessorEPS0_NS_17BranchProbabilityE(ptr noundef nonnull align 8 dereferenceable(360) %i.bw, ptr noundef %i.dn, i32 -1) #12
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph220.i
  %i.dp = getelementptr inbounds nuw i8, ptr %.077219.i, i64 8 ; 2 uses
  %.not81.i = icmp eq ptr %i.dp, %i.dm
  br i1 %.not81.i, label %.thread178.i, label %.lr.ph220.i

.critedge.i:                                      ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i, %bb.f
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.0144.0207.i, i64 72
  %.sroa.017.0.copyload.i = load ptr, ptr %i.dq, align 8, !tbaa !235 ; 2 uses
  %i.dr = load ptr, ptr %i.g, align 8, !tbaa !154 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 168
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = call noundef i32 %i.du(ptr noundef nonnull align 8 dereferenceable(432) %i.dr, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0144.0207.i) #12, !inline_history !169
  %i.dw = load i32, ptr %i.am, align 4, !tbaa !170
  %i.dx = icmp eq i32 %i.dw, 534
  br i1 %i.dx, label %.preheader.preheader.i, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit115.i

.preheader.preheader.i:                           ; preds = %.critedge.i
  %i.dy = load ptr, ptr %i.af, align 8, !tbaa !163
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  store ptr %i.s, ptr %4, align 8, !tbaa !21
  store i32 1, ptr %i.u, align 4, !tbaa !162
  %i.dz = load ptr, ptr %i.aq, align 8, !tbaa !183
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.ea, i64 32, i1 false)
  store i32 1, ptr %i.t, align 8, !tbaa !161
  %i.eb = load ptr, ptr %i.g, align 8, !tbaa !154 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 848
  %i.ee = load ptr, ptr %i.ed, align 8
  %i.ef = call noundef zeroext i1 %i.ee(ptr noundef nonnull align 8 dereferenceable(432) %i.eb, ptr noundef nonnull align 8 dereferenceable(16) %4) #12, !inline_history !169 ; 0 uses
  %i.eg = load ptr, ptr %i.g, align 8, !tbaa !154
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !236
  %i.ej = getelementptr inbounds i8, ptr %i.ei, i64 -17088
  %i.ek = load ptr, ptr %i.ad, align 8, !tbaa !240 ; 3 uses
  %i.el = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.ek, ptr noundef nonnull align 8 dereferenceable(32) %i.ej, ptr %.sroa.017.0.copyload.i, i1 noundef zeroext false) #12 ; 14 uses
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef %i.el) #12
  %.0.copyload.i.i.i.i.i.i.i.i.i.i105.i = load i64, ptr %.sroa.0144.0207.i, align 8
  %i.em = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i105.i, -8 ; 2 uses
  %i.en = inttoptr i64 %i.em to ptr
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store ptr %.sroa.0144.0207.i, ptr %i.eo, align 8, !tbaa !164
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i = load i64, ptr %i.el, align 8
  %i.ep = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i, 7
  %i.eq = or disjoint i64 %i.ep, %i.em
  store i64 %i.eq, ptr %i.el, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store ptr %i.el, ptr %i.er, align 8, !tbaa !164
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i = load i64, ptr %.sroa.0144.0207.i, align 8
  %i.es = ptrtoint ptr %i.el to i64
  %i.et = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i, 7
  %i.eu = or disjoint i64 %i.et, %i.es
  store i64 %i.eu, ptr %.sroa.0144.0207.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  store ptr null, ptr %i.v, align 8, !tbaa !241, !alias.scope !244
  store ptr %i.dy, ptr %i.w, align 8, !tbaa !184, !alias.scope !244
  store i32 4, ptr %3, align 8, !alias.scope !244
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.el, ptr noundef nonnull align 8 dereferenceable(1065) %i.ek, ptr noundef nonnull align 8 dereferenceable(32) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %i.ev = load ptr, ptr %4, align 8, !tbaa !21
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.el, ptr noundef nonnull align 8 dereferenceable(1065) %i.ek, ptr noundef nonnull align 8 dereferenceable(32) %i.ev) #12
  %i.ew = load ptr, ptr %i.g, align 8, !tbaa !154 ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 168
  %i.ez = load ptr, ptr %i.ey, align 8
  %i.fa = call noundef i32 %i.ez(ptr noundef nonnull align 8 dereferenceable(432) %i.ew, ptr noundef nonnull align 8 dereferenceable(80) %i.el) #12, !inline_history !169
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.el, align 8
  %i.fb = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i = icmp eq i64 %i.fb, 0
  br i1 %.not.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i: ; preds = %.preheader.preheader.i
  %i.fc = getelementptr inbounds nuw i8, ptr %i.el, i64 44
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !229
  %i.fe = and i32 %i.fd, 8
  %.not34.i.i.i.i = icmp eq i32 %i.fe, 0
  br i1 %.not34.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i
  %.sroa.0.05.i.i.i.i = phi ptr [ %i.fg, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ], [ %i.el, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ]
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !164 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 44
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !229
  %i.fj = and i32 %i.fi, 8
  %.not3.i.i.i.i = icmp eq i32 %i.fj, 0
  br i1 %.not3.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i, !llvm.loop !230

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, %.preheader.preheader.i
  %.sroa.0.1.i.i.i.i = phi ptr [ %i.el, %.preheader.preheader.i ], [ %i.el, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ], [ %i.fg, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ]
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !164
  %i.fm = load ptr, ptr %4, align 8, !tbaa !21    ; 2 uses
  %i.fn = icmp eq ptr %i.fm, %i.s
  br i1 %i.fn, label %_ZN4llvm11SmallVectorINS_14MachineOperandELj1EED2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i
  call void @free(ptr noundef %i.fm) #12
  br label %_ZN4llvm11SmallVectorINS_14MachineOperandELj1EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_14MachineOperandELj1EED2Ev.exit.i: ; preds = %bb.j, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit115.i

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit115.i: ; preds = %_ZN4llvm11SmallVectorINS_14MachineOperandELj1EED2Ev.exit.i, %.critedge.i
  %.sroa.0144.1.i = phi ptr [ %i.fl, %_ZN4llvm11SmallVectorINS_14MachineOperandELj1EED2Ev.exit.i ], [ %.sroa.0144.0207.i, %.critedge.i ] ; 4 uses
  %.pn.i = phi i32 [ %i.fa, %_ZN4llvm11SmallVectorINS_14MachineOperandELj1EED2Ev.exit.i ], [ 0, %.critedge.i ]
  %.078.i = sub i32 %.pn.i, %i.dv
  %i.fo = load ptr, ptr %i.g, align 8, !tbaa !154
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !236
  %i.fr = getelementptr inbounds i8, ptr %i.fq, i64 -15296
  %i.fs = load ptr, ptr %i.ad, align 8, !tbaa !240 ; 2 uses
  %i.ft = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.fs, ptr noundef nonnull align 8 dereferenceable(32) %i.fr, ptr %.sroa.017.0.copyload.i, i1 noundef zeroext false) #12 ; 9 uses
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef %i.ft) #12
  %.0.copyload.i.i.i.i.i.i.i.i.i.i107.i = load i64, ptr %.sroa.0144.1.i, align 8
  %i.fu = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i107.i, -8 ; 2 uses
  %i.fv = inttoptr i64 %i.fu to ptr
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  store ptr %.sroa.0144.1.i, ptr %i.fw, align 8, !tbaa !164
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i108.i = load i64, ptr %i.ft, align 8
  %i.fx = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i108.i, 7
  %i.fy = or disjoint i64 %i.fx, %i.fu
  store i64 %i.fy, ptr %i.ft, align 8
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  store ptr %i.ft, ptr %i.fz, align 8, !tbaa !164
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i109.i = load i64, ptr %.sroa.0144.1.i, align 8
  %i.ga = ptrtoint ptr %i.ft to i64
  %i.gb = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i109.i, 7
  %i.gc = or disjoint i64 %i.gb, %i.ga
  store i64 %i.gc, ptr %.sroa.0144.1.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  store ptr null, ptr %i.x, align 8, !tbaa !241, !alias.scope !247
  store ptr %i.at, ptr %i.y, align 8, !tbaa !184, !alias.scope !247
  store i32 4, ptr %2, align 8, !alias.scope !247
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ft, ptr noundef nonnull align 8 dereferenceable(1065) %i.fs, ptr noundef nonnull align 8 dereferenceable(32) %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  %i.gd = load ptr, ptr %i.g, align 8, !tbaa !154 ; 2 uses
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 168
  %i.gg = load ptr, ptr %i.gf, align 8
  %i.gh = call noundef i32 %i.gg(ptr noundef nonnull align 8 dereferenceable(432) %i.gd, ptr noundef nonnull align 8 dereferenceable(80) %i.ft) #12, !inline_history !169
  %i.gi = add i32 %i.gh, %.078.i                  ; 3 uses
  %i.gj = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0144.0207.i) #12 ; 0 uses
end_hunk_0
