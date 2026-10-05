Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/InliningUtils?download=true
inline.NumInlined: 1973
inline.NumDeleted: 1251
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4mlir10inlineCallERNS_16InlinerInterfaceEN4llvm12function_refIFvRNS_9OpBuilderEPNS_6RegionEPNS_5BlockES9_RNS_9IRMappingEbEEENS_15CallOpInterfaceENS_19CallableOpInterfaceES7_b:bb.a
  %i.jw = getelementptr inbounds nuw i8, ptr %15, i64 68
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !103 ; 2 uses
  %i.jy = icmp eq i32 %i.jx, 0
  br i1 %i.jy, label %_ZN4llvm8DenseMapIPN4mlir9OperationES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEED2Ev.exit.i, label %bb.aj

bb.aj:                                            ; preds = %.thread134
  %i.jz = getelementptr inbounds nuw i8, ptr %15, i64 48
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !104
  %i.kb = zext i32 %i.jx to i64                   ; 2 uses
  %i.kc = shl nuw nsw i64 %i.kb, 4
  %i.kd = add nuw nsw i64 %i.kb, 31
  %i.ke = lshr i64 %i.kd, 3
  %i.kf = and i64 %i.ke, 1073741820
  %i.kg = add nuw nsw i64 %i.kf, %i.kc
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ka, i64 noundef %i.kg, i64 noundef 8) #17
  br label %_ZN4llvm8DenseMapIPN4mlir9OperationES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEED2Ev.exit.i

_ZN4llvm8DenseMapIPN4mlir9OperationES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEED2Ev.exit.i: ; preds = %bb.aj, %.thread134
  %i.kh = getelementptr inbounds nuw i8, ptr %15, i64 44
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !107 ; 2 uses
  %i.kj = icmp eq i32 %i.ki, 0
  br i1 %i.kj, label %_ZN4llvm8DenseMapIPN4mlir5BlockES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEED2Ev.exit.i, label %bb.ak

bb.ak:                                            ; preds = %_ZN4llvm8DenseMapIPN4mlir9OperationES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEED2Ev.exit.i
  %i.kk = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !108
  %i.km = zext i32 %i.ki to i64                   ; 2 uses
  %i.kn = shl nuw nsw i64 %i.km, 4
  %i.ko = add nuw nsw i64 %i.km, 31
  %i.kp = lshr i64 %i.ko, 3
  %i.kq = and i64 %i.kp, 1073741820
  %i.kr = add nuw nsw i64 %i.kq, %i.kn
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.kl, i64 noundef %i.kr, i64 noundef 8) #17
  br label %_ZN4llvm8DenseMapIPN4mlir5BlockES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEED2Ev.exit.i

_ZN4llvm8DenseMapIPN4mlir5BlockES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEED2Ev.exit.i: ; preds = %bb.ak, %_ZN4llvm8DenseMapIPN4mlir9OperationES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEED2Ev.exit.i
  %i.ks = getelementptr inbounds nuw i8, ptr %15, i64 20
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !52 ; 2 uses
  %i.ku = icmp eq i32 %i.kt, 0
  br i1 %i.ku, label %_ZN4mlir9IRMappingD2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZN4llvm8DenseMapIPN4mlir5BlockES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEED2Ev.exit.i
  %i.kv = load ptr, ptr %15, align 8, !tbaa !50
  %i.kw = zext i32 %i.kt to i64                   ; 2 uses
  %i.kx = shl nuw nsw i64 %i.kw, 4
  %i.ky = add nuw nsw i64 %i.kw, 31
  %i.kz = lshr i64 %i.ky, 3
  %i.la = and i64 %i.kz, 1073741820
  %i.lb = add nuw nsw i64 %i.la, %i.kx
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.kv, i64 noundef %i.lb, i64 noundef 8) #17
  br label %_ZN4mlir9IRMappingD2Ev.exit

_ZN4mlir9IRMappingD2Ev.exit:                      ; preds = %_ZN4llvm8DenseMapIPN4mlir5BlockES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEED2Ev.exit.i, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  %i.lc = load ptr, ptr %13, align 8, !tbaa !110  ; 2 uses
  %i.ld = icmp eq ptr %i.lc, %i.bw
  br i1 %i.ld, label %_ZN4llvm11SmallVectorIPN4mlir9OperationELj4EED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %_ZN4mlir9IRMappingD2Ev.exit
  call void @free(ptr noundef %i.lc) #17
  br label %_ZN4llvm11SmallVectorIPN4mlir9OperationELj4EED2Ev.exit

_ZN4llvm11SmallVectorIPN4mlir9OperationELj4EED2Ev.exit: ; preds = %_ZN4mlir9IRMappingD2Ev.exit, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  br label %bb.an

bb.an:                                            ; preds = %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir11ResultRangeEPNS2_6detail12OpResultImplENS2_8OpResultES7_S7_EcvT_INS_11SmallVectorINS2_5ValueELj8EEEvEEv.exit, %_ZN4llvm11SmallVectorIPN4mlir9OperationELj4EED2Ev.exit
  %.sroa.049.8 = phi i8 [ %.sroa.049.7, %_ZN4llvm11SmallVectorIPN4mlir9OperationELj4EED2Ev.exit ], [ 0, %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir11ResultRangeEPNS2_6detail12OpResultImplENS2_8OpResultES7_S7_EcvT_INS_11SmallVectorINS2_5ValueELj8EEEvEEv.exit ]
  %i.le = load ptr, ptr %12, align 8, !tbaa !110  ; 2 uses
  %i.lf = icmp eq ptr %i.le, %i.ay
  br i1 %i.lf, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj8EED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @free(ptr noundef %i.le) #17
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj8EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir5ValueELj8EED2Ev.exit: ; preds = %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  %i.lg = load ptr, ptr %11, align 8, !tbaa !110  ; 2 uses
  %i.lh = icmp eq ptr %i.lg, %i.l
  br i1 %i.lh, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj8EED2Ev.exit108, label %bb.ap

bb.ap:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj8EED2Ev.exit
  call void @free(ptr noundef %i.lg) #17
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj8EED2Ev.exit108

_ZN4llvm11SmallVectorIN4mlir5ValueELj8EED2Ev.exit108: ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj8EED2Ev.exit, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  br label %bb.aq

bb.aq:                                            ; preds = %bb.a, %_ZN4llvm11SmallVectorIN4mlir5ValueELj8EED2Ev.exit108
  %.sroa.049.9 = phi i8 [ %.sroa.049.8, %_ZN4llvm11SmallVectorIN4mlir5ValueELj8EED2Ev.exit108 ], [ 0, %bb.a ]
  ret i8 %.sroa.049.9
}

declare { ptr, i64 } @_ZN4mlir19CallableOpInterface14getResultTypesEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare { ptr, i64 } @_ZN4mlir15CallOpInterface14getArgOperandsEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc noundef i8 @"_ZZN4mlir10inlineCallERNS_16InlinerInterfaceEN4llvm12function_refIFvRNS_9OpBuilderEPNS_6RegionEPNS_5BlockES9_RNS_9IRMappingEbEEENS_15CallOpInterfaceENS_19CallableOpInterfaceES7_bENK3$_0clEv"(ptr nofree readonly captures(address) %.0.val.0.val, i32 %.0.val.8.val) unnamed_addr #4 align 2 {
bb.a:
  %i.a = zext i32 %.0.val.8.val to i64
  %.idx = shl nuw nsw i64 %i.a, 3
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val.0.val, i64 %.idx
  %.not1 = icmp eq i32 %.0.val.8.val, 0
  br i1 %.not1, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4mlir5Value18replaceAllUsesWithES0_.exit, %bb.a
  ret i8 0

.lr.ph:                                           ; preds = %bb.a, %_ZN4mlir5Value18replaceAllUsesWithES0_.exit
  %.02 = phi ptr [ %i.t, %_ZN4mlir5Value18replaceAllUsesWithES0_.exit ], [ %.0.val.0.val, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.02, align 8, !tbaa !132  ; 3 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !76
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.g, align 8, !tbaa !56 ; 4 uses
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !92   ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN4mlir5Value18replaceAllUsesWithES0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph, %_ZN4mlir9IROperandINS_9OpOperandENS_5ValueEE3setES2_.exit.i.i
  %i.j = phi ptr [ %i.r, %_ZN4mlir9IROperandINS_9OpOperandENS_5ValueEE3setES2_.exit.i.i ], [ %i.h, %.lr.ph ] ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !96   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !97   ; 3 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !98
  %.not2.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not2.i.i.i.i, label %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.l, ptr %i.n, align 8, !tbaa !96
  br label %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i

_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i: ; preds = %bb.c, %bb.b, %.lr.ph.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.o, align 8, !tbaa !56
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.k, align 8, !tbaa !96
  %i.p = load ptr, ptr %.sroa.0.0.copyload.i.i, align 8, !tbaa !92 ; 3 uses
  store ptr %i.p, ptr %i.j, align 8, !tbaa !97
  %.not.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir9IROperandINS_9OpOperandENS_5ValueEE3setES2_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.j, ptr %i.q, align 8, !tbaa !96
  br label %_ZN4mlir9IROperandINS_9OpOperandENS_5ValueEE3setES2_.exit.i.i

_ZN4mlir9IROperandINS_9OpOperandENS_5ValueEE3setES2_.exit.i.i: ; preds = %bb.d, %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i
  store ptr %i.j, ptr %.sroa.0.0.copyload.i.i, align 8, !tbaa !92
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !92   ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZN4mlir5Value18replaceAllUsesWithES0_.exit, label %.lr.ph.i.i, !llvm.loop !0

_ZN4mlir5Value18replaceAllUsesWithES0_.exit:      ; preds = %_ZN4mlir9IROperandINS_9OpOperandENS_5ValueEE3setES2_.exit.i.i, %.lr.ph
  tail call void @_ZN4mlir9Operation5eraseEv(ptr noundef nonnull align 8 dereferenceable(64) %i.c) #17
  %i.t = getelementptr inbounds nuw i8, ptr %.02, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.t, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

declare noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN4mlir9Operation17replaceUsesOfWithENS_5ValueES1_(ptr noundef nonnull align 8 dereferenceable(64), ptr, ptr) local_unnamed_addr #2

declare void @_ZN4mlir9TypeRangeC1EN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN4mlir6detail30DialectInterfaceCollectionBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56)) unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir16InlinerInterfaceD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZN4mlir6detail30DialectInterfaceCollectionBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir16InlinerInterface20processInlinedBlocksEN4llvm14iterator_rangeINS1_14ilist_iteratorINS1_12ilist_detail12node_optionsINS_5BlockELb0ELb0EvLb0EvEELb0ELb0EEEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %1, ptr %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

declare noundef ptr @_ZNK4mlir5Block9getParentEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL15isLegalToInlineRN4mlir16InlinerInterfaceEPNS_6RegionES3_bRNS_9IRMappingE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nofree noundef readonly captures(address) %1, ptr noundef %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(72) %4) unnamed_addr #0 {
bb.a:
  %.sroa.033.0.in140 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.033.0141 = load ptr, ptr %.sroa.033.0.in140, align 8, !tbaa !41 ; 2 uses
  %.not142 = icmp eq ptr %.sroa.033.0141, %1
  br i1 %.not142, label %.thread125, label %.lr.ph146

.lr.ph146:                                        ; preds = %bb.a
  %5 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_26UnrealizedConversionCastOpEvE2idE
  br label %.lr.ph146.a

.loopexit:                                        ; preds = %.critedge, %.lr.ph146.a
  %.sroa.033.0.in = getelementptr inbounds nuw i8, ptr %.sroa.033.0143, i64 8
  %.sroa.033.0 = load ptr, ptr %.sroa.033.0.in, align 8, !tbaa !41 ; 2 uses
  %.not = icmp eq ptr %.sroa.033.0, %1
  br i1 %.not, label %.thread125, label %.lr.ph146.a

.lr.ph146.a:                                      ; preds = %.lr.ph146, %.loopexit
  %.sroa.033.0143 = phi ptr [ %.sroa.033.0141, %.lr.ph146 ], [ %.sroa.033.0, %.loopexit ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.033.0143, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.033.0143, i64 32 ; 2 uses
  %.sroa.029.0135 = load ptr, ptr %i.a, align 8, !tbaa !41 ; 2 uses
  %.not127136 = icmp eq ptr %.sroa.029.0135, %i.b
  br i1 %.not127136, label %.loopexit, label %.lr.ph139

.lr.ph139:                                        ; preds = %.lr.ph146.a, %.critedge
  %.sroa.029.0137 = phi ptr [ %.sroa.029.0, %.critedge ], [ %.sroa.029.0135, %.lr.ph146.a ] ; 2 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.029.0137) #17 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !115
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !117
  %i.g = icmp eq ptr %i.f, @_ZN4mlir6detail14TypeIDResolverINS_26UnrealizedConversionCastOpEvE2idE
  %spec.select.i.i.i.i = and i1 %5, %i.g
  br i1 %spec.select.i.i.i.i, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph139
  %i.h = load ptr, ptr %0, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %i.c, ptr noundef %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(72) %4) #17
  br i1 %i.k, label %bb.c, label %.thread125

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %0, align 8, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %i.c) #17
  br i1 %i.o, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.q = load i32, ptr %i.p, align 4              ; 3 uses
  %i.r = and i32 %i.q, 8388607                    ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %._crit_edge, label %_ZN4mlir9Operation10getRegionsEv.exit

_ZN4mlir9Operation10getRegionsEv.exit:            ; preds = %bb.d
  %i.t = zext nneg i32 %i.r to i64                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.v = lshr i32 %i.q, 23
  %.lobit.i.i.i.i.i.i.i.i.i = and i32 %i.v, 1
  %i.w = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i to i64
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.w
  %i.y = lshr i32 %i.q, 21
  %i.z = and i32 %i.y, 2040
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !252
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.ab, i64 %i.ae ; 3 uses
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.af, i64 %i.t ; 7 uses
  %i.ah = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.ai = lshr i64 %i.t, 2                        ; 2 uses
  %.not148 = icmp eq i64 %i.ai, 0
  br i1 %.not148, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4mlir9Operation10getRegionsEv.exit, %bb.h
  %.0.i.i134 = phi i64 [ %i.ar, %bb.h ], [ %i.ai, %_ZN4mlir9Operation10getRegionsEv.exit ] ; 2 uses
  %.029.i.i133 = phi ptr [ %i.aq, %bb.h ], [ %i.af, %_ZN4mlir9Operation10getRegionsEv.exit ] ; 6 uses
  %i.aj = tail call fastcc noundef zeroext i1 @_ZL15isLegalToInlineRN4mlir16InlinerInterfaceEPNS_6RegionES3_bRNS_9IRMappingE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(28) %.029.i.i133, ptr noundef %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(72) %4), !inline_history !250
  br i1 %i.aj, label %bb.e, label %"_ZSt7find_ifIPN4mlir6RegionEZL15isLegalToInlineRNS0_16InlinerInterfaceES2_S2_bRNS0_9IRMappingEE3$_0ET_S8_S8_T0_.exit"

bb.e:                                             ; preds = %.lr.ph
  %i.ak = getelementptr inbounds nuw i8, ptr %.029.i.i133, i64 32 ; 2 uses
  %i.al = tail call fastcc noundef zeroext i1 @_ZL15isLegalToInlineRN4mlir16InlinerInterfaceEPNS_6RegionES3_bRNS_9IRMappingE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(28) %i.ak, ptr noundef %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(72) %4), !inline_history !250
  br i1 %i.al, label %bb.f, label %"_ZSt7find_ifIPN4mlir6RegionEZL15isLegalToInlineRNS0_16InlinerInterfaceES2_S2_bRNS0_9IRMappingEE3$_0ET_S8_S8_T0_.exit"

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %.029.i.i133, i64 64 ; 2 uses
  %i.an = tail call fastcc noundef zeroext i1 @_ZL15isLegalToInlineRN4mlir16InlinerInterfaceEPNS_6RegionES3_bRNS_9IRMappingE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(28) %i.am, ptr noundef %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(72) %4), !inline_history !250
  br i1 %i.an, label %bb.g, label %"_ZSt7find_ifIPN4mlir6RegionEZL15isLegalToInlineRNS0_16InlinerInterfaceES2_S2_bRNS0_9IRMappingEE3$_0ET_S8_S8_T0_.exit"

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %.029.i.i133, i64 96 ; 2 uses
  %i.ap = tail call fastcc noundef zeroext i1 @_ZL15isLegalToInlineRN4mlir16InlinerInterfaceEPNS_6RegionES3_bRNS_9IRMappingE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(28) %i.ao, ptr noundef %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(72) %4), !inline_history !250
  br i1 %i.ap, label %bb.h, label %"_ZSt7find_ifIPN4mlir6RegionEZL15isLegalToInlineRNS0_16InlinerInterfaceES2_S2_bRNS0_9IRMappingEE3$_0ET_S8_S8_T0_.exit"

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %.029.i.i133, i64 128 ; 2 uses
  %i.ar = add nsw i64 %.0.i.i134, -1
  %i.as = icmp sgt i64 %.0.i.i134, 1
  br i1 %i.as, label %.lr.ph, label %._crit_edge, !llvm.loop !251

._crit_edge:                                      ; preds = %bb.h, %bb.d, %_ZN4mlir9Operation10getRegionsEv.exit
  %i.at = phi i64 [ %i.ah, %_ZN4mlir9Operation10getRegionsEv.exit ], [ 0, %bb.d ], [ %i.ah, %bb.h ]
  %i.au = phi ptr [ %i.ag, %_ZN4mlir9Operation10getRegionsEv.exit ], [ null, %bb.d ], [ %i.ag, %bb.h ] ; 3 uses
  %.029.i.i.lcssa = phi ptr [ %i.af, %_ZN4mlir9Operation10getRegionsEv.exit ], [ null, %bb.d ], [ %i.aq, %bb.h ] ; 6 uses
  %i.av = ptrtoint ptr %.029.i.i.lcssa to i64
  %i.aw = sub i64 %i.at, %i.av
  %i.ax = ashr exact i64 %i.aw, 5
  switch i64 %i.ax, label %.critedge [
    i64 3, label %bb.i
    i64 2, label %bb.k
    i64 1, label %bb.m
  ]

bb.i:                                             ; preds = %._crit_edge
  %i.ay = tail call fastcc noundef zeroext i1 @_ZL15isLegalToInlineRN4mlir16InlinerInterfaceEPNS_6RegionES3_bRNS_9IRMappingE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(28) %.029.i.i.lcssa, ptr noundef %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(72) %4), !inline_history !250
  br i1 %i.ay, label %bb.j, label %"_ZSt7find_ifIPN4mlir6RegionEZL15isLegalToInlineRNS0_16InlinerInterfaceES2_S2_bRNS0_9IRMappingEE3$_0ET_S8_S8_T0_.exit"

bb.j:                                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %.029.i.i.lcssa, i64 32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  %.1.i.i = phi ptr [ %i.az, %bb.j ], [ %.029.i.i.lcssa, %._crit_edge ] ; 3 uses
  %i.ba = tail call fastcc noundef zeroext i1 @_ZL15isLegalToInlineRN4mlir16InlinerInterfaceEPNS_6RegionES3_bRNS_9IRMappingE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(28) %.1.i.i, ptr noundef %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(72) %4), !inline_history !250
  br i1 %i.ba, label %bb.l, label %"_ZSt7find_ifIPN4mlir6RegionEZL15isLegalToInlineRNS0_16InlinerInterfaceES2_S2_bRNS0_9IRMappingEE3$_0ET_S8_S8_T0_.exit"

bb.l:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge
  %.2.i.i = phi ptr [ %i.bb, %bb.l ], [ %.029.i.i.lcssa, %._crit_edge ] ; 2 uses
  %i.bc = tail call fastcc noundef zeroext i1 @_ZL15isLegalToInlineRN4mlir16InlinerInterfaceEPNS_6RegionES3_bRNS_9IRMappingE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(28) %.2.i.i, ptr noundef %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(72) %4), !inline_history !250
  br i1 %i.bc, label %.critedge, label %"_ZSt7find_ifIPN4mlir6RegionEZL15isLegalToInlineRNS0_16InlinerInterfaceES2_S2_bRNS0_9IRMappingEE3$_0ET_S8_S8_T0_.exit"

"_ZSt7find_ifIPN4mlir6RegionEZL15isLegalToInlineRNS0_16InlinerInterfaceES2_S2_bRNS0_9IRMappingEE3$_0ET_S8_S8_T0_.exit": ; preds = %.lr.ph, %bb.e, %bb.f, %bb.g, %bb.i, %bb.k, %bb.m
  %i.bd = phi ptr [ %i.au, %bb.k ], [ %i.au, %bb.i ], [ %i.au, %bb.m ], [ %i.ag, %bb.g ], [ %i.ag, %bb.f ], [ %i.ag, %bb.e ], [ %i.ag, %.lr.ph ]
  %.028.i.i = phi ptr [ %.1.i.i, %bb.k ], [ %.029.i.i.lcssa, %bb.i ], [ %.2.i.i, %bb.m ], [ %.029.i.i133, %.lr.ph ], [ %i.ak, %bb.e ], [ %i.am, %bb.f ], [ %i.ao, %bb.g ]
  %.not128 = icmp eq ptr %i.bd, %.028.i.i
  br i1 %.not128, label %.critedge, label %.thread125

.critedge:                                        ; preds = %"_ZSt7find_ifIPN4mlir6RegionEZL15isLegalToInlineRNS0_16InlinerInterfaceES2_S2_bRNS0_9IRMappingEE3$_0ET_S8_S8_T0_.exit", %bb.c, %._crit_edge, %bb.m, %.lr.ph139
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.029.0137, i64 8
  %.sroa.029.0 = load ptr, ptr %i.be, align 8, !tbaa !41 ; 2 uses
  %.not127 = icmp eq ptr %.sroa.029.0, %i.b
  br i1 %.not127, label %.loopexit, label %.lr.ph139

.thread125:                                       ; preds = %.loopexit, %bb.b, %"_ZSt7find_ifIPN4mlir6RegionEZL15isLegalToInlineRNS0_16InlinerInterfaceES2_S2_bRNS0_9IRMappingEE3$_0ET_S8_S8_T0_.exit", %bb.a
  %.not132 = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ false, %"_ZSt7find_ifIPN4mlir6RegionEZL15isLegalToInlineRNS0_16InlinerInterfaceES2_S2_bRNS0_9IRMappingEE3$_0ET_S8_S8_T0_.exit" ], [ true, %.loopexit ]
  ret i1 %.not132
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL18handleArgumentImplRN4mlir16InlinerInterfaceERNS_9OpBuilderENS_15CallOpInterfaceENS_19CallableOpInterfaceERNS_9IRMappingE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %2, ptr %3, ptr %4, ptr noundef nonnull align 8 dereferenceable(72) %5) unnamed_addr #0 {
bb.a:
  %6 = alloca %"class.mlir::Value", align 8       ; 4 uses
  %7 = alloca %"class.mlir::CallableOpInterface", align 8 ; 6 uses
  %8 = alloca %"class.llvm::SmallVector.114", align 8 ; 17 uses
  %9 = alloca %"class.mlir::ArrayAttr", align 8   ; 5 uses
  store ptr %3, ptr %7, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %4, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.b = call noundef ptr @_ZN4mlir19CallableOpInterface17getCallableRegionEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #17 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4mlir6Region15getNumArgumentsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !41   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !45
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !46
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = lshr exact i64 %i.m, 3
  %i.o = trunc i64 %i.n to i32
  br label %_ZN4mlir6Region15getNumArgumentsEv.exit

_ZN4mlir6Region15getNumArgumentsEv.exit:          ; preds = %bb.a, %bb.b
  %.sroa.4.0.i.i = phi i32 [ %i.o, %bb.b ], [ 0, %bb.a ] ; 9 uses
  %i.p = zext i32 %.sroa.4.0.i.i to i64           ; 4 uses
  %i.q = call ptr @_ZN4mlir7Builder17getDictionaryAttrEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr null, i64 0) #17 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.r, ptr %8, align 8, !tbaa !110
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i32 0, ptr %i.s, align 8, !tbaa !111
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 6, ptr %i.t, align 4, !tbaa !112
  %i.u = icmp ugt i32 %.sroa.4.0.i.i, 6
  br i1 %i.u, label %.lr.ph.preheader.i.i.i.i.i.i, label %_ZSt6fill_nIPN4mlir14DictionaryAttrEmS1_ET_S3_T0_RKT1_.exit.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %_ZN4mlir6Region15getNumArgumentsEv.exit
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull %i.r, i64 noundef %i.p, i64 noundef 8) #17
  %i.v = load ptr, ptr %8, align 8, !tbaa !110    ; 2 uses
  %i.w = ptrtoint ptr %i.q to i64                 ; 2 uses
  %n.vec = and i64 %i.p, 4294967292               ; 3 uses
  %i.x = shl nuw nsw i64 %n.vec, 3
  %i.y = getelementptr i8, ptr %i.v, i64 %i.x
  %i.z = and i64 %i.p, 3
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.w, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.lr.ph.preheader.i.i.i.i.i.i
  %index = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i.i.i ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.aa ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 8
  store <2 x i64> %broadcast.splat, ptr %i.ab, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !253

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.p
  br i1 %cmp.n, label %_ZN4llvm11SmallVectorIN4mlir14DictionaryAttrELj6EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %middle.block, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.i ], [ %i.y, %middle.block ] ; 2 uses
  %.068.i.i.i.i.i.i = phi i64 [ %i.ad, %.lr.ph.i.i.i.i.i.i ], [ %i.z, %middle.block ]
  store i64 %i.w, ptr %.09.i.i.i.i.i.i, align 8
  %i.ad = add nsw i64 %.068.i.i.i.i.i.i, -1       ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm11SmallVectorIN4mlir14DictionaryAttrELj6EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !254
end_hunk_0
