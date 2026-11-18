Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/WasmSSAOps?download=true
inline.NumInlined: 25934
inline.NumDeleted: 4043
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4mlir7wasmssa16ExtendLowBitsSOp20verifyInvariantsImplEv:bb.a
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %4) #24
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread122
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 200 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !87, !range !88, !noundef !89
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.k, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit70

bb.k:                                             ; preds = %bb.j
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 0, ptr %i.bm, align 8, !tbaa !87
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.bp) #24
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit70

_ZN4mlir18InFlightDiagnosticD2Ev.exit70:          ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %.thread116

.thread116:                                       ; preds = %_ZN4mlir7wasmssa16ExtendLowBitsSOp14getODSOperandsEj.exit, %bb.g, %bb.h, %bb.f, %_ZN4mlir18InFlightDiagnosticD2Ev.exit70, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.025.6 = phi i8 [ %i.l, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 1, %bb.h ], [ %i.bk, %_ZN4mlir18InFlightDiagnosticD2Ev.exit70 ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %_ZN4mlir7wasmssa16ExtendLowBitsSOp14getODSOperandsEj.exit ]
  ret i8 %.sroa.025.6
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir7wasmssa16ExtendLowBitsSOp16verifyInvariantsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call i8 @_ZN4mlir7wasmssa16ExtendLowBitsSOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i8 @_ZN4mlir7wasmssa16ExtendLowBitsSOp6verifyEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.02.0 = phi i8 [ 0, %bb.c ], [ 1, %bb.b ]
  ret i8 %.sroa.02.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir7wasmssa16ExtendLowBitsSOp6verifyEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %2 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %3 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %4 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %5 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %6 = alloca %"class.mlir::IntegerAttr", align 8 ; 5 uses
  %7 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %9 = alloca %"class.mlir::Type", align 8        ; 4 uses
  %10 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 18 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.a = load ptr, ptr %0, align 8, !tbaa !102    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %.not.i.i.i.i = icmp ugt i32 %i.c, 16777215
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.e = lshr i32 %i.c, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i32 %i.e, 1
  %i.f = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i to i64
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.f
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !142
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %6, align 8
  %i.h = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNK4mlir11IntegerAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #24 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !144  ; 2 uses
  %i.k = icmp ult i32 %i.j, 65                    ; 2 uses
  br i1 %i.k, label %_ZNK4llvm5APInt15getLimitedValueEm.exit, label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i

_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i:        ; preds = %bb.a
  %i.l = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.h) #28
  %i.m = sub i32 %i.j, %i.l
  %i.n = icmp ugt i32 %i.m, 64
  br i1 %i.n, label %_ZNK4llvm5APInt15getLimitedValueEm.exit.thread, label %_ZNK4llvm5APInt15getLimitedValueEm.exit

_ZNK4llvm5APInt15getLimitedValueEm.exit.thread:   ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.b

_ZNK4llvm5APInt15getLimitedValueEm.exit:          ; preds = %bb.a, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i
  %i.o = load ptr, ptr %i.h, align 8
  %spec.select.i.i.i = select i1 %i.k, ptr %i.h, ptr %i.o
  %.0.i.i.i = load i64, ptr %spec.select.i.i.i, align 8, !tbaa !108 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  switch i64 %.0.i.i.i, label %bb.b [
    i64 32, label %bb.i
    i64 16, label %bb.i
    i64 8, label %bb.i
  ]

bb.b:                                             ; preds = %_ZNK4llvm5APInt15getLimitedValueEm.exit.thread, %_ZNK4llvm5APInt15getLimitedValueEm.exit
  %i.p = phi i64 [ -1, %_ZNK4llvm5APInt15getLimitedValueEm.exit.thread ], [ %.0.i.i.i, %_ZNK4llvm5APInt15getLimitedValueEm.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 1, ptr %i.r, align 1, !tbaa !107
  store ptr @.str.152, ptr %8, align 8, !tbaa !108
  store i8 3, ptr %i.q, align 8, !tbaa !109
  call void @_ZN4mlir7OpState9emitErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %8) #24
  %i.s = load ptr, ptr %7, align 8, !tbaa !74
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRmEEOS0_OT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store i32 5, ptr %5, align 8, !tbaa !77
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.p, ptr %i.u, align 8, !tbaa !108
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !83   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 36
  %i.y = load i32, ptr %i.x, align 4, !tbaa !84
  %.not.i.i.i.i.i = icmp ult i32 %i.w, %i.y
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d, !prof !85

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %_ZN4mlir10Diagnostic6appendIRmEERS0_OT_.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.z = zext i32 %i.w to i64
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !86
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %i.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  %i.ac = load i32, ptr %i.v, align 8, !tbaa !83
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr %i.v, align 8, !tbaa !83
  br label %_ZN4mlir10Diagnostic6appendIRmEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendIRmEERS0_OT_.exit.i.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %_ZNO4mlir18InFlightDiagnosticlsIRmEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRmEEOS0_OT_.exit: ; preds = %bb.b, %_ZN4mlir10Diagnostic6appendIRmEERS0_OT_.exit.i.i
  %i.ae = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %7) #24
  %i.af = load ptr, ptr %7, align 8, !tbaa !74
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRmEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %7) #24
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNO4mlir18InFlightDiagnosticlsIRmEEOS0_OT_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 200 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !87, !range !88, !noundef !89
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.h, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i8 0, ptr %i.ag, align 8, !tbaa !87
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.aj) #24
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.z

bb.i:                                             ; preds = %_ZNK4llvm5APInt15getLimitedValueEm.exit, %_ZNK4llvm5APInt15getLimitedValueEm.exit, %_ZNK4llvm5APInt15getLimitedValueEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.ak = load ptr, ptr %0, align 8, !tbaa !102
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 72
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !60
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.an, align 8, !tbaa !104
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.ao, align 8
  %i.ap = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.aq = inttoptr i64 %i.ap to ptr
  store ptr %i.aq, ptr %9, align 8
  %i.ar = call noundef i32 @_ZNK4mlir4Type21getIntOrFloatBitWidthEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #24
  %i.as = zext i32 %i.ar to i64
  %.not = icmp samesign ult i64 %.0.i.i.i, %i.as
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br i1 %.not, label %bb.z, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 1, ptr %i.au, align 1, !tbaa !107
  store ptr @.str.153, ptr %11, align 8, !tbaa !108
  store i8 3, ptr %i.at, align 8, !tbaa !109
  call void @_ZN4mlir7OpState9emitErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %11) #24
  %i.av = load ptr, ptr %10, align 8, !tbaa !74
  %.not.i.i5 = icmp eq ptr %i.av, null
  br i1 %.not.i.i5, label %_ZNO4mlir18InFlightDiagnosticlsIRA18_KcEEOS0_OT_.exit21, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store i32 5, ptr %4, align 8, !tbaa !77
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %.0.i.i.i, ptr %i.ax, align 8, !tbaa !108
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 6 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !83 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 36 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !84
  %.not.i.i.i.i.i6 = icmp ult i32 %i.az, %i.bb
  br i1 %.not.i.i.i.i.i6, label %bb.m, label %bb.l, !prof !85

bb.l:                                             ; preds = %bb.k
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRmEEOS0_OT_.exit8

bb.m:                                             ; preds = %bb.k
  %i.bc = zext i32 %i.az to i64
  %i.bd = load ptr, ptr %i.aw, align 8, !tbaa !86
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %i.bc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.bf = load i32, ptr %i.ay, align 8, !tbaa !83
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ay, align 8, !tbaa !83
  br label %_ZNO4mlir18InFlightDiagnosticlsIRmEEOS0_OT_.exit8

_ZNO4mlir18InFlightDiagnosticlsIRmEEOS0_OT_.exit8: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %.pr = load ptr, ptr %10, align 8, !tbaa !74
  %.not.i.i9 = icmp eq ptr %.pr, null
  br i1 %.not.i.i9, label %_ZNO4mlir18InFlightDiagnosticlsIRA18_KcEEOS0_OT_.exit21, label %bb.n

bb.n:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRmEEOS0_OT_.exit8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store i32 3, ptr %3, align 8, !tbaa !77
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.154, ptr %i.bh, align 8, !tbaa !79
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 17, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !81
  %i.bi = load i32, ptr %i.ay, align 8, !tbaa !83 ; 2 uses
  %i.bj = load i32, ptr %i.ba, align 4, !tbaa !84
  %.not.i.i.i.i.i10 = icmp ult i32 %i.bi, %i.bj
  br i1 %.not.i.i.i.i.i10, label %bb.p, label %bb.o, !prof !85

bb.o:                                             ; preds = %bb.n
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA18_KcEEOS0_OT_.exit

bb.p:                                             ; preds = %bb.n
  %i.bk = zext i32 %i.bi to i64
  %i.bl = load ptr, ptr %i.aw, align 8, !tbaa !86
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.bl, i64 %i.bk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.bn = load i32, ptr %i.ay, align 8, !tbaa !83
  %i.bo = add i32 %i.bn, 1
  store i32 %i.bo, ptr %i.ay, align 8, !tbaa !83
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA18_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA18_KcEEOS0_OT_.exit: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %.pre = load ptr, ptr %10, align 8, !tbaa !74
  %i.bp = icmp eq ptr %.pre, null
  br i1 %i.bp, label %_ZNO4mlir18InFlightDiagnosticlsIRA18_KcEEOS0_OT_.exit21, label %bb.q

bb.q:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA18_KcEEOS0_OT_.exit
  %i.bq = load ptr, ptr %0, align 8, !tbaa !102
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 72
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !60
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %.sroa.0.0.copyload.i.i.i.i12 = load ptr, ptr %i.bt, align 8, !tbaa !104
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i12, i64 8
  %.0.copyload.i.i.i.i.i13 = load i64, ptr %i.bu, align 8
  %i.bv = and i64 %.0.copyload.i.i.i.i.i13, -8
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @_ZN4mlir18DiagnosticArgumentC1ENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.bw) #24
  %i.by = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 6 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !83 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 36 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !84
  %.not.i.i.i.i.i16 = icmp ult i32 %i.bz, %i.cb
  br i1 %.not.i.i.i.i.i16, label %bb.s, label %bb.r, !prof !85

bb.r:                                             ; preds = %bb.q
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZNO4mlir18InFlightDiagnosticlsINS_4TypeEEEOS0_OT_.exit

bb.s:                                             ; preds = %bb.q
  %i.cc = zext i32 %i.bz to i64
  %i.cd = load ptr, ptr %i.bx, align 8, !tbaa !86
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %i.cd, i64 %i.cc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ce, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.cf = load i32, ptr %i.by, align 8, !tbaa !83
  %i.cg = add i32 %i.cf, 1
  store i32 %i.cg, ptr %i.by, align 8, !tbaa !83
  br label %_ZNO4mlir18InFlightDiagnosticlsINS_4TypeEEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsINS_4TypeEEEOS0_OT_.exit: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %.pr28 = load ptr, ptr %10, align 8, !tbaa !74
  %.not.i.i17 = icmp eq ptr %.pr28, null
  br i1 %.not.i.i17, label %_ZNO4mlir18InFlightDiagnosticlsIRA18_KcEEOS0_OT_.exit21, label %bb.t

bb.t:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsINS_4TypeEEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  store i32 3, ptr %1, align 8, !tbaa !77
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @.str.155, ptr %i.ch, align 8, !tbaa !79
  %.sroa.2.0..sroa_idx.i.i.i.i.i18 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 17, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i18, align 8, !tbaa !81
  %i.ci = load i32, ptr %i.by, align 8, !tbaa !83 ; 2 uses
  %i.cj = load i32, ptr %i.ca, align 4, !tbaa !84
  %.not.i.i.i.i.i19 = icmp ult i32 %i.ci, %i.cj
  br i1 %.not.i.i.i.i.i19, label %bb.v, label %bb.u, !prof !85

bb.u:                                             ; preds = %bb.t
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZN4mlir10Diagnostic6appendIRA18_KcEERS0_OT_.exit.i.i20

bb.v:                                             ; preds = %bb.t
  %i.ck = zext i32 %i.ci to i64
  %i.cl = load ptr, ptr %i.bx, align 8, !tbaa !86
  %i.cm = getelementptr inbounds nuw [24 x i8], ptr %i.cl, i64 %i.ck
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.cm, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.cn = load i32, ptr %i.by, align 8, !tbaa !83
  %i.co = add i32 %i.cn, 1
  store i32 %i.co, ptr %i.by, align 8, !tbaa !83
  br label %_ZN4mlir10Diagnostic6appendIRA18_KcEERS0_OT_.exit.i.i20

_ZN4mlir10Diagnostic6appendIRA18_KcEERS0_OT_.exit.i.i20: ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA18_KcEEOS0_OT_.exit21

_ZNO4mlir18InFlightDiagnosticlsIRA18_KcEEOS0_OT_.exit21: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRmEEOS0_OT_.exit8, %bb.j, %_ZNO4mlir18InFlightDiagnosticlsIRA18_KcEEOS0_OT_.exit, %_ZNO4mlir18InFlightDiagnosticlsINS_4TypeEEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendIRA18_KcEERS0_OT_.exit.i.i20
  %i.cp = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %10) #24
  %i.cq = load ptr, ptr %10, align 8, !tbaa !74
  %.not.i22 = icmp eq ptr %i.cq, null
  br i1 %.not.i22, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA18_KcEEOS0_OT_.exit21
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %10) #24
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZNO4mlir18InFlightDiagnosticlsIRA18_KcEEOS0_OT_.exit21
  %i.cr = getelementptr inbounds nuw i8, ptr %10, i64 200 ; 2 uses
  %i.cs = load i8, ptr %i.cr, align 8, !tbaa !87, !range !88, !noundef !89
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %bb.y, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit23

bb.y:                                             ; preds = %bb.x
  %i.cu = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i8 0, ptr %i.cr, align 8, !tbaa !87
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.cu) #24
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit23

_ZN4mlir18InFlightDiagnosticD2Ev.exit23:          ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.z

bb.z:                                             ; preds = %bb.i, %_ZN4mlir18InFlightDiagnosticD2Ev.exit23, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.0.0 = phi i8 [ %i.ae, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ %i.cp, %_ZN4mlir18InFlightDiagnosticD2Ev.exit23 ], [ 1, %bb.i ]
  ret i8 %.sroa.0.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir7wasmssa16ExtendLowBitsSOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(304) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %5 = alloca %class.anon.1771, align 1           ; 3 uses
  %6 = alloca %class.anon.1773, align 1           ; 3 uses
  %7 = alloca %"class.mlir::IntegerAttr", align 8 ; 6 uses
  %8 = alloca %"struct.mlir::OpAsmParser::UnresolvedOperand", align 8 ; 5 uses
  %9 = alloca %"class.llvm::ArrayRef.101", align 8 ; 5 uses
  %10 = alloca %"class.mlir::Type", align 8       ; 6 uses
  %11 = alloca %"class.llvm::ArrayRef.78", align 8 ; 5 uses
  %12 = alloca %"class.mlir::Type", align 8       ; 6 uses
  %13 = alloca %"class.llvm::SMLoc", align 8      ; 5 uses
  %14 = alloca %class.anon.479, align 8           ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  store ptr null, ptr %7, align 8, !tbaa !148
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %8, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  store ptr %8, ptr %9, align 8, !tbaa !112
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 1, ptr %i.a, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  store ptr null, ptr %10, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  store ptr %10, ptr %11, align 8, !tbaa !116
  %i.b = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 1, ptr %i.b, align 8, !tbaa !117
  %i.c = call i8 @_ZN4mlir9AsmParser14parseAttributeINS_11IntegerAttrEEEN4llvm11ParseResultERT_NS_4TypeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr null)
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %7, align 8                ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !152  ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.d, label %_ZN4mlir14OperationState18getOrAddPropertiesINS_7wasmssa6detail34ExtendLowBitsSOpGenericAdaptorBase10PropertiesEEERT_v.exit

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.j = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #26 ; 3 uses
  store ptr null, ptr %i.j, align 8, !tbaa !148
  store ptr @_ZN4mlir6detail14TypeIDResolverINS_7wasmssa6detail34ExtendLowBitsSOpGenericAdaptorBase10PropertiesEvE2idE, ptr %i.i, align 8, !tbaa !66
  store ptr %i.j, ptr %i.g, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.k = ptrtoint ptr %5 to i64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 272
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefEEE11callback_fnIZNS1_14OperationState18getOrAddPropertiesINS1_7wasmssa6detail34ExtendLowBitsSOpGenericAdaptorBase10PropertiesEEERT_vEUlS2_E_EEvlS2_, ptr %i.l, align 8, !tbaa !99
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i64 %i.k, ptr %.sroa.43.0..sroa_idx.i, align 8, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.m = ptrtoint ptr %6 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 288
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefES2_EE11callback_fnIZNS1_14OperationState18getOrAddPropertiesINS1_7wasmssa6detail34ExtendLowBitsSOpGenericAdaptorBase10PropertiesEEERT_vEUlS2_S2_E_EEvlS2_S2_, ptr %i.n, align 8, !tbaa !99
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 296
  store i64 %i.m, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %.pre = load i64, ptr %7, align 8
  br label %_ZN4mlir14OperationState18getOrAddPropertiesINS_7wasmssa6detail34ExtendLowBitsSOpGenericAdaptorBase10PropertiesEEERT_v.exit

_ZN4mlir14OperationState18getOrAddPropertiesINS_7wasmssa6detail34ExtendLowBitsSOpGenericAdaptorBase10PropertiesEEERT_v.exit: ; preds = %bb.c, %bb.d
  %i.o = phi i64 [ %.pre, %bb.d ], [ %i.f, %bb.c ]
  %i.p = phi ptr [ %i.j, %bb.d ], [ %i.h, %bb.c ]
  store i64 %i.o, ptr %i.p, align 8
  br label %bb.e

bb.e:                                             ; preds = %_ZN4mlir14OperationState18getOrAddPropertiesINS_7wasmssa6detail34ExtendLowBitsSOpGenericAdaptorBase10PropertiesEEERT_v.exit, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i16 257, ptr %i.q, align 8
  %i.r = load ptr, ptr %0, align 8, !tbaa !119
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 416
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = call i8 %i.t(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull @.str.36, i64 3, ptr noundef nonnull align 8 dereferenceable(34) %4) #24, !inline_history !15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i16 257, ptr %i.w, align 8
  %i.x = load ptr, ptr %0, align 8, !tbaa !119
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 416
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = call i8 %i.z(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull @.str.37, i64 4, ptr noundef nonnull align 8 dereferenceable(34) %3) #24, !inline_history !15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i16 257, ptr %i.ac, align 8
  %i.ad = load ptr, ptr %0, align 8, !tbaa !119
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 416
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = call i8 %i.af(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull @.str.38, i64 4, ptr noundef nonnull align 8 dereferenceable(34) %2) #24, !inline_history !15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.ai = load ptr, ptr %0, align 8, !tbaa !119
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = call ptr %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  %i.am = load ptr, ptr %0, align 8, !tbaa !119
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 736
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = call i8 %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %8, i1 noundef zeroext true) #24
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.ar = load ptr, ptr %0, align 8, !tbaa !119
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 104
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = call i8 %i.at(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  store ptr null, ptr %12, align 8, !tbaa !94
  %i.aw = load ptr, ptr %0, align 8, !tbaa !119
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 568
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = call i8 %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %12) #24, !inline_history !2
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.k, label %.thread

.thread:                                          ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.bb = load i64, ptr %12, align 8, !tbaa !95
  store i64 %i.bb, ptr %10, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  %i.bc = load ptr, ptr %0, align 8, !tbaa !119
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = call ptr %i.be(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  store ptr %i.bf, ptr %13, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.bh = load ptr, ptr %0, align 8, !tbaa !119
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 520
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = call i8 %i.bj(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.bg) #24
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.05.0.copyload = load ptr, ptr %i.bm, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  store ptr %0, ptr %14, align 8, !tbaa !157
  %i.bn = getelementptr inbounds nuw i8, ptr %14, i64 8
end_hunk_0
