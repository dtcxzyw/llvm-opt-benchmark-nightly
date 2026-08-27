Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AArch64StackTagging?download=true
inline.NumInlined: 2358
inline.NumDeleted: 1524
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN12_GLOBAL__N_119AArch64StackTagging13runOnFunctionERN4llvm8FunctionE:bb.a
  %16 = alloca %"class.llvm::IRBuilder", align 8  ; 33 uses
  %i.b = alloca [1 x ptr], align 8                ; 4 uses
  %17 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %18 = alloca %"class.llvm::ArrayRef.303", align 8 ; 4 uses
  %19 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %20 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %21 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %22 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %23 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %24 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %25 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %26 = alloca %"class.llvm::memtag::StackInfoBuilder", align 8 ; 16 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %27 = alloca %"class.llvm::IRBuilder", align 8  ; 20 uses
  %i.d = alloca [1 x ptr], align 8                ; 4 uses
  %i.e = alloca [3 x ptr], align 8                ; 6 uses
  %28 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %29 = alloca %"class.llvm::ArrayRef.303", align 8 ; 2 uses
  %30 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %31 = alloca %class.anon, align 1               ; 3 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %32 = alloca %"class.std::optional.313", align 8 ; 5 uses
  %33 = alloca %class.anon.321, align 8           ; 6 uses
  %34 = alloca %"class.llvm::function_ref.322", align 8 ; 3 uses
  %35 = alloca %"class.std::optional.313", align 8 ; 5 uses
  %36 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %i.g = tail call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %1, i32 noundef 63) #20
  br i1 %i.g, label %bb.b, label %_ZNSt10unique_ptrIN4llvm25OptimizationRemarkEmitterESt14default_deleteIS1_EED2Ev.exit180

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 29
  %i.i = load i8, ptr %i.h, align 1, !tbaa !60, !range !18, !noundef !19
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !37   ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !104  ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !104  ; 2 uses
  %.not1114.i.i.i = icmp ne ptr %i.m, %i.o
  tail call void @llvm.assume(i1 %.not1114.i.i.i)
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !106
  %.not.i3.i.i = icmp eq ptr %i.p, @_ZN4llvm32StackSafetyGlobalInfoWrapperPass2IDE
  br i1 %.not.i3.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_32StackSafetyGlobalInfoWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.sroa.08.015.i4.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %i.m, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i, i64 16 ; 4 uses
  %.not11.i.i.i = icmp ne ptr %i.q, %i.o
  tail call void @llvm.assume(i1 %.not11.i.i.i)
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !106
  %.not.i.i.i = icmp eq ptr %i.r, @_ZN4llvm32StackSafetyGlobalInfoWrapperPass2IDE
  br i1 %.not.i.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_32StackSafetyGlobalInfoWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i

_ZNK4llvm4Pass11getAnalysisINS_32StackSafetyGlobalInfoWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i, %bb.c
  %.sroa.08.015.i.lcssa.i.i = phi ptr [ %i.m, %bb.c ], [ %i.q, %.lr.ph.i.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.u, ptr %i.v, align 8, !tbaa !109
  br label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm4Pass11getAnalysisINS_32StackSafetyGlobalInfoWrapperPassEEERT_v.exit, %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  store ptr %1, ptr %i.w, align 8, !tbaa !110
  %i.x = tail call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm8Function13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(140) %1) #20
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.x, ptr %i.y, align 8, !tbaa !111
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !53, !range !18, !noundef !19
  %i.ab = trunc nuw i8 %i.aa to i1
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !37 ; 3 uses
  br i1 %i.ab, label %bb.e, label %._crit_edge281

bb.e:                                             ; preds = %bb.d
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !104 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !104 ; 2 uses
  %.not1114.i.i.i135 = icmp ne ptr %i.ae, %i.ag
  tail call void @llvm.assume(i1 %.not1114.i.i.i135)
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !106
  %.not.i3.i.i136 = icmp eq ptr %i.ah, @_ZN4llvm20AAResultsWrapperPass2IDE
  br i1 %.not.i3.i.i136, label %_ZNK4llvm4Pass11getAnalysisINS_20AAResultsWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i137

.lr.ph.i.i.i137:                                  ; preds = %bb.e, %.lr.ph.i.i.i137
  %.sroa.08.015.i4.i.i138 = phi ptr [ %i.ai, %.lr.ph.i.i.i137 ], [ %i.ae, %bb.e ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i138, i64 16 ; 4 uses
  %.not11.i.i.i139 = icmp ne ptr %i.ai, %i.ag
  tail call void @llvm.assume(i1 %.not11.i.i.i139)
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !106
  %.not.i.i.i140 = icmp eq ptr %i.aj, @_ZN4llvm20AAResultsWrapperPass2IDE
  br i1 %.not.i.i.i140, label %_ZNK4llvm4Pass11getAnalysisINS_20AAResultsWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i137

_ZNK4llvm4Pass11getAnalysisINS_20AAResultsWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i137, %bb.e
  %.sroa.08.015.i.lcssa.i.i141 = phi ptr [ %i.ae, %bb.e ], [ %i.ai, %.lr.ph.i.i.i137 ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i141, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !112
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !113
  br label %._crit_edge281

._crit_edge281:                                   ; preds = %bb.d, %_ZNK4llvm4Pass11getAnalysisINS_20AAResultsWrapperPassEEERT_v.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.aq = tail call noundef ptr @_ZNK4llvm16AnalysisResolver22getAnalysisIfAvailableEPKv(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull @_ZN4llvm36OptimizationRemarkEmitterWrapperPass2IDE) #20 ; 2 uses
  %.not = icmp eq ptr %i.aq, null
  br i1 %.not, label %_ZNSt10unique_ptrIN4llvm25OptimizationRemarkEmitterESt14default_deleteIS1_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge281
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !114 ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %_ZNSt10unique_ptrIN4llvm25OptimizationRemarkEmitterESt14default_deleteIS1_EED2Ev.exit, label %bb.g

_ZNSt10unique_ptrIN4llvm25OptimizationRemarkEmitterESt14default_deleteIS1_EED2Ev.exit: ; preds = %._crit_edge281, %bb.f
  %i.au = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22, !noalias !116 ; 3 uses
  %i.av = load ptr, ptr %i.w, align 8, !tbaa !119, !noalias !116
  tail call void @_ZN4llvm25OptimizationRemarkEmitterC1EPKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef %i.av) #20, !noalias !116
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN4llvm25OptimizationRemarkEmitterESt14default_deleteIS1_EED2Ev.exit, %bb.f
  %.sroa.0221.0 = phi ptr [ %i.au, %_ZNSt10unique_ptrIN4llvm25OptimizationRemarkEmitterESt14default_deleteIS1_EED2Ev.exit ], [ null, %bb.f ] ; 3 uses
  %.1111 = phi ptr [ %i.au, %_ZNSt10unique_ptrIN4llvm25OptimizationRemarkEmitterESt14default_deleteIS1_EED2Ev.exit ], [ %i.as, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #20
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !109
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %26, i8 0, i64 24, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %26, i64 24 ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %26, i64 40 ; 6 uses
  store ptr %i.az, ptr %i.ay, align 8, !tbaa !21
  %i.ba = getelementptr inbounds nuw i8, ptr %26, i64 32 ; 6 uses
  store i32 0, ptr %i.ba, align 8, !tbaa !68
  %i.bb = getelementptr inbounds nuw i8, ptr %26, i64 36
  store i32 0, ptr %i.bb, align 4, !tbaa !100
  %i.bc = getelementptr inbounds nuw i8, ptr %26, i64 56 ; 2 uses
  store ptr %i.bc, ptr %i.az, align 8, !tbaa !21
  %i.bd = getelementptr inbounds nuw i8, ptr %26, i64 48 ; 2 uses
  store i32 0, ptr %i.bd, align 8, !tbaa !68
  %i.be = getelementptr inbounds nuw i8, ptr %26, i64 52
  store i32 8, ptr %i.be, align 4, !tbaa !100
  %i.bf = getelementptr inbounds nuw i8, ptr %26, i64 120 ; 2 uses
  store i8 0, ptr %i.bf, align 8, !tbaa !120
  %i.bg = getelementptr inbounds nuw i8, ptr %26, i64 128
  store ptr %i.ax, ptr %i.bg, align 8, !tbaa !135
  %i.bh = getelementptr inbounds nuw i8, ptr %26, i64 136
  store ptr @.str.20, ptr %i.bh, align 8, !tbaa !137
  %i.bi = load ptr, ptr %i.w, align 8, !tbaa !110 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 80 ; 7 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 88
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !138, !noalias !141 ; 6 uses
  %.not.i.i.i143 = icmp eq ptr %i.bl, %i.bj
  br i1 %.not.i.i.i143, label %_ZN4llvm12instructionsEPNS_8FunctionE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !146, !noalias !141 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %.lr.ph.i.i.preheader.i.i, label %_ZN4llvm12instructionsEPNS_8FunctionE.exit

.lr.ph.i.i.preheader.i.i:                         ; preds = %bb.h
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !138, !noalias !141 ; 3 uses
  %i.bs = icmp eq ptr %i.br, %i.bj
  br i1 %i.bs, label %_ZN4llvm12instructionsEPNS_8FunctionE.exit, label %.lr.ph.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !138, !noalias !141 ; 3 uses
  %i.bv = icmp eq ptr %i.bu, %i.bj
  br i1 %i.bv, label %_ZN4llvm12instructionsEPNS_8FunctionE.exit, label %.lr.ph.i.i, !llvm.loop !149

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader.i.i, %.lr.ph.i.i.i.i
  %i.bw = phi ptr [ %i.bu, %.lr.ph.i.i.i.i ], [ %i.br, %.lr.ph.i.i.preheader.i.i ] ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !146, !noalias !141 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %.lr.ph.i.i.i.i, label %..sink.split.i.i_crit_edge.i.i, !llvm.loop !149

..sink.split.i.i_crit_edge.i.i:                   ; preds = %.lr.ph.i.i
  br label %_ZN4llvm12instructionsEPNS_8FunctionE.exit, !llvm.loop !149

_ZN4llvm12instructionsEPNS_8FunctionE.exit:       ; preds = %.lr.ph.i.i.i.i, %bb.g, %bb.h, %.lr.ph.i.i.preheader.i.i, %..sink.split.i.i_crit_edge.i.i
  %.sroa.23.0.i = phi ptr [ %i.bl, %bb.g ], [ %i.bl, %bb.h ], [ %i.bw, %..sink.split.i.i_crit_edge.i.i ], [ %i.br, %.lr.ph.i.i.preheader.i.i ], [ %i.bu, %.lr.ph.i.i.i.i ] ; 2 uses
  %.sroa.44.0.i = phi ptr [ null, %bb.g ], [ %i.bn, %bb.h ], [ %i.by, %..sink.split.i.i_crit_edge.i.i ], [ %i.bn, %.lr.ph.i.i.preheader.i.i ], [ %i.by, %.lr.ph.i.i.i.i ]
  %i.cb = icmp eq ptr %.sroa.23.0.i, %i.bj
  br i1 %i.cb, label %_ZNSt10unique_ptrIN4llvm13DominatorTreeESt14default_deleteIS1_EED2Ev.exit168, label %.lr.ph243

_ZNK4llvm12InstIteratorINS_15SymbolTableListINS_10BasicBlockEJEEENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb0ELb0EvLb0EvEELb0ELb0EEENS_21ilist_iterator_w_bitsINS6_INS_11InstructionELb0ELb0EvLb1ES2_EELb0ELb0EEESA_EneERKSD_.exit: ; preds = %_ZN4llvm12InstIteratorINS_15SymbolTableListINS_10BasicBlockEJEEENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb0ELb0EvLb0EvEELb0ELb0EEENS_21ilist_iterator_w_bitsINS6_INS_11InstructionELb0ELb0EvLb1ES2_EELb0ELb0EEESA_EppEv.exit
  %.pre282 = load i32, ptr %i.ba, align 8, !tbaa !68
  %.not349 = icmp eq i32 %.pre282, 0
  br i1 %.not349, label %_ZNSt10unique_ptrIN4llvm13DominatorTreeESt14default_deleteIS1_EED2Ev.exit168, label %bb.i

.lr.ph243:                                        ; preds = %_ZN4llvm12instructionsEPNS_8FunctionE.exit, %_ZN4llvm12InstIteratorINS_15SymbolTableListINS_10BasicBlockEJEEENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb0ELb0EvLb0EvEELb0ELb0EEENS_21ilist_iterator_w_bitsINS6_INS_11InstructionELb0ELb0EvLb1ES2_EELb0ELb0EEESA_EppEv.exit
  %.sroa.5213.0242 = phi ptr [ %.sroa.5213.1, %_ZN4llvm12InstIteratorINS_15SymbolTableListINS_10BasicBlockEJEEENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb0ELb0EvLb0EvEELb0ELb0EEENS_21ilist_iterator_w_bitsINS6_INS_11InstructionELb0ELb0EvLb1ES2_EELb0ELb0EEESA_EppEv.exit ], [ %.sroa.44.0.i, %_ZN4llvm12instructionsEPNS_8FunctionE.exit ] ; 2 uses
  %.sroa.8.0241 = phi ptr [ %.sroa.8.3.a, %_ZN4llvm12InstIteratorINS_15SymbolTableListINS_10BasicBlockEJEEENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb0ELb0EvLb0EvEELb0ELb0EEENS_21ilist_iterator_w_bitsINS6_INS_11InstructionELb0ELb0EvLb1ES2_EELb0ELb0EEESA_EppEv.exit ], [ %.sroa.23.0.i, %_ZN4llvm12instructionsEPNS_8FunctionE.exit ] ; 3 uses
  %i.cc = getelementptr inbounds i8, ptr %.sroa.5213.0242, i64 -24
  call void @_ZN4llvm6memtag16StackInfoBuilder5visitERNS_25OptimizationRemarkEmitterERNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(144) %26, ptr noundef nonnull align 8 dereferenceable(24) %.1111, ptr noundef nonnull align 8 dereferenceable(72) %i.cc) #20
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.5213.0242, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !146 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.8.0241, i64 24
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %.lr.ph.i.i144.preheader, label %_ZN4llvm12InstIteratorINS_15SymbolTableListINS_10BasicBlockEJEEENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb0ELb0EvLb0EvEELb0ELb0EEENS_21ilist_iterator_w_bitsINS6_INS_11InstructionELb0ELb0EvLb1ES2_EELb0ELb0EEESA_EppEv.exit

.lr.ph.i.i144.preheader:                          ; preds = %.lr.ph243
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.8.0241, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !138 ; 3 uses
  %i.cj = icmp eq ptr %i.ci, %i.bj
  br i1 %i.cj, label %_ZN4llvm12InstIteratorINS_15SymbolTableListINS_10BasicBlockEJEEENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb0ELb0EvLb0EvEELb0ELb0EEENS_21ilist_iterator_w_bitsINS6_INS_11InstructionELb0ELb0EvLb1ES2_EELb0ELb0EEESA_EppEv.exit, label %.lr.ph

.lr.ph.i.i144:                                    ; preds = %.lr.ph
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !138 ; 3 uses
  %i.cm = icmp eq ptr %i.cl, %i.bj
  br i1 %i.cm, label %_ZN4llvm12InstIteratorINS_15SymbolTableListINS_10BasicBlockEJEEENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb0ELb0EvLb0EvEELb0ELb0EEENS_21ilist_iterator_w_bitsINS6_INS_11InstructionELb0ELb0EvLb1ES2_EELb0ELb0EEESA_EppEv.exit, label %.lr.ph, !llvm.loop !149

.lr.ph:                                           ; preds = %.lr.ph.i.i144.preheader, %.lr.ph.i.i144
  %i.cn = phi ptr [ %i.cl, %.lr.ph.i.i144 ], [ %i.ci, %.lr.ph.i.i144.preheader ] ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !146 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %.lr.ph.i.i144, label %._ZN4llvm12InstIteratorINS_15SymbolTableListINS_10BasicBlockEJEEENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb0ELb0EvLb0EvEELb0ELb0EEENS_21ilist_iterator_w_bitsINS6_INS_11InstructionELb0ELb0EvLb1ES2_EELb0ELb0EEESA_EppEv.exit.loopexit_crit_edge, !llvm.loop !149

._ZN4llvm12InstIteratorINS_15SymbolTableListINS_10BasicBlockEJEEENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb0ELb0EvLb0EvEELb0ELb0EEENS_21ilist_iterator_w_bitsINS6_INS_11InstructionELb0ELb0EvLb1ES2_EELb0ELb0EEESA_EppEv.exit.loopexit_crit_edge: ; preds = %.lr.ph
  br label %_ZN4llvm12InstIteratorINS_15SymbolTableListINS_10BasicBlockEJEEENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb0ELb0EvLb0EvEELb0ELb0EEENS_21ilist_iterator_w_bitsINS6_INS_11InstructionELb0ELb0EvLb1ES2_EELb0ELb0EEESA_EppEv.exit, !llvm.loop !149

_ZN4llvm12InstIteratorINS_15SymbolTableListINS_10BasicBlockEJEEENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb0ELb0EvLb0EvEELb0ELb0EEENS_21ilist_iterator_w_bitsINS6_INS_11InstructionELb0ELb0EvLb1ES2_EELb0ELb0EEESA_EppEv.exit: ; preds = %.lr.ph.i.i144, %.lr.ph.i.i144.preheader, %._ZN4llvm12InstIteratorINS_15SymbolTableListINS_10BasicBlockEJEEENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb0ELb0EvLb0EvEELb0ELb0EEENS_21ilist_iterator_w_bitsINS6_INS_11InstructionELb0ELb0EvLb1ES2_EELb0ELb0EEESA_EppEv.exit.loopexit_crit_edge, %.lr.ph243
  %.sroa.8.3.a = phi ptr [ %.sroa.8.0241, %.lr.ph243 ], [ %i.cn, %._ZN4llvm12InstIteratorINS_15SymbolTableListINS_10BasicBlockEJEEENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb0ELb0EvLb0EvEELb0ELb0EEENS_21ilist_iterator_w_bitsINS6_INS_11InstructionELb0ELb0EvLb1ES2_EELb0ELb0EEESA_EppEv.exit.loopexit_crit_edge ], [ %i.ci, %.lr.ph.i.i144.preheader ], [ %i.cl, %.lr.ph.i.i144 ] ; 2 uses
  %.sroa.5213.1 = phi ptr [ %i.ce, %.lr.ph243 ], [ %i.cp, %._ZN4llvm12InstIteratorINS_15SymbolTableListINS_10BasicBlockEJEEENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb0ELb0EvLb0EvEELb0ELb0EEENS_21ilist_iterator_w_bitsINS6_INS_11InstructionELb0ELb0EvLb1ES2_EELb0ELb0EEESA_EppEv.exit.loopexit_crit_edge ], [ %i.ce, %.lr.ph.i.i144.preheader ], [ %i.cp, %.lr.ph.i.i144 ]
  %i.cs = icmp eq ptr %.sroa.8.3.a, %i.bj
  br i1 %i.cs, label %_ZNK4llvm12InstIteratorINS_15SymbolTableListINS_10BasicBlockEJEEENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb0ELb0EvLb0EvEELb0ELb0EEENS_21ilist_iterator_w_bitsINS6_INS_11InstructionELb0ELb0EvLb1ES2_EELb0ELb0EEESA_EneERKSD_.exit, label %.lr.ph243

bb.i:                                             ; preds = %_ZNK4llvm12InstIteratorINS_15SymbolTableListINS_10BasicBlockEJEEENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb0ELb0EvLb0EvEELb0ELb0EEENS_21ilist_iterator_w_bitsINS6_INS_11InstructionELb0ELb0EvLb1ES2_EELb0ELb0EEESA_EneERKSD_.exit
  %i.ct = load ptr, ptr %i.ap, align 8, !tbaa !37
  %i.cu = call noundef ptr @_ZNK4llvm16AnalysisResolver22getAnalysisIfAvailableEPKv(ptr noundef nonnull align 8 dereferenceable(32) %i.ct, ptr noundef nonnull @_ZN4llvm24DominatorTreeWrapperPass2IDE) #20 ; 2 uses
  %.not127 = icmp eq ptr %i.cu, null
  br i1 %.not127, label %_ZNSt10unique_ptrIN4llvm13DominatorTreeESt14default_deleteIS1_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  br label %bb.k

_ZNSt10unique_ptrIN4llvm13DominatorTreeESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.i
  %i.cw = load ptr, ptr %i.w, align 8, !tbaa !110 ; 2 uses
  %i.cx = call noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #22, !noalias !150 ; 22 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store ptr %i.cy, ptr %i.cx, align 8, !tbaa !21, !noalias !150
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store i32 0, ptr %i.cz, align 8, !tbaa !68, !noalias !150
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 12
  store i32 1, ptr %i.da, align 4, !tbaa !100, !noalias !150
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 40
  store ptr %i.dc, ptr %i.db, align 8, !tbaa !21, !noalias !150
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  store i32 0, ptr %i.dd, align 8, !tbaa !68, !noalias !150
  %i.de = getelementptr inbounds nuw i8, ptr %i.cx, i64 36
  store i32 6, ptr %i.de, align 4, !tbaa !100, !noalias !150
  %i.df = getelementptr inbounds nuw i8, ptr %i.cx, i64 96
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cx, i64 128
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cx, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.df, i8 0, i64 32, i1 false), !noalias !150
  store ptr %i.dh, ptr %i.dg, align 8, !tbaa !21, !noalias !150
  %i.di = getelementptr inbounds nuw i8, ptr %i.cx, i64 136
  store i32 0, ptr %i.di, align 8, !tbaa !68, !noalias !150
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cx, i64 140
  store i32 4, ptr %i.dj, align 4, !tbaa !100, !noalias !150
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cx, i64 176
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cx, i64 192
  store ptr %i.dl, ptr %i.dk, align 8, !tbaa !21, !noalias !150
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cx, i64 184
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cx, i64 196
  store i32 0, ptr %i.dn, align 4, !tbaa !153, !noalias !150
  %i.do = getelementptr inbounds nuw i8, ptr %i.cx, i64 200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.dm, i8 0, i64 9, i1 false), !noalias !150
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cx, i64 104
  store ptr %i.cw, ptr %i.dp, align 8, !tbaa !177, !noalias !150
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cw, i64 100
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !178, !noalias !150
  store i32 %i.dr, ptr %i.do, align 8, !tbaa !213, !noalias !150
  call void @_ZN4llvm14DomTreeBuilder9CalculateINS_17DominatorTreeBaseINS_10BasicBlockELb0EEEEEvRT_(ptr noundef nonnull align 8 dereferenceable(204) %i.cx) #20, !noalias !150
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNSt10unique_ptrIN4llvm13DominatorTreeESt14default_deleteIS1_EED2Ev.exit
  %.sroa.0204.0 = phi ptr [ %i.cx, %_ZNSt10unique_ptrIN4llvm13DominatorTreeESt14default_deleteIS1_EED2Ev.exit ], [ null, %bb.j ] ; 7 uses
  %.1115 = phi ptr [ %i.cx, %_ZNSt10unique_ptrIN4llvm13DominatorTreeESt14default_deleteIS1_EED2Ev.exit ], [ %i.cv, %bb.j ] ; 5 uses
  %i.ds = load ptr, ptr %i.ap, align 8, !tbaa !37
  %i.dt = call noundef ptr @_ZNK4llvm16AnalysisResolver22getAnalysisIfAvailableEPKv(ptr noundef nonnull align 8 dereferenceable(32) %i.ds, ptr noundef nonnull @_ZN4llvm28PostDominatorTreeWrapperPass2IDE) #20 ; 2 uses
  %.not128 = icmp eq ptr %i.dt, null
  br i1 %.not128, label %_ZNSt10unique_ptrIN4llvm17PostDominatorTreeESt14default_deleteIS1_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  br label %bb.m

_ZNSt10unique_ptrIN4llvm17PostDominatorTreeESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.k
  %i.dv = load ptr, ptr %i.w, align 8, !tbaa !110 ; 2 uses
  %i.dw = call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #22, !noalias !214 ; 22 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  store ptr %i.dx, ptr %i.dw, align 8, !tbaa !21, !noalias !214
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store i32 0, ptr %i.dy, align 8, !tbaa !68, !noalias !214
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 12
  store i32 4, ptr %i.dz, align 4, !tbaa !100, !noalias !214
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 48
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 64
  store ptr %i.eb, ptr %i.ea, align 8, !tbaa !21, !noalias !214
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dw, i64 56
  store i32 0, ptr %i.ec, align 8, !tbaa !68, !noalias !214
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dw, i64 60
  store i32 6, ptr %i.ed, align 4, !tbaa !100, !noalias !214
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dw, i64 120
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dw, i64 152
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dw, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ee, i8 0, i64 32, i1 false), !noalias !214
  store ptr %i.eg, ptr %i.ef, align 8, !tbaa !21, !noalias !214
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dw, i64 160
  store i32 0, ptr %i.eh, align 8, !tbaa !68, !noalias !214
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dw, i64 164
  store i32 4, ptr %i.ei, align 4, !tbaa !100, !noalias !214
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dw, i64 200
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dw, i64 216
  store ptr %i.ek, ptr %i.ej, align 8, !tbaa !21, !noalias !214
  %i.el = getelementptr inbounds nuw i8, ptr %i.dw, i64 208
  %i.em = getelementptr inbounds nuw i8, ptr %i.dw, i64 220
  store i32 0, ptr %i.em, align 4, !tbaa !217, !noalias !214
  %i.en = getelementptr inbounds nuw i8, ptr %i.dw, i64 224
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.el, i8 0, i64 9, i1 false), !noalias !214
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dw, i64 128
  store ptr %i.dv, ptr %i.eo, align 8, !tbaa !221, !noalias !214
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dv, i64 100
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !178, !noalias !214
  store i32 %i.eq, ptr %i.en, align 8, !tbaa !222, !noalias !214
  call void @_ZN4llvm14DomTreeBuilder9CalculateINS_17DominatorTreeBaseINS_10BasicBlockELb1EEEEEvRT_(ptr noundef nonnull align 8 dereferenceable(228) %i.dw) #20, !noalias !214
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZNSt10unique_ptrIN4llvm17PostDominatorTreeESt14default_deleteIS1_EED2Ev.exit
  %.sroa.0199.0 = phi ptr [ %i.dw, %_ZNSt10unique_ptrIN4llvm17PostDominatorTreeESt14default_deleteIS1_EED2Ev.exit ], [ null, %bb.l ] ; 7 uses
  %.1118 = phi ptr [ %i.dw, %_ZNSt10unique_ptrIN4llvm17PostDominatorTreeESt14default_deleteIS1_EED2Ev.exit ], [ %i.du, %bb.l ]
  %i.er = load ptr, ptr %i.ap, align 8, !tbaa !37
  %i.es = call noundef ptr @_ZNK4llvm16AnalysisResolver22getAnalysisIfAvailableEPKv(ptr noundef nonnull align 8 dereferenceable(32) %i.er, ptr noundef nonnull @_ZN4llvm19LoopInfoWrapperPass2IDE) #20 ; 2 uses
  %.not129 = icmp eq ptr %i.es, null
  br i1 %.not129, label %_ZNSt10unique_ptrIN4llvm8LoopInfoESt14default_deleteIS1_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 32
  br label %bb.o

_ZNSt10unique_ptrIN4llvm8LoopInfoESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.m
  %i.eu = call noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #22, !noalias !223 ; 3 uses
  call void @_ZN4llvm8LoopInfoC1ERKNS_17DominatorTreeBaseINS_10BasicBlockELb0EEE(ptr noundef nonnull align 8 dereferenceable(184) %i.eu, ptr noundef nonnull align 8 dereferenceable(204) %.1115) #20, !noalias !223
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt10unique_ptrIN4llvm8LoopInfoESt14default_deleteIS1_EED2Ev.exit, %bb.n
  %.sroa.0194.0 = phi ptr [ %i.eu, %_ZNSt10unique_ptrIN4llvm8LoopInfoESt14default_deleteIS1_EED2Ev.exit ], [ null, %bb.n ] ; 8 uses
  %.0120 = phi ptr [ %i.eu, %_ZNSt10unique_ptrIN4llvm8LoopInfoESt14default_deleteIS1_EED2Ev.exit ], [ %i.et, %bb.n ] ; 2 uses
  %i.ev = load ptr, ptr %i.w, align 8, !tbaa !110
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 40
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !226
  %i.ey = call noundef ptr @_ZN4llvm9Intrinsic22getOrInsertDeclarationEPNS_6ModuleEjNS_8ArrayRefIPNS_4TypeEEE(ptr noundef %i.ex, i32 noundef 823, ptr null, i64 0) #20
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.ey, ptr %i.ez, align 8, !tbaa !227
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !226 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  %i.fc = load ptr, ptr %i.ay, align 8, !tbaa !21 ; 2 uses
  %i.fd = load i32, ptr %i.ba, align 8, !tbaa !68 ; 2 uses
  %i.fe = zext i32 %i.fd to i64
  %.idx.i = mul nuw nsw i64 %i.fe, 152
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 %.idx.i
  %.not6.i = icmp ne i32 %i.fd, 0
  call void @llvm.assume(i1 %.not6.i)
  %i.fg = getelementptr inbounds nuw i8, ptr %.1115, i64 32
  %i.fh = getelementptr inbounds nuw i8, ptr %.1115, i64 24 ; 2 uses
  br label %bb.aa

._crit_edge.i:                                    ; preds = %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE26findNearestCommonDominatorEPS1_S3_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  %i.fi = getelementptr inbounds nuw i8, ptr %.1.i, i64 56
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !146 ; 4 uses
  %i.fk = getelementptr inbounds i8, ptr %i.fj, i64 -24
  %i.fl = getelementptr inbounds i8, ptr %i.fj, i64 -16
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !228
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !229, !nonnull !19, !align !66
  %i.fo = getelementptr inbounds nuw i8, ptr %16, i64 88 ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %16, i64 96 ; 3 uses
  store ptr null, ptr %16, align 8, !tbaa !234
  %i.fq = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 4 uses
  store ptr %i.fn, ptr %i.fq, align 8, !tbaa !237
  %i.fr = getelementptr inbounds nuw i8, ptr %16, i64 40 ; 3 uses
  store ptr %i.fo, ptr %i.fr, align 8, !tbaa !238
  %i.fs = getelementptr inbounds nuw i8, ptr %16, i64 48 ; 7 uses
  store ptr %i.fp, ptr %i.fs, align 8, !tbaa !240
  %i.ft = getelementptr inbounds nuw i8, ptr %16, i64 56
  store ptr null, ptr %i.ft, align 8, !tbaa !242
  %i.fu = getelementptr inbounds nuw i8, ptr %16, i64 64
  store i32 0, ptr %i.fu, align 8, !tbaa !253
  %i.fv = getelementptr inbounds nuw i8, ptr %16, i64 68
  store i8 0, ptr %i.fv, align 4, !tbaa !254
  %i.fw = getelementptr inbounds nuw i8, ptr %16, i64 69
  store i8 2, ptr %i.fw, align 1, !tbaa !255
  %i.fx = getelementptr inbounds nuw i8, ptr %16, i64 70
  store i8 7, ptr %i.fx, align 2, !tbaa !256
  %i.fy = getelementptr inbounds nuw i8, ptr %16, i64 72
  %i.fz = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fy, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm14ConstantFolderE, i64 16), ptr %i.fo, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm24IRBuilderDefaultInserterE, i64 16), ptr %i.fp, align 8, !tbaa !8
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !257
  store ptr %i.gb, ptr %i.fz, align 8, !tbaa !259
  %i.gc = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 7 uses
  store ptr %i.fj, ptr %i.gc, align 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 7 uses
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %i.gd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.fk) #20
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !260
  store i64 %i.ge, ptr %16, align 8, !tbaa !260
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.gf = load ptr, ptr %i.fq, align 8, !tbaa !261, !nonnull !19, !align !66
  %i.gg = call noundef ptr @_ZN4llvm4Type10getInt64TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.gf) #20
  %i.gh = call noundef ptr @_ZN4llvm8Constant12getNullValueEPNS_4TypeE(ptr noundef %i.gg) #20
  store ptr %i.gh, ptr %i.b, align 8, !tbaa !262
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  %i.gi = getelementptr inbounds nuw i8, ptr %17, i64 32
  store i16 257, ptr %i.gi, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, i8 0, i64 16, i1 false)
  %i.gj = call noundef ptr @_ZN4llvm13IRBuilderBase29CreateIntrinsicWithoutFoldingEjNS_8ArrayRefIPNS_4TypeEEENS1_IPNS_5ValueEEENS_9FMFSourceERKNS_5TwineENS1_INS_17OperandBundleDefTIS6_EEEE(ptr noundef nonnull align 8 dereferenceable(88) %16, i32 noundef 597, ptr null, i64 0, ptr nonnull %i.b, i64 1, i64 0, ptr noundef nonnull align 8 dereferenceable(34) %17, ptr noundef nonnull byval(%"class.llvm::ArrayRef.303") align 8 %18) #20 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
end_hunk_0
