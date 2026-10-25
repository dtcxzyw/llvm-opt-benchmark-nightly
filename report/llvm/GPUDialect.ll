Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/GPUDialect?download=true
inline.NumInlined: 67336
inline.NumDeleted: 20632
loop-unroll.NumCompletelyUnrolled: 128
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 140
begin_hunk_0_@_ZN4mlir3gpu18KernelMetadataAttr6verifyEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEENS_10StringAttrENS_4TypeENS_9ArrayAttrENS_14DictionaryAttrE:bb.a
  br i1 %.not37.i.i.i.i.i.i, label %bb.m, label %"_ZN4llvm6any_ofIRN4mlir9ArrayAttrEZNS1_3gpu18KernelMetadataAttr6verifyENS_12function_refIFNS1_18InFlightDiagnosticEvEEENS1_10StringAttrENS1_4TypeES2_NS1_14DictionaryAttrEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit26"

bb.m:                                             ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i, i64 24
  %.val.i.i.i.i.i.i = load ptr, ptr %i.am, align 8, !tbaa !183
  %.val.val.i.i.i.i.i.i = load ptr, ptr %.val.i.i.i.i.i.i, align 8, !tbaa !122
  %i.an = getelementptr i8, ptr %.val.val.i.i.i.i.i.i, i64 144
  %.val.val.val.i.i.i.i.i.i = load ptr, ptr %i.an, align 8, !tbaa !102
  %.not38.i.i.i.i.i.i = icmp eq ptr %.val.val.val.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_14DictionaryAttrEvE2idE
  br i1 %.not38.i.i.i.i.i.i, label %bb.n, label %"_ZN4llvm6any_ofIRN4mlir9ArrayAttrEZNS1_3gpu18KernelMetadataAttr6verifyENS_12function_refIFNS1_18InFlightDiagnosticEvEEENS1_10StringAttrENS1_4TypeES2_NS1_14DictionaryAttrEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit28"

bb.n:                                             ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i, i64 32
  %i.ap = add nsw i64 %.050.i.i.i.i.i.i, -1
  %i.aq = icmp sgt i64 %.050.i.i.i.i.i.i, 1
  br i1 %i.aq, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i.i, !llvm.loop !1367

._crit_edge.loopexit.i.i.i.i.i.i:                 ; preds = %bb.n
  %.pre.i.i.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i.i.i to i64
  %.pre55.i.i.i.i.i.i = sub i64 %i.ab, %.pre.i.i.i.i.i.i
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %._crit_edge.loopexit.i.i.i.i.i.i, %bb.j
  %.pre-phi56.i.i.i.i.i.i = phi i64 [ %.pre55.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %i.ad, %bb.j ]
  %.029.lcssa.i.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %i.w, %bb.j ] ; 5 uses
  %i.ar = ashr exact i64 %.pre-phi56.i.i.i.i.i.i, 3
  switch i64 %i.ar, label %"_ZN4llvm6any_ofIRN4mlir9ArrayAttrEZNS1_3gpu18KernelMetadataAttr6verifyENS_12function_refIFNS1_18InFlightDiagnosticEvEEENS1_10StringAttrENS1_4TypeES2_NS1_14DictionaryAttrEE3$_0EEbOT_T0_.exit.thread" [
    i64 3, label %bb.o
    i64 2, label %bb.q
    i64 1, label %bb.s
  ]

bb.o:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %.029.val.i.i.i.i.i.i = load ptr, ptr %.029.lcssa.i.i.i.i.i.i, align 8, !tbaa !183
  %.029.val.val.i.i.i.i.i.i = load ptr, ptr %.029.val.i.i.i.i.i.i, align 8, !tbaa !122
  %i.as = getelementptr i8, ptr %.029.val.val.i.i.i.i.i.i, i64 144
  %.029.val.val.val.i.i.i.i.i.i = load ptr, ptr %i.as, align 8, !tbaa !102
  %.not.i.i.i.i.i.i = icmp eq ptr %.029.val.val.val.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_14DictionaryAttrEvE2idE
  br i1 %.not.i.i.i.i.i.i, label %bb.p, label %"_ZN4llvm6any_ofIRN4mlir9ArrayAttrEZNS1_3gpu18KernelMetadataAttr6verifyENS_12function_refIFNS1_18InFlightDiagnosticEvEEENS1_10StringAttrENS1_4TypeES2_NS1_14DictionaryAttrEE3$_0EEbOT_T0_.exit"

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i, i64 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = phi ptr [ %i.at, %bb.p ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %.1.val.i.i.i.i.i.i = load ptr, ptr %.1.i.i.i.i.i.i, align 8, !tbaa !183
  %.1.val.val.i.i.i.i.i.i = load ptr, ptr %.1.val.i.i.i.i.i.i, align 8, !tbaa !122
  %i.au = getelementptr i8, ptr %.1.val.val.i.i.i.i.i.i, i64 144
  %.1.val.val.val.i.i.i.i.i.i = load ptr, ptr %i.au, align 8, !tbaa !102
  %.not33.i.i.i.i.i.i = icmp eq ptr %.1.val.val.val.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_14DictionaryAttrEvE2idE
  br i1 %.not33.i.i.i.i.i.i, label %bb.r, label %"_ZN4llvm6any_ofIRN4mlir9ArrayAttrEZNS1_3gpu18KernelMetadataAttr6verifyENS_12function_refIFNS1_18InFlightDiagnosticEvEEENS1_10StringAttrENS1_4TypeES2_NS1_14DictionaryAttrEE3$_0EEbOT_T0_.exit"

bb.r:                                             ; preds = %bb.q
  %i.av = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i, i64 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i.i.i.i.i.i
  %.2.i.i.i.i.i.i = phi ptr [ %i.av, %bb.r ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %.2.val.i.i.i.i.i.i = load ptr, ptr %.2.i.i.i.i.i.i, align 8, !tbaa !183
  %.2.val.val.i.i.i.i.i.i = load ptr, ptr %.2.val.i.i.i.i.i.i, align 8, !tbaa !122
  %i.aw = getelementptr i8, ptr %.2.val.val.i.i.i.i.i.i, i64 144
  %.2.val.val.val.i.i.i.i.i.i = load ptr, ptr %i.aw, align 8, !tbaa !102
  %.not34.i.i.i.i.i.i = icmp eq ptr %.2.val.val.val.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_14DictionaryAttrEvE2idE
  br i1 %.not34.i.i.i.i.i.i, label %"_ZN4llvm6any_ofIRN4mlir9ArrayAttrEZNS1_3gpu18KernelMetadataAttr6verifyENS_12function_refIFNS1_18InFlightDiagnosticEvEEENS1_10StringAttrENS1_4TypeES2_NS1_14DictionaryAttrEE3$_0EEbOT_T0_.exit.thread", label %"_ZN4llvm6any_ofIRN4mlir9ArrayAttrEZNS1_3gpu18KernelMetadataAttr6verifyENS_12function_refIFNS1_18InFlightDiagnosticEvEEENS1_10StringAttrENS1_4TypeES2_NS1_14DictionaryAttrEE3$_0EEbOT_T0_.exit"

"_ZN4llvm6any_ofIRN4mlir9ArrayAttrEZNS1_3gpu18KernelMetadataAttr6verifyENS_12function_refIFNS1_18InFlightDiagnosticEvEEENS1_10StringAttrENS1_4TypeES2_NS1_14DictionaryAttrEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit": ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i, i64 8
  br label %"_ZN4llvm6any_ofIRN4mlir9ArrayAttrEZNS1_3gpu18KernelMetadataAttr6verifyENS_12function_refIFNS1_18InFlightDiagnosticEvEEENS1_10StringAttrENS1_4TypeES2_NS1_14DictionaryAttrEE3$_0EEbOT_T0_.exit"

"_ZN4llvm6any_ofIRN4mlir9ArrayAttrEZNS1_3gpu18KernelMetadataAttr6verifyENS_12function_refIFNS1_18InFlightDiagnosticEvEEENS1_10StringAttrENS1_4TypeES2_NS1_14DictionaryAttrEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit26": ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i, i64 16
  br label %"_ZN4llvm6any_ofIRN4mlir9ArrayAttrEZNS1_3gpu18KernelMetadataAttr6verifyENS_12function_refIFNS1_18InFlightDiagnosticEvEEENS1_10StringAttrENS1_4TypeES2_NS1_14DictionaryAttrEE3$_0EEbOT_T0_.exit"

"_ZN4llvm6any_ofIRN4mlir9ArrayAttrEZNS1_3gpu18KernelMetadataAttr6verifyENS_12function_refIFNS1_18InFlightDiagnosticEvEEENS1_10StringAttrENS1_4TypeES2_NS1_14DictionaryAttrEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit28": ; preds = %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i, i64 24
  br label %"_ZN4llvm6any_ofIRN4mlir9ArrayAttrEZNS1_3gpu18KernelMetadataAttr6verifyENS_12function_refIFNS1_18InFlightDiagnosticEvEEENS1_10StringAttrENS1_4TypeES2_NS1_14DictionaryAttrEE3$_0EEbOT_T0_.exit"

"_ZN4llvm6any_ofIRN4mlir9ArrayAttrEZNS1_3gpu18KernelMetadataAttr6verifyENS_12function_refIFNS1_18InFlightDiagnosticEvEEENS1_10StringAttrENS1_4TypeES2_NS1_14DictionaryAttrEE3$_0EEbOT_T0_.exit": ; preds = %.lr.ph.i.i.i.i.i.i, %"_ZN4llvm6any_ofIRN4mlir9ArrayAttrEZNS1_3gpu18KernelMetadataAttr6verifyENS_12function_refIFNS1_18InFlightDiagnosticEvEEENS1_10StringAttrENS1_4TypeES2_NS1_14DictionaryAttrEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit", %"_ZN4llvm6any_ofIRN4mlir9ArrayAttrEZNS1_3gpu18KernelMetadataAttr6verifyENS_12function_refIFNS1_18InFlightDiagnosticEvEEENS1_10StringAttrENS1_4TypeES2_NS1_14DictionaryAttrEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit26", %"_ZN4llvm6any_ofIRN4mlir9ArrayAttrEZNS1_3gpu18KernelMetadataAttr6verifyENS_12function_refIFNS1_18InFlightDiagnosticEvEEENS1_10StringAttrENS1_4TypeES2_NS1_14DictionaryAttrEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit28", %bb.o, %bb.q, %bb.s
  %.028.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %bb.q ], [ %.029.lcssa.i.i.i.i.i.i, %bb.o ], [ %.2.i.i.i.i.i.i, %bb.s ], [ %i.az, %"_ZN4llvm6any_ofIRN4mlir9ArrayAttrEZNS1_3gpu18KernelMetadataAttr6verifyENS_12function_refIFNS1_18InFlightDiagnosticEvEEENS1_10StringAttrENS1_4TypeES2_NS1_14DictionaryAttrEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit28" ], [ %i.ay, %"_ZN4llvm6any_ofIRN4mlir9ArrayAttrEZNS1_3gpu18KernelMetadataAttr6verifyENS_12function_refIFNS1_18InFlightDiagnosticEvEEENS1_10StringAttrENS1_4TypeES2_NS1_14DictionaryAttrEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit26" ], [ %i.ax, %"_ZN4llvm6any_ofIRN4mlir9ArrayAttrEZNS1_3gpu18KernelMetadataAttr6verifyENS_12function_refIFNS1_18InFlightDiagnosticEvEEENS1_10StringAttrENS1_4TypeES2_NS1_14DictionaryAttrEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit" ], [ %.02949.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %.not11 = icmp eq ptr %i.aa, %.028.i.i.i.i.i.i
  br i1 %.not11, label %"_ZN4llvm6any_ofIRN4mlir9ArrayAttrEZNS1_3gpu18KernelMetadataAttr6verifyENS_12function_refIFNS1_18InFlightDiagnosticEvEEENS1_10StringAttrENS1_4TypeES2_NS1_14DictionaryAttrEE3$_0EEbOT_T0_.exit.thread", label %bb.t

bb.t:                                             ; preds = %"_ZN4llvm6any_ofIRN4mlir9ArrayAttrEZNS1_3gpu18KernelMetadataAttr6verifyENS_12function_refIFNS1_18InFlightDiagnosticEvEEENS1_10StringAttrENS1_4TypeES2_NS1_14DictionaryAttrEE3$_0EEbOT_T0_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  call void %0(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %11, i64 noundef %1) #32, !inline_history !1
  %i.ba = load ptr, ptr %11, align 8, !tbaa !154
  %.not.i.i3 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i3, label %_ZNO4mlir18InFlightDiagnosticlsIRA59_KcEEOS0_OT_.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  store i32 3, ptr %6, align 8, !tbaa !157
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.103, ptr %i.bc, align 8, !tbaa !145
  %.sroa.2.0..sroa_idx.i.i.i.i.i4 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 58, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i4, align 8, !tbaa !146
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 3 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !125 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %11, i64 36
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !158
  %.not.i.i.i.i.i5 = icmp ult i32 %i.be, %i.bg
  br i1 %.not.i.i.i.i.i5, label %bb.w, label %bb.v, !prof !159

bb.v:                                             ; preds = %bb.u
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %_ZN4mlir10Diagnostic6appendIRA59_KcEERS0_OT_.exit.i.i

bb.w:                                             ; preds = %bb.u
  %i.bh = zext i32 %i.be to i64
  %i.bi = load ptr, ptr %i.bb, align 8, !tbaa !124
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %i.bi, i64 %i.bh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  %i.bk = load i32, ptr %i.bd, align 8, !tbaa !125
  %i.bl = add i32 %i.bk, 1
  store i32 %i.bl, ptr %i.bd, align 8, !tbaa !125
  br label %_ZN4mlir10Diagnostic6appendIRA59_KcEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendIRA59_KcEERS0_OT_.exit.i.i: ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA59_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA59_KcEEOS0_OT_.exit: ; preds = %bb.t, %_ZN4mlir10Diagnostic6appendIRA59_KcEERS0_OT_.exit.i.i
  %i.bm = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %11) #32
  %i.bn = load ptr, ptr %11, align 8, !tbaa !154
  %.not.i6 = icmp eq ptr %i.bn, null
  br i1 %.not.i6, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA59_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %11) #32
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZNO4mlir18InFlightDiagnosticlsIRA59_KcEEOS0_OT_.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %11, i64 200 ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 8, !tbaa !160, !range !161, !noundef !162
  %i.bq = trunc nuw i8 %i.bp to i1
  store i8 0, ptr %i.bo, align 8, !tbaa !160
  br i1 %i.bq, label %bb.z, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit7

bb.z:                                             ; preds = %bb.y
  %i.br = getelementptr inbounds nuw i8, ptr %11, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.br) #32
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit7

_ZN4mlir18InFlightDiagnosticD2Ev.exit7:           ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  br label %"_ZN4llvm6any_ofIRN4mlir9ArrayAttrEZNS1_3gpu18KernelMetadataAttr6verifyENS_12function_refIFNS1_18InFlightDiagnosticEvEEENS1_10StringAttrENS1_4TypeES2_NS1_14DictionaryAttrEE3$_0EEbOT_T0_.exit.thread"

"_ZN4llvm6any_ofIRN4mlir9ArrayAttrEZNS1_3gpu18KernelMetadataAttr6verifyENS_12function_refIFNS1_18InFlightDiagnosticEvEEENS1_10StringAttrENS1_4TypeES2_NS1_14DictionaryAttrEE3$_0EEbOT_T0_.exit.thread": ; preds = %bb.s, %._crit_edge.i.i.i.i.i.i, %bb.i, %"_ZN4llvm6any_ofIRN4mlir9ArrayAttrEZNS1_3gpu18KernelMetadataAttr6verifyENS_12function_refIFNS1_18InFlightDiagnosticEvEEENS1_10StringAttrENS1_4TypeES2_NS1_14DictionaryAttrEE3$_0EEbOT_T0_.exit", %_ZN4mlir18InFlightDiagnosticD2Ev.exit7, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.02.0 = phi i8 [ %i.p, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ %i.bm, %_ZN4mlir18InFlightDiagnosticD2Ev.exit7 ], [ 1, %bb.i ], [ 1, %"_ZN4llvm6any_ofIRN4mlir9ArrayAttrEZNS1_3gpu18KernelMetadataAttr6verifyENS_12function_refIFNS1_18InFlightDiagnosticEvEEENS1_10StringAttrENS1_4TypeES2_NS1_14DictionaryAttrEE3$_0EEbOT_T0_.exit" ], [ 1, %._crit_edge.i.i.i.i.i.i ], [ 1, %bb.s ]
  ret i8 %.sroa.02.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4mlir3gpu15KernelTableAttr3getEPNS_11MLIRContextEN4llvm8ArrayRefINS0_18KernelMetadataAttrEEEb(ptr noundef %0, ptr %1, i64 %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"struct.std::array.6126", align 8  ; 4 uses
  %5 = alloca %"class.llvm::function_ref.6122", align 8 ; 5 uses
  %6 = alloca %"class.std::tuple.5623", align 8   ; 6 uses
  %7 = alloca %class.anon.6128, align 8           ; 4 uses
  %8 = alloca %class.anon.6129, align 8           ; 5 uses
  %9 = alloca %"class.llvm::function_ref.3455", align 8 ; 5 uses
  %10 = alloca %class.anon.6127, align 8          ; 5 uses
  %11 = alloca %"struct.std::array.6126", align 8 ; 4 uses
  %12 = alloca %"class.llvm::function_ref.6122", align 8 ; 5 uses
  %13 = alloca %"class.std::tuple.5623", align 8  ; 6 uses
  %14 = alloca %class.anon.6124, align 8          ; 4 uses
  %15 = alloca %class.anon.6125, align 8          ; 5 uses
  %16 = alloca %"class.llvm::function_ref.3455", align 8 ; 5 uses
  %17 = alloca %class.anon.6123, align 8          ; 5 uses
  %18 = alloca %"class.mlir::StringAttr", align 8 ; 5 uses
  %19 = alloca %"class.mlir::StringAttr", align 8 ; 5 uses
  %20 = alloca %"class.llvm::SmallVector.1251", align 8 ; 11 uses
  br i1 %3, label %_ZN4llvm9is_sortedIRNS_8ArrayRefIN4mlir3gpu18KernelMetadataAttrEEEEEbOT_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.idx.i = shl nuw nsw i64 %2, 3                 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i
  %switch = icmp ult i64 %2, 2
  br i1 %switch, label %_ZN4llvm9is_sortedIRNS_8ArrayRefIN4mlir3gpu18KernelMetadataAttrEEEEEbOT_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %.0.i.i.i.i11 = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.c

.preheader.i.i.i.i:                               ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPKN4mlir3gpu18KernelMetadataAttrES7_EEbT_T0_.exit.i.i.i.i
  %.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i14, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.0.i.i.i.i, %i.a
  br i1 %.not.i.i.i.i, label %_ZN4llvm9is_sortedIRNS_8ArrayRefIN4mlir3gpu18KernelMetadataAttrEEEEEbOT_.exit.thread, label %bb.c, !llvm.loop !24

bb.c:                                             ; preds = %.lr.ph, %.preheader.i.i.i.i
  %.0.i.i.i.i14 = phi ptr [ %.0.i.i.i.i11, %.lr.ph ], [ %.0.i.i.i.i, %.preheader.i.i.i.i ] ; 3 uses
  %.015.i.i.i.i13 = phi ptr [ %1, %.lr.ph ], [ %.0.i.i.i.i14, %.preheader.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #32
  %i.b = load ptr, ptr %.0.i.i.i.i14, align 8, !tbaa !106
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %18, align 8
  %i.d = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %18) #32 ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 1        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #32
  %i.f = load ptr, ptr %.015.i.i.i.i13, align 8, !tbaa !106
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.0.0.copyload.i4.i.i.i.i.i.i = load ptr, ptr %i.g, align 8
  store ptr %.sroa.0.0.copyload.i4.i.i.i.i.i.i, ptr %19, align 8
  %i.h = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %19) #32 ; 2 uses
  %i.i = extractvalue { ptr, i64 } %i.h, 1        ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.i, i64 %i.e) ; 2 uses
  %i.j = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i, 0
  br i1 %i.j, label %.thread.i.i.i.i.i.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.k = extractvalue { ptr, i64 } %i.h, 0
  %i.l = extractvalue { ptr, i64 } %i.d, 0
  %i.m = call i32 @memcmp(ptr noundef %i.l, ptr noundef %i.k, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i) #37
  %.fr.i.i.i.i.i.i.i.i = freeze i32 %i.m          ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i.i.i.i, 0
  %.inv.i.i.i.i.i.i.i.i = icmp sgt i32 %.fr.i.i.i.i.i.i.i.i, -1
  %spec.select.i.i.i.i.i.i.i.i = select i1 %.inv.i.i.i.i.i.i.i.i, i32 1, i32 -1
  br i1 %.not.not.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPKN4mlir3gpu18KernelMetadataAttrES7_EEbT_T0_.exit.i.i.i.i

.thread.i.i.i.i.i.i.i.i:                          ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i.i, %bb.c
  %21 = icmp eq i64 %i.e, %i.i
  br i1 %21, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPKN4mlir3gpu18KernelMetadataAttrES7_EEbT_T0_.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.thread.i.i.i.i.i.i.i.i
  %i.n = icmp ult i64 %i.e, %i.i
  br i1 %i.n, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPKN4mlir3gpu18KernelMetadataAttrES7_EEbT_T0_.exit.thread.i.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPKN4mlir3gpu18KernelMetadataAttrES7_EEbT_T0_.exit.i.i.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPKN4mlir3gpu18KernelMetadataAttrES7_EEbT_T0_.exit.thread.i.i.i.i: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  br label %_ZN4llvm9is_sortedIRNS_8ArrayRefIN4mlir3gpu18KernelMetadataAttrEEEEEbOT_.exit

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPKN4mlir3gpu18KernelMetadataAttrES7_EEbT_T0_.exit.i.i.i.i: ; preds = %bb.d, %.thread.i.i.i.i.i.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i.i = phi i32 [ %spec.select.i.i.i.i.i.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i.i ], [ 1, %bb.d ], [ 0, %.thread.i.i.i.i.i.i.i.i ]
  %i.o = icmp slt i32 %.1.i.i.i.i.i.i.i.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  br i1 %i.o, label %_ZN4llvm9is_sortedIRNS_8ArrayRefIN4mlir3gpu18KernelMetadataAttrEEEEEbOT_.exit, label %.preheader.i.i.i.i, !llvm.loop !24

_ZN4llvm9is_sortedIRNS_8ArrayRefIN4mlir3gpu18KernelMetadataAttrEEEEEbOT_.exit.thread: ; preds = %.preheader.i.i.i.i, %bb.b, %bb.a
  %i.p = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4mlir11MLIRContext19getAttributeUniquerEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #32
  store ptr @_ZN4mlir6detail14TypeIDResolverINS_3gpu15KernelTableAttrEvE2idE, ptr %17, align 8, !tbaa !102
  %i.q = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %0, ptr %i.q, align 8, !tbaa !394
  %i.r = ptrtoint ptr %17 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  store ptr @_ZN4llvm12function_refIFvPN4mlir3gpu6detail22KernelTableAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_15KernelTableAttrEJRNS_8ArrayRefINS2_18KernelMetadataAttrEEEEEENSt9enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS5_, ptr %12, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.r, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  store ptr %1, ptr %13, align 8, !tbaa !396
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !146
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %2
  %i.u = call noundef i64 @_ZN4llvm7hashing6detail23hash_combine_range_implIPKN4mlir3gpu18KernelMetadataAttrEEENS_9hash_codeET_S9_(ptr noundef %1, ptr noundef %i.t)
  store i64 %i.u, ptr %11, align 8
  %i.v = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %11, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  %i.w = trunc i64 %i.v to i32
  %i.x = xor i32 %i.w, -313160499
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  store ptr %13, ptr %14, align 8, !tbaa !398
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  store ptr %13, ptr %15, align 8, !tbaa !398
  %i.y = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %12, ptr %i.y, align 8, !tbaa !400
  %i.z = ptrtoint ptr %14 to i64
  store ptr @_ZN4llvm12function_refIFPN4mlir14StorageUniquer11BaseStorageERNS2_16StorageAllocatorEEE11callback_fnIZNS2_3getINS1_3gpu6detail22KernelTableAttrStorageEJRNS_8ArrayRefINSB_18KernelMetadataAttrEEEEEEPT_NS0_IFvSJ_EEENS1_6TypeIDEDpOT0_EUlS6_E_EES4_lS6_, ptr %16, align 8, !tbaa !285
  %i.aa = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ab = ptrtoint ptr %15 to i64
  store i64 %i.ab, ptr %i.aa, align 8, !tbaa !286
  %i.ac = call noundef ptr @_ZN4mlir14StorageUniquer28getParametricStorageTypeImplENS_6TypeIDEjN4llvm12function_refIFbPKNS0_11BaseStorageEEEENS3_IFPS4_RNS0_16StorageAllocatorEEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr nonnull @_ZN4mlir6detail14TypeIDResolverINS_3gpu15KernelTableAttrEvE2idE, i32 noundef %i.x, ptr nonnull @_ZN4llvm12function_refIFbPKN4mlir14StorageUniquer11BaseStorageEEE11callback_fnIZNS2_3getINS1_3gpu6detail22KernelTableAttrStorageEJRNS_8ArrayRefINSA_18KernelMetadataAttrEEEEEEPT_NS0_IFvSI_EEENS1_6TypeIDEDpOT0_EUlS5_E_EEblS5_, i64 %i.z, ptr noundef nonnull byval(%"class.llvm::function_ref.3455") align 8 %16) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  br label %bb.g

_ZN4llvm9is_sortedIRNS_8ArrayRefIN4mlir3gpu18KernelMetadataAttrEEEEEbOT_.exit: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPKN4mlir3gpu18KernelMetadataAttrES7_EEbT_T0_.exit.i.i.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPKN4mlir3gpu18KernelMetadataAttrES7_EEbT_T0_.exit.thread.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #32
  %i.ad = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  store ptr %i.ad, ptr %20, align 8, !tbaa !124
  %i.ae = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 5 uses
  store i32 0, ptr %i.ae, align 8, !tbaa !125
  %i.af = getelementptr inbounds nuw i8, ptr %20, i64 12
  store i32 6, ptr %i.af, align 4, !tbaa !158
  %i.ag = icmp ugt i64 %2, 6
  br i1 %i.ag, label %_ZN4llvm15SmallVectorImplIN4mlir3gpu18KernelMetadataAttrEE7reserveEm.exit.i.thread.i, label %_ZN4llvm15SmallVectorImplIN4mlir3gpu18KernelMetadataAttrEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir3gpu18KernelMetadataAttrEE7reserveEm.exit.i.thread.i: ; preds = %_ZN4llvm9is_sortedIRNS_8ArrayRefIN4mlir3gpu18KernelMetadataAttrEEEEEbOT_.exit
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %20, ptr noundef nonnull %i.ad, i64 noundef %2, i64 noundef 8) #32
  %.pre8.pre.i.i = load i32, ptr %i.ae, align 8, !tbaa !125
  %i.ah = zext i32 %.pre8.pre.i.i to i64
  %.pre = load ptr, ptr %20, align 8, !tbaa !124
  br label %_ZN4llvm15SmallVectorImplIN4mlir3gpu18KernelMetadataAttrEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir3gpu18KernelMetadataAttrEE7reserveEm.exit.i.i: ; preds = %_ZN4llvm9is_sortedIRNS_8ArrayRefIN4mlir3gpu18KernelMetadataAttrEEEEEbOT_.exit, %_ZN4llvm15SmallVectorImplIN4mlir3gpu18KernelMetadataAttrEE7reserveEm.exit.i.thread.i
  %i.ai = phi ptr [ %.pre, %_ZN4llvm15SmallVectorImplIN4mlir3gpu18KernelMetadataAttrEE7reserveEm.exit.i.thread.i ], [ %i.ad, %_ZN4llvm9is_sortedIRNS_8ArrayRefIN4mlir3gpu18KernelMetadataAttrEEEEEbOT_.exit ]
  %.pre8.i5.i = phi i64 [ %i.ah, %_ZN4llvm15SmallVectorImplIN4mlir3gpu18KernelMetadataAttrEE7reserveEm.exit.i.thread.i ], [ 0, %_ZN4llvm9is_sortedIRNS_8ArrayRefIN4mlir3gpu18KernelMetadataAttrEEEEEbOT_.exit ]
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.pre8.i5.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr align 8 %1, i64 %.idx.i, i1 false)
  %.pre.i.i = load i32, ptr %i.ae, align 8, !tbaa !125
  %i.ak = trunc i64 %2 to i32
  %i.al = add i32 %.pre.i.i, %i.ak                ; 3 uses
  store i32 %i.al, ptr %i.ae, align 8, !tbaa !125
  %i.am = icmp ult i32 %i.al, 2
  br i1 %i.am, label %_ZN4llvm14array_pod_sortIPN4mlir3gpu18KernelMetadataAttrEEEvT_S5_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir3gpu18KernelMetadataAttrEE7reserveEm.exit.i.i
  %i.an = zext i32 %i.al to i64
  %i.ao = load ptr, ptr %20, align 8, !tbaa !124
  call void @qsort(ptr noundef nonnull %i.ao, i64 noundef %i.an, i64 noundef 8, ptr noundef nonnull @_ZN4llvm25array_pod_sort_comparatorIN4mlir3gpu18KernelMetadataAttrEEEiPKvS5_) #32
  br label %_ZN4llvm14array_pod_sortIPN4mlir3gpu18KernelMetadataAttrEEEvT_S5_.exit

_ZN4llvm14array_pod_sortIPN4mlir3gpu18KernelMetadataAttrEEEvT_S5_.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir3gpu18KernelMetadataAttrEE7reserveEm.exit.i.i, %bb.e
  %i.ap = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4mlir11MLIRContext19getAttributeUniquerEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  store ptr @_ZN4mlir6detail14TypeIDResolverINS_3gpu15KernelTableAttrEvE2idE, ptr %10, align 8, !tbaa !102
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %0, ptr %i.aq, align 8, !tbaa !402
  %i.ar = ptrtoint ptr %10 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr @_ZN4llvm12function_refIFvPN4mlir3gpu6detail22KernelTableAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_15KernelTableAttrEJRNS_11SmallVectorINS2_18KernelMetadataAttrELj6EEEEEENSt9enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS5_, ptr %5, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ar, ptr %i.as, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !1370)
  %i.at = load ptr, ptr %20, align 8, !tbaa !124, !noalias !1370 ; 3 uses
  store ptr %i.at, ptr %6, align 8, !tbaa !404, !alias.scope !1370
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.av = load i32, ptr %i.ae, align 8, !tbaa !125, !noalias !1370
  %i.aw = zext i32 %i.av to i64                   ; 2 uses
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !405, !alias.scope !1370
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.aw
  %i.ay = call noundef i64 @_ZN4llvm7hashing6detail23hash_combine_range_implIPKN4mlir3gpu18KernelMetadataAttrEEENS_9hash_codeET_S9_(ptr noundef %i.at, ptr noundef %i.ax)
  store i64 %i.ay, ptr %4, align 8
  %i.az = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %4, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %i.ba = trunc i64 %i.az to i32
  %i.bb = xor i32 %i.ba, -313160499
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  store ptr %6, ptr %7, align 8, !tbaa !398
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  store ptr %6, ptr %8, align 8, !tbaa !398
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %5, ptr %i.bc, align 8, !tbaa !400
  %i.bd = ptrtoint ptr %7 to i64
  store ptr @_ZN4llvm12function_refIFPN4mlir14StorageUniquer11BaseStorageERNS2_16StorageAllocatorEEE11callback_fnIZNS2_3getINS1_3gpu6detail22KernelTableAttrStorageEJRNS_11SmallVectorINSB_18KernelMetadataAttrELj6EEEEEEPT_NS0_IFvSJ_EEENS1_6TypeIDEDpOT0_EUlS6_E_EES4_lS6_, ptr %9, align 8, !tbaa !285
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bf = ptrtoint ptr %8 to i64
  store i64 %i.bf, ptr %i.be, align 8, !tbaa !286
  %i.bg = call noundef ptr @_ZN4mlir14StorageUniquer28getParametricStorageTypeImplENS_6TypeIDEjN4llvm12function_refIFbPKNS0_11BaseStorageEEEENS3_IFPS4_RNS0_16StorageAllocatorEEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr nonnull @_ZN4mlir6detail14TypeIDResolverINS_3gpu15KernelTableAttrEvE2idE, i32 noundef %i.bb, ptr nonnull @_ZN4llvm12function_refIFbPKN4mlir14StorageUniquer11BaseStorageEEE11callback_fnIZNS2_3getINS1_3gpu6detail22KernelTableAttrStorageEJRNS_11SmallVectorINSA_18KernelMetadataAttrELj6EEEEEEPT_NS0_IFvSI_EEENS1_6TypeIDEDpOT0_EUlS5_E_EEblS5_, i64 %i.bd, ptr noundef nonnull byval(%"class.llvm::function_ref.3455") align 8 %9) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  %i.bh = load ptr, ptr %20, align 8, !tbaa !124  ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.ad
  br i1 %i.bi, label %_ZN4llvm11SmallVectorIN4mlir3gpu18KernelMetadataAttrELj6EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm14array_pod_sortIPN4mlir3gpu18KernelMetadataAttrEEEvT_S5_.exit
  call void @free(ptr noundef %i.bh) #32
  br label %_ZN4llvm11SmallVectorIN4mlir3gpu18KernelMetadataAttrELj6EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir3gpu18KernelMetadataAttrELj6EED2Ev.exit: ; preds = %_ZN4llvm14array_pod_sortIPN4mlir3gpu18KernelMetadataAttrEEEvT_S5_.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  br label %bb.g

bb.g:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir3gpu18KernelMetadataAttrELj6EED2Ev.exit, %_ZN4llvm9is_sortedIRNS_8ArrayRefIN4mlir3gpu18KernelMetadataAttrEEEEEbOT_.exit.thread
  %.sroa.02.0 = phi ptr [ %i.ac, %_ZN4llvm9is_sortedIRNS_8ArrayRefIN4mlir3gpu18KernelMetadataAttrEEEEEbOT_.exit.thread ], [ %i.bg, %_ZN4llvm11SmallVectorIN4mlir3gpu18KernelMetadataAttrELj6EED2Ev.exit ]
  ret ptr %.sroa.02.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir3gpu15KernelTableAttr10getCheckedEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEEPNS_11MLIRContextENS2_8ArrayRefINS0_18KernelMetadataAttrEEEb(ptr %0, i64 %1, ptr noundef %2, ptr %3, i64 %4, i1 noundef zeroext %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.mlir::StringAttr", align 8  ; 5 uses
  %7 = alloca %"class.mlir::StringAttr", align 8  ; 5 uses
  %i.a = alloca ptr, align 8                      ; 3 uses
  %8 = alloca %"class.llvm::SmallVector.1251", align 8 ; 11 uses
  %9 = alloca %"class.llvm::SmallVector.1251", align 8 ; 8 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !265
  br i1 %5, label %_ZN4llvm9is_sortedIRNS_8ArrayRefIN4mlir3gpu18KernelMetadataAttrEEEEEbOT_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.idx.i = shl nuw nsw i64 %4, 3                 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 %.idx.i
  %switch = icmp ult i64 %4, 2
  br i1 %switch, label %_ZN4llvm9is_sortedIRNS_8ArrayRefIN4mlir3gpu18KernelMetadataAttrEEEEEbOT_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %.0.i.i.i.i24 = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.c

.preheader.i.i.i.i:                               ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPKN4mlir3gpu18KernelMetadataAttrES7_EEbT_T0_.exit.i.i.i.i
  %.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i27, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.0.i.i.i.i, %i.b
  br i1 %.not.i.i.i.i, label %_ZN4llvm9is_sortedIRNS_8ArrayRefIN4mlir3gpu18KernelMetadataAttrEEEEEbOT_.exit.thread, label %bb.c, !llvm.loop !24

bb.c:                                             ; preds = %.lr.ph, %.preheader.i.i.i.i
  %.0.i.i.i.i27 = phi ptr [ %.0.i.i.i.i24, %.lr.ph ], [ %.0.i.i.i.i, %.preheader.i.i.i.i ] ; 3 uses
  %.015.i.i.i.i26 = phi ptr [ %3, %.lr.ph ], [ %.0.i.i.i.i27, %.preheader.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.c = load ptr, ptr %.0.i.i.i.i27, align 8, !tbaa !106
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.d, align 8
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %6, align 8
  %i.e = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #32 ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 1        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  %i.g = load ptr, ptr %.015.i.i.i.i26, align 8, !tbaa !106
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.0.0.copyload.i4.i.i.i.i.i.i = load ptr, ptr %i.h, align 8
  store ptr %.sroa.0.0.copyload.i4.i.i.i.i.i.i, ptr %7, align 8
  %i.i = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #32 ; 2 uses
  %i.j = extractvalue { ptr, i64 } %i.i, 1        ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.j, i64 %i.f) ; 2 uses
  %i.k = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i, 0
  br i1 %i.k, label %.thread.i.i.i.i.i.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.l = extractvalue { ptr, i64 } %i.i, 0
  %i.m = extractvalue { ptr, i64 } %i.e, 0
  %i.n = call i32 @memcmp(ptr noundef %i.m, ptr noundef %i.l, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i) #37
  %.fr.i.i.i.i.i.i.i.i = freeze i32 %i.n          ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i.i.i.i, 0
  %.inv.i.i.i.i.i.i.i.i = icmp sgt i32 %.fr.i.i.i.i.i.i.i.i, -1
  %spec.select.i.i.i.i.i.i.i.i = select i1 %.inv.i.i.i.i.i.i.i.i, i32 1, i32 -1
  br i1 %.not.not.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPKN4mlir3gpu18KernelMetadataAttrES7_EEbT_T0_.exit.i.i.i.i

.thread.i.i.i.i.i.i.i.i:                          ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i.i, %bb.c
  %10 = icmp eq i64 %i.f, %i.j
  br i1 %10, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPKN4mlir3gpu18KernelMetadataAttrES7_EEbT_T0_.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.thread.i.i.i.i.i.i.i.i
  %i.o = icmp ult i64 %i.f, %i.j
  br i1 %i.o, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPKN4mlir3gpu18KernelMetadataAttrES7_EEbT_T0_.exit.thread.i.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPKN4mlir3gpu18KernelMetadataAttrES7_EEbT_T0_.exit.i.i.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPKN4mlir3gpu18KernelMetadataAttrES7_EEbT_T0_.exit.thread.i.i.i.i: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %_ZN4llvm9is_sortedIRNS_8ArrayRefIN4mlir3gpu18KernelMetadataAttrEEEEEbOT_.exit

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPKN4mlir3gpu18KernelMetadataAttrES7_EEbT_T0_.exit.i.i.i.i: ; preds = %bb.d, %.thread.i.i.i.i.i.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i.i = phi i32 [ %spec.select.i.i.i.i.i.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i.i ], [ 1, %bb.d ], [ 0, %.thread.i.i.i.i.i.i.i.i ]
  %i.p = icmp slt i32 %.1.i.i.i.i.i.i.i.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br i1 %i.p, label %_ZN4llvm9is_sortedIRNS_8ArrayRefIN4mlir3gpu18KernelMetadataAttrEEEEEbOT_.exit, label %.preheader.i.i.i.i, !llvm.loop !24

_ZN4llvm9is_sortedIRNS_8ArrayRefIN4mlir3gpu18KernelMetadataAttrEEEEEbOT_.exit.thread: ; preds = %.preheader.i.i.i.i, %bb.b, %bb.a
  %i.q = call ptr @_ZN4mlir6detail15StorageUserBaseINS_3gpu15KernelTableAttrENS_9AttributeENS2_6detail22KernelTableAttrStorageENS0_16AttributeUniquerEJEE10getCheckedIRPNS_11MLIRContextEJN4llvm8ArrayRefINS2_18KernelMetadataAttrEEEEvEES3_NSD_12function_refIFNS_18InFlightDiagnosticEvEEEOT_DpT0_(ptr %0, i64 %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr %3, i64 %4)
  br label %bb.i

_ZN4llvm9is_sortedIRNS_8ArrayRefIN4mlir3gpu18KernelMetadataAttrEEEEEbOT_.exit: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPKN4mlir3gpu18KernelMetadataAttrES7_EEbT_T0_.exit.i.i.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPKN4mlir3gpu18KernelMetadataAttrES7_EEbT_T0_.exit.thread.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.r, ptr %8, align 8, !tbaa !124
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  store i32 0, ptr %i.s, align 8, !tbaa !125
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 6, ptr %i.t, align 4, !tbaa !158
  %i.u = icmp ugt i64 %4, 6
  br i1 %i.u, label %_ZN4llvm15SmallVectorImplIN4mlir3gpu18KernelMetadataAttrEE7reserveEm.exit.i.thread.i, label %_ZN4llvm15SmallVectorImplIN4mlir3gpu18KernelMetadataAttrEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir3gpu18KernelMetadataAttrEE7reserveEm.exit.i.thread.i: ; preds = %_ZN4llvm9is_sortedIRNS_8ArrayRefIN4mlir3gpu18KernelMetadataAttrEEEEEbOT_.exit
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull %i.r, i64 noundef %4, i64 noundef 8) #32
  %.pre8.pre.i.i = load i32, ptr %i.s, align 8, !tbaa !125
  %i.v = zext i32 %.pre8.pre.i.i to i64
  %.pre = load ptr, ptr %8, align 8, !tbaa !124
  br label %_ZN4llvm15SmallVectorImplIN4mlir3gpu18KernelMetadataAttrEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir3gpu18KernelMetadataAttrEE7reserveEm.exit.i.i: ; preds = %_ZN4llvm9is_sortedIRNS_8ArrayRefIN4mlir3gpu18KernelMetadataAttrEEEEEbOT_.exit, %_ZN4llvm15SmallVectorImplIN4mlir3gpu18KernelMetadataAttrEE7reserveEm.exit.i.thread.i
  %i.w = phi ptr [ %.pre, %_ZN4llvm15SmallVectorImplIN4mlir3gpu18KernelMetadataAttrEE7reserveEm.exit.i.thread.i ], [ %i.r, %_ZN4llvm9is_sortedIRNS_8ArrayRefIN4mlir3gpu18KernelMetadataAttrEEEEEbOT_.exit ]
  %.pre8.i5.i = phi i64 [ %i.v, %_ZN4llvm15SmallVectorImplIN4mlir3gpu18KernelMetadataAttrEE7reserveEm.exit.i.thread.i ], [ 0, %_ZN4llvm9is_sortedIRNS_8ArrayRefIN4mlir3gpu18KernelMetadataAttrEEEEEbOT_.exit ]
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre8.i5.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 8 %3, i64 %.idx.i, i1 false)
  %.pre.i.i = load i32, ptr %i.s, align 8, !tbaa !125
  %i.y = trunc i64 %4 to i32
  %i.z = add i32 %.pre.i.i, %i.y                  ; 4 uses
  store i32 %i.z, ptr %i.s, align 8, !tbaa !125
  %i.aa = icmp ult i32 %i.z, 2
  br i1 %i.aa, label %_ZN4llvm14array_pod_sortIPN4mlir3gpu18KernelMetadataAttrEEEvT_S5_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir3gpu18KernelMetadataAttrEE7reserveEm.exit.i.i
  %i.ab = zext i32 %i.z to i64
  %i.ac = load ptr, ptr %8, align 8, !tbaa !124
  call void @qsort(ptr noundef nonnull %i.ac, i64 noundef %i.ab, i64 noundef 8, ptr noundef nonnull @_ZN4llvm25array_pod_sort_comparatorIN4mlir3gpu18KernelMetadataAttrEEEiPKvS5_) #32
  %.pre16 = load i32, ptr %i.s, align 8, !tbaa !125
  br label %_ZN4llvm14array_pod_sortIPN4mlir3gpu18KernelMetadataAttrEEEvT_S5_.exit

_ZN4llvm14array_pod_sortIPN4mlir3gpu18KernelMetadataAttrEEEvT_S5_.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir3gpu18KernelMetadataAttrEE7reserveEm.exit.i.i, %bb.e
  %i.ad = phi i32 [ %i.z, %_ZN4llvm15SmallVectorImplIN4mlir3gpu18KernelMetadataAttrEE7reserveEm.exit.i.i ], [ %.pre16, %bb.e ] ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store ptr %i.ae, ptr %9, align 8, !tbaa !124
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i32 0, ptr %i.af, align 8, !tbaa !125
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 6, ptr %i.ag, align 4, !tbaa !158
  %.not.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i, label %_ZN4llvm11SmallVectorIN4mlir3gpu18KernelMetadataAttrELj6EEC2ERKS4_.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm14array_pod_sortIPN4mlir3gpu18KernelMetadataAttrEEEvT_S5_.exit
  %i.ah = icmp ugt i32 %i.ad, 6
  br i1 %i.ah, label %_ZSt4copyIPKN4mlir3gpu18KernelMetadataAttrEPS2_ET0_T_S7_S6_.exit30.i.i, label %_ZSt4copyIPKN4mlir3gpu18KernelMetadataAttrEPS2_ET0_T_S7_S6_.exit30.i.thread.i

_ZSt4copyIPKN4mlir3gpu18KernelMetadataAttrEPS2_ET0_T_S7_S6_.exit30.i.i: ; preds = %bb.f
  %i.ai = zext i32 %i.ad to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull %i.ae, i64 noundef %i.ai, i64 noundef 8) #32
  %.pre.i = load i32, ptr %i.s, align 8, !tbaa !125 ; 2 uses
  %.not.i.i.i11 = icmp eq i32 %.pre.i, 0
  br i1 %.not.i.i.i11, label %.sink.split.i.i, label %_ZSt4copyIPKN4mlir3gpu18KernelMetadataAttrEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKN4mlir3gpu18KernelMetadataAttrEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge

_ZSt4copyIPKN4mlir3gpu18KernelMetadataAttrEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKN4mlir3gpu18KernelMetadataAttrEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge: ; preds = %_ZSt4copyIPKN4mlir3gpu18KernelMetadataAttrEPS2_ET0_T_S7_S6_.exit30.i.i
  %.pre17 = load ptr, ptr %9, align 8, !tbaa !124
  br label %_ZSt4copyIPKN4mlir3gpu18KernelMetadataAttrEPS2_ET0_T_S7_S6_.exit30.i.thread.i

_ZSt4copyIPKN4mlir3gpu18KernelMetadataAttrEPS2_ET0_T_S7_S6_.exit30.i.thread.i: ; preds = %_ZSt4copyIPKN4mlir3gpu18KernelMetadataAttrEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKN4mlir3gpu18KernelMetadataAttrEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge, %bb.f
  %i.aj = phi ptr [ %.pre17, %_ZSt4copyIPKN4mlir3gpu18KernelMetadataAttrEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKN4mlir3gpu18KernelMetadataAttrEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge ], [ %i.ae, %bb.f ]
  %i.ak = phi i32 [ %.pre.i, %_ZSt4copyIPKN4mlir3gpu18KernelMetadataAttrEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKN4mlir3gpu18KernelMetadataAttrEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge ], [ %i.ad, %bb.f ]
  %i.al = zext i32 %i.ak to i64
  %i.am = load ptr, ptr %8, align 8, !tbaa !124
  %gepdiff.i.i = shl nuw nsw i64 %i.al, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr align 8 %i.am, i64 %gepdiff.i.i, i1 false)
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %_ZSt4copyIPKN4mlir3gpu18KernelMetadataAttrEPS2_ET0_T_S7_S6_.exit30.i.thread.i, %_ZSt4copyIPKN4mlir3gpu18KernelMetadataAttrEPS2_ET0_T_S7_S6_.exit30.i.i
  store i32 %i.ad, ptr %i.af, align 8, !tbaa !125
  br label %_ZN4llvm11SmallVectorIN4mlir3gpu18KernelMetadataAttrELj6EEC2ERKS4_.exit

_ZN4llvm11SmallVectorIN4mlir3gpu18KernelMetadataAttrELj6EEC2ERKS4_.exit: ; preds = %_ZN4llvm14array_pod_sortIPN4mlir3gpu18KernelMetadataAttrEEEvT_S5_.exit, %.sink.split.i.i
  %i.an = call ptr @_ZN4mlir6detail15StorageUserBaseINS_3gpu15KernelTableAttrENS_9AttributeENS2_6detail22KernelTableAttrStorageENS0_16AttributeUniquerEJEE10getCheckedIRPNS_11MLIRContextEJN4llvm11SmallVectorINS2_18KernelMetadataAttrELj6EEEEvEES3_NSD_12function_refIFNS_18InFlightDiagnosticEvEEEOT_DpT0_(ptr %0, i64 %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr nofree noundef nonnull align 8 dereferenceable(64) %9)
  %i.ao = load ptr, ptr %9, align 8, !tbaa !124   ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.ae
  br i1 %i.ap, label %_ZN4llvm11SmallVectorIN4mlir3gpu18KernelMetadataAttrELj6EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir3gpu18KernelMetadataAttrELj6EEC2ERKS4_.exit
  call void @free(ptr noundef %i.ao) #32
  br label %_ZN4llvm11SmallVectorIN4mlir3gpu18KernelMetadataAttrELj6EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir3gpu18KernelMetadataAttrELj6EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIN4mlir3gpu18KernelMetadataAttrELj6EEC2ERKS4_.exit, %bb.g
  %i.aq = load ptr, ptr %8, align 8, !tbaa !124   ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.r
  br i1 %i.ar, label %_ZN4llvm11SmallVectorIN4mlir3gpu18KernelMetadataAttrELj6EED2Ev.exit12, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir3gpu18KernelMetadataAttrELj6EED2Ev.exit
  call void @free(ptr noundef %i.aq) #32
  br label %_ZN4llvm11SmallVectorIN4mlir3gpu18KernelMetadataAttrELj6EED2Ev.exit12

_ZN4llvm11SmallVectorIN4mlir3gpu18KernelMetadataAttrELj6EED2Ev.exit12: ; preds = %_ZN4llvm11SmallVectorIN4mlir3gpu18KernelMetadataAttrELj6EED2Ev.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  br label %bb.i

bb.i:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir3gpu18KernelMetadataAttrELj6EED2Ev.exit12, %_ZN4llvm9is_sortedIRNS_8ArrayRefIN4mlir3gpu18KernelMetadataAttrEEEEEbOT_.exit.thread
  %.sroa.09.0 = phi ptr [ %i.q, %_ZN4llvm9is_sortedIRNS_8ArrayRefIN4mlir3gpu18KernelMetadataAttrEEEEEbOT_.exit.thread ], [ %i.an, %_ZN4llvm11SmallVectorIN4mlir3gpu18KernelMetadataAttrELj6EED2Ev.exit12 ]
  ret ptr %.sroa.09.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN4mlir6detail15StorageUserBaseINS_3gpu15KernelTableAttrENS_9AttributeENS2_6detail22KernelTableAttrStorageENS0_16AttributeUniquerEJEE10getCheckedIRPNS_11MLIRContextEJN4llvm8ArrayRefINS2_18KernelMetadataAttrEEEEvEES3_NSD_12function_refIFNS_18InFlightDiagnosticEvEEEOT_DpT0_(ptr %0, i64 %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr %3, i64 %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"struct.std::array.6126", align 8  ; 4 uses
  %6 = alloca %"class.llvm::function_ref.6122", align 8 ; 5 uses
  %7 = alloca %"class.std::tuple.5623", align 8   ; 6 uses
  %8 = alloca %class.anon.6131, align 8           ; 4 uses
  %9 = alloca %class.anon.6132, align 8           ; 5 uses
  %10 = alloca %"class.llvm::function_ref.3455", align 8 ; 5 uses
  %11 = alloca %class.anon.6130, align 8          ; 5 uses
  %i.a = tail call range(i8 0, 2) i8 @_ZN4mlir3gpu15KernelTableAttr6verifyEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEENS2_8ArrayRefINS0_18KernelMetadataAttrEEE(ptr readonly %0, i64 %1, ptr readonly %3, i64 %4)
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !265    ; 2 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4mlir11MLIRContext19getAttributeUniquerEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  store ptr @_ZN4mlir6detail14TypeIDResolverINS_3gpu15KernelTableAttrEvE2idE, ptr %11, align 8, !tbaa !102
  %i.e = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.c, ptr %i.e, align 8, !tbaa !407
  %i.f = ptrtoint ptr %11 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store ptr @_ZN4llvm12function_refIFvPN4mlir3gpu6detail22KernelTableAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_15KernelTableAttrEJNS_8ArrayRefINS2_18KernelMetadataAttrEEEEEENSt9enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_, ptr %6, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.f, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  store ptr %3, ptr %7, align 8, !tbaa !396
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %4, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !146
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %4
  %i.i = call noundef i64 @_ZN4llvm7hashing6detail23hash_combine_range_implIPKN4mlir3gpu18KernelMetadataAttrEEENS_9hash_codeET_S9_(ptr noundef %3, ptr noundef %i.h)
  store i64 %i.i, ptr %5, align 8
  %i.j = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %5, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %i.k = trunc i64 %i.j to i32
  %i.l = xor i32 %i.k, -313160499
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  store ptr %7, ptr %8, align 8, !tbaa !398
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  store ptr %7, ptr %9, align 8, !tbaa !398
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %6, ptr %i.m, align 8, !tbaa !400
  %i.n = ptrtoint ptr %8 to i64
  store ptr @_ZN4llvm12function_refIFPN4mlir14StorageUniquer11BaseStorageERNS2_16StorageAllocatorEEE11callback_fnIZNS2_3getINS1_3gpu6detail22KernelTableAttrStorageEJNS_8ArrayRefINSB_18KernelMetadataAttrEEEEEEPT_NS0_IFvSI_EEENS1_6TypeIDEDpOT0_EUlS6_E_EES4_lS6_, ptr %10, align 8, !tbaa !285
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.p = ptrtoint ptr %9 to i64
  store i64 %i.p, ptr %i.o, align 8, !tbaa !286
  %i.q = call noundef ptr @_ZN4mlir14StorageUniquer28getParametricStorageTypeImplENS_6TypeIDEjN4llvm12function_refIFbPKNS0_11BaseStorageEEEENS3_IFPS4_RNS0_16StorageAllocatorEEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr nonnull @_ZN4mlir6detail14TypeIDResolverINS_3gpu15KernelTableAttrEvE2idE, i32 noundef %i.l, ptr nonnull @_ZN4llvm12function_refIFbPKN4mlir14StorageUniquer11BaseStorageEEE11callback_fnIZNS2_3getINS1_3gpu6detail22KernelTableAttrStorageEJNS_8ArrayRefINSA_18KernelMetadataAttrEEEEEEPT_NS0_IFvSH_EEENS1_6TypeIDEDpOT0_EUlS5_E_EEblS5_, i64 %i.n, ptr noundef nonnull byval(%"class.llvm::function_ref.3455") align 8 %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.06.0 = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.06.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN4mlir6detail15StorageUserBaseINS_3gpu15KernelTableAttrENS_9AttributeENS2_6detail22KernelTableAttrStorageENS0_16AttributeUniquerEJEE10getCheckedIRPNS_11MLIRContextEJN4llvm11SmallVectorINS2_18KernelMetadataAttrELj6EEEEvEES3_NSD_12function_refIFNS_18InFlightDiagnosticEvEEEOT_DpT0_(ptr %0, i64 %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr nofree noundef align 8 dereferenceable(64) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"struct.std::array.6126", align 8  ; 4 uses
  %5 = alloca %"class.llvm::function_ref.6122", align 8 ; 5 uses
  %6 = alloca %"class.std::tuple.5623", align 8   ; 6 uses
  %7 = alloca %class.anon.6134, align 8           ; 4 uses
  %8 = alloca %class.anon.6135, align 8           ; 5 uses
  %9 = alloca %"class.llvm::function_ref.3455", align 8 ; 5 uses
  %10 = alloca %class.anon.6133, align 8          ; 5 uses
  %i.a = load ptr, ptr %3, align 8, !tbaa !124
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !125
  %i.d = zext i32 %i.c to i64
  %i.e = tail call range(i8 0, 2) i8 @_ZN4mlir3gpu15KernelTableAttr6verifyEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEENS2_8ArrayRefINS0_18KernelMetadataAttrEEE(ptr readonly %0, i64 %1, ptr readonly %i.a, i64 %i.d)
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %2, align 8, !tbaa !265    ; 2 uses
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4mlir11MLIRContext19getAttributeUniquerEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  store ptr @_ZN4mlir6detail14TypeIDResolverINS_3gpu15KernelTableAttrEvE2idE, ptr %10, align 8, !tbaa !102
end_hunk_0
