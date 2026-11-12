Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/OperationSupport?download=true
inline.NumInlined: 2859
inline.NumDeleted: 1709
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN4mlir14OperationStateC2ENS_8LocationENS_13OperationNameENS_10ValueRangeENS_9TypeRangeEN4llvm8ArrayRefINS_14NamedAttributeEEENS_10BlockRangeENS5_15MutableArrayRefISt10unique_ptrINS_6RegionESt14default_deleteISC_EEEE:bb.a
  ret void

.lr.ph:                                           ; preds = %_ZN4llvm11SmallVectorIPN4mlir5BlockELj1EEC2INS_6detail27indexed_accessor_range_baseINS1_10BlockRangeENS_12PointerUnionIJPNS1_12BlockOperandEPKS3_EEES3_S3_S3_E8iteratorEvEET_SH_.exit, %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir6RegionESt14default_deleteIS3_EELb0EE9push_backEOS6_.exit
  %.pre3.i = phi ptr [ %.pre3.i42, %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir6RegionESt14default_deleteIS3_EELb0EE9push_backEOS6_.exit ], [ %i.as, %_ZN4llvm11SmallVectorIPN4mlir5BlockELj1EEC2INS_6detail27indexed_accessor_range_baseINS1_10BlockRangeENS_12PointerUnionIJPNS1_12BlockOperandEPKS3_EEES3_S3_S3_E8iteratorEvEET_SH_.exit ] ; 4 uses
  %i.bd = phi i32 [ %i.bt, %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir6RegionESt14default_deleteIS3_EELb0EE9push_backEOS6_.exit ], [ 0, %_ZN4llvm11SmallVectorIPN4mlir5BlockELj1EEC2INS_6detail27indexed_accessor_range_baseINS1_10BlockRangeENS_12PointerUnionIJPNS1_12BlockOperandEPKS3_EEES3_S3_S3_E8iteratorEvEET_SH_.exit ] ; 2 uses
  %.041 = phi ptr [ %i.bu, %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir6RegionESt14default_deleteIS3_EELb0EE9push_backEOS6_.exit ], [ %i.az, %_ZN4llvm11SmallVectorIPN4mlir5BlockELj1EEC2INS_6detail27indexed_accessor_range_baseINS1_10BlockRangeENS_12PointerUnionIJPNS1_12BlockOperandEPKS3_EEES3_S3_S3_E8iteratorEvEET_SH_.exit ] ; 6 uses
  %i.be = zext i32 %i.bd to i64                   ; 2 uses
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %i.bg = load i32, ptr %i.au, align 4, !tbaa !25
  %.not.i.i.not.i = icmp ult i32 %i.bd, %i.bg
  br i1 %.not.i.i.not.i, label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir6RegionESt14default_deleteIS3_EELb0EE9push_backEOS6_.exit, label %bb.c, !prof !28

bb.c:                                             ; preds = %.lr.ph
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.pre3.i, i64 %i.be
  %i.bi = icmp uge ptr %.041, %.pre3.i
  %i.bj = icmp ult ptr %.041, %i.bh
  %spec.select.i.i.i.i.i = and i1 %i.bi, %i.bj
  br i1 %spec.select.i.i.i.i.i, label %bb.d, label %.critedge.i.i.i, !prof !51

bb.d:                                             ; preds = %bb.c
  %i.bk = ptrtoint ptr %.041 to i64
  %i.bl = ptrtoint ptr %.pre3.i to i64
  %i.bm = sub i64 %i.bk, %i.bl
  tail call void @_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir6RegionESt14default_deleteIS3_EELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 noundef %i.bf)
  %i.bn = load ptr, ptr %i.ar, align 8, !tbaa !23 ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 %i.bm
  br label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir6RegionESt14default_deleteIS3_EELb0EE9push_backEOS6_.exit

.critedge.i.i.i:                                  ; preds = %bb.c
  tail call void @_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir6RegionESt14default_deleteIS3_EELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 noundef %i.bf)
  %.pre.i = load ptr, ptr %i.ar, align 8, !tbaa !23
  br label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir6RegionESt14default_deleteIS3_EELb0EE9push_backEOS6_.exit

_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir6RegionESt14default_deleteIS3_EELb0EE9push_backEOS6_.exit: ; preds = %.lr.ph, %bb.d, %.critedge.i.i.i
  %.pre3.i42 = phi ptr [ %.pre3.i, %.lr.ph ], [ %i.bn, %bb.d ], [ %.pre.i, %.critedge.i.i.i ] ; 2 uses
  %.016.i.i.i = phi ptr [ %.041, %.lr.ph ], [ %i.bo, %bb.d ], [ %.041, %.critedge.i.i.i ] ; 2 uses
  %i.bp = load i32, ptr %i.at, align 8, !tbaa !24 ; 2 uses
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %.pre3.i42, i64 %i.bq
  %i.bs = load i64, ptr %.016.i.i.i, align 8, !tbaa !53
  store i64 %i.bs, ptr %i.br, align 8, !tbaa !53
  store ptr null, ptr %.016.i.i.i, align 8, !tbaa !53
  %i.bt = add i32 %i.bp, 1                        ; 2 uses
  store i32 %i.bt, ptr %i.at, align 8, !tbaa !24
  %i.bu = getelementptr inbounds nuw i8, ptr %.041, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bu, %i.bc
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir14OperationStateC2ENS_8LocationEN4llvm9StringRefENS_10ValueRangeENS_9TypeRangeENS2_8ArrayRefINS_14NamedAttributeEEENS_10BlockRangeENS2_15MutableArrayRefISt10unique_ptrINS_6RegionESt14default_deleteISC_EEEE(ptr noundef nonnull align 8 dereferenceable(304) initializes((0, 16)) %0, ptr %1, ptr %2, i64 %3, i64 %4, i64 %5, ptr nofree noundef readonly byval(%"class.mlir::TypeRange") align 8 captures(none) %6, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef") align 8 captures(none) %7, ptr nofree noundef readonly byval(%"class.mlir::BlockRange") align 8 captures(none) %8, ptr nofree noundef readonly byval(%"class.llvm::MutableArrayRef") align 8 captures(none) %9) unnamed_addr #0 align 2 {
bb.a:
  %10 = alloca %"class.mlir::Location", align 8   ; 2 uses
  %11 = alloca %"class.mlir::OperationName", align 8 ; 2 uses
  %12 = alloca %"class.llvm::MutableArrayRef", align 8 ; 3 uses
  store ptr %1, ptr %10, align 8
  %i.a = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #24
  call void @_ZN4mlir13OperationNameC1EN4llvm9StringRefEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr %2, i64 %3, ptr noundef %i.a) #24
  %i.b = load ptr, ptr %9, align 8, !tbaa !49
  store ptr %i.b, ptr %12, align 8, !tbaa !49
  %i.c = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !50
  store i64 %i.e, ptr %i.c, align 8, !tbaa !50
  %i.f = load ptr, ptr %11, align 8
  call void @_ZN4mlir14OperationStateC2ENS_8LocationENS_13OperationNameENS_10ValueRangeENS_9TypeRangeEN4llvm8ArrayRefINS_14NamedAttributeEEENS_10BlockRangeENS5_15MutableArrayRefISt10unique_ptrINS_6RegionESt14default_deleteISC_EEEE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr %1, ptr %i.f, i64 %4, i64 %5, ptr noundef nonnull byval(%"class.mlir::TypeRange") align 8 %6, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %7, ptr noundef nonnull byval(%"class.mlir::BlockRange") align 8 %8, ptr noundef nonnull byval(%"class.llvm::MutableArrayRef") align 8 %12)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir14OperationStateD2Ev(ptr nofree noundef nonnull readonly align 8 captures(address) dead_on_return(304) dereferenceable(304) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 272
  %.sroa.0.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !38
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !210
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.g = load i64, ptr %i.f, align 8, !tbaa !211
  tail call void %i.e(i64 noundef %i.g, ptr %.sroa.0.0.copyload, ptr nonnull %i.b) #24, !inline_history !208
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !23   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.k = load i32, ptr %i.j, align 8, !tbaa !24   ; 2 uses
  %.not4.i.i = icmp eq i32 %i.k, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir6RegionESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.c
  %i.l = zext i32 %i.k to i64
  %.idx.i = shl nuw nsw i64 %i.l, 3
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt10unique_ptrIN4mlir6RegionESt14default_deleteIS1_EED2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.n, %_ZNSt10unique_ptrIN4mlir6RegionESt14default_deleteIS1_EED2Ev.exit.i.i ], [ %i.m, %.lr.ph.i.preheader.i ]
  %i.n = getelementptr inbounds i8, ptr %.05.i.i, i64 -8 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !53   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN4mlir6RegionESt14default_deleteIS1_EED2Ev.exit.i.i, label %_ZNKSt14default_deleteIN4mlir6RegionEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN4mlir6RegionEEclEPS1_.exit.i.i.i: ; preds = %.lr.ph.i.i
  tail call void @_ZN4mlir6RegionD1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %i.o) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef 32) #26
  br label %_ZNSt10unique_ptrIN4mlir6RegionESt14default_deleteIS1_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN4mlir6RegionESt14default_deleteIS1_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN4mlir6RegionEEclEPS1_.exit.i.i.i, %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %i.i, %i.n
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir6RegionESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !5

_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir6RegionESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i: ; preds = %_ZNSt10unique_ptrIN4mlir6RegionESt14default_deleteIS1_EED2Ev.exit.i.i
  %.pre.i = load ptr, ptr %i.h, align 8, !tbaa !23
  br label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir6RegionESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.i

_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir6RegionESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir6RegionESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i, %bb.c
  %i.p = phi ptr [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir6RegionESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i ], [ %i.i, %bb.c ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZN4llvm11SmallVectorISt10unique_ptrIN4mlir6RegionESt14default_deleteIS3_EELj1EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir6RegionESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.i
  tail call void @free(ptr noundef %i.p) #24
  br label %_ZN4llvm11SmallVectorISt10unique_ptrIN4mlir6RegionESt14default_deleteIS3_EELj1EED2Ev.exit

_ZN4llvm11SmallVectorISt10unique_ptrIN4mlir6RegionESt14default_deleteIS3_EELj1EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir6RegionESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.i, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !23   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZN4llvm11SmallVectorIPN4mlir5BlockELj1EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11SmallVectorISt10unique_ptrIN4mlir6RegionESt14default_deleteIS3_EELj1EED2Ev.exit
  tail call void @free(ptr noundef %i.t) #24
  br label %_ZN4llvm11SmallVectorIPN4mlir5BlockELj1EED2Ev.exit

_ZN4llvm11SmallVectorIPN4mlir5BlockELj1EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorISt10unique_ptrIN4mlir6RegionESt14default_deleteIS3_EELj1EED2Ev.exit, %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !23   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZN4mlir13NamedAttrListD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm11SmallVectorIPN4mlir5BlockELj1EED2Ev.exit
  tail call void @free(ptr noundef %i.x) #24
  br label %_ZN4mlir13NamedAttrListD2Ev.exit

_ZN4mlir13NamedAttrListD2Ev.exit:                 ; preds = %_ZN4llvm11SmallVectorIPN4mlir5BlockELj1EED2Ev.exit, %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !23 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj4EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4mlir13NamedAttrListD2Ev.exit
  tail call void @free(ptr noundef %i.ab) #24
  br label %_ZN4llvm11SmallVectorIN4mlir4TypeELj4EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir4TypeELj4EED2Ev.exit: ; preds = %_ZN4mlir13NamedAttrListD2Ev.exit, %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !23 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj4EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir4TypeELj4EED2Ev.exit
  tail call void @free(ptr noundef %i.af) #24
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj4EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir5ValueELj4EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIN4mlir4TypeELj4EED2Ev.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZNK4mlir14OperationState13setPropertiesEPNS_9OperationEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(304) %0, ptr noundef %1, ptr %2, i64 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !28

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i8 @_ZN4mlir9Operation26setPropertiesFromAttributeENS_9AttributeEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nonnull %i.b, ptr %2, i64 %3) #24
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !56   ; 2 uses
  %.not11 = icmp eq ptr %i.f, null
  br i1 %.not11, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 47
  %4 = load i8, ptr %i.h, align 1
  %.not.i = icmp eq i8 %4, 0
  br i1 %.not.i, label %_ZN4mlir9Operation20getPropertiesStorageEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !58
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !38
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %6 = load i32, ptr %5, align 4
  %i.m = lshr i32 %6, 23
  %.lobit.i.i.i.i.i.i.i = and i32 %i.m, 1
  %i.n = zext nneg i32 %.lobit.i.i.i.i.i.i.i to i64
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.n
  br label %_ZN4mlir9Operation20getPropertiesStorageEv.exit

_ZN4mlir9Operation20getPropertiesStorageEv.exit:  ; preds = %bb.d, %bb.e
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0.copyload.i.i.i, %bb.e ], [ @_ZN4mlir6detail14TypeIDResolverIvvE2idE, %bb.d ]
  %.sroa.4.0.i = phi ptr [ %i.o, %bb.e ], [ null, %bb.d ]
  %.sroa.0.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !38
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !41
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.r = load i64, ptr %i.q, align 8, !tbaa !213
  tail call void %i.p(i64 noundef %i.r, ptr %.sroa.0.0.i, ptr %.sroa.4.0.i, ptr %.sroa.0.0.copyload, ptr nonnull %i.f) #24, !inline_history !212
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %_ZN4mlir9Operation20getPropertiesStorageEv.exit, %bb.b
  %.sroa.010.0 = phi i8 [ %i.c, %bb.b ], [ 1, %_ZN4mlir9Operation20getPropertiesStorageEv.exit ], [ 1, %bb.c ]
  ret i8 %.sroa.010.0
}

declare i8 @_ZN4mlir9Operation26setPropertiesFromAttributeENS_9AttributeEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr noundef nonnull align 8 dereferenceable(64), ptr, ptr, i64) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %0, i64 %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6appendINS_6detail27indexed_accessor_range_baseINS1_10ValueRangeENS_12PointerUnionIJPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEEEES2_S2_S2_E8iteratorEvEEvT_SN_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 %1, i64 0, i64 %1, i64 %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6appendINS_6detail27indexed_accessor_range_baseINS1_10ValueRangeENS_12PointerUnionIJPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEEEES2_S2_S2_E8iteratorEvEEvT_SN_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = sub nsw i64 %4, %2                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !24   ; 2 uses
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = add i64 %i.a, %i.d                       ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !25
  %i.h = zext i32 %i.g to i64
  %i.i = icmp ugt i64 %i.e, %i.h
  br i1 %i.i, label %bb.b, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.j, i64 noundef %i.e, i64 noundef 8) #24
  %.pre = load i32, ptr %i.b, align 8, !tbaa !24  ; 2 uses
  %.pre34 = zext i32 %.pre to i64
  br label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %.pre-phi = phi i64 [ %i.d, %bb.a ], [ %.pre34, %bb.b ] ; 2 uses
  %i.k = phi i32 [ %i.c, %bb.a ], [ %.pre, %bb.b ] ; 8 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !23     ; 2 uses
  %i.m = ptrtoaddr ptr %i.l to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.pre-phi ; 10 uses
  %.not8.i.i.i.i = icmp eq i64 %2, %4
  br i1 %.not8.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_10ValueRangeENS_12PointerUnionIJPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SO_T0_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit
  %i.o = and i64 %1, 6                            ; 3 uses
  %i.p = icmp ne i64 %i.o, 0
  %i.q = and i64 %1, -7                           ; 2 uses
  %i.r = inttoptr i64 %i.q to ptr                 ; 17 uses
  %.not.not31.i.i.i.i.i.i = icmp eq i64 %i.q, 0   ; 3 uses
  %.not.not.i.i.i.i.i.i = or i1 %i.p, %.not.not31.i.i.i.i.i.i
  %i.s = icmp ne i64 %i.o, 6
  %.not19.not.i.i.i.i.i.i = or i1 %i.s, %.not.not31.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i, label %.lr.ph.split.us.i.i.i.i, label %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_E8iteratordeEv.exit.i.i.i.i.preheader

_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_E8iteratordeEv.exit.i.i.i.i.preheader: ; preds = %.lr.ph.i.i.i.i
  %i.t = sub i64 %4, %2                           ; 3 uses
  %min.iters.check = icmp ult i64 %i.t, 18
  br i1 %min.iters.check, label %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_E8iteratordeEv.exit.i.i.i.i.preheader59, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_E8iteratordeEv.exit.i.i.i.i.preheader
  %i.u = shl nuw nsw i64 %.pre-phi, 3
  %i.v = shl i64 %2, 3
  %i.w = add i64 %i.u, %i.m
  %i.x = add i64 %1, %i.v
  %i.y = sub i64 %i.x, %i.w
  %diff.check = icmp ugt i64 %i.y, -32
  br i1 %diff.check, label %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_E8iteratordeEv.exit.i.i.i.i.preheader59, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.t, -4                       ; 4 uses
  %i.z = shl i64 %n.vec, 3
  %i.aa = getelementptr i8, ptr %i.n, i64 %i.z
  %i.ab = add i64 %2, %n.vec
  %i.ac = getelementptr [8 x i8], ptr %i.r, i64 %2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ad = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.n, i64 %i.ad ; 2 uses
  %i.ae = getelementptr [8 x i8], ptr %i.ac, i64 %index ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %wide.load = load <2 x i64>, ptr %i.ae, align 8, !tbaa !60
  %wide.load43 = load <2 x i64>, ptr %i.af, align 8, !tbaa !60
  %i.ag = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !60
  store <2 x i64> %wide.load43, ptr %i.ag, align 8, !tbaa !60
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !214

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_10ValueRangeENS_12PointerUnionIJPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SO_T0_.exit, label %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_E8iteratordeEv.exit.i.i.i.i.preheader59

_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_E8iteratordeEv.exit.i.i.i.i.preheader59: ; preds = %vector.memcheck, %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_E8iteratordeEv.exit.i.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.n, %vector.memcheck ], [ %i.n, %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_E8iteratordeEv.exit.i.i.i.i.preheader ], [ %i.aa, %middle.block ] ; 2 uses
  %.sroa.2.09.i.i.i.i.ph = phi i64 [ %2, %vector.memcheck ], [ %2, %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_E8iteratordeEv.exit.i.i.i.i.preheader ], [ %i.ab, %middle.block ] ; 4 uses
  %i.ai = sub i64 %4, %.sroa.2.09.i.i.i.i.ph
  %xtraiter = and i64 %i.ai, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_E8iteratordeEv.exit.i.i.i.i.prol.loopexit, label %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_E8iteratordeEv.exit.i.i.i.i.prol

_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_E8iteratordeEv.exit.i.i.i.i.prol: ; preds = %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_E8iteratordeEv.exit.i.i.i.i.preheader59, %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_E8iteratordeEv.exit.i.i.i.i.prol
  %.010.i.i.i.i.prol = phi ptr [ %i.am, %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_E8iteratordeEv.exit.i.i.i.i.prol ], [ %.010.i.i.i.i.ph, %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_E8iteratordeEv.exit.i.i.i.i.preheader59 ] ; 2 uses
  %.sroa.2.09.i.i.i.i.prol = phi i64 [ %i.al, %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_E8iteratordeEv.exit.i.i.i.i.prol ], [ %.sroa.2.09.i.i.i.i.ph, %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_E8iteratordeEv.exit.i.i.i.i.preheader59 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_E8iteratordeEv.exit.i.i.i.i.prol ], [ 0, %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_E8iteratordeEv.exit.i.i.i.i.preheader59 ]
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.r, i64 %.sroa.2.09.i.i.i.i.prol
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !60
  store i64 %i.ak, ptr %.010.i.i.i.i.prol, align 8, !tbaa !60
  %i.al = add nsw i64 %.sroa.2.09.i.i.i.i.prol, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_E8iteratordeEv.exit.i.i.i.i.prol.loopexit, label %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_E8iteratordeEv.exit.i.i.i.i.prol, !llvm.loop !215

_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_E8iteratordeEv.exit.i.i.i.i.prol.loopexit: ; preds = %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_E8iteratordeEv.exit.i.i.i.i.prol, %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_E8iteratordeEv.exit.i.i.i.i.preheader59
  %.010.i.i.i.i.unr = phi ptr [ %.010.i.i.i.i.ph, %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_E8iteratordeEv.exit.i.i.i.i.preheader59 ], [ %i.am, %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_E8iteratordeEv.exit.i.i.i.i.prol ]
  %.sroa.2.09.i.i.i.i.unr = phi i64 [ %.sroa.2.09.i.i.i.i.ph, %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_E8iteratordeEv.exit.i.i.i.i.preheader59 ], [ %i.al, %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_E8iteratordeEv.exit.i.i.i.i.prol ]
  %i.an = sub i64 %.sroa.2.09.i.i.i.i.ph, %4
  %i.ao = icmp ugt i64 %i.an, -8
  br i1 %i.ao, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_10ValueRangeENS_12PointerUnionIJPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SO_T0_.exit, label %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_E8iteratordeEv.exit.i.i.i.i

.lr.ph.split.us.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i
  %i.ap = icmp ne i64 %i.o, 2
  %.not18.not.i.i.i.i.i.i = or i1 %i.ap, %.not.not31.i.i.i.i.i.i
  br i1 %.not18.not.i.i.i.i.i.i, label %.lr.ph.split.us.split.us.i.i.i.i, label %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_E8iteratordeEv.exit.us.i.i.i.i.preheader

_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_E8iteratordeEv.exit.us.i.i.i.i.preheader: ; preds = %.lr.ph.split.us.i.i.i.i
  %i.aq = sub i64 %4, %2
  %xtraiter61 = and i64 %i.aq, 3                  ; 2 uses
  %lcmp.mod62.not = icmp eq i64 %xtraiter61, 0
  br i1 %lcmp.mod62.not, label %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_E8iteratordeEv.exit.us.i.i.i.i.prol.loopexit, label %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_E8iteratordeEv.exit.us.i.i.i.i.prol

_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_E8iteratordeEv.exit.us.i.i.i.i.prol: ; preds = %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_E8iteratordeEv.exit.us.i.i.i.i.preheader, %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_E8iteratordeEv.exit.us.i.i.i.i.prol
  %.010.us.i.i.i.i.prol = phi ptr [ %i.av, %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_E8iteratordeEv.exit.us.i.i.i.i.prol ], [ %i.n, %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_E8iteratordeEv.exit.us.i.i.i.i.preheader ] ; 2 uses
  %.sroa.2.09.us.i.i.i.i.prol = phi i64 [ %i.au, %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_E8iteratordeEv.exit.us.i.i.i.i.prol ], [ %2, %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_E8iteratordeEv.exit.us.i.i.i.i.preheader ] ; 2 uses
  %prol.iter63 = phi i64 [ %prol.iter63.next, %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_E8iteratordeEv.exit.us.i.i.i.i.prol ], [ 0, %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_E8iteratordeEv.exit.us.i.i.i.i.preheader ]
  %i.ar = getelementptr inbounds [32 x i8], ptr %i.r, i64 %.sroa.2.09.us.i.i.i.i.prol
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %.sroa.0.0.copyload.i.i.i.us.i.i.i.i.prol = load ptr, ptr %i.as, align 8, !tbaa !60
  %i.at = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.us.i.i.i.i.prol to i64
  store i64 %i.at, ptr %.010.us.i.i.i.i.prol, align 8, !tbaa !60
  %i.au = add nsw i64 %.sroa.2.09.us.i.i.i.i.prol, 1 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.010.us.i.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter63.next = add i64 %prol.iter63, 1     ; 2 uses
  %prol.iter63.cmp.not = icmp eq i64 %prol.iter63.next, %xtraiter61
  br i1 %prol.iter63.cmp.not, label %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_E8iteratordeEv.exit.us.i.i.i.i.prol.loopexit, label %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_E8iteratordeEv.exit.us.i.i.i.i.prol, !llvm.loop !216

_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_E8iteratordeEv.exit.us.i.i.i.i.prol.loopexit: ; preds = %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_E8iteratordeEv.exit.us.i.i.i.i.prol, %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_E8iteratordeEv.exit.us.i.i.i.i.preheader
  %.010.us.i.i.i.i.unr = phi ptr [ %i.n, %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_E8iteratordeEv.exit.us.i.i.i.i.preheader ], [ %i.av, %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_E8iteratordeEv.exit.us.i.i.i.i.prol ]
  %.sroa.2.09.us.i.i.i.i.unr = phi i64 [ %2, %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_E8iteratordeEv.exit.us.i.i.i.i.preheader ], [ %i.au, %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_E8iteratordeEv.exit.us.i.i.i.i.prol ]
  %i.aw = sub i64 %2, %4
  %i.ax = icmp ugt i64 %i.aw, -4
  br i1 %i.ax, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_10ValueRangeENS_12PointerUnionIJPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SO_T0_.exit, label %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_E8iteratordeEv.exit.us.i.i.i.i

.lr.ph.split.us.split.us.i.i.i.i:                 ; preds = %.lr.ph.split.us.i.i.i.i
  br i1 %.not19.not.i.i.i.i.i.i, label %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_E8iteratordeEv.exit.us.us.us.i.i.i.i, label %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_E8iteratordeEv.exit.us.us.preheader.i.i.i.i

_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_E8iteratordeEv.exit.us.us.preheader.i.i.i.i: ; preds = %.lr.ph.split.us.split.us.i.i.i.i
  %.pre.i.i.i.i = load i64, ptr %i.r, align 8, !tbaa !60 ; 2 uses
  %i.ay = sub i64 %4, %2                          ; 3 uses
  %min.iters.check46 = icmp ult i64 %i.ay, 4
  br i1 %min.iters.check46, label %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_E8iteratordeEv.exit.us.us.i.i.i.i.preheader, label %vector.ph47

vector.ph47:                                      ; preds = %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_E8iteratordeEv.exit.us.us.preheader.i.i.i.i
  %n.vec48 = and i64 %i.ay, -4                    ; 4 uses
  %i.az = shl i64 %n.vec48, 3
  %i.ba = getelementptr i8, ptr %i.n, i64 %i.az
  %i.bb = add i64 %2, %n.vec48
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.pre.i.i.i.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body49

vector.body49:                                    ; preds = %vector.body49, %vector.ph47
  %index50 = phi i64 [ 0, %vector.ph47 ], [ %index.next52, %vector.body49 ] ; 2 uses
  %i.bc = shl i64 %index50, 3
  %next.gep51 = getelementptr i8, ptr %i.n, i64 %i.bc ; 2 uses
  %i.bd = getelementptr i8, ptr %next.gep51, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep51, align 8, !tbaa !60
  store <2 x i64> %broadcast.splat, ptr %i.bd, align 8, !tbaa !60
  %index.next52 = add nuw i64 %index50, 4         ; 2 uses
  %i.be = icmp eq i64 %index.next52, %n.vec48
end_hunk_0
begin_hunk_1_@_ZN4mlir19MutableOperandRange5clearEv:bb.a
.lr.ph.i.i:                                       ; preds = %..lr.ph.i.i_crit_edge, %_ZSt9__advanceIPN4mlir9OpOperandElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.pre-phi = phi i64 [ %.pre1, %..lr.ph.i.i_crit_edge ], [ %i.n, %_ZSt9__advanceIPN4mlir9OpOperandElEvRT_T0_St26random_access_iterator_tag.exit.i.i ] ; 4 uses
  %i.r = phi i32 [ %i.e, %..lr.ph.i.i_crit_edge ], [ %.pre, %_ZSt9__advanceIPN4mlir9OpOperandElEvRT_T0_St26random_access_iterator_tag.exit.i.i ] ; 3 uses
  %xtraiter = and i64 %.pre-phi, 1
  %i.s = icmp eq i64 %.pre-phi, 1
  br i1 %i.s, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %.pre-phi, 4294967294
  br label %bb.c

bb.c:                                             ; preds = %_ZN4mlir6detail13IROperandBaseD2Ev.exit.i.i.1, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.1, %_ZN4mlir6detail13IROperandBaseD2Ev.exit.i.i.1 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %_ZN4mlir6detail13IROperandBaseD2Ev.exit.i.i.1 ]
  %i.t = trunc nuw i64 %indvars.iv.i.i to i32
  %i.u = add i32 %i.r, %i.t
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !78   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i, label %_ZN4mlir6detail13IROperandBaseD2Ev.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !81   ; 3 uses
  store ptr %i.z, ptr %i.y, align 8, !tbaa !82
  %.not2.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not2.i.i.i.i, label %_ZN4mlir6detail13IROperandBaseD2Ev.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !78
  br label %_ZN4mlir6detail13IROperandBaseD2Ev.exit.i.i

_ZN4mlir6detail13IROperandBaseD2Ev.exit.i.i:      ; preds = %bb.e, %bb.d, %bb.c
  %i.ab = trunc i64 %indvars.iv.i.i to i32
  %i.ac = or disjoint i32 %i.ab, 1
  %i.ad = add i32 %i.r, %i.ac
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !78 ; 3 uses
  %.not.i.i.i.i.1 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i.1, label %_ZN4mlir6detail13IROperandBaseD2Ev.exit.i.i.1, label %bb.f

bb.f:                                             ; preds = %_ZN4mlir6detail13IROperandBaseD2Ev.exit.i.i
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !81 ; 3 uses
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !82
  %.not2.i.i.i.i.1 = icmp eq ptr %i.ai, null
  br i1 %.not2.i.i.i.i.1, label %_ZN4mlir6detail13IROperandBaseD2Ev.exit.i.i.1, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.ah, ptr %i.aj, align 8, !tbaa !78
  br label %_ZN4mlir6detail13IROperandBaseD2Ev.exit.i.i.1

_ZN4mlir6detail13IROperandBaseD2Ev.exit.i.i.1:    ; preds = %bb.g, %bb.f, %_ZN4mlir6detail13IROperandBaseD2Ev.exit.i.i
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4mlir9Operation13eraseOperandsEjj.exit.unr-lcssa, label %bb.c, !llvm.loop !6

_ZN4mlir9Operation13eraseOperandsEjj.exit.unr-lcssa: ; preds = %_ZN4mlir6detail13IROperandBaseD2Ev.exit.i.i.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4mlir9Operation13eraseOperandsEjj.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN4mlir9Operation13eraseOperandsEjj.exit.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.1, %_ZN4mlir9Operation13eraseOperandsEjj.exit.unr-lcssa ]
  %lcmp.mod5 = trunc i64 %.pre-phi to i1
  tail call void @llvm.assume(i1 %lcmp.mod5)
  %i.ak = trunc nuw i64 %indvars.iv.i.i.epil.init to i32
  %i.al = add i32 %i.r, %i.ak
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %i.am ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !78 ; 3 uses
  %.not.i.i.i.i.epil = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i.epil, label %_ZN4mlir9Operation13eraseOperandsEjj.exit, label %bb.h

bb.h:                                             ; preds = %.epil.preheader
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !81 ; 3 uses
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !82
  %.not2.i.i.i.i.epil = icmp eq ptr %i.aq, null
  br i1 %.not2.i.i.i.i.epil, label %_ZN4mlir9Operation13eraseOperandsEjj.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.ap, ptr %i.ar, align 8, !tbaa !78
  br label %_ZN4mlir9Operation13eraseOperandsEjj.exit

_ZN4mlir9Operation13eraseOperandsEjj.exit:        ; preds = %.epil.preheader, %bb.h, %bb.i, %_ZN4mlir9Operation13eraseOperandsEjj.exit.unr-lcssa
  tail call void @_ZN4mlir19MutableOperandRange12updateLengthEj(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef 0)
  br label %bb.j

bb.j:                                             ; preds = %_ZN4mlir9Operation13eraseOperandsEjj.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { ptr, i64 } @_ZNK4mlir19MutableOperandRange17getAsOperandRangeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !97     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, 8388608
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN4mlir9Operation11getOperandsEv.exit, label %bb.b, !prof !51

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !71
  br label %_ZN4mlir9Operation11getOperandsEv.exit

_ZN4mlir9Operation11getOperandsEv.exit:           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !98
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !99
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i, i64 %i.i
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %i.m, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %i.l, 1
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { ptr, i64 } @_ZNK4mlir19MutableOperandRangecvNS_12OperandRangeEEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !97     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, 8388608
  %.not.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i, label %_ZNK4mlir19MutableOperandRange17getAsOperandRangeEv.exit, label %bb.b, !prof !51

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !71
  br label %_ZNK4mlir19MutableOperandRange17getAsOperandRangeEv.exit

_ZNK4mlir19MutableOperandRange17getAsOperandRangeEv.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i.i = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !98
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !99
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i, i64 %i.i
  %.fca.0.insert.i.i = insertvalue { ptr, i64 } poison, ptr %i.m, 0
  %.fca.1.insert.i.i = insertvalue { ptr, i64 } %.fca.0.insert.i.i, i64 %i.l, 1
  ret { ptr, i64 } %.fca.1.insert.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { ptr, i64 } @_ZNK4mlir19MutableOperandRangecvN4llvm15MutableArrayRefINS_9OpOperandEEEEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !97     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, 8388608
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZN4mlir9Operation13getOpOperandsEv.exit, label %bb.b, !prof !51

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !71
  br label %_ZN4mlir9Operation13getOpOperandsEv.exit

_ZN4mlir9Operation13getOpOperandsEv.exit:         ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !98
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !99
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i, i64 %i.i
  %.fca.0.insert.i1 = insertvalue { ptr, i64 } poison, ptr %i.m, 0
  %.fca.1.insert.i2 = insertvalue { ptr, i64 } %.fca.0.insert.i1, i64 %i.l, 1
  ret { ptr, i64 } %.fca.1.insert.i2
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4mlir19MutableOperandRange5splitENS_14NamedAttributeE(ptr dead_on_unwind noalias writable sret(%"class.mlir::MutableOperandRangeRange") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr %2, ptr %3) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4mlir24MutableOperandRangeRangeC1ERKNS_19MutableOperandRangeENS_14NamedAttributeE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr %2, ptr %3) #24
  ret void
}

declare ptr @_ZN4mlir6detail18DenseArrayAttrImplIiE3getEPNS_11MLIRContextEN4llvm8ArrayRefIiEE(ptr noundef, ptr, i64) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir9Operation7setAttrENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.mlir::StringAttr", align 8  ; 4 uses
  %4 = alloca %"class.mlir::NamedAttrList", align 8 ; 10 uses
  store ptr %1, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 47
  %5 = load i8, ptr %i.a, align 1
  %.not = icmp eq i8 %5, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #24 ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0
  %i.d = extractvalue { ptr, i64 } %i.b, 1
  %i.e = call { ptr, i8 } @_ZN4mlir9Operation15getInherentAttrEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %i.c, i64 %i.d) #24
  %i.f = extractvalue { ptr, i8 } %i.e, 1
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.06.0.copyload = load ptr, ptr %3, align 8
  call void @_ZN4mlir9Operation15setInherentAttrENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %.sroa.06.0.copyload, ptr %2) #24
  br label %bb.j

bb.d:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.sroa.04.0.copyload = load ptr, ptr %i.h, align 8
  call void @_ZN4mlir13NamedAttrListC1ENS_14DictionaryAttrE(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr %.sroa.04.0.copyload) #24
  %.sroa.03.0.copyload = load ptr, ptr %3, align 8
  %i.i = call ptr @_ZN4mlir13NamedAttrList3setENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr %.sroa.03.0.copyload, ptr %2)
  %.not10 = icmp eq ptr %i.i, %2
  br i1 %.not10, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j) #24
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 4 uses
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.l, align 8 ; 3 uses
  %i.m = and i64 %.0.copyload.i.i.i.i.i, 4
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %.thread.i, label %bb.f

.thread.i:                                        ; preds = %bb.e
  %i.n = call noundef zeroext i1 @_ZN4mlir14DictionaryAttr11sortInPlaceERN4llvm15SmallVectorImplINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(88) %4) #24 ; 0 uses
  store i64 4, ptr %i.l, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = icmp ult i64 %.0.copyload.i.i.i.i.i, 8
  br i1 %i.o, label %bb.g, label %_ZNK4mlir13NamedAttrList13getDictionaryEPNS_11MLIRContextE.exit

bb.g:                                             ; preds = %bb.f, %.thread.i
  %i.p = load ptr, ptr %4, align 8, !tbaa !23
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !24
  %i.s = zext i32 %i.r to i64
  %i.t = call ptr @_ZN4mlir14DictionaryAttr13getWithSortedEPNS_11MLIRContextEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef %i.k, ptr %i.p, i64 %i.s) #24
  %.0.copyload.i.i.i4.i = load i64, ptr %i.l, align 8
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = and i64 %.0.copyload.i.i.i4.i, 7
  %i.w = or i64 %i.v, %i.u                        ; 2 uses
  store i64 %i.w, ptr %i.l, align 8
  br label %_ZNK4mlir13NamedAttrList13getDictionaryEPNS_11MLIRContextE.exit

_ZNK4mlir13NamedAttrList13getDictionaryEPNS_11MLIRContextE.exit: ; preds = %bb.f, %bb.g
  %.0.copyload.i.i.i5.i = phi i64 [ %i.w, %bb.g ], [ %.0.copyload.i.i.i.i.i, %bb.f ]
  %i.x = and i64 %.0.copyload.i.i.i5.i, -8
  %i.y = inttoptr i64 %i.x to ptr
  store ptr %i.y, ptr %i.h, align 8
  br label %bb.h

bb.h:                                             ; preds = %_ZNK4mlir13NamedAttrList13getDictionaryEPNS_11MLIRContextE.exit, %bb.d
  %i.z = load ptr, ptr %4, align 8, !tbaa !23     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZN4mlir13NamedAttrListD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef %i.z) #24
  br label %_ZN4mlir13NamedAttrListD2Ev.exit

_ZN4mlir13NamedAttrListD2Ev.exit:                 ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.j

bb.j:                                             ; preds = %_ZN4mlir13NamedAttrListD2Ev.exit, %bb.c
  ret void
}

declare ptr @_ZNK4mlir14NamedAttribute7getNameEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4mlir19MutableOperandRangeixEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !97
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !98
  %i.d = add i32 %i.c, %1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !71
  %i.g = zext i32 %i.d to i64
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.g
  ret ptr %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZNK4mlir19MutableOperandRange5beginEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !97     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, 8388608
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZN4mlir9Operation13getOpOperandsEv.exit, label %bb.b, !prof !51

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !71
  br label %_ZN4mlir9Operation13getOpOperandsEv.exit

_ZN4mlir9Operation13getOpOperandsEv.exit:         ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !98
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i, i64 %i.i
  ret ptr %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZNK4mlir19MutableOperandRange3endEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !97     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, 8388608
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZN4mlir9Operation13getOpOperandsEv.exit, label %bb.b, !prof !51

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !71
  br label %_ZN4mlir9Operation13getOpOperandsEv.exit

_ZN4mlir9Operation13getOpOperandsEv.exit:         ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !98
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !99
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i, i64 %i.i
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %i.l
  ret ptr %i.n
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir24MutableOperandRangeRangeC2ERKNS_19MutableOperandRangeENS_14NamedAttributeE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1, ptr %2, ptr %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"struct.std::pair.95", align 8     ; 8 uses
  %5 = alloca %"class.mlir::detail::DenseArrayAttrImpl", align 8 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store i32 0, ptr %i.d, align 8, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i32 1, ptr %i.e, align 4, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !24   ; 3 uses
  switch i32 %i.g, label %_ZSt4copyIPKSt4pairIjN4mlir14NamedAttributeEEPS3_ET0_T_S8_S7_.exit36.i.i.i.i [
    i32 0, label %_ZNSt4pairIN4mlir19MutableOperandRangeENS0_14NamedAttributeEEC2IRKS1_RS2_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS9_SA_EEEbE4typeELb1EEEOS9_OSA_.exit
    i32 1, label %_ZSt4copyIPKSt4pairIjN4mlir14NamedAttributeEEPS3_ET0_T_S8_S7_.exit36.i.thread.i.i.i
  ]

_ZSt4copyIPKSt4pairIjN4mlir14NamedAttributeEEPS3_ET0_T_S8_S7_.exit36.i.i.i.i: ; preds = %bb.a
  %i.h = zext i32 %i.g to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull %i.c, i64 noundef %i.h, i64 noundef 24) #24
  %.pre.i.i.i = load i32, ptr %i.f, align 8, !tbaa !24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %.pre.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %.sink.split.i.i.i.i, label %_ZSt4copyIPKSt4pairIjN4mlir14NamedAttributeEEPS3_ET0_T_S8_S7_.exit36.i.i._ZSt4copyIPKSt4pairIjN4mlir14NamedAttributeEEPS3_ET0_T_S8_S7_.exit36.i.thread.i_crit_edge.i.i

_ZSt4copyIPKSt4pairIjN4mlir14NamedAttributeEEPS3_ET0_T_S8_S7_.exit36.i.i._ZSt4copyIPKSt4pairIjN4mlir14NamedAttributeEEPS3_ET0_T_S8_S7_.exit36.i.thread.i_crit_edge.i.i: ; preds = %_ZSt4copyIPKSt4pairIjN4mlir14NamedAttributeEEPS3_ET0_T_S8_S7_.exit36.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.i = zext i32 %.pre.i.i.i to i64
  %i.j = mul nuw nsw i64 %i.i, 24
  br label %_ZSt4copyIPKSt4pairIjN4mlir14NamedAttributeEEPS3_ET0_T_S8_S7_.exit36.i.thread.i.i.i

_ZSt4copyIPKSt4pairIjN4mlir14NamedAttributeEEPS3_ET0_T_S8_S7_.exit36.i.thread.i.i.i: ; preds = %bb.a, %_ZSt4copyIPKSt4pairIjN4mlir14NamedAttributeEEPS3_ET0_T_S8_S7_.exit36.i.i._ZSt4copyIPKSt4pairIjN4mlir14NamedAttributeEEPS3_ET0_T_S8_S7_.exit36.i.thread.i_crit_edge.i.i
  %i.k = phi ptr [ %.pre.i.i, %_ZSt4copyIPKSt4pairIjN4mlir14NamedAttributeEEPS3_ET0_T_S8_S7_.exit36.i.i._ZSt4copyIPKSt4pairIjN4mlir14NamedAttributeEEPS3_ET0_T_S8_S7_.exit36.i.thread.i_crit_edge.i.i ], [ %i.c, %bb.a ]
  %gepdiff.i.i.i.i = phi i64 [ %i.j, %_ZSt4copyIPKSt4pairIjN4mlir14NamedAttributeEEPS3_ET0_T_S8_S7_.exit36.i.i._ZSt4copyIPKSt4pairIjN4mlir14NamedAttributeEEPS3_ET0_T_S8_S7_.exit36.i.thread.i_crit_edge.i.i ], [ 24, %bb.a ]
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.k, ptr noundef nonnull align 8 dereferenceable(1) %i.l, i64 %gepdiff.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %_ZSt4copyIPKSt4pairIjN4mlir14NamedAttributeEEPS3_ET0_T_S8_S7_.exit36.i.thread.i.i.i, %_ZSt4copyIPKSt4pairIjN4mlir14NamedAttributeEEPS3_ET0_T_S8_S7_.exit36.i.i.i.i
  store i32 %i.g, ptr %i.d, align 8, !tbaa !24
  br label %_ZNSt4pairIN4mlir19MutableOperandRangeENS0_14NamedAttributeEEC2IRKS1_RS2_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS9_SA_EEEbE4typeELb1EEEOS9_OSA_.exit

_ZNSt4pairIN4mlir19MutableOperandRangeENS0_14NamedAttributeEEC2IRKS1_RS2_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS9_SA_EEEbE4typeELb1EEEOS9_OSA_.exit: ; preds = %bb.a, %.sink.split.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr %2, ptr %i.m, align 8, !tbaa !27
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 64
  store ptr %3, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !27
end_hunk_1
