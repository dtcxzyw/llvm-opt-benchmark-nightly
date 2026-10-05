Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SimplifyAffineStructures?download=true
inline.NumInlined: 759
inline.NumDeleted: 554
begin_hunk_0_@_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir9AttributeES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E16shrink_and_clearEv:bb.a

_ZNK4llvm8DenseMapIN4mlir9AttributeES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE18planShrinkAndClearEv.exit: ; preds = %bb.a
  %i.c = add i32 %i.b, -1
  %i.d = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.c, i1 false)
  %i.e = sub nuw nsw i32 33, %i.d
  %i.f = shl nuw i32 1, %i.e
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.f, i32 64) ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !20   ; 3 uses
  %.not = icmp eq i32 %.sroa.speculated.i, %i.h
  br i1 %.not, label %bb.b, label %bb.c

_ZNK4llvm8DenseMapIN4mlir9AttributeES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE18planShrinkAndClearEv.exit.thread: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !20   ; 2 uses
  %.not8 = icmp eq i32 %i.j, 0
  br i1 %.not8, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir9AttributeES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E9initEmptyEv.exit, label %.thread16

bb.b:                                             ; preds = %_ZNK4llvm8DenseMapIN4mlir9AttributeES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE18planShrinkAndClearEv.exit
  store i32 0, ptr %i.a, align 8, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !23
  %i.m = zext i32 %.sroa.speculated.i to i64
  %i.n = add nuw nsw i64 %i.m, 31
  %i.o = lshr i64 %i.n, 3
  %i.p = and i64 %i.o, 1073741820
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.l, i8 0, i64 %i.p, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir9AttributeES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E9initEmptyEv.exit

bb.c:                                             ; preds = %_ZNK4llvm8DenseMapIN4mlir9AttributeES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE18planShrinkAndClearEv.exit
  %.sroa.39.0.insert.ext.i = zext i32 %.sroa.speculated.i to i64 ; 2 uses
  %i.q = icmp eq i32 %i.h, 0
  br i1 %i.q, label %_ZN4llvm8DenseMapIN4mlir9AttributeES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17deallocateBucketsEv.exit, label %.thread16

.thread16:                                        ; preds = %_ZNK4llvm8DenseMapIN4mlir9AttributeES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE18planShrinkAndClearEv.exit.thread, %bb.c
  %i.r = phi ptr [ %i.g, %bb.c ], [ %i.i, %_ZNK4llvm8DenseMapIN4mlir9AttributeES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE18planShrinkAndClearEv.exit.thread ] ; 2 uses
  %i.s = phi i32 [ %i.h, %bb.c ], [ %i.j, %_ZNK4llvm8DenseMapIN4mlir9AttributeES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE18planShrinkAndClearEv.exit.thread ]
  %spec.select10.i1221 = phi i32 [ %.sroa.speculated.i, %bb.c ], [ 0, %_ZNK4llvm8DenseMapIN4mlir9AttributeES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE18planShrinkAndClearEv.exit.thread ]
  %.sroa.39.0.insert.ext.i1319 = phi i64 [ %.sroa.39.0.insert.ext.i, %bb.c ], [ 0, %_ZNK4llvm8DenseMapIN4mlir9AttributeES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE18planShrinkAndClearEv.exit.thread ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !21
  %i.u = zext i32 %i.s to i64                     ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 4
  %i.w = add nuw nsw i64 %i.u, 31
  %i.x = lshr i64 %i.w, 3
  %i.y = and i64 %i.x, 1073741820
  %i.z = add nuw nsw i64 %i.y, %i.v
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.t, i64 noundef %i.z, i64 noundef 8) #15
  store i32 0, ptr %i.r, align 4, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIN4mlir9AttributeES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapIN4mlir9AttributeES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17deallocateBucketsEv.exit: ; preds = %bb.c, %.thread16
  %i.aa = phi ptr [ %i.g, %bb.c ], [ %i.r, %.thread16 ] ; 2 uses
  %spec.select10.i1222 = phi i32 [ %.sroa.speculated.i, %bb.c ], [ %spec.select10.i1221, %.thread16 ] ; 2 uses
  %.sroa.39.0.insert.ext.i1320 = phi i64 [ %.sroa.39.0.insert.ext.i, %bb.c ], [ %.sroa.39.0.insert.ext.i1319, %.thread16 ] ; 2 uses
  store i32 %spec.select10.i1222, ptr %i.aa, align 4, !tbaa !20
  %.not.i4 = icmp eq i32 %spec.select10.i1222, 0
  br i1 %.not.i4, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8DenseMapIN4mlir9AttributeES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17deallocateBucketsEv.exit
  %i.ab = shl nuw nsw i64 %.sroa.39.0.insert.ext.i1320, 4
  %i.ac = add nuw nsw i64 %.sroa.39.0.insert.ext.i1320, 31
  %i.ad = lshr i64 %i.ac, 3
  %i.ae = and i64 %i.ad, 1073741820
  %i.af = add nuw nsw i64 %i.ae, %i.ab
  %i.ag = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.af, i64 noundef 8) #15 ; 2 uses
  %i.ah = load i32, ptr %i.aa, align 4, !tbaa !20 ; 2 uses
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.aj ; 2 uses
  store ptr %i.ag, ptr %0, align 8, !tbaa !21
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !23
  store i32 0, ptr %i.a, align 8, !tbaa !22
  %.not.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir9AttributeES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E9initEmptyEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = add nuw nsw i64 %i.ai, 31
  %i.an = lshr i64 %i.am, 3
  %i.ao = and i64 %i.an, 1073741820
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ak, i8 0, i64 %i.ao, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir9AttributeES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E9initEmptyEv.exit

bb.f:                                             ; preds = %_ZN4llvm8DenseMapIN4mlir9AttributeES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17deallocateBucketsEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir9AttributeES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E9initEmptyEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir9AttributeES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E9initEmptyEv.exit: ; preds = %_ZNK4llvm8DenseMapIN4mlir9AttributeES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE18planShrinkAndClearEv.exit.thread, %bb.f, %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #10

declare noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void %1(i64 noundef %2, ptr noundef %0) #15, !inline_history !120
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = tail call { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %0) #15 ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 5
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %.not41 = icmp eq i64 %i.d, 0
  br i1 %.not41, label %._crit_edge43, label %.preheader

.preheader:                                       ; preds = %bb.c, %._crit_edge
  %.042 = phi ptr [ %i.g, %._crit_edge ], [ %i.c, %bb.c ] ; 4 uses
  %.sroa.022.0.in36 = getelementptr inbounds nuw i8, ptr %.042, i64 8
  %.sroa.022.037 = load ptr, ptr %.sroa.022.0.in36, align 8, !tbaa !123 ; 2 uses
  %.not3238 = icmp eq ptr %.sroa.022.037, %.042
  br i1 %.not3238, label %._crit_edge, label %.lr.ph40

._crit_edge43:                                    ; preds = %._crit_edge, %bb.c
  %i.f = icmp eq i32 %3, 1
  br i1 %i.f, label %bb.d, label %bb.e

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph40
  %.sroa.022.0.in = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 8
  %.sroa.022.0 = load ptr, ptr %.sroa.022.0.in, align 8, !tbaa !123 ; 2 uses
  %.not32 = icmp eq ptr %.sroa.022.0, %.042
  br i1 %.not32, label %._crit_edge, label %.lr.ph40

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %.042, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.g, %i.e
  br i1 %.not, label %._crit_edge43, label %.preheader

.lr.ph40:                                         ; preds = %.preheader, %.loopexit
  %.sroa.022.039 = phi ptr [ %.sroa.022.0, %.loopexit ], [ %.sroa.022.037, %.preheader ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !123  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 32 ; 2 uses
  %.not3334 = icmp eq ptr %i.i, %i.j
  br i1 %.not3334, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph40, %.lr.ph
  %.sroa.019.035 = phi ptr [ %i.l, %.lr.ph ], [ %i.i, %.lr.ph40 ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.019.035, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !123  ; 2 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.019.035) #15
  tail call void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef nonnull %i.m, ptr %1, i64 %2, i32 noundef %3)
  %.not33 = icmp eq ptr %i.l, %i.j
  br i1 %.not33, label %.loopexit, label %.lr.ph

bb.d:                                             ; preds = %._crit_edge43
  tail call void %1(i64 noundef %2, ptr noundef nonnull %0) #15, !inline_history !120
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge43
  ret void
}

declare { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #7

declare noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZN12_GLOBAL__N_124SimplifyAffineStructures14runOnOperationEvE3$_0EEvlS3_"(i64 noundef %0, ptr noundef nonnull %1) #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::IntegerSetAttr", align 8 ; 7 uses
  %3 = alloca %"struct.mlir::MutableAffineMap", align 8 ; 7 uses
  %4 = alloca %"class.mlir::AffineMapAttr", align 8 ; 7 uses
  %5 = alloca %"class.mlir::DictionaryAttr", align 8 ; 4 uses
  %6 = alloca %"class.mlir::NamedAttribute", align 8 ; 6 uses
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.c = tail call ptr @_ZN4mlir9Operation17getAttrDictionaryEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #15
  store ptr %i.c, ptr %5, align 8
  %i.d = call { ptr, i64 } @_ZNK4mlir14DictionaryAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #15 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.e = extractvalue { ptr, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.d, 1        ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.f, 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i
  %.not28.i = icmp eq i64 %i.f, 0
  br i1 %.not28.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 336 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.b

._crit_edge.i:                                    ; preds = %bb.o, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !40
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !42   ; 3 uses
  %i.n = icmp eq ptr %i.m, @_ZN4mlir6detail14TypeIDResolverINS_6affine11AffineForOpEvE2idE
  %7 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_6affine11AffineForOpEvE2idE
  %spec.select.i.i.i.i.i.i = and i1 %7, %i.n
  br i1 %spec.select.i.i.i.i.i.i, label %bb.p, label %8

8:                                                ; preds = %._crit_edge.i
  %9 = icmp eq ptr %i.m, @_ZN4mlir6detail14TypeIDResolverINS_6affine10AffineIfOpEvE2idE
  %10 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_6affine10AffineIfOpEvE2idE
  %spec.select.i.i.i.i4.i.i = and i1 %10, %9
  br i1 %spec.select.i.i.i.i4.i.i, label %bb.p, label %_ZN4llvm3isaIJN4mlir6affine11AffineForOpENS2_10AffineIfOpENS2_13AffineApplyOpEEPNS1_9OperationEEEbRKT0_.exit.i

_ZN4llvm3isaIJN4mlir6affine11AffineForOpENS2_10AffineIfOpENS2_13AffineApplyOpEEPNS1_9OperationEEEbRKT0_.exit.i: ; preds = %8
  %11 = icmp eq ptr %i.m, @_ZN4mlir6detail14TypeIDResolverINS_6affine13AffineApplyOpEvE2idE
  %12 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_6affine13AffineApplyOpEvE2idE
  %spec.select.i.i.i.i6.i.i = and i1 %12, %11
  br i1 %spec.select.i.i.i.i6.i.i, label %bb.p, label %"_ZZN12_GLOBAL__N_124SimplifyAffineStructures14runOnOperationEvENK3$_0clEPN4mlir9OperationE.exit"

bb.b:                                             ; preds = %bb.o, %.lr.ph.i
  %.029.i = phi ptr [ %i.e, %.lr.ph.i ], [ %i.as, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %.029.i, i64 16, i1 false), !tbaa.struct !124
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.h, align 8, !tbaa !47 ; 3 uses
  %i.o = load ptr, ptr %.sroa.0.0.copyload.i.i, align 8, !tbaa !127
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !11 ; 2 uses
  %i.q = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_13AffineMapAttrEvE2idE
  br i1 %i.q, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.r = call ptr @_ZNK4mlir14NamedAttribute7getNameEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %.sroa.0.0.copyload.i.i, ptr %4, align 8
  %i.s = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir9AttributeES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %.fca.0.extract.i.i.i = extractvalue { ptr, i8 } %i.s, 0
  %i.t = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i, i64 8 ; 3 uses
  %.sroa.07.0.copyload.i.i = load ptr, ptr %4, align 8, !tbaa !47
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !49   ; 3 uses
  %i.v = icmp eq ptr %i.u, %.sroa.07.0.copyload.i.i
  br i1 %i.v, label %_ZN12_GLOBAL__N_124SimplifyAffineStructures26simplifyAndUpdateAttributeIN4mlir13AffineMapAttrEEEvPNS2_9OperationENS2_10StringAttrET_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = icmp eq ptr %i.u, null
  br i1 %i.w, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.x = call ptr @_ZNK4mlir13AffineMapAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #15 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @_ZN4mlir16MutableAffineMapC1ENS_9AffineMapE(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr %i.x) #15
  call void @_ZN4mlir16MutableAffineMap8simplifyEv(ptr noundef nonnull align 8 dereferenceable(96) %3) #15
  %i.y = call ptr @_ZNK4mlir16MutableAffineMap12getAffineMapEv(ptr noundef nonnull align 8 dereferenceable(96) %3) #15 ; 2 uses
  %i.z = load ptr, ptr %3, align 8, !tbaa !13     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.j
  br i1 %i.aa, label %_ZN12_GLOBAL__N_124SimplifyAffineStructures8simplifyEN4mlir9AffineMapE.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @free(ptr noundef %i.z) #15
  br label %_ZN12_GLOBAL__N_124SimplifyAffineStructures8simplifyEN4mlir9AffineMapE.exit.i.i

_ZN12_GLOBAL__N_124SimplifyAffineStructures8simplifyEN4mlir9AffineMapE.exit.i.i: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.ab = icmp eq ptr %i.x, %i.y
  br i1 %i.ab, label %.thread.i.i, label %bb.g

.thread.i.i:                                      ; preds = %_ZN12_GLOBAL__N_124SimplifyAffineStructures8simplifyEN4mlir9AffineMapE.exit.i.i
  %i.ac = load i64, ptr %4, align 8, !tbaa !47
  store i64 %i.ac, ptr %i.t, align 8, !tbaa !47
  br label %_ZN12_GLOBAL__N_124SimplifyAffineStructures26simplifyAndUpdateAttributeIN4mlir13AffineMapAttrEEEvPNS2_9OperationENS2_10StringAttrET_.exit.i

bb.g:                                             ; preds = %_ZN12_GLOBAL__N_124SimplifyAffineStructures8simplifyEN4mlir9AffineMapE.exit.i.i
  %i.ad = call ptr @_ZN4mlir13AffineMapAttr3getENS_9AffineMapE(ptr %i.y) #15 ; 2 uses
  %i.ae = ptrtoint ptr %i.ad to i64
  store i64 %i.ae, ptr %i.t, align 8, !tbaa !47
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.sroa.0.0.copyload.i11.i = phi ptr [ %i.ad, %bb.g ], [ %i.u, %bb.d ]
  call void @_ZN4mlir9Operation7setAttrENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr %i.r, ptr %.sroa.0.0.copyload.i11.i)
  br label %_ZN12_GLOBAL__N_124SimplifyAffineStructures26simplifyAndUpdateAttributeIN4mlir13AffineMapAttrEEEvPNS2_9OperationENS2_10StringAttrET_.exit.i

_ZN12_GLOBAL__N_124SimplifyAffineStructures26simplifyAndUpdateAttributeIN4mlir13AffineMapAttrEEEvPNS2_9OperationENS2_10StringAttrET_.exit.i: ; preds = %bb.h, %.thread.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.o

bb.i:                                             ; preds = %bb.b
  %i.af = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_14IntegerSetAttrEvE2idE
  br i1 %i.af, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.ag = call ptr @_ZNK4mlir14NamedAttribute7getNameEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %.sroa.0.0.copyload.i.i, ptr %2, align 8
  %i.ah = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir9AttributeES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %.fca.0.extract.i.i16.i = extractvalue { ptr, i8 } %i.ah, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i16.i, i64 8 ; 3 uses
  %.sroa.07.0.copyload.i17.i = load ptr, ptr %2, align 8, !tbaa !47
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !49 ; 3 uses
  %i.ak = icmp eq ptr %i.aj, %.sroa.07.0.copyload.i17.i
  br i1 %i.ak, label %_ZN12_GLOBAL__N_124SimplifyAffineStructures26simplifyAndUpdateAttributeIN4mlir14IntegerSetAttrEEEvPNS2_9OperationENS2_10StringAttrET_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = icmp eq ptr %i.aj, null
  br i1 %i.al, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.am = call ptr @_ZNK4mlir14IntegerSetAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #15 ; 2 uses
  %i.an = call ptr @_ZN4mlir6affine18simplifyIntegerSetENS_10IntegerSetE(ptr %i.am) #15 ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.am
  br i1 %i.ao, label %.thread.i19.i, label %bb.m

.thread.i19.i:                                    ; preds = %bb.l
  %i.ap = load i64, ptr %2, align 8, !tbaa !47
  store i64 %i.ap, ptr %i.ai, align 8, !tbaa !47
  br label %_ZN12_GLOBAL__N_124SimplifyAffineStructures26simplifyAndUpdateAttributeIN4mlir14IntegerSetAttrEEEvPNS2_9OperationENS2_10StringAttrET_.exit.i

bb.m:                                             ; preds = %bb.l
  %i.aq = call ptr @_ZN4mlir14IntegerSetAttr3getENS_10IntegerSetE(ptr %i.an) #15 ; 2 uses
  %i.ar = ptrtoint ptr %i.aq to i64
  store i64 %i.ar, ptr %i.ai, align 8, !tbaa !47
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %.sroa.0.0.copyload.i18.i = phi ptr [ %i.aq, %bb.m ], [ %i.aj, %bb.k ]
  call void @_ZN4mlir9Operation7setAttrENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr %i.ag, ptr %.sroa.0.0.copyload.i18.i)
  br label %_ZN12_GLOBAL__N_124SimplifyAffineStructures26simplifyAndUpdateAttributeIN4mlir14IntegerSetAttrEEEvPNS2_9OperationENS2_10StringAttrET_.exit.i

_ZN12_GLOBAL__N_124SimplifyAffineStructures26simplifyAndUpdateAttributeIN4mlir14IntegerSetAttrEEEvPNS2_9OperationENS2_10StringAttrET_.exit.i: ; preds = %bb.n, %.thread.i19.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.o

bb.o:                                             ; preds = %_ZN12_GLOBAL__N_124SimplifyAffineStructures26simplifyAndUpdateAttributeIN4mlir14IntegerSetAttrEEEvPNS2_9OperationENS2_10StringAttrET_.exit.i, %bb.i, %_ZN12_GLOBAL__N_124SimplifyAffineStructures26simplifyAndUpdateAttributeIN4mlir13AffineMapAttrEEEvPNS2_9OperationENS2_10StringAttrET_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.as = getelementptr inbounds nuw i8, ptr %.029.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.as, %i.g
  br i1 %.not.i, label %._crit_edge.i, label %bb.b

bb.p:                                             ; preds = %_ZN4llvm3isaIJN4mlir6affine11AffineForOpENS2_10AffineIfOpENS2_13AffineApplyOpEEPNS1_9OperationEEEbRKT0_.exit.i, %8, %._crit_edge.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !128, !nonnull !45, !align !129 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 3 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !31 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !14
  %.not.i.i = icmp ult i32 %i.aw, %i.ay
  br i1 %.not.i.i, label %bb.r, label %bb.q, !prof !50

bb.q:                                             ; preds = %bb.p
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OperationELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull %1)
  br label %"_ZZN12_GLOBAL__N_124SimplifyAffineStructures14runOnOperationEvENK3$_0clEPN4mlir9OperationE.exit"

bb.r:                                             ; preds = %bb.p
  %i.az = zext i32 %i.aw to i64
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !13
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.az
  store ptr %1, ptr %i.bb, align 1
  %i.bc = load i32, ptr %i.av, align 8, !tbaa !31
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr %i.av, align 8, !tbaa !31
  br label %"_ZZN12_GLOBAL__N_124SimplifyAffineStructures14runOnOperationEvENK3$_0clEPN4mlir9OperationE.exit"

"_ZZN12_GLOBAL__N_124SimplifyAffineStructures14runOnOperationEvENK3$_0clEPN4mlir9OperationE.exit": ; preds = %_ZN4llvm3isaIJN4mlir6affine11AffineForOpENS2_10AffineIfOpENS2_13AffineApplyOpEEPNS1_9OperationEEEbRKT0_.exit.i, %bb.q, %bb.r
  ret void
}

declare ptr @_ZNK4mlir14NamedAttribute7getNameEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #7

declare ptr @_ZN4mlir9Operation17getAttrDictionaryEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #7

declare { ptr, i64 } @_ZNK4mlir14DictionaryAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

declare ptr @_ZNK4mlir13AffineMapAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

declare ptr @_ZN4mlir13AffineMapAttr3getENS_9AffineMapE(ptr) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir9Operation7setAttrENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.mlir::StringAttr", align 8  ; 4 uses
  %4 = alloca %"class.mlir::NamedAttrList", align 8 ; 7 uses
  store ptr %1, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4
  %.not = icmp ult i32 %i.b, 16777216
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #15 ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0
  %i.e = extractvalue { ptr, i64 } %i.c, 1
  %i.f = call { ptr, i8 } @_ZN4mlir9Operation15getInherentAttrEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %i.d, i64 %i.e) #15
  %i.g = extractvalue { ptr, i8 } %i.f, 1
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.06.0.copyload = load ptr, ptr %3, align 8
  call void @_ZN4mlir9Operation15setInherentAttrENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %.sroa.06.0.copyload, ptr %2) #15
  br label %bb.h

bb.d:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.sroa.04.0.copyload = load ptr, ptr %i.i, align 8
  call void @_ZN4mlir13NamedAttrListC1ENS_14DictionaryAttrE(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr %.sroa.04.0.copyload) #15
  %.sroa.03.0.copyload = load ptr, ptr %3, align 8
  %i.j = call ptr @_ZN4mlir13NamedAttrList3setENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr %.sroa.03.0.copyload, ptr %2) #15
  %.not10 = icmp eq ptr %i.j, %2
  br i1 %.not10, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k) #15
  %i.m = call ptr @_ZNK4mlir13NamedAttrList13getDictionaryEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef %i.l) #15
  store ptr %i.m, ptr %i.i, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.n = load ptr, ptr %4, align 8, !tbaa !13     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZN4mlir13NamedAttrListD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef %i.n) #15
  br label %_ZN4mlir13NamedAttrListD2Ev.exit

_ZN4mlir13NamedAttrListD2Ev.exit:                 ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %bb.h

bb.h:                                             ; preds = %_ZN4mlir13NamedAttrListD2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir9AttributeES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !21, !noalias !134 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23, !noalias !134 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !20, !noalias !134 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %.sroa.04.0.copyload.i = load ptr, ptr %1, align 8, !tbaa !47 ; 2 uses
  %i.i = ptrtoint ptr %.sroa.04.0.copyload.i to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.h, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !51
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph.i, label %.loopexit, !prof !52

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ab, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.01926.i = phi i32 [ %i.z, %bb.c ], [ %i.n, %bb.b ]
  %.sroa.0.0.copyload.i = load ptr, ptr %i.w, align 8, !tbaa !47
  %i.x = icmp eq ptr %.sroa.04.0.copyload.i, %.sroa.0.0.copyload.i
  br i1 %i.x, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir9AttributeES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit, label %bb.c, !prof !50

bb.c:                                             ; preds = %.lr.ph.i
  %i.y = add nuw i32 %.01926.i, 1
  %i.z = and i32 %i.y, %i.h                       ; 3 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.aa ; 2 uses
  %i.ac = lshr i64 %i.aa, 5
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !51
  %i.af = and i32 %i.z, 31
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph.i, label %.loopexit, !prof !53, !llvm.loop !0

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa30.sink.i.ph = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ab, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !54
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !22
  %i.ak = shl i32 %i.aj, 2
  %i.al = add i32 %i.ak, 4
  %i.am = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.al, %i.am
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir9AttributeES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit, label %bb.d, !prof !50

bb.d:                                             ; preds = %.loopexit
  %i.an = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir9AttributeES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.an)
  %i.ao = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir9AttributeES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !54
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !23
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !21
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir9AttributeES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir9AttributeES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit: ; preds = %.loopexit, %bb.d
  %i.ap = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.aq = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.ar = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 4 uses
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 4                 ; 2 uses
  %i.aw = trunc i64 %i.av to i32
  %i.ax = and i32 %i.aw, 31
  %i.ay = shl nuw i32 1, %i.ax
  %i.az = lshr i64 %i.av, 5
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.az ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !51
  %i.bc = or i32 %i.ay, %i.bb
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !51
  %i.bd = load i32, ptr %i.ai, align 8, !tbaa !22
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.ai, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bf = load i64, ptr %1, align 8, !tbaa !47
  store i64 %i.bf, ptr %i.ar, align 8, !tbaa !47
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr null, ptr %i.bg, align 8, !tbaa !49
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir9AttributeES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir9AttributeES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir9AttributeES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit
  %.sroa.0.0 = phi ptr [ %i.ar, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir9AttributeES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit ], [ %i.w, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir9AttributeES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir9AttributeES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !21, !noalias !139 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23, !noalias !139 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !20, !noalias !139 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %.sroa.04.0.copyload = load ptr, ptr %1, align 8, !tbaa !47 ; 2 uses
  %i.h = ptrtoint ptr %.sroa.04.0.copyload to i64
  %i.i = mul i64 %i.h, -4658895280553007687       ; 2 uses
  %i.j = lshr i64 %i.i, 31
  %i.k = xor i64 %i.j, %i.i
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.g, %i.l                       ; 3 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
end_hunk_0
