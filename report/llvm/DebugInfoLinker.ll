Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DebugInfoLinker?download=true
inline.NumInlined: 2241
inline.NumDeleted: 1207
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4llvm9dwarfutil17ObjFileAddressMap18isDeadAddressRangeEmSt8optionalImEtNS0_13TombstoneKindEh:bb.a
bb.p:                                             ; preds = %bb.n, %.thread.i64
  %i.ay = phi i32 [ %i.ar, %.thread.i64 ], [ %i.av, %bb.n ] ; 2 uses
  %i.az = phi ptr [ %i.ap, %.thread.i64 ], [ %i.at, %bb.n ] ; 6 uses
  %.not.i.i.i.i.i37 = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i.i.i.i37, label %_ZN4llvm15partition_pointIRKNS_11SmallVectorINS_12AddressRangeELj3EEEZNKS_17AddressRangesBaseIS2_E4findEmmEUlRKS2_E_S9_EEDaOT_T0_.exit.thread.i.i.i.i62, label %_ZSt9__advanceIPKN4llvm12AddressRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.preheader.i.i.i.i.i38

_ZSt9__advanceIPKN4llvm12AddressRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.preheader.i.i.i.i.i38: ; preds = %bb.p
  %i.ba = zext i32 %i.ay to i64                   ; 4 uses
  br label %_ZSt9__advanceIPKN4llvm12AddressRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i39

_ZSt9__advanceIPKN4llvm12AddressRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i39: ; preds = %_ZSt9__advanceIPKN4llvm12AddressRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i39, %_ZSt9__advanceIPKN4llvm12AddressRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.preheader.i.i.i.i.i38
  %.016.i.i.i.i.i.i40 = phi i64 [ %.1.i.i.i.i.i.i47, %_ZSt9__advanceIPKN4llvm12AddressRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i39 ], [ %i.ba, %_ZSt9__advanceIPKN4llvm12AddressRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.preheader.i.i.i.i.i38 ] ; 2 uses
  %.01015.i.i.i.i.i.i41 = phi ptr [ %.111.i.i.i.i.i.i46, %_ZSt9__advanceIPKN4llvm12AddressRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i39 ], [ %i.az, %_ZSt9__advanceIPKN4llvm12AddressRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.preheader.i.i.i.i.i38 ] ; 2 uses
  %i.bb = lshr i64 %.016.i.i.i.i.i.i40, 1         ; 3 uses
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %.01015.i.i.i.i.i.i41, i64 %i.bb ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i44 = load i64, ptr %i.bc, align 8, !tbaa !66, !noalias !471
  %.not.i.i.i.i.i.i45 = icmp ugt i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i44, %1 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = xor i64 %i.bb, -1
  %i.bf = add nsw i64 %.016.i.i.i.i.i.i40, %i.be
  %.111.i.i.i.i.i.i46 = select i1 %.not.i.i.i.i.i.i45, ptr %.01015.i.i.i.i.i.i41, ptr %i.bd ; 4 uses
  %.1.i.i.i.i.i.i47 = select i1 %.not.i.i.i.i.i.i45, i64 %i.bb, i64 %i.bf ; 2 uses
  %i.bg = icmp sgt i64 %.1.i.i.i.i.i.i47, 0
  br i1 %i.bg, label %_ZSt9__advanceIPKN4llvm12AddressRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i39, label %_ZN4llvm15partition_pointIRKNS_11SmallVectorINS_12AddressRangeELj3EEEZNKS_17AddressRangesBaseIS2_E4findEmmEUlRKS2_E_S9_EEDaOT_T0_.exit.i.i.i.i48, !llvm.loop !11

_ZN4llvm15partition_pointIRKNS_11SmallVectorINS_12AddressRangeELj3EEEZNKS_17AddressRangesBaseIS2_E4findEmmEUlRKS2_E_S9_EEDaOT_T0_.exit.i.i.i.i48: ; preds = %_ZSt9__advanceIPKN4llvm12AddressRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i39
  %i.bh = icmp eq ptr %.111.i.i.i.i.i.i46, %i.az
  br i1 %i.bh, label %_ZN4llvm15partition_pointIRKNS_11SmallVectorINS_12AddressRangeELj3EEEZNKS_17AddressRangesBaseIS2_E4findEmmEUlRKS2_E_S9_EEDaOT_T0_.exit.thread.i.i.i.i62, label %bb.q

_ZN4llvm15partition_pointIRKNS_11SmallVectorINS_12AddressRangeELj3EEEZNKS_17AddressRangesBaseIS2_E4findEmmEUlRKS2_E_S9_EEDaOT_T0_.exit.thread.i.i.i.i62: ; preds = %_ZN4llvm15partition_pointIRKNS_11SmallVectorINS_12AddressRangeELj3EEEZNKS_17AddressRangesBaseIS2_E4findEmmEUlRKS2_E_S9_EEDaOT_T0_.exit.i.i.i.i48, %bb.p
  %.pre.pre-phi.i.i.i63 = phi i64 [ %i.ba, %_ZN4llvm15partition_pointIRKNS_11SmallVectorINS_12AddressRangeELj3EEEZNKS_17AddressRangesBaseIS2_E4findEmmEUlRKS2_E_S9_EEDaOT_T0_.exit.i.i.i.i48 ], [ 0, %bb.p ] ; 2 uses
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %.pre.pre-phi.i.i.i63
  br label %_ZNK4llvm17AddressRangesBaseINS_12AddressRangeEE4findEmm.exit.i.i.i53

bb.q:                                             ; preds = %_ZN4llvm15partition_pointIRKNS_11SmallVectorINS_12AddressRangeELj3EEEZNKS_17AddressRangesBaseIS2_E4findEmmEUlRKS2_E_S9_EEDaOT_T0_.exit.i.i.i.i48
  %i.bj = getelementptr inbounds i8, ptr %.111.i.i.i.i.i.i46, i64 -16
  %.sroa.3.0..sroa_idx.i.i.i.i49 = getelementptr inbounds i8, ptr %.111.i.i.i.i.i.i46, i64 -8
  %.sroa.3.0.copyload.i.i.i.i50 = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i.i49, align 8, !tbaa !66, !noalias !471
  %.not.i.i.i51 = icmp ult i64 %1, %.sroa.3.0.copyload.i.i.i.i50
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.ba
  %spec.select.i.i.i.i52 = select i1 %.not.i.i.i51, ptr %i.bj, ptr %i.bk
  br label %_ZNK4llvm17AddressRangesBaseINS_12AddressRangeEE4findEmm.exit.i.i.i53

_ZNK4llvm17AddressRangesBaseINS_12AddressRangeEE4findEmm.exit.i.i.i53: ; preds = %bb.q, %_ZN4llvm15partition_pointIRKNS_11SmallVectorINS_12AddressRangeELj3EEEZNKS_17AddressRangesBaseIS2_E4findEmmEUlRKS2_E_S9_EEDaOT_T0_.exit.thread.i.i.i.i62, %bb.o
  %i.bl = phi ptr [ %i.at, %bb.o ], [ %i.az, %_ZN4llvm15partition_pointIRKNS_11SmallVectorINS_12AddressRangeELj3EEEZNKS_17AddressRangesBaseIS2_E4findEmmEUlRKS2_E_S9_EEDaOT_T0_.exit.thread.i.i.i.i62 ], [ %i.az, %bb.q ]
  %.pre-phi.i.i.i54 = phi i64 [ %i.aw, %bb.o ], [ %.pre.pre-phi.i.i.i63, %_ZN4llvm15partition_pointIRKNS_11SmallVectorINS_12AddressRangeELj3EEEZNKS_17AddressRangesBaseIS2_E4findEmmEUlRKS2_E_S9_EEDaOT_T0_.exit.thread.i.i.i.i62 ], [ %i.ba, %bb.q ]
  %.1.i.i.i.i55 = phi ptr [ %i.ax, %bb.o ], [ %i.bi, %_ZN4llvm15partition_pointIRKNS_11SmallVectorINS_12AddressRangeELj3EEEZNKS_17AddressRangesBaseIS2_E4findEmmEUlRKS2_E_S9_EEDaOT_T0_.exit.thread.i.i.i.i62 ], [ %spec.select.i.i.i.i52, %bb.q ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %.pre-phi.i.i.i54
  %i.bn = icmp ne ptr %.1.i.i.i.i55, %i.bm        ; 2 uses
  br i1 %i.bn, label %bb.r, label %_ZN4llvm9dwarfutil17ObjFileAddressMap21isBFDDeadAddressRangeEmSt8optionalImEt.exit65

bb.r:                                             ; preds = %_ZNK4llvm17AddressRangesBaseINS_12AddressRangeEE4findEmm.exit.i.i.i53
  %.sroa.3.0..1.i.i.sroa_idx.i.i60 = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i55, i64 8
  %.sroa.3.0.copyload.i.i61 = load i64, ptr %.sroa.3.0..1.i.i.sroa_idx.i.i60, align 8, !tbaa !66
  %i.bo = icmp uge i64 %.sroa.3.0.copyload.i.i61, %2
  br label %_ZN4llvm9dwarfutil17ObjFileAddressMap21isBFDDeadAddressRangeEmSt8optionalImEt.exit65

_ZN4llvm9dwarfutil17ObjFileAddressMap21isBFDDeadAddressRangeEmSt8optionalImEt.exit65: ; preds = %_ZNK4llvm17AddressRangesBaseINS_12AddressRangeEE4findEmm.exit.i.i.i53, %bb.r
  %spec.select.i.i57 = phi i1 [ false, %_ZNK4llvm17AddressRangesBaseINS_12AddressRangeEE4findEmm.exit.i.i.i53 ], [ %i.bo, %bb.r ]
  %.0.i.i58 = select i1 %i.al, i1 %spec.select.i.i57, i1 %i.bn
  br i1 %.0.i.i58, label %bb.s, label %_ZN4llvm9dwarfutil17ObjFileAddressMap21isBFDDeadAddressRangeEmSt8optionalImEt.exit65.thread

bb.s:                                             ; preds = %_ZN4llvm9dwarfutil17ObjFileAddressMap21isBFDDeadAddressRangeEmSt8optionalImEt.exit65
  %i.bp = tail call noundef i64 @_ZN4llvm9dwarfutil17ObjFileAddressMap23isMAXPCDeadAddressRangeEmSt8optionalImEth(ptr noundef nonnull align 8 dereferenceable(81) %0, i64 noundef %1, i64 %2, i8 %3, i16 noundef zeroext %4, i8 noundef zeroext %6)
  %i.bq = icmp ne i64 %i.bp, 0
  br label %_ZN4llvm9dwarfutil17ObjFileAddressMap21isBFDDeadAddressRangeEmSt8optionalImEt.exit65.thread

bb.t:                                             ; preds = %bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not.i.not.i.i = icmp eq i64 %1, -1
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !81, !noalias !472 ; 6 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !82, !noalias !472 ; 3 uses
  br i1 %.not.i.not.i.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bv = zext i32 %i.bu to i64                   ; 2 uses
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bs, i64 %i.bv
  br label %_ZNK4llvm17AddressRangesBaseINS_12AddressRangeEE4findEmm.exit.i.i

bb.v:                                             ; preds = %bb.t
  %.not.i.i.i.i = icmp eq i32 %i.bu, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm15partition_pointIRKNS_11SmallVectorINS_12AddressRangeELj3EEEZNKS_17AddressRangesBaseIS2_E4findEmmEUlRKS2_E_S9_EEDaOT_T0_.exit.thread.i.i.i, label %_ZSt9__advanceIPKN4llvm12AddressRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.preheader.i.i.i.i

_ZSt9__advanceIPKN4llvm12AddressRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.preheader.i.i.i.i: ; preds = %bb.v
  %i.bx = zext i32 %i.bu to i64                   ; 4 uses
  br label %_ZSt9__advanceIPKN4llvm12AddressRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i

_ZSt9__advanceIPKN4llvm12AddressRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKN4llvm12AddressRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i, %_ZSt9__advanceIPKN4llvm12AddressRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.preheader.i.i.i.i
  %.016.i.i.i.i.i = phi i64 [ %.1.i.i.i.i.i, %_ZSt9__advanceIPKN4llvm12AddressRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i ], [ %i.bx, %_ZSt9__advanceIPKN4llvm12AddressRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.preheader.i.i.i.i ] ; 2 uses
  %.01015.i.i.i.i.i = phi ptr [ %.111.i.i.i.i.i, %_ZSt9__advanceIPKN4llvm12AddressRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i ], [ %i.bs, %_ZSt9__advanceIPKN4llvm12AddressRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.preheader.i.i.i.i ] ; 2 uses
  %i.by = lshr i64 %.016.i.i.i.i.i, 1             ; 3 uses
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %.01015.i.i.i.i.i, i64 %i.by ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.bz, align 8, !tbaa !66, !noalias !472
  %.not.i.i.i.i.i66 = icmp ugt i64 %.sroa.0.0.copyload.i.i.i.i.i.i, %1 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = xor i64 %i.by, -1
  %i.cc = add nsw i64 %.016.i.i.i.i.i, %i.cb
  %.111.i.i.i.i.i = select i1 %.not.i.i.i.i.i66, ptr %.01015.i.i.i.i.i, ptr %i.ca ; 4 uses
  %.1.i.i.i.i.i = select i1 %.not.i.i.i.i.i66, i64 %i.by, i64 %i.cc ; 2 uses
  %i.cd = icmp sgt i64 %.1.i.i.i.i.i, 0
  br i1 %i.cd, label %_ZSt9__advanceIPKN4llvm12AddressRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i, label %_ZN4llvm15partition_pointIRKNS_11SmallVectorINS_12AddressRangeELj3EEEZNKS_17AddressRangesBaseIS2_E4findEmmEUlRKS2_E_S9_EEDaOT_T0_.exit.i.i.i, !llvm.loop !11

_ZN4llvm15partition_pointIRKNS_11SmallVectorINS_12AddressRangeELj3EEEZNKS_17AddressRangesBaseIS2_E4findEmmEUlRKS2_E_S9_EEDaOT_T0_.exit.i.i.i: ; preds = %_ZSt9__advanceIPKN4llvm12AddressRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i
  %i.ce = icmp eq ptr %.111.i.i.i.i.i, %i.bs
  br i1 %i.ce, label %_ZN4llvm15partition_pointIRKNS_11SmallVectorINS_12AddressRangeELj3EEEZNKS_17AddressRangesBaseIS2_E4findEmmEUlRKS2_E_S9_EEDaOT_T0_.exit.thread.i.i.i, label %bb.w

_ZN4llvm15partition_pointIRKNS_11SmallVectorINS_12AddressRangeELj3EEEZNKS_17AddressRangesBaseIS2_E4findEmmEUlRKS2_E_S9_EEDaOT_T0_.exit.thread.i.i.i: ; preds = %_ZN4llvm15partition_pointIRKNS_11SmallVectorINS_12AddressRangeELj3EEEZNKS_17AddressRangesBaseIS2_E4findEmmEUlRKS2_E_S9_EEDaOT_T0_.exit.i.i.i, %bb.v
  %.pre.pre-phi.i.i = phi i64 [ %i.bx, %_ZN4llvm15partition_pointIRKNS_11SmallVectorINS_12AddressRangeELj3EEEZNKS_17AddressRangesBaseIS2_E4findEmmEUlRKS2_E_S9_EEDaOT_T0_.exit.i.i.i ], [ 0, %bb.v ] ; 2 uses
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.bs, i64 %.pre.pre-phi.i.i
  br label %_ZNK4llvm17AddressRangesBaseINS_12AddressRangeEE4findEmm.exit.i.i

bb.w:                                             ; preds = %_ZN4llvm15partition_pointIRKNS_11SmallVectorINS_12AddressRangeELj3EEEZNKS_17AddressRangesBaseIS2_E4findEmmEUlRKS2_E_S9_EEDaOT_T0_.exit.i.i.i
  %i.cg = getelementptr inbounds i8, ptr %.111.i.i.i.i.i, i64 -16
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %.111.i.i.i.i.i, i64 -8
  %.sroa.3.0.copyload.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !tbaa !66, !noalias !472
  %.not.i.i = icmp ult i64 %1, %.sroa.3.0.copyload.i.i.i
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %i.bs, i64 %i.bx
  %spec.select.i.i.i = select i1 %.not.i.i, ptr %i.cg, ptr %i.ch
  br label %_ZNK4llvm17AddressRangesBaseINS_12AddressRangeEE4findEmm.exit.i.i

_ZNK4llvm17AddressRangesBaseINS_12AddressRangeEE4findEmm.exit.i.i: ; preds = %bb.w, %_ZN4llvm15partition_pointIRKNS_11SmallVectorINS_12AddressRangeELj3EEEZNKS_17AddressRangesBaseIS2_E4findEmmEUlRKS2_E_S9_EEDaOT_T0_.exit.thread.i.i.i, %bb.u
  %.pre-phi.i.i = phi i64 [ %i.bv, %bb.u ], [ %.pre.pre-phi.i.i, %_ZN4llvm15partition_pointIRKNS_11SmallVectorINS_12AddressRangeELj3EEEZNKS_17AddressRangesBaseIS2_E4findEmmEUlRKS2_E_S9_EEDaOT_T0_.exit.thread.i.i.i ], [ %i.bx, %bb.w ]
  %.1.i.i.i = phi ptr [ %i.bw, %bb.u ], [ %i.cf, %_ZN4llvm15partition_pointIRKNS_11SmallVectorINS_12AddressRangeELj3EEEZNKS_17AddressRangesBaseIS2_E4findEmmEUlRKS2_E_S9_EEDaOT_T0_.exit.thread.i.i.i ], [ %spec.select.i.i.i, %bb.w ] ; 2 uses
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.bs, i64 %.pre-phi.i.i
  %i.cj = icmp ne ptr %.1.i.i.i, %i.ci            ; 2 uses
  br i1 %i.cj, label %bb.x, label %_ZN4llvm9dwarfutil17ObjFileAddressMap38isInsideExecutableSectionsAddressRangeEmSt8optionalImE.exit

bb.x:                                             ; preds = %_ZNK4llvm17AddressRangesBaseINS_12AddressRangeEE4findEmm.exit.i.i
  %.sroa.3.0..1.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 8
  %.sroa.3.0.copyload.i = load i64, ptr %.sroa.3.0..1.i.i.sroa_idx.i, align 8, !tbaa !66
  %i.ck = icmp uge i64 %.sroa.3.0.copyload.i, %2
  br label %_ZN4llvm9dwarfutil17ObjFileAddressMap38isInsideExecutableSectionsAddressRangeEmSt8optionalImE.exit

_ZN4llvm9dwarfutil17ObjFileAddressMap38isInsideExecutableSectionsAddressRangeEmSt8optionalImE.exit: ; preds = %_ZNK4llvm17AddressRangesBaseINS_12AddressRangeEE4findEmm.exit.i.i, %bb.x
  %spec.select.i = phi i1 [ false, %_ZNK4llvm17AddressRangesBaseINS_12AddressRangeEE4findEmm.exit.i.i ], [ %i.ck, %bb.x ]
  %i.cl = trunc nuw i8 %3 to i1
  %.0.i67 = select i1 %i.cl, i1 %spec.select.i, i1 %i.cj
  %i.cm = xor i1 %.0.i67, true
  br label %_ZN4llvm9dwarfutil17ObjFileAddressMap21isBFDDeadAddressRangeEmSt8optionalImEt.exit65.thread

bb.y:                                             ; preds = %bb.a
  unreachable

_ZN4llvm9dwarfutil17ObjFileAddressMap21isBFDDeadAddressRangeEmSt8optionalImEt.exit65.thread: ; preds = %_ZN4llvm9dwarfutil17ObjFileAddressMap38isInsideExecutableSectionsAddressRangeEmSt8optionalImE.exit.i, %bb.d, %bb.b, %bb.m, %bb.k, %_ZN4llvm9dwarfutil17ObjFileAddressMap21isBFDDeadAddressRangeEmSt8optionalImEt.exit65, %bb.s, %_ZN4llvm9dwarfutil17ObjFileAddressMap38isInsideExecutableSectionsAddressRangeEmSt8optionalImE.exit, %bb.j
  %.0 = phi i1 [ true, %bb.m ], [ %i.ai, %bb.j ], [ %i.cm, %_ZN4llvm9dwarfutil17ObjFileAddressMap38isInsideExecutableSectionsAddressRangeEmSt8optionalImE.exit ], [ true, %_ZN4llvm9dwarfutil17ObjFileAddressMap21isBFDDeadAddressRangeEmSt8optionalImEt.exit65 ], [ %i.bq, %bb.s ], [ true, %bb.k ], [ %i.ag, %_ZN4llvm9dwarfutil17ObjFileAddressMap38isInsideExecutableSectionsAddressRangeEmSt8optionalImE.exit.i ], [ true, %bb.b ], [ true, %bb.d ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm9dwarfutil17ObjFileAddressMapD2Ev(ptr noundef nonnull align 8 dead_on_return(81) dereferenceable(81) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4llvm9dwarfutil17ObjFileAddressMapE, i64 16), ptr %0, align 8, !tbaa !45
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm17AddressRangesBaseINS_12AddressRangeEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #15
  br label %_ZN4llvm17AddressRangesBaseINS_12AddressRangeEED2Ev.exit

_ZN4llvm17AddressRangesBaseINS_12AddressRangeEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm9dwarfutil17ObjFileAddressMapD0Ev(ptr noundef nonnull align 8 dereferenceable(81) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4llvm9dwarfutil17ObjFileAddressMapE, i64 16), ptr %0, align 8, !tbaa !45
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm9dwarfutil17ObjFileAddressMapD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #15, !inline_history !473
  br label %_ZN4llvm9dwarfutil17ObjFileAddressMapD2Ev.exit

_ZN4llvm9dwarfutil17ObjFileAddressMapD2Ev.exit:   ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm9dwarfutil17ObjFileAddressMap14hasValidRelocsEv(ptr noundef nonnull align 8 dereferenceable(81) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !tbaa !231, !range !31, !noundef !32
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i64, i8 } @_ZN4llvm9dwarfutil17ObjFileAddressMap31getExprOpAddressRelocAdjustmentERNS_9DWARFUnitERKNS_15DWARFExpression9OperationEmmb(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef nonnull align 8 dereferenceable(448) %1, ptr noundef nonnull align 8 dereferenceable(224) %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5) unnamed_addr #0 comdat align 2 {
bb.a:
  %6 = alloca %"class.std::optional.273", align 8 ; 6 uses
  %i.a = load i8, ptr %2, align 8, !tbaa !487
  switch i8 %i.a, label %7 [
    i8 10, label %bb.b
    i8 12, label %bb.b
    i8 14, label %bb.b
    i8 11, label %bb.b
    i8 13, label %bb.b
    i8 15, label %bb.b
    i8 3, label %bb.b
    i8 -94, label %bb.c
    i8 -95, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !81
  %i.d = load i64, ptr %i.c, align 8, !tbaa !66
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i16, ptr %i.e, align 8, !tbaa !240
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !244, !nonnull !32, !align !191
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 68
  %i.j = load i32, ptr %i.i, align 4, !tbaa !241
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.l = load i8, ptr %i.k, align 2, !tbaa !242
  %i.m = tail call noundef zeroext i1 @_ZN4llvm9dwarfutil17ObjFileAddressMap18isDeadAddressRangeEmSt8optionalImEtNS0_13TombstoneKindEh(ptr noundef nonnull align 8 dereferenceable(81) %0, i64 noundef %i.d, i64 undef, i8 0, i16 noundef zeroext %i.f, i32 noundef %i.j, i8 noundef zeroext %i.l)
  br i1 %i.m, label %7, label %bb.f

bb.c:                                             ; preds = %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !81
  %i.p = load i64, ptr %i.o, align 8, !tbaa !66
  %i.q = trunc i64 %i.p to i32
  call void @_ZNK4llvm9DWARFUnit24getAddrOffsetSectionItemEj(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.273") align 8 %6, ptr noundef nonnull align 8 dereferenceable(448) %1, i32 noundef %i.q) #15
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.s = load i8, ptr %i.r, align 8, !tbaa !489, !range !31, !noundef !32
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.u = load i64, ptr %6, align 8, !tbaa !491
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = load i16, ptr %i.v, align 8, !tbaa !240
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !244, !nonnull !32, !align !191
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 68
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !241
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.ac = load i8, ptr %i.ab, align 2, !tbaa !242
  %i.ad = call noundef zeroext i1 @_ZN4llvm9dwarfutil17ObjFileAddressMap18isDeadAddressRangeEmSt8optionalImEtNS0_13TombstoneKindEh(ptr noundef nonnull align 8 dereferenceable(81) %0, i64 noundef %i.u, i64 undef, i8 0, i16 noundef zeroext %i.w, i32 noundef %i.aa, i8 noundef zeroext %i.ac)
  br i1 %i.ad, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %7

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.f

7:                                                ; preds = %.thread, %bb.b, %bb.a
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b, %7
  %.sroa.3.1 = phi i8 [ 0, %7 ], [ 1, %bb.e ], [ 1, %bb.b ]
  %.fca.1.insert = insertvalue { i64, i8 } { i64 0, i8 poison }, i8 %.sroa.3.1, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i64, i8 } @_ZN4llvm9dwarfutil17ObjFileAddressMap28getSubprogramRelocAdjustmentERKNS_8DWARFDieEb(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.std::optional.349", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @_ZNK4llvm8DWARFDie4findENS_5dwarf9AttributeE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.349") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %1, i16 noundef zeroext 17) #15
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.b = load i8, ptr %i.a, align 8, !tbaa !493, !range !31, !noundef !32
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN4llvm5dwarf9toAddressERKSt8optionalINS_14DWARFFormValueEE.exit, label %_ZN4llvm5dwarf9toAddressERKSt8optionalINS_14DWARFFormValueEE.exit.thread

_ZN4llvm5dwarf9toAddressERKSt8optionalINS_14DWARFFormValueEE.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %bb.c

_ZN4llvm5dwarf9toAddressERKSt8optionalINS_14DWARFFormValueEE.exit: ; preds = %bb.a
  %i.d = call { i64, i8 } @_ZNK4llvm14DWARFFormValue12getAsAddressEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #15 ; 2 uses
  %i.e = extractvalue { i64, i8 } %i.d, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN4llvm5dwarf9toAddressERKSt8optionalINS_14DWARFFormValueEE.exit
  %i.g = extractvalue { i64, i8 } %i.d, 0
  %i.h = load ptr, ptr %1, align 8, !tbaa !495    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load i16, ptr %i.i, align 8, !tbaa !240
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !244, !nonnull !32, !align !191
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 68
  %i.n = load i32, ptr %i.m, align 4, !tbaa !241
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 34
  %i.p = load i8, ptr %i.o, align 2, !tbaa !242
  %i.q = call noundef zeroext i1 @_ZN4llvm9dwarfutil17ObjFileAddressMap18isDeadAddressRangeEmSt8optionalImEtNS0_13TombstoneKindEh(ptr noundef nonnull align 8 dereferenceable(81) %0, i64 noundef %i.g, i64 undef, i8 0, i16 noundef zeroext %i.j, i32 noundef %i.n, i8 noundef zeroext %i.p)
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %_ZN4llvm5dwarf9toAddressERKSt8optionalINS_14DWARFFormValueEE.exit, %_ZN4llvm5dwarf9toAddressERKSt8optionalINS_14DWARFFormValueEE.exit.thread
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.2.1 = phi i8 [ 0, %bb.c ], [ 1, %bb.b ]
  %.fca.1.insert = insertvalue { i64, i8 } { i64 0, i8 poison }, i8 %.sroa.2.1, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm9dwarfutil17ObjFileAddressMap21getLibraryInstallNameEv(ptr dead_on_unwind noalias writable sret(%"class.std::optional.303") align 8 %0, ptr noundef nonnull align 8 dereferenceable(81) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.a, align 8, !tbaa !497
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm9dwarfutil17ObjFileAddressMap16applyValidRelocsENS_15MutableArrayRefIcEEmb(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr %1, i64 %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm9dwarfutil17ObjFileAddressMap21needToSaveValidRelocsEv(ptr noundef nonnull align 8 dereferenceable(81) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm9dwarfutil17ObjFileAddressMap24updateAndSaveValidRelocsEbmlmm(ptr noundef nonnull align 8 dereferenceable(81) %0, i1 noundef zeroext %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm9dwarfutil17ObjFileAddressMap31updateRelocationsWithUnitOffsetEmm(ptr noundef nonnull align 8 dereferenceable(81) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm9dwarfutil17ObjFileAddressMap5clearEv(ptr noundef nonnull align 8 dereferenceable(81) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12dwarf_linker12AddressesMap26getAssemblyRangeForAddressEm(ptr dead_on_unwind noalias writable sret(%"class.std::optional.312") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.a, align 8, !tbaa !499
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvm15SmallVectorImplINS_12AddressRangeEE15insert_one_implIS1_EEPS1_S4_OT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !81     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !82   ; 2 uses
  %i.d = zext i32 %i.c to i64                     ; 3 uses
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.d ; 3 uses
  %i.f = icmp eq ptr %1, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !83
  %.not.i = icmp ult i32 %i.c, %i.h               ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load i64, ptr %2, align 8, !tbaa !66 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !66 ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !88

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_12AddressRangeELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload)
  %.pre12 = load i32, ptr %i.b, align 8, !tbaa !82
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_12AddressRangeELb1EE9push_backES1_.exit

bb.d:                                             ; preds = %bb.b
  store i64 %.sroa.0.0.copyload, ptr %i.e, align 1
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.2.0.copyload, ptr %.sroa.3.0..sroa_idx.i, align 1
  %i.i = load i32, ptr %i.b, align 8, !tbaa !82
  %i.j = add i32 %i.i, 1                          ; 2 uses
  store i32 %i.j, ptr %i.b, align 8, !tbaa !82
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_12AddressRangeELb1EE9push_backES1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_12AddressRangeELb1EE9push_backES1_.exit: ; preds = %bb.c, %bb.d
  %i.k = phi i32 [ %.pre12, %bb.c ], [ %i.j, %bb.d ]
  %i.l = load ptr, ptr %0, align 8, !tbaa !81
  %i.m = zext i32 %i.k to i64
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.m
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -16
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.p = ptrtoint ptr %1 to i64
  %i.q = ptrtoint ptr %i.a to i64
  %i.r = sub i64 %i.p, %i.q
  br i1 %.not.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_12AddressRangeELb1EE28reserveForParamAndGetAddressERS1_m.exit, label %bb.f, !prof !88

bb.f:                                             ; preds = %bb.e
  %i.s = add nuw nsw i64 %i.d, 1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.t, i64 noundef %i.s, i64 noundef 16) #15
  %.pre = load ptr, ptr %0, align 8, !tbaa !81
  %.pre11 = load i32, ptr %i.b, align 8, !tbaa !82
  %.pre13 = zext i32 %.pre11 to i64
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_12AddressRangeELb1EE28reserveForParamAndGetAddressERS1_m.exit

_ZN4llvm23SmallVectorTemplateBaseINS_12AddressRangeELb1EE28reserveForParamAndGetAddressERS1_m.exit: ; preds = %bb.e, %bb.f
  %.pre-phi = phi i64 [ %i.d, %bb.e ], [ %.pre13, %bb.f ]
  %i.u = phi ptr [ %i.a, %bb.e ], [ %.pre, %bb.f ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.r ; 5 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %.pre-phi ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false), !tbaa.struct !243
  %i.y = load ptr, ptr %0, align 8, !tbaa !81
  %i.z = load i32, ptr %i.b, align 8, !tbaa !82
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -16 ; 2 uses
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.v to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 3 uses
  %i.ag = ashr exact i64 %i.af, 4                 ; 2 uses
  %i.ah = icmp sgt i64 %i.ag, 1
  br i1 %i.ah, label %bb.g, label %bb.h, !prof !88

bb.g:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_12AddressRangeELb1EE28reserveForParamAndGetAddressERS1_m.exit
  %i.ai = sub nsw i64 0, %i.ag
  %i.aj = getelementptr inbounds [16 x i8], ptr %i.ab, i64 %i.ai
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aj, ptr nonnull align 8 %i.v, i64 %i.af, i1 false)
  br label %_ZSt13move_backwardIPN4llvm12AddressRangeES2_ET0_T_S4_S3_.exit

bb.h:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_12AddressRangeELb1EE28reserveForParamAndGetAddressERS1_m.exit
  %i.ak = icmp eq i64 %i.af, 16
  br i1 %i.ak, label %bb.i, label %_ZSt13move_backwardIPN4llvm12AddressRangeES2_ET0_T_S4_S3_.exit

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false), !tbaa.struct !243
  br label %_ZSt13move_backwardIPN4llvm12AddressRangeES2_ET0_T_S4_S3_.exit

_ZSt13move_backwardIPN4llvm12AddressRangeES2_ET0_T_S4_S3_.exit: ; preds = %bb.g, %bb.h, %bb.i
  %i.al = load i32, ptr %i.b, align 8, !tbaa !82
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr %i.b, align 8, !tbaa !82
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !243
  br label %bb.j

bb.j:                                             ; preds = %_ZSt13move_backwardIPN4llvm12AddressRangeES2_ET0_T_S4_S3_.exit, %_ZN4llvm23SmallVectorTemplateBaseINS_12AddressRangeELb1EE9push_backES1_.exit
  %.0 = phi ptr [ %i.o, %_ZN4llvm23SmallVectorTemplateBaseINS_12AddressRangeELb1EE9push_backES1_.exit ], [ %i.v, %_ZSt13move_backwardIPN4llvm12AddressRangeES2_ET0_T_S4_S3_.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseINS_12AddressRangeELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, i64 %2) local_unnamed_addr #9 comdat align 2 {
bb.a:
end_hunk_0
