Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/IRNumbering?download=true
inline.NumInlined: 4192
inline.NumDeleted: 2183
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN4mlir8bytecode6detail16IRNumberingState13numberDialectEN4llvm9StringRefE:bb.a
  %i.d = trunc nuw i8 %.fca.1.extract.i.i.i.i to i1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !46   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i.i, i64 16
  store i32 %i.g, ptr %i.h, align 8, !tbaa !276
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store ptr %5, ptr %3, align 8, !tbaa !278, !alias.scope !504
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.j = load i32, ptr %i.i, align 4, !tbaa !47
  %.not.i.i.i = icmp ult i32 %i.g, %i.j
  br i1 %.not.i.i.i, label %bb.d, label %bb.c, !prof !145

bb.c:                                             ; preds = %bb.b
  %i.k = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefEPN4mlir8bytecode6detail16DialectNumberingEELb1EE18growAndEmplaceBackIJRKSt21piecewise_construct_tSt5tupleIJRKS2_EESE_IJEEEEERS8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) ; 0 uses
  %.pre.i.i = load i32, ptr %i.f, align 8, !tbaa !46
  br label %_ZN4llvm15SmallVectorImplISt4pairINS_9StringRefEPN4mlir8bytecode6detail16DialectNumberingEEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS2_EESE_IJEEEEERS8_DpOT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.l = zext i32 %i.g to i64
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !45
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.l ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !279
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr null, ptr %i.o, align 8, !tbaa !233
  %i.p = load i32, ptr %i.f, align 8, !tbaa !46
  %i.q = add i32 %i.p, 1                          ; 2 uses
  store i32 %i.q, ptr %i.f, align 8, !tbaa !46
  br label %_ZN4llvm15SmallVectorImplISt4pairINS_9StringRefEPN4mlir8bytecode6detail16DialectNumberingEEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS2_EESE_IJEEEEERS8_DpOT_.exit.i.i

_ZN4llvm15SmallVectorImplISt4pairINS_9StringRefEPN4mlir8bytecode6detail16DialectNumberingEEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS2_EESE_IJEEEEERS8_DpOT_.exit.i.i: ; preds = %bb.d, %bb.c
  %i.r = phi i32 [ %.pre.i.i, %bb.c ], [ %i.q, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !45
  %i.t = zext i32 %i.r to i64
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %i.t
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -24
  br label %_ZN4llvm9MapVectorINS_9StringRefEPN4mlir8bytecode6detail16DialectNumberingENS_8DenseMapIS1_jNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEEENS_11SmallVectorISt4pairIS1_S6_ELj0EEELj0EEixERKS1_.exit

bb.e:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !45
  %i.x = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i.i, i64 16
  %i.y = load i32, ptr %i.x, align 8, !tbaa !276
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.z
  br label %_ZN4llvm9MapVectorINS_9StringRefEPN4mlir8bytecode6detail16DialectNumberingENS_8DenseMapIS1_jNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEEENS_11SmallVectorISt4pairIS1_S6_ELj0EEELj0EEixERKS1_.exit

_ZN4llvm9MapVectorINS_9StringRefEPN4mlir8bytecode6detail16DialectNumberingENS_8DenseMapIS1_jNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEEENS_11SmallVectorISt4pairIS1_S6_ELj0EEELj0EEixERKS1_.exit: ; preds = %_ZN4llvm15SmallVectorImplISt4pairINS_9StringRefEPN4mlir8bytecode6detail16DialectNumberingEEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS2_EESE_IJEEEEERS8_DpOT_.exit.i.i, %bb.e
  %.sroa.09.0.i.i = phi ptr [ %i.v, %_ZN4llvm15SmallVectorImplISt4pairINS_9StringRefEPN4mlir8bytecode6detail16DialectNumberingEEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS2_EESE_IJEEEEERS8_DpOT_.exit.i.i ], [ %i.aa, %bb.e ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 16 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !217 ; 2 uses
  %.not = icmp eq ptr %i.ac, null
  br i1 %.not, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZN4llvm9MapVectorINS_9StringRefEPN4mlir8bytecode6detail16DialectNumberingENS_8DenseMapIS1_jNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEEENS_11SmallVectorISt4pairIS1_S6_ELj0EEELj0EEixERKS1_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !245 ; 2 uses
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = add i64 %i.af, 120                      ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !246
  %i.aj = icmp ult i64 %i.ag, %i.ai
  br i1 %i.aj, label %bb.g, label %bb.h, !prof !145

bb.g:                                             ; preds = %bb.f
  %i.ak = inttoptr i64 %i.ag to ptr
  store ptr %i.ak, ptr %i.ad, align 8, !tbaa !245
  br label %_ZN4llvm24SpecificBumpPtrAllocatorIN4mlir8bytecode6detail16DialectNumberingEE8AllocateEm.exit

bb.h:                                             ; preds = %bb.f
  %i.al = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm1EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.ad, i64 noundef 120, i64 noundef 120, i8 0)
  br label %_ZN4llvm24SpecificBumpPtrAllocatorIN4mlir8bytecode6detail16DialectNumberingEE8AllocateEm.exit

_ZN4llvm24SpecificBumpPtrAllocatorIN4mlir8bytecode6detail16DialectNumberingEE8AllocateEm.exit: ; preds = %bb.g, %bb.h
  %.0.i.i = phi ptr [ %i.ae, %bb.g ], [ %i.al, %bb.h ] ; 13 uses
  %.sroa.0.0.copyload = load ptr, ptr %5, align 8, !tbaa !261
  %.sroa.2.0.copyload = load i64, ptr %i.a, align 8, !tbaa !147
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.an = load i32, ptr %i.am, align 8, !tbaa !46
  %i.ao = add i32 %i.an, -1
  store ptr %.sroa.0.0.copyload, ptr %.0.i.i, align 8, !tbaa !261
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  store i64 %.sroa.2.0.copyload, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !147
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  store i32 %i.ao, ptr %i.ap, align 8, !tbaa !204
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aq, i8 0, i64 40, i1 false)
  store ptr %i.as, ptr %i.ar, align 8, !tbaa !45
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 72
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 104
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.at, i8 0, i64 32, i1 false)
  store ptr %i.av, ptr %i.au, align 8, !tbaa !45
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 112
  store i32 0, ptr %i.aw, align 8, !tbaa !46
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 116
  store i32 0, ptr %i.ax, align 4, !tbaa !47
  store ptr %.0.i.i, ptr %i.ab, align 8, !tbaa !217
  br label %bb.i

bb.i:                                             ; preds = %_ZN4llvm24SpecificBumpPtrAllocatorIN4mlir8bytecode6detail16DialectNumberingEE8AllocateEm.exit, %_ZN4llvm9MapVectorINS_9StringRefEPN4mlir8bytecode6detail16DialectNumberingENS_8DenseMapIS1_jNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEEENS_11SmallVectorISt4pairIS1_S6_ELj0EEELj0EEixERKS1_.exit
  %i.ay = phi ptr [ %.0.i.i, %_ZN4llvm24SpecificBumpPtrAllocatorIN4mlir8bytecode6detail16DialectNumberingEE8AllocateEm.exit ], [ %i.ac, %_ZN4llvm9MapVectorINS_9StringRefEPN4mlir8bytecode6detail16DialectNumberingENS_8DenseMapIS1_jNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEEENS_11SmallVectorISt4pairIS1_S6_ELj0EEELj0EEixERKS1_.exit ]
  ret ptr %i.ay
}

declare ptr @_ZNK4mlir10OpaqueAttr19getDialectNamespaceEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(120) ptr @_ZN4mlir8bytecode6detail16IRNumberingState13numberDialectEPNS_7DialectE(ptr noundef nonnull align 8 dereferenceable(848) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !274
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir7DialectEPNS2_8bytecode6detail16DialectNumberingENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSD_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !217  ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !274  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.g, align 8, !tbaa !261
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !147
  %i.h = call noundef nonnull align 8 dereferenceable(120) ptr @_ZN4mlir8bytecode6detail16IRNumberingState13numberDialectEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(848) %0, ptr %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i)
  store ptr %i.h, ptr %i.d, align 8, !tbaa !217
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !274  ; 2 uses
  %i.j = call noundef ptr @_ZN4mlir7Dialect22getRegisteredInterfaceINS_24BytecodeDialectInterfaceEEEPT_v(ptr noundef nonnull align 8 dereferenceable(96) %i.i)
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_ZN4llvm8dyn_castIN4mlir24BytecodeDialectInterfaceENS1_7DialectEEEDcPT0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4mlir7Dialect22getRegisteredInterfaceINS_24BytecodeDialectInterfaceEEEPT_v(ptr noundef nonnull align 8 dereferenceable(96) %i.i)
  br label %_ZN4llvm8dyn_castIN4mlir24BytecodeDialectInterfaceENS1_7DialectEEEDcPT0_.exit

_ZN4llvm8dyn_castIN4mlir24BytecodeDialectInterfaceENS1_7DialectEEEDcPT0_.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.k, %bb.c ], [ null, %bb.b ]
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !217
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %.0.i.i, ptr %i.m, align 8, !tbaa !262
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !274  ; 2 uses
  %i.o = call noundef ptr @_ZN4mlir7Dialect22getRegisteredInterfaceINS_21OpAsmDialectInterfaceEEEPT_v(ptr noundef nonnull align 8 dereferenceable(96) %i.n)
  %.not.i.i6 = icmp eq ptr %i.o, null
  br i1 %.not.i.i6, label %_ZN4llvm8dyn_castIN4mlir21OpAsmDialectInterfaceENS1_7DialectEEEDcPT0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8dyn_castIN4mlir24BytecodeDialectInterfaceENS1_7DialectEEEDcPT0_.exit
  %i.p = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4mlir7Dialect22getRegisteredInterfaceINS_21OpAsmDialectInterfaceEEEPT_v(ptr noundef nonnull align 8 dereferenceable(96) %i.n)
  br label %_ZN4llvm8dyn_castIN4mlir21OpAsmDialectInterfaceENS1_7DialectEEEDcPT0_.exit

_ZN4llvm8dyn_castIN4mlir21OpAsmDialectInterfaceENS1_7DialectEEEDcPT0_.exit: ; preds = %_ZN4llvm8dyn_castIN4mlir24BytecodeDialectInterfaceENS1_7DialectEEEDcPT0_.exit, %bb.d
  %.0.i.i7 = phi ptr [ %i.p, %bb.d ], [ null, %_ZN4llvm8dyn_castIN4mlir24BytecodeDialectInterfaceENS1_7DialectEEEDcPT0_.exit ]
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !217  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr %.0.i.i7, ptr %i.r, align 8, !tbaa !218
  br label %bb.e

bb.e:                                             ; preds = %_ZN4llvm8dyn_castIN4mlir21OpAsmDialectInterfaceENS1_7DialectEEEDcPT0_.exit, %bb.a
  %i.s = phi ptr [ %i.q, %_ZN4llvm8dyn_castIN4mlir21OpAsmDialectInterfaceENS1_7DialectEEEDcPT0_.exit ], [ %i.e, %bb.a ]
  ret ptr %i.s
}

declare { ptr, i64 } @_ZNK4mlir20BytecodeWriterConfig27getAttributeWriterCallbacksEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(20) ptr @_ZNK4mlir20BytecodeWriterConfig20getDialectVersionMapEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir21DialectBytecodeWriterD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

declare noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN4mlir15OpPrintingFlagsC1Ev(ptr noundef nonnull align 8 dereferenceable(42)) unnamed_addr #2

declare void @_ZN4mlir8AsmStateC1EPNS_11MLIRContextERKNS_15OpPrintingFlagsEPN4llvm8DenseMapIPNS_9OperationESt4pairIjjENS6_12DenseMapInfoIS9_vEENS6_6detail12DenseMapPairIS9_SB_EEEEPNS_22FallbackAsmResourceMapE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 8 dereferenceable(42), ptr noundef, ptr noundef) unnamed_addr #2

declare void @_ZNK4mlir9Attribute5printERN4llvm11raw_ostreamERNS_8AsmStateEb(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZNK4mlir8AsmState19getDialectResourcesEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir8bytecode6detail16IRNumberingState6numberEPNS_7DialectEN4llvm8ArrayRefINS_24AsmDialectResourceHandleEEE(ptr noundef nonnull align 8 dereferenceable(848) %0, ptr noundef %1, ptr %2, i64 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.std::tuple.514", align 8    ; 4 uses
  %5 = alloca %"class.std::tuple.517", align 8    ; 4 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %7 = alloca %"struct.std::pair.237", align 8    ; 8 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZN4mlir8bytecode6detail16IRNumberingState13numberDialectEPNS_7DialectE(ptr noundef nonnull align 8 dereferenceable(848) %0, ptr noundef %1) ; 9 uses
  %.idx = mul nuw nsw i64 %3, 24
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %.not22 = icmp eq i64 %3, 0
  br i1 %.not22, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %8 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 116
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 232
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvm9MapVectorINS_9StringRefEPN4mlir8bytecode6detail24DialectResourceNumberingENS_8DenseMapIS1_jNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEEENS_11SmallVectorISt4pairIS1_S6_ELj0EEELj0EE6insertEOSG_.exit
  %.01623 = phi ptr [ %2, %.lr.ph ], [ %i.bn, %_ZN4llvm9MapVectorINS_9StringRefEPN4mlir8bytecode6detail24DialectResourceNumberingENS_8DenseMapIS1_jNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEEENS_11SmallVectorISt4pairIS1_S6_ELj0EEELj0EE6insertEOSG_.exit ] ; 6 uses
  %i.s = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir24AsmDialectResourceHandleENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(24) %.01623), !noalias !523
  %.fca.1.extract.i.i.i.i = extractvalue { ptr, i8 } %i.s, 1
  %i.t = trunc nuw i8 %.fca.1.extract.i.i.i.i to i1
  br i1 %i.t, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.u = load i32, ptr %i.e, align 8, !tbaa !46   ; 2 uses
  %i.v = load i32, ptr %i.f, align 4, !tbaa !47
  %.not.i.i = icmp ult i32 %i.u, %i.v
  br i1 %.not.i.i, label %bb.e, label %bb.d, !prof !145

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir24AsmDialectResourceHandleELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %.01623)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.w = zext i32 %i.u to i64
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !45
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %.01623, i64 24, i1 false)
  %i.z = load i32, ptr %i.e, align 8, !tbaa !46
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.e, align 8, !tbaa !46
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !245 ; 2 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = add i64 %i.ac, 40                       ; 2 uses
  %i.ae = load i64, ptr %i.h, align 8, !tbaa !246
  %i.af = icmp ult i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.g, label %bb.h, !prof !145

bb.g:                                             ; preds = %bb.f
  %i.ag = inttoptr i64 %i.ad to ptr
  store ptr %i.ag, ptr %i.g, align 8, !tbaa !245
  br label %_ZN4llvm24SpecificBumpPtrAllocatorIN4mlir8bytecode6detail24DialectResourceNumberingEE8AllocateEm.exit

bb.h:                                             ; preds = %bb.f
  %i.ah = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm1EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 40, i64 noundef 40, i8 0)
  br label %_ZN4llvm24SpecificBumpPtrAllocatorIN4mlir8bytecode6detail24DialectResourceNumberingEE8AllocateEm.exit

_ZN4llvm24SpecificBumpPtrAllocatorIN4mlir8bytecode6detail24DialectResourceNumberingEE8AllocateEm.exit: ; preds = %bb.g, %bb.h
  %.0.i.i = phi ptr [ %i.ab, %bb.g ], [ %i.ah, %bb.h ] ; 9 uses
  %i.ai = load ptr, ptr %i.i, align 8, !tbaa !218 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !220
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %.01623) #19
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16 ; 3 uses
  store ptr %i.am, ptr %.0.i.i, align 8, !tbaa !524
  %i.an = load ptr, ptr %6, align 8, !tbaa !525   ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.j
  br i1 %i.ao, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.i:                                             ; preds = %_ZN4llvm24SpecificBumpPtrAllocatorIN4mlir8bytecode6detail24DialectResourceNumberingEE8AllocateEm.exit
  %i.ap = load i64, ptr %i.k, align 8, !tbaa !526 ; 3 uses
  %i.aq = icmp ult i64 %i.ap, 16
  call void @llvm.assume(i1 %i.aq)
  %i.ar = add nuw nsw i64 %i.ap, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.am, ptr noundef nonnull align 8 dereferenceable(1) %i.j, i64 %i.ar, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvm24SpecificBumpPtrAllocatorIN4mlir8bytecode6detail24DialectResourceNumberingEE8AllocateEm.exit
  store ptr %i.an, ptr %.0.i.i, align 8, !tbaa !525
  %i.as = load i64, ptr %i.j, align 8, !tbaa !527
  store i64 %i.as, ptr %i.am, align 8, !tbaa !527
  %.pre = load i64, ptr %i.k, align 8, !tbaa !526
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.at = phi i64 [ %i.ap, %bb.i ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  store i64 %i.at, ptr %i.au, align 8, !tbaa !526
  store ptr %i.j, ptr %6, align 8, !tbaa !525
  store i64 0, ptr %i.k, align 8, !tbaa !526
  store i8 0, ptr %i.j, align 8, !tbaa !527
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32
  store i32 0, ptr %i.av, align 8, !tbaa !231
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 36
  store i8 1, ptr %i.aw, align 4, !tbaa !230
  store ptr %.0.i.i, ptr %i.a, align 8, !tbaa !280
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.ax = load ptr, ptr %.0.i.i, align 8, !tbaa !525
  store ptr %i.ax, ptr %7, align 8, !tbaa !528
  %i.ay = load i64, ptr %i.au, align 8, !tbaa !526
  store i64 %i.ay, ptr %i.m, align 8, !tbaa !529
  store ptr %.0.i.i, ptr %i.n, align 8, !tbaa !226
  %i.az = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E24lookupOrInsertIntoBucketIRKS2_JEEESt4pairIPS7_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %7), !noalias !530 ; 2 uses
  %.fca.1.extract.i.i.i.i18 = extractvalue { ptr, i8 } %i.az, 1
  %i.ba = trunc nuw i8 %.fca.1.extract.i.i.i.i18 to i1
  br i1 %i.ba, label %bb.j, label %_ZN4llvm9MapVectorINS_9StringRefEPN4mlir8bytecode6detail24DialectResourceNumberingENS_8DenseMapIS1_jNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEEENS_11SmallVectorISt4pairIS1_S6_ELj0EEELj0EE6insertEOSG_.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.fca.0.extract.i.i.i.i = extractvalue { ptr, i8 } %i.az, 0
  %i.bb = load i32, ptr %i.p, align 8, !tbaa !46  ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i.i, i64 16
  store i32 %i.bb, ptr %i.bc, align 8, !tbaa !276
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store ptr %7, ptr %4, align 8, !tbaa !278, !alias.scope !531
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store ptr %i.n, ptr %5, align 8, !tbaa !282, !alias.scope !532
  %i.bd = load i32, ptr %i.q, align 4, !tbaa !47
  %.not.i.i.i = icmp ult i32 %i.bb, %i.bd
  br i1 %.not.i.i.i, label %bb.l, label %bb.k, !prof !145

bb.k:                                             ; preds = %bb.j
  %i.be = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefEPN4mlir8bytecode6detail24DialectResourceNumberingEELb1EE18growAndEmplaceBackIJRKSt21piecewise_construct_tSt5tupleIJOS2_EESE_IJOS7_EEEEERS8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplISt4pairINS_9StringRefEPN4mlir8bytecode6detail24DialectResourceNumberingEEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJOS2_EESE_IJOS7_EEEEERS8_DpOT_.exit.i.i

bb.l:                                             ; preds = %bb.j
  %i.bf = zext i32 %i.bb to i64
  %i.bg = load ptr, ptr %i.o, align 8, !tbaa !45
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %i.bf ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 16, i1 false), !tbaa.struct !279
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.n, align 8, !tbaa !280
  store ptr %i.bj, ptr %i.bi, align 8, !tbaa !226
  %i.bk = load i32, ptr %i.p, align 8, !tbaa !46
  %i.bl = add i32 %i.bk, 1
  store i32 %i.bl, ptr %i.p, align 8, !tbaa !46
  br label %_ZN4llvm15SmallVectorImplISt4pairINS_9StringRefEPN4mlir8bytecode6detail24DialectResourceNumberingEEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJOS2_EESE_IJOS7_EEEEERS8_DpOT_.exit.i.i

_ZN4llvm15SmallVectorImplISt4pairINS_9StringRefEPN4mlir8bytecode6detail24DialectResourceNumberingEEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJOS2_EESE_IJOS7_EEEEERS8_DpOT_.exit.i.i: ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %_ZN4llvm9MapVectorINS_9StringRefEPN4mlir8bytecode6detail24DialectResourceNumberingENS_8DenseMapIS1_jNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEEENS_11SmallVectorISt4pairIS1_S6_ELj0EEELj0EE6insertEOSG_.exit

_ZN4llvm9MapVectorINS_9StringRefEPN4mlir8bytecode6detail24DialectResourceNumberingENS_8DenseMapIS1_jNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEEENS_11SmallVectorISt4pairIS1_S6_ELj0EEELj0EE6insertEOSG_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN4llvm15SmallVectorImplISt4pairINS_9StringRefEPN4mlir8bytecode6detail24DialectResourceNumberingEEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJOS2_EESE_IJOS7_EEEEERS8_DpOT_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.bm = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir24AsmDialectResourceHandleEPNS2_8bytecode6detail24DialectResourceNumberingENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E24lookupOrInsertIntoBucketIRKS3_JRS7_EEESt4pairIPSC_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %.01623, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !533 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.bn = getelementptr inbounds nuw i8, ptr %.01623, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.bn, %i.c
  br i1 %.not, label %.critedge, label %bb.b

.critedge:                                        ; preds = %_ZN4llvm9MapVectorINS_9StringRefEPN4mlir8bytecode6detail24DialectResourceNumberingENS_8DenseMapIS1_jNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEEENS_11SmallVectorISt4pairIS1_S6_ELj0EEELj0EE6insertEOSG_.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4llvm16raw_null_ostreamD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN4mlir8AsmStateD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir8bytecode6detail16IRNumberingState6numberERNS_5BlockE(ptr noundef nonnull align 8 dereferenceable(848) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::Location", align 8    ; 4 uses
  %3 = alloca %"class.mlir::BlockArgument", align 8 ; 6 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !159  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !160  ; 2 uses
  %.not23 = icmp eq ptr %i.d, %i.f
  br i1 %.not23, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 840
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN4mlir8bytecode6detail16IRNumberingState6numberENS_8LocationE.exit, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 784
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store ptr %1, ptr %i.b, align 8, !tbaa !153
  %i.k = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir5BlockEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.k, 0
  %i.l = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.sroa.015.025 = load ptr, ptr %i.m, align 8, !tbaa !148 ; 2 uses
  %.not2226 = icmp eq ptr %.sroa.015.025, %i.n
  br i1 %.not2226, label %._crit_edge30, label %.lr.ph29

bb.b:                                             ; preds = %.lr.ph, %_ZN4mlir8bytecode6detail16IRNumberingState6numberENS_8LocationE.exit
  %.024 = phi ptr [ %i.d, %.lr.ph ], [ %i.ac, %_ZN4mlir8bytecode6detail16IRNumberingState6numberENS_8LocationE.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.o = load i64, ptr %.024, align 8
  store i64 %i.o, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.p = load i32, ptr %i.h, align 8, !tbaa !142  ; 2 uses
  %i.q = add i32 %i.p, 1
  store i32 %i.q, ptr %i.h, align 8, !tbaa !142
  store i32 %i.p, ptr %i.a, align 4, !tbaa !49
  %i.r = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JjEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a), !noalias !538 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.s = load ptr, ptr %3, align 8, !tbaa !236
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.t, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %.sroa.0.0.copyload.i, ptr %2, align 8
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !167, !nonnull !81, !align !168
  %i.v = call noundef zeroext i1 @_ZNK4mlir20BytecodeWriterConfig20shouldElideLocationsEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u) #19
  br i1 %i.v, label %bb.c, label %_ZN4mlir8bytecode6detail16IRNumberingState6numberENS_8LocationE.exit

bb.c:                                             ; preds = %bb.b
  %i.w = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #19
  %i.x = call ptr @_ZN4mlir10UnknownLoc3getEPNS_11MLIRContextE(ptr noundef %i.w) #19
  br label %_ZN4mlir8bytecode6detail16IRNumberingState6numberENS_8LocationE.exit

_ZN4mlir8bytecode6detail16IRNumberingState6numberENS_8LocationE.exit: ; preds = %bb.b, %bb.c
  %.sink = phi ptr [ %i.x, %bb.c ], [ %.sroa.0.0.copyload.i, %bb.b ]
  call void @_ZN4mlir8bytecode6detail16IRNumberingState6numberENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(848) %0, ptr %.sink)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.y = load ptr, ptr %3, align 8, !tbaa !236
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.z, align 8
  %i.aa = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.ab = inttoptr i64 %i.aa to ptr
  call void @_ZN4mlir8bytecode6detail16IRNumberingState6numberENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(848) %0, ptr %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.ac = getelementptr inbounds nuw i8, ptr %.024, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ac, %i.f
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge30:                                    ; preds = %.lr.ph29, %._crit_edge
  ret void

.lr.ph29:                                         ; preds = %._crit_edge, %.lr.ph29
  %.sroa.015.027 = phi ptr [ %.sroa.015.0, %.lr.ph29 ], [ %.sroa.015.025, %._crit_edge ] ; 2 uses
  %i.ad = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.015.027) #19
  call void @_ZN4mlir8bytecode6detail16IRNumberingState6numberERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(848) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.ad)
  %i.ae = load i32, ptr %i.l, align 4, !tbaa !49
  %i.af = add i32 %i.ae, 1
  store i32 %i.af, ptr %i.l, align 4, !tbaa !49
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.015.027, i64 8
  %.sroa.015.0 = load ptr, ptr %i.ag, align 8, !tbaa !148 ; 2 uses
  %.not22 = icmp eq ptr %.sroa.015.0, %i.n
  br i1 %.not22, label %._crit_edge30, label %.lr.ph29
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir8bytecode6detail16IRNumberingState6numberENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(848) %0, ptr %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::Type", align 8        ; 9 uses
  %3 = alloca %"class.mlir::OpaqueType", align 8  ; 5 uses
  %4 = alloca %"class.mlir::StringAttr", align 8  ; 4 uses
  %5 = alloca %"struct.mlir::bytecode::detail::IRNumberingState::NumberingDialectWriter", align 8 ; 7 uses
  %6 = alloca %"class.std::optional", align 8     ; 7 uses
  %7 = alloca %"struct.mlir::bytecode::detail::IRNumberingState::NumberingDialectWriter", align 8 ; 6 uses
  %8 = alloca %"class.mlir::AsmState", align 8    ; 6 uses
  %9 = alloca %"class.mlir::OpPrintingFlags", align 8 ; 4 uses
  %10 = alloca %"class.llvm::raw_null_ostream", align 8 ; 8 uses
  store ptr %1, ptr %2, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4TypeEPNS2_8bytecode6detail13TypeNumberingENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSC_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2), !noalias !548 ; 2 uses
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.b, 0 ; 2 uses
  %.fca.1.extract.i.i = extractvalue { ptr, i8 } %i.b, 1
  %i.c = trunc nuw i8 %.fca.1.extract.i.i to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !551
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 12 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !244
  %i.h = add i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 4, !tbaa !244
  br label %bb.x

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !245  ; 2 uses
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = add i64 %i.k, 24                         ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.n = load i64, ptr %i.m, align 8, !tbaa !246
  %i.o = icmp ult i64 %i.l, %i.n
  br i1 %i.o, label %bb.d, label %bb.e, !prof !145

bb.d:                                             ; preds = %bb.c
  %i.p = inttoptr i64 %i.l to ptr
  store ptr %i.p, ptr %i.i, align 8, !tbaa !245
  br label %_ZN4llvm24SpecificBumpPtrAllocatorIN4mlir8bytecode6detail13TypeNumberingEE8AllocateEm.exit

bb.e:                                             ; preds = %bb.c
  %i.q = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm1EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.i, i64 noundef 24, i64 noundef 24, i8 0)
  br label %_ZN4llvm24SpecificBumpPtrAllocatorIN4mlir8bytecode6detail13TypeNumberingEE8AllocateEm.exit

_ZN4llvm24SpecificBumpPtrAllocatorIN4mlir8bytecode6detail13TypeNumberingEE8AllocateEm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi ptr [ %i.j, %bb.d ], [ %i.q, %bb.e ] ; 7 uses
  %.sroa.026.0.copyload = load ptr, ptr %2, align 8, !tbaa !284
  %i.r = ptrtoint ptr %.sroa.026.0.copyload to i64
  %i.s = or i64 %i.r, 4
  store i64 %i.s, ptr %.0.i.i, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  store i32 0, ptr %i.t, align 8, !tbaa !205
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 12
  store i32 1, ptr %i.u, align 4, !tbaa !244
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16 ; 5 uses
  store ptr null, ptr %i.v, align 8, !tbaa !185
  %i.w = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 8
  store ptr %.0.i.i, ptr %i.w, align 8, !tbaa !551
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !214  ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !552
  %.not.i = icmp eq ptr %i.z, %i.ab
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm24SpecificBumpPtrAllocatorIN4mlir8bytecode6detail13TypeNumberingEE8AllocateEm.exit
  store ptr %.0.i.i, ptr %i.z, align 8, !tbaa !216
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !214
  br label %_ZNSt6vectorIPN4mlir8bytecode6detail13TypeNumberingESaIS4_EE9push_backERKS4_.exit

bb.g:                                             ; preds = %_ZN4llvm24SpecificBumpPtrAllocatorIN4mlir8bytecode6detail13TypeNumberingEE8AllocateEm.exit
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !213 ; 4 uses
  %i.ae = ptrtoint ptr %i.z to i64
  %i.af = ptrtoint ptr %i.ad to i64               ; 2 uses
  %i.ag = sub i64 %i.ae, %i.af                    ; 5 uses
  %i.ah = icmp eq i64 %i.ag, 9223372036854775800
  br i1 %i.ah, label %bb.h, label %_ZNKSt6vectorIPN4mlir8bytecode6detail13TypeNumberingESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #21
  unreachable

_ZNKSt6vectorIPN4mlir8bytecode6detail13TypeNumberingESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.ai = ashr exact i64 %i.ag, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ai, i64 1)
  %i.aj = add nsw i64 %.sroa.speculated.i.i.i, %i.ai ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ai
  %i.al = call i64 @llvm.umin.i64(i64 %i.aj, i64 1152921504606846975)
  %i.am = select i1 %i.ak, i64 1152921504606846975, i64 %i.al ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.am, 0
  call void @llvm.assume(i1 %.not.i.i.i)
end_hunk_0
