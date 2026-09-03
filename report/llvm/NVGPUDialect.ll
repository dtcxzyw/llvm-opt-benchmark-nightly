Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/NVGPUDialect?download=true
inline.NumInlined: 22676
inline.NumDeleted: 7449
loop-unroll.NumCompletelyUnrolled: 57
loop-unroll.NumUnrolled: 57
begin_hunk_0_@_ZN4mlir5nvgpu9MmaSyncOp11getMmaShapeEv:bb.a
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !89     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %.not.i.i.i = icmp ugt i32 %i.c, 16777215
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.e = lshr i32 %i.c, 23
  %.lobit.i.i.i.i.i.i.i.i.i = and i32 %i.e, 1
  %i.f = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i to i64
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.f
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.g, align 8, !tbaa !125
  ret ptr %.sroa.0.0.copyload.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i8 @_ZL15verifyMmaSyncOpPN4mlir9OperationENS_6detail10TypedValueINS_10VectorTypeEEES5_S5_RKSt5arrayIlLm3EEbb(ptr noundef %0, ptr nofree readonly captures(none) %1, ptr nofree readonly captures(none) %2, ptr nofree readonly captures(none) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4, i1 noundef zeroext %5, i1 noundef zeroext %6) unnamed_addr #0 {
bb.a:
  %7 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %8 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %9 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %10 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %11 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %12 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %13 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %14 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %15 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %16 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %17 = alloca %"class.mlir::VectorType", align 8 ; 5 uses
  %18 = alloca %"class.mlir::VectorType", align 8 ; 4 uses
  %19 = alloca %"class.mlir::VectorType", align 8 ; 4 uses
  %20 = alloca %"class.mlir::Type", align 8       ; 12 uses
  %21 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  %22 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %23 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 5 uses
  %24 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %25 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  %26 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %27 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  %28 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %29 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  %30 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %31 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 14 uses
  %32 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %33 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 14 uses
  %34 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %35 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 5 uses
  %36 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %37 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 5 uses
  %38 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %39 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 5 uses
  %40 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %41 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 5 uses
  %42 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %43 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 5 uses
  %44 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  store i64 2, ptr %i.c, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #29
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.h, align 8
  %i.i = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.j = inttoptr i64 %i.i to ptr
  store ptr %i.j, ptr %17, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #29
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.0.copyload.i.i.i.i.i.i63 = load i64, ptr %i.k, align 8
  %i.l = and i64 %.0.copyload.i.i.i.i.i.i63, -8
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.m, ptr %18, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #29
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.0.copyload.i.i.i.i.i.i64 = load i64, ptr %i.n, align 8
  %i.o = and i64 %.0.copyload.i.i.i.i.i.i64, -8
  %i.p = inttoptr i64 %i.o to ptr
  store ptr %i.p, ptr %19, align 8
  %i.q = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %17) #29 ; 2 uses
  %i.r = extractvalue { ptr, i64 } %i.q, 0        ; 3 uses
  %i.s = extractvalue { ptr, i64 } %i.q, 1
  %i.t = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %18) #29 ; 2 uses
  %i.u = extractvalue { ptr, i64 } %i.t, 0        ; 3 uses
  %i.v = extractvalue { ptr, i64 } %i.t, 1
  %i.w = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %19) #29 ; 2 uses
  %i.x = extractvalue { ptr, i64 } %i.w, 0        ; 3 uses
  %i.y = extractvalue { ptr, i64 } %i.w, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #29
  %i.z = call ptr @_ZNK4mlir10VectorType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %17) #29
  store ptr %i.z, ptr %20, align 8
  br i1 %6, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.aa = call noundef zeroext i1 @_ZNK4mlir4Type5isF64Ev(ptr noundef nonnull align 8 dereferenceable(8) %20) #29
  br i1 %i.aa, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #29
  %i.ab = getelementptr inbounds nuw i8, ptr %22, i64 32
  store i8 1, ptr %i.ab, align 8, !tbaa !99
  %i.ac = getelementptr inbounds nuw i8, ptr %22, i64 33
  store i8 1, ptr %i.ac, align 1, !tbaa !98
  call void @_ZN4mlir9Operation9emitErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %21, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %22) #29
  %i.ad = load ptr, ptr %21, align 8, !tbaa !107
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %21, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #29
  store i32 3, ptr %16, align 8, !tbaa !113
  %i.af = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr @.str.216, ptr %i.af, align 8, !tbaa !114
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i64 36, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !115
  %i.ag = getelementptr inbounds nuw i8, ptr %21, i64 32 ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !117 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %21, i64 36
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !118
  %.not.i.i.i.i.i = icmp ult i32 %i.ah, %i.aj
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e, !prof !119

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %16)
  br label %_ZN4mlir10Diagnostic6appendIRA37_KcEERS0_OT_.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.ak = zext i32 %i.ah to i64
  %i.al = load ptr, ptr %i.ae, align 8, !tbaa !120
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %16, i64 24, i1 false)
  %i.an = load i32, ptr %i.ag, align 8, !tbaa !117
  %i.ao = add i32 %i.an, 1
  store i32 %i.ao, ptr %i.ag, align 8, !tbaa !117
  br label %_ZN4mlir10Diagnostic6appendIRA37_KcEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendIRA37_KcEERS0_OT_.exit.i.i: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit: ; preds = %bb.c, %_ZN4mlir10Diagnostic6appendIRA37_KcEERS0_OT_.exit.i.i
  %i.ap = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %21) #29
  %i.aq = load ptr, ptr %21, align 8, !tbaa !107
  %.not.i = icmp eq ptr %i.aq, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %21) #29
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %21, i64 200 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !108, !range !109, !noundef !110
  %i.at = trunc nuw i8 %i.as to i1
  store i8 0, ptr %i.ar, align 8, !tbaa !108
  br i1 %i.at, label %bb.i, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %21, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.au) #29
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #29
  br label %bb.cg

bb.j:                                             ; preds = %bb.b, %bb.a
  %i.av = call noundef zeroext i1 @_ZNK4mlir4Type5isF64Ev(ptr noundef nonnull align 8 dereferenceable(8) %20) #29
  br i1 %i.av, label %bb.s, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = call noundef zeroext i1 @_ZNK4mlir4Type5isF32Ev(ptr noundef nonnull align 8 dereferenceable(8) %20) #29
  br i1 %i.aw, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = call noundef zeroext i1 @_ZNK4mlir4Type6isBF16Ev(ptr noundef nonnull align 8 dereferenceable(8) %20) #29
  br i1 %i.ax, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = call noundef zeroext i1 @_ZNK4mlir4Type5isF16Ev(ptr noundef nonnull align 8 dereferenceable(8) %20) #29
  br i1 %i.ay, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = call noundef zeroext i1 @_ZNK4mlir4Type9isIntegerEj(ptr noundef nonnull align 8 dereferenceable(8) %20, i32 noundef 8) #29
  br i1 %i.az, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = call noundef zeroext i1 @_ZNK4mlir4Type9isIntegerEj(ptr noundef nonnull align 8 dereferenceable(8) %20, i32 noundef 4) #29
  br i1 %i.ba, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k
  %i.bb = call noundef i32 @_ZNK4mlir4Type21getIntOrFloatBitWidthEv(ptr noundef nonnull align 8 dereferenceable(8) %20) #29
  %45 = insertelement <2 x i32> poison, i32 %i.bb, i64 0
  %46 = shufflevector <2 x i32> %45, <2 x i32> poison, <2 x i32> zeroinitializer
  %47 = sdiv <2 x i32> <i32 128, i32 32>, %46
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #29
  %i.bc = getelementptr inbounds nuw i8, ptr %24, i64 32
  store i8 1, ptr %i.bc, align 8, !tbaa !99
  %i.bd = getelementptr inbounds nuw i8, ptr %24, i64 33
  store i8 1, ptr %i.bd, align 1, !tbaa !98
  call void @_ZN4mlir9Operation9emitErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %23, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %24) #29
  %i.be = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsIRA65_KcEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %23, ptr noundef nonnull align 1 dereferenceable(65) @.str.217) ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !107
  %.not.i.i65 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i65, label %_ZNO4mlir18InFlightDiagnosticlsINS_13OperationNameEEEOS0_OT_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload.i = load ptr, ptr %i.bg, align 8, !tbaa !80
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bi = call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsENS_13OperationNameE(ptr noundef nonnull align 8 dereferenceable(192) %i.bh, ptr %.sroa.0.0.copyload.i) #29 ; 0 uses
  br label %_ZNO4mlir18InFlightDiagnosticlsINS_13OperationNameEEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsINS_13OperationNameEEEOS0_OT_.exit: ; preds = %bb.q, %bb.r
  %i.bj = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %i.be) #29
  call void @_ZN4mlir18InFlightDiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #29
  br label %bb.cg

bb.s:                                             ; preds = %bb.j, %bb.p
  %48 = phi <2 x i32> [ %47, %bb.p ], [ <i32 4, i32 1>, %bb.j ] ; 2 uses
  %49 = extractelement <2 x i32> %48, i64 1       ; 3 uses
  %50 = sext i32 %49 to i64                       ; 2 uses
  store i64 %50, ptr %i.a, align 8, !tbaa !115
  store i64 %50, ptr %i.b, align 8, !tbaa !115
  %.not = icmp eq i64 %i.s, 2
  br i1 %.not, label %bb.aa, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #29
  %i.bk = getelementptr inbounds nuw i8, ptr %26, i64 32
  store i8 1, ptr %i.bk, align 8, !tbaa !99
  %i.bl = getelementptr inbounds nuw i8, ptr %26, i64 33
  store i8 1, ptr %i.bl, align 1, !tbaa !98
  call void @_ZN4mlir9Operation9emitErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %25, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %26) #29
  %i.bm = load ptr, ptr %25, align 8, !tbaa !107
  %.not.i.i66 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i66, label %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit70, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bn = getelementptr inbounds nuw i8, ptr %25, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29
  store i32 3, ptr %15, align 8, !tbaa !113
  %i.bo = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr @.str.218, ptr %i.bo, align 8, !tbaa !114
  %.sroa.2.0..sroa_idx.i.i.i.i.i67 = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i64 36, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i67, align 8, !tbaa !115
  %i.bp = getelementptr inbounds nuw i8, ptr %25, i64 32 ; 3 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !117 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %25, i64 36
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !118
  %.not.i.i.i.i.i68 = icmp ult i32 %i.bq, %i.bs
  br i1 %.not.i.i.i.i.i68, label %bb.w, label %bb.v, !prof !119

bb.v:                                             ; preds = %bb.u
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %15)
  br label %_ZN4mlir10Diagnostic6appendIRA37_KcEERS0_OT_.exit.i.i69

bb.w:                                             ; preds = %bb.u
  %i.bt = zext i32 %i.bq to i64
  %i.bu = load ptr, ptr %i.bn, align 8, !tbaa !120
  %i.bv = getelementptr inbounds nuw [24 x i8], ptr %i.bu, i64 %i.bt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.bv, ptr noundef nonnull align 8 dereferenceable(24) %15, i64 24, i1 false)
  %i.bw = load i32, ptr %i.bp, align 8, !tbaa !117
  %i.bx = add i32 %i.bw, 1
  store i32 %i.bx, ptr %i.bp, align 8, !tbaa !117
  br label %_ZN4mlir10Diagnostic6appendIRA37_KcEERS0_OT_.exit.i.i69

_ZN4mlir10Diagnostic6appendIRA37_KcEERS0_OT_.exit.i.i69: ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit70

_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit70: ; preds = %bb.t, %_ZN4mlir10Diagnostic6appendIRA37_KcEERS0_OT_.exit.i.i69
  %i.by = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %25) #29
  %i.bz = load ptr, ptr %25, align 8, !tbaa !107
  %.not.i71 = icmp eq ptr %i.bz, null
  br i1 %.not.i71, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit70
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %25) #29
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit70
  %i.ca = getelementptr inbounds nuw i8, ptr %25, i64 200 ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 8, !tbaa !108, !range !109, !noundef !110
  %i.cc = trunc nuw i8 %i.cb to i1
  store i8 0, ptr %i.ca, align 8, !tbaa !108
  br i1 %i.cc, label %bb.z, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit72

bb.z:                                             ; preds = %bb.y
  %i.cd = getelementptr inbounds nuw i8, ptr %25, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.cd) #29
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit72

_ZN4mlir18InFlightDiagnosticD2Ev.exit72:          ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #29
  br label %bb.cg

bb.aa:                                            ; preds = %bb.s
  %.not52 = icmp eq i64 %i.v, 2
  br i1 %.not52, label %bb.ai, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #29
  %i.ce = getelementptr inbounds nuw i8, ptr %28, i64 32
  store i8 1, ptr %i.ce, align 8, !tbaa !99
  %i.cf = getelementptr inbounds nuw i8, ptr %28, i64 33
  store i8 1, ptr %i.cf, align 1, !tbaa !98
  call void @_ZN4mlir9Operation9emitErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %27, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %28) #29
  %i.cg = load ptr, ptr %27, align 8, !tbaa !107
  %.not.i.i73 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i73, label %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit77, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ch = getelementptr inbounds nuw i8, ptr %27, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  store i32 3, ptr %14, align 8, !tbaa !113
  %i.ci = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr @.str.219, ptr %i.ci, align 8, !tbaa !114
  %.sroa.2.0..sroa_idx.i.i.i.i.i74 = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 36, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i74, align 8, !tbaa !115
  %i.cj = getelementptr inbounds nuw i8, ptr %27, i64 32 ; 3 uses
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !117 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %27, i64 36
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !118
  %.not.i.i.i.i.i75 = icmp ult i32 %i.ck, %i.cm
  br i1 %.not.i.i.i.i.i75, label %bb.ae, label %bb.ad, !prof !119

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %14)
  br label %_ZN4mlir10Diagnostic6appendIRA37_KcEERS0_OT_.exit.i.i76

bb.ae:                                            ; preds = %bb.ac
  %i.cn = zext i32 %i.ck to i64
  %i.co = load ptr, ptr %i.ch, align 8, !tbaa !120
  %i.cp = getelementptr inbounds nuw [24 x i8], ptr %i.co, i64 %i.cn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.cp, ptr noundef nonnull align 8 dereferenceable(24) %14, i64 24, i1 false)
  %i.cq = load i32, ptr %i.cj, align 8, !tbaa !117
  %i.cr = add i32 %i.cq, 1
  store i32 %i.cr, ptr %i.cj, align 8, !tbaa !117
  br label %_ZN4mlir10Diagnostic6appendIRA37_KcEERS0_OT_.exit.i.i76

_ZN4mlir10Diagnostic6appendIRA37_KcEERS0_OT_.exit.i.i76: ; preds = %bb.ae, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit77

_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit77: ; preds = %bb.ab, %_ZN4mlir10Diagnostic6appendIRA37_KcEERS0_OT_.exit.i.i76
  %i.cs = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %27) #29
  %i.ct = load ptr, ptr %27, align 8, !tbaa !107
  %.not.i78 = icmp eq ptr %i.ct, null
  br i1 %.not.i78, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit77
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %27) #29
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit77
  %i.cu = getelementptr inbounds nuw i8, ptr %27, i64 200 ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 8, !tbaa !108, !range !109, !noundef !110
  %i.cw = trunc nuw i8 %i.cv to i1
  store i8 0, ptr %i.cu, align 8, !tbaa !108
  br i1 %i.cw, label %bb.ah, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit79

bb.ah:                                            ; preds = %bb.ag
  %i.cx = getelementptr inbounds nuw i8, ptr %27, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.cx) #29
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit79

_ZN4mlir18InFlightDiagnosticD2Ev.exit79:          ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #29
  br label %bb.cg

bb.ai:                                            ; preds = %bb.aa
  %.not53 = icmp eq i64 %i.y, 2
  br i1 %.not53, label %bb.aq, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #29
  %i.cy = getelementptr inbounds nuw i8, ptr %30, i64 32
  store i8 1, ptr %i.cy, align 8, !tbaa !99
  %i.cz = getelementptr inbounds nuw i8, ptr %30, i64 33
  store i8 1, ptr %i.cz, align 1, !tbaa !98
  call void @_ZN4mlir9Operation9emitErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %29, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %30) #29
  %i.da = load ptr, ptr %29, align 8, !tbaa !107
  %.not.i.i80 = icmp eq ptr %i.da, null
  br i1 %.not.i.i80, label %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit84, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.db = getelementptr inbounds nuw i8, ptr %29, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  store i32 3, ptr %13, align 8, !tbaa !113
  %i.dc = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr @.str.220, ptr %i.dc, align 8, !tbaa !114
  %.sroa.2.0..sroa_idx.i.i.i.i.i81 = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 36, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i81, align 8, !tbaa !115
  %i.dd = getelementptr inbounds nuw i8, ptr %29, i64 32 ; 3 uses
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !117 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %29, i64 36
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !118
  %.not.i.i.i.i.i82 = icmp ult i32 %i.de, %i.dg
  br i1 %.not.i.i.i.i.i82, label %bb.am, label %bb.al, !prof !119

bb.al:                                            ; preds = %bb.ak
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.db, ptr noundef nonnull align 8 dereferenceable(24) %13)
  br label %_ZN4mlir10Diagnostic6appendIRA37_KcEERS0_OT_.exit.i.i83

bb.am:                                            ; preds = %bb.ak
  %i.dh = zext i32 %i.de to i64
  %i.di = load ptr, ptr %i.db, align 8, !tbaa !120
  %i.dj = getelementptr inbounds nuw [24 x i8], ptr %i.di, i64 %i.dh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.dj, ptr noundef nonnull align 8 dereferenceable(24) %13, i64 24, i1 false)
  %i.dk = load i32, ptr %i.dd, align 8, !tbaa !117
  %i.dl = add i32 %i.dk, 1
  store i32 %i.dl, ptr %i.dd, align 8, !tbaa !117
  br label %_ZN4mlir10Diagnostic6appendIRA37_KcEERS0_OT_.exit.i.i83

_ZN4mlir10Diagnostic6appendIRA37_KcEERS0_OT_.exit.i.i83: ; preds = %bb.am, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit84

end_hunk_0
begin_hunk_1_@_ZL15verifyMmaSyncOpPN4mlir9OperationENS_6detail10TypedValueINS_10VectorTypeEEES5_S5_RKSt5arrayIlLm3EEbb:bb.a
  %i.fn = shl i64 %i.fk, 5
  %i.fo = mul i64 %i.fn, %i.fm
  %i.fp = mul nsw i64 %.sroa.13.0.copyload, %.sroa.8.0.copyload ; 2 uses
  %.not55 = icmp eq i64 %i.fo, %i.fp
  br i1 %.not55, label %bb.bs, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #29
  %i.fq = getelementptr inbounds nuw i8, ptr %34, i64 32
  store i8 1, ptr %i.fq, align 8, !tbaa !99
  %i.fr = getelementptr inbounds nuw i8, ptr %34, i64 33
  store i8 1, ptr %i.fr, align 1, !tbaa !98
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %33, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %34) #29
  %i.fs = load ptr, ptr %33, align 8, !tbaa !107
  %.not.i.i97 = icmp eq ptr %i.fs, null
  br i1 %.not.i.i97, label %_ZNO4mlir18InFlightDiagnosticlsIRA29_KcEEOS0_OT_.exit110, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ft = getelementptr inbounds nuw i8, ptr %33, i64 24 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  store i32 3, ptr %9, align 8, !tbaa !113
  %i.fu = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr @.str.5, ptr %i.fu, align 8, !tbaa !114
  %.sroa.2.0..sroa_idx.i.i.i.i.i98 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 9, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i98, align 8, !tbaa !115
  %i.fv = getelementptr inbounds nuw i8, ptr %33, i64 32 ; 9 uses
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !117 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %33, i64 36 ; 3 uses
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !118
  %.not.i.i.i.i.i99 = icmp ult i32 %i.fw, %i.fy
  br i1 %.not.i.i.i.i.i99, label %bb.bi, label %bb.bh, !prof !119

bb.bh:                                            ; preds = %bb.bg
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ft, ptr noundef nonnull align 8 dereferenceable(24) %9)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA10_KcEEOS0_OT_.exit101

bb.bi:                                            ; preds = %bb.bg
  %i.fz = zext i32 %i.fw to i64
  %i.ga = load ptr, ptr %i.ft, align 8, !tbaa !120
  %i.gb = getelementptr inbounds nuw [24 x i8], ptr %i.ga, i64 %i.fz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.gb, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false)
  %i.gc = load i32, ptr %i.fv, align 8, !tbaa !117
  %i.gd = add i32 %i.gc, 1
  store i32 %i.gd, ptr %i.fv, align 8, !tbaa !117
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA10_KcEEOS0_OT_.exit101

_ZNO4mlir18InFlightDiagnosticlsIRA10_KcEEOS0_OT_.exit101: ; preds = %bb.bh, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  %.pr147 = load ptr, ptr %33, align 8, !tbaa !107
  %.not.i.i102 = icmp eq ptr %.pr147, null
  br i1 %.not.i.i102, label %_ZNO4mlir18InFlightDiagnosticlsIRA29_KcEEOS0_OT_.exit110, label %bb.bj

bb.bj:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA10_KcEEOS0_OT_.exit101
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  store i32 2, ptr %8, align 8, !tbaa !113
  %i.ge = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.fp, ptr %i.ge, align 8, !tbaa !86
  %i.gf = load i32, ptr %i.fv, align 8, !tbaa !117 ; 2 uses
  %i.gg = load i32, ptr %i.fx, align 4, !tbaa !118
  %.not.i.i.i.i.i103 = icmp ult i32 %i.gf, %i.gg
  br i1 %.not.i.i.i.i.i103, label %bb.bl, label %bb.bk, !prof !119

bb.bk:                                            ; preds = %bb.bj
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ft, ptr noundef nonnull align 8 dereferenceable(24) %8)
  br label %_ZNO4mlir18InFlightDiagnosticlsIlEEOS0_OT_.exit105

bb.bl:                                            ; preds = %bb.bj
  %i.gh = zext i32 %i.gf to i64
  %i.gi = load ptr, ptr %i.ft, align 8, !tbaa !120
  %i.gj = getelementptr inbounds nuw [24 x i8], ptr %i.gi, i64 %i.gh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.gj, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false)
  %i.gk = load i32, ptr %i.fv, align 8, !tbaa !117
  %i.gl = add i32 %i.gk, 1
  store i32 %i.gl, ptr %i.fv, align 8, !tbaa !117
  br label %_ZNO4mlir18InFlightDiagnosticlsIlEEOS0_OT_.exit105

_ZNO4mlir18InFlightDiagnosticlsIlEEOS0_OT_.exit105: ; preds = %bb.bk, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %.pr149 = load ptr, ptr %33, align 8, !tbaa !107
  %.not.i.i106 = icmp eq ptr %.pr149, null
  br i1 %.not.i.i106, label %_ZNO4mlir18InFlightDiagnosticlsIRA29_KcEEOS0_OT_.exit110, label %bb.bm

bb.bm:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIlEEOS0_OT_.exit105
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  store i32 3, ptr %7, align 8, !tbaa !113
  %i.gm = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @.str.222, ptr %i.gm, align 8, !tbaa !114
  %.sroa.2.0..sroa_idx.i.i.i.i.i107 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 28, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i107, align 8, !tbaa !115
  %i.gn = load i32, ptr %i.fv, align 8, !tbaa !117 ; 2 uses
  %i.go = load i32, ptr %i.fx, align 4, !tbaa !118
  %.not.i.i.i.i.i108 = icmp ult i32 %i.gn, %i.go
  br i1 %.not.i.i.i.i.i108, label %bb.bo, label %bb.bn, !prof !119

bb.bn:                                            ; preds = %bb.bm
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ft, ptr noundef nonnull align 8 dereferenceable(24) %7)
  br label %_ZN4mlir10Diagnostic6appendIRA29_KcEERS0_OT_.exit.i.i109

bb.bo:                                            ; preds = %bb.bm
  %i.gp = zext i32 %i.gn to i64
  %i.gq = load ptr, ptr %i.ft, align 8, !tbaa !120
  %i.gr = getelementptr inbounds nuw [24 x i8], ptr %i.gq, i64 %i.gp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.gr, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  %i.gs = load i32, ptr %i.fv, align 8, !tbaa !117
  %i.gt = add i32 %i.gs, 1
  store i32 %i.gt, ptr %i.fv, align 8, !tbaa !117
  br label %_ZN4mlir10Diagnostic6appendIRA29_KcEERS0_OT_.exit.i.i109

_ZN4mlir10Diagnostic6appendIRA29_KcEERS0_OT_.exit.i.i109: ; preds = %bb.bo, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA29_KcEEOS0_OT_.exit110

_ZNO4mlir18InFlightDiagnosticlsIRA29_KcEEOS0_OT_.exit110: ; preds = %bb.bf, %_ZNO4mlir18InFlightDiagnosticlsIRA10_KcEEOS0_OT_.exit101, %_ZNO4mlir18InFlightDiagnosticlsIlEEOS0_OT_.exit105, %_ZN4mlir10Diagnostic6appendIRA29_KcEERS0_OT_.exit.i.i109
  %i.gu = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %33) #29
  %i.gv = load ptr, ptr %33, align 8, !tbaa !107
  %.not.i111 = icmp eq ptr %i.gv, null
  br i1 %.not.i111, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA29_KcEEOS0_OT_.exit110
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %33) #29
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %_ZNO4mlir18InFlightDiagnosticlsIRA29_KcEEOS0_OT_.exit110
  %i.gw = getelementptr inbounds nuw i8, ptr %33, i64 200 ; 2 uses
  %i.gx = load i8, ptr %i.gw, align 8, !tbaa !108, !range !109, !noundef !110
  %i.gy = trunc nuw i8 %i.gx to i1
  store i8 0, ptr %i.gw, align 8, !tbaa !108
  br i1 %i.gy, label %bb.br, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit112

bb.br:                                            ; preds = %bb.bq
  %i.gz = getelementptr inbounds nuw i8, ptr %33, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.gz) #29
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit112

_ZN4mlir18InFlightDiagnosticD2Ev.exit112:         ; preds = %bb.bq, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #29
  br label %bb.cg

bb.bs:                                            ; preds = %bb.be
  %i.ha = load i64, ptr %i.x, align 8, !tbaa !115
  %i.hb = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !115
  %i.hd = shl i64 %i.ha, 5
  %i.he = mul i64 %i.hd, %i.hc
  %i.hf = mul nsw i64 %.sroa.8.0.copyload, %.sroa.0.0.copyload ; 2 uses
  %.not56 = icmp eq i64 %i.he, %i.hf
  br i1 %.not56, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #29
  %i.hg = getelementptr inbounds nuw i8, ptr %36, i64 32
  store i8 1, ptr %i.hg, align 8, !tbaa !99
  %i.hh = getelementptr inbounds nuw i8, ptr %36, i64 33
  store i8 1, ptr %i.hh, align 1, !tbaa !98
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %35, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %36) #29
  %i.hi = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsIRA10_KcEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %35, ptr noundef nonnull align 1 dereferenceable(10) @.str.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #29
  store i64 %i.hf, ptr %i.d, align 8, !tbaa !115
  %i.hj = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsIlEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %i.hi, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.hk = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsIRA29_KcEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %i.hj, ptr noundef nonnull align 1 dereferenceable(29) @.str.223)
  %i.hl = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %i.hk) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #29
  call void @_ZN4mlir18InFlightDiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %35) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #29
  br label %bb.cg

bb.bu:                                            ; preds = %bb.bs
  br i1 %5, label %bb.bv, label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  %i.hm = call noundef zeroext i1 @_ZNK4mlir4Type5isF32Ev(ptr noundef nonnull align 8 dereferenceable(8) %20) #29
  br i1 %i.hm, label %._crit_edge, label %bb.bw

._crit_edge:                                      ; preds = %bb.bv
  %.pre = load i64, ptr %i.r, align 8, !tbaa !115
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #29
  %i.hn = getelementptr inbounds nuw i8, ptr %38, i64 32
  store i8 1, ptr %i.hn, align 8, !tbaa !99
  %i.ho = getelementptr inbounds nuw i8, ptr %38, i64 33
  store i8 1, ptr %i.ho, align 1, !tbaa !98
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %37, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %38) #29
  %i.hp = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsIRA49_KcEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %37, ptr noundef nonnull align 1 dereferenceable(49) @.str.224)
  %i.hq = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %i.hp) #29
  call void @_ZN4mlir18InFlightDiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %37) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #29
  br label %bb.cg

bb.bx:                                            ; preds = %._crit_edge, %bb.bu
  %i.hr = phi i64 [ %.pre, %._crit_edge ], [ %i.dt, %bb.bu ]
  %i.hs = sdiv i64 %.sroa.0.0.copyload, 8         ; 2 uses
  %i.ht = sdiv i64 %.sroa.8.0.copyload, 8         ; 2 uses
  %51 = extractelement <2 x i32> %48, i64 0
  %52 = sext i32 %51 to i64
  %i.hu = sdiv i64 %.sroa.13.0.copyload, %52      ; 2 uses
  %i.hv = mul nsw i64 %i.hu, %i.hs                ; 2 uses
  %i.hw = sdiv i64 %i.hv, %i.ds
  %.not57 = icmp eq i64 %i.hr, %i.hw
  br i1 %.not57, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.hx = load i64, ptr %i.du, align 8, !tbaa !115
  %53 = sext i32 %49 to i64
  %.not58 = icmp eq i64 %i.hx, %53
  br i1 %.not58, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #29
  %i.hy = getelementptr inbounds nuw i8, ptr %40, i64 32
  store i8 1, ptr %i.hy, align 8, !tbaa !99
  %i.hz = getelementptr inbounds nuw i8, ptr %40, i64 33
  store i8 1, ptr %i.hz, align 1, !tbaa !98
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %39, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %40) #29
  %i.ia = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsIRA33_KcEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %39, ptr noundef nonnull align 1 dereferenceable(33) @.str.225)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #29
  store i64 %i.hv, ptr %i.e, align 8, !tbaa !115
  %i.ib = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsIlEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ia, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %i.ic = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsIRA4_KcEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ib, ptr noundef nonnull align 1 dereferenceable(4) @.str.226)
  %i.id = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsIRlEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ic, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.ie = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %i.id, ptr noundef nonnull align 1 dereferenceable(2) @.str.173)
  %i.if = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %i.ie) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #29
  call void @_ZN4mlir18InFlightDiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %39) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #29
  br label %bb.cg

bb.ca:                                            ; preds = %bb.by
  %i.ig = load i64, ptr %i.u, align 8, !tbaa !115
  %i.ih = mul nsw i64 %i.hu, %i.ht                ; 2 uses
  %.not59 = icmp eq i64 %i.ig, %i.ih
  br i1 %.not59, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.ii = load i64, ptr %i.fl, align 8, !tbaa !115
  %54 = sext i32 %49 to i64
  %.not60 = icmp eq i64 %i.ii, %54
  br i1 %.not60, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #29
  %i.ij = getelementptr inbounds nuw i8, ptr %42, i64 32
  store i8 1, ptr %i.ij, align 8, !tbaa !99
  %i.ik = getelementptr inbounds nuw i8, ptr %42, i64 33
  store i8 1, ptr %i.ik, align 1, !tbaa !98
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %41, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %42) #29
  %i.il = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsIRA33_KcEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %41, ptr noundef nonnull align 1 dereferenceable(33) @.str.227)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #29
  store i64 %i.ih, ptr %i.f, align 8, !tbaa !115
  %i.im = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsIlEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %i.il, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.in = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsIRA4_KcEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %i.im, ptr noundef nonnull align 1 dereferenceable(4) @.str.226)
  %i.io = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsIRlEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %i.in, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.ip = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %i.io, ptr noundef nonnull align 1 dereferenceable(2) @.str.173)
  %i.iq = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %i.ip) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #29
  call void @_ZN4mlir18InFlightDiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %41) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #29
  br label %bb.cg

bb.cd:                                            ; preds = %bb.cb
  %i.ir = load i64, ptr %i.x, align 8, !tbaa !115
  %i.is = mul nsw i64 %i.ht, %i.hs                ; 2 uses
  %.not61 = icmp eq i64 %i.ir, %i.is
  br i1 %.not61, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.it = load i64, ptr %i.hb, align 8, !tbaa !115
  %.not62 = icmp eq i64 %i.it, 2
  br i1 %.not62, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #29
  %i.iu = getelementptr inbounds nuw i8, ptr %44, i64 32
  store i8 1, ptr %i.iu, align 8, !tbaa !99
  %i.iv = getelementptr inbounds nuw i8, ptr %44, i64 33
  store i8 1, ptr %i.iv, align 1, !tbaa !98
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %43, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %44) #29
  %i.iw = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsIRA33_KcEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %43, ptr noundef nonnull align 1 dereferenceable(33) @.str.228)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #29
  store i64 %i.is, ptr %i.g, align 8, !tbaa !115
  %i.ix = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsIlEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %i.iw, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  %i.iy = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsIRA4_KcEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ix, ptr noundef nonnull align 1 dereferenceable(4) @.str.226)
  %i.iz = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsIRlEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %i.iy, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.ja = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %i.iz, ptr noundef nonnull align 1 dereferenceable(2) @.str.173)
  %i.jb = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %i.ja) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #29
  call void @_ZN4mlir18InFlightDiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %43) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #29
  br label %bb.cg

bb.cg:                                            ; preds = %_ZN4mlir18InFlightDiagnosticD2Ev.exit96, %_ZN4mlir18InFlightDiagnosticD2Ev.exit112, %bb.bt, %bb.bw, %bb.cf, %bb.cc, %bb.bz, %bb.ce, %_ZN4mlir18InFlightDiagnosticD2Ev.exit86, %_ZN4mlir18InFlightDiagnosticD2Ev.exit79, %_ZN4mlir18InFlightDiagnosticD2Ev.exit72, %_ZNO4mlir18InFlightDiagnosticlsINS_13OperationNameEEEOS0_OT_.exit, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.0.2 = phi i8 [ %i.ap, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ %i.by, %_ZN4mlir18InFlightDiagnosticD2Ev.exit72 ], [ %i.cs, %_ZN4mlir18InFlightDiagnosticD2Ev.exit79 ], [ %i.dm, %_ZN4mlir18InFlightDiagnosticD2Ev.exit86 ], [ %i.bj, %_ZNO4mlir18InFlightDiagnosticlsINS_13OperationNameEEEOS0_OT_.exit ], [ %i.fe, %_ZN4mlir18InFlightDiagnosticD2Ev.exit96 ], [ %i.gu, %_ZN4mlir18InFlightDiagnosticD2Ev.exit112 ], [ %i.hl, %bb.bt ], [ %i.hq, %bb.bw ], [ %i.if, %bb.bz ], [ %i.iq, %bb.cc ], [ %i.jb, %bb.cf ], [ 1, %bb.ce ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i8 %.sroa.0.2
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5nvgpu15MmaSparseSyncOp5buildERNS_9OpBuilderERNS_14OperationStateENS_5ValueES6_S6_S6_N4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, ptr %2, ptr %3, ptr %4, ptr %5, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef") align 8 captures(none) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.a, align 8
  %i.b = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.c = inttoptr i64 %i.b to ptr
  %.sroa.0.0.copyload = load ptr, ptr %6, align 8, !tbaa !132
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !115
  %i.d = tail call ptr @_ZN4mlir7Builder15getI64ArrayAttrEN4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload) #29
  %i.e = ptrtoint ptr %5 to i64
  %i.f = ptrtoint ptr %i.d to i64
  tail call void @_ZN4mlir5nvgpu15MmaSparseSyncOp5buildERNS_9OpBuilderERNS_14OperationStateENS_4TypeENS_5ValueES7_S7_S7_NS_9ArrayAttrEjNS_8UnitAttrE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, ptr %i.c, ptr %2, ptr %3, ptr %4, i64 %i.e, i64 %i.f, i32 noundef 0, i64 0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5nvgpu15MmaSparseSyncOp5buildERNS_9OpBuilderERNS_14OperationStateENS_4TypeENS_5ValueES7_S7_S7_NS_9ArrayAttrEjNS_8UnitAttrE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, ptr %2, ptr %3, ptr %4, ptr %5, i64 %6, i64 %7, i32 noundef %8, i64 %9) local_unnamed_addr #0 align 2 {
bb.a:
  %10 = alloca %class.anon.2107, align 1          ; 3 uses
  %11 = alloca %class.anon.2109, align 1          ; 3 uses
  %12 = alloca %class.anon.2107, align 1          ; 3 uses
  %13 = alloca %class.anon.2109, align 1          ; 3 uses
  %14 = alloca %class.anon.2107, align 1          ; 3 uses
  %15 = alloca %class.anon.2109, align 1          ; 3 uses
  %16 = alloca %"class.mlir::Value", align 8      ; 2 uses
  %17 = alloca %"class.mlir::Value", align 8      ; 2 uses
  %18 = alloca %"class.mlir::Value", align 8      ; 2 uses
  %19 = alloca %"class.mlir::Value", align 8      ; 2 uses
  store ptr %3, ptr %16, align 8
  store ptr %4, ptr %17, align 8
  store ptr %5, ptr %18, align 8
  %i.a = inttoptr i64 %6 to ptr
  store ptr %i.a, ptr %19, align 8
  %i.b = inttoptr i64 %7 to ptr
  %i.c = ptrtoint ptr %16 to i64
  call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %i.c, i64 1) #29
  %i.d = ptrtoint ptr %17 to i64
  call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %i.d, i64 1) #29
  %i.e = ptrtoint ptr %18 to i64
  call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %i.e, i64 1) #29
  %i.f = ptrtoint ptr %19 to i64
  call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %i.f, i64 1) #29
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 6 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !129  ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.b, label %_ZN4mlir14OperationState18getOrAddPropertiesINS_5nvgpu6detail33MmaSparseSyncOpGenericAdaptorBase10PropertiesEEERT_v.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.j = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #31 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  store ptr @_ZN4mlir6detail14TypeIDResolverINS_5nvgpu6detail33MmaSparseSyncOpGenericAdaptorBase10PropertiesEvE2idE, ptr %i.i, align 8, !tbaa !76
  store ptr %i.j, ptr %i.g, align 8, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  %i.k = ptrtoint ptr %14 to i64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 272
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefEEE11callback_fnIZNS1_14OperationState18getOrAddPropertiesINS1_5nvgpu6detail33MmaSparseSyncOpGenericAdaptorBase10PropertiesEEERT_vEUlS2_E_EEvlS2_, ptr %i.l, align 8, !tbaa !130
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i64 %i.k, ptr %.sroa.43.0..sroa_idx.i, align 8, !tbaa !115
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29
  %i.m = ptrtoint ptr %15 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 288
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefES2_EE11callback_fnIZNS1_14OperationState18getOrAddPropertiesINS1_5nvgpu6detail33MmaSparseSyncOpGenericAdaptorBase10PropertiesEEERT_vEUlS2_S2_E_EEvlS2_S2_, ptr %i.n, align 8, !tbaa !130
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 296
  store i64 %i.m, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !115
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  br label %_ZN4mlir14OperationState18getOrAddPropertiesINS_5nvgpu6detail33MmaSparseSyncOpGenericAdaptorBase10PropertiesEEERT_v.exit

_ZN4mlir14OperationState18getOrAddPropertiesINS_5nvgpu6detail33MmaSparseSyncOpGenericAdaptorBase10PropertiesEEERT_v.exit: ; preds = %bb.a, %bb.b
  %i.o = phi ptr [ %i.j, %bb.b ], [ %i.h, %bb.a ]
  store ptr %i.b, ptr %i.o, align 8
  %i.p = call ptr @_ZN4mlir7Builder14getIntegerTypeEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 32) #29
  %i.q = zext i32 %8 to i64
  %i.r = call ptr @_ZN4mlir7Builder14getIntegerAttrENS_4TypeEl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %i.p, i64 noundef %i.q) #29
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !129  ; 2 uses
  %.not.i13 = icmp eq ptr %i.s, null
  br i1 %.not.i13, label %bb.c, label %_ZN4mlir14OperationState18getOrAddPropertiesINS_5nvgpu6detail33MmaSparseSyncOpGenericAdaptorBase10PropertiesEEERT_v.exit16

bb.c:                                             ; preds = %_ZN4mlir14OperationState18getOrAddPropertiesINS_5nvgpu6detail33MmaSparseSyncOpGenericAdaptorBase10PropertiesEEERT_v.exit
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.u = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #31 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  store ptr @_ZN4mlir6detail14TypeIDResolverINS_5nvgpu6detail33MmaSparseSyncOpGenericAdaptorBase10PropertiesEvE2idE, ptr %i.t, align 8, !tbaa !76
  store ptr %i.u, ptr %i.g, align 8, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  %i.v = ptrtoint ptr %12 to i64
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 272
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefEEE11callback_fnIZNS1_14OperationState18getOrAddPropertiesINS1_5nvgpu6detail33MmaSparseSyncOpGenericAdaptorBase10PropertiesEEERT_vEUlS2_E_EEvlS2_, ptr %i.w, align 8, !tbaa !130
  %.sroa.43.0..sroa_idx.i14 = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i64 %i.v, ptr %.sroa.43.0..sroa_idx.i14, align 8, !tbaa !115
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  %i.x = ptrtoint ptr %13 to i64
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 288
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefES2_EE11callback_fnIZNS1_14OperationState18getOrAddPropertiesINS1_5nvgpu6detail33MmaSparseSyncOpGenericAdaptorBase10PropertiesEEERT_vEUlS2_S2_E_EEvlS2_S2_, ptr %i.y, align 8, !tbaa !130
  %.sroa.4.0..sroa_idx.i15 = getelementptr inbounds nuw i8, ptr %1, i64 296
  store i64 %i.x, ptr %.sroa.4.0..sroa_idx.i15, align 8, !tbaa !115
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  br label %_ZN4mlir14OperationState18getOrAddPropertiesINS_5nvgpu6detail33MmaSparseSyncOpGenericAdaptorBase10PropertiesEEERT_v.exit16

_ZN4mlir14OperationState18getOrAddPropertiesINS_5nvgpu6detail33MmaSparseSyncOpGenericAdaptorBase10PropertiesEEERT_v.exit16: ; preds = %_ZN4mlir14OperationState18getOrAddPropertiesINS_5nvgpu6detail33MmaSparseSyncOpGenericAdaptorBase10PropertiesEEERT_v.exit, %bb.c
  %i.z = phi ptr [ %i.u, %bb.c ], [ %i.s, %_ZN4mlir14OperationState18getOrAddPropertiesINS_5nvgpu6detail33MmaSparseSyncOpGenericAdaptorBase10PropertiesEEERT_v.exit ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.r, ptr %i.aa, align 8
  %.not = icmp eq i64 %9, 0
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN4mlir14OperationState18getOrAddPropertiesINS_5nvgpu6detail33MmaSparseSyncOpGenericAdaptorBase10PropertiesEEERT_v.exit16
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !129 ; 2 uses
  %.not.i17 = icmp eq ptr %i.ab, null
  br i1 %.not.i17, label %bb.e, label %_ZN4mlir14OperationState18getOrAddPropertiesINS_5nvgpu6detail33MmaSparseSyncOpGenericAdaptorBase10PropertiesEEERT_v.exit20

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.ad = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #31 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false)
  store ptr @_ZN4mlir6detail14TypeIDResolverINS_5nvgpu6detail33MmaSparseSyncOpGenericAdaptorBase10PropertiesEvE2idE, ptr %i.ac, align 8, !tbaa !76
  store ptr %i.ad, ptr %i.g, align 8, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  %i.ae = ptrtoint ptr %10 to i64
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 272
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefEEE11callback_fnIZNS1_14OperationState18getOrAddPropertiesINS1_5nvgpu6detail33MmaSparseSyncOpGenericAdaptorBase10PropertiesEEERT_vEUlS2_E_EEvlS2_, ptr %i.af, align 8, !tbaa !130
  %.sroa.43.0..sroa_idx.i18 = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i64 %i.ae, ptr %.sroa.43.0..sroa_idx.i18, align 8, !tbaa !115
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  %i.ag = ptrtoint ptr %11 to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 288
end_hunk_1
