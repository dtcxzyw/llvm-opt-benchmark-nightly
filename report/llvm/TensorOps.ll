Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TensorOps?download=true
inline.NumInlined: 24452
inline.NumDeleted: 8751
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 62
begin_hunk_0_@_ZNK12_GLOBAL__N_122FoldOrthogonalPaddings15matchAndRewriteEN4mlir6tensor5PadOpERNS1_15PatternRewriterE:bb.a
  call void @free(ptr noundef %i.nt) #26
  br label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit114

_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit114: ; preds = %bb.bb, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  br label %bb.bd

bb.bd:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit114, %bb.aa
  %.sroa.057.9 = phi i8 [ %i.cr, %bb.aa ], [ %.sroa.057.8, %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit114 ]
  call void @_ZN4llvm14SmallBitVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %22) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  call void @_ZN4llvm14SmallBitVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.y
  %.sroa.057.10 = phi i8 [ %i.cp, %bb.y ], [ %.sroa.057.9, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br label %bb.bf

bb.bf:                                            ; preds = %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6tensor5PadOpEEEN4llvm13LogicalResultEOT_PKc.exit, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6tensor5PadOpEEEN4llvm13LogicalResultEOT_PKc.exit83, %bb.t, %bb.be, %bb.i
  %.sroa.057.12 = phi i8 [ 0, %bb.i ], [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6tensor5PadOpEEEN4llvm13LogicalResultEOT_PKc.exit ], [ %.sroa.057.10, %bb.be ], [ %i.ch, %bb.t ], [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6tensor5PadOpEEEN4llvm13LogicalResultEOT_PKc.exit83 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.bg

bb.bg:                                            ; preds = %bb.f, %_ZNK4mlir5Value13getDefiningOpINS_6tensor5PadOpEEET_v.exit.thread, %bb.bf
  %.sroa.057.13 = phi i8 [ %.sroa.057.12, %bb.bf ], [ 0, %_ZNK4mlir5Value13getDefiningOpINS_6tensor5PadOpEEET_v.exit.thread ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.c
  %.sroa.057.14 = phi i8 [ %.sroa.057.13, %bb.bg ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  ret i8 %.sroa.057.14
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6tensor5PadOpEEEN4llvm13LogicalResultEOT_PKc(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %class.anon.2507, align 8           ; 4 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 1, ptr %i.b, align 1, !tbaa !158
  %i.c = load i8, ptr %2, align 1, !tbaa !159
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %_ZN4llvm5TwineC2EPKc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %2, ptr %4, align 8, !tbaa !159
  br label %_ZN4llvm5TwineC2EPKc.exit

_ZN4llvm5TwineC2EPKc.exit:                        ; preds = %bb.a, %bb.b
  %storemerge.i = phi i8 [ 3, %bb.b ], [ 1, %bb.a ]
  store i8 %storemerge.i, ptr %i.a, align 8, !tbaa !160
  %i.d = load ptr, ptr %1, align 8, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr %4, ptr %3, align 8, !tbaa !360
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !356  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6tensor5PadOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm5TwineC2EPKc.exit
  %i.g = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.f) #26
  br i1 %i.g, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6tensor5PadOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i: ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.h, align 8
  %i.i = ptrtoint ptr %3 to i64
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !114
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(12) %i.f, ptr %.sroa.0.0.copyload.i.i.i, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6tensor5PadOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.i) #26, !inline_history !1852
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6tensor5PadOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6tensor5PadOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit: ; preds = %_ZN4llvm5TwineC2EPKc.exit, %bb.c, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret i8 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir6detail35OffsetSizeAndStrideOpInterfaceTraitINS_6tensor14ExtractSliceOpEE13hasUnitStrideEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.llvm::SmallVector", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @_ZN4mlir6detail35OffsetSizeAndStrideOpInterfaceTraitINS_6tensor14ExtractSliceOpEE15getMixedStridesEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector") align 8 %1, ptr noundef nonnull align 1 dereferenceable(1) %0)
  %i.a = load ptr, ptr %1, align 8, !tbaa !59     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !60
  %i.d = zext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.d ; 2 uses
  %i.f = call noundef ptr @_ZSt9__find_ifIPN4mlir12OpFoldResultEN9__gnu_cxx5__ops12_Iter_negateIZNS0_6detail35OffsetSizeAndStrideOpInterfaceTraitINS0_6tensor14ExtractSliceOpEE13hasUnitStrideEvEUlS1_E_EEET_SD_SD_T0_St26random_access_iterator_tag(ptr noundef %i.a, ptr noundef %i.e)
  %i.g = load ptr, ptr %1, align 8, !tbaa !59     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @free(ptr noundef %i.g) #26
  br label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.j = icmp eq ptr %i.e, %i.f
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret i1 %i.j
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir12matchPatternINS_6detail18constant_op_binderINS_9AttributeEEEEEbNS_5ValueERKT_(ptr %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #11 comdat {
bb.a:
  %2 = alloca %"class.mlir::Value", align 8       ; 2 uses
  store ptr %0, ptr %2, align 8
  %i.a = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #26 ; 2 uses
  %.not.not.not = icmp eq ptr %i.a, null
  br i1 %.not.not.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = call noundef zeroext i1 @_ZN4mlir6detail18constant_op_binderINS_9AttributeEE5matchEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.04 = phi i1 [ %i.b, %bb.b ], [ false, %bb.a ]
  ret i1 %.04
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm14SmallBitVector9anyCommonERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !266    ; 7 uses
  %i.b = trunc i64 %i.a to i1                     ; 2 uses
  %i.c = load i64, ptr %1, align 8, !tbaa !266    ; 10 uses
  %i.d = trunc i64 %i.c to i1                     ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i64 %i.a, 58                        ; 2 uses
  br i1 %i.d, label %bb.c, label %_ZNK4llvm14SmallBitVector4sizeEv.exit

bb.c:                                             ; preds = %bb.b
  %i.f = shl nsw i64 -1, %i.e
  %i.g = lshr i64 %i.c, 58
  %i.h = shl nsw i64 -1, %i.g
  %i.i = and i64 %i.a, %i.c
  %i.j = lshr i64 %i.i, 1
  %i.k = or i64 %i.f, %i.h
  %i.l = xor i64 %i.k, -1
  %i.m = and i64 %i.j, %i.l
  %i.n = icmp ne i64 %i.m, 0
  br label %_ZNK4llvm9BitVector9anyCommonERKS0_.exit

bb.d:                                             ; preds = %bb.a
  %i.o = inttoptr i64 %i.a to ptr                 ; 3 uses
  br i1 %i.d, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !60
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !60
  %.sroa.speculated.i = tail call i32 @llvm.umin.i32(i32 %i.t, i32 %i.r) ; 2 uses
  %.not15.not.i = icmp eq i32 %.sroa.speculated.i, 0
  br i1 %.not15.not.i, label %_ZNK4llvm9BitVector9anyCommonERKS0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !59
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !59
  %i.w = zext i32 %.sroa.speculated.i to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.i
  %i.y = load i64, ptr %i.x, align 8, !tbaa !56
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.i
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !56
  %i.ab = and i64 %i.aa, %i.y
  %.not11.not.i.not = icmp ne i64 %i.ab, 0        ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.not.i = icmp eq i64 %indvars.iv.next.i, %i.w
  %or.cond80 = select i1 %.not11.not.i.not, i1 true, i1 %.not.not.i
  br i1 %or.cond80, label %_ZNK4llvm9BitVector9anyCommonERKS0_.exit, label %bb.f, !llvm.loop !1853

bb.g:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !278
  %i.ae = zext i32 %i.ad to i64
  br label %_ZNK4llvm14SmallBitVector4sizeEv.exit

_ZNK4llvm14SmallBitVector4sizeEv.exit:            ; preds = %bb.b, %bb.g
  %i.af = phi i64 [ %i.ae, %bb.g ], [ %i.e, %bb.b ]
  %i.ag = trunc i64 %i.c to i1                    ; 3 uses
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK4llvm14SmallBitVector4sizeEv.exit
  %i.ah = lshr i64 %i.c, 58                       ; 2 uses
  %.pre = inttoptr i64 %i.c to ptr
  br label %_ZNK4llvm14SmallBitVector4sizeEv.exit15

bb.i:                                             ; preds = %_ZNK4llvm14SmallBitVector4sizeEv.exit
  %i.ai = inttoptr i64 %i.c to ptr                ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !278
  %i.al = zext i32 %i.ak to i64
  %.pre64 = lshr i64 %i.c, 58
  br label %_ZNK4llvm14SmallBitVector4sizeEv.exit15

_ZNK4llvm14SmallBitVector4sizeEv.exit15:          ; preds = %bb.h, %bb.i
  %.pre-phi65 = phi i64 [ %i.ah, %bb.h ], [ %.pre64, %bb.i ]
  %.pre-phi = phi ptr [ %.pre, %bb.h ], [ %i.ai, %bb.i ] ; 2 uses
  %i.am = phi i64 [ %i.ah, %bb.h ], [ %i.al, %bb.i ]
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.am, i64 %i.af) ; 5 uses
  %i.an = trunc nuw i64 %.sroa.speculated to i32
  %2 = lshr i64 %i.c, 1
  %3 = shl nsw i64 -1, %.pre-phi65
  %4 = xor i64 %3, -1
  %5 = and i64 %2, %4                             ; 2 uses
  %.not29 = icmp eq i64 %.sroa.speculated, 0
  br i1 %.not29, label %_ZNK4llvm9BitVector9anyCommonERKS0_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4llvm14SmallBitVector4sizeEv.exit15
  %i.ao = lshr i64 %i.a, 1
  %i.ap = lshr i64 %i.a, 58
  %i.aq = shl nsw i64 -1, %i.ap
  %i.ar = xor i64 %i.aq, -1
  %i.as = and i64 %i.ao, %i.ar                    ; 2 uses
  br i1 %i.b, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %i.ag, label %.split.us.us, label %.split.us

.split.us.us:                                     ; preds = %.lr.ph.split.us, %.split.us.us
  %indvars.iv61 = phi i64 [ %indvars.iv.next62, %.split.us.us ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %i.at = lshr i64 %i.as, %indvars.iv61
  %i.au = trunc i64 %i.at to i1
  %i.av = lshr i64 %5, %indvars.iv61
  %i.aw = trunc i64 %i.av to i1
  %or.cond = select i1 %i.au, i1 %i.aw, i1 false  ; 2 uses
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1 ; 2 uses
  %.not.us.us = icmp eq i64 %indvars.iv.next62, %.sroa.speculated
  %or.cond81 = select i1 %or.cond, i1 true, i1 %.not.us.us
  br i1 %or.cond81, label %_ZNK4llvm9BitVector9anyCommonERKS0_.exit, label %.split.us.us, !llvm.loop !1854

.split.us:                                        ; preds = %.lr.ph.split.us, %bb.j
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %bb.j ], [ 0, %.lr.ph.split.us ] ; 4 uses
  %i.ax = lshr i64 %i.as, %indvars.iv58
  %i.ay = trunc i64 %i.ax to i1
  br i1 %i.ay, label %_ZNK4llvm14SmallBitVector4testEj.exit17.us, label %bb.j

_ZNK4llvm14SmallBitVector4testEj.exit17.us:       ; preds = %.split.us
  %i.az = lshr i64 %indvars.iv58, 6
  %i.ba = and i64 %i.az, 67108863
  %i.bb = load ptr, ptr %.pre-phi, align 8, !tbaa !59
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.ba
  %i.bd = and i64 %indvars.iv58, 63
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !56
  %i.bf = shl nuw i64 1, %i.bd
  %i.bg = and i64 %i.be, %i.bf
  %.not26.us = icmp eq i64 %i.bg, 0
  br i1 %.not26.us, label %bb.j, label %_ZNK4llvm9BitVector9anyCommonERKS0_.exit

bb.j:                                             ; preds = %_ZNK4llvm14SmallBitVector4testEj.exit17.us, %.split.us
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1 ; 2 uses
  %.not.us = icmp eq i64 %indvars.iv.next59, %.sroa.speculated
  br i1 %.not.us, label %_ZNK4llvm9BitVector9anyCommonERKS0_.exit, label %.split.us, !llvm.loop !1854

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.bh = inttoptr i64 %i.a to ptr
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !59 ; 2 uses
  br i1 %i.ag, label %_ZNK4llvm14SmallBitVector4testEj.exit.us, label %_ZNK4llvm14SmallBitVector4testEj.exit

_ZNK4llvm14SmallBitVector4testEj.exit.us:         ; preds = %.lr.ph.split, %_ZNK4llvm14SmallBitVector4testEj.exit.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK4llvm14SmallBitVector4testEj.exit.us ], [ 0, %.lr.ph.split ] ; 4 uses
  %i.bj = lshr i64 %indvars.iv, 6
  %i.bk = and i64 %i.bj, 67108863
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bk
  %i.bm = and i64 %indvars.iv, 63
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !56
  %i.bo = shl nuw i64 1, %i.bm
  %i.bp = and i64 %i.bn, %i.bo
  %.not25.us = icmp ne i64 %i.bp, 0
  %i.bq = lshr i64 %5, %indvars.iv
  %i.br = trunc i64 %i.bq to i1
  %or.cond48 = select i1 %.not25.us, i1 %i.br, i1 false ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.us37 = icmp eq i64 %indvars.iv.next, %.sroa.speculated
  %or.cond82 = select i1 %or.cond48, i1 true, i1 %.not.us37
  br i1 %or.cond82, label %_ZNK4llvm9BitVector9anyCommonERKS0_.exit, label %_ZNK4llvm14SmallBitVector4testEj.exit.us, !llvm.loop !1854

_ZNK4llvm14SmallBitVector4testEj.exit:            ; preds = %.lr.ph.split, %bb.k
  %.01330 = phi i32 [ %i.ce, %bb.k ], [ 0, %.lr.ph.split ] ; 3 uses
  %i.bs = lshr i32 %.01330, 6
  %i.bt = zext nneg i32 %i.bs to i64              ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bt
  %i.bv = and i32 %.01330, 63
  %i.bw = load i64, ptr %i.bu, align 8, !tbaa !56
  %i.bx = zext nneg i32 %i.bv to i64
  %i.by = shl nuw i64 1, %i.bx                    ; 2 uses
  %i.bz = and i64 %i.bw, %i.by
  %.not25 = icmp eq i64 %i.bz, 0
  br i1 %.not25, label %bb.k, label %_ZNK4llvm14SmallBitVector4testEj.exit17

_ZNK4llvm14SmallBitVector4testEj.exit17:          ; preds = %_ZNK4llvm14SmallBitVector4testEj.exit
  %i.ca = load ptr, ptr %.pre-phi, align 8, !tbaa !59
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.bt
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !56
  %i.cd = and i64 %i.cc, %i.by
  %.not26 = icmp eq i64 %i.cd, 0
  br i1 %.not26, label %bb.k, label %_ZNK4llvm9BitVector9anyCommonERKS0_.exit

bb.k:                                             ; preds = %_ZNK4llvm14SmallBitVector4testEj.exit, %_ZNK4llvm14SmallBitVector4testEj.exit17
  %i.ce = add nuw i32 %.01330, 1                  ; 2 uses
  %.not = icmp eq i32 %i.ce, %i.an
  br i1 %.not, label %_ZNK4llvm9BitVector9anyCommonERKS0_.exit, label %_ZNK4llvm14SmallBitVector4testEj.exit, !llvm.loop !1854

_ZNK4llvm9BitVector9anyCommonERKS0_.exit:         ; preds = %bb.f, %bb.k, %_ZNK4llvm14SmallBitVector4testEj.exit17, %_ZNK4llvm14SmallBitVector4testEj.exit.us, %bb.j, %_ZNK4llvm14SmallBitVector4testEj.exit17.us, %.split.us.us, %_ZNK4llvm14SmallBitVector4sizeEv.exit15, %bb.e, %bb.c
  %.1 = phi i1 [ %i.n, %bb.c ], [ true, %_ZNK4llvm14SmallBitVector4testEj.exit17 ], [ false, %bb.e ], [ %or.cond48, %_ZNK4llvm14SmallBitVector4testEj.exit.us ], [ false, %bb.j ], [ false, %_ZNK4llvm14SmallBitVector4sizeEv.exit15 ], [ %or.cond, %.split.us.us ], [ true, %_ZNK4llvm14SmallBitVector4testEj.exit17.us ], [ false, %bb.k ], [ %.not11.not.i.not, %bb.f ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6tensor5PadOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(192) %1) #0 comdat align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1856, !nonnull !171, !align !285
  %i.c = tail call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(34) %i.b) #26 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZSt9__find_ifIPN4mlir12OpFoldResultEN9__gnu_cxx5__ops12_Iter_negateIZNS0_6detail35OffsetSizeAndStrideOpInterfaceTraitINS0_6tensor14ExtractSliceOpEE13hasUnitStrideEvEUlS1_E_EEET_SD_SD_T0_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr i64 %i.c, 5                         ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.060 = phi i64 [ %i.ad, %bb.e ], [ %i.d, %bb.a ] ; 2 uses
  %.02959 = phi ptr [ %i.ac, %bb.e ], [ %0, %bb.a ] ; 9 uses
  %.sroa.0.0.copyload.i = load i64, ptr %.02959, align 8
  %i.f = tail call { i64, i8 } @_ZN4mlir19getConstantIntValueENS_12OpFoldResultE(i64 %.sroa.0.0.copyload.i) #26 ; 2 uses
  %i.g = extractvalue { i64, i8 } %i.f, 0
  %i.h = extractvalue { i64, i8 } %i.f, 1
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = icmp eq i64 %i.g, 1
  %.not45 = select i1 %i.i, i1 %i.j, i1 false
  br i1 %.not45, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.02959, i64 8
  %.sroa.0.0.copyload.i30 = load i64, ptr %i.k, align 8
  %i.l = tail call { i64, i8 } @_ZN4mlir19getConstantIntValueENS_12OpFoldResultE(i64 %.sroa.0.0.copyload.i30) #26 ; 2 uses
  %i.m = extractvalue { i64, i8 } %i.l, 0
  %i.n = extractvalue { i64, i8 } %i.l, 1
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = icmp eq i64 %i.m, 1
  %.not46 = select i1 %i.o, i1 %i.p, i1 false
  br i1 %.not46, label %bb.c, label %.loopexit.loopexit.split.loop.exit

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.02959, i64 16
  %.sroa.0.0.copyload.i32 = load i64, ptr %i.q, align 8
  %i.r = tail call { i64, i8 } @_ZN4mlir19getConstantIntValueENS_12OpFoldResultE(i64 %.sroa.0.0.copyload.i32) #26 ; 2 uses
  %i.s = extractvalue { i64, i8 } %i.r, 0
  %i.t = extractvalue { i64, i8 } %i.r, 1
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = icmp eq i64 %i.s, 1
  %.not47 = select i1 %i.u, i1 %i.v, i1 false
  br i1 %.not47, label %bb.d, label %.loopexit.loopexit.split.loop.exit67

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.02959, i64 24
  %.sroa.0.0.copyload.i34 = load i64, ptr %i.w, align 8
  %i.x = tail call { i64, i8 } @_ZN4mlir19getConstantIntValueENS_12OpFoldResultE(i64 %.sroa.0.0.copyload.i34) #26 ; 2 uses
  %i.y = extractvalue { i64, i8 } %i.x, 0
  %i.z = extractvalue { i64, i8 } %i.x, 1
  %i.aa = trunc nuw i8 %i.z to i1
  %i.ab = icmp eq i64 %i.y, 1
  %.not48 = select i1 %i.aa, i1 %i.ab, i1 false
  br i1 %.not48, label %bb.e, label %.loopexit.loopexit.split.loop.exit69

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.02959, i64 32 ; 3 uses
  %i.ad = add nsw i64 %.060, -1
  %i.ae = icmp sgt i64 %.060, 1
  br i1 %i.ae, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !1857

._crit_edge.loopexit:                             ; preds = %bb.e
  %.pre = ptrtoint ptr %i.ac to i64
  %.pre65 = sub i64 %i.a, %.pre
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.pre-phi66 = phi i64 [ %.pre65, %._crit_edge.loopexit ], [ %i.c, %bb.a ]
  %.029.lcssa = phi ptr [ %i.ac, %._crit_edge.loopexit ], [ %0, %bb.a ] ; 5 uses
  %i.af = ashr exact i64 %.pre-phi66, 3
  switch i64 %i.af, label %bb.k [
    i64 3, label %bb.f
    i64 2, label %bb.h
    i64 1, label %bb.j
  ]

bb.f:                                             ; preds = %._crit_edge
  %.sroa.0.0.copyload.i36 = load i64, ptr %.029.lcssa, align 8
  %i.ag = tail call { i64, i8 } @_ZN4mlir19getConstantIntValueENS_12OpFoldResultE(i64 %.sroa.0.0.copyload.i36) #26 ; 2 uses
  %i.ah = extractvalue { i64, i8 } %i.ag, 0
  %i.ai = extractvalue { i64, i8 } %i.ag, 1
  %i.aj = trunc nuw i8 %i.ai to i1
  %i.ak = icmp eq i64 %i.ah, 1
  %.not42 = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %.not42, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %.029.lcssa, i64 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %.1 = phi ptr [ %i.al, %bb.g ], [ %.029.lcssa, %._crit_edge ] ; 3 uses
  %.sroa.0.0.copyload.i38 = load i64, ptr %.1, align 8
  %i.am = tail call { i64, i8 } @_ZN4mlir19getConstantIntValueENS_12OpFoldResultE(i64 %.sroa.0.0.copyload.i38) #26 ; 2 uses
  %i.an = extractvalue { i64, i8 } %i.am, 0
  %i.ao = extractvalue { i64, i8 } %i.am, 1
  %i.ap = trunc nuw i8 %i.ao to i1
  %i.aq = icmp eq i64 %i.an, 1
  %.not43 = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %.not43, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %.1, i64 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %.2 = phi ptr [ %i.ar, %bb.i ], [ %.029.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.0.0.copyload.i40 = load i64, ptr %.2, align 8
  %i.as = tail call { i64, i8 } @_ZN4mlir19getConstantIntValueENS_12OpFoldResultE(i64 %.sroa.0.0.copyload.i40) #26 ; 2 uses
  %i.at = extractvalue { i64, i8 } %i.as, 0
  %i.au = extractvalue { i64, i8 } %i.as, 1
  %i.av = trunc nuw i8 %i.au to i1
  %i.aw = icmp eq i64 %i.at, 1
  %.not44 = select i1 %i.av, i1 %i.aw, i1 false
  br i1 %.not44, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j, %._crit_edge
  br label %.loopexit

.loopexit.loopexit.split.loop.exit:               ; preds = %bb.b
  %i.ax = getelementptr inbounds nuw i8, ptr %.02959, i64 8
  br label %.loopexit

.loopexit.loopexit.split.loop.exit67:             ; preds = %bb.c
  %i.ay = getelementptr inbounds nuw i8, ptr %.02959, i64 16
  br label %.loopexit

.loopexit.loopexit.split.loop.exit69:             ; preds = %bb.d
  %i.az = getelementptr inbounds nuw i8, ptr %.02959, i64 24
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.loopexit.loopexit.split.loop.exit, %.loopexit.loopexit.split.loop.exit67, %.loopexit.loopexit.split.loop.exit69, %bb.j, %bb.h, %bb.f, %bb.k
  %.028 = phi ptr [ %.1, %bb.h ], [ %1, %bb.k ], [ %.2, %bb.j ], [ %.029.lcssa, %bb.f ], [ %i.az, %.loopexit.loopexit.split.loop.exit69 ], [ %i.ax, %.loopexit.loopexit.split.loop.exit ], [ %i.ay, %.loopexit.loopexit.split.loop.exit67 ], [ %.02959, %.lr.ph ]
  ret ptr %.028
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_117FoldStaticPaddingD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #26
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !59   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
end_hunk_0
