Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/InferTypeOpInterface?download=true
inline.NumInlined: 1139
inline.NumDeleted: 737
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK4mlir15ValueShapeRange8getShapeEi:bb.a
  br i1 %.not.i.i, label %_ZNK4mlir15ValueShapeRange8getShapeENS_5ValueE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = or i64 %i.q, 2
  br label %_ZNK4mlir15ValueShapeRange8getShapeENS_5ValueE.exit

_ZNK4mlir15ValueShapeRange8getShapeENS_5ValueE.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.a, %bb.b
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.j, %bb.d ], [ 0, %bb.e ], [ %i.r, %bb.f ]
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i8 @_ZN4mlir6detail22inferReturnTensorTypesEN4llvm8ArrayRefINS_20ShapedTypeComponentsEEERNS1_15SmallVectorImplINS_4TypeEEE(ptr nofree readonly captures(address) %0, i64 %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 {
bb.a:
  %.idx = shl nuw nsw i64 %1, 6
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %.not26 = icmp eq i64 %1, 0
  br i1 %.not26, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE9push_backES2_.exit, %bb.a
  ret i8 1

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE9push_backES2_.exit
  %.027 = phi ptr [ %0, %.lr.ph ], [ %i.ac, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE9push_backES2_.exit ] ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.027, i64 40
  %.sroa.0.0.copyload.i = load ptr, ptr %i.d, align 8, !tbaa !61 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.027, i64 56
  %i.f = load i8, ptr %i.e, align 8, !tbaa !58, !range !59, !noundef !60
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.027, i64 48
  %.sroa.0.0.copyload.i22 = load ptr, ptr %i.h, align 8, !tbaa !96
  %i.i = load ptr, ptr %.027, align 8, !tbaa !41
  %i.j = getelementptr inbounds nuw i8, ptr %.027, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !42
  %i.l = zext i32 %i.k to i64
  %i.m = tail call ptr @_ZN4mlir16RankedTensorType3getEN4llvm8ArrayRefIlEENS_4TypeENS_9AttributeE(ptr %i.i, i64 %i.l, ptr %.sroa.0.0.copyload.i, ptr %.sroa.0.0.copyload.i22) #16 ; 2 uses
  %i.n = load i32, ptr %i.b, align 8, !tbaa !42   ; 2 uses
  %i.o = load i32, ptr %i.c, align 4, !tbaa !62
  %.not.i = icmp ult i32 %i.n, %i.o
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !72

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %i.m)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE9push_backES2_.exit

bb.e:                                             ; preds = %bb.c
  %i.p = zext i32 %i.n to i64
  %i.q = load ptr, ptr %2, align 8, !tbaa !41
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.p
  store ptr %i.m, ptr %i.r, align 1
  %i.s = load i32, ptr %i.b, align 8, !tbaa !42
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr %i.b, align 8, !tbaa !42
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE9push_backES2_.exit

bb.f:                                             ; preds = %bb.b
  %i.u = tail call ptr @_ZN4mlir18UnrankedTensorType3getENS_4TypeE(ptr %.sroa.0.0.copyload.i) #16 ; 2 uses
  %i.v = load i32, ptr %i.b, align 8, !tbaa !42   ; 2 uses
  %i.w = load i32, ptr %i.c, align 4, !tbaa !62
  %.not.i23 = icmp ult i32 %i.v, %i.w
  br i1 %.not.i23, label %bb.h, label %bb.g, !prof !72

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %i.u)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE9push_backES2_.exit

bb.h:                                             ; preds = %bb.f
  %i.x = zext i32 %i.v to i64
  %i.y = load ptr, ptr %2, align 8, !tbaa !41
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.x
  store ptr %i.u, ptr %i.z, align 1
  %i.aa = load i32, ptr %i.b, align 8, !tbaa !42
  %i.ab = add i32 %i.aa, 1
  store i32 %i.ab, ptr %i.b, align 8, !tbaa !42
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE9push_backES2_.exit: ; preds = %bb.h, %bb.g, %bb.e, %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.027, i64 64 ; 2 uses
  %.not = icmp eq ptr %i.ac, %i.a
  br i1 %.not, label %._crit_edge, label %bb.b
}

declare ptr @_ZN4mlir16RankedTensorType3getEN4llvm8ArrayRefIlEENS_4TypeENS_9AttributeE(ptr, i64, ptr, ptr) local_unnamed_addr #2

declare ptr @_ZN4mlir18UnrankedTensorType3getENS_4TypeE(ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir6detail25verifyInferredResultTypesEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %2 = alloca %"class.mlir::PropertyRef", align 8 ; 5 uses
  %3 = alloca %"class.mlir::ResultRange", align 8 ; 5 uses
  %4 = alloca %"class.llvm::SmallVector.104", align 8 ; 10 uses
  %5 = alloca %"class.mlir::ValueTypeRange", align 8 ; 6 uses
  %6 = alloca %"class.mlir::ValueRange", align 8  ; 3 uses
  %7 = alloca %"class.mlir::RegionRange", align 8 ; 2 uses
  %8 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16, !noalias !280
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !293, !noalias !280 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  %i.d = getelementptr inbounds i8, ptr %0, i64 -16
  %i.e = zext i32 %i.b to i64
  %.sroa.0.0.i.i = select i1 %i.c, ptr null, ptr %i.d
  store ptr %.sroa.0.0.i.i, ptr %3, align 8, !noalias !280
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.e, ptr %i.f, align 8, !noalias !280
  call void @_ZNK4mlir11ResultRange8getTypesEv(ptr dead_on_unwind nonnull writable sret(%"class.mlir::ValueTypeRange") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16, !noalias !280
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.g, ptr %4, align 8, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i32 0, ptr %i.h, align 8, !tbaa !42
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 4, ptr %i.i, align 4, !tbaa !62
  %.sroa.0.0.copyload.i.i = load ptr, ptr %5, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8 ; 3 uses
  %.sroa.2.0..sroa_idx.i6.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.sroa.2.0.copyload.i7.i = load i64, ptr %.sroa.2.0..sroa_idx.i6.i, align 8 ; 3 uses
  %i.j = sub nsw i64 %.sroa.2.0.copyload.i7.i, %.sroa.2.0.copyload.i.i ; 3 uses
  %i.k = icmp ugt i64 %i.j, 4
  br i1 %i.k, label %bb.b, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

bb.b:                                             ; preds = %bb.a
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull %i.g, i64 noundef %i.j, i64 noundef 8) #16
  %.pre.i.i = load i32, ptr %i.h, align 8, !tbaa !42 ; 2 uses
  %.pre24.i.i = zext i32 %.pre.i.i to i64
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i: ; preds = %bb.b, %bb.a
  %.pre-phi.i.i = phi i64 [ 0, %bb.a ], [ %.pre24.i.i, %bb.b ]
  %i.l = phi i32 [ 0, %bb.a ], [ %.pre.i.i, %bb.b ]
  %.not8.i.i.i.i.i.i = icmp eq i64 %.sroa.2.0.copyload.i.i, %.sroa.2.0.copyload.i7.i
  br i1 %.not8.i.i.i.i.i.i, label %_ZN4llvm4castIN4mlir20InferTypeOpInterfaceENS1_9OperationEEEDcPT0_.exit, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i
  %i.m = load ptr, ptr %4, align 8, !tbaa !41
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.pre-phi.i.i
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i
  %.010.i.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i ], [ %i.n, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %.sroa.2.09.i.i.i.i.i.i = phi i64 [ %i.r, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.2.0.copyload.i.i, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %i.o = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.copyload.i.i, i64 noundef %.sroa.2.09.i.i.i.i.i.i) #16
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.p, align 8
  %i.q = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, -8
  store i64 %i.q, ptr %.010.i.i.i.i.i.i, align 8, !tbaa !61
  %i.r = add nsw i64 %.sroa.2.09.i.i.i.i.i.i, 1   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq i64 %i.r, %.sroa.2.0.copyload.i7.i
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS1_17ValueTypeIteratorINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESC_SC_E8iteratorEEEPS2_EEvT_SH_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !279

_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS1_17ValueTypeIteratorINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESC_SC_E8iteratorEEEPS2_EEvT_SH_T0_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre23.i.i = load i32, ptr %i.h, align 8, !tbaa !42
  br label %_ZN4llvm4castIN4mlir20InferTypeOpInterfaceENS1_9OperationEEEDcPT0_.exit

_ZN4llvm4castIN4mlir20InferTypeOpInterfaceENS1_9OperationEEEDcPT0_.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS1_17ValueTypeIteratorINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESC_SC_E8iteratorEEEPS2_EEvT_SH_T0_.exit.loopexit.i.i
  %i.t = phi i32 [ %.pre23.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS1_17ValueTypeIteratorINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESC_SC_E8iteratorEEEPS2_EEvT_SH_T0_.exit.loopexit.i.i ], [ %i.l, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i ]
  %i.u = trunc i64 %i.j to i32
  %i.v = add i32 %i.t, %i.u
  store i32 %i.v, ptr %i.h, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.w = call noundef ptr @_ZN4mlir11OpInterfaceINS_20InferTypeOpInterfaceENS_6detail35InferTypeOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %0)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.y = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.x) #16
  %.sroa.0.0.copyload.i = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = and i32 %i.aa, 8388608
  %.not.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i, label %_ZN4mlir9Operation11getOperandsEv.exit, label %bb.c, !prof !294

bb.c:                                             ; preds = %_ZN4llvm4castIN4mlir20InferTypeOpInterfaceENS1_9OperationEEEDcPT0_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !297
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !298
  %i.ag = zext i32 %i.af to i64
  br label %_ZN4mlir9Operation11getOperandsEv.exit

_ZN4mlir9Operation11getOperandsEv.exit:           ; preds = %_ZN4llvm4castIN4mlir20InferTypeOpInterfaceENS1_9OperationEEEDcPT0_.exit, %bb.c
  %.sroa.0.0.i.i15 = phi ptr [ %i.ad, %bb.c ], [ null, %_ZN4llvm4castIN4mlir20InferTypeOpInterfaceENS1_9OperationEEEDcPT0_.exit ]
  %.sroa.4.0.i.i = phi i64 [ %i.ag, %bb.c ], [ 0, %_ZN4llvm4castIN4mlir20InferTypeOpInterfaceENS1_9OperationEEEDcPT0_.exit ]
  call void @_ZN4mlir10ValueRangeC1ENS_12OperandRangeE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr %.sroa.0.0.i.i15, i64 %.sroa.4.0.i.i) #16
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.0.0.copyload.i18 = load ptr, ptr %i.ah, align 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 47
  %11 = load i8, ptr %10, align 1
  %.not.i = icmp eq i8 %11, 0
  %.pre = load i32, ptr %i.z, align 4             ; 4 uses
  br i1 %.not.i, label %_ZN4mlir9Operation20getPropertiesStorageEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4mlir9Operation11getOperandsEv.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !99
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 112
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.ak, align 8, !tbaa !19
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.am = lshr i32 %.pre, 23
  %.lobit.i.i.i.i.i.i.i = and i32 %i.am, 1
  %i.an = zext nneg i32 %.lobit.i.i.i.i.i.i.i to i64
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %i.an
  br label %_ZN4mlir9Operation20getPropertiesStorageEv.exit

_ZN4mlir9Operation20getPropertiesStorageEv.exit:  ; preds = %_ZN4mlir9Operation11getOperandsEv.exit, %bb.d
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0.copyload.i.i.i, %bb.d ], [ @_ZN4mlir6detail14TypeIDResolverIvvE2idE, %_ZN4mlir9Operation11getOperandsEv.exit ]
  %.sroa.4.0.i = phi ptr [ %i.ao, %bb.d ], [ null, %_ZN4mlir9Operation11getOperandsEv.exit ]
  %i.ap = and i32 %.pre, 8388607                  ; 2 uses
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %_ZN4mlir9Operation10getRegionsEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4mlir9Operation20getPropertiesStorageEv.exit
  %i.ar = zext nneg i32 %i.ap to i64
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.at = lshr i32 %.pre, 23
  %.lobit.i.i.i.i.i.i.i.i.i = and i32 %i.at, 1
  %i.au = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i to i64
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %i.au
  %i.aw = lshr i32 %.pre, 21
  %i.ax = and i32 %i.aw, 2040
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !299
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %i.az, i64 %i.bc
  br label %_ZN4mlir9Operation10getRegionsEv.exit

_ZN4mlir9Operation10getRegionsEv.exit:            ; preds = %_ZN4mlir9Operation20getPropertiesStorageEv.exit, %bb.e
  %.sroa.0.0.i19 = phi ptr [ %i.bd, %bb.e ], [ null, %_ZN4mlir9Operation20getPropertiesStorageEv.exit ]
  %.sroa.4.0.i20 = phi i64 [ %i.ar, %bb.e ], [ 0, %_ZN4mlir9Operation20getPropertiesStorageEv.exit ]
  call void @_ZN4mlir11RegionRangeC1EN4llvm15MutableArrayRefINS_6RegionEEE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr %.sroa.0.0.i19, i64 %.sroa.4.0.i20) #16
  %i.be = load i64, ptr %6, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bg = load i64, ptr %i.bf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %.sroa.0.0.i, ptr %2, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.sroa.4.0.i, ptr %.sroa.2.0..sroa_idx, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !26
  %i.bj = call i8 %i.bi(ptr noundef %i.y, ptr %.sroa.0.0.copyload.i, i8 1, i64 %i.be, i64 %i.bg, ptr %.sroa.0.0.copyload.i18, ptr noundef nonnull byval(%"class.mlir::PropertyRef") align 8 %2, ptr noundef nonnull byval(%"class.mlir::RegionRange") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %4) #16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.l, label %bb.f

bb.f:                                             ; preds = %_ZN4mlir9Operation10getRegionsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i8 1, ptr %i.bl, align 8, !tbaa !102
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 1, ptr %i.bm, align 1, !tbaa !103
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %8, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %9) #16
  %i.bn = load ptr, ptr %8, align 8, !tbaa !111
  %.not.i.i23 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i23, label %_ZNO4mlir18InFlightDiagnosticlsIRA31_KcEEOS0_OT_.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  store i32 3, ptr %1, align 8, !tbaa !301
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @.str.5, ptr %i.bp, align 8, !tbaa !82
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 30, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !71
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !42 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 36
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !62
  %.not.i.i.i.i.i24 = icmp ult i32 %i.br, %i.bt
  br i1 %.not.i.i.i.i.i24, label %bb.i, label %bb.h, !prof !72

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA31_KcEEOS0_OT_.exit

bb.i:                                             ; preds = %bb.g
  %i.bu = zext i32 %i.br to i64
  %i.bv = load ptr, ptr %i.bo, align 8, !tbaa !41
  %i.bw = getelementptr inbounds nuw [24 x i8], ptr %i.bv, i64 %i.bu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.bw, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.bx = load i32, ptr %i.bq, align 8, !tbaa !42
  %i.by = add i32 %i.bx, 1
  store i32 %i.by, ptr %i.bq, align 8, !tbaa !42
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA31_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA31_KcEEOS0_OT_.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  %.pr = load ptr, ptr %8, align 8, !tbaa !111
  %.not.i25 = icmp eq ptr %.pr, null
  br i1 %.not.i25, label %_ZNO4mlir18InFlightDiagnosticlsIRA31_KcEEOS0_OT_.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA31_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %8) #16
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA31_KcEEOS0_OT_.exit.thread

_ZNO4mlir18InFlightDiagnosticlsIRA31_KcEEOS0_OT_.exit.thread: ; preds = %bb.f, %bb.j, %_ZNO4mlir18InFlightDiagnosticlsIRA31_KcEEOS0_OT_.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %8, i64 200 ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 8, !tbaa !113, !range !59, !noundef !60
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %bb.k, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.k:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA31_KcEEOS0_OT_.exit.thread
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i8 0, ptr %i.bz, align 8, !tbaa !113
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.cc) #16
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA31_KcEEOS0_OT_.exit.thread, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br label %bb.l

bb.l:                                             ; preds = %_ZN4mlir18InFlightDiagnosticD2Ev.exit, %_ZN4mlir9Operation10getRegionsEv.exit
  %i.cd = load ptr, ptr %4, align 8, !tbaa !41    ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.g
  br i1 %i.ce, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj4EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @free(ptr noundef %i.cd) #16
  br label %_ZN4llvm11SmallVectorIN4mlir4TypeELj4EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir4TypeELj4EED2Ev.exit: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret i8 %i.bj
}

declare void @_ZN4mlir10ValueRangeC1ENS_12OperandRangeE(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64) unnamed_addr #2

declare void @_ZN4mlir11RegionRangeC1EN4llvm15MutableArrayRefINS_6RegionEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64) unnamed_addr #2

declare void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind writable sret(%"class.mlir::InFlightDiagnostic") align 8, ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir18InFlightDiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !111
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %0) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !113, !range !59, !noundef !60
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.d, label %_ZNSt14_Optional_baseIN4mlir10DiagnosticELb0ELb0EED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.b, align 8, !tbaa !113
  tail call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.e) #16
  br label %_ZNSt14_Optional_baseIN4mlir10DiagnosticELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4mlir10DiagnosticELb0ELb0EED2Ev.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define dso_local void @_ZN4mlir6detail32reportFatalInferReturnTypesErrorERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(304) %0) local_unnamed_addr #3 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %2 = alloca %"class.llvm::raw_string_ostream", align 8 ; 3 uses
  %3 = alloca %"class.llvm::InterleavedRange.164", align 8 ; 10 uses
  %4 = alloca %"class.llvm::iterator_range.165", align 8 ; 7 uses
  %5 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 2 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !79
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !81
  store i8 0, ptr %i.a, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @_ZN4llvm18raw_string_ostreamC2ERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.c = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str.6)
  %i.d = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull @.str.7)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.03.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !114
  %i.f = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4mlirlsERN4llvm11raw_ostreamENS_13OperationNameE(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr %.sroa.03.0.copyload)
  %i.g = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull @.str.8)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.i = call noundef ptr @_ZNK4mlir8Location10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.j = call ptr @_ZNK4mlir13NamedAttrList13getDictionaryEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(88) %i.h, ptr noundef %i.i) #16
  %i.k = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4mlirlsERN4llvm11raw_ostreamENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr %i.j)
  %i.l = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull @.str.9) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.m, align 8, !tbaa !41  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val8 = load i32, ptr %i.n, align 8, !tbaa !42
  %i.o = zext i32 %.val8 to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.o
  store ptr %.val, ptr %4, align 8, !alias.scope !308
  %.sroa.22.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 256, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !alias.scope !308
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.p, ptr %i.q, align 8, !alias.scope !308
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 256, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !alias.scope !308
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr @.str.11, ptr %i.r, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  store ptr %4, ptr %3, align 8, !tbaa !309, !alias.scope !310
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.10, ptr %i.s, align 8, !tbaa !82, !alias.scope !310
  %.sroa.23.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 2, ptr %.sroa.23.0..sroa_idx.i.i, align 8, !tbaa !71, !alias.scope !310
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr @.str.11, ptr %i.t, align 8, !tbaa !82, !alias.scope !310
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !71, !alias.scope !310
  %i.u = call fastcc noundef nonnull align 8 dereferenceable(48) ptr @"_ZN4llvmlsINS_11raw_ostreamEEERT_S3_RKNS_16InterleavedRangeINS_14iterator_rangeINS_15mapped_iteratorIPN4mlir5ValueEZNS7_6detail32reportFatalInferReturnTypesErrorERNS7_14OperationStateEE3$_0NS7_4TypeEEEEEEE"(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull align 8 dereferenceable(56) %3) ; 0 uses
  %i.v = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull @.str.12) ; 0 uses
end_hunk_0
