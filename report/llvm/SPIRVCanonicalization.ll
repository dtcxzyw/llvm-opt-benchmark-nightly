Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SPIRVCanonicalization?download=true
inline.NumInlined: 8975
inline.NumDeleted: 2868
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN4mlir14RewritePatternD2Ev:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #17
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !68   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir7PatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i
  tail call void @free(ptr noundef %i.f) #17
  br label %_ZN4mlir7PatternD2Ev.exit

_ZN4mlir7PatternD2Ev.exit:                        ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_126ConvertSelectionOpToSelectD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #17
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !68   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir14RewritePatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.f) #17
  br label %_ZN4mlir14RewritePatternD2Ev.exit

_ZN4mlir14RewritePatternD2Ev.exit:                ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_5spirv11SelectionOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i8 %i.c(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) #17
  ret i8 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i8 0, 2) i8 @_ZNK12_GLOBAL__N_126ConvertSelectionOpToSelect15matchAndRewriteEN4mlir5spirv11SelectionOpERNS1_15PatternRewriterE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.mlir::DictionaryAttr", align 8 ; 4 uses
  %4 = alloca %"class.mlir::spirv::SPIRVType", align 8 ; 4 uses
  %5 = alloca %"class.mlir::spirv::SelectionOp", align 8 ; 4 uses
  %6 = alloca %"class.mlir::spirv::BranchConditionalOp", align 8 ; 5 uses
  store ptr %1, ptr %5, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4              ; 3 uses
  %i.c = and i32 %i.b, 8388607
  %i.d = icmp ne i32 %i.c, 0
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = lshr i32 %i.b, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i32 %i.f, 1
  %i.g = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i to i64
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.g
  %i.i = lshr i32 %i.b, 21
  %i.j = and i32 %i.i, 2040
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = load i32, ptr %i.m, align 8, !tbaa !1422
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %i.o ; 5 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1423
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZN4llvm10range_sizeIRN4mlir6RegionEEEmOT_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1424 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.t, %i.p
  br i1 %.not4.i.i, label %_ZN4llvm10range_sizeIRN4mlir6RegionEEEmOT_.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.06.i.i = phi i64 [ %i.w, %.lr.ph.i.i ], [ 0, %bb.b ]
  %.sroa.02.05.i.i = phi ptr [ %i.v, %.lr.ph.i.i ], [ %i.t, %bb.b ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1424 ; 2 uses
  %i.w = add nuw nsw i64 %.06.i.i, 1              ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, %i.p
  br i1 %.not.i.i, label %_ZN4llvm10range_sizeIRN4mlir6RegionEEEmOT_.exit, label %.lr.ph.i.i, !llvm.loop !1409

_ZN4llvm10range_sizeIRN4mlir6RegionEEEmOT_.exit:  ; preds = %.lr.ph.i.i
  %.not = icmp eq i64 %i.w, 4
  br i1 %.not, label %bb.c, label %_ZN4llvm10range_sizeIRN4mlir6RegionEEEmOT_.exit.thread

bb.c:                                             ; preds = %_ZN4llvm10range_sizeIRN4mlir6RegionEEEmOT_.exit
  %i.x = call noundef ptr @_ZN4mlir5spirv11SelectionOp14getHeaderBlockEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #17 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1424 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 40 ; 2 uses
  %.not.i.i34 = icmp eq ptr %i.z, %i.aa
  br i1 %.not.i.i34, label %_ZN4llvm10range_sizeIRN4mlir6RegionEEEmOT_.exit.thread, label %_ZN4llvm16hasSingleElementIRN4mlir5BlockEEEbOT_.exit.i

_ZN4llvm16hasSingleElementIRN4mlir5BlockEEEbOT_.exit.i: ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1424
  %i.ad = icmp eq ptr %i.ac, %i.aa
  br i1 %i.ad, label %_ZNK12_GLOBAL__N_126ConvertSelectionOpToSelect31onlyContainsBranchConditionalOpEPN4mlir5BlockE.exit, label %_ZN4llvm10range_sizeIRN4mlir6RegionEEEmOT_.exit.thread

_ZNK12_GLOBAL__N_126ConvertSelectionOpToSelect31onlyContainsBranchConditionalOpEPN4mlir5BlockE.exit: ; preds = %_ZN4llvm16hasSingleElementIRN4mlir5BlockEEEbOT_.exit.i
  %i.ae = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef nonnull %i.z) #17
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.af, align 8, !tbaa !54
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !57
  %i.ai = icmp eq ptr %i.ah, @_ZN4mlir6detail14TypeIDResolverINS_5spirv19BranchConditionalOpEvE2idE
  br i1 %i.ai, label %bb.d, label %_ZN4llvm10range_sizeIRN4mlir6RegionEEEmOT_.exit.thread

bb.d:                                             ; preds = %_ZNK12_GLOBAL__N_126ConvertSelectionOpToSelect31onlyContainsBranchConditionalOpEPN4mlir5BlockE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.aj = load ptr, ptr %i.y, align 8, !tbaa !1424
  %i.ak = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %i.aj) #17 ; 3 uses
  store ptr %i.ak, ptr %6, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 44
  %i.am = load i32, ptr %i.al, align 4            ; 2 uses
  %i.an = lshr i32 %i.am, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i35 = and i32 %i.an, 1
  %i.ao = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i35 to i64
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %i.ao
  %i.aq = lshr i32 %i.am, 21
  %i.ar = and i32 %i.aq, 2040
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.as ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 88
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1426 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 120
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1426 ; 2 uses
  %i.ay = call noundef ptr @_ZN4mlir5spirv11SelectionOp13getMergeBlockEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #17 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 48 ; 5 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !1424 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 40 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ba, %i.bb
  br i1 %.not4.i.i.i, label %_ZNK12_GLOBAL__N_126ConvertSelectionOpToSelect24canCanonicalizeSelectionEPN4mlir5BlockES3_S3_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %.06.i.i.i = phi i64 [ %i.be, %.lr.ph.i.i.i ], [ 0, %bb.d ]
  %.sroa.02.05.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i ], [ %i.ba, %bb.d ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !1424 ; 2 uses
  %i.be = add nuw nsw i64 %.06.i.i.i, 1           ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bd, %i.bb
  br i1 %.not.i.i.i, label %_ZN4llvm10range_sizeIRN4mlir5BlockEEEmOT_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !1410

_ZN4llvm10range_sizeIRN4mlir5BlockEEEmOT_.exit.i: ; preds = %.lr.ph.i.i.i
  %.not.i = icmp eq i64 %i.be, 2
  br i1 %.not.i, label %bb.e, label %_ZNK12_GLOBAL__N_126ConvertSelectionOpToSelect24canCanonicalizeSelectionEPN4mlir5BlockES3_S3_.exit.thread

bb.e:                                             ; preds = %_ZN4llvm10range_sizeIRN4mlir5BlockEEEmOT_.exit.i
  %i.bf = getelementptr i8, ptr %i.ax, i64 48     ; 4 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1424 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 40 ; 2 uses
  %.not4.i.i17.i = icmp eq ptr %i.bg, %i.bh
  br i1 %.not4.i.i17.i, label %_ZNK12_GLOBAL__N_126ConvertSelectionOpToSelect24canCanonicalizeSelectionEPN4mlir5BlockES3_S3_.exit.thread, label %.lr.ph.i.i18.i

.lr.ph.i.i18.i:                                   ; preds = %bb.e, %.lr.ph.i.i18.i
  %.06.i.i19.i = phi i64 [ %i.bk, %.lr.ph.i.i18.i ], [ 0, %bb.e ]
  %.sroa.02.05.i.i20.i = phi ptr [ %i.bj, %.lr.ph.i.i18.i ], [ %i.bg, %bb.e ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i20.i, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !1424 ; 2 uses
  %i.bk = add nuw nsw i64 %.06.i.i19.i, 1         ; 2 uses
  %.not.i.i21.i = icmp eq ptr %i.bj, %i.bh
  br i1 %.not.i.i21.i, label %_ZN4llvm10range_sizeIRN4mlir5BlockEEEmOT_.exit23.i, label %.lr.ph.i.i18.i, !llvm.loop !1410

_ZN4llvm10range_sizeIRN4mlir5BlockEEEmOT_.exit23.i: ; preds = %.lr.ph.i.i18.i
  %.not13.i = icmp eq i64 %i.bk, 2
  br i1 %.not13.i, label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i, label %_ZNK12_GLOBAL__N_126ConvertSelectionOpToSelect24canCanonicalizeSelectionEPN4mlir5BlockES3_S3_.exit.thread

_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i: ; preds = %_ZN4llvm10range_sizeIRN4mlir5BlockEEEmOT_.exit23.i
  %i.bl = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %i.ba) #17 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i37 = load ptr, ptr %i.bm, align 8, !tbaa !54
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i37, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !57
  %i.bp = load ptr, ptr %i.az, align 8, !tbaa !1424
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !1424
  %i.bs = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %i.br) #17 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i24.i = load ptr, ptr %i.bt, align 8, !tbaa !54
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i24.i, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !57
  %i.bw = load ptr, ptr %i.bf, align 8, !tbaa !1424
  %i.bx = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %i.bw) #17 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i26.i = load ptr, ptr %i.by, align 8, !tbaa !54
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i26.i, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !57
  %i.cb = load ptr, ptr %i.bf, align 8, !tbaa !1424
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !1424
  %7 = icmp ne ptr %i.bo, @_ZN4mlir6detail14TypeIDResolverINS_5spirv7StoreOpEvE2idE
  %8 = icmp ne ptr %i.bv, @_ZN4mlir6detail14TypeIDResolverINS_5spirv8BranchOpEvE2idE
  %9 = icmp ne ptr %i.ca, @_ZN4mlir6detail14TypeIDResolverINS_5spirv7StoreOpEvE2idE
  %i.ce = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %i.cd) #17 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i32.i = load ptr, ptr %i.cf, align 8, !tbaa !54
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i32.i, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !57
  %i.ci = icmp ne ptr %i.ch, @_ZN4mlir6detail14TypeIDResolverINS_5spirv8BranchOpEvE2idE
  %brmerge.i = select i1 %7, i1 true, i1 %8
  %brmerge24.i = select i1 %brmerge.i, i1 true, i1 %9
  %brmerge26.i = select i1 %brmerge24.i, i1 true, i1 %i.ci
  br i1 %brmerge26.i, label %_ZNK12_GLOBAL__N_126ConvertSelectionOpToSelect24canCanonicalizeSelectionEPN4mlir5BlockES3_S3_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bl, i64 72 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !50
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 56
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.cl, align 8, !tbaa !52
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.cm, align 8
  %i.cn = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.co = inttoptr i64 %i.cn to ptr
  store ptr %i.co, ptr %4, align 8
  %i.cp = call noundef zeroext i1 @_ZN4mlir5spirv9SPIRVType16isScalarOrVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.cq = load ptr, ptr %i.cj, align 8, !tbaa !50
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %.sroa.0.0.copyload.i.i.i.i36.i = load ptr, ptr %i.cr, align 8, !tbaa !52
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bx, i64 72
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !50
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %.sroa.0.0.copyload.i.i.i.i38.i = load ptr, ptr %i.cu, align 8, !tbaa !52
  %.not30.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i36.i, %.sroa.0.0.copyload.i.i.i.i38.i
  br i1 %.not30.i, label %bb.g, label %_ZNK12_GLOBAL__N_126ConvertSelectionOpToSelect24canCanonicalizeSelectionEPN4mlir5BlockES3_S3_.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.cv = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_126ConvertSelectionOpToSelect14isSameAttrListEN4mlir5spirv7StoreOpES3_(ptr %i.bl, ptr nonnull %i.bx)
  %brmerge29.demorgan.i = and i1 %i.cp, %i.cv
  br i1 %brmerge29.demorgan.i, label %bb.h, label %_ZNK12_GLOBAL__N_126ConvertSelectionOpToSelect24canCanonicalizeSelectionEPN4mlir5BlockES3_S3_.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bs, i64 44
  %i.cx = load i32, ptr %i.cw, align 4            ; 2 uses
  %i.cy = lshr i32 %i.cx, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i38 = and i32 %i.cy, 1
  %i.cz = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i38 to i64
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.bs, i64 %i.cz
  %i.db = lshr i32 %i.cx, 21
  %i.dc = and i32 %i.db, 2040
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 88
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !1426
  %.not14.i = icmp eq ptr %i.dg, %i.ay
  br i1 %.not14.i, label %_ZNK12_GLOBAL__N_126ConvertSelectionOpToSelect24canCanonicalizeSelectionEPN4mlir5BlockES3_S3_.exit, label %_ZNK12_GLOBAL__N_126ConvertSelectionOpToSelect24canCanonicalizeSelectionEPN4mlir5BlockES3_S3_.exit.thread

_ZNK12_GLOBAL__N_126ConvertSelectionOpToSelect24canCanonicalizeSelectionEPN4mlir5BlockES3_S3_.exit: ; preds = %bb.h
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ce, i64 44
  %i.di = load i32, ptr %i.dh, align 4            ; 2 uses
  %i.dj = lshr i32 %i.di, 23
  %.lobit.i.i.i.i.i.i.i.i.i39.i = and i32 %i.dj, 1
  %i.dk = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i39.i to i64
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %i.ce, i64 %i.dk
  %i.dm = lshr i32 %i.di, 21
  %i.dn = and i32 %i.dm, 2040
  %i.do = zext nneg i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 88
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !1426
  %.not15.i.not = icmp eq ptr %i.dr, %i.ay
  br i1 %.not15.i.not, label %bb.i, label %_ZNK12_GLOBAL__N_126ConvertSelectionOpToSelect24canCanonicalizeSelectionEPN4mlir5BlockES3_S3_.exit.thread

bb.i:                                             ; preds = %_ZNK12_GLOBAL__N_126ConvertSelectionOpToSelect24canCanonicalizeSelectionEPN4mlir5BlockES3_S3_.exit
  %.val32 = load ptr, ptr %i.az, align 8, !tbaa !1424
  %i.ds = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.val32) #17
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 72
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !50
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 56
  %.sroa.0.0.copyload.i.i.i.i.i40 = load ptr, ptr %i.dv, align 8, !tbaa !52 ; 2 uses
  %.val = load ptr, ptr %i.bf, align 8, !tbaa !1424
  %i.dw = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.val) #17
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 72
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !50
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 56
  %.sroa.0.0.copyload.i.i.i.i.i42 = load ptr, ptr %i.dz, align 8, !tbaa !52
  %.val33 = load ptr, ptr %i.az, align 8, !tbaa !1424
  %i.ea = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.val33) #17
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 72
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !50
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i44 = load ptr, ptr %i.ed, align 8, !tbaa !52
  %i.ee = load ptr, ptr %i.az, align 8, !tbaa !1424
  %i.ef = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %i.ee) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.eg = call ptr @_ZN4mlir9Operation17getAttrDictionaryEv(ptr noundef nonnull align 8 dereferenceable(64) %i.ef) #17
  store ptr %i.eg, ptr %3, align 8
  %i.eh = call { ptr, i64 } @_ZNK4mlir14DictionaryAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #17 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.ei = extractvalue { ptr, i64 } %i.eh, 0
  %i.ej = extractvalue { ptr, i64 } %i.eh, 1
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.el = load ptr, ptr %5, align 8, !tbaa !47
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.em, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i40, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.en, align 8
  %i.eo = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.ep = inttoptr i64 %i.eo to ptr
  %i.eq = call i64 @_ZN4mlir5spirv19BranchConditionalOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 0) #17
  %i.er = load ptr, ptr %6, align 8, !tbaa !47
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 72
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !50
  %i.eu = and i64 %i.eq, 4294967295
  %i.ev = getelementptr inbounds nuw [32 x i8], ptr %i.et, i64 %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.ew, align 8, !tbaa !52
  %i.ex = call ptr @_ZN4mlir5spirv8SelectOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueES6_S6_(ptr noundef nonnull align 8 dereferenceable(32) %i.ek, ptr %.sroa.0.0.copyload.i.i, ptr %i.ep, ptr %.sroa.0.0.copyload.i.i.i.i, ptr %.sroa.0.0.copyload.i.i.i.i.i40, ptr %.sroa.0.0.copyload.i.i.i.i.i42) #17 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 24
  %.sroa.0.0.copyload.i.i45 = load ptr, ptr %i.ey, align 8
  %i.ez = getelementptr inbounds i8, ptr %i.ex, i64 -16
  %i.fa = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.ez, i64 noundef 0) #17
  %i.fb = call ptr @_ZN4mlir5spirv7StoreOp6createERNS_9OpBuilderENS_8LocationENS_5ValueES5_N4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.ek, ptr %.sroa.0.0.copyload.i.i45, ptr %.sroa.0.0.copyload.i.i.i.i.i44, ptr %i.fa, ptr %i.ei, i64 %i.ej) #17 ; 0 uses
  %i.fc = load ptr, ptr %2, align 8, !tbaa !22
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fe = load ptr, ptr %i.fd, align 8
  call void %i.fe(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %1) #17
  br label %_ZNK12_GLOBAL__N_126ConvertSelectionOpToSelect24canCanonicalizeSelectionEPN4mlir5BlockES3_S3_.exit.thread

_ZNK12_GLOBAL__N_126ConvertSelectionOpToSelect24canCanonicalizeSelectionEPN4mlir5BlockES3_S3_.exit.thread: ; preds = %bb.f, %bb.g, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i, %bb.e, %_ZN4llvm10range_sizeIRN4mlir5BlockEEEmOT_.exit23.i, %bb.h, %bb.d, %_ZN4llvm10range_sizeIRN4mlir5BlockEEEmOT_.exit.i, %_ZNK12_GLOBAL__N_126ConvertSelectionOpToSelect24canCanonicalizeSelectionEPN4mlir5BlockES3_S3_.exit, %bb.i
  %.sroa.031.0 = phi i8 [ 1, %bb.i ], [ 0, %_ZNK12_GLOBAL__N_126ConvertSelectionOpToSelect24canCanonicalizeSelectionEPN4mlir5BlockES3_S3_.exit ], [ 0, %_ZN4llvm10range_sizeIRN4mlir5BlockEEEmOT_.exit.i ], [ 0, %bb.d ], [ 0, %bb.h ], [ 0, %_ZN4llvm10range_sizeIRN4mlir5BlockEEEmOT_.exit23.i ], [ 0, %bb.e ], [ 0, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i ], [ 0, %bb.g ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %_ZN4llvm10range_sizeIRN4mlir6RegionEEEmOT_.exit.thread

_ZN4llvm10range_sizeIRN4mlir6RegionEEEmOT_.exit.thread: ; preds = %bb.c, %_ZN4llvm16hasSingleElementIRN4mlir5BlockEEEbOT_.exit.i, %bb.b, %_ZNK12_GLOBAL__N_126ConvertSelectionOpToSelect31onlyContainsBranchConditionalOpEPN4mlir5BlockE.exit, %_ZN4llvm10range_sizeIRN4mlir6RegionEEEmOT_.exit, %bb.a, %_ZNK12_GLOBAL__N_126ConvertSelectionOpToSelect24canCanonicalizeSelectionEPN4mlir5BlockES3_S3_.exit.thread
  %.sroa.031.2 = phi i8 [ 0, %_ZN4llvm10range_sizeIRN4mlir6RegionEEEmOT_.exit ], [ 0, %bb.a ], [ %.sroa.031.0, %_ZNK12_GLOBAL__N_126ConvertSelectionOpToSelect24canCanonicalizeSelectionEPN4mlir5BlockES3_S3_.exit.thread ], [ 0, %_ZNK12_GLOBAL__N_126ConvertSelectionOpToSelect31onlyContainsBranchConditionalOpEPN4mlir5BlockE.exit ], [ 0, %bb.b ], [ 0, %_ZN4llvm16hasSingleElementIRN4mlir5BlockEEEbOT_.exit.i ], [ 0, %bb.c ]
  ret i8 %.sroa.031.2
}

declare noundef ptr @_ZN4mlir5spirv11SelectionOp14getHeaderBlockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef ptr @_ZN4mlir5spirv11SelectionOp13getMergeBlockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare ptr @_ZN4mlir5spirv8SelectOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueES6_S6_(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, ptr, ptr, ptr) local_unnamed_addr #3

declare ptr @_ZN4mlir5spirv7StoreOp6createERNS_9OpBuilderENS_8LocationENS_5ValueES5_N4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, ptr, ptr, i64) local_unnamed_addr #3

declare noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN4mlir5spirv9SPIRVType16isScalarOrVectorEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_126ConvertSelectionOpToSelect14isSameAttrListEN4mlir5spirv7StoreOpES3_(ptr nonnull %0, ptr %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call ptr @_ZN4mlir9Operation28getDiscardableAttrDictionaryEv(ptr noundef nonnull align 8 dereferenceable(64) %0)
  %i.b = tail call ptr @_ZN4mlir9Operation28getDiscardableAttrDictionaryEv(ptr noundef nonnull align 8 dereferenceable(64) %1)
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %.not.i.i = icmp ugt i32 %i.e, 16777215
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = lshr i32 %i.e, 23
  %.lobit.i.i.i.i.i.i.i.i = and i32 %i.g, 1
  %i.h = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
  %.not.i.i2 = icmp ugt i32 %i.k, 16777215
  tail call void @llvm.assume(i1 %.not.i.i2)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.m = lshr i32 %i.k, 23
  %.lobit.i.i.i.i.i.i.i.i3 = and i32 %i.m, 1
  %i.n = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i3 to i64
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.n
  %i.p = load <2 x ptr>, ptr %i.i, align 8
  %i.q = load <2 x ptr>, ptr %i.o, align 8
  %i.r = icmp eq <2 x ptr> %i.q, %i.p             ; 2 uses
  %i.s = extractelement <2 x i1> %i.r, i64 0
  %i.t = extractelement <2 x i1> %i.r, i64 1
  %i.u = select i1 %i.s, i1 %i.t, i1 false
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.v = phi i1 [ false, %bb.a ], [ %i.u, %bb.b ]
  ret i1 %i.v
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN4mlir9Operation28getDiscardableAttrDictionaryEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.llvm::filter_iterator_impl", align 8 ; 9 uses
  %2 = alloca %"class.llvm::filter_iterator_impl", align 8 ; 9 uses
  %3 = alloca %"class.llvm::SmallVector.2477", align 8 ; 7 uses
  %4 = alloca %"class.llvm::iterator_range.2482", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4
  %.not.i = icmp ult i32 %i.b, 16777216
  br i1 %.not.i, label %bb.c, label %bb.b
end_hunk_0
