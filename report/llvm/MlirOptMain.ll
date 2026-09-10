Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MlirOptMain?download=true
inline.NumInlined: 3548
inline.NumDeleted: 1991
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@"_ZN4llvm12function_refIFNS_13LogicalResultESt10unique_ptrINS_12MemoryBufferESt14default_deleteIS3_EERKNS_15MemoryBufferRefERNS_11raw_ostreamEEE11callback_fnIZN4mlir11MlirOptMainESB_S6_RNSF_15DialectRegistryERKNSF_17MlirOptMainConfigEE3$_0EES1_lS6_S9_SB_":bb.a
  %i.ca = atomicrmw volatile add ptr %i.bn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i.i.i = phi i32 [ %i.bq, %bb.x ], [ %i.ca, %bb.y ]
  %i.cb = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.cb, label %bb.z, label %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit, !prof !55

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #25
  br label %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.v, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  ret i8 %.sroa.018.1.i.i
}

declare void @_ZN4mlir11MLIRContextC1ERKNS_15DialectRegistryENS0_9ThreadingE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(136), i32 noundef) unnamed_addr #1

declare void @_ZN4mlir11MLIRContext13setThreadPoolERN4llvm19ThreadPoolInterfaceE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN4mlir34SourceMgrDiagnosticVerifierHandler17registerInContextEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) local_unnamed_addr #1

declare void @_ZN4mlir11MLIRContext25allowUnregisteredDialectsEb(ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #1

declare void @_ZN4mlir11MLIRContext19printOpOnDiagnosticEb(ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #1

declare void @_ZN4mlir7tracing19InstallDebugHandlerC1ERNS_11MLIRContextERKNS0_11DebugConfigE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i8 @_ZL14performActionsRN4llvm11raw_ostreamERKSt10shared_ptrINS_9SourceMgrEEPN4mlir11MLIRContextERKNS7_17MlirOptMainConfigE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(568) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %class.anon.655, align 8            ; 5 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %i.j = alloca i64, align 8                      ; 6 uses
  %i.k = alloca i64, align 8                      ; 6 uses
  %5 = alloca %class.anon.655, align 8            ; 5 uses
  %6 = alloca %"class.mlir::DefaultTimingManager", align 8 ; 6 uses
  %7 = alloca %"class.mlir::TimingScope", align 8 ; 12 uses
  %8 = alloca %"struct.mlir::PassReproducerOptions", align 8 ; 9 uses
  %9 = alloca %"class.mlir::FallbackAsmResourceMap", align 8 ; 16 uses
  %10 = alloca %"class.mlir::ParserConfig", align 8 ; 17 uses
  %11 = alloca %"class.mlir::OwningOpRef.598", align 8 ; 11 uses
  %12 = alloca %"struct.mlir::remark::RemarkCategories", align 8 ; 27 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %18 = alloca %"class.std::unique_ptr.600", align 8 ; 3 uses
  %19 = alloca %"class.std::unique_ptr.608", align 8 ; 3 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %22 = alloca %"class.std::unique_ptr.608", align 8 ; 3 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %25 = alloca %"class.std::unique_ptr.608", align 8 ; 3 uses
  %26 = alloca %"class.mlir::PassManager", align 8 ; 15 uses
  %27 = alloca %"class.llvm::iterator_range", align 8 ; 5 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %29 = alloca %"class.llvm::StringRef", align 8  ; 3 uses
  %30 = alloca %"class.mlir::BytecodeWriterConfig", align 8 ; 9 uses
  %31 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 5 uses
  %32 = alloca %"class.mlir::AsmState", align 8   ; 5 uses
  %33 = alloca %"class.mlir::OpPrintingFlags", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @_ZN4mlir20DefaultTimingManagerC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #25
  call void @_ZN4mlir34applyDefaultTimingManagerCLOptionsERNS_20DefaultTimingManagerE(ptr noundef nonnull align 8 dereferenceable(32) %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @_ZN4mlir13TimingManager12getRootScopeEv(ptr dead_on_unwind nonnull writable sret(%"class.mlir::TimingScope") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %6) #25
  %i.l = call noundef zeroext i1 @_ZN4mlir11MLIRContext23isMultithreadingEnabledEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #25
  call void @_ZN4mlir11MLIRContext21disableMultithreadingEb(ptr noundef nonnull align 8 dereferenceable(8) %2, i1 noundef zeroext true) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  store i8 0, ptr %i.m, align 8, !tbaa !740
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 41
  store i8 0, ptr %i.n, align 1, !tbaa !742
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 43
  store i8 0, ptr %i.o, align 1, !tbaa !742
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %9, i8 0, i64 16, i1 false)
  store i32 16, ptr %i.p, align 8, !tbaa !333
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !105
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  store i32 0, ptr %i.s, align 8, !tbaa !106
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 36
  store i32 0, ptr %i.t, align 4, !tbaa !107
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 529
  %i.v = load i8, ptr %i.u, align 1, !tbaa !197, !range !76, !noundef !77
  %i.w = xor i8 %i.v, 1
  store ptr %2, ptr %10, align 8, !tbaa !103
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i8 %i.w, ptr %i.x, align 8, !tbaa !104
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 40
  store ptr %9, ptr %i.z, align 8, !tbaa !334
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 64
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !105
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 56
  store i32 0, ptr %i.ac, align 8, !tbaa !106
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 60
  store i32 6, ptr %i.ad, align 4, !tbaa !107
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 112
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 128
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !105
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 120
  store i32 0, ptr %i.ag, align 8, !tbaa !106
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 124
  store i32 6, ptr %i.ah, align 4, !tbaa !107
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 449 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !743, !range !76, !noundef !77
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN4mlir21PassReproducerOptions20attachResourceParserERNS_12ParserConfigE(ptr noundef nonnull align 8 dereferenceable(44) %8, ptr noundef nonnull align 8 dereferenceable(176) %10) #25
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.al = load ptr, ptr %7, align 8, !tbaa !746, !noalias !747 ; 2 uses
  %.not.i2.i = icmp eq ptr %i.al, null
  br i1 %.not.i2.i, label %_ZN4mlir11TimingScope4nestIJPKcEEES0_DpT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.am = call ptr @_ZN4mlir16TimingIdentifier3getEN4llvm9StringRefERNS_13TimingManagerE(ptr nonnull @.str.114, i64 6, ptr noundef nonnull align 8 dereferenceable(16) %i.al) #25, !noalias !747 ; 2 uses
  %i.an = load ptr, ptr %7, align 8, !tbaa !746, !noalias !748 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.an, null
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !748
  br i1 %.not.i.i.i, label %_ZN4mlir5Timer4nestEN4llvm9StringRefE.exit.thread9.i, label %_ZN4mlir5Timer5startEv.exit.i.i

_ZN4mlir5Timer4nestEN4llvm9StringRefE.exit.thread9.i: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !748
  br label %_ZN4mlir11TimingScope4nestIJPKcEEES0_DpT_.exit

_ZN4mlir5Timer5startEv.exit.i.i:                  ; preds = %bb.d
  %i.ao = ptrtoint ptr %i.am to i64
  store i64 %i.ao, ptr %5, align 8, !tbaa !749, !noalias !748
  %i.ap = ptrtoint ptr %5 to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !750, !noalias !751
  %i.as = load ptr, ptr %i.an, align 8, !tbaa !139, !noalias !751
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !noalias !751
  %i.av = call noundef ptr %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef %i.ar, ptr noundef %i.am, ptr nonnull @_ZN4llvm12function_refIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEE11callback_fnIZN4mlir5Timer4nestENSA_16TimingIdentifierEEUlvE_EES6_l, i64 %i.ap) #25, !noalias !751, !inline_history !686 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !748
  %i.aw = load ptr, ptr %i.an, align 8, !tbaa !139, !noalias !752
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !752
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef %i.av) #25, !noalias !752, !inline_history !687
  br label %_ZN4mlir11TimingScope4nestIJPKcEEES0_DpT_.exit

_ZN4mlir11TimingScope4nestIJPKcEEES0_DpT_.exit:   ; preds = %bb.c, %_ZN4mlir5Timer4nestEN4llvm9StringRefE.exit.thread9.i, %_ZN4mlir5Timer5startEv.exit.i.i
  %.sroa.8.0 = phi ptr [ %i.av, %_ZN4mlir5Timer5startEv.exit.i.i ], [ null, %_ZN4mlir5Timer4nestEN4llvm9StringRefE.exit.thread9.i ], [ null, %bb.c ]
  %.sroa.0188.0 = phi ptr [ %i.an, %_ZN4mlir5Timer5startEv.exit.i.i ], [ null, %_ZN4mlir5Timer4nestEN4llvm9StringRefE.exit.thread9.i ], [ null, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 520
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !195, !range !76, !noundef !77
  %i.bb = trunc nuw i8 %i.ba to i1
  %i.bc = xor i1 %i.bb, true
  call void @_ZN4mlir22parseSourceFileForToolERKSt10shared_ptrIN4llvm9SourceMgrEERKNS_12ParserConfigEb(ptr dead_on_unwind nonnull writable sret(%"class.mlir::OwningOpRef.598") align 8 %11, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(176) %10, i1 noundef zeroext %i.bc)
  %.not.i.i = icmp eq ptr %.sroa.0188.0, null
  br i1 %.not.i.i, label %_ZN4mlir11TimingScope4stopEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4mlir11TimingScope4nestIJPKcEEES0_DpT_.exit
  %i.bd = load ptr, ptr %.sroa.0188.0, align 8, !tbaa !139
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0188.0, ptr noundef %.sroa.8.0) #25, !inline_history !688
  br label %_ZN4mlir11TimingScope4stopEv.exit

_ZN4mlir11TimingScope4stopEv.exit:                ; preds = %_ZN4mlir11TimingScope4nestIJPKcEEES0_DpT_.exit, %bb.e
  %i.bg = load ptr, ptr %11, align 8, !tbaa !337  ; 3 uses
  %.not200 = icmp eq ptr %i.bg, null
  br i1 %.not200, label %_ZN4mlir11TimingScopeD2Ev.exit159, label %bb.f

bb.f:                                             ; preds = %_ZN4mlir11TimingScope4stopEv.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 530
  %i.bi = load i8, ptr %i.bh, align 2, !tbaa !198, !range !76, !noundef !77
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bk = call fastcc i8 @_ZL17doVerifyRoundTripPN4mlir9OperationERKNS_17MlirOptMainConfigEb(ptr noundef nonnull %i.bg, ptr noundef nonnull readonly align 8 dereferenceable(568) %3, i1 noundef zeroext false)
  %i.bl = call fastcc i8 @_ZL17doVerifyRoundTripPN4mlir9OperationERKNS_17MlirOptMainConfigEb(ptr noundef nonnull %i.bg, ptr noundef nonnull readonly align 8 dereferenceable(568) %3, i1 noundef zeroext true)
  %34 = and i8 %i.bl, %i.bk
  %i.bm = trunc i8 %34 to i1
  br i1 %i.bm, label %bb.h, label %bb.cb

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bn = xor i1 %i.l, true
  call void @_ZN4mlir11MLIRContext21disableMultithreadingEb(ptr noundef nonnull align 8 dereferenceable(8) %2, i1 noundef zeroext %i.bn) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !753)
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bp = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 10 uses
  store ptr %i.bp, ptr %13, align 8, !tbaa !51, !alias.scope !753
  %i.bq = load ptr, ptr %i.bo, align 8, !tbaa !50, !noalias !753 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !52, !noalias !753 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #25, !noalias !753
  store i64 %i.bs, ptr %i.k, align 8, !tbaa !53, !noalias !753
  %i.bt = icmp ugt i64 %i.bs, 15
  br i1 %i.bt, label %bb.i, label %._crit_edge.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.bu = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef 0) #25 ; 2 uses
  store ptr %i.bu, ptr %13, align 8, !tbaa !50, !alias.scope !753
  %i.bv = load i64, ptr %i.k, align 8, !tbaa !53, !noalias !753
  store i64 %i.bv, ptr %i.bp, align 8, !tbaa !45, !alias.scope !753
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.i, %bb.h
  %i.bw = phi ptr [ %i.bu, %bb.i ], [ %i.bp, %bb.h ] ; 2 uses
  switch i64 %i.bs, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %_ZNK4mlir17MlirOptMainConfig19getRemarksAllFilterB5cxx11Ev.exit
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i
  %i.bx = load i8, ptr %i.bq, align 1, !tbaa !45
  store i8 %i.bx, ptr %i.bw, align 1, !tbaa !45
  br label %_ZNK4mlir17MlirOptMainConfig19getRemarksAllFilterB5cxx11Ev.exit

bb.k:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bw, ptr align 1 %i.bq, i64 %i.bs, i1 false)
  br label %_ZNK4mlir17MlirOptMainConfig19getRemarksAllFilterB5cxx11Ev.exit

_ZNK4mlir17MlirOptMainConfig19getRemarksAllFilterB5cxx11Ev.exit: ; preds = %._crit_edge.i.i.i, %bb.j, %bb.k
  %i.by = load i64, ptr %i.k, align 8, !tbaa !53, !noalias !753 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !52, !alias.scope !753
  %i.ca = load ptr, ptr %13, align 8, !tbaa !50, !alias.scope !753
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.by
  store i8 0, ptr %i.cb, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #25, !noalias !753
  %i.cc = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  store ptr %i.cc, ptr %12, align 8, !tbaa !51
  %i.cd = load ptr, ptr %13, align 8, !tbaa !50   ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.bp
  br i1 %i.ce, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.l:                                             ; preds = %_ZNK4mlir17MlirOptMainConfig19getRemarksAllFilterB5cxx11Ev.exit
  %i.cf = load i64, ptr %i.bz, align 8, !tbaa !52 ; 3 uses
  %i.cg = icmp ult i64 %i.cf, 16
  call void @llvm.assume(i1 %i.cg)
  %i.ch = add nuw nsw i64 %i.cf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cc, ptr noundef nonnull align 8 dereferenceable(1) %i.bp, i64 %i.ch, i1 false)
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISA_ISt10in_place_tSH_EESt16is_constructibleIS5_JSD_EESt14is_convertibleISD_S5_EEEbE4typeELb1EEEOSD_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNK4mlir17MlirOptMainConfig19getRemarksAllFilterB5cxx11Ev.exit
  store ptr %i.cd, ptr %12, align 8, !tbaa !50
  %i.ci = load i64, ptr %i.bp, align 8, !tbaa !45
  store i64 %i.ci, ptr %i.cc, align 8, !tbaa !45
  %.pre = load i64, ptr %i.bz, align 8, !tbaa !52
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISA_ISt10in_place_tSH_EESt16is_constructibleIS5_JSD_EESt14is_convertibleISD_S5_EEEbE4typeELb1EEEOSD_.exit

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISA_ISt10in_place_tSH_EESt16is_constructibleIS5_JSD_EESt14is_convertibleISD_S5_EEEbE4typeELb1EEEOSD_.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.cj = phi i64 [ %i.cf, %bb.l ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.ck = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !52
  store ptr %i.bp, ptr %13, align 8, !tbaa !50
  store i64 0, ptr %i.bz, align 8, !tbaa !52
  store i8 0, ptr %i.bp, align 8, !tbaa !45
  %i.cl = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  store i8 1, ptr %i.cl, align 8, !tbaa !740
  %i.cm = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !754)
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.co = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 10 uses
  store ptr %i.co, ptr %14, align 8, !tbaa !51, !alias.scope !754
  %i.cp = load ptr, ptr %i.cn, align 8, !tbaa !50, !noalias !754 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !52, !noalias !754 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #25, !noalias !754
  store i64 %i.cr, ptr %i.j, align 8, !tbaa !53, !noalias !754
  %i.cs = icmp ugt i64 %i.cr, 15
  br i1 %i.cs, label %bb.m, label %._crit_edge.i.i.i73

bb.m:                                             ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISA_ISt10in_place_tSH_EESt16is_constructibleIS5_JSD_EESt14is_convertibleISD_S5_EEEbE4typeELb1EEEOSD_.exit
  %i.ct = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef 0) #25 ; 2 uses
  store ptr %i.ct, ptr %14, align 8, !tbaa !50, !alias.scope !754
  %i.cu = load i64, ptr %i.j, align 8, !tbaa !53, !noalias !754
  store i64 %i.cu, ptr %i.co, align 8, !tbaa !45, !alias.scope !754
  br label %._crit_edge.i.i.i73

._crit_edge.i.i.i73:                              ; preds = %bb.m, %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISA_ISt10in_place_tSH_EESt16is_constructibleIS5_JSD_EESt14is_convertibleISD_S5_EEEbE4typeELb1EEEOSD_.exit
  %i.cv = phi ptr [ %i.ct, %bb.m ], [ %i.co, %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISA_ISt10in_place_tSH_EESt16is_constructibleIS5_JSD_EESt14is_convertibleISD_S5_EEEbE4typeELb1EEEOSD_.exit ] ; 2 uses
  switch i64 %i.cr, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %_ZNK4mlir17MlirOptMainConfig22getRemarksPassedFilterB5cxx11Ev.exit
  ]

bb.n:                                             ; preds = %._crit_edge.i.i.i73
  %i.cw = load i8, ptr %i.cp, align 1, !tbaa !45
  store i8 %i.cw, ptr %i.cv, align 1, !tbaa !45
  br label %_ZNK4mlir17MlirOptMainConfig22getRemarksPassedFilterB5cxx11Ev.exit

bb.o:                                             ; preds = %._crit_edge.i.i.i73
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cv, ptr align 1 %i.cp, i64 %i.cr, i1 false)
  br label %_ZNK4mlir17MlirOptMainConfig22getRemarksPassedFilterB5cxx11Ev.exit

_ZNK4mlir17MlirOptMainConfig22getRemarksPassedFilterB5cxx11Ev.exit: ; preds = %._crit_edge.i.i.i73, %bb.n, %bb.o
  %i.cx = load i64, ptr %i.j, align 8, !tbaa !53, !noalias !754 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  store i64 %i.cx, ptr %i.cy, align 8, !tbaa !52, !alias.scope !754
  %i.cz = load ptr, ptr %14, align 8, !tbaa !50, !alias.scope !754
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cx
  store i8 0, ptr %i.da, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #25, !noalias !754
  %i.db = getelementptr inbounds nuw i8, ptr %12, i64 56 ; 5 uses
  store ptr %i.db, ptr %i.cm, align 8, !tbaa !51
  %i.dc = load ptr, ptr %14, align 8, !tbaa !50   ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.co
  br i1 %i.dd, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i74

bb.p:                                             ; preds = %_ZNK4mlir17MlirOptMainConfig22getRemarksPassedFilterB5cxx11Ev.exit
  %i.de = load i64, ptr %i.cy, align 8, !tbaa !52 ; 3 uses
  %i.df = icmp ult i64 %i.de, 16
  call void @llvm.assume(i1 %i.df)
  %i.dg = add nuw nsw i64 %i.de, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.db, ptr noundef nonnull align 8 dereferenceable(1) %i.co, i64 %i.dg, i1 false)
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISA_ISt10in_place_tSH_EESt16is_constructibleIS5_JSD_EESt14is_convertibleISD_S5_EEEbE4typeELb1EEEOSD_.exit75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i74: ; preds = %_ZNK4mlir17MlirOptMainConfig22getRemarksPassedFilterB5cxx11Ev.exit
  store ptr %i.dc, ptr %i.cm, align 8, !tbaa !50
  %i.dh = load i64, ptr %i.co, align 8, !tbaa !45
  store i64 %i.dh, ptr %i.db, align 8, !tbaa !45
  %.pre201 = load i64, ptr %i.cy, align 8, !tbaa !52
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISA_ISt10in_place_tSH_EESt16is_constructibleIS5_JSD_EESt14is_convertibleISD_S5_EEEbE4typeELb1EEEOSD_.exit75

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISA_ISt10in_place_tSH_EESt16is_constructibleIS5_JSD_EESt14is_convertibleISD_S5_EEEbE4typeELb1EEEOSD_.exit75: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i74
  %i.di = phi i64 [ %i.de, %bb.p ], [ %.pre201, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i74 ]
  %i.dj = getelementptr inbounds nuw i8, ptr %12, i64 48
  store i64 %i.di, ptr %i.dj, align 8, !tbaa !52
  store ptr %i.co, ptr %14, align 8, !tbaa !50
  store i64 0, ptr %i.cy, align 8, !tbaa !52
  store i8 0, ptr %i.co, align 8, !tbaa !45
  %i.dk = getelementptr inbounds nuw i8, ptr %12, i64 72 ; 3 uses
  store i8 1, ptr %i.dk, align 8, !tbaa !740
  %i.dl = getelementptr inbounds nuw i8, ptr %12, i64 80 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !755)
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.dn = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 10 uses
  store ptr %i.dn, ptr %15, align 8, !tbaa !51, !alias.scope !755
  %i.do = load ptr, ptr %i.dm, align 8, !tbaa !50, !noalias !755 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !52, !noalias !755 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #25, !noalias !755
  store i64 %i.dq, ptr %i.i, align 8, !tbaa !53, !noalias !755
  %i.dr = icmp ugt i64 %i.dq, 15
  br i1 %i.dr, label %bb.q, label %._crit_edge.i.i.i76

bb.q:                                             ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISA_ISt10in_place_tSH_EESt16is_constructibleIS5_JSD_EESt14is_convertibleISD_S5_EEEbE4typeELb1EEEOSD_.exit75
  %i.ds = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 0) #25 ; 2 uses
  store ptr %i.ds, ptr %15, align 8, !tbaa !50, !alias.scope !755
  %i.dt = load i64, ptr %i.i, align 8, !tbaa !53, !noalias !755
  store i64 %i.dt, ptr %i.dn, align 8, !tbaa !45, !alias.scope !755
  br label %._crit_edge.i.i.i76

._crit_edge.i.i.i76:                              ; preds = %bb.q, %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISA_ISt10in_place_tSH_EESt16is_constructibleIS5_JSD_EESt14is_convertibleISD_S5_EEEbE4typeELb1EEEOSD_.exit75
  %i.du = phi ptr [ %i.ds, %bb.q ], [ %i.dn, %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISA_ISt10in_place_tSH_EESt16is_constructibleIS5_JSD_EESt14is_convertibleISD_S5_EEEbE4typeELb1EEEOSD_.exit75 ] ; 2 uses
  switch i64 %i.dq, label %bb.s [
    i64 1, label %bb.r
    i64 0, label %_ZNK4mlir17MlirOptMainConfig22getRemarksMissedFilterB5cxx11Ev.exit
  ]

bb.r:                                             ; preds = %._crit_edge.i.i.i76
  %i.dv = load i8, ptr %i.do, align 1, !tbaa !45
  store i8 %i.dv, ptr %i.du, align 1, !tbaa !45
  br label %_ZNK4mlir17MlirOptMainConfig22getRemarksMissedFilterB5cxx11Ev.exit

bb.s:                                             ; preds = %._crit_edge.i.i.i76
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.du, ptr align 1 %i.do, i64 %i.dq, i1 false)
  br label %_ZNK4mlir17MlirOptMainConfig22getRemarksMissedFilterB5cxx11Ev.exit

_ZNK4mlir17MlirOptMainConfig22getRemarksMissedFilterB5cxx11Ev.exit: ; preds = %._crit_edge.i.i.i76, %bb.r, %bb.s
  %i.dw = load i64, ptr %i.i, align 8, !tbaa !53, !noalias !755 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 4 uses
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !52, !alias.scope !755
  %i.dy = load ptr, ptr %15, align 8, !tbaa !50, !alias.scope !755
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dw
  store i8 0, ptr %i.dz, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #25, !noalias !755
  %i.ea = getelementptr inbounds nuw i8, ptr %12, i64 96 ; 5 uses
end_hunk_0
