Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/pipeline?download=true
inline.NumInlined: 31354
inline.NumDeleted: 12782
loop-unroll.NumCompletelyUnrolled: 140
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 153
begin_hunk_0_@_ZN2v88internal8compiler19JSWasmLoweringPhase3RunEPNS1_14TFPipelineDataEPNS0_4ZoneE:bb.a
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 216
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.x = load ptr, ptr %i.w, align 8
  call void @_ZN2v88internal8compiler14WasmGCLoweringC1EPNS1_15AdvancedReducer6EditorEPNS1_12MachineGraphEPKNS0_4wasm10WasmModuleEbPNS1_19SourcePositionTableE(ptr noundef nonnull align 8 dereferenceable(240) %4, ptr noundef nonnull %3, ptr noundef %i.r, ptr noundef %i.v, i1 noundef zeroext true, ptr noundef %i.x) #29
  call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_110AddReducerEPNS1_14TFPipelineDataEPNS1_12GraphReducerEPNS1_7ReducerE(ptr noundef nonnull %1, ptr noundef %3, ptr noundef %4)
  call void @_ZN2v88internal8compiler12GraphReducer11ReduceGraphEv(ptr noundef nonnull align 8 dereferenceable(280) %3) #29
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @_ZN2v88internal8compiler14GraphAssemblerD2Ev(ptr noundef nonnull align 8 dereferenceable(184) %i.y) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @_ZN2v88internal8compiler12GraphReducerD1Ev(ptr noundef nonnull align 8 dereferenceable(280) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret void
}

declare void @_ZN2v88internal8compiler14WasmGCLoweringC1EPNS1_15AdvancedReducer6EditorEPNS1_12MachineGraphEPKNS0_4wasm10WasmModuleEbPNS1_19SourcePositionTableE(ptr noundef nonnull align 8 dereferenceable(240), ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler21WasmOptimizationPhase3RunEPNS1_14TFPipelineDataEPNS0_4ZoneENS1_22MachineOperatorReducer24SignallingNanPropagationENS0_4wasm20WasmDetectedFeaturesE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i64 %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.v8::internal::compiler::GraphReducer", align 8 ; 16 uses
  %6 = alloca %"class.v8::internal::compiler::MachineOperatorReducer", align 8 ; 5 uses
  %7 = alloca %"class.v8::internal::compiler::DeadCodeElimination", align 8 ; 4 uses
  %8 = alloca %"class.v8::internal::compiler::CommonOperatorReducer", align 8 ; 4 uses
  %9 = alloca %"class.v8::internal::compiler::ValueNumberingReducer", align 8 ; 5 uses
  %10 = alloca %"class.v8::internal::compiler::CsaLoadElimination", align 8 ; 62 uses
  %11 = alloca %"class.v8::internal::compiler::WasmEscapeAnalysis", align 8 ; 6 uses
  %12 = alloca %"class.v8::internal::compiler::GraphReducer", align 8 ; 14 uses
  %13 = alloca %"class.v8::internal::compiler::MachineOperatorReducer", align 8 ; 5 uses
  %14 = alloca %"class.v8::internal::compiler::DeadCodeElimination", align 8 ; 4 uses
  %15 = alloca %"class.v8::internal::compiler::CommonOperatorReducer", align 8 ; 4 uses
  %16 = alloca %"class.v8::internal::compiler::ValueNumberingReducer", align 8 ; 5 uses
  %17 = alloca %"class.v8::internal::compiler::BranchElimination", align 8 ; 5 uses
  %i.a = and i64 %4, 33554432
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 792 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %bb.c, label %_ZN2v88internal8compiler12MachineGraph4DeadEv.exit

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.j, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder4DeadEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #29
  %i.q = tail call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.m, ptr noundef %i.p, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #29 ; 2 uses
  store ptr %i.q, ptr %i.k, align 8
  br label %_ZN2v88internal8compiler12MachineGraph4DeadEv.exit

_ZN2v88internal8compiler12MachineGraph4DeadEv.exit: ; preds = %bb.b, %bb.c
  %i.r = phi ptr [ %i.q, %bb.c ], [ %i.l, %bb.b ]
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.t = load ptr, ptr %i.s, align 8
  call void @_ZN2v88internal8compiler12GraphReducerC1EPNS0_4ZoneEPNS1_7TFGraphEPNS0_11TickCounterEPNS1_12JSHeapBrokerEPNS1_4NodeEPNS1_18ObserveNodeManagerE(ptr noundef nonnull align 8 dereferenceable(280) %5, ptr noundef %2, ptr noundef %i.c, ptr noundef nonnull %i.f, ptr noundef %i.h, ptr noundef %i.r, ptr noundef %i.t) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.u = load ptr, ptr %i.i, align 8
  call void @_ZN2v88internal8compiler22MachineOperatorReducerC1EPNS1_15AdvancedReducer6EditorEPNS1_12MachineGraphENS2_24SignallingNanPropagationE(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull %5, ptr noundef %i.u, i32 noundef %3) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.v = load ptr, ptr %i.b, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8
  call void @_ZN2v88internal8compiler19DeadCodeEliminationC1EPNS1_15AdvancedReducer6EditorEPNS1_7TFGraphEPNS1_21CommonOperatorBuilderEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull %5, ptr noundef %i.v, ptr noundef %i.x, ptr noundef %2) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  %i.y = load ptr, ptr %i.b, align 8
  %i.z = load ptr, ptr %i.g, align 8
  %i.aa = load ptr, ptr %i.w, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ac = load ptr, ptr %i.ab, align 8
  call void @_ZN2v88internal8compiler21CommonOperatorReducerC1EPNS1_15AdvancedReducer6EditorEPNS1_7TFGraphEPNS1_12JSHeapBrokerEPNS1_21CommonOperatorBuilderEPNS1_22MachineOperatorBuilderEPNS0_4ZoneENS1_15BranchSemanticsE(ptr noundef nonnull align 8 dereferenceable(72) %8, ptr noundef nonnull %5, ptr noundef %i.y, ptr noundef %i.z, ptr noundef %i.aa, ptr noundef %i.ac, ptr noundef %2, i32 noundef 1) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  %i.ad = load ptr, ptr %i.b, align 8
  %i.ae = load ptr, ptr %i.ad, align 8
  call void @_ZN2v88internal8compiler21ValueNumberingReducerC1EPNS0_4ZoneES4_(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef %2, ptr noundef %i.ae) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  %i.af = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %5, ptr %i.ag, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN2v88internal8compiler18CsaLoadEliminationE, i64 16), ptr %10, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %2, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 40
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.aj, i8 0, i64 17, i1 false)
  store ptr %2, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8
  store ptr null, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 72
  store ptr %2, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 88
  %.sroa.769.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.am, i8 0, i64 17, i1 false)
  store ptr %2, ptr %.sroa.769.0..sroa_idx.i.i.i, align 8
  store ptr null, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 120
  store ptr %2, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 128
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 136
  %.sroa.774.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.ap, i8 0, i64 17, i1 false)
  store ptr %2, ptr %.sroa.774.0..sroa_idx.i.i.i, align 8
  store ptr null, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 168
  store ptr %2, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 176
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 184
  %.sroa.779.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.as, i8 0, i64 17, i1 false)
  store ptr %2, ptr %.sroa.779.0..sroa_idx.i.i.i, align 8
  store ptr null, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 216
  store ptr %2, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 224
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 232
  %.sroa.784.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.av, i8 0, i64 17, i1 false)
  store ptr %2, ptr %.sroa.784.0..sroa_idx.i.i.i, align 8
  store ptr null, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 264
  store ptr %2, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 272
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 280
  %.sroa.789.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 304
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.ay, i8 0, i64 17, i1 false)
  store ptr %2, ptr %.sroa.789.0..sroa_idx.i.i.i, align 8
  store ptr null, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 312
  store ptr %2, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 320
  store ptr %2, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 328
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 336
  %.sroa.7.0..sroa_idx.i3.i.i = getelementptr inbounds nuw i8, ptr %10, i64 360
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.bc, i8 0, i64 17, i1 false)
  store ptr %2, ptr %.sroa.7.0..sroa_idx.i3.i.i, align 8
  store ptr null, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 368
  store ptr %2, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 376
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 384
  %.sroa.769.0..sroa_idx.i4.i.i = getelementptr inbounds nuw i8, ptr %10, i64 408
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.bf, i8 0, i64 17, i1 false)
  store ptr %2, ptr %.sroa.769.0..sroa_idx.i4.i.i, align 8
  store ptr null, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 416
  store ptr %2, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 424
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 432
  %.sroa.774.0..sroa_idx.i5.i.i = getelementptr inbounds nuw i8, ptr %10, i64 456
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.bi, i8 0, i64 17, i1 false)
  store ptr %2, ptr %.sroa.774.0..sroa_idx.i5.i.i, align 8
  store ptr null, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %10, i64 464
  store ptr %2, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %10, i64 472
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 480
  %.sroa.779.0..sroa_idx.i6.i.i = getelementptr inbounds nuw i8, ptr %10, i64 504
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.bl, i8 0, i64 17, i1 false)
  store ptr %2, ptr %.sroa.779.0..sroa_idx.i6.i.i, align 8
  store ptr null, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 512
  store ptr %2, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %10, i64 520
  %i.bo = getelementptr inbounds nuw i8, ptr %10, i64 528
  %.sroa.784.0..sroa_idx.i7.i.i = getelementptr inbounds nuw i8, ptr %10, i64 552
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.bo, i8 0, i64 17, i1 false)
  store ptr %2, ptr %.sroa.784.0..sroa_idx.i7.i.i, align 8
  store ptr null, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %10, i64 560
  store ptr %2, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %10, i64 568
  %i.br = getelementptr inbounds nuw i8, ptr %10, i64 576
  %.sroa.789.0..sroa_idx.i8.i.i = getelementptr inbounds nuw i8, ptr %10, i64 600
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.br, i8 0, i64 17, i1 false)
  store ptr %2, ptr %.sroa.789.0..sroa_idx.i8.i.i, align 8
  store ptr null, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %10, i64 608
  store ptr %2, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %10, i64 616
  %i.bu = load ptr, ptr %i.af, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 28
  %i.bw = load i32, ptr %i.bv, align 4            ; 2 uses
  store ptr %2, ptr %i.bt, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %10, i64 624
  store ptr %2, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %10, i64 632 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %10, i64 640
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 648
  %.not.i.i.i = icmp eq i32 %i.bw, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.by, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i, label %_ZN2v88internal8compiler18CsaLoadEliminationC2EPNS1_15AdvancedReducer6EditorEPNS1_7JSGraphEPNS0_4ZoneE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal8compiler12MachineGraph4DeadEv.exit
  %i.cb = zext i32 %i.bw to i64
  %i.cc = shl nuw nsw i64 %i.cb, 3                ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.cg = load i64, ptr %i.cf, align 8            ; 2 uses
  %i.ch = sub i64 %i.ce, %i.cg
  %i.ci = icmp ugt i64 %i.cc, %i.ch
  br i1 %i.ci, label %bb.e, label %.lr.ph.preheader.i.i.i, !prof !35

bb.e:                                             ; preds = %bb.d
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %2, i64 noundef %i.cc) #29
  %.pre.i.i.i.i.i = load i64, ptr %i.cf, align 8
  br label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.e, %bb.d
  %i.cj = phi i64 [ %.pre.i.i.i.i.i, %bb.e ], [ %i.cg, %bb.d ] ; 2 uses
  %i.ck = inttoptr i64 %i.cj to ptr               ; 3 uses
  %i.cl = add i64 %i.cj, %i.cc
  store i64 %i.cl, ptr %i.cf, align 8
  store ptr %i.ck, ptr %i.by, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cc ; 3 uses
  store ptr %i.cm, ptr %i.ca, align 8
  store ptr %i.cm, ptr %i.bz, align 8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.09.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i ], [ %i.ck, %.lr.ph.preheader.i.i.i ] ; 2 uses
  store ptr null, ptr %.09.i.i.i, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 8 ; 2 uses
  %i.co = icmp ult ptr %i.cn, %i.cm
  br i1 %i.co, label %.lr.ph.i.i.i, label %_ZN2v88internal8compiler18CsaLoadEliminationC2EPNS1_15AdvancedReducer6EditorEPNS1_7JSGraphEPNS0_4ZoneE.exit, !llvm.loop !829

_ZN2v88internal8compiler18CsaLoadEliminationC2EPNS1_15AdvancedReducer6EditorEPNS1_7JSGraphEPNS0_4ZoneE.exit: ; preds = %.lr.ph.i.i.i, %_ZN2v88internal8compiler12MachineGraph4DeadEv.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %10, i64 656
  store ptr %i.af, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %10, i64 664
  store ptr %2, ptr %i.cq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %5, ptr %i.ct, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN2v88internal8compiler18WasmEscapeAnalysisE, i64 16), ptr %11, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %i.cs, ptr %i.cu, align 8
  call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_110AddReducerEPNS1_14TFPipelineDataEPNS1_12GraphReducerEPNS1_7ReducerE(ptr noundef nonnull %1, ptr noundef %5, ptr noundef %6)
  call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_110AddReducerEPNS1_14TFPipelineDataEPNS1_12GraphReducerEPNS1_7ReducerE(ptr noundef nonnull %1, ptr noundef %5, ptr noundef %7)
  call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_110AddReducerEPNS1_14TFPipelineDataEPNS1_12GraphReducerEPNS1_7ReducerE(ptr noundef nonnull %1, ptr noundef %5, ptr noundef %8)
  call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_110AddReducerEPNS1_14TFPipelineDataEPNS1_12GraphReducerEPNS1_7ReducerE(ptr noundef nonnull %1, ptr noundef %5, ptr noundef %9)
  call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_110AddReducerEPNS1_14TFPipelineDataEPNS1_12GraphReducerEPNS1_7ReducerE(ptr noundef nonnull %1, ptr noundef %5, ptr noundef %10)
  call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_110AddReducerEPNS1_14TFPipelineDataEPNS1_12GraphReducerEPNS1_7ReducerE(ptr noundef nonnull %1, ptr noundef %5, ptr noundef %11)
  call void @_ZN2v88internal8compiler12GraphReducer11ReduceGraphEv(ptr noundef nonnull align 8 dereferenceable(280) %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @_ZN2v88internal8compiler21ValueNumberingReducerD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @_ZN2v88internal8compiler22MachineOperatorReducerD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @_ZN2v88internal8compiler12GraphReducerD1Ev(ptr noundef nonnull align 8 dereferenceable(280) %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal8compiler18CsaLoadEliminationC2EPNS1_15AdvancedReducer6EditorEPNS1_7JSGraphEPNS0_4ZoneE.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 4 uses
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 3 uses
  %i.dc = load ptr, ptr %i.db, align 8            ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 792 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8            ; 2 uses
  %.not.i51 = icmp eq ptr %i.de, null
  br i1 %.not.i51, label %bb.g, label %_ZN2v88internal8compiler12MachineGraph4DeadEv.exit52

bb.g:                                             ; preds = %bb.f
  %i.df = load ptr, ptr %i.dc, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder4DeadEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dh) #29
  %i.dj = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.df, ptr noundef %i.di, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #29 ; 2 uses
  store ptr %i.dj, ptr %i.dd, align 8
  br label %_ZN2v88internal8compiler12MachineGraph4DeadEv.exit52

_ZN2v88internal8compiler12MachineGraph4DeadEv.exit52: ; preds = %bb.f, %bb.g
  %i.dk = phi ptr [ %i.dj, %bb.g ], [ %i.de, %bb.f ]
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cy, i64 152
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.dn = load ptr, ptr %i.dm, align 8
  call void @_ZN2v88internal8compiler12GraphReducerC1EPNS0_4ZoneEPNS1_7TFGraphEPNS0_11TickCounterEPNS1_12JSHeapBrokerEPNS1_4NodeEPNS1_18ObserveNodeManagerE(ptr noundef nonnull align 8 dereferenceable(280) %12, ptr noundef %2, ptr noundef %i.cw, ptr noundef nonnull %i.dl, ptr noundef %i.da, ptr noundef %i.dk, ptr noundef %i.dn) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  %i.do = load ptr, ptr %i.db, align 8
  call void @_ZN2v88internal8compiler22MachineOperatorReducerC1EPNS1_15AdvancedReducer6EditorEPNS1_12MachineGraphENS2_24SignallingNanPropagationE(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull %12, ptr noundef %i.do, i32 noundef %3) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  %i.dp = load ptr, ptr %i.cv, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8
  call void @_ZN2v88internal8compiler19DeadCodeEliminationC1EPNS1_15AdvancedReducer6EditorEPNS1_7TFGraphEPNS1_21CommonOperatorBuilderEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull %12, ptr noundef %i.dp, ptr noundef %i.dr, ptr noundef %2) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29
  %i.ds = load ptr, ptr %i.cv, align 8
  %i.dt = load ptr, ptr %i.cz, align 8
  %i.du = load ptr, ptr %i.dq, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.dw = load ptr, ptr %i.dv, align 8
  call void @_ZN2v88internal8compiler21CommonOperatorReducerC1EPNS1_15AdvancedReducer6EditorEPNS1_7TFGraphEPNS1_12JSHeapBrokerEPNS1_21CommonOperatorBuilderEPNS1_22MachineOperatorBuilderEPNS0_4ZoneENS1_15BranchSemanticsE(ptr noundef nonnull align 8 dereferenceable(72) %15, ptr noundef nonnull %12, ptr noundef %i.ds, ptr noundef %i.dt, ptr noundef %i.du, ptr noundef %i.dw, ptr noundef %2, i32 noundef 1) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #29
  %i.dx = load ptr, ptr %i.cv, align 8
  %i.dy = load ptr, ptr %i.dx, align 8
  call void @_ZN2v88internal8compiler21ValueNumberingReducerC1EPNS0_4ZoneES4_(ptr noundef nonnull align 8 dereferenceable(48) %16, ptr noundef %2, ptr noundef %i.dy) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #29
  %i.dz = load ptr, ptr %i.db, align 8
  call void @_ZN2v88internal8compiler17BranchEliminationC1EPNS1_15AdvancedReducer6EditorEPNS1_7JSGraphEPNS0_4ZoneENS2_5PhaseE(ptr noundef nonnull align 8 dereferenceable(128) %17, ptr noundef nonnull %12, ptr noundef %i.dz, ptr noundef %2, i32 noundef 1) #29
  call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_110AddReducerEPNS1_14TFPipelineDataEPNS1_12GraphReducerEPNS1_7ReducerE(ptr noundef nonnull %1, ptr noundef %12, ptr noundef %13)
  call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_110AddReducerEPNS1_14TFPipelineDataEPNS1_12GraphReducerEPNS1_7ReducerE(ptr noundef nonnull %1, ptr noundef %12, ptr noundef %14)
  call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_110AddReducerEPNS1_14TFPipelineDataEPNS1_12GraphReducerEPNS1_7ReducerE(ptr noundef nonnull %1, ptr noundef %12, ptr noundef %15)
  call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_110AddReducerEPNS1_14TFPipelineDataEPNS1_12GraphReducerEPNS1_7ReducerE(ptr noundef nonnull %1, ptr noundef %12, ptr noundef %16)
  call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_110AddReducerEPNS1_14TFPipelineDataEPNS1_12GraphReducerEPNS1_7ReducerE(ptr noundef nonnull %1, ptr noundef %12, ptr noundef %17)
  call void @_ZN2v88internal8compiler12GraphReducer11ReduceGraphEv(ptr noundef nonnull align 8 dereferenceable(280) %12) #29
  call void @_ZN2v88internal8compiler17BranchEliminationD1Ev(ptr noundef nonnull align 8 dereferenceable(128) %17) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  call void @_ZN2v88internal8compiler21ValueNumberingReducerD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %16) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  call void @_ZN2v88internal8compiler22MachineOperatorReducerD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  call void @_ZN2v88internal8compiler12GraphReducerD1Ev(ptr noundef nonnull align 8 dereferenceable(280) %12) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  ret void
}

declare void @_ZN2v88internal8compiler22MachineOperatorReducerC1EPNS1_15AdvancedReducer6EditorEPNS1_12MachineGraphENS2_24SignallingNanPropagationE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN2v88internal8compiler22MachineOperatorReducerD1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler20GenericLoweringPhase3RunEPNS1_14TFPipelineDataEPNS0_4ZoneE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::compiler::GraphReducer", align 8 ; 8 uses
  %4 = alloca %"class.v8::internal::compiler::JSGenericLowering", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 792 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.b, label %_ZN2v88internal8compiler12MachineGraph4DeadEv.exit

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.i, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder4DeadEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #29
  %i.p = tail call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.l, ptr noundef %i.o, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #29 ; 2 uses
  store ptr %i.p, ptr %i.j, align 8
  br label %_ZN2v88internal8compiler12MachineGraph4DeadEv.exit

_ZN2v88internal8compiler12MachineGraph4DeadEv.exit: ; preds = %bb.a, %bb.b
  %i.q = phi ptr [ %i.p, %bb.b ], [ %i.k, %bb.a ]
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.s = load ptr, ptr %i.r, align 8
  call void @_ZN2v88internal8compiler12GraphReducerC1EPNS0_4ZoneEPNS1_7TFGraphEPNS0_11TickCounterEPNS1_12JSHeapBrokerEPNS1_4NodeEPNS1_18ObserveNodeManagerE(ptr noundef nonnull align 8 dereferenceable(280) %3, ptr noundef %2, ptr noundef %i.b, ptr noundef nonnull %i.e, ptr noundef %i.g, ptr noundef %i.q, ptr noundef %i.s) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.t = load ptr, ptr %i.h, align 8
  %i.u = load ptr, ptr %i.f, align 8
  call void @_ZN2v88internal8compiler17JSGenericLoweringC1EPNS1_7JSGraphEPNS1_15AdvancedReducer6EditorEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.t, ptr noundef nonnull %3, ptr noundef %i.u) #29
  call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_110AddReducerEPNS1_14TFPipelineDataEPNS1_12GraphReducerEPNS1_7ReducerE(ptr noundef nonnull %1, ptr noundef %3, ptr noundef %4)
  %i.v = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %_ZN2v88internal8compiler21UnparkedScopeIfNeededC2EPNS1_12JSHeapBrokerEb.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal8compiler12MachineGraph4DeadEv.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.x = load ptr, ptr %i.w, align 8              ; 3 uses
  %.not.i10 = icmp eq ptr %i.x, null
  br i1 %.not.i10, label %_ZN2v88internal8compiler21UnparkedScopeIfNeededC2EPNS1_12JSHeapBrokerEb.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %i.z = call noundef zeroext i1 @_ZNK2v88internal9LocalHeap8IsParkedEv(ptr noundef nonnull align 8 dereferenceable(1944) %i.y) #29
  br i1 %i.z, label %_ZNSt19_Optional_base_implIN2v88internal13UnparkedScopeESt14_Optional_baseIS2_Lb0ELb0EEE8_M_resetEv.exit.i.i, label %_ZN2v88internal8compiler21UnparkedScopeIfNeededC2EPNS1_12JSHeapBrokerEb.exit.thread

_ZNSt19_Optional_base_implIN2v88internal13UnparkedScopeESt14_Optional_baseIS2_Lb0ELb0EEE8_M_resetEv.exit.i.i: ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 17 ; 2 uses
  %i.ab = cmpxchg weak ptr %i.aa, i8 1, i8 0 seq_cst seq_cst, align 1
  %i.ac = extractvalue { i8, i1 } %i.ab, 1
  br i1 %i.ac, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNSt19_Optional_base_implIN2v88internal13UnparkedScopeESt14_Optional_baseIS2_Lb0ELb0EEE8_M_resetEv.exit.i.i
  call void @_ZN2v88internal9LocalHeap14UnparkSlowPathEv(ptr noundef nonnull align 8 dereferenceable(1944) %i.y) #29
  br label %bb.f

_ZN2v88internal8compiler21UnparkedScopeIfNeededC2EPNS1_12JSHeapBrokerEb.exit.thread: ; preds = %bb.c, %_ZN2v88internal8compiler12MachineGraph4DeadEv.exit, %bb.d
  call void @_ZN2v88internal8compiler12GraphReducer11ReduceGraphEv(ptr noundef nonnull align 8 dereferenceable(280) %3) #29
  br label %_ZN2v88internal8compiler21UnparkedScopeIfNeededD2Ev.exit

bb.f:                                             ; preds = %bb.e, %_ZNSt19_Optional_base_implIN2v88internal13UnparkedScopeESt14_Optional_baseIS2_Lb0ELb0EEE8_M_resetEv.exit.i.i
  call void @_ZN2v88internal8compiler12GraphReducer11ReduceGraphEv(ptr noundef nonnull align 8 dereferenceable(280) %3) #29
  %i.ad = cmpxchg weak ptr %i.aa, i8 0, i8 1 seq_cst seq_cst, align 1
  %i.ae = extractvalue { i8, i1 } %i.ad, 1
  br i1 %i.ae, label %_ZN2v88internal8compiler21UnparkedScopeIfNeededD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZN2v88internal9LocalHeap12ParkSlowPathEv(ptr noundef nonnull align 8 dereferenceable(1944) %i.y) #29
  br label %_ZN2v88internal8compiler21UnparkedScopeIfNeededD2Ev.exit

_ZN2v88internal8compiler21UnparkedScopeIfNeededD2Ev.exit: ; preds = %_ZN2v88internal8compiler21UnparkedScopeIfNeededC2EPNS1_12JSHeapBrokerEb.exit.thread, %bb.f, %bb.g
  call void @_ZN2v88internal8compiler17JSGenericLoweringD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @_ZN2v88internal8compiler12GraphReducerD1Ev(ptr noundef nonnull align 8 dereferenceable(280) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret void
}

declare void @_ZN2v88internal8compiler17JSGenericLoweringC1EPNS1_7JSGraphEPNS1_15AdvancedReducer6EditorEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN2v88internal8compiler17JSGenericLoweringD1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #4
end_hunk_0
