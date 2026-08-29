Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/OpenACCCG?download=true
inline.NumInlined: 2763
inline.NumDeleted: 1525
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN4mlir3acc15ComputeRegionOp5parseERNS_11OpAsmParserERNS_14OperationStateE:bb.a
.critedge92:                                      ; preds = %bb.ad
  %i.hh = add nuw nsw i64 %.088150, 1             ; 2 uses
  %i.hi = load i32, ptr %i.g, align 8, !tbaa !32
  %i.hj = zext i32 %i.hi to i64
  %.not90 = icmp samesign ult i64 %i.hh, %i.hj
  br i1 %.not90, label %bb.ad, label %.critedge94, !llvm.loop !306

bb.ad:                                            ; preds = %.lr.ph151, %.critedge92
  %.088150 = phi i64 [ %i.gf, %.lr.ph151 ], [ %i.hh, %.critedge92 ] ; 3 uses
  %i.hk = sub nuw nsw i64 %.088150, %i.gf
  %i.hl = load ptr, ptr %12, align 8, !tbaa !36
  %i.hm = getelementptr inbounds nuw [32 x i8], ptr %i.hl, i64 %i.hk
  %i.hn = load ptr, ptr %13, align 8, !tbaa !36
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %.088150
  %.sroa.08.0.copyload = load ptr, ptr %i.ho, align 8, !tbaa !302
  %i.hp = load ptr, ptr %0, align 8, !tbaa !44
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 760
  %i.hr = load ptr, ptr %i.hq, align 8
  %i.hs = call i8 %i.hr(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %i.hm, ptr %.sroa.08.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %i.gx) #15
  %i.ht = trunc nuw i8 %i.hs to i1
  br i1 %i.ht, label %.critedge92, label %.critedge

.critedge94:                                      ; preds = %.critedge92, %.critedge92.preheader
  br i1 %i.v, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.critedge94
  %.sroa.06.0.copyload = load ptr, ptr %10, align 8, !tbaa !302
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hv = load ptr, ptr %0, align 8, !tbaa !44
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 760
  %i.hx = load ptr, ptr %i.hw, align 8
  %i.hy = call i8 %i.hx(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %9, ptr %.sroa.06.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %i.hu) #15
  %i.hz = trunc nuw i8 %i.hy to i1
  br i1 %i.hz, label %bb.af, label %.critedge

bb.af:                                            ; preds = %bb.ae, %.critedge94
  %i.ia = load ptr, ptr %0, align 8, !tbaa !44
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 520
  %i.ic = load ptr, ptr %i.ib, align 8
  %i.id = call i8 %i.ic(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.gq) #15
  br label %.critedge

.critedge:                                        ; preds = %bb.ac, %bb.ad, %bb.af, %bb.ae, %._crit_edge, %bb.y, %bb.x, %_ZN4mlir11OpAsmParser19parseAssignmentListERN4llvm15SmallVectorImplINS0_8ArgumentEEERNS2_INS0_17UnresolvedOperandEEE.exit101, %bb.u, %bb.v, %bb.w, %_ZN4mlir11OpAsmParser19parseAssignmentListERN4llvm15SmallVectorImplINS0_8ArgumentEEERNS2_INS0_17UnresolvedOperandEEE.exit, %bb.f, %bb.b, %bb.c, %bb.d, %bb.e
  %.sroa.0137.0 = phi i8 [ %i.id, %bb.af ], [ 0, %bb.f ], [ 0, %_ZN4mlir11OpAsmParser19parseAssignmentListERN4llvm15SmallVectorImplINS0_8ArgumentEEERNS2_INS0_17UnresolvedOperandEEE.exit ], [ 0, %bb.x ], [ 0, %bb.y ], [ 0, %._crit_edge ], [ 0, %bb.ad ], [ 0, %_ZN4mlir11OpAsmParser19parseAssignmentListERN4llvm15SmallVectorImplINS0_8ArgumentEEERNS2_INS0_17UnresolvedOperandEEE.exit101 ], [ 0, %bb.ae ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.w ], [ 0, %bb.v ], [ 0, %bb.u ], [ 0, %bb.ac ]
  %i.ie = load ptr, ptr %13, align 8, !tbaa !36   ; 2 uses
  %i.if = icmp eq ptr %i.ie, %i.o
  br i1 %i.if, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %.critedge
  call void @free(ptr noundef %i.ie) #15
  br label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit: ; preds = %.critedge, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  %i.ig = load ptr, ptr %12, align 8, !tbaa !36   ; 2 uses
  %i.ih = icmp eq ptr %i.ig, %i.l
  br i1 %i.ih, label %_ZN4llvm11SmallVectorIN4mlir11OpAsmParser17UnresolvedOperandELj1EED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit
  call void @free(ptr noundef %i.ig) #15
  br label %_ZN4llvm11SmallVectorIN4mlir11OpAsmParser17UnresolvedOperandELj1EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir11OpAsmParser17UnresolvedOperandELj1EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  %i.ii = load ptr, ptr %11, align 8, !tbaa !36   ; 2 uses
  %i.ij = icmp eq ptr %i.ii, %i.i
  br i1 %i.ij, label %_ZN4llvm11SmallVectorIN4mlir11OpAsmParser17UnresolvedOperandELj1EED2Ev.exit102, label %bb.ai

bb.ai:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir11OpAsmParser17UnresolvedOperandELj1EED2Ev.exit
  call void @free(ptr noundef %i.ii) #15
  br label %_ZN4llvm11SmallVectorIN4mlir11OpAsmParser17UnresolvedOperandELj1EED2Ev.exit102

_ZN4llvm11SmallVectorIN4mlir11OpAsmParser17UnresolvedOperandELj1EED2Ev.exit102: ; preds = %_ZN4llvm11SmallVectorIN4mlir11OpAsmParser17UnresolvedOperandELj1EED2Ev.exit, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  %i.ik = load ptr, ptr %8, align 8, !tbaa !36    ; 2 uses
  %i.il = icmp eq ptr %i.ik, %i.f
  br i1 %i.il, label %_ZN4llvm11SmallVectorIN4mlir11OpAsmParser8ArgumentELj1EED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir11OpAsmParser17UnresolvedOperandELj1EED2Ev.exit102
  call void @free(ptr noundef %i.ik) #15
  br label %_ZN4llvm11SmallVectorIN4mlir11OpAsmParser8ArgumentELj1EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir11OpAsmParser8ArgumentELj1EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIN4mlir11OpAsmParser17UnresolvedOperandELj1EED2Ev.exit102, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  ret i8 %.sroa.0137.0
}

declare ptr @_ZN4mlir7Builder12getIndexTypeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare i8 @_ZN4mlir9AsmParser13parseTypeListERN4llvm15SmallVectorImplINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare noundef ptr @_ZN4mlir14OperationState9addRegionEv(ptr noundef nonnull align 8 dereferenceable(304)) local_unnamed_addr #3

declare ptr @_ZN4mlir7Builder20getDenseI32ArrayAttrEN4llvm8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(8), ptr, i64) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir3acc17GPUSharedMemoryOp6verifyEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %1 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %2 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %3 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %5 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %7 = alloca %"class.mlir::IntegerAttr", align 8 ; 5 uses
  %8 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %10 = alloca %"class.mlir::IntegerAttr", align 8 ; 5 uses
  %11 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %13 = alloca %"class.mlir::MemRefType", align 8 ; 4 uses
  %14 = alloca %"class.mlir::gpu::AddressSpaceAttr", align 8 ; 5 uses
  %15 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %i.a = tail call noundef i64 @_ZN4mlir3acc17GPUSharedMemoryOp12getNumCopiesEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 1, ptr %i.d, align 1, !tbaa !112
  store ptr @.str.28, ptr %2, align 8, !tbaa !115
  store i8 3, ptr %i.c, align 8, !tbaa !116
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %2) #15
  %i.e = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %1) #15
  %i.f = load ptr, ptr %1, align 8, !tbaa !117
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %1) #15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !125, !range !81, !noundef !82
  %i.i = trunc nuw i8 %i.h to i1
  store i8 0, ptr %i.g, align 8, !tbaa !125
  br i1 %i.i, label %bb.e, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.j) #15
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  br label %bb.al

bb.f:                                             ; preds = %bb.a
  %i.k = tail call noundef i64 @_ZN4mlir3acc17GPUSharedMemoryOp24getStaticUpperBoundBytesEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 1, ptr %i.n, align 1, !tbaa !112
  store ptr @.str.29, ptr %4, align 8, !tbaa !115
  store i8 3, ptr %i.m, align 8, !tbaa !116
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %4) #15
  %i.o = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %3) #15
  %i.p = load ptr, ptr %3, align 8, !tbaa !117
  %.not.i5 = icmp eq ptr %i.p, null
  br i1 %.not.i5, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %3) #15
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !125, !range !81, !noundef !82
  %i.s = trunc nuw i8 %i.r to i1
  store i8 0, ptr %i.q, align 8, !tbaa !125
  br i1 %i.s, label %bb.j, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit6

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.t) #15
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit6

_ZN4mlir18InFlightDiagnosticD2Ev.exit6:           ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %bb.al

bb.k:                                             ; preds = %bb.f
  %i.u = tail call { i64, i8 } @_ZN4mlir3acc17GPUSharedMemoryOp34getDynamicSharedMemoryScalingBytesEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  %i.v = extractvalue { i64, i8 } %i.u, 1
  %i.w = tail call { i64, i8 } @_ZN4mlir3acc17GPUSharedMemoryOp32getDynamicSharedMemoryFixedBytesEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  %i.x = extractvalue { i64, i8 } %i.w, 1
  %.not33 = icmp eq i8 %i.v, %i.x
  br i1 %.not33, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 1, ptr %i.z, align 1, !tbaa !112
  store ptr @.str.30, ptr %6, align 8, !tbaa !115
  store i8 3, ptr %i.y, align 8, !tbaa !116
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %6) #15
  %i.aa = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %5) #15
  %i.ab = load ptr, ptr %5, align 8, !tbaa !117
  %.not.i7 = icmp eq ptr %i.ab, null
  br i1 %.not.i7, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %5) #15
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 200 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !125, !range !81, !noundef !82
  %i.ae = trunc nuw i8 %i.ad to i1
  store i8 0, ptr %i.ac, align 8, !tbaa !125
  br i1 %i.ae, label %bb.o, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit8

bb.o:                                             ; preds = %bb.n
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.af) #15
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit8

_ZN4mlir18InFlightDiagnosticD2Ev.exit8:           ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.al

bb.p:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.ag = load ptr, ptr %0, align 8, !tbaa !10    ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 44
  %i.ai = load i32, ptr %i.ah, align 4            ; 2 uses
  %.not.i.i.i = icmp ugt i32 %i.ai, 16777215
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aj = lshr i32 %i.ai, 23
  %.lobit.i.i.i.i.i.i.i.i.i = and i32 %i.aj, 1
  %i.ak = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !76 ; 2 uses
  store ptr %i.an, ptr %7, align 8
  %.not33.a = icmp eq ptr %i.an, null
  br i1 %.not33.a, label %bb.w, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ao = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNK4mlir11IntegerAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #15 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !307 ; 2 uses
  %i.ar = add i32 %i.aq, -1                       ; 2 uses
  %i.as = and i32 %i.ar, 63
  %i.at = zext nneg i32 %i.as to i64
  %i.au = shl nuw i64 1, %i.at
  %i.av = icmp ult i32 %i.aq, 65
  %i.aw = load ptr, ptr %i.ao, align 8
  %i.ax = lshr i32 %i.ar, 6
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ay
  %.in.i.i.i = select i1 %i.av, ptr %i.ao, ptr %i.az
  %i.ba = load i64, ptr %.in.i.i.i, align 8, !tbaa !115
  %i.bb = and i64 %i.au, %i.ba
  %.not34 = icmp eq i64 %i.bb, 0
  br i1 %.not34, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %bb.q
  %.pre = load ptr, ptr %0, align 8, !tbaa !10    ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 44
  %.pre37 = load i32, ptr %.phi.trans.insert, align 4
  %.pre40.a = lshr i32 %.pre37, 23
  %.pre41 = and i32 %.pre40.a, 1
  %.pre42 = zext nneg i32 %.pre41 to i64
  br label %bb.w

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  %i.bc = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 1, ptr %i.bd, align 1, !tbaa !112
  store ptr @.str.31, ptr %9, align 8, !tbaa !115
  store i8 3, ptr %i.bc, align 8, !tbaa !116
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %9) #15
  %i.be = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %8) #15
  %i.bf = load ptr, ptr %8, align 8, !tbaa !117
  %.not.i9 = icmp eq ptr %i.bf, null
  br i1 %.not.i9, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %8) #15
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 200 ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !125, !range !81, !noundef !82
  %i.bi = trunc nuw i8 %i.bh to i1
  store i8 0, ptr %i.bg, align 8, !tbaa !125
  br i1 %i.bi, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.bj) #15
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %bb.al

bb.w:                                             ; preds = %._crit_edge, %bb.p
  %.pre-phi43 = phi i64 [ %.pre42, %._crit_edge ], [ %i.ak, %bb.p ]
  %i.bk = phi ptr [ %.pre, %._crit_edge ], [ %i.ag, %bb.p ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 64
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %.pre-phi43
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !76 ; 2 uses
  store ptr %i.bn, ptr %10, align 8
  %.not35 = icmp eq ptr %i.bn, null
  br i1 %.not35, label %bb.ad, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bo = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNK4mlir11IntegerAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #15 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !307 ; 2 uses
  %i.br = add i32 %i.bq, -1                       ; 2 uses
  %i.bs = and i32 %i.br, 63
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = shl nuw i64 1, %i.bt
  %i.bv = icmp ult i32 %i.bq, 65
  %i.bw = load ptr, ptr %i.bo, align 8
  %i.bx = lshr i32 %i.br, 6
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.by
  %.in.i.i.i13 = select i1 %i.bv, ptr %i.bo, ptr %i.bz
  %i.ca = load i64, ptr %.in.i.i.i13, align 8, !tbaa !115
  %i.cb = and i64 %i.bu, %i.ca
  %.not36 = icmp eq i64 %i.cb, 0
  br i1 %.not36, label %._crit_edge38, label %bb.y

._crit_edge38:                                    ; preds = %bb.x
  %.pre39 = load ptr, ptr %0, align 8, !tbaa !10
  br label %bb.ad

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  %i.cc = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.cd = getelementptr inbounds nuw i8, ptr %12, i64 33
  store i8 1, ptr %i.cd, align 1, !tbaa !112
  store ptr @.str.32, ptr %12, align 8, !tbaa !115
  store i8 3, ptr %i.cc, align 8, !tbaa !116
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %12) #15
  %i.ce = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %11) #15
  %i.cf = load ptr, ptr %11, align 8, !tbaa !117
  %.not.i14 = icmp eq ptr %i.cf, null
  br i1 %.not.i14, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %11) #15
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cg = getelementptr inbounds nuw i8, ptr %11, i64 200 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 8, !tbaa !125, !range !81, !noundef !82
  %i.ci = trunc nuw i8 %i.ch to i1
  store i8 0, ptr %i.cg, align 8, !tbaa !125
  br i1 %i.ci, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cj = getelementptr inbounds nuw i8, ptr %11, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.cj) #15
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  br label %bb.al

bb.ad:                                            ; preds = %._crit_edge38, %bb.w
  %i.ck = phi ptr [ %.pre39, %._crit_edge38 ], [ %i.bk, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15
  %i.cl = getelementptr inbounds i8, ptr %i.ck, i64 -16
  %i.cm = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, i64 noundef 0) #15
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.cn, align 8
  %i.co = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.cp = inttoptr i64 %i.co to ptr
  store ptr %i.cp, ptr %13, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15
end_hunk_0
