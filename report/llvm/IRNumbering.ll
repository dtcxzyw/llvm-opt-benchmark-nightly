Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/IRNumbering?download=true
inline.NumInlined: 4192
inline.NumDeleted: 2183
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN4mlir8bytecode6detail16IRNumberingStateC2EPNS_9OperationERKNS_20BytecodeWriterConfigE:bb.a
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zl, i64 40
  %i.zp = load ptr, ptr %i.zn, align 8, !tbaa !220
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zp, i64 56
  %i.zr = load ptr, ptr %i.zq, align 8
  call void %i.zr(ptr noundef nonnull align 8 dereferenceable(24) %i.zn, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(40) %i.zo, ptr noundef nonnull align 8 dereferenceable(8) %4) #19, !inline_history !448
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zl, i64 104
  %i.zt = load ptr, ptr %i.zs, align 8, !tbaa !45 ; 2 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zl, i64 112
  %i.zv = load i32, ptr %i.zu, align 8, !tbaa !46 ; 2 uses
  %i.zw = zext i32 %i.zv to i64
  %.idx36.i = mul nuw nsw i64 %i.zw, 24
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zt, i64 %.idx36.i
  %.not1729.i = icmp eq i32 %i.zv, 0
  br i1 %.not1729.i, label %._crit_edge.i108, label %.lr.ph.preheader.i106

.lr.ph.preheader.i106:                            ; preds = %bb.br
  %.promoted.i = load i32, ptr %i.a, align 4
  br label %.lr.ph.i107

._crit_edge.i108:                                 ; preds = %bb.bt, %bb.br
  call void @_ZN4mlir18AsmResourceBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.bu

.lr.ph.i107:                                      ; preds = %bb.bt, %.lr.ph.preheader.i106
  %.030.i = phi ptr [ %i.aah, %bb.bt ], [ %i.zt, %.lr.ph.preheader.i106 ] ; 2 uses
  %i.zy = phi i32 [ %i.aag, %bb.bt ], [ %.promoted.i, %.lr.ph.preheader.i106 ] ; 3 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %.030.i, i64 16
  %i.aaa = load ptr, ptr %i.zz, align 8, !tbaa !226 ; 2 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %i.aaa, i64 36
  %i.aac = load i8, ptr %i.aab, align 4, !tbaa !230, !range !80, !noundef !81
  %i.aad = trunc nuw i8 %i.aac to i1
  br i1 %i.aad, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %.lr.ph.i107
  %i.aae = add i32 %i.zy, 1                       ; 2 uses
  store i32 %i.aae, ptr %i.a, align 4, !tbaa !49
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aaa, i64 32
  store i32 %i.zy, ptr %i.aaf, align 8, !tbaa !231
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %.lr.ph.i107
  %i.aag = phi i32 [ %i.aae, %bb.bs ], [ %i.zy, %.lr.ph.i107 ]
  %i.aah = getelementptr inbounds nuw i8, ptr %.030.i, i64 24 ; 2 uses
  %.not17.i = icmp eq ptr %i.aah, %i.zx
  br i1 %.not17.i, label %._crit_edge.i108, label %.lr.ph.i107

bb.bu:                                            ; preds = %._crit_edge.i108, %bb.bq
  %i.aai = getelementptr inbounds nuw i8, ptr %.sroa.023.032.i, i64 24 ; 2 uses
  %.not28.i = icmp eq ptr %i.aai, %i.zh
  br i1 %.not28.i, label %_ZN4mlir8bytecode6detail16IRNumberingState33finalizeDialectResourceNumberingsEPNS_9OperationE.exit, label %bb.bq

_ZN4mlir8bytecode6detail16IRNumberingState33finalizeDialectResourceNumberingsEPNS_9OperationE.exit: ; preds = %bb.bu, %_ZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail13TypeNumberingEEEEvT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.aaj = load ptr, ptr %14, align 8, !tbaa !45  ; 2 uses
  %i.aak = icmp eq ptr %i.aaj, %i.bu
  br i1 %i.aak, label %_ZN4llvm11SmallVectorISt4pairIPN4mlir6RegionEjELj8EED2Ev.exit, label %bb.bv

bb.bv:                                            ; preds = %_ZN4mlir8bytecode6detail16IRNumberingState33finalizeDialectResourceNumberingsEPNS_9OperationE.exit
  call void @free(ptr noundef %i.aaj) #19
  br label %_ZN4llvm11SmallVectorISt4pairIPN4mlir6RegionEjELj8EED2Ev.exit

_ZN4llvm11SmallVectorISt4pairIPN4mlir6RegionEjELj8EED2Ev.exit: ; preds = %_ZN4mlir8bytecode6detail16IRNumberingState33finalizeDialectResourceNumberingsEPNS_9OperationE.exit, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  ret void

.lr.ph220:                                        ; preds = %._crit_edge215, %.lr.ph220
  %.sroa.0174.0218 = phi ptr [ %i.aap, %.lr.ph220 ], [ %i.sg, %._crit_edge215 ] ; 2 uses
  %.sroa.7.0217 = phi i32 [ %i.aao, %.lr.ph220 ], [ 0, %._crit_edge215 ] ; 2 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %.sroa.0174.0218, i64 16
  %i.aam = load ptr, ptr %i.aal, align 8, !tbaa !233
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aam, i64 16
  store i32 %.sroa.7.0217, ptr %i.aan, align 8, !tbaa !204
  %i.aao = add nuw i32 %.sroa.7.0217, 1
  %i.aap = getelementptr inbounds nuw i8, ptr %.sroa.0174.0218, i64 24 ; 2 uses
  %.not201 = icmp eq ptr %i.aap, %i.sj
  br i1 %.not201, label %._crit_edge221, label %.lr.ph220
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir8bytecode6detail16IRNumberingState27computeGlobalNumberingStateEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(848) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %2 = alloca %"class.llvm::SmallVector.102", align 8 ; 8 uses
  %3 = alloca %class.anon.107, align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !45
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.c, align 8, !tbaa !46
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 2, ptr %i.d, align 4, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store ptr %2, ptr %3, align 8, !tbaa !51
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %0, ptr %i.e, align 8, !tbaa !55
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.a, ptr %i.f, align 8, !tbaa !56
  %i.g = ptrtoint ptr %3 to i64
  call void @_ZN4mlir6detail4walkEPNS_9OperationEN4llvm12function_refIFvS2_RKNS_9WalkStageEEEE(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nonnull @"_ZN4llvm12function_refIFvPN4mlir9OperationERKNS1_9WalkStageEEE11callback_fnIZNS1_8bytecode6detail16IRNumberingState27computeGlobalNumberingStateES3_E3$_0EEvlS3_S6_", i64 %i.g) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.h = load ptr, ptr %2, align 8, !tbaa !45     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.b
  br i1 %i.i, label %_ZN4llvm11SmallVectorIZN4mlir8bytecode6detail16IRNumberingState27computeGlobalNumberingStateEPNS1_9OperationEE10StackStateLj2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @free(ptr noundef %i.h) #19
  br label %_ZN4llvm11SmallVectorIZN4mlir8bytecode6detail16IRNumberingState27computeGlobalNumberingStateEPNS1_9OperationEE10StackStateLj2EED2Ev.exit

_ZN4llvm11SmallVectorIZN4mlir8bytecode6detail16IRNumberingState27computeGlobalNumberingStateEPNS1_9OperationEE10StackStateLj2EED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir8bytecode6detail16IRNumberingState6numberERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(848) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::Location", align 8    ; 4 uses
  %3 = alloca %"class.mlir::OpResult", align 8    ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %4 = alloca %"class.mlir::DictionaryAttr", align 8 ; 5 uses
  %5 = alloca %"class.mlir::BytecodeOpInterface", align 8 ; 5 uses
  %6 = alloca %"struct.mlir::bytecode::detail::IRNumberingState::NumberingDialectWriter", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.b, align 8, !tbaa !234
  tail call void @_ZN4mlir8bytecode6detail16IRNumberingState6numberENS_13OperationNameE(ptr noundef nonnull align 8 dereferenceable(848) %0, ptr %.sroa.0.0.copyload.i)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.d = load i32, ptr %i.c, align 4, !tbaa !453  ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %1, i64 -16
  %i.f = zext i32 %i.d to i64
  %.not3942 = icmp eq i32 %i.d, 0
  br i1 %.not3942, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !167, !nonnull !81, !align !168
  %i.k = call noundef i64 @_ZNK4mlir20BytecodeWriterConfig25getDesiredBytecodeVersionEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j) #19
  %i.l = icmp sgt i64 %i.k, 4
  br i1 %i.l, label %bb.c, label %bb.d

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.433.043 = phi i64 [ 0, %.lr.ph ], [ %i.u, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.m = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 noundef %.sroa.433.043) #19
  store ptr %i.m, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.n = load i32, ptr %i.h, align 8, !tbaa !142  ; 2 uses
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.h, align 8, !tbaa !142
  store i32 %i.n, ptr %i.a, align 4, !tbaa !49
  %i.p = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JjEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a), !noalias !454 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.q = load ptr, ptr %3, align 8, !tbaa !236
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.r, align 8
  %i.s = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.t = inttoptr i64 %i.s to ptr
  call void @_ZN4mlir8bytecode6detail16IRNumberingState6numberENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(848) %0, ptr %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.u = add nuw nsw i64 %.sroa.433.043, 1        ; 2 uses
  %.not39 = icmp eq i64 %i.u, %i.f
  br i1 %.not39, label %._crit_edge, label %bb.b

bb.c:                                             ; preds = %._crit_edge
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i22 = load ptr, ptr %i.v, align 8
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.w = call ptr @_ZN4mlir9Operation17getAttrDictionaryEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #19
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %storemerge = phi ptr [ %i.w, %bb.d ], [ %.sroa.0.0.copyload.i22, %bb.c ]
  store ptr %storemerge, ptr %4, align 8
  %i.x = call noundef i64 @_ZNK4mlir14DictionaryAttr4sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.02.0.copyload = load ptr, ptr %4, align 8, !tbaa !237
  call void @_ZN4mlir8bytecode6detail16IRNumberingState6numberENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(848) %0, ptr %.sroa.02.0.copyload)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.z = load ptr, ptr %i.i, align 8, !tbaa !167, !nonnull !81, !align !168
  %i.aa = call noundef i64 @_ZNK4mlir20BytecodeWriterConfig25getDesiredBytecodeVersionEv(ptr noundef nonnull align 8 dereferenceable(8) %i.z) #19
  %i.ab = icmp sgt i64 %i.aa, 4
  br i1 %i.ab, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 44
  %7 = load i32, ptr %i.ac, align 4               ; 2 uses
  %.not = icmp ult i32 %7, 16777216
  br i1 %.not, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.b, align 8, !tbaa !234
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !240
  %.not40 = icmp eq ptr %i.ae, @_ZN4mlir6detail14TypeIDResolverIvvE2idE
  br i1 %.not40, label %_ZN4mlir9Operation20getPropertiesStorageEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.af = call noundef ptr @_ZN4mlir11OpInterfaceINS_19BytecodeOpInterfaceENS_6detail34BytecodeOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %1)
  store ptr %1, ptr %5, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.af, ptr %i.ag, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.ah = load ptr, ptr %i.i, align 8, !tbaa !167, !nonnull !81, !align !168
  %i.ai = call noundef nonnull align 8 dereferenceable(20) ptr @_ZNK4mlir20BytecodeWriterConfig20getDialectVersionMapEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ah) #19
  store ptr getelementptr inbounds nuw inrange(-16, 128) (i8, ptr @_ZTVN4mlir8bytecode6detail16IRNumberingState22NumberingDialectWriterE, i64 16), ptr %6, align 8, !tbaa !220
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %i.aj, align 8, !tbaa !241
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.ai, ptr %i.ak, align 8, !tbaa !243
  call void @_ZN4mlir19BytecodeOpInterface15writePropertiesERNS_21DialectBytecodeWriterE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.l

_ZN4mlir9Operation20getPropertiesStorageEv.exit:  ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.am = lshr i32 %7, 23
  %.lobit.i.i.i.i.i.i.i = and i32 %i.am, 1
  %i.an = zext nneg i32 %.lobit.i.i.i.i.i.i.i to i64
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !237 ; 2 uses
  %.not41 = icmp eq i64 %i.ap, 0
  br i1 %.not41, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN4mlir9Operation20getPropertiesStorageEv.exit
  %i.aq = inttoptr i64 %i.ap to ptr
  call void @_ZN4mlir8bytecode6detail16IRNumberingState6numberENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(848) %0, ptr nonnull %i.aq)
  br label %bb.l

bb.l:                                             ; preds = %_ZN4mlir9Operation20getPropertiesStorageEv.exit, %bb.k, %bb.j, %bb.h, %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i26 = load ptr, ptr %i.ar, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %.sroa.0.0.copyload.i26, ptr %2, align 8
  %i.as = load ptr, ptr %i.i, align 8, !tbaa !167, !nonnull !81, !align !168
  %i.at = call noundef zeroext i1 @_ZNK4mlir20BytecodeWriterConfig20shouldElideLocationsEv(ptr noundef nonnull align 8 dereferenceable(8) %i.as) #19
  br i1 %i.at, label %bb.m, label %_ZN4mlir8bytecode6detail16IRNumberingState6numberENS_8LocationE.exit

bb.m:                                             ; preds = %bb.l
  %i.au = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #19
  %i.av = call ptr @_ZN4mlir10UnknownLoc3getEPNS_11MLIRContextE(ptr noundef %i.au) #19
  br label %_ZN4mlir8bytecode6detail16IRNumberingState6numberENS_8LocationE.exit

_ZN4mlir8bytecode6detail16IRNumberingState6numberENS_8LocationE.exit: ; preds = %bb.l, %bb.m
  %.sink = phi ptr [ %i.av, %bb.m ], [ %.sroa.0.0.copyload.i26, %bb.l ]
  call void @_ZN4mlir8bytecode6detail16IRNumberingState6numberENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(848) %0, ptr %.sink)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir8bytecode6detail16IRNumberingState6numberERNS_6RegionE(ptr noundef nonnull align 8 dereferenceable(848) %0, ptr noundef nonnull align 8 dereferenceable(28) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !146
  %i.g = icmp eq ptr %1, %i.f
  br i1 %i.g, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !142
  %i.j = zext i32 %i.i to i64                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 0, ptr %i.a, align 8, !tbaa !147
  %.sroa.022.0.in29 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.022.030 = load ptr, ptr %.sroa.022.0.in29, align 8, !tbaa !148 ; 2 uses
  %.not31 = icmp eq ptr %.sroa.022.030, %1
  br i1 %.not31, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 736
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %bb.c
  %.pre = load i32, ptr %i.h, align 8, !tbaa !142
  %.pre34 = zext i32 %.pre to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %.pre-phi = phi i64 [ %.pre34, %._crit_edge.loopexit ], [ %i.j, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 808
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store ptr %1, ptr %i.d, align 8, !tbaa !144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  %i.m = sub nsw i64 %.pre-phi, %i.j
  store i64 %i.m, ptr %i.e, align 8, !tbaa !147
  %i.n = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir6RegionESt4pairIjjENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E24lookupOrInsertIntoBucketIS4_JRmmEEES5_IPSB_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.e), !noalias !463 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %i.o = phi i64 [ 0, %.lr.ph ], [ %i.r, %bb.c ]
  %.sroa.022.033 = phi ptr [ %.sroa.022.030, %.lr.ph ], [ %.sroa.022.0, %bb.c ] ; 2 uses
  %.sroa.725.032 = phi i64 [ 0, %.lr.ph ], [ %i.s, %bb.c ] ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %.sroa.022.033, i64 -8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store ptr %i.p, ptr %i.b, align 8, !tbaa !153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i64 %.sroa.725.032, ptr %i.c, align 8, !tbaa !147
  %i.q = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir5BlockEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E24lookupOrInsertIntoBucketIS4_JmEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c), !noalias !464 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @_ZN4mlir8bytecode6detail16IRNumberingState6numberERNS_5BlockE(ptr noundef nonnull align 8 dereferenceable(848) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.p)
  %i.r = add i64 %i.o, 1                          ; 2 uses
  store i64 %i.r, ptr %i.a, align 8, !tbaa !147
  %i.s = add i64 %.sroa.725.032, 1
  %.sroa.022.0.in = getelementptr inbounds nuw i8, ptr %.sroa.022.033, i64 8
  %.sroa.022.0 = load ptr, ptr %.sroa.022.0.in, align 8, !tbaa !148 ; 2 uses
  %.not = icmp eq ptr %.sroa.022.0, %1
  br i1 %.not, label %._crit_edge.loopexit, label %bb.c

bb.d:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN4mlir6Region10OpIteratorppEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir8bytecode6detail16IRNumberingState33finalizeDialectResourceNumberingsEPNS_9OperationE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(848) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %2 = alloca %"struct.(anonymous namespace)::NumberingResourceBuilder", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !49
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !45, !noalias !471 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.e = load i32, ptr %i.d, align 8, !tbaa !46, !noalias !471 ; 2 uses
  %i.f = zext i32 %i.e to i64
  %.idx = mul nuw nsw i64 %i.f, 24
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %.not2831 = icmp eq i32 %i.e, 0
  br i1 %.not2831, label %._crit_edge35, label %.lr.ph34

.lr.ph34:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.b

._crit_edge35:                                    ; preds = %bb.f, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void

bb.b:                                             ; preds = %.lr.ph34, %bb.f
  %.sroa.023.032 = phi ptr [ %i.c, %.lr.ph34 ], [ %i.ah, %bb.f ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.023.032, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !217  ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !218  ; 3 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN12_GLOBAL__N_124NumberingResourceBuilderE, i64 16), ptr %2, align 8, !tbaa !220
  store ptr %i.k, ptr %i.h, align 8, !tbaa !223
  store ptr %i.a, ptr %i.i, align 8, !tbaa !56
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !220
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %2) #19
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !45   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  %i.u = load i32, ptr %i.t, align 8, !tbaa !46   ; 2 uses
  %i.v = zext i32 %i.u to i64
  %.idx36 = mul nuw nsw i64 %i.v, 24
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx36
  %.not1729 = icmp eq i32 %i.u, 0
  br i1 %.not1729, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %.promoted = load i32, ptr %i.a, align 4
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %bb.c
  call void @_ZN4mlir18AsmResourceBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.f

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %.030 = phi ptr [ %i.ag, %bb.e ], [ %i.s, %.lr.ph.preheader ] ; 2 uses
  %i.x = phi i32 [ %i.af, %bb.e ], [ %.promoted, %.lr.ph.preheader ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.030, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !226  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 36
  %i.ab = load i8, ptr %i.aa, align 4, !tbaa !230, !range !80, !noundef !81
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.ad = add i32 %i.x, 1                         ; 2 uses
  store i32 %i.ad, ptr %i.a, align 4, !tbaa !49
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store i32 %i.x, ptr %i.ae, align 8, !tbaa !231
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %i.af = phi i32 [ %i.ad, %bb.d ], [ %i.x, %.lr.ph ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.030, i64 24 ; 2 uses
end_hunk_0
