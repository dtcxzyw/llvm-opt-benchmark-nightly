Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LoopRangeFolding?download=true
inline.NumInlined: 888
inline.NumDeleted: 656
begin_hunk_0_@_ZNK4mlir4impl26SCFForLoopRangeFoldingBaseIN12_GLOBAL__N_119ForLoopRangeFoldingEE14getDescriptionEv:bb.a
bb.a:
  ret { ptr, i64 } { ptr @.str.8, i64 32 }
}

declare i8 @_ZN4mlir4Pass17initializeOptionsEN4llvm9StringRefENS1_12function_refIFNS1_13LogicalResultERKNS1_5TwineEEEE(ptr noundef nonnull align 8 dereferenceable(336), ptr, i64, ptr, i64) unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_119ForLoopRangeFolding14runOnOperationEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(336) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %class.anon.31, align 8             ; 4 uses
  %2 = alloca %class.anon, align 1                ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.0.copyload.i.i.i.i = load i64, ptr %i.a, align 8
  %i.b = and i64 %.0.copyload.i.i.i.i, -8
  %i.c = inttoptr i64 %i.b to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  store ptr %2, ptr %1, align 8, !tbaa !25
  %i.d = ptrtoint ptr %1 to i64
  call void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr nonnull @"_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN12_GLOBAL__N_119ForLoopRangeFolding14runOnOperationEvE3$_0NS1_3scf5ForOpEvEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESM_E4typeES3_OT1_EUlS3_E_EEvlS3_", i64 %i.d, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir4Pass10initializeEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i8 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4mlir13OperationPassIvE13canScheduleOnENS_23RegisteredOperationNameE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4mlir4Pass13canScheduleOnEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8, !tbaa !27 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29
  %.not.i.not = icmp eq ptr %i.c, @_ZN4mlir6detail14TypeIDResolverIvvE2idE
  br i1 %.not.i.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr nonnull %.sroa.0.0.copyload.i) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.g, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK4mlir4impl26SCFForLoopRangeFoldingBaseIN12_GLOBAL__N_119ForLoopRangeFoldingEE9clonePassEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(336) %1) unnamed_addr #0 align 2 {
_ZNSt10unique_ptrIN12_GLOBAL__N_119ForLoopRangeFoldingESt14default_deleteIS1_EED2Ev.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(336) ptr @_Znwm(i64 noundef 336) #14, !noalias !90, !inline_history !89 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !11, !noalias !90
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !90
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.0.0.copyload.i.i.i.i.i, ptr %i.e, align 8, !tbaa !11, !noalias !90
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store i8 0, ptr %i.f, align 8, !tbaa !24, !noalias !90
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.g, i8 0, i64 56, i1 false), !noalias !90
  store ptr %i.i, ptr %i.h, align 8, !tbaa !13, !noalias !90
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  store i32 0, ptr %i.j, align 8, !tbaa !91, !noalias !90
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 188
  store i32 4, ptr %i.k, align 4, !tbaa !14, !noalias !90
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store ptr %i.m, ptr %i.l, align 8, !tbaa !13, !noalias !90
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  store i32 0, ptr %i.n, align 8, !tbaa !91, !noalias !90
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 236
  store i32 4, ptr %i.o, align 4, !tbaa !14, !noalias !90
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i8 0, i64 64, i1 false), !noalias !90
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN12_GLOBAL__N_119ForLoopRangeFoldingE, i64 16), ptr %i.a, align 8, !tbaa !16, !noalias !90
  store ptr %i.a, ptr %0, align 8, !tbaa !19
  ret void
}

declare void @_ZN4mlir4Pass6anchorEv(ptr noundef nonnull align 8 dereferenceable(336)) unnamed_addr #7

declare noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef, i64 noundef) local_unnamed_addr #7

declare void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void %1(i64 noundef %2, ptr noundef %0) #16, !inline_history !92
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = tail call { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %0) #16 ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 5
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %.not41 = icmp eq i64 %i.d, 0
  br i1 %.not41, label %._crit_edge43, label %.preheader

.preheader:                                       ; preds = %bb.c, %._crit_edge
  %.042 = phi ptr [ %i.g, %._crit_edge ], [ %i.c, %bb.c ] ; 4 uses
  %.sroa.022.0.in36 = getelementptr inbounds nuw i8, ptr %.042, i64 8
  %.sroa.022.037 = load ptr, ptr %.sroa.022.0.in36, align 8, !tbaa !32 ; 2 uses
  %.not3238 = icmp eq ptr %.sroa.022.037, %.042
  br i1 %.not3238, label %._crit_edge, label %.lr.ph40

._crit_edge43:                                    ; preds = %._crit_edge, %bb.c
  %i.f = icmp eq i32 %3, 1
  br i1 %i.f, label %bb.d, label %bb.e

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph40
  %.sroa.022.0.in = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 8
  %.sroa.022.0 = load ptr, ptr %.sroa.022.0.in, align 8, !tbaa !32 ; 2 uses
  %.not32 = icmp eq ptr %.sroa.022.0, %.042
  br i1 %.not32, label %._crit_edge, label %.lr.ph40

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %.042, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.g, %i.e
  br i1 %.not, label %._crit_edge43, label %.preheader

.lr.ph40:                                         ; preds = %.preheader, %.loopexit
  %.sroa.022.039 = phi ptr [ %.sroa.022.0, %.loopexit ], [ %.sroa.022.037, %.preheader ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !32   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 32 ; 2 uses
  %.not3334 = icmp eq ptr %i.i, %i.j
  br i1 %.not3334, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph40, %.lr.ph
  %.sroa.019.035 = phi ptr [ %i.l, %.lr.ph ], [ %i.i, %.lr.ph40 ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.019.035, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !32   ; 2 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.019.035) #16
  tail call void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef nonnull %i.m, ptr %1, i64 %2, i32 noundef %3)
  %.not33 = icmp eq ptr %i.l, %i.j
  br i1 %.not33, label %.loopexit, label %.lr.ph

bb.d:                                             ; preds = %._crit_edge43
  tail call void %1(i64 noundef %2, ptr noundef nonnull %0) #16, !inline_history !92
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge43
  ret void
}

declare { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #7

declare noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN12_GLOBAL__N_119ForLoopRangeFolding14runOnOperationEvE3$_0NS1_3scf5ForOpEvEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESM_E4typeES3_OT1_EUlS3_E_EEvlS3_"(i64 %0, ptr noundef %1) #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::ResultRange", align 8 ; 5 uses
  %3 = alloca %"class.mlir::Value", align 8       ; 4 uses
  %4 = alloca %"class.mlir::Value", align 8       ; 4 uses
  %5 = alloca %"class.mlir::Value", align 8       ; 4 uses
  %6 = alloca %"class.mlir::Value", align 8       ; 5 uses
  %7 = alloca %"class.mlir::Value", align 8       ; 5 uses
  %8 = alloca %"class.mlir::Value", align 8       ; 5 uses
  %9 = alloca %"class.mlir::Value", align 8       ; 5 uses
  %10 = alloca %"class.mlir::Value", align 8      ; 5 uses
  %11 = alloca %"class.mlir::Value", align 8      ; 5 uses
  %12 = alloca %"class.mlir::Value", align 8      ; 5 uses
  %13 = alloca %"class.mlir::scf::ForOp", align 8 ; 19 uses
  %14 = alloca %"class.mlir::Value", align 8      ; 23 uses
  %15 = alloca %"class.mlir::OpBuilder", align 8  ; 11 uses
  %16 = alloca %"class.mlir::IRMapping", align 8  ; 12 uses
  %17 = alloca %"class.mlir::IRMapping", align 8  ; 12 uses
  %18 = alloca %"class.mlir::IRMapping", align 8  ; 11 uses
  %19 = alloca %"class.mlir::ValueRange", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.d = icmp ne ptr %i.c, @_ZN4mlir6detail14TypeIDResolverINS_3scf5ForOpEvE2idE
  %20 = icmp eq ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_3scf5ForOpEvE2idE
  %spec.select.i.i.i.i.not.i = or i1 %20, %i.d
  %.not1.i = icmp eq ptr %1, null
  %.not.i = or i1 %.not1.i, %spec.select.i.i.i.i.not.i
  br i1 %.not.i, label %"_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZN12_GLOBAL__N_119ForLoopRangeFolding14runOnOperationEvE3$_0NS_3scf5ForOpEvEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESH_E4typeESC_OT1_ENKUlSC_E_clESC_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  store ptr %1, ptr %13, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.f = load i32, ptr %i.e, align 4              ; 3 uses
  %i.g = and i32 %i.f, 8388607
  %i.h = icmp ne i32 %i.g, 0
  tail call void @llvm.assume(i1 %i.h)
  %i.i = lshr i32 %i.f, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.i, 1
  %i.j = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.j
  %i.l = lshr i32 %i.f, 21
  %i.m = and i32 %i.l, 2040
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.q = load i32, ptr %i.p, align 8, !tbaa !107
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !32
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !110
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.w, align 8
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %14, align 8
  %21 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_5arith6AddIOpEvE2idE ; 2 uses
  %22 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_5arith6MulIOpEvE2idE ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.aa = ptrtoint ptr %14 to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %18, i64 68
  %i.ae = getelementptr inbounds nuw i8, ptr %18, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %18, i64 44
  %i.ag = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %18, i64 20
  %i.ai = getelementptr inbounds nuw i8, ptr %17, i64 68
  %i.aj = getelementptr inbounds nuw i8, ptr %17, i64 48
  %i.ak = getelementptr inbounds nuw i8, ptr %17, i64 44
  %i.al = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %17, i64 20
  %i.an = getelementptr inbounds nuw i8, ptr %16, i64 68
  %i.ao = getelementptr inbounds nuw i8, ptr %16, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %16, i64 44
  %i.aq = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %16, i64 20
  br label %bb.c

bb.c:                                             ; preds = %bb.ao, %bb.b
  %i.as = load ptr, ptr %14, align 8, !tbaa !35
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !38 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i, label %"_ZZN12_GLOBAL__N_119ForLoopRangeFolding14runOnOperationEvENK3$_0clEN4mlir3scf5ForOpE.exit.i", label %_ZNK4mlir5Value9hasOneUseEv.exit.i.i

_ZNK4mlir5Value9hasOneUseEv.exit.i.i:             ; preds = %bb.c
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !42
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.d, label %"_ZZN12_GLOBAL__N_119ForLoopRangeFolding14runOnOperationEvENK3$_0clEN4mlir3scf5ForOpE.exit.i"

bb.d:                                             ; preds = %_ZNK4mlir5Value9hasOneUseEv.exit.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !111 ; 13 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ay, align 8, !tbaa !27
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !29 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, @_ZN4mlir6detail14TypeIDResolverINS_5arith6AddIOpEvE2idE
  %spec.select.i.i.i.i.i.i.i = and i1 %21, %i.bb
  %i.bc = icmp eq ptr %i.ba, @_ZN4mlir6detail14TypeIDResolverINS_5arith6MulIOpEvE2idE
  %spec.select.i.i.i.i3.i.i.i = and i1 %22, %i.bc
  %spec.select.i.i2.i = or i1 %spec.select.i.i.i.i.i.i.i, %spec.select.i.i.i.i3.i.i.i
  br i1 %spec.select.i.i2.i, label %bb.e, label %"_ZZN12_GLOBAL__N_119ForLoopRangeFolding14runOnOperationEvENK3$_0clEN4mlir3scf5ForOpE.exit.i"

bb.e:                                             ; preds = %bb.d
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 44
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = and i32 %i.be, 8388608
  %.not.i.i28.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i28.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %_ZN4mlir9Operation11getOperandsEv.exit.i.i, !prof !112

_ZN4mlir9Operation11getOperandsEv.exit.i.i:       ; preds = %bb.e
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !115 ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 68
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !116
  %i.bk = zext i32 %i.bj to i64                   ; 11 uses
  %i.bl = lshr i64 %i.bk, 2                       ; 2 uses
  %.not61.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not61.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZN4mlir9Operation11getOperandsEv.exit.i.i, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN12_GLOBAL__N_119ForLoopRangeFolding14runOnOperationEvENK3$_0clEN4mlir3scf5ForOpEEUlNS5_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS5_12OperandRangeEPNS5_9OpOperandES8_S8_S8_E8iteratorEEEbT_.exit60.thread.i.i.i.i.i.i.i"
  %.0114.i.i.i.i.i.i.i = phi i64 [ %i.cw, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN12_GLOBAL__N_119ForLoopRangeFolding14runOnOperationEvENK3$_0clEN4mlir3scf5ForOpEEUlNS5_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS5_12OperandRangeEPNS5_9OpOperandES8_S8_S8_E8iteratorEEEbT_.exit60.thread.i.i.i.i.i.i.i" ], [ %i.bl, %_ZN4mlir9Operation11getOperandsEv.exit.i.i ] ; 2 uses
  %.sroa.15.0113.i.i.i.i.i.i.i = phi i64 [ %i.cv, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN12_GLOBAL__N_119ForLoopRangeFolding14runOnOperationEvENK3$_0clEN4mlir3scf5ForOpEEUlNS5_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS5_12OperandRangeEPNS5_9OpOperandES8_S8_S8_E8iteratorEEEbT_.exit60.thread.i.i.i.i.i.i.i" ], [ 0, %_ZN4mlir9Operation11getOperandsEv.exit.i.i ] ; 7 uses
  %.val47.val.i.i.i.i.i.i.i = load ptr, ptr %13, align 8, !tbaa !118 ; 2 uses
  %i.bm = getelementptr inbounds nuw [32 x i8], ptr %i.bh, i64 %.sroa.15.0113.i.i.i.i.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bn, align 8, !tbaa !43 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr %12, align 8
  %i.bo = call noundef ptr @_ZN4mlir5Value15getParentRegionEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !125 ; 2 uses
  %i.br = icmp eq ptr %.val47.val.i.i.i.i.i.i.i, %i.bq
  br i1 %i.br, label %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.thread.i.i.i.i.i.i.i.i.i, label %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.i.i.i.i.i.i.i.i.i

_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.thread.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %.old.i.i = load ptr, ptr %14, align 8, !tbaa !35
  %.not108.i.i.i.i.i.old.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %.old.i.i
  br i1 %.not108.i.i.i.i.i.old.i.i, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN12_GLOBAL__N_119ForLoopRangeFolding14runOnOperationEvENK3$_0clEN4mlir3scf5ForOpEEUlNS5_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS5_12OperandRangeEPNS5_9OpOperandES8_S8_S8_E8iteratorEEEbT_.exit.thread.i.i.i.i.i.i.i", label %"_ZN4llvm6all_ofIN4mlir12OperandRangeEZZN12_GLOBAL__N_119ForLoopRangeFolding14runOnOperationEvENK3$_0clENS1_3scf5ForOpEEUlNS1_5ValueEE_EEbOT_T0_.exit.i.i"

_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.bs = call noundef zeroext i1 @_ZN4mlir9Operation16isProperAncestorEPS0_(ptr noundef nonnull align 8 dereferenceable(64) %.val47.val.i.i.i.i.i.i.i, ptr noundef %i.bq) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %i.bt = load ptr, ptr %14, align 8
  %.not108.i.i.i.i.i.i.i = icmp ne ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %i.bt
  %or.cond.not.i.i = select i1 %i.bs, i1 %.not108.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i, label %"_ZN4llvm6all_ofIN4mlir12OperandRangeEZZN12_GLOBAL__N_119ForLoopRangeFolding14runOnOperationEvENK3$_0clENS1_3scf5ForOpEEUlNS1_5ValueEE_EEbOT_T0_.exit.i.i", label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN12_GLOBAL__N_119ForLoopRangeFolding14runOnOperationEvENK3$_0clEN4mlir3scf5ForOpEEUlNS5_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS5_12OperandRangeEPNS5_9OpOperandES8_S8_S8_E8iteratorEEEbT_.exit.thread.i.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN12_GLOBAL__N_119ForLoopRangeFolding14runOnOperationEvENK3$_0clEN4mlir3scf5ForOpEEUlNS5_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS5_12OperandRangeEPNS5_9OpOperandES8_S8_S8_E8iteratorEEEbT_.exit.thread.i.i.i.i.i.i.i": ; preds = %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.i.i.i.i.i.i.i.i.i, %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.thread.i.i.i.i.i.i.i.i.i
  %i.bu = or disjoint i64 %.sroa.15.0113.i.i.i.i.i.i.i, 1 ; 3 uses
  %.val45.val.i.i.i.i.i.i.i = load ptr, ptr %13, align 8, !tbaa !118 ; 2 uses
  %i.bv = getelementptr inbounds nuw [32 x i8], ptr %i.bh, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %.sroa.0.0.copyload.i.i.i.i49.i.i.i.i.i.i.i = load ptr, ptr %i.bw, align 8, !tbaa !43 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store ptr %.sroa.0.0.copyload.i.i.i.i49.i.i.i.i.i.i.i, ptr %11, align 8
  %i.bx = call noundef ptr @_ZN4mlir5Value15getParentRegionEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #16
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !125 ; 2 uses
  %i.ca = icmp eq ptr %.val45.val.i.i.i.i.i.i.i, %i.bz
  br i1 %i.ca, label %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.thread.i.i51.i.i.i.i.i.i.i, label %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.i.i50.i.i.i.i.i.i.i

_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.thread.i.i51.i.i.i.i.i.i.i: ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN12_GLOBAL__N_119ForLoopRangeFolding14runOnOperationEvENK3$_0clEN4mlir3scf5ForOpEEUlNS5_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS5_12OperandRangeEPNS5_9OpOperandES8_S8_S8_E8iteratorEEEbT_.exit.thread.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %.old41.i.i = load ptr, ptr %14, align 8, !tbaa !35
  %.not109.i.i.i.i.i.old.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i49.i.i.i.i.i.i.i, %.old41.i.i
  br i1 %.not109.i.i.i.i.i.old.i.i, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN12_GLOBAL__N_119ForLoopRangeFolding14runOnOperationEvENK3$_0clEN4mlir3scf5ForOpEEUlNS5_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS5_12OperandRangeEPNS5_9OpOperandES8_S8_S8_E8iteratorEEEbT_.exit52.thread.i.i.i.i.i.i.i", label %"_ZN4llvm6all_ofIN4mlir12OperandRangeEZZN12_GLOBAL__N_119ForLoopRangeFolding14runOnOperationEvENK3$_0clENS1_3scf5ForOpEEUlNS1_5ValueEE_EEbOT_T0_.exit.i.i"

_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.i.i50.i.i.i.i.i.i.i: ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN12_GLOBAL__N_119ForLoopRangeFolding14runOnOperationEvENK3$_0clEN4mlir3scf5ForOpEEUlNS5_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS5_12OperandRangeEPNS5_9OpOperandES8_S8_S8_E8iteratorEEEbT_.exit.thread.i.i.i.i.i.i.i"
  %i.cb = call noundef zeroext i1 @_ZN4mlir9Operation16isProperAncestorEPS0_(ptr noundef nonnull align 8 dereferenceable(64) %.val45.val.i.i.i.i.i.i.i, ptr noundef %i.bz) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.cc = load ptr, ptr %14, align 8
  %.not109.i.i.i.i.i.i.i = icmp ne ptr %.sroa.0.0.copyload.i.i.i.i49.i.i.i.i.i.i.i, %i.cc
  %or.cond42.not.i.i = select i1 %i.cb, i1 %.not109.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond42.not.i.i, label %"_ZN4llvm6all_ofIN4mlir12OperandRangeEZZN12_GLOBAL__N_119ForLoopRangeFolding14runOnOperationEvENK3$_0clENS1_3scf5ForOpEEUlNS1_5ValueEE_EEbOT_T0_.exit.i.i", label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN12_GLOBAL__N_119ForLoopRangeFolding14runOnOperationEvENK3$_0clEN4mlir3scf5ForOpEEUlNS5_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS5_12OperandRangeEPNS5_9OpOperandES8_S8_S8_E8iteratorEEEbT_.exit52.thread.i.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN12_GLOBAL__N_119ForLoopRangeFolding14runOnOperationEvENK3$_0clEN4mlir3scf5ForOpEEUlNS5_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS5_12OperandRangeEPNS5_9OpOperandES8_S8_S8_E8iteratorEEEbT_.exit52.thread.i.i.i.i.i.i.i": ; preds = %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.i.i50.i.i.i.i.i.i.i, %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.thread.i.i51.i.i.i.i.i.i.i
  %i.cd = or disjoint i64 %.sroa.15.0113.i.i.i.i.i.i.i, 2 ; 3 uses
  %.val43.val.i.i.i.i.i.i.i = load ptr, ptr %13, align 8, !tbaa !118 ; 2 uses
  %i.ce = getelementptr inbounds nuw [32 x i8], ptr %i.bh, i64 %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %.sroa.0.0.copyload.i.i.i.i53.i.i.i.i.i.i.i = load ptr, ptr %i.cf, align 8, !tbaa !43 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store ptr %.sroa.0.0.copyload.i.i.i.i53.i.i.i.i.i.i.i, ptr %10, align 8
  %i.cg = call noundef ptr @_ZN4mlir5Value15getParentRegionEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #16
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !125 ; 2 uses
  %i.cj = icmp eq ptr %.val43.val.i.i.i.i.i.i.i, %i.ci
  br i1 %i.cj, label %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.thread.i.i55.i.i.i.i.i.i.i, label %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.i.i54.i.i.i.i.i.i.i

_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.thread.i.i55.i.i.i.i.i.i.i: ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN12_GLOBAL__N_119ForLoopRangeFolding14runOnOperationEvENK3$_0clEN4mlir3scf5ForOpEEUlNS5_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS5_12OperandRangeEPNS5_9OpOperandES8_S8_S8_E8iteratorEEEbT_.exit52.thread.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %.old44.i.i = load ptr, ptr %14, align 8, !tbaa !35
  %.not110.i.i.i.i.i.old.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i53.i.i.i.i.i.i.i, %.old44.i.i
  br i1 %.not110.i.i.i.i.i.old.i.i, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN12_GLOBAL__N_119ForLoopRangeFolding14runOnOperationEvENK3$_0clEN4mlir3scf5ForOpEEUlNS5_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS5_12OperandRangeEPNS5_9OpOperandES8_S8_S8_E8iteratorEEEbT_.exit56.thread.i.i.i.i.i.i.i", label %"_ZN4llvm6all_ofIN4mlir12OperandRangeEZZN12_GLOBAL__N_119ForLoopRangeFolding14runOnOperationEvENK3$_0clENS1_3scf5ForOpEEUlNS1_5ValueEE_EEbOT_T0_.exit.i.i"

_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.i.i54.i.i.i.i.i.i.i: ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN12_GLOBAL__N_119ForLoopRangeFolding14runOnOperationEvENK3$_0clEN4mlir3scf5ForOpEEUlNS5_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS5_12OperandRangeEPNS5_9OpOperandES8_S8_S8_E8iteratorEEEbT_.exit52.thread.i.i.i.i.i.i.i"
  %i.ck = call noundef zeroext i1 @_ZN4mlir9Operation16isProperAncestorEPS0_(ptr noundef nonnull align 8 dereferenceable(64) %.val43.val.i.i.i.i.i.i.i, ptr noundef %i.ci) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.cl = load ptr, ptr %14, align 8
  %.not110.i.i.i.i.i.i.i = icmp ne ptr %.sroa.0.0.copyload.i.i.i.i53.i.i.i.i.i.i.i, %i.cl
  %or.cond45.not.i.i = select i1 %i.ck, i1 %.not110.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond45.not.i.i, label %"_ZN4llvm6all_ofIN4mlir12OperandRangeEZZN12_GLOBAL__N_119ForLoopRangeFolding14runOnOperationEvENK3$_0clENS1_3scf5ForOpEEUlNS1_5ValueEE_EEbOT_T0_.exit.i.i", label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN12_GLOBAL__N_119ForLoopRangeFolding14runOnOperationEvENK3$_0clEN4mlir3scf5ForOpEEUlNS5_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS5_12OperandRangeEPNS5_9OpOperandES8_S8_S8_E8iteratorEEEbT_.exit56.thread.i.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN12_GLOBAL__N_119ForLoopRangeFolding14runOnOperationEvENK3$_0clEN4mlir3scf5ForOpEEUlNS5_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS5_12OperandRangeEPNS5_9OpOperandES8_S8_S8_E8iteratorEEEbT_.exit56.thread.i.i.i.i.i.i.i": ; preds = %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.i.i54.i.i.i.i.i.i.i, %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.thread.i.i55.i.i.i.i.i.i.i
  %i.cm = or disjoint i64 %.sroa.15.0113.i.i.i.i.i.i.i, 3 ; 3 uses
  %.val41.val.i.i.i.i.i.i.i = load ptr, ptr %13, align 8, !tbaa !118 ; 2 uses
  %i.cn = getelementptr inbounds nuw [32 x i8], ptr %i.bh, i64 %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %.sroa.0.0.copyload.i.i.i.i57.i.i.i.i.i.i.i = load ptr, ptr %i.co, align 8, !tbaa !43 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %.sroa.0.0.copyload.i.i.i.i57.i.i.i.i.i.i.i, ptr %9, align 8
  %i.cp = call noundef ptr @_ZN4mlir5Value15getParentRegionEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #16
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !125 ; 2 uses
  %i.cs = icmp eq ptr %.val41.val.i.i.i.i.i.i.i, %i.cr
  br i1 %i.cs, label %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.thread.i.i59.i.i.i.i.i.i.i, label %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.i.i58.i.i.i.i.i.i.i

_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.thread.i.i59.i.i.i.i.i.i.i: ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN12_GLOBAL__N_119ForLoopRangeFolding14runOnOperationEvENK3$_0clEN4mlir3scf5ForOpEEUlNS5_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS5_12OperandRangeEPNS5_9OpOperandES8_S8_S8_E8iteratorEEEbT_.exit56.thread.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %.old47.i.i = load ptr, ptr %14, align 8, !tbaa !35
  %.not111.i.i.i.i.i.old.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i57.i.i.i.i.i.i.i, %.old47.i.i
  br i1 %.not111.i.i.i.i.i.old.i.i, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN12_GLOBAL__N_119ForLoopRangeFolding14runOnOperationEvENK3$_0clEN4mlir3scf5ForOpEEUlNS5_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS5_12OperandRangeEPNS5_9OpOperandES8_S8_S8_E8iteratorEEEbT_.exit60.thread.i.i.i.i.i.i.i", label %"_ZN4llvm6all_ofIN4mlir12OperandRangeEZZN12_GLOBAL__N_119ForLoopRangeFolding14runOnOperationEvENK3$_0clENS1_3scf5ForOpEEUlNS1_5ValueEE_EEbOT_T0_.exit.i.i"

_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.i.i58.i.i.i.i.i.i.i: ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN12_GLOBAL__N_119ForLoopRangeFolding14runOnOperationEvENK3$_0clEN4mlir3scf5ForOpEEUlNS5_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS5_12OperandRangeEPNS5_9OpOperandES8_S8_S8_E8iteratorEEEbT_.exit56.thread.i.i.i.i.i.i.i"
  %i.ct = call noundef zeroext i1 @_ZN4mlir9Operation16isProperAncestorEPS0_(ptr noundef nonnull align 8 dereferenceable(64) %.val41.val.i.i.i.i.i.i.i, ptr noundef %i.cr) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.cu = load ptr, ptr %14, align 8
  %.not111.i.i.i.i.i.i.i = icmp ne ptr %.sroa.0.0.copyload.i.i.i.i57.i.i.i.i.i.i.i, %i.cu
  %or.cond48.not.i.i = select i1 %i.ct, i1 %.not111.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond48.not.i.i, label %"_ZN4llvm6all_ofIN4mlir12OperandRangeEZZN12_GLOBAL__N_119ForLoopRangeFolding14runOnOperationEvENK3$_0clENS1_3scf5ForOpEEUlNS1_5ValueEE_EEbOT_T0_.exit.i.i", label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN12_GLOBAL__N_119ForLoopRangeFolding14runOnOperationEvENK3$_0clEN4mlir3scf5ForOpEEUlNS5_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS5_12OperandRangeEPNS5_9OpOperandES8_S8_S8_E8iteratorEEEbT_.exit60.thread.i.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN12_GLOBAL__N_119ForLoopRangeFolding14runOnOperationEvENK3$_0clEN4mlir3scf5ForOpEEUlNS5_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS5_12OperandRangeEPNS5_9OpOperandES8_S8_S8_E8iteratorEEEbT_.exit60.thread.i.i.i.i.i.i.i": ; preds = %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.i.i58.i.i.i.i.i.i.i, %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.thread.i.i59.i.i.i.i.i.i.i
  %i.cv = add nuw nsw i64 %.sroa.15.0113.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.cw = add nsw i64 %.0114.i.i.i.i.i.i.i, -1
  %i.cx = icmp sgt i64 %.0114.i.i.i.i.i.i.i, 1
  br i1 %i.cx, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, !llvm.loop !93

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN12_GLOBAL__N_119ForLoopRangeFolding14runOnOperationEvENK3$_0clEN4mlir3scf5ForOpEEUlNS5_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS5_12OperandRangeEPNS5_9OpOperandES8_S8_S8_E8iteratorEEEbT_.exit60.thread.i.i.i.i.i.i.i", %_ZN4mlir9Operation11getOperandsEv.exit.i.i, %bb.e
  %.sroa.4.0.i.i27.i.i = phi i64 [ %i.bk, %_ZN4mlir9Operation11getOperandsEv.exit.i.i ], [ 0, %bb.e ], [ %i.bk, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN12_GLOBAL__N_119ForLoopRangeFolding14runOnOperationEvENK3$_0clEN4mlir3scf5ForOpEEUlNS5_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS5_12OperandRangeEPNS5_9OpOperandES8_S8_S8_E8iteratorEEEbT_.exit60.thread.i.i.i.i.i.i.i" ] ; 7 uses
  %.sroa.0.0.i.i26.i.i = phi ptr [ %i.bh, %_ZN4mlir9Operation11getOperandsEv.exit.i.i ], [ null, %bb.e ], [ %i.bh, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN12_GLOBAL__N_119ForLoopRangeFolding14runOnOperationEvENK3$_0clEN4mlir3scf5ForOpEEUlNS5_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS5_12OperandRangeEPNS5_9OpOperandES8_S8_S8_E8iteratorEEEbT_.exit60.thread.i.i.i.i.i.i.i" ] ; 3 uses
  %.sroa.15.0.lcssa.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4mlir9Operation11getOperandsEv.exit.i.i ], [ 0, %bb.e ], [ %i.cv, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN12_GLOBAL__N_119ForLoopRangeFolding14runOnOperationEvENK3$_0clEN4mlir3scf5ForOpEEUlNS5_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS5_12OperandRangeEPNS5_9OpOperandES8_S8_S8_E8iteratorEEEbT_.exit60.thread.i.i.i.i.i.i.i" ] ; 7 uses
  %i.cy = sub nsw i64 %.sroa.4.0.i.i27.i.i, %.sroa.15.0.lcssa.i.i.i.i.i.i.i
  switch i64 %i.cy, label %"_ZN4llvm6all_ofIN4mlir12OperandRangeEZZN12_GLOBAL__N_119ForLoopRangeFolding14runOnOperationEvENK3$_0clENS1_3scf5ForOpEEUlNS1_5ValueEE_EEbOT_T0_.exit.thread.i.i" [
    i64 3, label %bb.f
    i64 2, label %bb.g
    i64 1, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %.val39.val.i.i.i.i.i.i.i = load ptr, ptr %13, align 8, !tbaa !118 ; 2 uses
  %i.cz = getelementptr inbounds [32 x i8], ptr %.sroa.0.0.i.i26.i.i, i64 %.sroa.15.0.lcssa.i.i.i.i.i.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %.sroa.0.0.copyload.i.i.i.i61.i.i.i.i.i.i.i = load ptr, ptr %i.da, align 8, !tbaa !43 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %.sroa.0.0.copyload.i.i.i.i61.i.i.i.i.i.i.i, ptr %8, align 8
  %i.db = call noundef ptr @_ZN4mlir5Value15getParentRegionEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #16
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !125 ; 2 uses
  %i.de = icmp eq ptr %.val39.val.i.i.i.i.i.i.i, %i.dd
  br i1 %i.de, label %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.thread.i.i63.i.i.i.i.i.i.i, label %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.i.i62.i.i.i.i.i.i.i

_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.thread.i.i63.i.i.i.i.i.i.i: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %.old50.i.i = load ptr, ptr %14, align 8, !tbaa !35
  %.not.i.i.i.i.i.old.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i61.i.i.i.i.i.i.i, %.old50.i.i
  br i1 %.not.i.i.i.i.i.old.i.i, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN12_GLOBAL__N_119ForLoopRangeFolding14runOnOperationEvENK3$_0clEN4mlir3scf5ForOpEEUlNS5_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS5_12OperandRangeEPNS5_9OpOperandES8_S8_S8_E8iteratorEEEbT_.exit64.thread.i.i.i.i.i.i.i", label %"_ZN4llvm6all_ofIN4mlir12OperandRangeEZZN12_GLOBAL__N_119ForLoopRangeFolding14runOnOperationEvENK3$_0clENS1_3scf5ForOpEEUlNS1_5ValueEE_EEbOT_T0_.exit.i.i"

_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.i.i62.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.df = call noundef zeroext i1 @_ZN4mlir9Operation16isProperAncestorEPS0_(ptr noundef nonnull align 8 dereferenceable(64) %.val39.val.i.i.i.i.i.i.i, ptr noundef %i.dd) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.dg = load ptr, ptr %14, align 8
  %.not.i.i.i.i.i.i.i = icmp ne ptr %.sroa.0.0.copyload.i.i.i.i61.i.i.i.i.i.i.i, %i.dg
  %or.cond51.not.i.i = select i1 %i.df, i1 %.not.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond51.not.i.i, label %"_ZN4llvm6all_ofIN4mlir12OperandRangeEZZN12_GLOBAL__N_119ForLoopRangeFolding14runOnOperationEvENK3$_0clENS1_3scf5ForOpEEUlNS1_5ValueEE_EEbOT_T0_.exit.i.i", label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN12_GLOBAL__N_119ForLoopRangeFolding14runOnOperationEvENK3$_0clEN4mlir3scf5ForOpEEUlNS5_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS5_12OperandRangeEPNS5_9OpOperandES8_S8_S8_E8iteratorEEEbT_.exit64.thread.i.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN12_GLOBAL__N_119ForLoopRangeFolding14runOnOperationEvENK3$_0clEN4mlir3scf5ForOpEEUlNS5_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS5_12OperandRangeEPNS5_9OpOperandES8_S8_S8_E8iteratorEEEbT_.exit64.thread.i.i.i.i.i.i.i": ; preds = %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.i.i62.i.i.i.i.i.i.i, %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.thread.i.i63.i.i.i.i.i.i.i
  %i.dh = add nsw i64 %.sroa.15.0.lcssa.i.i.i.i.i.i.i, 1
  br label %bb.g

bb.g:                                             ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN12_GLOBAL__N_119ForLoopRangeFolding14runOnOperationEvENK3$_0clEN4mlir3scf5ForOpEEUlNS5_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS5_12OperandRangeEPNS5_9OpOperandES8_S8_S8_E8iteratorEEEbT_.exit64.thread.i.i.i.i.i.i.i", %._crit_edge.i.i.i.i.i.i.i
  %.sroa.15.1.i.i.i.i.i.i.i = phi i64 [ %i.dh, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN12_GLOBAL__N_119ForLoopRangeFolding14runOnOperationEvENK3$_0clEN4mlir3scf5ForOpEEUlNS5_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS5_12OperandRangeEPNS5_9OpOperandES8_S8_S8_E8iteratorEEEbT_.exit64.thread.i.i.i.i.i.i.i" ], [ %.sroa.15.0.lcssa.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ] ; 4 uses
  %.val37.val.i.i.i.i.i.i.i = load ptr, ptr %13, align 8, !tbaa !118 ; 2 uses
  %i.di = getelementptr inbounds [32 x i8], ptr %.sroa.0.0.i.i26.i.i, i64 %.sroa.15.1.i.i.i.i.i.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %.sroa.0.0.copyload.i.i.i.i65.i.i.i.i.i.i.i = load ptr, ptr %i.dj, align 8, !tbaa !43 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %.sroa.0.0.copyload.i.i.i.i65.i.i.i.i.i.i.i, ptr %7, align 8
  %i.dk = call noundef ptr @_ZN4mlir5Value15getParentRegionEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #16
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !125 ; 2 uses
  %i.dn = icmp eq ptr %.val37.val.i.i.i.i.i.i.i, %i.dm
  br i1 %i.dn, label %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.thread.i.i67.i.i.i.i.i.i.i, label %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.i.i66.i.i.i.i.i.i.i

_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.thread.i.i67.i.i.i.i.i.i.i: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %.old53.i.i = load ptr, ptr %14, align 8, !tbaa !35
  %.not106.i.i.i.i.i.old.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i65.i.i.i.i.i.i.i, %.old53.i.i
  br i1 %.not106.i.i.i.i.i.old.i.i, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN12_GLOBAL__N_119ForLoopRangeFolding14runOnOperationEvENK3$_0clEN4mlir3scf5ForOpEEUlNS5_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS5_12OperandRangeEPNS5_9OpOperandES8_S8_S8_E8iteratorEEEbT_.exit68.thread.i.i.i.i.i.i.i", label %"_ZN4llvm6all_ofIN4mlir12OperandRangeEZZN12_GLOBAL__N_119ForLoopRangeFolding14runOnOperationEvENK3$_0clENS1_3scf5ForOpEEUlNS1_5ValueEE_EEbOT_T0_.exit.i.i"

_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.i.i66.i.i.i.i.i.i.i: ; preds = %bb.g
  %i.do = call noundef zeroext i1 @_ZN4mlir9Operation16isProperAncestorEPS0_(ptr noundef nonnull align 8 dereferenceable(64) %.val37.val.i.i.i.i.i.i.i, ptr noundef %i.dm) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.dp = load ptr, ptr %14, align 8
  %.not106.i.i.i.i.i.i.i = icmp ne ptr %.sroa.0.0.copyload.i.i.i.i65.i.i.i.i.i.i.i, %i.dp
  %or.cond54.not.i.i = select i1 %i.do, i1 %.not106.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond54.not.i.i, label %"_ZN4llvm6all_ofIN4mlir12OperandRangeEZZN12_GLOBAL__N_119ForLoopRangeFolding14runOnOperationEvENK3$_0clENS1_3scf5ForOpEEUlNS1_5ValueEE_EEbOT_T0_.exit.i.i", label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN12_GLOBAL__N_119ForLoopRangeFolding14runOnOperationEvENK3$_0clEN4mlir3scf5ForOpEEUlNS5_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS5_12OperandRangeEPNS5_9OpOperandES8_S8_S8_E8iteratorEEEbT_.exit68.thread.i.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN12_GLOBAL__N_119ForLoopRangeFolding14runOnOperationEvENK3$_0clEN4mlir3scf5ForOpEEUlNS5_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS5_12OperandRangeEPNS5_9OpOperandES8_S8_S8_E8iteratorEEEbT_.exit68.thread.i.i.i.i.i.i.i": ; preds = %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.i.i66.i.i.i.i.i.i.i, %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.thread.i.i67.i.i.i.i.i.i.i
  %i.dq = add nsw i64 %.sroa.15.1.i.i.i.i.i.i.i, 1
  br label %bb.h

bb.h:                                             ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN12_GLOBAL__N_119ForLoopRangeFolding14runOnOperationEvENK3$_0clEN4mlir3scf5ForOpEEUlNS5_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS5_12OperandRangeEPNS5_9OpOperandES8_S8_S8_E8iteratorEEEbT_.exit68.thread.i.i.i.i.i.i.i", %._crit_edge.i.i.i.i.i.i.i
  %.sroa.15.2.i.i.i.i.i.i.i = phi i64 [ %i.dq, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN12_GLOBAL__N_119ForLoopRangeFolding14runOnOperationEvENK3$_0clEN4mlir3scf5ForOpEEUlNS5_5ValueEE_EclIN4llvm6detail27indexed_accessor_range_baseINS5_12OperandRangeEPNS5_9OpOperandES8_S8_S8_E8iteratorEEEbT_.exit68.thread.i.i.i.i.i.i.i" ], [ %.sroa.15.0.lcssa.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ] ; 3 uses
  %.val.val.i.i.i.i.i.i.i = load ptr, ptr %13, align 8, !tbaa !118 ; 2 uses
  %i.dr = getelementptr inbounds [32 x i8], ptr %.sroa.0.0.i.i26.i.i, i64 %.sroa.15.2.i.i.i.i.i.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %.sroa.0.0.copyload.i.i.i.i69.i.i.i.i.i.i.i = load ptr, ptr %i.ds, align 8, !tbaa !43 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %.sroa.0.0.copyload.i.i.i.i69.i.i.i.i.i.i.i, ptr %6, align 8
  %i.dt = call noundef ptr @_ZN4mlir5Value15getParentRegionEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #16
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !125 ; 2 uses
  %i.dw = icmp eq ptr %.val.val.i.i.i.i.i.i.i, %i.dv
  br i1 %i.dw, label %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.thread.i.i71.i.i.i.i.i.i.i, label %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.i.i70.i.i.i.i.i.i.i

_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.thread.i.i71.i.i.i.i.i.i.i: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.old56.i.i = load ptr, ptr %14, align 8, !tbaa !35
  %.not107.i.i.i.i.i.old.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i69.i.i.i.i.i.i.i, %.old56.i.i
  br i1 %.not107.i.i.i.i.i.old.i.i, label %"_ZN4llvm6all_ofIN4mlir12OperandRangeEZZN12_GLOBAL__N_119ForLoopRangeFolding14runOnOperationEvENK3$_0clENS1_3scf5ForOpEEUlNS1_5ValueEE_EEbOT_T0_.exit.thread.i.i", label %"_ZN4llvm6all_ofIN4mlir12OperandRangeEZZN12_GLOBAL__N_119ForLoopRangeFolding14runOnOperationEvENK3$_0clENS1_3scf5ForOpEEUlNS1_5ValueEE_EEbOT_T0_.exit.i.i"

_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.i.i70.i.i.i.i.i.i.i: ; preds = %bb.h
  %i.dx = call noundef zeroext i1 @_ZN4mlir9Operation16isProperAncestorEPS0_(ptr noundef nonnull align 8 dereferenceable(64) %.val.val.i.i.i.i.i.i.i, ptr noundef %i.dv) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.dy = load ptr, ptr %14, align 8
  %.not107.i.i.i.i.i.i.i = icmp ne ptr %.sroa.0.0.copyload.i.i.i.i69.i.i.i.i.i.i.i, %i.dy
  %or.cond57.not.i.i = select i1 %i.dx, i1 %.not107.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond57.not.i.i, label %"_ZN4llvm6all_ofIN4mlir12OperandRangeEZZN12_GLOBAL__N_119ForLoopRangeFolding14runOnOperationEvENK3$_0clENS1_3scf5ForOpEEUlNS1_5ValueEE_EEbOT_T0_.exit.i.i", label %"_ZN4llvm6all_ofIN4mlir12OperandRangeEZZN12_GLOBAL__N_119ForLoopRangeFolding14runOnOperationEvENK3$_0clENS1_3scf5ForOpEEUlNS1_5ValueEE_EEbOT_T0_.exit.thread.i.i"

"_ZN4llvm6all_ofIN4mlir12OperandRangeEZZN12_GLOBAL__N_119ForLoopRangeFolding14runOnOperationEvENK3$_0clENS1_3scf5ForOpEEUlNS1_5ValueEE_EEbOT_T0_.exit.i.i": ; preds = %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.i.i58.i.i.i.i.i.i.i, %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.thread.i.i59.i.i.i.i.i.i.i, %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.i.i54.i.i.i.i.i.i.i, %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.thread.i.i55.i.i.i.i.i.i.i, %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.i.i50.i.i.i.i.i.i.i, %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.thread.i.i51.i.i.i.i.i.i.i, %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.i.i.i.i.i.i.i.i.i, %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.thread.i.i.i.i.i.i.i.i.i, %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.i.i70.i.i.i.i.i.i.i, %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.thread.i.i71.i.i.i.i.i.i.i, %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.i.i66.i.i.i.i.i.i.i, %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.thread.i.i67.i.i.i.i.i.i.i, %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.i.i62.i.i.i.i.i.i.i, %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.thread.i.i63.i.i.i.i.i.i.i
  %.sroa.4.0.i.i28.i.i = phi i64 [ %.sroa.4.0.i.i27.i.i, %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.thread.i.i67.i.i.i.i.i.i.i ], [ %.sroa.4.0.i.i27.i.i, %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.i.i66.i.i.i.i.i.i.i ], [ %.sroa.4.0.i.i27.i.i, %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.thread.i.i71.i.i.i.i.i.i.i ], [ %.sroa.4.0.i.i27.i.i, %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.thread.i.i63.i.i.i.i.i.i.i ], [ %.sroa.4.0.i.i27.i.i, %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.i.i70.i.i.i.i.i.i.i ], [ %.sroa.4.0.i.i27.i.i, %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.i.i62.i.i.i.i.i.i.i ], [ %i.bk, %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.thread.i.i.i.i.i.i.i.i.i ], [ %i.bk, %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.i.i.i.i.i.i.i.i.i ], [ %i.bk, %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.thread.i.i51.i.i.i.i.i.i.i ], [ %i.bk, %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.i.i50.i.i.i.i.i.i.i ], [ %i.bk, %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.thread.i.i55.i.i.i.i.i.i.i ], [ %i.bk, %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.i.i54.i.i.i.i.i.i.i ], [ %i.bk, %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.thread.i.i59.i.i.i.i.i.i.i ], [ %i.bk, %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.i.i58.i.i.i.i.i.i.i ]
  %.sroa.9.0.i.i.i.i.i.i.i = phi i64 [ %.sroa.15.1.i.i.i.i.i.i.i, %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.thread.i.i67.i.i.i.i.i.i.i ], [ %.sroa.15.1.i.i.i.i.i.i.i, %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.i.i66.i.i.i.i.i.i.i ], [ %.sroa.15.2.i.i.i.i.i.i.i, %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.thread.i.i71.i.i.i.i.i.i.i ], [ %.sroa.15.0.lcssa.i.i.i.i.i.i.i, %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.thread.i.i63.i.i.i.i.i.i.i ], [ %.sroa.15.2.i.i.i.i.i.i.i, %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.i.i70.i.i.i.i.i.i.i ], [ %.sroa.15.0.lcssa.i.i.i.i.i.i.i, %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.i.i62.i.i.i.i.i.i.i ], [ %i.cm, %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.i.i58.i.i.i.i.i.i.i ], [ %i.cm, %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.thread.i.i59.i.i.i.i.i.i.i ], [ %i.cd, %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.i.i54.i.i.i.i.i.i.i ], [ %i.cd, %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.thread.i.i55.i.i.i.i.i.i.i ], [ %i.bu, %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.i.i50.i.i.i.i.i.i.i ], [ %i.bu, %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.thread.i.i51.i.i.i.i.i.i.i ], [ %.sroa.15.0113.i.i.i.i.i.i.i, %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.i.i.i.i.i.i.i.i.i ], [ %.sroa.15.0113.i.i.i.i.i.i.i, %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.thread.i.i.i.i.i.i.i.i.i ]
  %i.dz = icmp eq i64 %.sroa.4.0.i.i28.i.i, %.sroa.9.0.i.i.i.i.i.i.i
  br i1 %i.dz, label %"_ZN4llvm6all_ofIN4mlir12OperandRangeEZZN12_GLOBAL__N_119ForLoopRangeFolding14runOnOperationEvENK3$_0clENS1_3scf5ForOpEEUlNS1_5ValueEE_EEbOT_T0_.exit.thread.i.i", label %"_ZZN12_GLOBAL__N_119ForLoopRangeFolding14runOnOperationEvENK3$_0clEN4mlir3scf5ForOpE.exit.i"

"_ZN4llvm6all_ofIN4mlir12OperandRangeEZZN12_GLOBAL__N_119ForLoopRangeFolding14runOnOperationEvENK3$_0clENS1_3scf5ForOpEEUlNS1_5ValueEE_EEbOT_T0_.exit.thread.i.i": ; preds = %"_ZN4llvm6all_ofIN4mlir12OperandRangeEZZN12_GLOBAL__N_119ForLoopRangeFolding14runOnOperationEvENK3$_0clENS1_3scf5ForOpEEUlNS1_5ValueEE_EEbOT_T0_.exit.i.i", %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.i.i70.i.i.i.i.i.i.i, %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE22isDefinedOutsideOfLoopENS_5ValueE.exit.thread.i.i71.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #16
  %i.ea = load ptr, ptr %13, align 8, !tbaa !118  ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.ec = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.eb) #16
  store ptr %i.ec, ptr %15, align 8, !tbaa !128
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !129
  %i.ef = call noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE10getNodePtrEPS4_(ptr noundef nonnull %i.ea) #16
  store ptr %i.ee, ptr %i.y, align 8, !tbaa !134
  store ptr %i.ef, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %16, i8 0, i64 72, i1 false)
  %.sroa.022.0.copyload.i.i = load ptr, ptr %14, align 8, !tbaa !43
  %i.eg = call i64 @_ZN4mlir3scf5ForOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 0) #16
  %i.eh = load ptr, ptr %13, align 8, !tbaa !118
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 72
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !115
  %i.ek = and i64 %i.eg, 4294967295
  %i.el = getelementptr inbounds nuw [32 x i8], ptr %i.ej, i64 %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.em, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %.sroa.022.0.copyload.i.i, ptr %5, align 8
  %i.en = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(72) %16, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %.fca.0.extract.i.i.i.i = extractvalue { ptr, i8 } %i.en, 0
  %i.eo = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i.i, i64 8
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i, ptr %i.eo, align 8, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %17, i8 0, i64 72, i1 false)
  %.sroa.020.0.copyload.i.i = load ptr, ptr %14, align 8, !tbaa !43
  %i.ep = call i64 @_ZN4mlir3scf5ForOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 1) #16
  %i.eq = load ptr, ptr %13, align 8, !tbaa !118
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 72
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !115
  %i.et = and i64 %i.ep, 4294967295
  %i.eu = getelementptr inbounds nuw [32 x i8], ptr %i.es, i64 %i.et
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %.sroa.0.0.copyload.i.i.i.i31.i.i = load ptr, ptr %i.ev, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %.sroa.020.0.copyload.i.i, ptr %4, align 8
  %i.ew = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(72) %17, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %.fca.0.extract.i.i32.i.i = extractvalue { ptr, i8 } %i.ew, 0
  %i.ex = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i32.i.i, i64 8
  store ptr %.sroa.0.0.copyload.i.i.i.i31.i.i, ptr %i.ex, align 8, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %18, i8 0, i64 72, i1 false)
  %.sroa.018.0.copyload.i.i = load ptr, ptr %14, align 8, !tbaa !43
  %i.ey = call i64 @_ZN4mlir3scf5ForOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 2) #16
  %i.ez = load ptr, ptr %13, align 8, !tbaa !118
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 72
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !115
  %i.fc = and i64 %i.ey, 4294967295
  %i.fd = getelementptr inbounds nuw [32 x i8], ptr %i.fb, i64 %i.fc
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  %.sroa.0.0.copyload.i.i.i.i34.i.i = load ptr, ptr %i.fe, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %.sroa.018.0.copyload.i.i, ptr %3, align 8
  %i.ff = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(72) %18, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %.fca.0.extract.i.i35.i.i = extractvalue { ptr, i8 } %i.ff, 0
  %i.fg = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i35.i.i, i64 8
  store ptr %.sroa.0.0.copyload.i.i.i.i34.i.i, ptr %i.fg, align 8, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.sroa.0.0.copyload.i.i.i.i.i.i.i36.i.i = load ptr, ptr %i.ay, align 8, !tbaa !27
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i36.i.i, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !29 ; 2 uses
  %i.fj = icmp eq ptr %i.fi, @_ZN4mlir6detail14TypeIDResolverINS_5arith6AddIOpEvE2idE
  %spec.select.i.i.i.i.i37.i.i = and i1 %21, %i.fj
  br i1 %spec.select.i.i.i.i.i37.i.i, label %bb.i, label %bb.p

bb.i:                                             ; preds = %"_ZN4llvm6all_ofIN4mlir12OperandRangeEZZN12_GLOBAL__N_119ForLoopRangeFolding14runOnOperationEvENK3$_0clENS1_3scf5ForOpEEUlNS1_5ValueEE_EEbOT_T0_.exit.thread.i.i"
  %i.fk = call noundef ptr @_ZN4mlir9OpBuilder5cloneERNS_9OperationERNS_9IRMappingE(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(64) %i.ax, ptr noundef nonnull align 8 dereferenceable(72) %16) #16
  %i.fl = call noundef ptr @_ZN4mlir9OpBuilder5cloneERNS_9OperationERNS_9IRMappingE(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(64) %i.ax, ptr noundef nonnull align 8 dereferenceable(72) %17) #16
  %i.fm = getelementptr inbounds i8, ptr %i.fk, i64 -16 ; 4 uses
  %i.fn = load ptr, ptr %13, align 8, !tbaa !118
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 72
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !115 ; 9 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8 ; 2 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !45 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fr, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.fs = load ptr, ptr %i.fp, align 8, !tbaa !42 ; 3 uses
  store ptr %i.fs, ptr %i.fr, align 8, !tbaa !46
  %.not2.i.i.i.i.i.i = icmp eq ptr %i.fs, null
  br i1 %.not2.i.i.i.i.i.i, label %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  store ptr %i.fr, ptr %i.ft, align 8, !tbaa !45
  br label %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i.i.i

_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i.i.i: ; preds = %bb.k, %bb.j, %bb.i
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  store ptr %i.fm, ptr %i.fu, align 8, !tbaa !43
  store ptr %i.fm, ptr %i.fq, align 8, !tbaa !45
  %i.fv = load ptr, ptr %i.fm, align 8, !tbaa !38 ; 3 uses
  store ptr %i.fv, ptr %i.fp, align 8, !tbaa !42
  %.not.i.i.i.i.i37.i.i = icmp eq ptr %i.fv, null
  br i1 %.not.i.i.i.i.i37.i.i, label %_ZN4mlir3scf5ForOp13setLowerBoundENS_5ValueE.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i.i.i
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  store ptr %i.fp, ptr %i.fw, align 8, !tbaa !45
  br label %_ZN4mlir3scf5ForOp13setLowerBoundENS_5ValueE.exit.i.i

_ZN4mlir3scf5ForOp13setLowerBoundENS_5ValueE.exit.i.i: ; preds = %bb.l, %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i.i.i
  store ptr %i.fp, ptr %i.fm, align 8, !tbaa !38
  %i.fx = getelementptr inbounds i8, ptr %i.fl, i64 -16 ; 4 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fp, i64 32 ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fp, i64 40 ; 2 uses
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !45 ; 3 uses
  %.not.i.i.i.i38.i.i = icmp eq ptr %i.ga, null
  br i1 %.not.i.i.i.i38.i.i, label %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i40.i.i, label %bb.m

bb.m:                                             ; preds = %_ZN4mlir3scf5ForOp13setLowerBoundENS_5ValueE.exit.i.i
  %i.gb = load ptr, ptr %i.fy, align 8, !tbaa !42 ; 3 uses
  store ptr %i.gb, ptr %i.ga, align 8, !tbaa !46
  %.not2.i.i.i.i39.i.i = icmp eq ptr %i.gb, null
  br i1 %.not2.i.i.i.i39.i.i, label %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i40.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  store ptr %i.ga, ptr %i.gc, align 8, !tbaa !45
  br label %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i40.i.i

_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i40.i.i: ; preds = %bb.n, %bb.m, %_ZN4mlir3scf5ForOp13setLowerBoundENS_5ValueE.exit.i.i
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fp, i64 56
  store ptr %i.fx, ptr %i.gd, align 8, !tbaa !43
  store ptr %i.fx, ptr %i.fz, align 8, !tbaa !45
  %i.ge = load ptr, ptr %i.fx, align 8, !tbaa !38 ; 3 uses
  store ptr %i.ge, ptr %i.fy, align 8, !tbaa !42
  %.not.i.i.i.i.i41.i.i = icmp eq ptr %i.ge, null
  br i1 %.not.i.i.i.i.i41.i.i, label %_ZN4mlir3scf5ForOp13setUpperBoundENS_5ValueE.exit.i.i, label %bb.o

bb.o:                                             ; preds = %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i40.i.i
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  store ptr %i.fy, ptr %i.gf, align 8, !tbaa !45
  br label %_ZN4mlir3scf5ForOp13setUpperBoundENS_5ValueE.exit.i.i

_ZN4mlir3scf5ForOp13setUpperBoundENS_5ValueE.exit.i.i: ; preds = %bb.o, %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i40.i.i
  store ptr %i.fy, ptr %i.fx, align 8, !tbaa !38
  br label %.thread34.i.i

bb.p:                                             ; preds = %"_ZN4llvm6all_ofIN4mlir12OperandRangeEZZN12_GLOBAL__N_119ForLoopRangeFolding14runOnOperationEvENK3$_0clENS1_3scf5ForOpEEUlNS1_5ValueEE_EEbOT_T0_.exit.thread.i.i"
  %.not.i.i = icmp eq ptr %i.fi, @_ZN4mlir6detail14TypeIDResolverINS_5arith6MulIOpEvE2idE
  %.not.reass.not.i.i = and i1 %22, %.not.i.i
  br i1 %.not.reass.not.i.i, label %bb.q, label %.thread34.i.i

bb.q:                                             ; preds = %bb.p
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !115 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  %.sroa.0.0.copyload.i.i.i.i43.i.i = load ptr, ptr %i.gi, align 8, !tbaa !43 ; 2 uses
  %i.gj = load ptr, ptr %14, align 8, !tbaa !35
  %i.gk = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i43.i.i, %i.gj
  br i1 %i.gk, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 56
  %.sroa.0.0.copyload.i.i.i.i45.i.i = load ptr, ptr %i.gl, align 8, !tbaa !43
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sroa.010.0.i.i = phi ptr [ %.sroa.0.0.copyload.i.i.i.i45.i.i, %bb.r ], [ %.sroa.0.0.copyload.i.i.i.i43.i.i, %bb.q ]
  %i.gm = ptrtoint ptr %.sroa.010.0.i.i to i64
  %i.gn = or i64 %i.gm, 4
  %i.go = call { i64, i8 } @_ZN4mlir19getConstantIntValueENS_12OpFoldResultE(i64 %i.gn) #16 ; 2 uses
  %i.gp = extractvalue { i64, i8 } %i.go, 0
  %i.gq = extractvalue { i64, i8 } %i.go, 1
  %i.gr = trunc nuw i8 %i.gq to i1
  %i.gs = icmp sgt i64 %i.gp, 0
  %or.cond60.not.i.i = select i1 %i.gr, i1 %i.gs, i1 false
  br i1 %or.cond60.not.i.i, label %bb.t, label %bb.ae

bb.t:                                             ; preds = %bb.s
  %i.gt = call noundef ptr @_ZN4mlir9OpBuilder5cloneERNS_9OperationERNS_9IRMappingE(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(64) %i.ax, ptr noundef nonnull align 8 dereferenceable(72) %16) #16
  %i.gu = call noundef ptr @_ZN4mlir9OpBuilder5cloneERNS_9OperationERNS_9IRMappingE(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(64) %i.ax, ptr noundef nonnull align 8 dereferenceable(72) %17) #16
  %i.gv = call noundef ptr @_ZN4mlir9OpBuilder5cloneERNS_9OperationERNS_9IRMappingE(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(64) %i.ax, ptr noundef nonnull align 8 dereferenceable(72) %18) #16
  %i.gw = getelementptr inbounds i8, ptr %i.gt, i64 -16 ; 4 uses
  %i.gx = load ptr, ptr %13, align 8, !tbaa !118
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 72
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !115 ; 12 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8 ; 2 uses
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !45 ; 3 uses
  %.not.i.i.i.i48.i.i = icmp eq ptr %i.hb, null
  br i1 %.not.i.i.i.i48.i.i, label %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i50.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.hc = load ptr, ptr %i.gz, align 8, !tbaa !42 ; 3 uses
  store ptr %i.hc, ptr %i.hb, align 8, !tbaa !46
  %.not2.i.i.i.i49.i.i = icmp eq ptr %i.hc, null
  br i1 %.not2.i.i.i.i49.i.i, label %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i50.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  store ptr %i.hb, ptr %i.hd, align 8, !tbaa !45
  br label %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i50.i.i

_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i50.i.i: ; preds = %bb.v, %bb.u, %bb.t
  %i.he = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  store ptr %i.gw, ptr %i.he, align 8, !tbaa !43
  store ptr %i.gw, ptr %i.ha, align 8, !tbaa !45
  %i.hf = load ptr, ptr %i.gw, align 8, !tbaa !38 ; 3 uses
  store ptr %i.hf, ptr %i.gz, align 8, !tbaa !42
  %.not.i.i.i.i.i51.i.i = icmp eq ptr %i.hf, null
  br i1 %.not.i.i.i.i.i51.i.i, label %_ZN4mlir3scf5ForOp13setLowerBoundENS_5ValueE.exit52.i.i, label %bb.w

bb.w:                                             ; preds = %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i50.i.i
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  store ptr %i.gz, ptr %i.hg, align 8, !tbaa !45
  br label %_ZN4mlir3scf5ForOp13setLowerBoundENS_5ValueE.exit52.i.i

_ZN4mlir3scf5ForOp13setLowerBoundENS_5ValueE.exit52.i.i: ; preds = %bb.w, %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i50.i.i
  store ptr %i.gz, ptr %i.gw, align 8, !tbaa !38
  %i.hh = getelementptr inbounds i8, ptr %i.gu, i64 -16 ; 4 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gz, i64 32 ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gz, i64 40 ; 2 uses
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !45 ; 3 uses
  %.not.i.i.i.i53.i.i = icmp eq ptr %i.hk, null
  br i1 %.not.i.i.i.i53.i.i, label %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i55.i.i, label %bb.x

bb.x:                                             ; preds = %_ZN4mlir3scf5ForOp13setLowerBoundENS_5ValueE.exit52.i.i
  %i.hl = load ptr, ptr %i.hi, align 8, !tbaa !42 ; 3 uses
  store ptr %i.hl, ptr %i.hk, align 8, !tbaa !46
  %.not2.i.i.i.i54.i.i = icmp eq ptr %i.hl, null
  br i1 %.not2.i.i.i.i54.i.i, label %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i55.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  store ptr %i.hk, ptr %i.hm, align 8, !tbaa !45
  br label %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i55.i.i

_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i55.i.i: ; preds = %bb.y, %bb.x, %_ZN4mlir3scf5ForOp13setLowerBoundENS_5ValueE.exit52.i.i
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gz, i64 56
  store ptr %i.hh, ptr %i.hn, align 8, !tbaa !43
  store ptr %i.hh, ptr %i.hj, align 8, !tbaa !45
  %i.ho = load ptr, ptr %i.hh, align 8, !tbaa !38 ; 3 uses
  store ptr %i.ho, ptr %i.hi, align 8, !tbaa !42
  %.not.i.i.i.i.i56.i.i = icmp eq ptr %i.ho, null
  br i1 %.not.i.i.i.i.i56.i.i, label %_ZN4mlir3scf5ForOp13setUpperBoundENS_5ValueE.exit57.i.i, label %bb.z

bb.z:                                             ; preds = %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i55.i.i
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  store ptr %i.hi, ptr %i.hp, align 8, !tbaa !45
  br label %_ZN4mlir3scf5ForOp13setUpperBoundENS_5ValueE.exit57.i.i

_ZN4mlir3scf5ForOp13setUpperBoundENS_5ValueE.exit57.i.i: ; preds = %bb.z, %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i55.i.i
  store ptr %i.hi, ptr %i.hh, align 8, !tbaa !38
  %i.hq = getelementptr inbounds i8, ptr %i.gv, i64 -16 ; 4 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gz, i64 64 ; 4 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gz, i64 72 ; 2 uses
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !45 ; 3 uses
  %.not.i.i.i.i58.i.i = icmp eq ptr %i.ht, null
  br i1 %.not.i.i.i.i58.i.i, label %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i60.i.i, label %bb.aa

bb.aa:                                            ; preds = %_ZN4mlir3scf5ForOp13setUpperBoundENS_5ValueE.exit57.i.i
  %i.hu = load ptr, ptr %i.hr, align 8, !tbaa !42 ; 3 uses
  store ptr %i.hu, ptr %i.ht, align 8, !tbaa !46
  %.not2.i.i.i.i59.i.i = icmp eq ptr %i.hu, null
  br i1 %.not2.i.i.i.i59.i.i, label %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i60.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  store ptr %i.ht, ptr %i.hv, align 8, !tbaa !45
  br label %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i60.i.i

_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i60.i.i: ; preds = %bb.ab, %bb.aa, %_ZN4mlir3scf5ForOp13setUpperBoundENS_5ValueE.exit57.i.i
  %i.hw = getelementptr inbounds nuw i8, ptr %i.gz, i64 88
  store ptr %i.hq, ptr %i.hw, align 8, !tbaa !43
  store ptr %i.hq, ptr %i.hs, align 8, !tbaa !45
  %i.hx = load ptr, ptr %i.hq, align 8, !tbaa !38 ; 3 uses
  store ptr %i.hx, ptr %i.hr, align 8, !tbaa !42
  %.not.i.i.i.i.i61.i.i = icmp eq ptr %i.hx, null
  br i1 %.not.i.i.i.i.i61.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i60.i.i
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  store ptr %i.hr, ptr %i.hy, align 8, !tbaa !45
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i60.i.i
  store ptr %i.hr, ptr %i.hq, align 8, !tbaa !38
  br label %.thread34.i.i

.thread34.i.i:                                    ; preds = %bb.ad, %bb.p, %_ZN4mlir3scf5ForOp13setUpperBoundENS_5ValueE.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #16
  store i64 %i.aa, ptr %19, align 8
  store i64 1, ptr %i.ab, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ax, i64 36
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !135 ; 2 uses
  %i.ib = icmp eq i32 %i.ia, 0
  %i.ic = getelementptr inbounds i8, ptr %i.ax, i64 -16
  %i.id = zext i32 %i.ia to i64
  %.sroa.0.0.i.i62.i.i = select i1 %i.ib, ptr null, ptr %i.ic
  store ptr %.sroa.0.0.i.i62.i.i, ptr %2, align 8
  store i64 %i.id, ptr %i.ac, align 8
  call void @_ZN4mlir11ResultRange18replaceAllUsesWithIRNS_10ValueRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_PNS_9OperationEEE5valueEvE4typeEOS5_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @_ZN4mlir9Operation5eraseEv(ptr noundef nonnull align 8 dereferenceable(64) %i.ax) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  br label %bb.ae

bb.ae:                                            ; preds = %.thread34.i.i, %bb.s
  %i.ie = phi i1 [ true, %.thread34.i.i ], [ false, %bb.s ]
  %i.if = load i32, ptr %i.ad, align 4, !tbaa !138 ; 2 uses
  %i.ig = icmp eq i32 %i.if, 0
  br i1 %i.ig, label %_ZN4llvm8DenseMapIPN4mlir9OperationES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEED2Ev.exit.i.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ih = load ptr, ptr %i.ae, align 8, !tbaa !139
  %i.ii = zext i32 %i.if to i64                   ; 2 uses
  %i.ij = shl nuw nsw i64 %i.ii, 4
  %i.ik = add nuw nsw i64 %i.ii, 31
  %i.il = lshr i64 %i.ik, 3
  %i.im = and i64 %i.il, 1073741820
  %i.in = add nuw nsw i64 %i.im, %i.ij
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ih, i64 noundef %i.in, i64 noundef 8) #16
  br label %_ZN4llvm8DenseMapIPN4mlir9OperationES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEED2Ev.exit.i.i.i

_ZN4llvm8DenseMapIPN4mlir9OperationES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEED2Ev.exit.i.i.i: ; preds = %bb.af, %bb.ae
  %i.io = load i32, ptr %i.af, align 4, !tbaa !142 ; 2 uses
  %i.ip = icmp eq i32 %i.io, 0
  br i1 %i.ip, label %_ZN4llvm8DenseMapIPN4mlir5BlockES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEED2Ev.exit.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %_ZN4llvm8DenseMapIPN4mlir9OperationES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEED2Ev.exit.i.i.i
  %i.iq = load ptr, ptr %i.ag, align 8, !tbaa !143
  %i.ir = zext i32 %i.io to i64                   ; 2 uses
  %i.is = shl nuw nsw i64 %i.ir, 4
  %i.it = add nuw nsw i64 %i.ir, 31
  %i.iu = lshr i64 %i.it, 3
  %i.iv = and i64 %i.iu, 1073741820
  %i.iw = add nuw nsw i64 %i.iv, %i.is
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.iq, i64 noundef %i.iw, i64 noundef 8) #16
  br label %_ZN4llvm8DenseMapIPN4mlir5BlockES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEED2Ev.exit.i.i.i

_ZN4llvm8DenseMapIPN4mlir5BlockES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEED2Ev.exit.i.i.i: ; preds = %bb.ag, %_ZN4llvm8DenseMapIPN4mlir9OperationES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEED2Ev.exit.i.i.i
  %i.ix = load i32, ptr %i.ah, align 4, !tbaa !59 ; 2 uses
  %i.iy = icmp eq i32 %i.ix, 0
  br i1 %i.iy, label %_ZN4mlir9IRMappingD2Ev.exit.i.i, label %bb.ah

bb.ah:                                            ; preds = %_ZN4llvm8DenseMapIPN4mlir5BlockES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEED2Ev.exit.i.i.i
  %i.iz = load ptr, ptr %18, align 8, !tbaa !60
  %i.ja = zext i32 %i.ix to i64                   ; 2 uses
  %i.jb = shl nuw nsw i64 %i.ja, 4
  %i.jc = add nuw nsw i64 %i.ja, 31
  %i.jd = lshr i64 %i.jc, 3
end_hunk_0
