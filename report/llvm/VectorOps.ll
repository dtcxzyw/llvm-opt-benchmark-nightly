Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/VectorOps?download=true
inline.NumInlined: 52322
inline.NumDeleted: 18098
loop-unroll.NumCompletelyUnrolled: 54
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 90
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN4mlir6vector17isBroadcastableToENS_4TypeENS_10VectorTypeEPSt4pairINS0_9VectorDimES4_E:bb.a
  br i1 %i.t, label %_ZN4llvm3isaIJN4mlir26VectorElementTypeInterfaceEENS1_4TypeEEEbRKT0_.exit, label %_ZN4llvm3isaIJN4mlir26VectorElementTypeInterfaceEENS1_4TypeEEEbRKT0_.exit.thread

_ZN4llvm3isaIJN4mlir26VectorElementTypeInterfaceEENS1_4TypeEEEbRKT0_.exit: ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !142
  %.not63 = icmp eq ptr %i.v, null
  br i1 %.not63, label %_ZN4llvm3isaIJN4mlir26VectorElementTypeInterfaceEENS1_4TypeEEEbRKT0_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm3isaIJN4mlir26VectorElementTypeInterfaceEENS1_4TypeEEEbRKT0_.exit
  %i.w = load ptr, ptr %3, align 8, !tbaa !178    ; 2 uses
  %.not64 = icmp eq ptr %i.w, null
  br i1 %.not64, label %_ZN4llvm3isaIJN4mlir26VectorElementTypeInterfaceEENS1_4TypeEEEbRKT0_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = tail call ptr @_ZN4mlir20getElementTypeOrSelfENS_4TypeE(ptr nonnull %i.w) #27
  %i.y = icmp eq ptr %0, %i.x
  br i1 %i.y, label %bb.k, label %_ZN4llvm3isaIJN4mlir26VectorElementTypeInterfaceEENS1_4TypeEEEbRKT0_.exit.thread

_ZN4llvm3isaIJN4mlir26VectorElementTypeInterfaceEENS1_4TypeEEEbRKT0_.exit.thread: ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i, %bb.d, %bb.f, %bb.e, %_ZN4llvm3isaIJN4mlir26VectorElementTypeInterfaceEENS1_4TypeEEEbRKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.z = load ptr, ptr %0, align 8, !tbaa !115
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.aa, align 8, !tbaa !107
  %i.ab = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_10VectorTypeEvE2idE
  %spec.select.i.i = select i1 %i.ab, ptr %0, ptr null ; 2 uses
  store ptr %spec.select.i.i, ptr %4, align 8
  %i.ac = icmp eq ptr %spec.select.i.i, null
  br i1 %i.ac, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm3isaIJN4mlir26VectorElementTypeInterfaceEENS1_4TypeEEEbRKT0_.exit.thread
  %i.ad = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #27
  %i.ae = extractvalue { ptr, i64 } %i.ad, 1      ; 4 uses
  %i.af = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #27
  %i.ag = extractvalue { ptr, i64 } %i.af, 1      ; 2 uses
  %i.ah = icmp sgt i64 %i.ae, %i.ag
  br i1 %i.ah, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = sub nsw i64 %i.ag, %i.ae
  %.not5368 = icmp sgt i64 %i.ae, 0
  br i1 %.not5368, label %.lr.ph, label %.loopexit

bb.i:                                             ; preds = %.critedge
  %i.aj = add nuw nsw i64 %.04269, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.aj, %i.ae
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !1243

.lr.ph:                                           ; preds = %bb.h, %bb.i
  %.04269 = phi i64 [ %i.aj, %bb.i ], [ 0, %bb.h ] ; 4 uses
  %i.ak = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #27
  %i.al = extractvalue { ptr, i64 } %i.ak, 0
  %i.am = and i64 %.04269, 4294967295
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !112 ; 3 uses
  %i.ap = add nuw nsw i64 %.04269, %i.ai          ; 2 uses
  %i.aq = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #27
  %i.ar = extractvalue { ptr, i64 } %i.aq, 0
  %i.as = and i64 %i.ap, 4294967295
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.as
  %i.au = load i64, ptr %i.at, align 8, !tbaa !112 ; 3 uses
  %i.av = call { ptr, i64 } @_ZNK4mlir10VectorType15getScalableDimsEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #27
  %i.aw = extractvalue { ptr, i64 } %i.av, 0
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.04269
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !156, !range !157, !noundef !150 ; 3 uses
  %i.az = trunc nuw i8 %i.ay to i1                ; 2 uses
  %i.ba = call { ptr, i64 } @_ZNK4mlir10VectorType15getScalableDimsEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #27
  %i.bb = extractvalue { ptr, i64 } %i.ba, 0
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ap
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !156, !range !157, !noundef !150 ; 2 uses
  %i.be = icmp eq i64 %i.ao, 1                    ; 2 uses
  %i.bf = icmp ne i64 %i.au, 1
  %i.bg = and i1 %i.be, %i.bf
  %or.cond4 = and i1 %i.bg, %i.az
  br i1 %or.cond4, label %.thread, label %.critedge

.critedge:                                        ; preds = %.lr.ph
  %.not = icmp ne i64 %i.ao, %i.au
  %.not77 = xor i1 %i.be, true                    ; 2 uses
  %or.cond.not = and i1 %.not, %.not77
  %.not51 = icmp ne i8 %i.ay, %i.bd
  %or.cond6 = or i1 %.not77, %i.az
  %or.cond55 = select i1 %.not51, i1 %or.cond6, i1 false
  %brmerge = select i1 %or.cond55, i1 true, i1 %or.cond.not
  br i1 %brmerge, label %.thread, label %bb.i

.thread:                                          ; preds = %.critedge, %.lr.ph
  %.lcssa75 = phi i64 [ %i.ao, %.critedge ], [ 1, %.lr.ph ]
  %.not52 = icmp eq ptr %2, null
  br i1 %.not52, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %.thread
  store i64 %.lcssa75, ptr %2, align 8, !tbaa !1244
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %i.ay, ptr %i.bh, align 8, !tbaa !365
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.au, ptr %i.bi, align 8, !tbaa !1245
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i8 %i.bd, ptr %i.bj, align 8, !tbaa !366
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %bb.h, %.thread, %bb.j, %bb.g, %_ZN4llvm3isaIJN4mlir26VectorElementTypeInterfaceEENS1_4TypeEEEbRKT0_.exit.thread
  %.5 = phi i32 [ 3, %_ZN4llvm3isaIJN4mlir26VectorElementTypeInterfaceEENS1_4TypeEEEbRKT0_.exit.thread ], [ 1, %bb.g ], [ 2, %bb.j ], [ 2, %.thread ], [ 0, %bb.h ], [ 0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.k

bb.k:                                             ; preds = %bb.f, %.loopexit
  %.6 = phi i32 [ %.5, %.loopexit ], [ 0, %bb.f ]
  ret i32 %.6
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir6vector11BroadcastOp6verifyEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %2 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %3 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %5 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %7 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %9 = alloca %"struct.std::pair", align 8        ; 8 uses
  %10 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %12 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 24 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %14 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %15 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, i8 0, i64 32, i1 false)
  %i.a = load ptr, ptr %0, align 8, !tbaa !131    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !123
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !126
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.e, align 8
  %i.f = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds i8, ptr %i.a, i64 -16
  %i.i = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 noundef 0) #27
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.j, align 8
  %i.k = and i64 %.0.copyload.i.i.i.i.i.i.i, -8
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = call noundef i32 @_ZN4mlir6vector17isBroadcastableToENS_4TypeENS_10VectorTypeEPSt4pairINS0_9VectorDimES4_E(ptr %i.g, ptr %i.l, ptr noundef nonnull %9)
  switch i32 %i.m, label %default.unreachable [
    i32 0, label %bb.ah
    i32 1, label %bb.b
    i32 2, label %bb.f
    i32 3, label %bb.ad
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 1, ptr %i.o, align 1, !tbaa !189
  store ptr @.str.56, ptr %11, align 8, !tbaa !214
  store i8 3, ptr %i.n, align 8, !tbaa !188
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %11) #27
  %i.p = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %10) #27
  %i.q = load ptr, ptr %10, align 8, !tbaa !197
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %10) #27
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 200 ; 2 uses
  %i.s = load i8, ptr %i.r, align 8, !tbaa !202, !range !157, !noundef !150
  %i.t = trunc nuw i8 %i.s to i1
  store i8 0, ptr %i.r, align 8, !tbaa !202
  br i1 %i.t, label %bb.e, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.u) #27
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.ah

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  %i.v = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %13, i64 33
  store i8 1, ptr %i.w, align 1, !tbaa !189
  store ptr @.str.57, ptr %13, align 8, !tbaa !214
  store i8 3, ptr %i.v, align 8, !tbaa !188
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %13) #27
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.y = load i8, ptr %i.x, align 8, !tbaa !365, !range !157, !noundef !150
  %i.z = trunc nuw i8 %i.y to i1                  ; 2 uses
  %i.aa = load ptr, ptr %12, align 8, !tbaa !197
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 1, ptr %i.ac, align 1, !tbaa !189
  br i1 %i.z, label %bb.h, label %_ZNO4mlir18InFlightDiagnosticlsIPKcEEOS0_OT_.exit

bb.h:                                             ; preds = %bb.g
  store ptr @.str.58, ptr %8, align 8, !tbaa !214
  br label %_ZNO4mlir18InFlightDiagnosticlsIPKcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIPKcEEOS0_OT_.exit: ; preds = %bb.g, %bb.h
  %storemerge.i.i.i.i = phi i8 [ 3, %bb.h ], [ 1, %bb.g ]
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i8 %storemerge.i.i.i.i, ptr %i.ad, align 8, !tbaa !188
  %i.ae = call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsEON4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(192) %i.ab, ptr noundef nonnull align 8 dereferenceable(34) %8) #27 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %.pr = load ptr, ptr %12, align 8, !tbaa !197
  %.not.i.i6 = icmp eq ptr %.pr, null
  br i1 %.not.i.i6, label %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIPKcEEOS0_OT_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.ag = load i64, ptr %9, align 8, !tbaa !112
  store i32 2, ptr %7, align 8, !tbaa !200
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !214
  %i.ai = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 6 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !134 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %12, i64 36 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !135
  %.not.i.i.i.i.i = icmp ult i32 %i.aj, %i.al
  br i1 %.not.i.i.i.i.i, label %bb.k, label %bb.j, !prof !120

bb.j:                                             ; preds = %bb.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %7)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRlEEOS0_OT_.exit

bb.k:                                             ; preds = %bb.i
  %i.am = zext i32 %i.aj to i64
  %i.an = load ptr, ptr %i.af, align 8, !tbaa !133
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.an, i64 %i.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  %i.ap = load i32, ptr %i.ai, align 8, !tbaa !134
  %i.aq = add i32 %i.ap, 1
  store i32 %i.aq, ptr %i.ai, align 8, !tbaa !134
  br label %_ZNO4mlir18InFlightDiagnosticlsIRlEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRlEEOS0_OT_.exit: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %.pr39 = load ptr, ptr %12, align 8, !tbaa !197
  %.not.i.i7 = icmp eq ptr %.pr39, null
  br i1 %.not.i.i7, label %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit, label %bb.l

bb.l:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRlEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 1, ptr %i.ar, align 1, !tbaa !189
  br i1 %i.z, label %bb.m, label %_ZNO4mlir18InFlightDiagnosticlsIPKcEEOS0_OT_.exit11

bb.m:                                             ; preds = %bb.l
  store ptr @.str.59, ptr %6, align 8, !tbaa !214
  br label %_ZNO4mlir18InFlightDiagnosticlsIPKcEEOS0_OT_.exit11

_ZNO4mlir18InFlightDiagnosticlsIPKcEEOS0_OT_.exit11: ; preds = %bb.l, %bb.m
  %storemerge.i.i.i.i10 = phi i8 [ 3, %bb.m ], [ 1, %bb.l ]
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 %storemerge.i.i.i.i10, ptr %i.as, align 8, !tbaa !188
  %i.at = call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsEON4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(192) %i.ab, ptr noundef nonnull align 8 dereferenceable(34) %6) #27 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %.pr41.pr = load ptr, ptr %12, align 8, !tbaa !197
  %.not.i.i12 = icmp eq ptr %.pr41.pr, null
  br i1 %.not.i.i12, label %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit, label %bb.n

bb.n:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIPKcEEOS0_OT_.exit11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store i32 3, ptr %5, align 8, !tbaa !200
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.60, ptr %i.au, align 8, !tbaa !201
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 5, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !112
  %i.av = load i32, ptr %i.ai, align 8, !tbaa !134 ; 2 uses
  %i.aw = load i32, ptr %i.ak, align 4, !tbaa !135
  %.not.i.i.i.i.i13 = icmp ult i32 %i.av, %i.aw
  br i1 %.not.i.i.i.i.i13, label %bb.p, label %bb.o, !prof !120

bb.o:                                             ; preds = %bb.n
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA6_KcEEOS0_OT_.exit

bb.p:                                             ; preds = %bb.n
  %i.ax = zext i32 %i.av to i64
  %i.ay = load ptr, ptr %i.af, align 8, !tbaa !133
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.ay, i64 %i.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  %i.ba = load i32, ptr %i.ai, align 8, !tbaa !134
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr %i.ai, align 8, !tbaa !134
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA6_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA6_KcEEOS0_OT_.exit: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %.pr43 = load ptr, ptr %12, align 8, !tbaa !197
  %i.bc = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !366, !range !157, !noundef !150
  %i.bf = trunc nuw i8 %i.be to i1                ; 2 uses
  %.not.i.i14 = icmp eq ptr %.pr43, null
  br i1 %.not.i.i14, label %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit, label %bb.q

bb.q:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA6_KcEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 1, ptr %i.bg, align 1, !tbaa !189
  br i1 %i.bf, label %bb.r, label %_ZNO4mlir18InFlightDiagnosticlsIPKcEEOS0_OT_.exit18

bb.r:                                             ; preds = %bb.q
  store ptr @.str.58, ptr %4, align 8, !tbaa !214
  br label %_ZNO4mlir18InFlightDiagnosticlsIPKcEEOS0_OT_.exit18

_ZNO4mlir18InFlightDiagnosticlsIPKcEEOS0_OT_.exit18: ; preds = %bb.q, %bb.r
  %storemerge.i.i.i.i17 = phi i8 [ 3, %bb.r ], [ 1, %bb.q ]
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 %storemerge.i.i.i.i17, ptr %i.bh, align 8, !tbaa !188
  %i.bi = call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsEON4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(192) %i.ab, ptr noundef nonnull align 8 dereferenceable(34) %4) #27 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %.pre = load ptr, ptr %12, align 8, !tbaa !197
  %i.bj = icmp eq ptr %.pre, null
  br i1 %i.bj, label %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit, label %bb.s

bb.s:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIPKcEEOS0_OT_.exit18
  %i.bk = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.bl = load i64, ptr %i.bc, align 8, !tbaa !112
  store i32 2, ptr %3, align 8, !tbaa !200
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !214
  %i.bn = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 6 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !134 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %12, i64 36 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !135
  %.not.i.i.i.i.i20 = icmp ult i32 %i.bo, %i.bq
  br i1 %.not.i.i.i.i.i20, label %bb.u, label %bb.t, !prof !120

bb.t:                                             ; preds = %bb.s
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRlEEOS0_OT_.exit22

bb.u:                                             ; preds = %bb.s
  %i.br = zext i32 %i.bo to i64
  %i.bs = load ptr, ptr %i.bk, align 8, !tbaa !133
  %i.bt = getelementptr inbounds nuw [24 x i8], ptr %i.bs, i64 %i.br
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.bt, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.bu = load i32, ptr %i.bn, align 8, !tbaa !134
  %i.bv = add i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bn, align 8, !tbaa !134
  br label %_ZNO4mlir18InFlightDiagnosticlsIRlEEOS0_OT_.exit22

_ZNO4mlir18InFlightDiagnosticlsIRlEEOS0_OT_.exit22: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %.pr45 = load ptr, ptr %12, align 8, !tbaa !197
  %.not.i.i23 = icmp eq ptr %.pr45, null
  br i1 %.not.i.i23, label %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit, label %bb.v

bb.v:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRlEEOS0_OT_.exit22
  %i.bw = getelementptr inbounds nuw i8, ptr %12, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 1, ptr %i.bx, align 1, !tbaa !189
  br i1 %i.bf, label %bb.w, label %_ZNO4mlir18InFlightDiagnosticlsIPKcEEOS0_OT_.exit27

bb.w:                                             ; preds = %bb.v
  store ptr @.str.59, ptr %2, align 8, !tbaa !214
  br label %_ZNO4mlir18InFlightDiagnosticlsIPKcEEOS0_OT_.exit27

_ZNO4mlir18InFlightDiagnosticlsIPKcEEOS0_OT_.exit27: ; preds = %bb.v, %bb.w
  %storemerge.i.i.i.i26 = phi i8 [ 3, %bb.w ], [ 1, %bb.v ]
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i8 %storemerge.i.i.i.i26, ptr %i.by, align 8, !tbaa !188
  %i.bz = call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsEON4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(192) %i.bw, ptr noundef nonnull align 8 dereferenceable(34) %2) #27 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %.pr47 = load ptr, ptr %12, align 8, !tbaa !197
  %.not.i.i28 = icmp eq ptr %.pr47, null
  br i1 %.not.i.i28, label %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit, label %bb.x

bb.x:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIPKcEEOS0_OT_.exit27
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  store i32 3, ptr %1, align 8, !tbaa !200
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @.str.32, ptr %i.ca, align 8, !tbaa !201
  %.sroa.2.0..sroa_idx.i.i.i.i.i29 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 1, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i29, align 8, !tbaa !112
  %i.cb = load i32, ptr %i.bn, align 8, !tbaa !134 ; 2 uses
  %i.cc = load i32, ptr %i.bp, align 4, !tbaa !135
  %.not.i.i.i.i.i30 = icmp ult i32 %i.cb, %i.cc
  br i1 %.not.i.i.i.i.i30, label %bb.z, label %bb.y, !prof !120

bb.y:                                             ; preds = %bb.x
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZN4mlir10Diagnostic6appendIRA2_KcEERS0_OT_.exit.i.i

bb.z:                                             ; preds = %bb.x
  %i.cd = zext i32 %i.cb to i64
  %i.ce = load ptr, ptr %i.bk, align 8, !tbaa !133
  %i.cf = getelementptr inbounds nuw [24 x i8], ptr %i.ce, i64 %i.cd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.cf, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.cg = load i32, ptr %i.bn, align 8, !tbaa !134
  %i.ch = add i32 %i.cg, 1
  store i32 %i.ch, ptr %i.bn, align 8, !tbaa !134
  br label %_ZN4mlir10Diagnostic6appendIRA2_KcEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendIRA2_KcEERS0_OT_.exit.i.i: ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRlEEOS0_OT_.exit, %_ZNO4mlir18InFlightDiagnosticlsIPKcEEOS0_OT_.exit11, %bb.f, %_ZNO4mlir18InFlightDiagnosticlsIPKcEEOS0_OT_.exit, %_ZNO4mlir18InFlightDiagnosticlsIRA6_KcEEOS0_OT_.exit, %_ZNO4mlir18InFlightDiagnosticlsIPKcEEOS0_OT_.exit18, %_ZNO4mlir18InFlightDiagnosticlsIRlEEOS0_OT_.exit22, %_ZNO4mlir18InFlightDiagnosticlsIPKcEEOS0_OT_.exit27, %_ZN4mlir10Diagnostic6appendIRA2_KcEERS0_OT_.exit.i.i
  %i.ci = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %12) #27
  %i.cj = load ptr, ptr %12, align 8, !tbaa !197
  %.not.i31 = icmp eq ptr %i.cj, null
  br i1 %.not.i31, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %12) #27
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %12, i64 200 ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 8, !tbaa !202, !range !157, !noundef !150
  %i.cm = trunc nuw i8 %i.cl to i1
  store i8 0, ptr %i.ck, align 8, !tbaa !202
  br i1 %i.cm, label %bb.ac, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit32

bb.ac:                                            ; preds = %bb.ab
  %i.cn = getelementptr inbounds nuw i8, ptr %12, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.cn) #27
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit32

_ZN4mlir18InFlightDiagnosticD2Ev.exit32:          ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br label %bb.ah

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.ad:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  %i.co = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.cp = getelementptr inbounds nuw i8, ptr %15, i64 33
  store i8 1, ptr %i.cp, align 1, !tbaa !189
  store ptr @.str.61, ptr %15, align 8, !tbaa !214
  store i8 3, ptr %i.co, align 8, !tbaa !188
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %15) #27
  %i.cq = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %14) #27
  %i.cr = load ptr, ptr %14, align 8, !tbaa !197
  %.not.i33 = icmp eq ptr %i.cr, null
  br i1 %.not.i33, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %14) #27
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.cs = getelementptr inbounds nuw i8, ptr %14, i64 200 ; 2 uses
  %i.ct = load i8, ptr %i.cs, align 8, !tbaa !202, !range !157, !noundef !150
  %i.cu = trunc nuw i8 %i.ct to i1
  store i8 0, ptr %i.cs, align 8, !tbaa !202
  br i1 %i.cu, label %bb.ag, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit34

bb.ag:                                            ; preds = %bb.af
  %i.cv = getelementptr inbounds nuw i8, ptr %14, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.cv) #27
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit34

_ZN4mlir18InFlightDiagnosticD2Ev.exit34:          ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  br label %bb.ah

bb.ah:                                            ; preds = %bb.a, %_ZN4mlir18InFlightDiagnosticD2Ev.exit34, %_ZN4mlir18InFlightDiagnosticD2Ev.exit32, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.05.0 = phi i8 [ %i.cq, %_ZN4mlir18InFlightDiagnosticD2Ev.exit34 ], [ %i.p, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ %i.ci, %_ZN4mlir18InFlightDiagnosticD2Ev.exit32 ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  ret i8 %.sroa.05.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i64 @_ZN4mlir6vector11BroadcastOp4foldENS0_25BroadcastOpGenericAdaptorIN4llvm8ArrayRefINS_9AttributeEEEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef readonly byval(%"class.mlir::vector::BroadcastOpGenericAdaptor") align 8 captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::DenseElementsAttr::AttributeElementIterator", align 8 ; 5 uses
  %3 = alloca %"class.mlir::DenseElementsAttr::AttributeElementIterator", align 8 ; 3 uses
  %4 = alloca %"class.mlir::DenseElementsAttr::AttributeElementIterator", align 8 ; 5 uses
  %5 = alloca %"class.mlir::DenseElementsAttr", align 8 ; 5 uses
  %6 = alloca %"class.mlir::Value", align 8       ; 5 uses
  %7 = alloca %"class.mlir::VectorType", align 8  ; 5 uses
  %8 = alloca %"class.mlir::VectorType", align 8  ; 4 uses
  %9 = alloca %"class.mlir::VectorType", align 8  ; 8 uses
  %10 = alloca %"class.mlir::IntegerAttr", align 8 ; 6 uses
  %11 = alloca %"class.mlir::FloatAttr", align 8  ; 6 uses
  %12 = alloca %"class.mlir::SplatElementsAttr", align 8 ; 8 uses
  %13 = alloca %"class.mlir::Attribute", align 8  ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !131    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !123
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !126
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.e, align 8
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 -16
  %i.g = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 noundef 0) #27
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.h, align 8
  %i.i = xor i64 %.0.copyload.i.i.i.i.i.i.i, %.0.copyload.i.i.i.i.i.i
  %i.j = icmp ult i64 %i.i, 8
  %i.k = load ptr, ptr %0, align 8                ; 3 uses
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !123
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !126
  %i.o = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i to i64
  %i.p = or i64 %i.o, 4
  br label %bb.aq

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 72 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !123
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i30 = load ptr, ptr %i.s, align 8, !tbaa !126
  store ptr %.sroa.0.0.copyload.i.i.i.i.i30, ptr %6, align 8
  %i.t = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #27 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZL24foldBroadcastOfShapeCastN4mlir6vector11BroadcastOpE.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.u, align 8, !tbaa !110
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !111
  %i.x = icmp eq ptr %i.w, @_ZN4mlir6detail14TypeIDResolverINS_6vector11ShapeCastOpEvE2idE
  br i1 %i.x, label %bb.e, label %_ZL24foldBroadcastOfShapeCastN4mlir6vector11BroadcastOpE.exit.thread

_ZL24foldBroadcastOfShapeCastN4mlir6vector11BroadcastOpE.exit.thread: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.l

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 72 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !123
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.aa, align 8, !tbaa !126
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.ab, align 8
  %i.ac = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -8
  %i.ad = inttoptr i64 %i.ac to ptr               ; 2 uses
  store ptr %i.ad, ptr %7, align 8
  %i.ae = getelementptr inbounds i8, ptr %i.k, i64 -16
  %i.af = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 noundef 0) #27
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.0.copyload.i.i.i.i.i.i.i7.i = load i64, ptr %i.ag, align 8
  %i.ah = and i64 %.0.copyload.i.i.i.i.i.i.i7.i, -8
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = call noundef i32 @_ZN4mlir6vector17isBroadcastableToENS_4TypeENS_10VectorTypeEPSt4pairINS0_9VectorDimES4_E(ptr %i.ad, ptr %i.ai, ptr noundef null)
  %.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i, label %bb.f, label %_ZL24foldBroadcastOfShapeCastN4mlir6vector11BroadcastOpE.exit.thread108

bb.f:                                             ; preds = %bb.e
  %i.ak = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #27 ; 2 uses
end_hunk_0
