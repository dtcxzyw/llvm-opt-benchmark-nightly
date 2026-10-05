Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/GPUToLLVMSPV?download=true
inline.NumInlined: 4444
inline.NumDeleted: 2871
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK12_GLOBAL__N_120GPUBarrierConversion15matchAndRewriteEN4mlir3gpu9BarrierOpENS2_16BarrierOpAdaptorERNS1_25ConversionPatternRewriterE:bb.a
  %i.aa = extractvalue { ptr, i8 } %i.x, 1        ; 2 uses
  store i8 %i.aa, ptr %i.z, align 8
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %_ZNRSt8optionalIN4mlir9ArrayAttrEE5valueEv.exit, label %.loopexit

_ZNRSt8optionalIN4mlir9ArrayAttrEE5valueEv.exit:  ; preds = %_ZN4mlir7Builder7getTypeINS_4LLVM12LLVMVoidTypeEJEEET_DpOT0_.exit
  %i.ac = call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #28
  %i.ad = extractvalue { ptr, i64 } %i.ac, 0      ; 2 uses
  %i.ae = call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #28 ; 2 uses
  %i.af = extractvalue { ptr, i64 } %i.ae, 0
  %i.ag = extractvalue { ptr, i64 } %i.ae, 1
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ag ; 2 uses
  %.not39 = icmp eq ptr %i.ad, %i.ah
  br i1 %.not39, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNRSt8optionalIN4mlir9ArrayAttrEE5valueEv.exit, %bb.j
  %.041 = phi ptr [ %i.an, %bb.j ], [ %i.ad, %_ZNRSt8optionalIN4mlir9ArrayAttrEE5valueEv.exit ] ; 2 uses
  %.02740 = phi i64 [ %.1, %bb.j ], [ 0, %_ZNRSt8optionalIN4mlir9ArrayAttrEE5valueEv.exit ] ; 3 uses
  %i.ai = load i64, ptr %.041, align 8, !tbaa !210
  %i.aj = inttoptr i64 %i.ai to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  store ptr %i.aj, ptr %8, align 8
  %i.ak = call noundef i32 @_ZNK4mlir3gpu16AddressSpaceAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  switch i32 %i.ak, label %bb.j [
    i32 1, label %bb.h
    i32 2, label %bb.i
  ]

bb.h:                                             ; preds = %.lr.ph
  %i.al = or i64 %.02740, 2
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.am = or i64 %.02740, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %.lr.ph
  %.1 = phi i64 [ %.02740, %.lr.ph ], [ %i.al, %bb.h ], [ %i.am, %bb.i ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.041, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.an, %i.ah
  br i1 %.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.j, %_ZNRSt8optionalIN4mlir9ArrayAttrEE5valueEv.exit, %_ZN4mlir7Builder7getTypeINS_4LLVM12LLVMVoidTypeEJEEET_DpOT0_.exit
  %.2 = phi i64 [ 3, %_ZN4mlir7Builder7getTypeINS_4LLVM12LLVMVoidTypeEJEEET_DpOT0_.exit ], [ 0, %_ZNRSt8optionalIN4mlir9ArrayAttrEE5valueEv.exit ], [ %.1, %bb.j ]
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i30 = load ptr, ptr %i.ao, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %.sroa.02.0.copyload = load ptr, ptr %6, align 8, !tbaa !161
  %i.ap = call ptr @_ZN4mlir4LLVM10ConstantOp6createERNS_9OpBuilderENS_8LocationENS_4TypeEl(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr %.sroa.0.0.copyload.i30, ptr %.sroa.02.0.copyload, i64 noundef %.2) #28
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -16
  store ptr %i.aq, ptr %9, align 8
  %i.ar = ptrtoint ptr %9 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.w, ptr %5, align 8
  %i.as = call ptr @_ZN4mlir4LLVM6CallOp6createERNS_9OpBuilderENS_8LocationENS0_10LLVMFuncOpENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr %.sroa.0.0.copyload.i30, ptr %i.w, i64 %i.ar, i64 1) #28
  store ptr %i.as, ptr %4, align 8
  %i.at = call noundef i64 @_ZN4mlir4LLVM10LLVMFuncOp8getCConvEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #28
  call void @_ZN4mlir4LLVM6CallOp8setCConvENS0_5cconv5CConvE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %i.at) #28
  %i.au = load ptr, ptr %5, align 8, !tbaa !189   ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 44
  %i.aw = load i32, ptr %i.av, align 4            ; 2 uses
  %.not.i.i.i.i = icmp ugt i32 %i.aw, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ax = lshr i32 %i.aw, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i32 %i.ax, 1
  %i.ay = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i to i64
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 184
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !59
  %i.bc = load ptr, ptr %4, align 8, !tbaa !189   ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 44
  %i.be = load i32, ptr %i.bd, align 4            ; 2 uses
  %.not.i.i.i10.i = icmp ugt i32 %i.be, 16777215
  call void @llvm.assume(i1 %.not.i.i.i10.i)
  %i.bf = lshr i32 %i.be, 23
  %.lobit.i.i.i.i.i.i.i.i.i11.i = and i32 %i.bf, 1
  %i.bg = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i11.i to i64
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 144
  store ptr %i.bb, ptr %i.bi, align 8
  %i.bj = load ptr, ptr %5, align 8, !tbaa !189   ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 44
  %i.bl = load i32, ptr %i.bk, align 4            ; 2 uses
  %.not.i.i.i12.i = icmp ugt i32 %i.bl, 16777215
  call void @llvm.assume(i1 %.not.i.i.i12.i)
  %i.bm = lshr i32 %i.bl, 23
  %.lobit.i.i.i.i.i.i.i.i.i13.i = and i32 %i.bm, 1
  %i.bn = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i13.i to i64
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 352
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !59
  %i.br = load ptr, ptr %4, align 8, !tbaa !189   ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 44
  %i.bt = load i32, ptr %i.bs, align 4            ; 2 uses
  %.not.i.i.i14.i = icmp ugt i32 %i.bt, 16777215
  call void @llvm.assume(i1 %.not.i.i.i14.i)
  %i.bu = lshr i32 %i.bt, 23
  %.lobit.i.i.i.i.i.i.i.i.i15.i = and i32 %i.bu, 1
  %i.bv = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i15.i to i64
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.br, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 224
  store ptr %i.bq, ptr %i.bx, align 8
  %i.by = load ptr, ptr %5, align 8, !tbaa !189   ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 44
  %i.ca = load i32, ptr %i.bz, align 4            ; 2 uses
  %.not.i.i.i16.i = icmp ugt i32 %i.ca, 16777215
  call void @llvm.assume(i1 %.not.i.i.i16.i)
  %i.cb = lshr i32 %i.ca, 23
  %.lobit.i.i.i.i.i.i.i.i.i17.i = and i32 %i.cb, 1
  %i.cc = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i17.i to i64
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %i.by, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 568
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !59
  %i.cg = load ptr, ptr %4, align 8, !tbaa !189   ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 44
  %i.ci = load i32, ptr %i.ch, align 4            ; 2 uses
  %.not.i.i.i18.i = icmp ugt i32 %i.ci, 16777215
  call void @llvm.assume(i1 %.not.i.i.i18.i)
  %i.cj = lshr i32 %i.ci, 23
  %.lobit.i.i.i.i.i.i.i.i.i19.i = and i32 %i.cj, 1
  %i.ck = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i19.i to i64
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.cg, i64 %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 352
  store ptr %i.cf, ptr %i.cm, align 8
  %i.cn = load ptr, ptr %5, align 8, !tbaa !189   ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 44
  %i.cp = load i32, ptr %i.co, align 4            ; 2 uses
  %.not.i.i.i20.i = icmp ugt i32 %i.cp, 16777215
  call void @llvm.assume(i1 %.not.i.i.i20.i)
  %i.cq = lshr i32 %i.cp, 23
  %.lobit.i.i.i.i.i.i.i.i.i21.i = and i32 %i.cq, 1
  %i.cr = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i21.i to i64
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %i.cn, i64 %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 304
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !59
  %i.cv = load ptr, ptr %4, align 8, !tbaa !189   ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 44
  %i.cx = load i32, ptr %i.cw, align 4            ; 2 uses
  %.not.i.i.i22.i = icmp ugt i32 %i.cx, 16777215
  call void @llvm.assume(i1 %.not.i.i.i22.i)
  %i.cy = lshr i32 %i.cx, 23
  %.lobit.i.i.i.i.i.i.i.i.i23.i = and i32 %i.cy, 1
  %i.cz = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i23.i to i64
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.cv, i64 %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 184
  store ptr %i.cu, ptr %i.db, align 8
  %i.dc = load ptr, ptr %4, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @_ZN4mlir25ConversionPatternRewriter9replaceOpEPNS_9OperationES2_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %1, ptr noundef %i.dc) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  ret i8 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir22ConvertOpToLLVMPatternINS_3gpu9BarrierOpELb0EE15matchAndRewriteES2_NS1_23BarrierOpGenericAdaptorIN4llvm8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, ptr noundef byval(%"class.mlir::gpu::BarrierOpGenericAdaptor.608") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call i8 @_ZN4mlir17ConversionPattern14dispatchTo1To1INS_22ConvertOpToLLVMPatternINS_3gpu9BarrierOpELb0EEES4_EEN4llvm13LogicalResultERKT_T0_NSB_14GenericAdaptorINS6_8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, ptr noundef nonnull byval(%"class.mlir::gpu::BarrierOpGenericAdaptor.608") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %3)
  ret i8 %i.a
}

declare void @_ZN4mlir3gpu6detail27BarrierOpGenericAdaptorBaseC2ENS0_9BarrierOpE(ptr noundef nonnull align 8 dereferenceable(56), ptr) unnamed_addr #2

declare ptr @_ZN4mlir7Builder10getI32TypeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc ptr @_ZL21lookupOrCreateSPIRVFnPN4mlir9OperationEN4llvm9StringRefENS2_8ArrayRefINS_4TypeEEES5_bb(ptr noundef %0, ptr %1, i64 %2, ptr %3, i64 %4, ptr %5, i1 noundef zeroext %6, i1 noundef zeroext %7) unnamed_addr #0 {
bb.a:
  %8 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %9 = alloca %"class.mlir::LLVM::LLVMFuncOp", align 8 ; 7 uses
  %10 = alloca %"class.mlir::OpBuilder", align 8  ; 8 uses
  %11 = alloca %"class.llvm::ArrayRef.720", align 8 ; 2 uses
  %12 = alloca %"class.llvm::ArrayRef.721", align 8 ; 2 uses
  %13 = alloca %"class.std::optional.722", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = tail call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i8 5, ptr %i.c, align 8, !tbaa !213
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 1, ptr %i.d, align 1, !tbaa !214
  store ptr %1, ptr %8, align 8, !tbaa !137
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %2, ptr %i.e, align 8, !tbaa !137
  %i.f = call ptr @_ZN4mlir10StringAttr3getEPNS_11MLIRContextERKN4llvm5TwineE(ptr noundef %i.b, ptr noundef nonnull align 8 dereferenceable(34) %8) #28
  %i.g = call noundef ptr @_ZN4mlir11SymbolTable14lookupSymbolInEPNS_9OperationENS_10StringAttrE(ptr noundef nonnull %0, ptr %i.f) #28 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !52
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !122
  %i.k = icmp eq ptr %i.j, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM10LLVMFuncOpEvE2idE
  %14 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM10LLVMFuncOpEvE2idE
  %spec.select.i.i.i.i.i = and i1 %14, %i.k
  br i1 %spec.select.i.i.i.i.i, label %_ZN4llvm16dyn_cast_or_nullIN4mlir4LLVM10LLVMFuncOpENS1_9OperationEEEDaPT0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.m = load i32, ptr %i.l, align 4              ; 3 uses
  %i.n = and i32 %i.m, 8388607
  %i.o = icmp ne i32 %i.n, 0
  call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = lshr i32 %i.m, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i32 %i.q, 1
  %i.r = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i to i64
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.r
  %i.t = lshr i32 %i.m, 21
  %i.u = and i32 %i.t, 2040
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.y = load i32, ptr %i.x, align 8, !tbaa !721
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.w, i64 %i.z ; 4 uses
  %i.ab = call noundef ptr @_ZN4mlir6Region10getContextEv(ptr noundef nonnull align 8 dereferenceable(28) %i.aa) #28
  store ptr %i.ab, ptr %10, align 8, !tbaa !209
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i8 0, i64 24, i1 false)
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !722
  %i.ae = icmp eq ptr %i.aa, %i.ad
  br i1 %i.ae, label %_ZN4mlir9OpBuilderC2ERNS_6RegionEPNS0_8ListenerE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !723 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !723
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !724
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %i.ak, ptr %i.al, align 8
  br label %_ZN4mlir9OpBuilderC2ERNS_6RegionEPNS0_8ListenerE.exit

_ZN4mlir9OpBuilderC2ERNS_6RegionEPNS0_8ListenerE.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  %i.am = call ptr @_ZN4mlir4LLVM16LLVMFunctionType3getENS_4TypeEN4llvm8ArrayRefIS2_EEb(ptr %5, ptr %3, i64 %4, i1 noundef zeroext false) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %13, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  store i8 0, ptr %i.an, align 8, !tbaa !726
  %i.ao = call ptr @_ZN4mlir4LLVM10LLVMFuncOp6createERNS_9OpBuilderENS_8LocationEN4llvm9StringRefENS_4TypeENS0_7linkage7LinkageEbNS0_5cconv5CConvENS_13SymbolRefAttrENS5_8ArrayRefINS_14NamedAttributeEEENSD_INS_14DictionaryAttrEEESt8optionalImE(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr %.sroa.0.0.copyload.i, ptr %1, i64 %2, ptr %i.am, i64 noundef 0, i1 noundef zeroext false, i64 noundef 0, i64 0, ptr noundef nonnull byval(%"class.llvm::ArrayRef.720") align 8 %11, ptr noundef nonnull byval(%"class.llvm::ArrayRef.721") align 8 %12, ptr noundef nonnull byval(%"class.std::optional.722") align 8 %13) #28
  store ptr %i.ao, ptr %9, align 8
  call void @_ZN4mlir4LLVM10LLVMFuncOp8setCConvENS0_5cconv5CConvE(ptr noundef nonnull align 8 dereferenceable(8) %9, i64 noundef 75) #28
  call void @_ZN4mlir4LLVM10LLVMFuncOp11setNoUnwindEb(ptr noundef nonnull align 8 dereferenceable(8) %9, i1 noundef zeroext true) #28
  call void @_ZN4mlir4LLVM10LLVMFuncOp13setWillReturnEb(ptr noundef nonnull align 8 dereferenceable(8) %9, i1 noundef zeroext true) #28
  br i1 %6, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4mlir9OpBuilderC2ERNS_6RegionEPNS0_8ListenerE.exit
  %i.ap = load ptr, ptr %10, align 8, !tbaa !209
  %i.aq = call ptr @_ZN4mlir4LLVM17MemoryEffectsAttr3getEPNS_11MLIRContextENS0_10ModRefInfoES4_S4_S4_S4_S4_(ptr noundef %i.ap, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0) #28
  %i.ar = load ptr, ptr %9, align 8, !tbaa !189   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 44
  %i.at = load i32, ptr %i.as, align 4            ; 2 uses
  %.not.i.i.i = icmp ugt i32 %i.at, 16777215
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.au = lshr i32 %i.at, 23
  %.lobit.i.i.i.i.i.i.i.i.i = and i32 %i.au, 1
  %i.av = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i to i64
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 304
  store ptr %i.aq, ptr %i.ax, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN4mlir9OpBuilderC2ERNS_6RegionEPNS0_8ListenerE.exit
  call void @_ZN4mlir4LLVM10LLVMFuncOp13setConvergentEb(ptr noundef nonnull align 8 dereferenceable(8) %9, i1 noundef zeroext %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  %.pre = load ptr, ptr %9, align 8
  br label %_ZN4llvm16dyn_cast_or_nullIN4mlir4LLVM10LLVMFuncOpENS1_9OperationEEEDaPT0_.exit

_ZN4llvm16dyn_cast_or_nullIN4mlir4LLVM10LLVMFuncOpENS1_9OperationEEEDaPT0_.exit: ; preds = %bb.b, %bb.f
  %i.ay = phi ptr [ %.pre, %bb.f ], [ %i.g, %bb.b ]
  ret ptr %i.ay
}

declare { ptr, i8 } @_ZN4mlir3gpu6detail27BarrierOpGenericAdaptorBase16getAddressSpacesEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #2

declare noundef i32 @_ZNK4mlir3gpu16AddressSpaceAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare ptr @_ZN4mlir4LLVM10ConstantOp6createERNS_9OpBuilderENS_8LocationENS_4TypeEl(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, i64 noundef) local_unnamed_addr #2

declare void @_ZN4mlir25ConversionPatternRewriter9replaceOpEPNS_9OperationES2_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef) unnamed_addr #2

declare noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4mlir11MLIRContext14getTypeUniquerEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef ptr @_ZN4mlir14StorageUniquer16getSingletonImplENS_6TypeIDE(ptr noundef nonnull align 8 dereferenceable(8), ptr) local_unnamed_addr #2

declare ptr @_ZN4mlir4LLVM10LLVMFuncOp6createERNS_9OpBuilderENS_8LocationEN4llvm9StringRefENS_4TypeENS0_7linkage7LinkageEbNS0_5cconv5CConvENS_13SymbolRefAttrENS5_8ArrayRefINS_14NamedAttributeEEENSD_INS_14DictionaryAttrEEESt8optionalImE(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, i64, ptr, i64 noundef, i1 noundef zeroext, i64 noundef, i64, ptr noundef byval(%"class.llvm::ArrayRef.720") align 8, ptr noundef byval(%"class.llvm::ArrayRef.721") align 8, ptr noundef byval(%"class.std::optional.722") align 8) local_unnamed_addr #2

declare ptr @_ZN4mlir4LLVM16LLVMFunctionType3getENS_4TypeEN4llvm8ArrayRefIS2_EEb(ptr, ptr, i64, i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN4mlir4LLVM10LLVMFuncOp8setCConvENS0_5cconv5CConvE(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

declare void @_ZN4mlir4LLVM10LLVMFuncOp11setNoUnwindEb(ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN4mlir4LLVM10LLVMFuncOp13setWillReturnEb(ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN4mlir4LLVM10LLVMFuncOp13setConvergentEb(ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #2

declare noundef ptr @_ZN4mlir11SymbolTable14lookupSymbolInEPNS_9OperationENS_10StringAttrE(ptr noundef, ptr) local_unnamed_addr #2

declare ptr @_ZN4mlir10StringAttr3getEPNS_11MLIRContextERKN4llvm5TwineE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #2

declare noundef ptr @_ZN4mlir6Region10getContextEv(ptr noundef nonnull align 8 dereferenceable(28)) local_unnamed_addr #2

declare ptr @_ZN4mlir4LLVM17MemoryEffectsAttr3getEPNS_11MLIRContextENS0_10ModRefInfoES4_S4_S4_S4_S4_(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress noreturn nounwind uwtable
define linkonce_odr void @_ZSt27__throw_bad_optional_accessv() local_unnamed_addr #20 comdat {
bb.a:
  tail call void @abort() #29
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #21

declare { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare ptr @_ZN4mlir4LLVM6CallOp6createERNS_9OpBuilderENS_8LocationENS0_10LLVMFuncOpENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, i64, i64) local_unnamed_addr #2

declare void @_ZN4mlir4LLVM6CallOp8setCConvENS0_5cconv5CConvE(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

declare noundef i64 @_ZN4mlir4LLVM10LLVMFuncOp8getCConvEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i8 @_ZN4mlir17ConversionPattern14dispatchTo1To1INS_22ConvertOpToLLVMPatternINS_3gpu9BarrierOpELb0EEES4_EEN4llvm13LogicalResultERKT_T0_NSB_14GenericAdaptorINS6_8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, ptr noundef byval(%"class.mlir::gpu::BarrierOpGenericAdaptor.608") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %class.anon.758, align 8            ; 4 uses
  %5 = alloca %"class.llvm::FailureOr", align 8   ; 8 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %8 = alloca %"class.mlir::gpu::BarrierOpAdaptor", align 8 ; 3 uses
  %9 = alloca %"class.mlir::ValueRange", align 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8, !tbaa !191
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !28
  call void @_ZNK4mlir17ConversionPattern26getOneToOneAdaptorOperandsEN4llvm8ArrayRefINS_10ValueRangeEEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::FailureOr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i) #28
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !220, !range !68, !noundef !69
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %_ZN4llvmplERKNS_5TwineES2_.exit

_ZN4llvmplERKNS_5TwineES2_.exit:                  ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i10 = load ptr, ptr %i.e, align 8, !tbaa !26
  %.sroa.2.0..sroa_idx.i11 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.2.0.copyload.i12 = load i64, ptr %.sroa.2.0..sroa_idx.i11, align 8, !tbaa !28
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 3, ptr %i.f, align 8, !tbaa !213, !alias.scope !734
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 5, ptr %i.g, align 1, !tbaa !214, !alias.scope !734
  store ptr @.str.27, ptr %7, align 8, !tbaa !137, !alias.scope !734
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %.sroa.0.0.copyload.i10, ptr %i.h, align 8, !tbaa !137, !alias.scope !734
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %.sroa.2.0.copyload.i12, ptr %i.i, align 8, !tbaa !137, !alias.scope !734
  store ptr %7, ptr %6, align 8, !alias.scope !735
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr @.str.28, ptr %i.j, align 8, !alias.scope !735
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 2, ptr %i.k, align 8, !tbaa !213, !alias.scope !735
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 3, ptr %i.l, align 1, !tbaa !214, !alias.scope !735
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr %6, ptr %4, align 8, !tbaa !222
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !223  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3gpu9BarrierOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit
  %i.o = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.n) #28
  br i1 %i.o, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3gpu9BarrierOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i: ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.p, align 8
  %i.q = ptrtoint ptr %4 to i64
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !24
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(12) %i.n, ptr %.sroa.0.0.copyload.i.i.i, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_3gpu9BarrierOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.q) #28, !inline_history !733
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3gpu9BarrierOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3gpu9BarrierOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit, %bb.b, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.u = load ptr, ptr %5, align 8, !tbaa !21
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !36
  %i.x = zext i32 %i.w to i64
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr %i.u, i64 %i.x) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.z = load <2 x i64>, ptr %9, align 16
  store <2 x i64> %i.z, ptr %i.y, align 8
  %i.aa = load ptr, ptr %0, align 8, !tbaa !24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = call i8 %i.ac(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, ptr noundef nonnull byval(%"class.mlir::gpu::BarrierOpAdaptor") align 8 %8, ptr noundef nonnull align 8 dereferenceable(48) %3) #28
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3gpu9BarrierOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit
  %.sroa.09.0 = phi i8 [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3gpu9BarrierOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit ], [ %i.ad, %bb.c ]
  %i.ae = load i8, ptr %i.b, align 8, !tbaa !220, !range !68, !noundef !69
  %i.af = trunc nuw i8 %i.ae to i1
  store i8 0, ptr %i.b, align 8, !tbaa !220
  br i1 %i.af, label %bb.e, label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIN4mlir5ValueELj6EEELb0ELb0EED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.ag = load ptr, ptr %5, align 8, !tbaa !21    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIN4mlir5ValueELj6EEELb0ELb0EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @free(ptr noundef %i.ag) #28
  br label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIN4mlir5ValueELj6EEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4llvm11SmallVectorIN4mlir5ValueELj6EEELb0ELb0EED2Ev.exit: ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret i8 %.sroa.09.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_3gpu9BarrierOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(192) %1) #0 comdat align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !737, !nonnull !69, !align !110
  %i.c = tail call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(34) %i.b) #28 ; 0 uses
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_120GPUShuffleConversionD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #28
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir14RewritePatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.f) #28
  br label %_ZN4mlir14RewritePatternD2Ev.exit

_ZN4mlir14RewritePatternD2Ev.exit:                ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir22ConvertOpToLLVMPatternINS_3gpu9ShuffleOpELb0EE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_5ValueEEERNS_25ConversionPatternRewriterE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(48) %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.mlir::gpu::ShuffleOpAdaptor", align 8 ; 3 uses
  %6 = alloca %"class.mlir::ValueRange", align 16 ; 2 uses
  call void @_ZN4mlir10ValueRangeC1EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr %2, i64 %3) #28
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.b = load <2 x i64>, ptr %6, align 16
  call void @_ZN4mlir3gpu6detail27ShuffleOpGenericAdaptorBaseC2ENS0_9ShuffleOpE(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr %1) #28
  store <2 x i64> %i.b, ptr %i.a, align 8
  %i.c = load ptr, ptr %0, align 8, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = call i8 %i.e(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, ptr noundef nonnull byval(%"class.mlir::gpu::ShuffleOpAdaptor") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %4) #28
  ret i8 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir22ConvertOpToLLVMPatternINS_3gpu9ShuffleOpELb0EE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_10ValueRangeEEERNS_25ConversionPatternRewriterE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(48) %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.mlir::gpu::ShuffleOpGenericAdaptor.840", align 8 ; 4 uses
  call void @_ZN4mlir3gpu6detail27ShuffleOpGenericAdaptorBaseC2ENS0_9ShuffleOpE(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr %1) #28
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %2, ptr %i.a, align 8, !tbaa !191
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !28
  %i.b = load ptr, ptr %0, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = call i8 %i.d(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, ptr noundef nonnull byval(%"class.mlir::gpu::ShuffleOpGenericAdaptor.840") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %4) #28
  ret i8 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i8 0, 2) i8 @_ZNK12_GLOBAL__N_120GPUShuffleConversion15matchAndRewriteEN4mlir3gpu9ShuffleOpENS2_16ShuffleOpAdaptorERNS1_25ConversionPatternRewriterE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr %1, ptr nofree noundef readonly byval(%"class.mlir::gpu::ShuffleOpAdaptor") align 8 captures(none) %2, ptr noundef nonnull align 8 dereferenceable(48) %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.mlir::IntegerType", align 8 ; 4 uses
  %5 = alloca %"class.mlir::LLVM::CallOp", align 8 ; 9 uses
  %6 = alloca %"class.mlir::LLVM::LLVMFuncOp", align 8 ; 8 uses
  %7 = alloca %"class.llvm::detail::indexed_accessor_range_base<mlir::ValueRange, llvm::PointerUnion<const mlir::Value *, mlir::OpOperand *, mlir::detail::OpResultImpl *, const llvm::Repeated<mlir::Value> *>, mlir::Value, mlir::Value, mlir::Value>::iterator", align 8 ; 5 uses
  %8 = alloca %"class.llvm::detail::indexed_accessor_range_base<mlir::ValueRange, llvm::PointerUnion<const mlir::Value *, mlir::OpOperand *, mlir::detail::OpResultImpl *, const llvm::Repeated<mlir::Value> *>, mlir::Value, mlir::Value, mlir::Value>::iterator", align 8 ; 5 uses
  %9 = alloca %"class.llvm::detail::indexed_accessor_range_base<mlir::ValueRange, llvm::PointerUnion<const mlir::Value *, mlir::OpOperand *, mlir::detail::OpResultImpl *, const llvm::Repeated<mlir::Value> *>, mlir::Value, mlir::Value, mlir::Value>::iterator", align 8 ; 5 uses
  %10 = alloca %"class.llvm::detail::indexed_accessor_range_base<mlir::ValueRange, llvm::PointerUnion<const mlir::Value *, mlir::OpOperand *, mlir::detail::OpResultImpl *, const llvm::Repeated<mlir::Value> *>, mlir::Value, mlir::Value, mlir::Value>::iterator", align 8 ; 5 uses
  %11 = alloca %class.anon.899, align 8           ; 4 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %13 = alloca %"class.llvm::raw_string_ostream", align 8 ; 11 uses
  %14 = alloca %"class.mlir::IntegerType", align 8 ; 5 uses
  %15 = alloca %"class.llvm::StringRef", align 8  ; 6 uses
  %16 = alloca %"class.std::optional.87", align 8 ; 7 uses
  %17 = alloca %"class.llvm::formatv_object", align 8 ; 17 uses
  %18 = alloca %"class.mlir::IntegerType", align 8 ; 4 uses
  %19 = alloca %"class.llvm::detail::indexed_accessor_range_base<mlir::ValueRange, llvm::PointerUnion<const mlir::Value *, mlir::OpOperand *, mlir::detail::OpResultImpl *, const llvm::Repeated<mlir::Value> *>, mlir::Value, mlir::Value, mlir::Value>::iterator", align 8 ; 5 uses
  %20 = alloca %class.anon.899, align 8           ; 4 uses
  %21 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %22 = alloca %"class.mlir::Attribute", align 8  ; 6 uses
  %23 = alloca %"struct.mlir::detail::constant_op_binder", align 8 ; 4 uses
  %24 = alloca %"class.mlir::Value", align 8      ; 6 uses
  %25 = alloca %"class.llvm::APInt", align 8      ; 9 uses
  %26 = alloca %"struct.mlir::detail::constant_int_value_binder", align 8 ; 4 uses
  %27 = alloca %"class.mlir::LLVM::LLVMFuncOp", align 8 ; 5 uses
  %28 = alloca %"class.mlir::gpu::ShuffleOp", align 8 ; 8 uses
  %29 = alloca %"class.std::optional.849", align 8 ; 14 uses
  %30 = alloca [2 x %"class.mlir::Type"], align 8 ; 5 uses
  %31 = alloca %"struct.std::array.859", align 8  ; 5 uses
  %32 = alloca %"class.mlir::LLVM::CallOp", align 8 ; 5 uses
  %33 = alloca %"class.mlir::ValueRange", align 8 ; 3 uses
  %34 = alloca %"class.mlir::ValueRange", align 8 ; 3 uses
  %35 = alloca [2 x %"class.mlir::Value"], align 8 ; 5 uses
  store ptr %1, ptr %28, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #28
  %.not8.i.i = icmp eq ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM10LLVMFuncOpEvE2idE
  br i1 %.not8.i.i, label %.split.us.i.i, label %bb.b

.split.us.i.i:                                    ; preds = %bb.a
  %36 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %37 = load ptr, ptr %36, align 8, !tbaa !205    ; 2 uses
  %.not.i.us6.i.i = icmp eq ptr %37, null
  br i1 %.not.i.us6.i.i, label %_ZN12_GLOBAL__N_120GPUShuffleConversion15getSubgroupSizeEPN4mlir9OperationE.exit.thread, label %_ZN4mlir9Operation11getParentOpEv.exit.us.i.i

38:                                               ; preds = %_ZN4mlir9Operation11getParentOpEv.exit.us.i.i
  %39 = getelementptr inbounds nuw i8, ptr %42, i64 16
  %40 = load ptr, ptr %39, align 8, !tbaa !205    ; 2 uses
  %.not.i.us.i.i = icmp eq ptr %40, null
  br i1 %.not.i.us.i.i, label %_ZN12_GLOBAL__N_120GPUShuffleConversion15getSubgroupSizeEPN4mlir9OperationE.exit.thread, label %_ZN4mlir9Operation11getParentOpEv.exit.us.i.i

_ZN4mlir9Operation11getParentOpEv.exit.us.i.i:    ; preds = %.split.us.i.i, %38
  %41 = phi ptr [ %40, %38 ], [ %37, %.split.us.i.i ]
  %42 = tail call noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80) %41) #28 ; 2 uses
  %.not.us.i.i = icmp eq ptr %42, null
  br i1 %.not.us.i.i, label %_ZN12_GLOBAL__N_120GPUShuffleConversion15getSubgroupSizeEPN4mlir9OperationE.exit.thread, label %38

bb.b:                                             ; preds = %bb.a, %bb.c
  %.0.i.i = phi ptr [ %i.c, %bb.c ], [ %1, %bb.a ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !205  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN12_GLOBAL__N_120GPUShuffleConversion15getSubgroupSizeEPN4mlir9OperationE.exit.thread, label %_ZN4mlir9Operation11getParentOpEv.exit.i.i

_ZN4mlir9Operation11getParentOpEv.exit.i.i:       ; preds = %bb.b
  %i.c = tail call noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80) %i.b) #28 ; 4 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN12_GLOBAL__N_120GPUShuffleConversion15getSubgroupSizeEPN4mlir9OperationE.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN4mlir9Operation11getParentOpEv.exit.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !52
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !122
  %i.g = icmp eq ptr %i.f, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM10LLVMFuncOpEvE2idE
  br i1 %i.g, label %_ZN12_GLOBAL__N_120GPUShuffleConversion15getSubgroupSizeEPN4mlir9OperationE.exit, label %bb.b, !llvm.loop !738

_ZN12_GLOBAL__N_120GPUShuffleConversion15getSubgroupSizeEPN4mlir9OperationE.exit.thread: ; preds = %_ZN4mlir9Operation11getParentOpEv.exit.i.i, %bb.b, %_ZN4mlir9Operation11getParentOpEv.exit.us.i.i, %38, %.split.us.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #28
  br label %bb.l

_ZN12_GLOBAL__N_120GPUShuffleConversion15getSubgroupSizeEPN4mlir9OperationE.exit: ; preds = %bb.c
  store ptr %i.c, ptr %27, align 8
  %i.h = call i64 @_ZN4mlir4LLVM10LLVMFuncOp24getIntelReqdSubGroupSizeEv(ptr noundef nonnull align 8 dereferenceable(8) %27) #28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #28
  %i.i = and i64 %i.h, 4294967296
  %.not = icmp eq i64 %i.i, 0
  %.pre61 = load ptr, ptr %28, align 8            ; 2 uses
  br i1 %.not, label %bb.l, label %_ZNRSt8optionalIiE5valueEv.exit

_ZNRSt8optionalIiE5valueEv.exit:                  ; preds = %_ZN12_GLOBAL__N_120GPUShuffleConversion15getSubgroupSizeEPN4mlir9OperationE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #28
  %i.j = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 3 uses
  store i32 1, ptr %i.j, align 8, !tbaa !225
  store i64 0, ptr %25, align 8, !tbaa !137
  %i.k = getelementptr inbounds nuw i8, ptr %.pre61, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !756
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !227
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #28
  store ptr %25, ptr %26, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  store ptr %.sroa.0.0.copyload.i.i.i.i.i, ptr %24, align 8
  %i.n = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %24) #28 ; 3 uses
  %.not.not.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.not.not.i.i, label %_ZN4mlir12matchPatternINS_6detail25constant_int_value_binderEEEbNS_5ValueERKT_.exit.thread.i, label %bb.d

_ZN4mlir12matchPatternINS_6detail25constant_int_value_binderEEEbNS_5ValueERKT_.exit.thread.i: ; preds = %_ZNRSt8optionalIiE5valueEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  br label %_ZNK4llvm5APInteqEm.exit.i

bb.d:                                             ; preds = %_ZNRSt8optionalIiE5valueEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #28
  store ptr null, ptr %22, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #28
  store ptr %22, ptr %23, align 8, !tbaa !230
  %i.o = call noundef zeroext i1 @_ZN4mlir6detail18constant_op_binderINS_9AttributeEE5matchEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  br i1 %i.o, label %bb.e, label %_ZN4mlir12matchPatternINS_6detail25constant_int_value_binderEEEbNS_5ValueERKT_.exit.thread4.i

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 -8
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.p, align 8
  %i.q = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -8
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !159
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i31 = load ptr, ptr %i.t, align 8, !tbaa !19 ; 4 uses
  %i.u = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i31, @_ZN4mlir6detail14TypeIDResolverINS_11IntegerTypeEvE2idE
  %i.v = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i31, @_ZN4mlir6detail14TypeIDResolverINS_9IndexTypeEvE2idE
  %or.cond.i.i.i.i = or i1 %i.u, %i.v
  %i.w = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i31, @_ZN4mlir6detail14TypeIDResolverINS_10VectorTypeEvE2idE
  %or.cond10.i.i.i.i = or i1 %i.w, %or.cond.i.i.i.i
  %i.x = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i31, @_ZN4mlir6detail14TypeIDResolverINS_16RankedTensorTypeEvE2idE
  %spec.select.i.i.i.i = or i1 %i.x, %or.cond10.i.i.i.i
  br i1 %spec.select.i.i.i.i, label %_ZN4mlir12matchPatternINS_6detail25constant_int_value_binderEEEbNS_5ValueERKT_.exit.i, label %_ZN4mlir12matchPatternINS_6detail25constant_int_value_binderEEEbNS_5ValueERKT_.exit.thread4.i

_ZN4mlir12matchPatternINS_6detail25constant_int_value_binderEEEbNS_5ValueERKT_.exit.thread4.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  br label %_ZNK4llvm5APInteqEm.exit.i

_ZN4mlir12matchPatternINS_6detail25constant_int_value_binderEEEbNS_5ValueERKT_.exit.i: ; preds = %bb.e
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %22, align 8, !tbaa !210
  %i.y = call noundef zeroext i1 @_ZN4mlir6detail25constant_int_value_binder5matchENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr %.sroa.0.0.copyload.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  br i1 %i.y, label %bb.f, label %_ZNK4llvm5APInteqEm.exit.i

bb.f:                                             ; preds = %_ZN4mlir12matchPatternINS_6detail25constant_int_value_binderEEEbNS_5ValueERKT_.exit.i
  %sext = shl i64 %i.h, 32
  %i.z = ashr exact i64 %sext, 32
  %i.aa = load i32, ptr %i.j, align 8, !tbaa !225 ; 2 uses
  %i.ab = icmp ult i32 %i.aa, 65                  ; 2 uses
  br i1 %i.ab, label %bb.g, label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i

_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i:        ; preds = %bb.f
  %i.ac = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %25) #31
  %i.ad = sub i32 %i.aa, %i.ac
  %i.ae = icmp ult i32 %i.ad, 65
  br i1 %i.ae, label %bb.g, label %_ZNK4llvm5APInteqEm.exit.i

bb.g:                                             ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i, %bb.f
  %i.af = load ptr, ptr %25, align 8
  %spec.select.i.i.i = select i1 %i.ab, ptr %25, ptr %i.af
  %.0.i.i.i = load i64, ptr %spec.select.i.i.i, align 8, !tbaa !137
  %i.ag = icmp eq i64 %.0.i.i.i, %i.z
  br label %_ZNK4llvm5APInteqEm.exit.i

_ZNK4llvm5APInteqEm.exit.i:                       ; preds = %bb.g, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i, %_ZN4mlir12matchPatternINS_6detail25constant_int_value_binderEEEbNS_5ValueERKT_.exit.i, %_ZN4mlir12matchPatternINS_6detail25constant_int_value_binderEEEbNS_5ValueERKT_.exit.thread4.i, %_ZN4mlir12matchPatternINS_6detail25constant_int_value_binderEEEbNS_5ValueERKT_.exit.thread.i
  %i.ah = phi i1 [ false, %_ZN4mlir12matchPatternINS_6detail25constant_int_value_binderEEEbNS_5ValueERKT_.exit.i ], [ false, %_ZN4mlir12matchPatternINS_6detail25constant_int_value_binderEEEbNS_5ValueERKT_.exit.thread4.i ], [ false, %_ZN4mlir12matchPatternINS_6detail25constant_int_value_binderEEEbNS_5ValueERKT_.exit.thread.i ], [ false, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i ], [ %i.ag, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  %i.ai = load i32, ptr %i.j, align 8, !tbaa !225
  %i.aj = icmp ugt i32 %i.ai, 64
  br i1 %i.aj, label %bb.h, label %_ZN12_GLOBAL__N_120GPUShuffleConversion13hasValidWidthEN4mlir3gpu9ShuffleOpEi.exit

bb.h:                                             ; preds = %_ZNK4llvm5APInteqEm.exit.i
  %i.ak = load ptr, ptr %25, align 8, !tbaa !137  ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_ZN12_GLOBAL__N_120GPUShuffleConversion13hasValidWidthEN4mlir3gpu9ShuffleOpEi.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZdaPv(ptr noundef nonnull %i.ak) #30
  br label %_ZN12_GLOBAL__N_120GPUShuffleConversion13hasValidWidthEN4mlir3gpu9ShuffleOpEi.exit

_ZN12_GLOBAL__N_120GPUShuffleConversion13hasValidWidthEN4mlir3gpu9ShuffleOpEi.exit: ; preds = %_ZNK4llvm5APInteqEm.exit.i, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #28
  %.pre = load ptr, ptr %28, align 8, !tbaa !189  ; 2 uses
  br i1 %i.ah, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZN12_GLOBAL__N_120GPUShuffleConversion13hasValidWidthEN4mlir3gpu9ShuffleOpEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #28
  %i.am = getelementptr inbounds nuw i8, ptr %21, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %21, i64 33
  store i8 1, ptr %i.an, align 1, !tbaa !214
  store ptr @.str.40, ptr %21, align 8, !tbaa !137
  store i8 3, ptr %i.am, align 8, !tbaa !213
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #28
  store ptr %21, ptr %20, align 8, !tbaa !222
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !223 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3gpu9ShuffleOpEEEN4llvm13LogicalResultEOT_PKc.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.ap) #28
  br i1 %i.aq, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3gpu9ShuffleOpEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i: ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.ar, align 8
  %i.as = ptrtoint ptr %20 to i64
  %i.at = load ptr, ptr %i.ap, align 8, !tbaa !24
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 88
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(12) %i.ap, ptr %.sroa.0.0.copyload.i.i.i.i, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_3gpu9ShuffleOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.as) #28, !inline_history !739
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3gpu9ShuffleOpEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3gpu9ShuffleOpEEEN4llvm13LogicalResultEOT_PKc.exit: ; preds = %bb.j, %bb.k, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  br label %bb.ad

bb.l:                                             ; preds = %_ZN12_GLOBAL__N_120GPUShuffleConversion15getSubgroupSizeEPN4mlir9OperationE.exit.thread, %_ZN12_GLOBAL__N_120GPUShuffleConversion13hasValidWidthEN4mlir3gpu9ShuffleOpEi.exit, %_ZN12_GLOBAL__N_120GPUShuffleConversion15getSubgroupSizeEPN4mlir9OperationE.exit
  %i.aw = phi ptr [ %1, %_ZN12_GLOBAL__N_120GPUShuffleConversion15getSubgroupSizeEPN4mlir9OperationE.exit.thread ], [ %.pre, %_ZN12_GLOBAL__N_120GPUShuffleConversion13hasValidWidthEN4mlir3gpu9ShuffleOpEi.exit ], [ %.pre61, %_ZN12_GLOBAL__N_120GPUShuffleConversion15getSubgroupSizeEPN4mlir9OperationE.exit ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %.sroa.0.0.copyload.i = load ptr, ptr %i.ax, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i13.i.i = load i64, ptr %i.ay, align 8
  store i64 %.sroa.0.0.copyload.i13.i.i, ptr %19, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 0, ptr %i.az, align 8
  %i.ba = call ptr @_ZN4mlir10ValueRange20dereference_iteratorERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(16) %19, i64 noundef 0) #28 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.bb, align 8
  %i.bc = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.bd = inttoptr i64 %i.bc to ptr               ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !159
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bf, align 8, !tbaa !19 ; 2 uses
  %i.bg = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_12BFloat16TypeEvE2idE
  br i1 %i.bg, label %_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIN4mlir4TypeENS3_5ValueEEES4_E4CaseIZN12_GLOBAL__N_120GPUShuffleConversion25bitcastOrExtBeforeShuffleES5_NS3_8LocationERNS3_25ConversionPatternRewriterEEUlNS3_12BFloat16TypeEE_EERS6_OT_.exit.thread.i, label %_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIN4mlir4TypeENS3_5ValueEEES4_E4CaseIZN12_GLOBAL__N_120GPUShuffleConversion25bitcastOrExtBeforeShuffleES5_NS3_8LocationERNS3_25ConversionPatternRewriterEEUlNS3_12BFloat16TypeEE_EERS6_OT_.exit.i

_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIN4mlir4TypeENS3_5ValueEEES4_E4CaseIZN12_GLOBAL__N_120GPUShuffleConversion25bitcastOrExtBeforeShuffleES5_NS3_8LocationERNS3_25ConversionPatternRewriterEEUlNS3_12BFloat16TypeEE_EERS6_OT_.exit.thread.i: ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bi = call ptr @_ZN4mlir7Builder10getI16TypeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bh) #28
  %i.bj = call ptr @_ZN4mlir4LLVM9BitcastOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(32) %i.bh, ptr %.sroa.0.0.copyload.i, ptr %i.bi, ptr nonnull %i.ba) #28
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -16
  br label %_ZN12_GLOBAL__N_120GPUShuffleConversion25bitcastOrExtBeforeShuffleEN4mlir5ValueENS1_8LocationERNS1_25ConversionPatternRewriterE.exit

_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIN4mlir4TypeENS3_5ValueEEES4_E4CaseIZN12_GLOBAL__N_120GPUShuffleConversion25bitcastOrExtBeforeShuffleES5_NS3_8LocationERNS3_25ConversionPatternRewriterEEUlNS3_12BFloat16TypeEE_EERS6_OT_.exit.i: ; preds = %bb.l
  %i.bl = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_11IntegerTypeEvE2idE
  br i1 %i.bl, label %bb.m, label %_ZN12_GLOBAL__N_120GPUShuffleConversion25bitcastOrExtBeforeShuffleEN4mlir5ValueENS1_8LocationERNS1_25ConversionPatternRewriterE.exit

bb.m:                                             ; preds = %_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIN4mlir4TypeENS3_5ValueEEES4_E4CaseIZN12_GLOBAL__N_120GPUShuffleConversion25bitcastOrExtBeforeShuffleES5_NS3_8LocationERNS3_25ConversionPatternRewriterEEUlNS3_12BFloat16TypeEE_EERS6_OT_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  store ptr %i.bd, ptr %18, align 8
  %i.bm = call noundef i32 @_ZNK4mlir11IntegerType8getWidthEv(ptr noundef nonnull align 8 dereferenceable(8) %18) #28
  %i.bn = icmp eq i32 %i.bm, 1
  br i1 %i.bn, label %bb.n, label %_ZZN12_GLOBAL__N_120GPUShuffleConversion25bitcastOrExtBeforeShuffleEN4mlir5ValueENS1_8LocationERNS1_25ConversionPatternRewriterEENKUlNS1_11IntegerTypeEE_clES6_.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bp = call ptr @_ZN4mlir7Builder9getI8TypeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bo) #28
  %i.bq = call ptr @_ZN4mlir4LLVM6ZExtOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueEb(ptr noundef nonnull align 8 dereferenceable(32) %i.bo, ptr %.sroa.0.0.copyload.i, ptr %i.bp, ptr nonnull %i.ba, i1 noundef zeroext false) #28
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -16
  br label %_ZZN12_GLOBAL__N_120GPUShuffleConversion25bitcastOrExtBeforeShuffleEN4mlir5ValueENS1_8LocationERNS1_25ConversionPatternRewriterEENKUlNS1_11IntegerTypeEE_clES6_.exit.i.i.i

_ZZN12_GLOBAL__N_120GPUShuffleConversion25bitcastOrExtBeforeShuffleEN4mlir5ValueENS1_8LocationERNS1_25ConversionPatternRewriterEENKUlNS1_11IntegerTypeEE_clES6_.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.sroa.04.0.i.i.i.i = phi ptr [ %i.br, %bb.n ], [ %i.ba, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  br label %_ZN12_GLOBAL__N_120GPUShuffleConversion25bitcastOrExtBeforeShuffleEN4mlir5ValueENS1_8LocationERNS1_25ConversionPatternRewriterE.exit

_ZN12_GLOBAL__N_120GPUShuffleConversion25bitcastOrExtBeforeShuffleEN4mlir5ValueENS1_8LocationERNS1_25ConversionPatternRewriterE.exit: ; preds = %_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIN4mlir4TypeENS3_5ValueEEES4_E4CaseIZN12_GLOBAL__N_120GPUShuffleConversion25bitcastOrExtBeforeShuffleES5_NS3_8LocationERNS3_25ConversionPatternRewriterEEUlNS3_12BFloat16TypeEE_EERS6_OT_.exit.thread.i, %_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIN4mlir4TypeENS3_5ValueEEES4_E4CaseIZN12_GLOBAL__N_120GPUShuffleConversion25bitcastOrExtBeforeShuffleES5_NS3_8LocationERNS3_25ConversionPatternRewriterEEUlNS3_12BFloat16TypeEE_EERS6_OT_.exit.i, %_ZZN12_GLOBAL__N_120GPUShuffleConversion25bitcastOrExtBeforeShuffleEN4mlir5ValueENS1_8LocationERNS1_25ConversionPatternRewriterEENKUlNS1_11IntegerTypeEE_clES6_.exit.i.i.i
  %.sroa.8.1.i = phi ptr [ %i.bk, %_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIN4mlir4TypeENS3_5ValueEEES4_E4CaseIZN12_GLOBAL__N_120GPUShuffleConversion25bitcastOrExtBeforeShuffleES5_NS3_8LocationERNS3_25ConversionPatternRewriterEEUlNS3_12BFloat16TypeEE_EERS6_OT_.exit.thread.i ], [ %.sroa.04.0.i.i.i.i, %_ZZN12_GLOBAL__N_120GPUShuffleConversion25bitcastOrExtBeforeShuffleEN4mlir5ValueENS1_8LocationERNS1_25ConversionPatternRewriterEENKUlNS1_11IntegerTypeEE_clES6_.exit.i.i.i ], [ %i.ba, %_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIN4mlir4TypeENS3_5ValueEEES4_E4CaseIZN12_GLOBAL__N_120GPUShuffleConversion25bitcastOrExtBeforeShuffleES5_NS3_8LocationERNS3_25ConversionPatternRewriterEEUlNS3_12BFloat16TypeEE_EERS6_OT_.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #28
end_hunk_0
