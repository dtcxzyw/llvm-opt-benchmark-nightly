Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TestTilingInterfaceTransformOps?download=true
inline.NumInlined: 14007
inline.NumDeleted: 5873
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN4mlir9transform25TestFuseAndYieldOpAdaptor6verifyENS_8LocationE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  br i1 %.not.i.i42.i.i.i.i.i25, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform25TestFuseAndYieldOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit44.thread.i.i.i.i.i", label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dm = load ptr, ptr %.029.val.i.i.i.i.i24, align 8, !tbaa !245
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i43.i.i.i.i.i26 = load ptr, ptr %i.dn, align 8, !tbaa !246
  %i.do = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i43.i.i.i.i.i26, @_ZN4mlir6detail14TypeIDResolverINS_11IntegerAttrEvE2idE
  br i1 %i.do, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform25TestFuseAndYieldOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit44.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform25TestFuseAndYieldOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit44.thread.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform25TestFuseAndYieldOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit44.thread.i.i.i.i.i": ; preds = %bb.ah, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform25TestFuseAndYieldOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform25TestFuseAndYieldOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit44.i.i.i.i.i": ; preds = %bb.ah
  store ptr %.029.val.i.i.i.i.i24, ptr %7, align 8
  %i.dp = call ptr @_ZNK4mlir11IntegerAttr7getTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #27
  store ptr %i.dp, ptr %6, align 8
  %i.dq = call noundef zeroext i1 @_ZNK4mlir4Type17isSignlessIntegerEj(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 64) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br i1 %i.dq, label %bb.ai, label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform25TestFuseAndYieldOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit"

bb.ai:                                            ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform25TestFuseAndYieldOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit44.i.i.i.i.i"
  %i.dr = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i14, i64 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %._crit_edge.i.i.i.i.i12
  %.1.i.i.i.i.i20 = phi ptr [ %i.dr, %bb.ai ], [ %.029.lcssa.i.i.i.i.i14, %._crit_edge.i.i.i.i.i12 ] ; 4 uses
  %.1.val.i.i.i.i.i21 = load ptr, ptr %.1.i.i.i.i.i20, align 8, !tbaa !55 ; 3 uses
  %.not.i.i45.i.i.i.i.i22 = icmp eq ptr %.1.val.i.i.i.i.i21, null
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  br i1 %.not.i.i45.i.i.i.i.i22, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform25TestFuseAndYieldOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit47.thread.i.i.i.i.i", label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ds = load ptr, ptr %.1.val.i.i.i.i.i21, align 8, !tbaa !245
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i46.i.i.i.i.i23 = load ptr, ptr %i.dt, align 8, !tbaa !246
  %i.du = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i46.i.i.i.i.i23, @_ZN4mlir6detail14TypeIDResolverINS_11IntegerAttrEvE2idE
  br i1 %i.du, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform25TestFuseAndYieldOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit47.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform25TestFuseAndYieldOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit47.thread.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform25TestFuseAndYieldOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit47.thread.i.i.i.i.i": ; preds = %bb.ak, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform25TestFuseAndYieldOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform25TestFuseAndYieldOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit47.i.i.i.i.i": ; preds = %bb.ak
  store ptr %.1.val.i.i.i.i.i21, ptr %5, align 8
  %i.dv = call ptr @_ZNK4mlir11IntegerAttr7getTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #27
  store ptr %i.dv, ptr %4, align 8
  %i.dw = call noundef zeroext i1 @_ZNK4mlir4Type17isSignlessIntegerEj(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 64) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br i1 %i.dw, label %bb.al, label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform25TestFuseAndYieldOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit"

bb.al:                                            ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform25TestFuseAndYieldOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit47.i.i.i.i.i"
  %i.dx = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i20, i64 8
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %._crit_edge.i.i.i.i.i12
  %.2.i.i.i.i.i15 = phi ptr [ %i.dx, %bb.al ], [ %.029.lcssa.i.i.i.i.i14, %._crit_edge.i.i.i.i.i12 ] ; 3 uses
  %.2.val.i.i.i.i.i16 = load ptr, ptr %.2.i.i.i.i.i15, align 8, !tbaa !55 ; 3 uses
  %.not.i.i48.i.i.i.i.i17 = icmp eq ptr %.2.val.i.i.i.i.i16, null
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  br i1 %.not.i.i48.i.i.i.i.i17, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform25TestFuseAndYieldOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit50.thread.i.i.i.i.i", label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dy = load ptr, ptr %.2.val.i.i.i.i.i16, align 8, !tbaa !245
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i49.i.i.i.i.i18 = load ptr, ptr %i.dz, align 8, !tbaa !246
  %i.ea = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i49.i.i.i.i.i18, @_ZN4mlir6detail14TypeIDResolverINS_11IntegerAttrEvE2idE
  br i1 %i.ea, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform25TestFuseAndYieldOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit50.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform25TestFuseAndYieldOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit50.thread.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform25TestFuseAndYieldOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit50.thread.i.i.i.i.i": ; preds = %bb.an, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform25TestFuseAndYieldOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform25TestFuseAndYieldOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit50.i.i.i.i.i": ; preds = %bb.an
  store ptr %.2.val.i.i.i.i.i16, ptr %3, align 8
  %i.eb = call ptr @_ZNK4mlir11IntegerAttr7getTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #27
  store ptr %i.eb, ptr %2, align 8
  %i.ec = call noundef zeroext i1 @_ZNK4mlir4Type17isSignlessIntegerEj(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 64) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br i1 %i.ec, label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform25TestFuseAndYieldOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit.thread", label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform25TestFuseAndYieldOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit"

"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform25TestFuseAndYieldOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit.thread": ; preds = %._crit_edge.i.i.i.i.i12, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform25TestFuseAndYieldOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit50.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #27
  br label %bb.as

"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform25TestFuseAndYieldOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit.loopexit.split.loop.exit": ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform25TestFuseAndYieldOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit35.i.i.i.i.i"
  %i.ed = getelementptr inbounds nuw i8, ptr %.02973.i.i.i.i.i29, i64 8
  br label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform25TestFuseAndYieldOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit"

"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform25TestFuseAndYieldOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit.loopexit.split.loop.exit169": ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform25TestFuseAndYieldOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit38.i.i.i.i.i"
  %i.ee = getelementptr inbounds nuw i8, ptr %.02973.i.i.i.i.i29, i64 16
  br label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform25TestFuseAndYieldOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit"

"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform25TestFuseAndYieldOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit.loopexit.split.loop.exit171": ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform25TestFuseAndYieldOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit41.i.i.i.i.i"
  %i.ef = getelementptr inbounds nuw i8, ptr %.02973.i.i.i.i.i29, i64 24
  br label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform25TestFuseAndYieldOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit"

"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform25TestFuseAndYieldOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit": ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform25TestFuseAndYieldOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit.i.i.i.i.i", %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform25TestFuseAndYieldOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit.loopexit.split.loop.exit", %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform25TestFuseAndYieldOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit.loopexit.split.loop.exit169", %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform25TestFuseAndYieldOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit.loopexit.split.loop.exit171", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform25TestFuseAndYieldOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit.thread.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform25TestFuseAndYieldOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit35.thread.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform25TestFuseAndYieldOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit38.thread.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform25TestFuseAndYieldOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit41.thread.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform25TestFuseAndYieldOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit44.thread.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform25TestFuseAndYieldOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit44.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform25TestFuseAndYieldOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit47.thread.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform25TestFuseAndYieldOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit47.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform25TestFuseAndYieldOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit50.thread.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform25TestFuseAndYieldOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit50.i.i.i.i.i"
  %.028.i.i.i.i.i19 = phi ptr [ %.1.i.i.i.i.i20, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform25TestFuseAndYieldOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit47.i.i.i.i.i" ], [ %i.df, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform25TestFuseAndYieldOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit41.thread.i.i.i.i.i" ], [ %.029.lcssa.i.i.i.i.i14, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform25TestFuseAndYieldOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit44.thread.i.i.i.i.i" ], [ %.1.i.i.i.i.i20, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform25TestFuseAndYieldOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit47.thread.i.i.i.i.i" ], [ %i.cy, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform25TestFuseAndYieldOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit38.thread.i.i.i.i.i" ], [ %.2.i.i.i.i.i15, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform25TestFuseAndYieldOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit50.thread.i.i.i.i.i" ], [ %.029.lcssa.i.i.i.i.i14, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform25TestFuseAndYieldOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit44.i.i.i.i.i" ], [ %.2.i.i.i.i.i15, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform25TestFuseAndYieldOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit50.i.i.i.i.i" ], [ %.02973.i.i.i.i.i29, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform25TestFuseAndYieldOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit.thread.i.i.i.i.i" ], [ %i.cr, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform25TestFuseAndYieldOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit35.thread.i.i.i.i.i" ], [ %i.ef, %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform25TestFuseAndYieldOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit.loopexit.split.loop.exit171" ], [ %i.ee, %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform25TestFuseAndYieldOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit.loopexit.split.loop.exit169" ], [ %i.ed, %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform25TestFuseAndYieldOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit.loopexit.split.loop.exit" ], [ %.02973.i.i.i.i.i29, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform25TestFuseAndYieldOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit.i.i.i.i.i" ]
  %.not55 = icmp eq ptr %i.cc, %.028.i.i.i.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #27
  br i1 %.not55, label %bb.as, label %bb.ao

bb.ao:                                            ; preds = %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform25TestFuseAndYieldOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #27
  %i.eg = getelementptr inbounds nuw i8, ptr %35, i64 32
  %i.eh = getelementptr inbounds nuw i8, ptr %35, i64 33
  store i8 1, ptr %i.eh, align 1, !tbaa !103
  store ptr @.str.9, ptr %35, align 8, !tbaa !104
  store i8 3, ptr %i.eg, align 8, !tbaa !105
  call void @_ZN4mlir9emitErrorENS_8LocationERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %34, ptr %1, ptr noundef nonnull align 8 dereferenceable(34) %35) #27
  %i.ei = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %34) #27
  %i.ej = load ptr, ptr %34, align 8, !tbaa !113
  %.not.i45 = icmp eq ptr %i.ej, null
  br i1 %.not.i45, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %34) #27
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.ek = getelementptr inbounds nuw i8, ptr %34, i64 200 ; 2 uses
  %i.el = load i8, ptr %i.ek, align 8, !tbaa !114, !range !115, !noundef !116
  %i.em = trunc nuw i8 %i.el to i1
  store i8 0, ptr %i.ek, align 8, !tbaa !114
  br i1 %i.em, label %bb.ar, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit46

bb.ar:                                            ; preds = %bb.aq
  %i.en = getelementptr inbounds nuw i8, ptr %34, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.en) #27
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit46

_ZN4mlir18InFlightDiagnosticD2Ev.exit46:          ; preds = %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #27
  br label %bb.as

.critedge2:                                       ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #27
  br label %bb.as

bb.as:                                            ; preds = %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform25TestFuseAndYieldOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit", %.critedge2, %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform25TestFuseAndYieldOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit.thread", %_ZN4mlir18InFlightDiagnosticD2Ev.exit46, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.06.0 = phi i8 [ %i.br, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ %i.ei, %_ZN4mlir18InFlightDiagnosticD2Ev.exit46 ], [ 1, %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform25TestFuseAndYieldOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit.thread" ], [ 1, %.critedge2 ], [ 1, %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform25TestFuseAndYieldOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit" ]
  ret i8 %.sroa.06.0
}

declare void @_ZN4mlir9emitErrorENS_8LocationERKN4llvm5TwineE(ptr dead_on_unwind writable sret(%"class.mlir::InFlightDiagnostic") align 8, ptr, ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #3

declare i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform18TestFuseAndYieldOp17getAsmResultNamesEN4llvm12function_refIFvNS_5ValueENS2_9StringRefEEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree readonly captures(none) %1, i64 %2) local_unnamed_addr #0 align 2 {
_ZN4mlir9transform18TestFuseAndYieldOp13getODSResultsEj.exit:
  %i.a = load ptr, ptr %0, align 8, !tbaa !47
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -16
  %i.c = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 noundef 0) #27
  tail call void %1(i64 noundef %2, ptr %i.c, ptr nonnull @.str.11, i64 10) #27, !inline_history !11
  %i.d = load ptr, ptr %0, align 8, !tbaa !47     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.f = load i32, ptr %i.e, align 4, !tbaa !152
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 -16
  %i.h = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 noundef 1) #27
  %i.i = icmp eq i32 %i.f, 1
  br i1 %i.i, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZN4mlir9transform18TestFuseAndYieldOp13getODSResultsEj.exit
  %i.j = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 noundef 0) #27
  tail call void %1(i64 noundef %2, ptr %i.j, ptr nonnull @.str.12, i64 5) #27, !inline_history !11
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZN4mlir9transform18TestFuseAndYieldOp13getODSResultsEj.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @_ZN4mlir9transform18TestFuseAndYieldOp26getODSResultIndexAndLengthEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader18, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i32 %1, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.b, %vector.body ]
  %vec.phi17 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %2 = icmp eq <4 x i32> %vec.phi17, splat (i32 1)
  %i.a = zext <4 x i1> %2 to <4 x i32>
  %i.b = add <4 x i32> %vec.phi, %i.a             ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.phi17, splat (i32 8)
  %i.c = icmp eq i32 %index.next, %n.vec
  br i1 %i.c, label %middle.block, label %vector.body, !llvm.loop !875

middle.block:                                     ; preds = %vector.body
  %i.d = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.b) ; 2 uses
  %cmp.n = icmp eq i32 %1, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader18

.lr.ph.preheader18:                               ; preds = %.lr.ph.preheader, %middle.block
  %.014.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.d, %middle.block ]
  %.01013.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.d, %middle.block ], [ %spec.select, %.lr.ph ]
  %i.e = load ptr, ptr %0, align 8, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.g = load i32, ptr %i.f, align 4, !tbaa !152  ; 2 uses
  %i.h = add i32 %i.g, -1
  %i.i = add i32 %i.g, -2
  %i.j = mul nsw i32 %i.i, %.0.lcssa
  %i.k = add i32 %i.j, %1
  %3 = icmp eq i32 %1, 1
  %4 = select i1 %3, i32 %i.h, i32 1
  %i.l = zext i32 %4 to i64
  %i.m = shl nuw i64 %i.l, 32
  %.sroa.0.0.insert.ext = zext i32 %i.k to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %i.m, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert

.lr.ph:                                           ; preds = %.lr.ph.preheader18, %.lr.ph
  %.014 = phi i32 [ %spec.select, %.lr.ph ], [ %.014.ph, %.lr.ph.preheader18 ]
  %.01013 = phi i32 [ %i.o, %.lr.ph ], [ %.01013.ph, %.lr.ph.preheader18 ] ; 2 uses
  %5 = icmp eq i32 %.01013, 1
  %i.n = zext i1 %5 to i32
  %spec.select = add nuw nsw i32 %.014, %i.n      ; 2 uses
  %i.o = add nuw i32 %.01013, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.o, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !876
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir9transform18TestFuseAndYieldOp21setPropertiesFromAttrERNS0_6detail36TestFuseAndYieldOpGenericAdaptorBase10PropertiesENS_9AttributeEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) %0, ptr %1, ptr nofree readonly captures(none) %2, i64 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %5 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %6 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %7 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %8 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %9 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %10 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %11 = alloca %"class.mlir::DictionaryAttr", align 8 ; 6 uses
  %12 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %13 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  %14 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  %15 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  %i.a = load ptr, ptr %1, align 8, !tbaa !245
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !246
  %i.c = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_14DictionaryAttrEvE2idE
  %spec.select.i.i = select i1 %i.c, ptr %1, ptr null ; 2 uses
  store ptr %spec.select.i.i, ptr %11, align 8
  %i.d = icmp eq ptr %spec.select.i.i, null
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  call void %2(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %12, i64 noundef %3) #27, !inline_history !12
  %i.e = load ptr, ptr %12, align 8, !tbaa !113
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  store i32 3, ptr %10, align 8, !tbaa !233
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr @.str.13, ptr %i.g, align 8, !tbaa !235
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 41, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !57
  %i.h = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !53   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %12, i64 36
  %i.k = load i32, ptr %i.j, align 4, !tbaa !54
  %.not.i.i.i.i.i = icmp ult i32 %i.i, %i.k
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d, !prof !121

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %10)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

bb.e:                                             ; preds = %bb.c
  %i.l = zext i32 %i.i to i64
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !52
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false)
  %i.o = load i32, ptr %i.h, align 8, !tbaa !53
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.h, align 8, !tbaa !53
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  %.pr = load ptr, ptr %12, align 8, !tbaa !113
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %12) #27
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread: ; preds = %bb.b, %bb.f, %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %12, i64 200 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !114, !range !115, !noundef !116
  %i.s = trunc nuw i8 %i.r to i1
  store i8 0, ptr %i.q, align 8, !tbaa !114
  br i1 %i.s, label %bb.g, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.g:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread
  %i.t = getelementptr inbounds nuw i8, ptr %12, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.t) #27
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br label %bb.au

bb.h:                                             ; preds = %bb.a
  %i.u = call ptr @_ZNK4mlir14DictionaryAttr3getEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr nonnull @.str.14, i64 16) #27 ; 4 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.u, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !245
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i19 = load ptr, ptr %i.w, align 8, !tbaa !246
  %i.x = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i19, @_ZN4mlir6detail14TypeIDResolverINS_9ArrayAttrEvE2idE
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = ptrtoint ptr %i.u to i64
  store i64 %i.y, ptr %0, align 8
  br label %bb.u

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  call void %2(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %13, i64 noundef %3) #27, !inline_history !12
  %i.z = load ptr, ptr %13, align 8, !tbaa !113
  %.not.i.i21 = icmp eq ptr %i.z, null
  br i1 %.not.i.i21, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  store i32 3, ptr %9, align 8, !tbaa !233
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr @.str.15, ptr %i.ab, align 8, !tbaa !235
  %.sroa.2.0..sroa_idx.i.i.i.i.i22 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 61, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i22, align 8, !tbaa !57
  %i.ac = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 6 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !53 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %13, i64 36 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !54
  %.not.i.i.i.i.i23 = icmp ult i32 %i.ad, %i.af
  br i1 %.not.i.i.i.i.i23, label %bb.n, label %bb.m, !prof !121

bb.m:                                             ; preds = %bb.l
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %9)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA62_KcEEOS0_OT_.exit

bb.n:                                             ; preds = %bb.l
  %i.ag = zext i32 %i.ad to i64
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !52
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false)
  %i.aj = load i32, ptr %i.ac, align 8, !tbaa !53
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ac, align 8, !tbaa !53
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA62_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA62_KcEEOS0_OT_.exit: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %.pr74 = load ptr, ptr %13, align 8, !tbaa !113
  %.not.i.i24 = icmp eq ptr %.pr74, null
  br i1 %.not.i.i24, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread, label %bb.o

bb.o:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA62_KcEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @_ZN4mlir18DiagnosticArgumentC1ENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr nonnull %i.u) #27
  %i.al = load i32, ptr %i.ac, align 8, !tbaa !53 ; 2 uses
  %i.am = load i32, ptr %i.ae, align 4, !tbaa !54
  %.not.i.i.i.i.i25 = icmp ult i32 %i.al, %i.am
  br i1 %.not.i.i.i.i.i25, label %bb.q, label %bb.p, !prof !121

bb.p:                                             ; preds = %bb.o
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %8)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit

bb.q:                                             ; preds = %bb.o
  %i.an = zext i32 %i.al to i64
  %i.ao = load ptr, ptr %i.aa, align 8, !tbaa !52
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false)
  %i.aq = load i32, ptr %i.ac, align 8, !tbaa !53
  %i.ar = add i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ac, align 8, !tbaa !53
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %.pr76 = load ptr, ptr %13, align 8, !tbaa !113
  %.not.i26 = icmp eq ptr %.pr76, null
  br i1 %.not.i26, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %13) #27
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread

_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread: ; preds = %bb.k, %_ZNO4mlir18InFlightDiagnosticlsIRA62_KcEEOS0_OT_.exit, %bb.r, %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit
  %i.as = getelementptr inbounds nuw i8, ptr %13, i64 200 ; 2 uses
  %i.at = load i8, ptr %i.as, align 8, !tbaa !114, !range !115, !noundef !116
  %i.au = trunc nuw i8 %i.at to i1
  store i8 0, ptr %i.as, align 8, !tbaa !114
  br i1 %i.au, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread
  %i.av = getelementptr inbounds nuw i8, ptr %13, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.av) #27
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %bb.au

end_hunk_0
begin_hunk_1_@_ZN4mlir9transform18TestFuseAndYieldOp5printERNS_12OpAsmPrinterE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27, !noalias !888
  call void @_ZN4mlir10AsmPrinter19printFunctionalTypeINS_14ValueTypeRangeINS_12OperandRangeEEENS2_INS_11ResultRangeEEEEEvOT_OT0_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  %i.kd = load ptr, ptr %8, align 8, !tbaa !52    ; 2 uses
  %i.ke = icmp eq ptr %i.kd, %i.fk
  br i1 %i.ke, label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZN4mlir9Operation15getOperandTypesEv.exit
  call void @free(ptr noundef %i.kd) #27
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit

_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit: ; preds = %_ZN4mlir9Operation15getOperandTypesEv.exit, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir10AsmPrinter19printFunctionalTypeINS_14ValueTypeRangeINS_12OperandRangeEEENS2_INS_11ResultRangeEEEEEvOT_OT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !174
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(48) ptr %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #27 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !286  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !287
  %.not.i = icmp ult ptr %i.f, %i.h
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.d, i8 noundef zeroext 40) #27 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store ptr %i.j, ptr %i.e, align 8, !tbaa !286
  store i8 40, ptr %i.f, align 1, !tbaa !104
  br label %_ZN4llvm11raw_ostreamlsEc.exit

_ZN4llvm11raw_ostreamlsEc.exit:                   ; preds = %bb.b, %bb.c
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i9.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.2.0.copyload.i.i.i10.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i9.i.i.i, align 8 ; 3 uses
  %i.k = icmp eq i64 %.sroa.2.0.copyload.i.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i10.i.i.i
  br i1 %i.k, label %_ZN4llvm15interleaveCommaIN4mlir14ValueTypeRangeINS1_12OperandRangeEEENS1_10AsmPrinterENS1_4TypeEEEvRKT_RT0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit
  %i.l = getelementptr inbounds [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %.sroa.2.0.copyload.i.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !96
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.n, align 8
  %i.o = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i, -8
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load ptr, ptr %0, align 8, !tbaa !174
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %i.p) #27, !inline_history !889
  %.sroa.3.016.i.i.i.i = add nsw i64 %.sroa.2.0.copyload.i.i.i.i.i.i, 1 ; 2 uses
  %.not17.i.i.i.i = icmp eq i64 %.sroa.3.016.i.i.i.i, %.sroa.2.0.copyload.i.i.i10.i.i.i
  br i1 %.not17.i.i.i.i, label %_ZN4llvm15interleaveCommaIN4mlir14ValueTypeRangeINS1_12OperandRangeEEENS1_10AsmPrinterENS1_4TypeEEEvRKT_RT0_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %_ZZN4llvm10interleaveIN4mlir14ValueTypeRangeINS1_12OperandRangeEEEZNS_15interleaveCommaIS4_NS1_10AsmPrinterENS1_4TypeEEEvRKT_RT0_EUlRKS7_E_S6_S7_EEvSA_RT1_SB_RKNS_9StringRefEENKUlvE_clEv.exit.i.i.i.i
  %.sroa.3.018.i.i.i.i = phi i64 [ %.sroa.3.0.i.i.i.i, %_ZZN4llvm10interleaveIN4mlir14ValueTypeRangeINS1_12OperandRangeEEEZNS_15interleaveCommaIS4_NS1_10AsmPrinterENS1_4TypeEEEvRKT_RT0_EUlRKS7_E_S6_S7_EEvSA_RT1_SB_RKNS_9StringRefEENKUlvE_clEv.exit.i.i.i.i ], [ %.sroa.3.016.i.i.i.i, %bb.d ] ; 2 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !174
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef nonnull align 8 dereferenceable(48) ptr %i.v(ptr noundef nonnull align 8 dereferenceable(16) %0) #27, !inline_history !890 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !287
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 32 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !286 ; 2 uses
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = icmp ult i64 %i.ad, 2
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.af = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.w, ptr noundef nonnull @.str.115, i64 noundef 2) #27 ; 0 uses
  br label %_ZZN4llvm10interleaveIN4mlir14ValueTypeRangeINS1_12OperandRangeEEEZNS_15interleaveCommaIS4_NS1_10AsmPrinterENS1_4TypeEEEvRKT_RT0_EUlRKS7_E_S6_S7_EEvSA_RT1_SB_RKNS_9StringRefEENKUlvE_clEv.exit.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  store i16 8236, ptr %i.aa, align 1
  %i.ag = load ptr, ptr %i.z, align 8, !tbaa !286
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  store ptr %i.ah, ptr %i.z, align 8, !tbaa !286
  br label %_ZZN4llvm10interleaveIN4mlir14ValueTypeRangeINS1_12OperandRangeEEEZNS_15interleaveCommaIS4_NS1_10AsmPrinterENS1_4TypeEEEvRKT_RT0_EUlRKS7_E_S6_S7_EEvSA_RT1_SB_RKNS_9StringRefEENKUlvE_clEv.exit.i.i.i.i

_ZZN4llvm10interleaveIN4mlir14ValueTypeRangeINS1_12OperandRangeEEEZNS_15interleaveCommaIS4_NS1_10AsmPrinterENS1_4TypeEEEvRKT_RT0_EUlRKS7_E_S6_S7_EEvSA_RT1_SB_RKNS_9StringRefEENKUlvE_clEv.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %i.ai = getelementptr inbounds [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %.sroa.3.018.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %.sroa.0.0.copyload.i.i.i.i1.i.i.i.i = load ptr, ptr %i.aj, align 8, !tbaa !96
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i1.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i.i2.i.i.i.i = load i64, ptr %i.ak, align 8
  %i.al = and i64 %.0.copyload.i.i.i.i.i.i.i2.i.i.i.i, -8
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = load ptr, ptr %0, align 8, !tbaa !174
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %i.am) #27, !inline_history !889
  %.sroa.3.0.i.i.i.i = add nsw i64 %.sroa.3.018.i.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.3.0.i.i.i.i, %.sroa.2.0.copyload.i.i.i10.i.i.i
  br i1 %.not.i.i.i.i, label %_ZN4llvm15interleaveCommaIN4mlir14ValueTypeRangeINS1_12OperandRangeEEENS1_10AsmPrinterENS1_4TypeEEEvRKT_RT0_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !891

_ZN4llvm15interleaveCommaIN4mlir14ValueTypeRangeINS1_12OperandRangeEEENS1_10AsmPrinterENS1_4TypeEEEvRKT_RT0_.exit: ; preds = %_ZZN4llvm10interleaveIN4mlir14ValueTypeRangeINS1_12OperandRangeEEEZNS_15interleaveCommaIS4_NS1_10AsmPrinterENS1_4TypeEEEvRKT_RT0_EUlRKS7_E_S6_S7_EEvSA_RT1_SB_RKNS_9StringRefEENKUlvE_clEv.exit.i.i.i.i, %_ZN4llvm11raw_ostreamlsEc.exit, %bb.d
  %i.aq = load ptr, ptr %i.e, align 8, !tbaa !286 ; 3 uses
  %i.ar = load ptr, ptr %i.g, align 8, !tbaa !287
  %.not.i5 = icmp ult ptr %i.aq, %i.ar
  br i1 %.not.i5, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm15interleaveCommaIN4mlir14ValueTypeRangeINS1_12OperandRangeEEENS1_10AsmPrinterENS1_4TypeEEEvRKT_RT0_.exit
  %i.as = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.d, i8 noundef zeroext 41) #27 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit7

bb.h:                                             ; preds = %_ZN4llvm15interleaveCommaIN4mlir14ValueTypeRangeINS1_12OperandRangeEEENS1_10AsmPrinterENS1_4TypeEEEvRKT_RT0_.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  store ptr %i.at, ptr %i.e, align 8, !tbaa !286
  store i8 41, ptr %i.aq, align 1, !tbaa !104
  br label %_ZN4llvm11raw_ostreamlsEc.exit7

_ZN4llvm11raw_ostreamlsEc.exit7:                  ; preds = %bb.g, %bb.h
  tail call void @_ZN4mlir10AsmPrinter18printArrowTypeListIRNS_14ValueTypeRangeINS_11ResultRangeEEEEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform6detail36TestFuseConsumerOpGenericAdaptorBaseC2ENS0_18TestFuseConsumerOpE(ptr noundef nonnull align 8 dereferenceable(48) initializes((0, 17), (24, 32)) %0, ptr %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  store ptr %.sroa.0.0.copyload.i, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i1 = load ptr, ptr %i.c, align 8, !tbaa !186
  %i.d = ptrtoint ptr %.sroa.0.0.copyload.i1 to i64
  store i64 %i.d, ptr %i.b, align 8, !tbaa !186
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.e, align 8, !tbaa !241
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %.not.i.i = icmp ugt i32 %i.h, 16777215
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.j = lshr i32 %i.h, 23
  %.lobit.i.i.i.i.i.i.i.i = and i32 %i.j, 1
  %i.k = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i to i64
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8
  store i64 %i.m, ptr %i.f, align 8
  %i.n = load i32, ptr %i.g, align 4              ; 3 uses
  %i.o = and i32 %i.n, 8388607                    ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %_ZN4mlir9Operation10getRegionsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = zext nneg i32 %i.o to i64
  %i.r = lshr i32 %i.n, 23
  %.lobit.i.i.i.i.i.i.i.i.i = and i32 %i.r, 1
  %i.s = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i to i64
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.s
  %i.u = lshr i32 %i.n, 21
  %i.v = and i32 %i.u, 2040
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.z = load i32, ptr %i.y, align 8, !tbaa !242
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %i.aa
  br label %_ZN4mlir9Operation10getRegionsEv.exit

_ZN4mlir9Operation10getRegionsEv.exit:            ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.ab, %bb.b ], [ null, %bb.a ]
  %.sroa.4.0.i = phi i64 [ %i.q, %bb.b ], [ 0, %bb.a ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN4mlir11RegionRangeC1EN4llvm15MutableArrayRefINS_6RegionEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr %.sroa.0.0.i, i64 %.sroa.4.0.i) #27
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @_ZN4mlir9transform6detail36TestFuseConsumerOpGenericAdaptorBase27getODSOperandIndexAndLengthEjj(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(48) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #10 align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader19, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i32 %1, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.b, %vector.body ]
  %vec.phi18 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %3 = icmp eq <4 x i32> %vec.phi18, splat (i32 1)
  %i.a = zext <4 x i1> %3 to <4 x i32>
  %i.b = add <4 x i32> %vec.phi, %i.a             ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.phi18, splat (i32 8)
  %i.c = icmp eq i32 %index.next, %n.vec
  br i1 %i.c, label %middle.block, label %vector.body, !llvm.loop !892

middle.block:                                     ; preds = %vector.body
  %i.d = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.b) ; 2 uses
  %cmp.n = icmp eq i32 %1, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader19

.lr.ph.preheader19:                               ; preds = %.lr.ph.preheader, %middle.block
  %.015.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.d, %middle.block ]
  %.01114.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.d, %middle.block ], [ %spec.select, %.lr.ph ]
  %i.e = add i32 %2, -1
  %i.f = add i32 %2, -2
  %i.g = mul nsw i32 %.0.lcssa, %i.f
  %i.h = add i32 %i.g, %1
  %4 = icmp eq i32 %1, 1
  %5 = select i1 %4, i32 %i.e, i32 1
  %i.i = zext i32 %5 to i64
  %i.j = shl nuw i64 %i.i, 32
  %.sroa.0.0.insert.ext = zext i32 %i.h to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %i.j, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert

.lr.ph:                                           ; preds = %.lr.ph.preheader19, %.lr.ph
  %.015 = phi i32 [ %spec.select, %.lr.ph ], [ %.015.ph, %.lr.ph.preheader19 ]
  %.01114 = phi i32 [ %i.l, %.lr.ph ], [ %.01114.ph, %.lr.ph.preheader19 ] ; 2 uses
  %6 = icmp eq i32 %.01114, 1
  %i.k = zext i1 %6 to i32
  %spec.select = add nuw nsw i32 %.015, %i.k      ; 2 uses
  %i.l = add nuw i32 %.01114, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.l, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !893
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir9transform6detail36TestFuseConsumerOpGenericAdaptorBase26getInnerTileAlignmentsAttrEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.mlir::Builder", align 8     ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.d = tail call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #27
  store ptr %i.d, ptr %1, align 8, !tbaa !61
  %i.e = call ptr @_ZN4mlir7Builder20getDenseI64ArrayAttrEN4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr null, i64 0) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.01.0 = phi ptr [ %i.e, %bb.b ], [ %i.b, %bb.a ]
  ret ptr %.sroa.01.0
}

declare noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare ptr @_ZN4mlir7Builder20getDenseI64ArrayAttrEN4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(8), ptr, i64) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i64 } @_ZN4mlir9transform6detail36TestFuseConsumerOpGenericAdaptorBase22getInnerTileAlignmentsEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.mlir::Builder", align 8     ; 4 uses
  %2 = alloca %"class.mlir::detail::DenseArrayAttrImpl", align 8 ; 5 uses
  %3 = alloca %"class.mlir::detail::DenseArrayAttrImpl", align 8 ; 4 uses
  %4 = alloca %"class.mlir::Builder", align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN4mlir9transform6detail36TestFuseConsumerOpGenericAdaptorBase26getInnerTileAlignmentsAttrEv.exit, label %_ZN4mlir9transform6detail36TestFuseConsumerOpGenericAdaptorBase26getInnerTileAlignmentsAttrEv.exit.thread

_ZN4mlir9transform6detail36TestFuseConsumerOpGenericAdaptorBase26getInnerTileAlignmentsAttrEv.exit.thread: ; preds = %bb.a
  store ptr %i.b, ptr %2, align 8
  br label %bb.c

_ZN4mlir9transform6detail36TestFuseConsumerOpGenericAdaptorBase26getInnerTileAlignmentsAttrEv.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.d = tail call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #27
  store ptr %i.d, ptr %1, align 8, !tbaa !61
  %i.e = call ptr @_ZN4mlir7Builder20getDenseI64ArrayAttrEN4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr null, i64 0) #27 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  store ptr %i.e, ptr %2, align 8
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN4mlir9transform6detail36TestFuseConsumerOpGenericAdaptorBase26getInnerTileAlignmentsAttrEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.g = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #27
  store ptr %i.g, ptr %4, align 8, !tbaa !61
  %i.h = call ptr @_ZN4mlir7Builder20getDenseI64ArrayAttrEN4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr null, i64 0) #27
  store ptr %i.h, ptr %3, align 8
  %i.i = call { ptr, i64 } @_ZNK4mlir6detail18DenseArrayAttrImplIlEcvN4llvm8ArrayRefIlEEEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.d

bb.c:                                             ; preds = %_ZN4mlir9transform6detail36TestFuseConsumerOpGenericAdaptorBase26getInnerTileAlignmentsAttrEv.exit.thread, %_ZN4mlir9transform6detail36TestFuseConsumerOpGenericAdaptorBase26getInnerTileAlignmentsAttrEv.exit
  %i.j = call { ptr, i64 } @_ZNK4mlir6detail18DenseArrayAttrImplIlEcvN4llvm8ArrayRefIlEEEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #27
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn = phi { ptr, i64 } [ %i.i, %bb.b ], [ %i.j, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret { ptr, i64 } %.pn
}

declare { ptr, i64 } @_ZNK4mlir6detail18DenseArrayAttrImplIlEcvN4llvm8ArrayRefIlEEEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform25TestFuseConsumerOpAdaptorC2ENS0_18TestFuseConsumerOpE(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 17), (24, 32)) %0, ptr %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::ValueRange", align 16 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 8388608
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN4mlir9Operation11getOperandsEv.exit, label %bb.b, !prof !117

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !94
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.g = load i32, ptr %i.f, align 4, !tbaa !118
  %i.h = zext i32 %i.g to i64
  br label %_ZN4mlir9Operation11getOperandsEv.exit

_ZN4mlir9Operation11getOperandsEv.exit:           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  %.sroa.4.0.i.i = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ]
  call void @_ZN4mlir10ValueRangeC1ENS_12OperandRangeE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %.sroa.0.0.i.i, i64 %.sroa.4.0.i.i) #27
  %i.i = load <2 x i64>, ptr %2, align 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.j, align 8
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i1.i.i = load ptr, ptr %i.l, align 8, !tbaa !186
  %i.m = ptrtoint ptr %.sroa.0.0.copyload.i1.i.i to i64
  store i64 %i.m, ptr %i.k, align 8, !tbaa !186
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.n, align 8, !tbaa !241
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load i32, ptr %i.a, align 4              ; 2 uses
  %.not.i.i.i.i = icmp ugt i32 %i.p, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.r = lshr i32 %i.p, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i32 %i.r, 1
  %i.s = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i to i64
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.s
  %i.u = load i64, ptr %i.t, align 8
  store i64 %i.u, ptr %i.o, align 8
  %i.v = load i32, ptr %i.a, align 4              ; 3 uses
  %i.w = and i32 %i.v, 8388607                    ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %_ZN4mlir9transform32TestFuseConsumerOpGenericAdaptorINS_10ValueRangeEEC2INS0_18TestFuseConsumerOpEvEES2_T_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4mlir9Operation11getOperandsEv.exit
  %i.y = zext nneg i32 %i.w to i64
  %i.z = lshr i32 %i.v, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.z, 1
  %i.aa = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.aa
  %i.ac = lshr i32 %i.v, 21
  %i.ad = and i32 %i.ac, 2040
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !242
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.af, i64 %i.ai
  br label %_ZN4mlir9transform32TestFuseConsumerOpGenericAdaptorINS_10ValueRangeEEC2INS0_18TestFuseConsumerOpEvEES2_T_.exit

_ZN4mlir9transform32TestFuseConsumerOpGenericAdaptorINS_10ValueRangeEEC2INS0_18TestFuseConsumerOpEvEES2_T_.exit: ; preds = %_ZN4mlir9Operation11getOperandsEv.exit, %bb.c
  %.sroa.0.0.i.i.i = phi ptr [ %i.aj, %bb.c ], [ null, %_ZN4mlir9Operation11getOperandsEv.exit ]
  %.sroa.4.0.i.i.i = phi i64 [ %i.y, %bb.c ], [ 0, %_ZN4mlir9Operation11getOperandsEv.exit ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @_ZN4mlir11RegionRangeC1EN4llvm15MutableArrayRefINS_6RegionEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr %.sroa.0.0.i.i.i, i64 %.sroa.4.0.i.i.i) #27
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x i64> %i.i, ptr %i.al, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i8 @_ZN4mlir9transform25TestFuseConsumerOpAdaptor6verifyENS_8LocationE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr nofree readnone captures(none) %1) local_unnamed_addr #10 align 2 {
bb.a:
  ret i8 1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform18TestFuseConsumerOp17getAsmResultNamesEN4llvm12function_refIFvNS_5ValueENS2_9StringRefEEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree readonly captures(none) %1, i64 %2) local_unnamed_addr #0 align 2 {
_ZN4mlir9transform18TestFuseConsumerOp13getODSResultsEj.exit:
  %i.a = load ptr, ptr %0, align 8, !tbaa !47
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -16
  %i.c = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 noundef 0) #27
  tail call void %1(i64 noundef %2, ptr %i.c, ptr nonnull @.str.26, i64 14) #27, !inline_history !11
  %i.d = load ptr, ptr %0, align 8, !tbaa !47     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.f = load i32, ptr %i.e, align 4, !tbaa !152
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 -16
  %i.h = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 noundef 1) #27
  %i.i = icmp eq i32 %i.f, 1
  br i1 %i.i, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZN4mlir9transform18TestFuseConsumerOp13getODSResultsEj.exit
  %i.j = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 noundef 0) #27
  tail call void %1(i64 noundef %2, ptr %i.j, ptr nonnull @.str.27, i64 12) #27, !inline_history !11
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZN4mlir9transform18TestFuseConsumerOp13getODSResultsEj.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @_ZN4mlir9transform18TestFuseConsumerOp27getODSOperandIndexAndLengthEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader18, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i32 %1, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.b, %vector.body ]
  %vec.phi17 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %2 = icmp eq <4 x i32> %vec.phi17, splat (i32 1)
  %i.a = zext <4 x i1> %2 to <4 x i32>
  %i.b = add <4 x i32> %vec.phi, %i.a             ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.phi17, splat (i32 8)
  %i.c = icmp eq i32 %index.next, %n.vec
  br i1 %i.c, label %middle.block, label %vector.body, !llvm.loop !894

middle.block:                                     ; preds = %vector.body
  %i.d = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.b) ; 2 uses
  %cmp.n = icmp eq i32 %1, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader18

.lr.ph.preheader18:                               ; preds = %.lr.ph.preheader, %middle.block
  %.014.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.d, %middle.block ]
  %.01013.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.d, %middle.block ], [ %spec.select, %.lr.ph ]
  %i.e = load ptr, ptr %0, align 8, !tbaa !47     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.g = load i32, ptr %i.f, align 4
  %i.h = and i32 %i.g, 8388608
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %_ZN4mlir9Operation14getNumOperandsEv.exit, label %bb.b, !prof !117

bb.b:                                             ; preds = %._crit_edge
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 68
  %i.j = load i32, ptr %i.i, align 4, !tbaa !118
  br label %_ZN4mlir9Operation14getNumOperandsEv.exit

_ZN4mlir9Operation14getNumOperandsEv.exit:        ; preds = %._crit_edge, %bb.b
  %i.k = phi i32 [ %i.j, %bb.b ], [ 0, %._crit_edge ] ; 2 uses
  %i.l = add i32 %i.k, -1
  %i.m = add i32 %i.k, -2
  %i.n = mul nsw i32 %i.m, %.0.lcssa
  %i.o = add i32 %i.n, %1
  %3 = icmp eq i32 %1, 1
  %4 = select i1 %3, i32 %i.l, i32 1
  %i.p = zext i32 %4 to i64
  %i.q = shl nuw i64 %i.p, 32
  %.sroa.0.0.insert.ext = zext i32 %i.o to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %i.q, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert

.lr.ph:                                           ; preds = %.lr.ph.preheader18, %.lr.ph
  %.014 = phi i32 [ %spec.select, %.lr.ph ], [ %.014.ph, %.lr.ph.preheader18 ]
  %.01013 = phi i32 [ %i.s, %.lr.ph ], [ %.01013.ph, %.lr.ph.preheader18 ] ; 2 uses
  %5 = icmp eq i32 %.01013, 1
  %i.r = zext i1 %5 to i32
  %spec.select = add nuw nsw i32 %.014, %i.r      ; 2 uses
  %i.s = add nuw i32 %.01013, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.s, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !895
}

declare void @_ZN4mlir19MutableOperandRangeC1EPNS_9OperationEjjN4llvm8ArrayRefISt4pairIjNS_14NamedAttributeEEEE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, i32 noundef, i32 noundef, ptr, i64) unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @_ZN4mlir9transform18TestFuseConsumerOp26getODSResultIndexAndLengthEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader18, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i32 %1, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.b, %vector.body ]
  %vec.phi17 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %2 = icmp eq <4 x i32> %vec.phi17, splat (i32 1)
  %i.a = zext <4 x i1> %2 to <4 x i32>
  %i.b = add <4 x i32> %vec.phi, %i.a             ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.phi17, splat (i32 8)
  %i.c = icmp eq i32 %index.next, %n.vec
  br i1 %i.c, label %middle.block, label %vector.body, !llvm.loop !896

middle.block:                                     ; preds = %vector.body
  %i.d = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.b) ; 2 uses
  %cmp.n = icmp eq i32 %1, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader18

.lr.ph.preheader18:                               ; preds = %.lr.ph.preheader, %middle.block
  %.014.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.d, %middle.block ]
  %.01013.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.d, %middle.block ], [ %spec.select, %.lr.ph ]
  %i.e = load ptr, ptr %0, align 8, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.g = load i32, ptr %i.f, align 4, !tbaa !152  ; 2 uses
  %i.h = add i32 %i.g, -1
  %i.i = add i32 %i.g, -2
  %i.j = mul nsw i32 %i.i, %.0.lcssa
  %i.k = add i32 %i.j, %1
  %3 = icmp eq i32 %1, 1
  %4 = select i1 %3, i32 %i.h, i32 1
  %i.l = zext i32 %4 to i64
  %i.m = shl nuw i64 %i.l, 32
  %.sroa.0.0.insert.ext = zext i32 %i.k to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %i.m, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert

.lr.ph:                                           ; preds = %.lr.ph.preheader18, %.lr.ph
  %.014 = phi i32 [ %spec.select, %.lr.ph ], [ %.014.ph, %.lr.ph.preheader18 ]
  %.01013 = phi i32 [ %i.o, %.lr.ph ], [ %.01013.ph, %.lr.ph.preheader18 ] ; 2 uses
  %5 = icmp eq i32 %.01013, 1
  %i.n = zext i1 %5 to i32
  %spec.select = add nuw nsw i32 %.014, %i.n      ; 2 uses
  %i.o = add nuw i32 %.01013, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.o, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !897
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir9transform18TestFuseConsumerOp21setPropertiesFromAttrERNS0_6detail36TestFuseConsumerOpGenericAdaptorBase10PropertiesENS_9AttributeEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %0, ptr %1, ptr nofree readonly captures(none) %2, i64 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %5 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %6 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %7 = alloca %"class.mlir::DictionaryAttr", align 8 ; 4 uses
  %8 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %9 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.a = load ptr, ptr %1, align 8, !tbaa !245
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !246
  %i.c = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_14DictionaryAttrEvE2idE
  %spec.select.i.i = select i1 %i.c, ptr %1, ptr null ; 2 uses
  store ptr %spec.select.i.i, ptr %7, align 8
  %i.d = icmp eq ptr %spec.select.i.i, null
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void %2(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %8, i64 noundef %3) #27, !inline_history !12
  %i.e = load ptr, ptr %8, align 8, !tbaa !113
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  store i32 3, ptr %6, align 8, !tbaa !233
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.13, ptr %i.g, align 8, !tbaa !235
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 41, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !57
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !53   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 36
  %i.k = load i32, ptr %i.j, align 4, !tbaa !54
  %.not.i.i.i.i.i = icmp ult i32 %i.i, %i.k
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d, !prof !121

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

bb.e:                                             ; preds = %bb.c
  %i.l = zext i32 %i.i to i64
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !52
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  %i.o = load i32, ptr %i.h, align 8, !tbaa !53
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.h, align 8, !tbaa !53
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %.pr = load ptr, ptr %8, align 8, !tbaa !113
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %8) #27
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread: ; preds = %bb.b, %bb.f, %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 200 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !114, !range !115, !noundef !116
  %i.s = trunc nuw i8 %i.r to i1
  store i8 0, ptr %i.q, align 8, !tbaa !114
  br i1 %i.s, label %bb.g, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.g:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.t) #27
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.u

bb.h:                                             ; preds = %bb.a
  %i.u = call ptr @_ZNK4mlir14DictionaryAttr3getEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr nonnull @.str.28, i64 21) #27 ; 4 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.u, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = call noundef zeroext i1 @_ZN4mlir6detail18DenseArrayAttrImplIlE7classofENS_9AttributeE(ptr nonnull %i.u) #27
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.w = ptrtoint ptr %i.u to i64
  store i64 %i.w, ptr %0, align 8
  br label %bb.u

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  call void %2(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %9, i64 noundef %3) #27, !inline_history !12
  %i.x = load ptr, ptr %9, align 8, !tbaa !113
  %.not.i.i6 = icmp eq ptr %i.x, null
  br i1 %.not.i.i6, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store i32 3, ptr %5, align 8, !tbaa !233
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.29, ptr %i.z, align 8, !tbaa !235
  %.sroa.2.0..sroa_idx.i.i.i.i.i7 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 66, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i7, align 8, !tbaa !57
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 6 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !53 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 36 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !54
  %.not.i.i.i.i.i8 = icmp ult i32 %i.ab, %i.ad
  br i1 %.not.i.i.i.i.i8, label %bb.n, label %bb.m, !prof !121

bb.m:                                             ; preds = %bb.l
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA67_KcEEOS0_OT_.exit

bb.n:                                             ; preds = %bb.l
  %i.ae = zext i32 %i.ab to i64
  %i.af = load ptr, ptr %i.y, align 8, !tbaa !52
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  %i.ah = load i32, ptr %i.aa, align 8, !tbaa !53
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr %i.aa, align 8, !tbaa !53
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA67_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA67_KcEEOS0_OT_.exit: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %.pr20 = load ptr, ptr %9, align 8, !tbaa !113
  %.not.i.i9 = icmp eq ptr %.pr20, null
  br i1 %.not.i.i9, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread, label %bb.o

bb.o:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA67_KcEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @_ZN4mlir18DiagnosticArgumentC1ENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr nonnull %i.u) #27
  %i.aj = load i32, ptr %i.aa, align 8, !tbaa !53 ; 2 uses
  %i.ak = load i32, ptr %i.ac, align 4, !tbaa !54
  %.not.i.i.i.i.i10 = icmp ult i32 %i.aj, %i.ak
  br i1 %.not.i.i.i.i.i10, label %bb.q, label %bb.p, !prof !121

bb.p:                                             ; preds = %bb.o
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit

bb.q:                                             ; preds = %bb.o
  %i.al = zext i32 %i.aj to i64
  %i.am = load ptr, ptr %i.y, align 8, !tbaa !52
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %i.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.ao = load i32, ptr %i.aa, align 8, !tbaa !53
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.aa, align 8, !tbaa !53
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %.pr22 = load ptr, ptr %9, align 8, !tbaa !113
  %.not.i11 = icmp eq ptr %.pr22, null
  br i1 %.not.i11, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %9) #27
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread

_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread: ; preds = %bb.k, %_ZNO4mlir18InFlightDiagnosticlsIRA67_KcEEOS0_OT_.exit, %bb.r, %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 200 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !114, !range !115, !noundef !116
  %i.as = trunc nuw i8 %i.ar to i1
  store i8 0, ptr %i.aq, align 8, !tbaa !114
  br i1 %i.as, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.at) #27
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %bb.u

bb.u:                                             ; preds = %bb.j, %bb.h, %bb.t, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.0.3 = phi i8 [ 0, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 0, %bb.t ], [ 1, %bb.h ], [ 1, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  ret i8 %.sroa.0.3
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir9transform18TestFuseConsumerOp19getPropertiesAsAttrEPNS_11MLIRContextERKNS0_6detail36TestFuseConsumerOpGenericAdaptorBase10PropertiesE(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
end_hunk_1
begin_hunk_2_@_ZN4mlir9transform28TestFuseUsingForallOpAdaptor6verifyENS_8LocationE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #27
  br label %bb.as

bb.as:                                            ; preds = %.sink.split228, %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform28TestFuseUsingForallOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit"
  %.not77 = icmp eq i64 %i.e, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #27
  br i1 %.not77, label %.critedge4, label %bb.at

bb.at:                                            ; preds = %bb.as
  store ptr %i.f, ptr %36, align 8
  %i.er = call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %36) #27
  %i.es = extractvalue { ptr, i64 } %i.er, 0      ; 3 uses
  %i.et = call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %36) #27 ; 2 uses
  %i.eu = extractvalue { ptr, i64 } %i.et, 0
  %i.ev = extractvalue { ptr, i64 } %i.et, 1
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.ev ; 2 uses
  %i.ex = ptrtoint ptr %i.ew to i64               ; 2 uses
  %i.ey = ptrtoint ptr %i.es to i64
  %i.ez = sub i64 %i.ex, %i.ey                    ; 2 uses
  %i.fa = ashr i64 %i.ez, 5                       ; 2 uses
  %i.fb = icmp sgt i64 %i.fa, 0
  br i1 %i.fb, label %.lr.ph.i.i.i.i.i60, label %._crit_edge.i.i.i.i.i52

.lr.ph.i.i.i.i.i60:                               ; preds = %bb.at, %bb.ax
  %.044.i.i.i.i.i = phi i64 [ %i.fk, %bb.ax ], [ %i.fa, %bb.at ] ; 2 uses
  %.02943.i.i.i.i.i = phi ptr [ %i.fj, %bb.ax ], [ %i.es, %bb.at ] ; 9 uses
  %.029.val32.i.i.i.i.i61 = load ptr, ptr %.02943.i.i.i.i.i, align 8, !tbaa !55
  %i.fc = call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform28TestFuseUsingForallOpAdaptor6verifyENS2_8LocationEE3$_2EclIPKNS2_9AttributeEEEbT_"(ptr %.029.val32.i.i.i.i.i61)
  br i1 %i.fc, label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform28TestFuseUsingForallOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit", label %bb.au

bb.au:                                            ; preds = %.lr.ph.i.i.i.i.i60
  %i.fd = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i, i64 8
  %.val31.i.i.i.i.i62 = load ptr, ptr %i.fd, align 8, !tbaa !55
  %i.fe = call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform28TestFuseUsingForallOpAdaptor6verifyENS2_8LocationEE3$_2EclIPKNS2_9AttributeEEEbT_"(ptr %.val31.i.i.i.i.i62)
  br i1 %i.fe, label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform28TestFuseUsingForallOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit.loopexit.split.loop.exit", label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ff = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i, i64 16
  %.val30.i.i.i.i.i63 = load ptr, ptr %i.ff, align 8, !tbaa !55
  %i.fg = call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform28TestFuseUsingForallOpAdaptor6verifyENS2_8LocationEE3$_2EclIPKNS2_9AttributeEEEbT_"(ptr %.val30.i.i.i.i.i63)
  br i1 %i.fg, label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform28TestFuseUsingForallOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit.loopexit.split.loop.exit220", label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fh = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i, i64 24
  %.val.i.i.i.i.i64 = load ptr, ptr %i.fh, align 8, !tbaa !55
  %i.fi = call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform28TestFuseUsingForallOpAdaptor6verifyENS2_8LocationEE3$_2EclIPKNS2_9AttributeEEEbT_"(ptr %.val.i.i.i.i.i64)
  br i1 %i.fi, label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform28TestFuseUsingForallOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit.loopexit.split.loop.exit222", label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fj = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i, i64 32 ; 3 uses
  %i.fk = add nsw i64 %.044.i.i.i.i.i, -1
  %i.fl = icmp sgt i64 %.044.i.i.i.i.i, 1
  br i1 %i.fl, label %.lr.ph.i.i.i.i.i60, label %._crit_edge.loopexit.i.i.i.i.i65, !llvm.loop !967

._crit_edge.loopexit.i.i.i.i.i65:                 ; preds = %bb.ax
  %.pre.i.i.i.i.i66 = ptrtoint ptr %i.fj to i64
  %.pre49.i.i.i.i.i = sub i64 %i.ex, %.pre.i.i.i.i.i66
  br label %._crit_edge.i.i.i.i.i52

._crit_edge.i.i.i.i.i52:                          ; preds = %._crit_edge.loopexit.i.i.i.i.i65, %bb.at
  %.pre-phi50.i.i.i.i.i = phi i64 [ %.pre49.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i65 ], [ %i.ez, %bb.at ]
  %.029.lcssa.i.i.i.i.i53 = phi ptr [ %i.fj, %._crit_edge.loopexit.i.i.i.i.i65 ], [ %i.es, %bb.at ] ; 5 uses
  %i.fm = ashr exact i64 %.pre-phi50.i.i.i.i.i, 3
  switch i64 %i.fm, label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform28TestFuseUsingForallOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit.thread" [
    i64 3, label %bb.ay
    i64 2, label %bb.ba
    i64 1, label %bb.bc
  ]

bb.ay:                                            ; preds = %._crit_edge.i.i.i.i.i52
  %.029.val.i.i.i.i.i59 = load ptr, ptr %.029.lcssa.i.i.i.i.i53, align 8, !tbaa !55
  %i.fn = call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform28TestFuseUsingForallOpAdaptor6verifyENS2_8LocationEE3$_2EclIPKNS2_9AttributeEEEbT_"(ptr %.029.val.i.i.i.i.i59)
  br i1 %i.fn, label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform28TestFuseUsingForallOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit", label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fo = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i53, i64 8
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %._crit_edge.i.i.i.i.i52
  %.1.i.i.i.i.i57 = phi ptr [ %i.fo, %bb.az ], [ %.029.lcssa.i.i.i.i.i53, %._crit_edge.i.i.i.i.i52 ] ; 3 uses
  %.1.val.i.i.i.i.i58 = load ptr, ptr %.1.i.i.i.i.i57, align 8, !tbaa !55
  %i.fp = call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform28TestFuseUsingForallOpAdaptor6verifyENS2_8LocationEE3$_2EclIPKNS2_9AttributeEEEbT_"(ptr %.1.val.i.i.i.i.i58)
  br i1 %i.fp, label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform28TestFuseUsingForallOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit", label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fq = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i57, i64 8
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %._crit_edge.i.i.i.i.i52
  %.2.i.i.i.i.i54 = phi ptr [ %i.fq, %bb.bb ], [ %.029.lcssa.i.i.i.i.i53, %._crit_edge.i.i.i.i.i52 ] ; 2 uses
  %.2.val.i.i.i.i.i55 = load ptr, ptr %.2.i.i.i.i.i54, align 8, !tbaa !55
  %i.fr = call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform28TestFuseUsingForallOpAdaptor6verifyENS2_8LocationEE3$_2EclIPKNS2_9AttributeEEEbT_"(ptr %.2.val.i.i.i.i.i55)
  br i1 %i.fr, label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform28TestFuseUsingForallOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit", label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform28TestFuseUsingForallOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit.thread"

"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform28TestFuseUsingForallOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit.thread": ; preds = %._crit_edge.i.i.i.i.i52, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #27
  br label %bb.bh

"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform28TestFuseUsingForallOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit.loopexit.split.loop.exit": ; preds = %bb.au
  %i.fs = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i, i64 8
  br label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform28TestFuseUsingForallOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit"

"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform28TestFuseUsingForallOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit.loopexit.split.loop.exit220": ; preds = %bb.av
  %i.ft = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i, i64 16
  br label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform28TestFuseUsingForallOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit"

"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform28TestFuseUsingForallOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit.loopexit.split.loop.exit222": ; preds = %bb.aw
  %i.fu = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i, i64 24
  br label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform28TestFuseUsingForallOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit"

"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform28TestFuseUsingForallOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit": ; preds = %.lr.ph.i.i.i.i.i60, %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform28TestFuseUsingForallOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit.loopexit.split.loop.exit", %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform28TestFuseUsingForallOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit.loopexit.split.loop.exit220", %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform28TestFuseUsingForallOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit.loopexit.split.loop.exit222", %bb.ay, %bb.ba, %bb.bc
  %.028.i.i.i.i.i56 = phi ptr [ %.1.i.i.i.i.i57, %bb.ba ], [ %.029.lcssa.i.i.i.i.i53, %bb.ay ], [ %.2.i.i.i.i.i54, %bb.bc ], [ %i.fu, %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform28TestFuseUsingForallOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit.loopexit.split.loop.exit222" ], [ %i.ft, %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform28TestFuseUsingForallOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit.loopexit.split.loop.exit220" ], [ %i.fs, %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform28TestFuseUsingForallOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit.loopexit.split.loop.exit" ], [ %.02943.i.i.i.i.i, %.lr.ph.i.i.i.i.i60 ]
  %.not78 = icmp eq ptr %i.ew, %.028.i.i.i.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #27
  br i1 %.not78, label %bb.bh, label %bb.bd

bb.bd:                                            ; preds = %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform28TestFuseUsingForallOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #27
  %i.fv = getelementptr inbounds nuw i8, ptr %38, i64 32
  %i.fw = getelementptr inbounds nuw i8, ptr %38, i64 33
  store i8 1, ptr %i.fw, align 1, !tbaa !103
  store ptr @.str.44, ptr %38, align 8, !tbaa !104
  store i8 3, ptr %i.fv, align 8, !tbaa !105
  call void @_ZN4mlir9emitErrorENS_8LocationERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %37, ptr %1, ptr noundef nonnull align 8 dereferenceable(34) %38) #27
  %i.fx = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %37) #27
  %i.fy = load ptr, ptr %37, align 8, !tbaa !113
  %.not.i67 = icmp eq ptr %i.fy, null
  br i1 %.not.i67, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %37) #27
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.fz = getelementptr inbounds nuw i8, ptr %37, i64 200 ; 2 uses
  %i.ga = load i8, ptr %i.fz, align 8, !tbaa !114, !range !115, !noundef !116
  %i.gb = trunc nuw i8 %i.ga to i1
  store i8 0, ptr %i.fz, align 8, !tbaa !114
  br i1 %i.gb, label %bb.bg, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit68

bb.bg:                                            ; preds = %bb.bf
  %i.gc = getelementptr inbounds nuw i8, ptr %37, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.gc) #27
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit68

_ZN4mlir18InFlightDiagnosticD2Ev.exit68:          ; preds = %bb.bf, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #27
  br label %bb.bh

.critedge4:                                       ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #27
  br label %bb.bh

bb.bh:                                            ; preds = %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform28TestFuseUsingForallOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit", %.critedge4, %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform28TestFuseUsingForallOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit.thread", %_ZN4mlir18InFlightDiagnosticD2Ev.exit68, %_ZN4mlir18InFlightDiagnosticD2Ev.exit50, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.08.0 = phi i8 [ %i.bu, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ %i.el, %_ZN4mlir18InFlightDiagnosticD2Ev.exit50 ], [ %i.fx, %_ZN4mlir18InFlightDiagnosticD2Ev.exit68 ], [ 1, %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform28TestFuseUsingForallOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit.thread" ], [ 1, %.critedge4 ], [ 1, %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform28TestFuseUsingForallOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit" ]
  ret i8 %.sroa.08.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform21TestFuseUsingForallOp17getAsmResultNamesEN4llvm12function_refIFvNS_5ValueENS2_9StringRefEEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree readonly captures(none) %1, i64 %2) local_unnamed_addr #0 align 2 {
_ZN4mlir9transform21TestFuseUsingForallOp13getODSResultsEj.exit:
  %i.a = load ptr, ptr %0, align 8, !tbaa !47
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -16
  %i.c = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 noundef 0) #27
  tail call void %1(i64 noundef %2, ptr %i.c, ptr nonnull @.str.45, i64 9) #27, !inline_history !11
  %i.d = load ptr, ptr %0, align 8, !tbaa !47     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.f = load i32, ptr %i.e, align 4, !tbaa !152
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 -16
  %i.h = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 noundef 1) #27
  %i.i = icmp eq i32 %i.f, 1
  br i1 %i.i, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZN4mlir9transform21TestFuseUsingForallOp13getODSResultsEj.exit
  %i.j = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 noundef 0) #27
  tail call void %1(i64 noundef %2, ptr %i.j, ptr nonnull @.str.12, i64 5) #27, !inline_history !11
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZN4mlir9transform21TestFuseUsingForallOp13getODSResultsEj.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @_ZN4mlir9transform21TestFuseUsingForallOp26getODSResultIndexAndLengthEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader18, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i32 %1, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.b, %vector.body ]
  %vec.phi17 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %2 = icmp eq <4 x i32> %vec.phi17, splat (i32 1)
  %i.a = zext <4 x i1> %2 to <4 x i32>
  %i.b = add <4 x i32> %vec.phi, %i.a             ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.phi17, splat (i32 8)
  %i.c = icmp eq i32 %index.next, %n.vec
  br i1 %i.c, label %middle.block, label %vector.body, !llvm.loop !968

middle.block:                                     ; preds = %vector.body
  %i.d = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.b) ; 2 uses
  %cmp.n = icmp eq i32 %1, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader18

.lr.ph.preheader18:                               ; preds = %.lr.ph.preheader, %middle.block
  %.014.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.d, %middle.block ]
  %.01013.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.d, %middle.block ], [ %spec.select, %.lr.ph ]
  %i.e = load ptr, ptr %0, align 8, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.g = load i32, ptr %i.f, align 4, !tbaa !152  ; 2 uses
  %i.h = add i32 %i.g, -1
  %i.i = add i32 %i.g, -2
  %i.j = mul nsw i32 %i.i, %.0.lcssa
  %i.k = add i32 %i.j, %1
  %3 = icmp eq i32 %1, 1
  %4 = select i1 %3, i32 %i.h, i32 1
  %i.l = zext i32 %4 to i64
  %i.m = shl nuw i64 %i.l, 32
  %.sroa.0.0.insert.ext = zext i32 %i.k to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %i.m, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert

.lr.ph:                                           ; preds = %.lr.ph.preheader18, %.lr.ph
  %.014 = phi i32 [ %spec.select, %.lr.ph ], [ %.014.ph, %.lr.ph.preheader18 ]
  %.01013 = phi i32 [ %i.o, %.lr.ph ], [ %.01013.ph, %.lr.ph.preheader18 ] ; 2 uses
  %5 = icmp eq i32 %.01013, 1
  %i.n = zext i1 %5 to i32
  %spec.select = add nuw nsw i32 %.014, %i.n      ; 2 uses
  %i.o = add nuw i32 %.01013, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.o, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !969
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir9transform21TestFuseUsingForallOp21setPropertiesFromAttrERNS0_6detail39TestFuseUsingForallOpGenericAdaptorBase10PropertiesENS_9AttributeEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) %0, ptr %1, ptr nofree readonly captures(none) %2, i64 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %5 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %6 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %7 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %8 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %9 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %10 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %11 = alloca %"class.mlir::DictionaryAttr", align 8 ; 6 uses
  %12 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %13 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  %14 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  %15 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  %i.a = load ptr, ptr %1, align 8, !tbaa !245
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !246
  %i.c = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_14DictionaryAttrEvE2idE
  %spec.select.i.i = select i1 %i.c, ptr %1, ptr null ; 2 uses
  store ptr %spec.select.i.i, ptr %11, align 8
  %i.d = icmp eq ptr %spec.select.i.i, null
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  call void %2(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %12, i64 noundef %3) #27, !inline_history !12
  %i.e = load ptr, ptr %12, align 8, !tbaa !113
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  store i32 3, ptr %10, align 8, !tbaa !233
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr @.str.13, ptr %i.g, align 8, !tbaa !235
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 41, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !57
  %i.h = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !53   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %12, i64 36
  %i.k = load i32, ptr %i.j, align 4, !tbaa !54
  %.not.i.i.i.i.i = icmp ult i32 %i.i, %i.k
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d, !prof !121

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %10)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

bb.e:                                             ; preds = %bb.c
  %i.l = zext i32 %i.i to i64
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !52
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false)
  %i.o = load i32, ptr %i.h, align 8, !tbaa !53
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.h, align 8, !tbaa !53
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  %.pr = load ptr, ptr %12, align 8, !tbaa !113
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %12) #27
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread: ; preds = %bb.b, %bb.f, %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %12, i64 200 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !114, !range !115, !noundef !116
  %i.s = trunc nuw i8 %i.r to i1
  store i8 0, ptr %i.q, align 8, !tbaa !114
  br i1 %i.s, label %bb.g, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.g:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread
  %i.t = getelementptr inbounds nuw i8, ptr %12, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.t) #27
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br label %bb.au

bb.h:                                             ; preds = %bb.a
  %i.u = call ptr @_ZNK4mlir14DictionaryAttr3getEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr nonnull @.str.23, i64 11) #27 ; 4 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.u, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !245
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i19 = load ptr, ptr %i.w, align 8, !tbaa !246
  %i.x = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i19, @_ZN4mlir6detail14TypeIDResolverINS_9ArrayAttrEvE2idE
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = ptrtoint ptr %i.u to i64
  store i64 %i.y, ptr %0, align 8
  br label %bb.u

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  call void %2(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %13, i64 noundef %3) #27, !inline_history !12
  %i.z = load ptr, ptr %13, align 8, !tbaa !113
  %.not.i.i21 = icmp eq ptr %i.z, null
  br i1 %.not.i.i21, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  store i32 3, ptr %9, align 8, !tbaa !233
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr @.str.46, ptr %i.ab, align 8, !tbaa !235
  %.sroa.2.0..sroa_idx.i.i.i.i.i22 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 56, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i22, align 8, !tbaa !57
  %i.ac = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 6 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !53 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %13, i64 36 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !54
  %.not.i.i.i.i.i23 = icmp ult i32 %i.ad, %i.af
  br i1 %.not.i.i.i.i.i23, label %bb.n, label %bb.m, !prof !121

bb.m:                                             ; preds = %bb.l
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %9)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA57_KcEEOS0_OT_.exit

bb.n:                                             ; preds = %bb.l
  %i.ag = zext i32 %i.ad to i64
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !52
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false)
  %i.aj = load i32, ptr %i.ac, align 8, !tbaa !53
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ac, align 8, !tbaa !53
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA57_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA57_KcEEOS0_OT_.exit: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %.pr73 = load ptr, ptr %13, align 8, !tbaa !113
  %.not.i.i24 = icmp eq ptr %.pr73, null
  br i1 %.not.i.i24, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread, label %bb.o

bb.o:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA57_KcEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @_ZN4mlir18DiagnosticArgumentC1ENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr nonnull %i.u) #27
  %i.al = load i32, ptr %i.ac, align 8, !tbaa !53 ; 2 uses
  %i.am = load i32, ptr %i.ae, align 4, !tbaa !54
  %.not.i.i.i.i.i25 = icmp ult i32 %i.al, %i.am
  br i1 %.not.i.i.i.i.i25, label %bb.q, label %bb.p, !prof !121

bb.p:                                             ; preds = %bb.o
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %8)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit

bb.q:                                             ; preds = %bb.o
  %i.an = zext i32 %i.al to i64
  %i.ao = load ptr, ptr %i.aa, align 8, !tbaa !52
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false)
  %i.aq = load i32, ptr %i.ac, align 8, !tbaa !53
  %i.ar = add i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ac, align 8, !tbaa !53
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %.pr75 = load ptr, ptr %13, align 8, !tbaa !113
  %.not.i26 = icmp eq ptr %.pr75, null
  br i1 %.not.i26, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %13) #27
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread

_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread: ; preds = %bb.k, %_ZNO4mlir18InFlightDiagnosticlsIRA57_KcEEOS0_OT_.exit, %bb.r, %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit
  %i.as = getelementptr inbounds nuw i8, ptr %13, i64 200 ; 2 uses
  %i.at = load i8, ptr %i.as, align 8, !tbaa !114, !range !115, !noundef !116
  %i.au = trunc nuw i8 %i.at to i1
  store i8 0, ptr %i.as, align 8, !tbaa !114
  br i1 %i.au, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread
  %i.av = getelementptr inbounds nuw i8, ptr %13, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.av) #27
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %bb.au

end_hunk_2
begin_hunk_3_@_ZN4mlir9transform53TestTileAndFuseOuterParallelPartialReductionOpAdaptor6verifyENS_8LocationE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #27
  br label %bb.as

bb.as:                                            ; preds = %.sink.split228, %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform53TestTileAndFuseOuterParallelPartialReductionOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit"
  %.not77 = icmp eq i64 %i.b, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #27
  br i1 %.not77, label %.critedge4, label %bb.at

bb.at:                                            ; preds = %bb.as
  store ptr %i.c, ptr %36, align 8
  %i.er = call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %36) #27
  %i.es = extractvalue { ptr, i64 } %i.er, 0      ; 3 uses
  %i.et = call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %36) #27 ; 2 uses
  %i.eu = extractvalue { ptr, i64 } %i.et, 0
  %i.ev = extractvalue { ptr, i64 } %i.et, 1
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.ev ; 2 uses
  %i.ex = ptrtoint ptr %i.ew to i64               ; 2 uses
  %i.ey = ptrtoint ptr %i.es to i64
  %i.ez = sub i64 %i.ex, %i.ey                    ; 2 uses
  %i.fa = ashr i64 %i.ez, 5                       ; 2 uses
  %i.fb = icmp sgt i64 %i.fa, 0
  br i1 %i.fb, label %.lr.ph.i.i.i.i.i60, label %._crit_edge.i.i.i.i.i52

.lr.ph.i.i.i.i.i60:                               ; preds = %bb.at, %bb.ax
  %.044.i.i.i.i.i = phi i64 [ %i.fk, %bb.ax ], [ %i.fa, %bb.at ] ; 2 uses
  %.02943.i.i.i.i.i = phi ptr [ %i.fj, %bb.ax ], [ %i.es, %bb.at ] ; 9 uses
  %.029.val32.i.i.i.i.i61 = load ptr, ptr %.02943.i.i.i.i.i, align 8, !tbaa !55
  %i.fc = call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform53TestTileAndFuseOuterParallelPartialReductionOpAdaptor6verifyENS2_8LocationEE3$_2EclIPKNS2_9AttributeEEEbT_"(ptr %.029.val32.i.i.i.i.i61)
  br i1 %i.fc, label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform53TestTileAndFuseOuterParallelPartialReductionOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit", label %bb.au

bb.au:                                            ; preds = %.lr.ph.i.i.i.i.i60
  %i.fd = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i, i64 8
  %.val31.i.i.i.i.i62 = load ptr, ptr %i.fd, align 8, !tbaa !55
  %i.fe = call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform53TestTileAndFuseOuterParallelPartialReductionOpAdaptor6verifyENS2_8LocationEE3$_2EclIPKNS2_9AttributeEEEbT_"(ptr %.val31.i.i.i.i.i62)
  br i1 %i.fe, label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform53TestTileAndFuseOuterParallelPartialReductionOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit.loopexit.split.loop.exit", label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ff = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i, i64 16
  %.val30.i.i.i.i.i63 = load ptr, ptr %i.ff, align 8, !tbaa !55
  %i.fg = call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform53TestTileAndFuseOuterParallelPartialReductionOpAdaptor6verifyENS2_8LocationEE3$_2EclIPKNS2_9AttributeEEEbT_"(ptr %.val30.i.i.i.i.i63)
  br i1 %i.fg, label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform53TestTileAndFuseOuterParallelPartialReductionOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit.loopexit.split.loop.exit220", label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fh = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i, i64 24
  %.val.i.i.i.i.i64 = load ptr, ptr %i.fh, align 8, !tbaa !55
  %i.fi = call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform53TestTileAndFuseOuterParallelPartialReductionOpAdaptor6verifyENS2_8LocationEE3$_2EclIPKNS2_9AttributeEEEbT_"(ptr %.val.i.i.i.i.i64)
  br i1 %i.fi, label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform53TestTileAndFuseOuterParallelPartialReductionOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit.loopexit.split.loop.exit222", label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fj = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i, i64 32 ; 3 uses
  %i.fk = add nsw i64 %.044.i.i.i.i.i, -1
  %i.fl = icmp sgt i64 %.044.i.i.i.i.i, 1
  br i1 %i.fl, label %.lr.ph.i.i.i.i.i60, label %._crit_edge.loopexit.i.i.i.i.i65, !llvm.loop !981

._crit_edge.loopexit.i.i.i.i.i65:                 ; preds = %bb.ax
  %.pre.i.i.i.i.i66 = ptrtoint ptr %i.fj to i64
  %.pre49.i.i.i.i.i = sub i64 %i.ex, %.pre.i.i.i.i.i66
  br label %._crit_edge.i.i.i.i.i52

._crit_edge.i.i.i.i.i52:                          ; preds = %._crit_edge.loopexit.i.i.i.i.i65, %bb.at
  %.pre-phi50.i.i.i.i.i = phi i64 [ %.pre49.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i65 ], [ %i.ez, %bb.at ]
  %.029.lcssa.i.i.i.i.i53 = phi ptr [ %i.fj, %._crit_edge.loopexit.i.i.i.i.i65 ], [ %i.es, %bb.at ] ; 5 uses
  %i.fm = ashr exact i64 %.pre-phi50.i.i.i.i.i, 3
  switch i64 %i.fm, label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform53TestTileAndFuseOuterParallelPartialReductionOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit.thread" [
    i64 3, label %bb.ay
    i64 2, label %bb.ba
    i64 1, label %bb.bc
  ]

bb.ay:                                            ; preds = %._crit_edge.i.i.i.i.i52
  %.029.val.i.i.i.i.i59 = load ptr, ptr %.029.lcssa.i.i.i.i.i53, align 8, !tbaa !55
  %i.fn = call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform53TestTileAndFuseOuterParallelPartialReductionOpAdaptor6verifyENS2_8LocationEE3$_2EclIPKNS2_9AttributeEEEbT_"(ptr %.029.val.i.i.i.i.i59)
  br i1 %i.fn, label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform53TestTileAndFuseOuterParallelPartialReductionOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit", label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fo = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i53, i64 8
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %._crit_edge.i.i.i.i.i52
  %.1.i.i.i.i.i57 = phi ptr [ %i.fo, %bb.az ], [ %.029.lcssa.i.i.i.i.i53, %._crit_edge.i.i.i.i.i52 ] ; 3 uses
  %.1.val.i.i.i.i.i58 = load ptr, ptr %.1.i.i.i.i.i57, align 8, !tbaa !55
  %i.fp = call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform53TestTileAndFuseOuterParallelPartialReductionOpAdaptor6verifyENS2_8LocationEE3$_2EclIPKNS2_9AttributeEEEbT_"(ptr %.1.val.i.i.i.i.i58)
  br i1 %i.fp, label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform53TestTileAndFuseOuterParallelPartialReductionOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit", label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fq = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i57, i64 8
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %._crit_edge.i.i.i.i.i52
  %.2.i.i.i.i.i54 = phi ptr [ %i.fq, %bb.bb ], [ %.029.lcssa.i.i.i.i.i53, %._crit_edge.i.i.i.i.i52 ] ; 2 uses
  %.2.val.i.i.i.i.i55 = load ptr, ptr %.2.i.i.i.i.i54, align 8, !tbaa !55
  %i.fr = call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform53TestTileAndFuseOuterParallelPartialReductionOpAdaptor6verifyENS2_8LocationEE3$_2EclIPKNS2_9AttributeEEEbT_"(ptr %.2.val.i.i.i.i.i55)
  br i1 %i.fr, label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform53TestTileAndFuseOuterParallelPartialReductionOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit", label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform53TestTileAndFuseOuterParallelPartialReductionOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit.thread"

"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform53TestTileAndFuseOuterParallelPartialReductionOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit.thread": ; preds = %._crit_edge.i.i.i.i.i52, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #27
  br label %bb.bh

"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform53TestTileAndFuseOuterParallelPartialReductionOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit.loopexit.split.loop.exit": ; preds = %bb.au
  %i.fs = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i, i64 8
  br label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform53TestTileAndFuseOuterParallelPartialReductionOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit"

"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform53TestTileAndFuseOuterParallelPartialReductionOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit.loopexit.split.loop.exit220": ; preds = %bb.av
  %i.ft = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i, i64 16
  br label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform53TestTileAndFuseOuterParallelPartialReductionOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit"

"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform53TestTileAndFuseOuterParallelPartialReductionOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit.loopexit.split.loop.exit222": ; preds = %bb.aw
  %i.fu = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i, i64 24
  br label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform53TestTileAndFuseOuterParallelPartialReductionOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit"

"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform53TestTileAndFuseOuterParallelPartialReductionOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit": ; preds = %.lr.ph.i.i.i.i.i60, %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform53TestTileAndFuseOuterParallelPartialReductionOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit.loopexit.split.loop.exit", %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform53TestTileAndFuseOuterParallelPartialReductionOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit.loopexit.split.loop.exit220", %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform53TestTileAndFuseOuterParallelPartialReductionOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit.loopexit.split.loop.exit222", %bb.ay, %bb.ba, %bb.bc
  %.028.i.i.i.i.i56 = phi ptr [ %.1.i.i.i.i.i57, %bb.ba ], [ %.029.lcssa.i.i.i.i.i53, %bb.ay ], [ %.2.i.i.i.i.i54, %bb.bc ], [ %i.fu, %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform53TestTileAndFuseOuterParallelPartialReductionOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit.loopexit.split.loop.exit222" ], [ %i.ft, %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform53TestTileAndFuseOuterParallelPartialReductionOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit.loopexit.split.loop.exit220" ], [ %i.fs, %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform53TestTileAndFuseOuterParallelPartialReductionOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit.loopexit.split.loop.exit" ], [ %.02943.i.i.i.i.i, %.lr.ph.i.i.i.i.i60 ]
  %.not78 = icmp eq ptr %i.ew, %.028.i.i.i.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #27
  br i1 %.not78, label %bb.bh, label %bb.bd

bb.bd:                                            ; preds = %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform53TestTileAndFuseOuterParallelPartialReductionOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #27
  %i.fv = getelementptr inbounds nuw i8, ptr %38, i64 32
  %i.fw = getelementptr inbounds nuw i8, ptr %38, i64 33
  store i8 1, ptr %i.fw, align 1, !tbaa !103
  store ptr @.str.51, ptr %38, align 8, !tbaa !104
  store i8 3, ptr %i.fv, align 8, !tbaa !105
  call void @_ZN4mlir9emitErrorENS_8LocationERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %37, ptr %1, ptr noundef nonnull align 8 dereferenceable(34) %38) #27
  %i.fx = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %37) #27
  %i.fy = load ptr, ptr %37, align 8, !tbaa !113
  %.not.i67 = icmp eq ptr %i.fy, null
  br i1 %.not.i67, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %37) #27
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.fz = getelementptr inbounds nuw i8, ptr %37, i64 200 ; 2 uses
  %i.ga = load i8, ptr %i.fz, align 8, !tbaa !114, !range !115, !noundef !116
  %i.gb = trunc nuw i8 %i.ga to i1
  store i8 0, ptr %i.fz, align 8, !tbaa !114
  br i1 %i.gb, label %bb.bg, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit68

bb.bg:                                            ; preds = %bb.bf
  %i.gc = getelementptr inbounds nuw i8, ptr %37, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.gc) #27
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit68

_ZN4mlir18InFlightDiagnosticD2Ev.exit68:          ; preds = %bb.bf, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #27
  br label %bb.bh

.critedge4:                                       ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #27
  br label %bb.bh

bb.bh:                                            ; preds = %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform53TestTileAndFuseOuterParallelPartialReductionOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit", %.critedge4, %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform53TestTileAndFuseOuterParallelPartialReductionOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit.thread", %_ZN4mlir18InFlightDiagnosticD2Ev.exit68, %_ZN4mlir18InFlightDiagnosticD2Ev.exit50, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.08.0 = phi i8 [ %i.bu, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ %i.el, %_ZN4mlir18InFlightDiagnosticD2Ev.exit50 ], [ %i.fx, %_ZN4mlir18InFlightDiagnosticD2Ev.exit68 ], [ 1, %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform53TestTileAndFuseOuterParallelPartialReductionOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit.thread" ], [ 1, %.critedge4 ], [ 1, %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform53TestTileAndFuseOuterParallelPartialReductionOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit" ]
  ret i8 %.sroa.08.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform46TestTileAndFuseOuterParallelPartialReductionOp17getAsmResultNamesEN4llvm12function_refIFvNS_5ValueENS2_9StringRefEEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree readonly captures(none) %1, i64 %2) local_unnamed_addr #0 align 2 {
_ZN4mlir9transform46TestTileAndFuseOuterParallelPartialReductionOp13getODSResultsEj.exit:
  %i.a = load ptr, ptr %0, align 8, !tbaa !47
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -16
  %i.c = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 noundef 0) #27
  tail call void %1(i64 noundef %2, ptr %i.c, ptr nonnull @.str.45, i64 9) #27, !inline_history !11
  %i.d = load ptr, ptr %0, align 8, !tbaa !47     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.f = load i32, ptr %i.e, align 4, !tbaa !152
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 -16
  %i.h = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 noundef 1) #27
  %i.i = icmp eq i32 %i.f, 1
  br i1 %i.i, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZN4mlir9transform46TestTileAndFuseOuterParallelPartialReductionOp13getODSResultsEj.exit
  %i.j = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 noundef 0) #27
  tail call void %1(i64 noundef %2, ptr %i.j, ptr nonnull @.str.12, i64 5) #27, !inline_history !11
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZN4mlir9transform46TestTileAndFuseOuterParallelPartialReductionOp13getODSResultsEj.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @_ZN4mlir9transform46TestTileAndFuseOuterParallelPartialReductionOp26getODSResultIndexAndLengthEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader18, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i32 %1, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.b, %vector.body ]
  %vec.phi17 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %2 = icmp eq <4 x i32> %vec.phi17, splat (i32 1)
  %i.a = zext <4 x i1> %2 to <4 x i32>
  %i.b = add <4 x i32> %vec.phi, %i.a             ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.phi17, splat (i32 8)
  %i.c = icmp eq i32 %index.next, %n.vec
  br i1 %i.c, label %middle.block, label %vector.body, !llvm.loop !982

middle.block:                                     ; preds = %vector.body
  %i.d = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.b) ; 2 uses
  %cmp.n = icmp eq i32 %1, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader18

.lr.ph.preheader18:                               ; preds = %.lr.ph.preheader, %middle.block
  %.014.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.d, %middle.block ]
  %.01013.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.d, %middle.block ], [ %spec.select, %.lr.ph ]
  %i.e = load ptr, ptr %0, align 8, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.g = load i32, ptr %i.f, align 4, !tbaa !152  ; 2 uses
  %i.h = add i32 %i.g, -1
  %i.i = add i32 %i.g, -2
  %i.j = mul nsw i32 %i.i, %.0.lcssa
  %i.k = add i32 %i.j, %1
  %3 = icmp eq i32 %1, 1
  %4 = select i1 %3, i32 %i.h, i32 1
  %i.l = zext i32 %4 to i64
  %i.m = shl nuw i64 %i.l, 32
  %.sroa.0.0.insert.ext = zext i32 %i.k to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %i.m, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert

.lr.ph:                                           ; preds = %.lr.ph.preheader18, %.lr.ph
  %.014 = phi i32 [ %spec.select, %.lr.ph ], [ %.014.ph, %.lr.ph.preheader18 ]
  %.01013 = phi i32 [ %i.o, %.lr.ph ], [ %.01013.ph, %.lr.ph.preheader18 ] ; 2 uses
  %5 = icmp eq i32 %.01013, 1
  %i.n = zext i1 %5 to i32
  %spec.select = add nuw nsw i32 %.014, %i.n      ; 2 uses
  %i.o = add nuw i32 %.01013, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.o, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !983
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir9transform46TestTileAndFuseOuterParallelPartialReductionOp21setPropertiesFromAttrERNS0_6detail64TestTileAndFuseOuterParallelPartialReductionOpGenericAdaptorBase10PropertiesENS_9AttributeEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) %0, ptr %1, ptr nofree readonly captures(none) %2, i64 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %5 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %6 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %7 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %8 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %9 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %10 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %11 = alloca %"class.mlir::DictionaryAttr", align 8 ; 6 uses
  %12 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %13 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  %14 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  %15 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  %i.a = load ptr, ptr %1, align 8, !tbaa !245
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !246
  %i.c = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_14DictionaryAttrEvE2idE
  %spec.select.i.i = select i1 %i.c, ptr %1, ptr null ; 2 uses
  store ptr %spec.select.i.i, ptr %11, align 8
  %i.d = icmp eq ptr %spec.select.i.i, null
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  call void %2(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %12, i64 noundef %3) #27, !inline_history !12
  %i.e = load ptr, ptr %12, align 8, !tbaa !113
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  store i32 3, ptr %10, align 8, !tbaa !233
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr @.str.13, ptr %i.g, align 8, !tbaa !235
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 41, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !57
  %i.h = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !53   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %12, i64 36
  %i.k = load i32, ptr %i.j, align 4, !tbaa !54
  %.not.i.i.i.i.i = icmp ult i32 %i.i, %i.k
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d, !prof !121

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %10)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

bb.e:                                             ; preds = %bb.c
  %i.l = zext i32 %i.i to i64
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !52
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false)
  %i.o = load i32, ptr %i.h, align 8, !tbaa !53
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.h, align 8, !tbaa !53
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  %.pr = load ptr, ptr %12, align 8, !tbaa !113
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %12) #27
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread: ; preds = %bb.b, %bb.f, %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %12, i64 200 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !114, !range !115, !noundef !116
  %i.s = trunc nuw i8 %i.r to i1
  store i8 0, ptr %i.q, align 8, !tbaa !114
  br i1 %i.s, label %bb.g, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.g:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread
  %i.t = getelementptr inbounds nuw i8, ptr %12, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.t) #27
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br label %bb.au

bb.h:                                             ; preds = %bb.a
  %i.u = call ptr @_ZNK4mlir14DictionaryAttr3getEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr nonnull @.str.47, i64 7) #27 ; 4 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.u, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !245
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i19 = load ptr, ptr %i.w, align 8, !tbaa !246
  %i.x = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i19, @_ZN4mlir6detail14TypeIDResolverINS_9ArrayAttrEvE2idE
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = ptrtoint ptr %i.u to i64
  store i64 %i.y, ptr %0, align 8
  br label %bb.u

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  call void %2(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %13, i64 noundef %3) #27, !inline_history !12
  %i.z = load ptr, ptr %13, align 8, !tbaa !113
  %.not.i.i21 = icmp eq ptr %i.z, null
  br i1 %.not.i.i21, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  store i32 3, ptr %9, align 8, !tbaa !233
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr @.str.48, ptr %i.ab, align 8, !tbaa !235
  %.sroa.2.0..sroa_idx.i.i.i.i.i22 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 52, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i22, align 8, !tbaa !57
  %i.ac = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 6 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !53 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %13, i64 36 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !54
  %.not.i.i.i.i.i23 = icmp ult i32 %i.ad, %i.af
  br i1 %.not.i.i.i.i.i23, label %bb.n, label %bb.m, !prof !121

bb.m:                                             ; preds = %bb.l
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %9)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA53_KcEEOS0_OT_.exit

bb.n:                                             ; preds = %bb.l
  %i.ag = zext i32 %i.ad to i64
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !52
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false)
  %i.aj = load i32, ptr %i.ac, align 8, !tbaa !53
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ac, align 8, !tbaa !53
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA53_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA53_KcEEOS0_OT_.exit: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %.pr73 = load ptr, ptr %13, align 8, !tbaa !113
  %.not.i.i24 = icmp eq ptr %.pr73, null
  br i1 %.not.i.i24, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread, label %bb.o

bb.o:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA53_KcEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @_ZN4mlir18DiagnosticArgumentC1ENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr nonnull %i.u) #27
  %i.al = load i32, ptr %i.ac, align 8, !tbaa !53 ; 2 uses
  %i.am = load i32, ptr %i.ae, align 4, !tbaa !54
  %.not.i.i.i.i.i25 = icmp ult i32 %i.al, %i.am
  br i1 %.not.i.i.i.i.i25, label %bb.q, label %bb.p, !prof !121

bb.p:                                             ; preds = %bb.o
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %8)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit

bb.q:                                             ; preds = %bb.o
  %i.an = zext i32 %i.al to i64
  %i.ao = load ptr, ptr %i.aa, align 8, !tbaa !52
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false)
  %i.aq = load i32, ptr %i.ac, align 8, !tbaa !53
  %i.ar = add i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ac, align 8, !tbaa !53
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %.pr75 = load ptr, ptr %13, align 8, !tbaa !113
  %.not.i26 = icmp eq ptr %.pr75, null
  br i1 %.not.i26, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %13) #27
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread

_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread: ; preds = %bb.k, %_ZNO4mlir18InFlightDiagnosticlsIRA53_KcEEOS0_OT_.exit, %bb.r, %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit
  %i.as = getelementptr inbounds nuw i8, ptr %13, i64 200 ; 2 uses
  %i.at = load i8, ptr %i.as, align 8, !tbaa !114, !range !115, !noundef !116
  %i.au = trunc nuw i8 %i.at to i1
  store i8 0, ptr %i.as, align 8, !tbaa !114
  br i1 %i.au, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread
  %i.av = getelementptr inbounds nuw i8, ptr %13, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.av) #27
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %bb.au

end_hunk_3
begin_hunk_4_@_ZN4mlir9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS_8LocationE:bb.a
bb.k:                                             ; preds = %._crit_edge.i.i.i.i.i
  %.029.val.i.i.i.i.i = load ptr, ptr %.029.lcssa.i.i.i.i.i, align 8, !tbaa !55 ; 3 uses
  %.not.i.i42.i.i.i.i.i = icmp eq ptr %.029.val.i.i.i.i.i, null
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  br i1 %.not.i.i42.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS2_8LocationEE3$_0EclIPKNS2_9AttributeEEEbT_.exit44.thread.i.i.i.i.i", label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = load ptr, ptr %.029.val.i.i.i.i.i, align 8, !tbaa !245
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i43.i.i.i.i.i = load ptr, ptr %i.at, align 8, !tbaa !246
  %i.au = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i43.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_11IntegerAttrEvE2idE
  br i1 %i.au, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS2_8LocationEE3$_0EclIPKNS2_9AttributeEEEbT_.exit44.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS2_8LocationEE3$_0EclIPKNS2_9AttributeEEEbT_.exit44.thread.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS2_8LocationEE3$_0EclIPKNS2_9AttributeEEEbT_.exit44.thread.i.i.i.i.i": ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS1_8LocationEE3$_0EEbOT_T0_.exit"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS2_8LocationEE3$_0EclIPKNS2_9AttributeEEEbT_.exit44.i.i.i.i.i": ; preds = %bb.l
  store ptr %.029.val.i.i.i.i.i, ptr %7, align 8
  %i.av = call ptr @_ZNK4mlir11IntegerAttr7getTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #27
  store ptr %i.av, ptr %6, align 8
  %i.aw = call noundef zeroext i1 @_ZNK4mlir4Type17isSignlessIntegerEj(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 64) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br i1 %i.aw, label %bb.m, label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS1_8LocationEE3$_0EEbOT_T0_.exit"

bb.m:                                             ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS2_8LocationEE3$_0EclIPKNS2_9AttributeEEEbT_.exit44.i.i.i.i.i"
  %i.ax = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i, i64 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i.i.i.i
  %.1.i.i.i.i.i = phi ptr [ %i.ax, %bb.m ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 4 uses
  %.1.val.i.i.i.i.i = load ptr, ptr %.1.i.i.i.i.i, align 8, !tbaa !55 ; 3 uses
  %.not.i.i45.i.i.i.i.i = icmp eq ptr %.1.val.i.i.i.i.i, null
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  br i1 %.not.i.i45.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS2_8LocationEE3$_0EclIPKNS2_9AttributeEEEbT_.exit47.thread.i.i.i.i.i", label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = load ptr, ptr %.1.val.i.i.i.i.i, align 8, !tbaa !245
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i46.i.i.i.i.i = load ptr, ptr %i.az, align 8, !tbaa !246
  %i.ba = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i46.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_11IntegerAttrEvE2idE
  br i1 %i.ba, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS2_8LocationEE3$_0EclIPKNS2_9AttributeEEEbT_.exit47.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS2_8LocationEE3$_0EclIPKNS2_9AttributeEEEbT_.exit47.thread.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS2_8LocationEE3$_0EclIPKNS2_9AttributeEEEbT_.exit47.thread.i.i.i.i.i": ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS1_8LocationEE3$_0EEbOT_T0_.exit"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS2_8LocationEE3$_0EclIPKNS2_9AttributeEEEbT_.exit47.i.i.i.i.i": ; preds = %bb.o
  store ptr %.1.val.i.i.i.i.i, ptr %5, align 8
  %i.bb = call ptr @_ZNK4mlir11IntegerAttr7getTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #27
  store ptr %i.bb, ptr %4, align 8
  %i.bc = call noundef zeroext i1 @_ZNK4mlir4Type17isSignlessIntegerEj(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 64) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br i1 %i.bc, label %bb.p, label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS1_8LocationEE3$_0EEbOT_T0_.exit"

bb.p:                                             ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS2_8LocationEE3$_0EclIPKNS2_9AttributeEEEbT_.exit47.i.i.i.i.i"
  %i.bd = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge.i.i.i.i.i
  %.2.i.i.i.i.i = phi ptr [ %i.bd, %bb.p ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %.2.val.i.i.i.i.i = load ptr, ptr %.2.i.i.i.i.i, align 8, !tbaa !55 ; 3 uses
  %.not.i.i48.i.i.i.i.i = icmp eq ptr %.2.val.i.i.i.i.i, null
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  br i1 %.not.i.i48.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS2_8LocationEE3$_0EclIPKNS2_9AttributeEEEbT_.exit50.thread.i.i.i.i.i", label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = load ptr, ptr %.2.val.i.i.i.i.i, align 8, !tbaa !245
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i49.i.i.i.i.i = load ptr, ptr %i.bf, align 8, !tbaa !246
  %i.bg = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i49.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_11IntegerAttrEvE2idE
  br i1 %i.bg, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS2_8LocationEE3$_0EclIPKNS2_9AttributeEEEbT_.exit50.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS2_8LocationEE3$_0EclIPKNS2_9AttributeEEEbT_.exit50.thread.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS2_8LocationEE3$_0EclIPKNS2_9AttributeEEEbT_.exit50.thread.i.i.i.i.i": ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS1_8LocationEE3$_0EEbOT_T0_.exit"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS2_8LocationEE3$_0EclIPKNS2_9AttributeEEEbT_.exit50.i.i.i.i.i": ; preds = %bb.r
  store ptr %.2.val.i.i.i.i.i, ptr %3, align 8
  %i.bh = call ptr @_ZNK4mlir11IntegerAttr7getTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #27
  store ptr %i.bh, ptr %2, align 8
  %i.bi = call noundef zeroext i1 @_ZNK4mlir4Type17isSignlessIntegerEj(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 64) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br i1 %i.bi, label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS1_8LocationEE3$_0EEbOT_T0_.exit.thread", label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS1_8LocationEE3$_0EEbOT_T0_.exit"

"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS1_8LocationEE3$_0EEbOT_T0_.exit.thread": ; preds = %._crit_edge.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS2_8LocationEE3$_0EclIPKNS2_9AttributeEEEbT_.exit50.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  br label %bb.w

"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS1_8LocationEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit": ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS2_8LocationEE3$_0EclIPKNS2_9AttributeEEEbT_.exit35.i.i.i.i.i"
  %i.bj = getelementptr inbounds nuw i8, ptr %.02973.i.i.i.i.i, i64 8
  br label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS1_8LocationEE3$_0EEbOT_T0_.exit"

"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS1_8LocationEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit56": ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS2_8LocationEE3$_0EclIPKNS2_9AttributeEEEbT_.exit38.i.i.i.i.i"
  %i.bk = getelementptr inbounds nuw i8, ptr %.02973.i.i.i.i.i, i64 16
  br label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS1_8LocationEE3$_0EEbOT_T0_.exit"

"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS1_8LocationEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit58": ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS2_8LocationEE3$_0EclIPKNS2_9AttributeEEEbT_.exit41.i.i.i.i.i"
  %i.bl = getelementptr inbounds nuw i8, ptr %.02973.i.i.i.i.i, i64 24
  br label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS1_8LocationEE3$_0EEbOT_T0_.exit"

"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS1_8LocationEE3$_0EEbOT_T0_.exit": ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS2_8LocationEE3$_0EclIPKNS2_9AttributeEEEbT_.exit.i.i.i.i.i", %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS1_8LocationEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit", %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS1_8LocationEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit56", %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS1_8LocationEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit58", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS2_8LocationEE3$_0EclIPKNS2_9AttributeEEEbT_.exit.thread.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS2_8LocationEE3$_0EclIPKNS2_9AttributeEEEbT_.exit35.thread.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS2_8LocationEE3$_0EclIPKNS2_9AttributeEEEbT_.exit38.thread.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS2_8LocationEE3$_0EclIPKNS2_9AttributeEEEbT_.exit41.thread.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS2_8LocationEE3$_0EclIPKNS2_9AttributeEEEbT_.exit44.thread.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS2_8LocationEE3$_0EclIPKNS2_9AttributeEEEbT_.exit44.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS2_8LocationEE3$_0EclIPKNS2_9AttributeEEEbT_.exit47.thread.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS2_8LocationEE3$_0EclIPKNS2_9AttributeEEEbT_.exit47.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS2_8LocationEE3$_0EclIPKNS2_9AttributeEEEbT_.exit50.thread.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS2_8LocationEE3$_0EclIPKNS2_9AttributeEEEbT_.exit50.i.i.i.i.i"
  %.028.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS2_8LocationEE3$_0EclIPKNS2_9AttributeEEEbT_.exit47.i.i.i.i.i" ], [ %i.al, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS2_8LocationEE3$_0EclIPKNS2_9AttributeEEEbT_.exit41.thread.i.i.i.i.i" ], [ %.029.lcssa.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS2_8LocationEE3$_0EclIPKNS2_9AttributeEEEbT_.exit44.thread.i.i.i.i.i" ], [ %.1.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS2_8LocationEE3$_0EclIPKNS2_9AttributeEEEbT_.exit47.thread.i.i.i.i.i" ], [ %i.ae, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS2_8LocationEE3$_0EclIPKNS2_9AttributeEEEbT_.exit38.thread.i.i.i.i.i" ], [ %.2.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS2_8LocationEE3$_0EclIPKNS2_9AttributeEEEbT_.exit50.thread.i.i.i.i.i" ], [ %.029.lcssa.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS2_8LocationEE3$_0EclIPKNS2_9AttributeEEEbT_.exit44.i.i.i.i.i" ], [ %.2.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS2_8LocationEE3$_0EclIPKNS2_9AttributeEEEbT_.exit50.i.i.i.i.i" ], [ %.02973.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS2_8LocationEE3$_0EclIPKNS2_9AttributeEEEbT_.exit.thread.i.i.i.i.i" ], [ %i.x, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS2_8LocationEE3$_0EclIPKNS2_9AttributeEEEbT_.exit35.thread.i.i.i.i.i" ], [ %i.bl, %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS1_8LocationEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit58" ], [ %i.bk, %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS1_8LocationEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit56" ], [ %i.bj, %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS1_8LocationEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit" ], [ %.02973.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS2_8LocationEE3$_0EclIPKNS2_9AttributeEEEbT_.exit.i.i.i.i.i" ]
  %.not6 = icmp eq ptr %i.i, %.028.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  br i1 %.not6, label %bb.w, label %bb.s

bb.s:                                             ; preds = %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS1_8LocationEE3$_0EEbOT_T0_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #27
  %i.bm = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %18, i64 33
  store i8 1, ptr %i.bn, align 1, !tbaa !103
  store ptr @.str.54, ptr %18, align 8, !tbaa !104
  store i8 3, ptr %i.bm, align 8, !tbaa !105
  call void @_ZN4mlir9emitErrorENS_8LocationERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %17, ptr %1, ptr noundef nonnull align 8 dereferenceable(34) %18) #27
  %i.bo = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %17) #27
  %i.bp = load ptr, ptr %17, align 8, !tbaa !113
  %.not.i = icmp eq ptr %i.bp, null
  br i1 %.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %17) #27
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bq = getelementptr inbounds nuw i8, ptr %17, i64 200 ; 2 uses
  %i.br = load i8, ptr %i.bq, align 8, !tbaa !114, !range !115, !noundef !116
  %i.bs = trunc nuw i8 %i.br to i1
  store i8 0, ptr %i.bq, align 8, !tbaa !114
  br i1 %i.bs, label %bb.v, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.v:                                             ; preds = %bb.u
  %i.bt = getelementptr inbounds nuw i8, ptr %17, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.bt) #27
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  br label %bb.w

.critedge:                                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  br label %bb.w

bb.w:                                             ; preds = %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS1_8LocationEE3$_0EEbOT_T0_.exit", %.critedge, %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS1_8LocationEE3$_0EEbOT_T0_.exit.thread", %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.02.0 = phi i8 [ %i.bo, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 1, %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS1_8LocationEE3$_0EEbOT_T0_.exit.thread" ], [ 1, %.critedge ], [ 1, %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform32TestTileUsingCustomLoopOpAdaptor6verifyENS1_8LocationEE3$_0EEbOT_T0_.exit" ]
  ret i8 %.sroa.02.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform25TestTileUsingCustomLoopOp17getAsmResultNamesEN4llvm12function_refIFvNS_5ValueENS2_9StringRefEEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree readonly captures(none) %1, i64 %2) local_unnamed_addr #0 align 2 {
_ZN4mlir9transform25TestTileUsingCustomLoopOp13getODSResultsEj.exit:
  %i.a = load ptr, ptr %0, align 8, !tbaa !47
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -16
  %i.c = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 noundef 0) #27
  tail call void %1(i64 noundef %2, ptr %i.c, ptr nonnull @.str.45, i64 9) #27, !inline_history !11
  %i.d = load ptr, ptr %0, align 8, !tbaa !47     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.f = load i32, ptr %i.e, align 4, !tbaa !152
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 -16
  %i.h = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 noundef 1) #27
  %i.i = icmp eq i32 %i.f, 1
  br i1 %i.i, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZN4mlir9transform25TestTileUsingCustomLoopOp13getODSResultsEj.exit
  %i.j = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 noundef 0) #27
  tail call void %1(i64 noundef %2, ptr %i.j, ptr nonnull @.str.12, i64 5) #27, !inline_history !11
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZN4mlir9transform25TestTileUsingCustomLoopOp13getODSResultsEj.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @_ZN4mlir9transform25TestTileUsingCustomLoopOp26getODSResultIndexAndLengthEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader18, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i32 %1, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.b, %vector.body ]
  %vec.phi17 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %2 = icmp eq <4 x i32> %vec.phi17, splat (i32 1)
  %i.a = zext <4 x i1> %2 to <4 x i32>
  %i.b = add <4 x i32> %vec.phi, %i.a             ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.phi17, splat (i32 8)
  %i.c = icmp eq i32 %index.next, %n.vec
  br i1 %i.c, label %middle.block, label %vector.body, !llvm.loop !992

middle.block:                                     ; preds = %vector.body
  %i.d = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.b) ; 2 uses
  %cmp.n = icmp eq i32 %1, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader18

.lr.ph.preheader18:                               ; preds = %.lr.ph.preheader, %middle.block
  %.014.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.d, %middle.block ]
  %.01013.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.d, %middle.block ], [ %spec.select, %.lr.ph ]
  %i.e = load ptr, ptr %0, align 8, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.g = load i32, ptr %i.f, align 4, !tbaa !152  ; 2 uses
  %i.h = add i32 %i.g, -1
  %i.i = add i32 %i.g, -2
  %i.j = mul nsw i32 %i.i, %.0.lcssa
  %i.k = add i32 %i.j, %1
  %3 = icmp eq i32 %1, 1
  %4 = select i1 %3, i32 %i.h, i32 1
  %i.l = zext i32 %4 to i64
  %i.m = shl nuw i64 %i.l, 32
  %.sroa.0.0.insert.ext = zext i32 %i.k to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %i.m, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert

.lr.ph:                                           ; preds = %.lr.ph.preheader18, %.lr.ph
  %.014 = phi i32 [ %spec.select, %.lr.ph ], [ %.014.ph, %.lr.ph.preheader18 ]
  %.01013 = phi i32 [ %i.o, %.lr.ph ], [ %.01013.ph, %.lr.ph.preheader18 ] ; 2 uses
  %5 = icmp eq i32 %.01013, 1
  %i.n = zext i1 %5 to i32
  %spec.select = add nuw nsw i32 %.014, %i.n      ; 2 uses
  %i.o = add nuw i32 %.01013, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.o, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !993
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir9transform25TestTileUsingCustomLoopOp21setPropertiesFromAttrERNS0_6detail43TestTileUsingCustomLoopOpGenericAdaptorBase10PropertiesENS_9AttributeEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %0, ptr %1, ptr nofree readonly captures(none) %2, i64 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %5 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %6 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %7 = alloca %"class.mlir::DictionaryAttr", align 8 ; 4 uses
  %8 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %9 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.a = load ptr, ptr %1, align 8, !tbaa !245
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !246
  %i.c = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_14DictionaryAttrEvE2idE
  %spec.select.i.i = select i1 %i.c, ptr %1, ptr null ; 2 uses
  store ptr %spec.select.i.i, ptr %7, align 8
  %i.d = icmp eq ptr %spec.select.i.i, null
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void %2(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %8, i64 noundef %3) #27, !inline_history !12
  %i.e = load ptr, ptr %8, align 8, !tbaa !113
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  store i32 3, ptr %6, align 8, !tbaa !233
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.13, ptr %i.g, align 8, !tbaa !235
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 41, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !57
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !53   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 36
  %i.k = load i32, ptr %i.j, align 4, !tbaa !54
  %.not.i.i.i.i.i = icmp ult i32 %i.i, %i.k
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d, !prof !121

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

bb.e:                                             ; preds = %bb.c
  %i.l = zext i32 %i.i to i64
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !52
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  %i.o = load i32, ptr %i.h, align 8, !tbaa !53
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.h, align 8, !tbaa !53
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %.pr = load ptr, ptr %8, align 8, !tbaa !113
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %8) #27
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread: ; preds = %bb.b, %bb.f, %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 200 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !114, !range !115, !noundef !116
  %i.s = trunc nuw i8 %i.r to i1
  store i8 0, ptr %i.q, align 8, !tbaa !114
  br i1 %i.s, label %bb.g, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.g:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.t) #27
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.u

bb.h:                                             ; preds = %bb.a
  %i.u = call ptr @_ZNK4mlir14DictionaryAttr3getEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr nonnull @.str.16, i64 10) #27 ; 4 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.u, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !245
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i5 = load ptr, ptr %i.w, align 8, !tbaa !246
  %i.x = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i5, @_ZN4mlir6detail14TypeIDResolverINS_9ArrayAttrEvE2idE
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = ptrtoint ptr %i.u to i64
  store i64 %i.y, ptr %0, align 8
  br label %bb.u

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  call void %2(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %9, i64 noundef %3) #27, !inline_history !12
  %i.z = load ptr, ptr %9, align 8, !tbaa !113
  %.not.i.i7 = icmp eq ptr %i.z, null
  br i1 %.not.i.i7, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store i32 3, ptr %5, align 8, !tbaa !233
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.17, ptr %i.ab, align 8, !tbaa !235
  %.sroa.2.0..sroa_idx.i.i.i.i.i8 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 55, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i8, align 8, !tbaa !57
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 6 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !53 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 36 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !54
  %.not.i.i.i.i.i9 = icmp ult i32 %i.ad, %i.af
  br i1 %.not.i.i.i.i.i9, label %bb.n, label %bb.m, !prof !121

bb.m:                                             ; preds = %bb.l
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA56_KcEEOS0_OT_.exit

bb.n:                                             ; preds = %bb.l
  %i.ag = zext i32 %i.ad to i64
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !52
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  %i.aj = load i32, ptr %i.ac, align 8, !tbaa !53
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ac, align 8, !tbaa !53
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA56_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA56_KcEEOS0_OT_.exit: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %.pr21 = load ptr, ptr %9, align 8, !tbaa !113
  %.not.i.i10 = icmp eq ptr %.pr21, null
  br i1 %.not.i.i10, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread, label %bb.o

bb.o:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA56_KcEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @_ZN4mlir18DiagnosticArgumentC1ENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr nonnull %i.u) #27
  %i.al = load i32, ptr %i.ac, align 8, !tbaa !53 ; 2 uses
  %i.am = load i32, ptr %i.ae, align 4, !tbaa !54
  %.not.i.i.i.i.i11 = icmp ult i32 %i.al, %i.am
  br i1 %.not.i.i.i.i.i11, label %bb.q, label %bb.p, !prof !121

bb.p:                                             ; preds = %bb.o
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit

bb.q:                                             ; preds = %bb.o
  %i.an = zext i32 %i.al to i64
  %i.ao = load ptr, ptr %i.aa, align 8, !tbaa !52
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.aq = load i32, ptr %i.ac, align 8, !tbaa !53
  %i.ar = add i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ac, align 8, !tbaa !53
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %.pr23 = load ptr, ptr %9, align 8, !tbaa !113
  %.not.i12 = icmp eq ptr %.pr23, null
  br i1 %.not.i12, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %9) #27
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread

_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread: ; preds = %bb.k, %_ZNO4mlir18InFlightDiagnosticlsIRA56_KcEEOS0_OT_.exit, %bb.r, %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 200 ; 2 uses
  %i.at = load i8, ptr %i.as, align 8, !tbaa !114, !range !115, !noundef !116
  %i.au = trunc nuw i8 %i.at to i1
  store i8 0, ptr %i.as, align 8, !tbaa !114
  br i1 %i.au, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.av) #27
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %bb.u

bb.u:                                             ; preds = %bb.j, %bb.h, %bb.t, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.0.3 = phi i8 [ 0, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 0, %bb.t ], [ 1, %bb.h ], [ 1, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  ret i8 %.sroa.0.3
}

end_hunk_4
begin_hunk_5_@_ZN4mlir9transform28TestTileUsingForallOpAdaptor6verifyENS_8LocationE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #27
  br label %bb.as

bb.as:                                            ; preds = %.sink.split228, %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform28TestTileUsingForallOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit"
  %.not77 = icmp eq i64 %i.e, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #27
  br i1 %.not77, label %.critedge4, label %bb.at

bb.at:                                            ; preds = %bb.as
  store ptr %i.f, ptr %36, align 8
  %i.er = call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %36) #27
  %i.es = extractvalue { ptr, i64 } %i.er, 0      ; 3 uses
  %i.et = call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %36) #27 ; 2 uses
  %i.eu = extractvalue { ptr, i64 } %i.et, 0
  %i.ev = extractvalue { ptr, i64 } %i.et, 1
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.ev ; 2 uses
  %i.ex = ptrtoint ptr %i.ew to i64               ; 2 uses
  %i.ey = ptrtoint ptr %i.es to i64
  %i.ez = sub i64 %i.ex, %i.ey                    ; 2 uses
  %i.fa = ashr i64 %i.ez, 5                       ; 2 uses
  %i.fb = icmp sgt i64 %i.fa, 0
  br i1 %i.fb, label %.lr.ph.i.i.i.i.i60, label %._crit_edge.i.i.i.i.i52

.lr.ph.i.i.i.i.i60:                               ; preds = %bb.at, %bb.ax
  %.044.i.i.i.i.i = phi i64 [ %i.fk, %bb.ax ], [ %i.fa, %bb.at ] ; 2 uses
  %.02943.i.i.i.i.i = phi ptr [ %i.fj, %bb.ax ], [ %i.es, %bb.at ] ; 9 uses
  %.029.val32.i.i.i.i.i61 = load ptr, ptr %.02943.i.i.i.i.i, align 8, !tbaa !55
  %i.fc = call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform28TestTileUsingForallOpAdaptor6verifyENS2_8LocationEE3$_2EclIPKNS2_9AttributeEEEbT_"(ptr %.029.val32.i.i.i.i.i61)
  br i1 %i.fc, label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform28TestTileUsingForallOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit", label %bb.au

bb.au:                                            ; preds = %.lr.ph.i.i.i.i.i60
  %i.fd = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i, i64 8
  %.val31.i.i.i.i.i62 = load ptr, ptr %i.fd, align 8, !tbaa !55
  %i.fe = call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform28TestTileUsingForallOpAdaptor6verifyENS2_8LocationEE3$_2EclIPKNS2_9AttributeEEEbT_"(ptr %.val31.i.i.i.i.i62)
  br i1 %i.fe, label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform28TestTileUsingForallOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit.loopexit.split.loop.exit", label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ff = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i, i64 16
  %.val30.i.i.i.i.i63 = load ptr, ptr %i.ff, align 8, !tbaa !55
  %i.fg = call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform28TestTileUsingForallOpAdaptor6verifyENS2_8LocationEE3$_2EclIPKNS2_9AttributeEEEbT_"(ptr %.val30.i.i.i.i.i63)
  br i1 %i.fg, label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform28TestTileUsingForallOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit.loopexit.split.loop.exit220", label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fh = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i, i64 24
  %.val.i.i.i.i.i64 = load ptr, ptr %i.fh, align 8, !tbaa !55
  %i.fi = call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform28TestTileUsingForallOpAdaptor6verifyENS2_8LocationEE3$_2EclIPKNS2_9AttributeEEEbT_"(ptr %.val.i.i.i.i.i64)
  br i1 %i.fi, label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform28TestTileUsingForallOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit.loopexit.split.loop.exit222", label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fj = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i, i64 32 ; 3 uses
  %i.fk = add nsw i64 %.044.i.i.i.i.i, -1
  %i.fl = icmp sgt i64 %.044.i.i.i.i.i, 1
  br i1 %i.fl, label %.lr.ph.i.i.i.i.i60, label %._crit_edge.loopexit.i.i.i.i.i65, !llvm.loop !1002

._crit_edge.loopexit.i.i.i.i.i65:                 ; preds = %bb.ax
  %.pre.i.i.i.i.i66 = ptrtoint ptr %i.fj to i64
  %.pre49.i.i.i.i.i = sub i64 %i.ex, %.pre.i.i.i.i.i66
  br label %._crit_edge.i.i.i.i.i52

._crit_edge.i.i.i.i.i52:                          ; preds = %._crit_edge.loopexit.i.i.i.i.i65, %bb.at
  %.pre-phi50.i.i.i.i.i = phi i64 [ %.pre49.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i65 ], [ %i.ez, %bb.at ]
  %.029.lcssa.i.i.i.i.i53 = phi ptr [ %i.fj, %._crit_edge.loopexit.i.i.i.i.i65 ], [ %i.es, %bb.at ] ; 5 uses
  %i.fm = ashr exact i64 %.pre-phi50.i.i.i.i.i, 3
  switch i64 %i.fm, label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform28TestTileUsingForallOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit.thread" [
    i64 3, label %bb.ay
    i64 2, label %bb.ba
    i64 1, label %bb.bc
  ]

bb.ay:                                            ; preds = %._crit_edge.i.i.i.i.i52
  %.029.val.i.i.i.i.i59 = load ptr, ptr %.029.lcssa.i.i.i.i.i53, align 8, !tbaa !55
  %i.fn = call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform28TestTileUsingForallOpAdaptor6verifyENS2_8LocationEE3$_2EclIPKNS2_9AttributeEEEbT_"(ptr %.029.val.i.i.i.i.i59)
  br i1 %i.fn, label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform28TestTileUsingForallOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit", label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fo = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i53, i64 8
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %._crit_edge.i.i.i.i.i52
  %.1.i.i.i.i.i57 = phi ptr [ %i.fo, %bb.az ], [ %.029.lcssa.i.i.i.i.i53, %._crit_edge.i.i.i.i.i52 ] ; 3 uses
  %.1.val.i.i.i.i.i58 = load ptr, ptr %.1.i.i.i.i.i57, align 8, !tbaa !55
  %i.fp = call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform28TestTileUsingForallOpAdaptor6verifyENS2_8LocationEE3$_2EclIPKNS2_9AttributeEEEbT_"(ptr %.1.val.i.i.i.i.i58)
  br i1 %i.fp, label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform28TestTileUsingForallOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit", label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fq = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i57, i64 8
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %._crit_edge.i.i.i.i.i52
  %.2.i.i.i.i.i54 = phi ptr [ %i.fq, %bb.bb ], [ %.029.lcssa.i.i.i.i.i53, %._crit_edge.i.i.i.i.i52 ] ; 2 uses
  %.2.val.i.i.i.i.i55 = load ptr, ptr %.2.i.i.i.i.i54, align 8, !tbaa !55
  %i.fr = call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform28TestTileUsingForallOpAdaptor6verifyENS2_8LocationEE3$_2EclIPKNS2_9AttributeEEEbT_"(ptr %.2.val.i.i.i.i.i55)
  br i1 %i.fr, label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform28TestTileUsingForallOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit", label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform28TestTileUsingForallOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit.thread"

"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform28TestTileUsingForallOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit.thread": ; preds = %._crit_edge.i.i.i.i.i52, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #27
  br label %bb.bh

"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform28TestTileUsingForallOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit.loopexit.split.loop.exit": ; preds = %bb.au
  %i.fs = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i, i64 8
  br label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform28TestTileUsingForallOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit"

"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform28TestTileUsingForallOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit.loopexit.split.loop.exit220": ; preds = %bb.av
  %i.ft = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i, i64 16
  br label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform28TestTileUsingForallOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit"

"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform28TestTileUsingForallOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit.loopexit.split.loop.exit222": ; preds = %bb.aw
  %i.fu = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i, i64 24
  br label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform28TestTileUsingForallOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit"

"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform28TestTileUsingForallOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit": ; preds = %.lr.ph.i.i.i.i.i60, %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform28TestTileUsingForallOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit.loopexit.split.loop.exit", %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform28TestTileUsingForallOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit.loopexit.split.loop.exit220", %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform28TestTileUsingForallOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit.loopexit.split.loop.exit222", %bb.ay, %bb.ba, %bb.bc
  %.028.i.i.i.i.i56 = phi ptr [ %.1.i.i.i.i.i57, %bb.ba ], [ %.029.lcssa.i.i.i.i.i53, %bb.ay ], [ %.2.i.i.i.i.i54, %bb.bc ], [ %i.fu, %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform28TestTileUsingForallOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit.loopexit.split.loop.exit222" ], [ %i.ft, %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform28TestTileUsingForallOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit.loopexit.split.loop.exit220" ], [ %i.fs, %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform28TestTileUsingForallOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit.loopexit.split.loop.exit" ], [ %.02943.i.i.i.i.i, %.lr.ph.i.i.i.i.i60 ]
  %.not78 = icmp eq ptr %i.ew, %.028.i.i.i.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #27
  br i1 %.not78, label %bb.bh, label %bb.bd

bb.bd:                                            ; preds = %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform28TestTileUsingForallOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #27
  %i.fv = getelementptr inbounds nuw i8, ptr %38, i64 32
  %i.fw = getelementptr inbounds nuw i8, ptr %38, i64 33
  store i8 1, ptr %i.fw, align 1, !tbaa !103
  store ptr @.str.57, ptr %38, align 8, !tbaa !104
  store i8 3, ptr %i.fv, align 8, !tbaa !105
  call void @_ZN4mlir9emitErrorENS_8LocationERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %37, ptr %1, ptr noundef nonnull align 8 dereferenceable(34) %38) #27
  %i.fx = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %37) #27
  %i.fy = load ptr, ptr %37, align 8, !tbaa !113
  %.not.i67 = icmp eq ptr %i.fy, null
  br i1 %.not.i67, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %37) #27
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.fz = getelementptr inbounds nuw i8, ptr %37, i64 200 ; 2 uses
  %i.ga = load i8, ptr %i.fz, align 8, !tbaa !114, !range !115, !noundef !116
  %i.gb = trunc nuw i8 %i.ga to i1
  store i8 0, ptr %i.fz, align 8, !tbaa !114
  br i1 %i.gb, label %bb.bg, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit68

bb.bg:                                            ; preds = %bb.bf
  %i.gc = getelementptr inbounds nuw i8, ptr %37, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.gc) #27
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit68

_ZN4mlir18InFlightDiagnosticD2Ev.exit68:          ; preds = %bb.bf, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #27
  br label %bb.bh

.critedge4:                                       ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #27
  br label %bb.bh

bb.bh:                                            ; preds = %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform28TestTileUsingForallOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit", %.critedge4, %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform28TestTileUsingForallOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit.thread", %_ZN4mlir18InFlightDiagnosticD2Ev.exit68, %_ZN4mlir18InFlightDiagnosticD2Ev.exit50, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.08.0 = phi i8 [ %i.bu, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ %i.el, %_ZN4mlir18InFlightDiagnosticD2Ev.exit50 ], [ %i.fx, %_ZN4mlir18InFlightDiagnosticD2Ev.exit68 ], [ 1, %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform28TestTileUsingForallOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit.thread" ], [ 1, %.critedge4 ], [ 1, %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform28TestTileUsingForallOpAdaptor6verifyENS1_8LocationEE3$_2EEbOT_T0_.exit" ]
  ret i8 %.sroa.08.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform21TestTileUsingForallOp17getAsmResultNamesEN4llvm12function_refIFvNS_5ValueENS2_9StringRefEEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree readonly captures(none) %1, i64 %2) local_unnamed_addr #0 align 2 {
_ZN4mlir9transform21TestTileUsingForallOp13getODSResultsEj.exit:
  %i.a = load ptr, ptr %0, align 8, !tbaa !47
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -16
  %i.c = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 noundef 0) #27
  tail call void %1(i64 noundef %2, ptr %i.c, ptr nonnull @.str.58, i64 8) #27, !inline_history !11
  %i.d = load ptr, ptr %0, align 8, !tbaa !47     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.f = load i32, ptr %i.e, align 4, !tbaa !152
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 -16
  %i.h = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 noundef 1) #27
  %i.i = icmp eq i32 %i.f, 1
  br i1 %i.i, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZN4mlir9transform21TestTileUsingForallOp13getODSResultsEj.exit
  %i.j = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 noundef 0) #27
  tail call void %1(i64 noundef %2, ptr %i.j, ptr nonnull @.str.12, i64 5) #27, !inline_history !11
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZN4mlir9transform21TestTileUsingForallOp13getODSResultsEj.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @_ZN4mlir9transform21TestTileUsingForallOp26getODSResultIndexAndLengthEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader18, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i32 %1, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.b, %vector.body ]
  %vec.phi17 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %2 = icmp eq <4 x i32> %vec.phi17, splat (i32 1)
  %i.a = zext <4 x i1> %2 to <4 x i32>
  %i.b = add <4 x i32> %vec.phi, %i.a             ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.phi17, splat (i32 8)
  %i.c = icmp eq i32 %index.next, %n.vec
  br i1 %i.c, label %middle.block, label %vector.body, !llvm.loop !1003

middle.block:                                     ; preds = %vector.body
  %i.d = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.b) ; 2 uses
  %cmp.n = icmp eq i32 %1, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader18

.lr.ph.preheader18:                               ; preds = %.lr.ph.preheader, %middle.block
  %.014.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.d, %middle.block ]
  %.01013.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.d, %middle.block ], [ %spec.select, %.lr.ph ]
  %i.e = load ptr, ptr %0, align 8, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.g = load i32, ptr %i.f, align 4, !tbaa !152  ; 2 uses
  %i.h = add i32 %i.g, -1
  %i.i = add i32 %i.g, -2
  %i.j = mul nsw i32 %i.i, %.0.lcssa
  %i.k = add i32 %i.j, %1
  %3 = icmp eq i32 %1, 1
  %4 = select i1 %3, i32 %i.h, i32 1
  %i.l = zext i32 %4 to i64
  %i.m = shl nuw i64 %i.l, 32
  %.sroa.0.0.insert.ext = zext i32 %i.k to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %i.m, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert

.lr.ph:                                           ; preds = %.lr.ph.preheader18, %.lr.ph
  %.014 = phi i32 [ %spec.select, %.lr.ph ], [ %.014.ph, %.lr.ph.preheader18 ]
  %.01013 = phi i32 [ %i.o, %.lr.ph ], [ %.01013.ph, %.lr.ph.preheader18 ] ; 2 uses
  %5 = icmp eq i32 %.01013, 1
  %i.n = zext i1 %5 to i32
  %spec.select = add nuw nsw i32 %.014, %i.n      ; 2 uses
  %i.o = add nuw i32 %.01013, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.o, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1004
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir9transform21TestTileUsingForallOp21setPropertiesFromAttrERNS0_6detail39TestTileUsingForallOpGenericAdaptorBase10PropertiesENS_9AttributeEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) %0, ptr %1, ptr nofree readonly captures(none) %2, i64 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %5 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %6 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %7 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %8 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %9 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %10 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %11 = alloca %"class.mlir::DictionaryAttr", align 8 ; 6 uses
  %12 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %13 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  %14 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  %15 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  %i.a = load ptr, ptr %1, align 8, !tbaa !245
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !246
  %i.c = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_14DictionaryAttrEvE2idE
  %spec.select.i.i = select i1 %i.c, ptr %1, ptr null ; 2 uses
  store ptr %spec.select.i.i, ptr %11, align 8
  %i.d = icmp eq ptr %spec.select.i.i, null
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  call void %2(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %12, i64 noundef %3) #27, !inline_history !12
  %i.e = load ptr, ptr %12, align 8, !tbaa !113
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  store i32 3, ptr %10, align 8, !tbaa !233
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr @.str.13, ptr %i.g, align 8, !tbaa !235
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 41, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !57
  %i.h = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !53   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %12, i64 36
  %i.k = load i32, ptr %i.j, align 4, !tbaa !54
  %.not.i.i.i.i.i = icmp ult i32 %i.i, %i.k
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d, !prof !121

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %10)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

bb.e:                                             ; preds = %bb.c
  %i.l = zext i32 %i.i to i64
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !52
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false)
  %i.o = load i32, ptr %i.h, align 8, !tbaa !53
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.h, align 8, !tbaa !53
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  %.pr = load ptr, ptr %12, align 8, !tbaa !113
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %12) #27
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread: ; preds = %bb.b, %bb.f, %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %12, i64 200 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !114, !range !115, !noundef !116
  %i.s = trunc nuw i8 %i.r to i1
  store i8 0, ptr %i.q, align 8, !tbaa !114
  br i1 %i.s, label %bb.g, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.g:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread
  %i.t = getelementptr inbounds nuw i8, ptr %12, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.t) #27
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br label %bb.au

bb.h:                                             ; preds = %bb.a
  %i.u = call ptr @_ZNK4mlir14DictionaryAttr3getEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr nonnull @.str.23, i64 11) #27 ; 4 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.u, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !245
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i19 = load ptr, ptr %i.w, align 8, !tbaa !246
  %i.x = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i19, @_ZN4mlir6detail14TypeIDResolverINS_9ArrayAttrEvE2idE
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = ptrtoint ptr %i.u to i64
  store i64 %i.y, ptr %0, align 8
  br label %bb.u

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  call void %2(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %13, i64 noundef %3) #27, !inline_history !12
  %i.z = load ptr, ptr %13, align 8, !tbaa !113
  %.not.i.i21 = icmp eq ptr %i.z, null
  br i1 %.not.i.i21, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  store i32 3, ptr %9, align 8, !tbaa !233
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr @.str.46, ptr %i.ab, align 8, !tbaa !235
  %.sroa.2.0..sroa_idx.i.i.i.i.i22 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 56, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i22, align 8, !tbaa !57
  %i.ac = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 6 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !53 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %13, i64 36 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !54
  %.not.i.i.i.i.i23 = icmp ult i32 %i.ad, %i.af
  br i1 %.not.i.i.i.i.i23, label %bb.n, label %bb.m, !prof !121

bb.m:                                             ; preds = %bb.l
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %9)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA57_KcEEOS0_OT_.exit

bb.n:                                             ; preds = %bb.l
  %i.ag = zext i32 %i.ad to i64
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !52
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false)
  %i.aj = load i32, ptr %i.ac, align 8, !tbaa !53
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ac, align 8, !tbaa !53
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA57_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA57_KcEEOS0_OT_.exit: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %.pr73 = load ptr, ptr %13, align 8, !tbaa !113
  %.not.i.i24 = icmp eq ptr %.pr73, null
  br i1 %.not.i.i24, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread, label %bb.o

bb.o:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA57_KcEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @_ZN4mlir18DiagnosticArgumentC1ENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr nonnull %i.u) #27
  %i.al = load i32, ptr %i.ac, align 8, !tbaa !53 ; 2 uses
  %i.am = load i32, ptr %i.ae, align 4, !tbaa !54
  %.not.i.i.i.i.i25 = icmp ult i32 %i.al, %i.am
  br i1 %.not.i.i.i.i.i25, label %bb.q, label %bb.p, !prof !121

bb.p:                                             ; preds = %bb.o
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %8)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit

bb.q:                                             ; preds = %bb.o
  %i.an = zext i32 %i.al to i64
  %i.ao = load ptr, ptr %i.aa, align 8, !tbaa !52
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false)
  %i.aq = load i32, ptr %i.ac, align 8, !tbaa !53
  %i.ar = add i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ac, align 8, !tbaa !53
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %.pr75 = load ptr, ptr %13, align 8, !tbaa !113
  %.not.i26 = icmp eq ptr %.pr75, null
  br i1 %.not.i26, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %13) #27
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread

_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread: ; preds = %bb.k, %_ZNO4mlir18InFlightDiagnosticlsIRA57_KcEEOS0_OT_.exit, %bb.r, %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit
  %i.as = getelementptr inbounds nuw i8, ptr %13, i64 200 ; 2 uses
  %i.at = load i8, ptr %i.as, align 8, !tbaa !114, !range !115, !noundef !116
  %i.au = trunc nuw i8 %i.at to i1
  store i8 0, ptr %i.as, align 8, !tbaa !114
  br i1 %i.au, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread
  %i.av = getelementptr inbounds nuw i8, ptr %13, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.av) #27
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %bb.au

end_hunk_5
