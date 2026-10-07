Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PtrDialect?download=true
inline.NumInlined: 14421
inline.NumDeleted: 5291
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 16
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN4mlir3ptr9PtrDiffOp20verifyInvariantsImplEv:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.161, ptr %i.n, align 8, !tbaa !82
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 10, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !84
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 6 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !59   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 36 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !85
  %.not.i.i.i.i.i.i.i = icmp ult i32 %i.p, %i.r
  br i1 %.not.i.i.i.i.i.i.i, label %bb.e, label %bb.d, !prof !86

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA11_KcEEOS0_OT_.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.p to i64
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !58
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.v = load i32, ptr %i.o, align 8, !tbaa !59
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.o, align 8, !tbaa !59
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA11_KcEEOS0_OT_.exit.i.i

_ZNO4mlir18InFlightDiagnosticlsIRA11_KcEEOS0_OT_.exit.i.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %.pr.i.i = load ptr, ptr %5, align 8, !tbaa !77
  %.not.i.i1.i.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i1.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA57_KcEEOS0_OT_.exit.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRN4llvm9StringRefEEEOS0_OT_.exit.i.i

_ZNO4mlir18InFlightDiagnosticlsIRN4llvm9StringRefEEEOS0_OT_.exit.i.i: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA11_KcEEOS0_OT_.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 5, ptr %i.y, align 8, !tbaa !67
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.z, align 1, !tbaa !68
  store ptr @.str.109, ptr %3, align 8, !tbaa !120
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 5, ptr %i.aa, align 8, !tbaa !120
  %i.ab = call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsEON4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(192) %i.x, ptr noundef nonnull align 8 dereferenceable(34) %3) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %.pr8.i.i = load ptr, ptr %5, align 8, !tbaa !77
  %.not.i.i2.i.i = icmp eq ptr %.pr8.i.i, null
  br i1 %.not.i.i2.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA57_KcEEOS0_OT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRN4llvm9StringRefEEEOS0_OT_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store i32 3, ptr %2, align 8, !tbaa !80
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.171, ptr %i.ac, align 8, !tbaa !82
  %.sroa.2.0..sroa_idx.i.i.i.i.i3.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 56, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i3.i.i, align 8, !tbaa !84
  %i.ad = load i32, ptr %i.o, align 8, !tbaa !59  ; 2 uses
  %i.ae = load i32, ptr %i.q, align 4, !tbaa !85
  %.not.i.i.i.i.i4.i.i = icmp ult i32 %i.ad, %i.ae
  br i1 %.not.i.i.i.i.i4.i.i, label %bb.h, label %bb.g, !prof !86

bb.g:                                             ; preds = %bb.f
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZN4mlir10Diagnostic6appendIRA57_KcEERS0_OT_.exit.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.af = zext i32 %i.ad to i64
  %i.ag = load ptr, ptr %i.m, align 8, !tbaa !58
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.ai = load i32, ptr %i.o, align 8, !tbaa !59
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.o, align 8, !tbaa !59
  br label %_ZN4mlir10Diagnostic6appendIRA57_KcEERS0_OT_.exit.i.i.i.i

_ZN4mlir10Diagnostic6appendIRA57_KcEERS0_OT_.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA57_KcEEOS0_OT_.exit.i.i

_ZNO4mlir18InFlightDiagnosticlsIRA57_KcEEOS0_OT_.exit.i.i: ; preds = %_ZN4mlir10Diagnostic6appendIRA57_KcEERS0_OT_.exit.i.i.i.i, %_ZNO4mlir18InFlightDiagnosticlsIRN4llvm9StringRefEEEOS0_OT_.exit.i.i, %_ZNO4mlir18InFlightDiagnosticlsIRA11_KcEEOS0_OT_.exit.i.i, %bb.b
  %i.ak = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %5) #25
  %i.al = load ptr, ptr %5, align 8, !tbaa !77
  %.not.i.i.i38 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i38, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA57_KcEEOS0_OT_.exit.i.i
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %5) #25
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNO4mlir18InFlightDiagnosticlsIRA57_KcEEOS0_OT_.exit.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 200 ; 2 uses
  %i.an = load i8, ptr %i.am, align 8, !tbaa !87, !range !88, !noundef !89
  %i.ao = trunc nuw i8 %i.an to i1
  store i8 0, ptr %i.am, align 8, !tbaa !87
  br i1 %i.ao, label %bb.k, label %_ZL40__mlir_ods_local_prop_constraint_PtrOps3PN4mlir9OperationENS_3ptr12PtrDiffFlagsEN4llvm9StringRefE.exit

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ap) #25
  br label %_ZL40__mlir_ods_local_prop_constraint_PtrOps3PN4mlir9OperationENS_3ptr12PtrDiffFlagsEN4llvm9StringRefE.exit

_ZL40__mlir_ods_local_prop_constraint_PtrOps3PN4mlir9OperationENS_3ptr12PtrDiffFlagsEN4llvm9StringRefE.exit: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.aq = trunc nuw i8 %i.ak to i1
  br i1 %i.aq, label %_ZL40__mlir_ods_local_prop_constraint_PtrOps3PN4mlir9OperationENS_3ptr12PtrDiffFlagsEN4llvm9StringRefE.exit..thread_crit_edge, label %.thread161

_ZL40__mlir_ods_local_prop_constraint_PtrOps3PN4mlir9OperationENS_3ptr12PtrDiffFlagsEN4llvm9StringRefE.exit..thread_crit_edge: ; preds = %_ZL40__mlir_ods_local_prop_constraint_PtrOps3PN4mlir9OperationENS_3ptr12PtrDiffFlagsEN4llvm9StringRefE.exit
  %.pre = load ptr, ptr %0, align 8, !tbaa !64
  br label %.thread

.thread:                                          ; preds = %_ZL40__mlir_ods_local_prop_constraint_PtrOps3PN4mlir9OperationENS_3ptr12PtrDiffFlagsEN4llvm9StringRefE.exit..thread_crit_edge, %bb.a
  %i.ar = phi ptr [ %.pre, %_ZL40__mlir_ods_local_prop_constraint_PtrOps3PN4mlir9OperationENS_3ptr12PtrDiffFlagsEN4llvm9StringRefE.exit..thread_crit_edge ], [ %i.a, %bb.a ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !45
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.au, align 8, !tbaa !46
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.av, align 8
  %i.aw = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = call fastcc i8 @_ZL40__mlir_ods_local_type_constraint_PtrOps8PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.ar, ptr %i.ax, ptr nonnull @.str.69, i64 7, i32 noundef 0)
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %_ZN4mlir3ptr9PtrDiffOp14getODSOperandsEj.exit48, label %.thread161

_ZN4mlir3ptr9PtrDiffOp14getODSOperandsEj.exit48:  ; preds = %.thread
  %i.ba = load ptr, ptr %0, align 8, !tbaa !64    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 72
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !45
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 56
  %.sroa.0.0.copyload.i.i.i53 = load ptr, ptr %i.bd, align 8, !tbaa !46
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i53, i64 8
  %.0.copyload.i.i.i.i.i54 = load i64, ptr %i.be, align 8
  %i.bf = and i64 %.0.copyload.i.i.i.i.i54, -8
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = call fastcc i8 @_ZL40__mlir_ods_local_type_constraint_PtrOps8PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.ba, ptr %i.bg, ptr nonnull @.str.69, i64 7, i32 noundef 1)
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.l, label %.thread161

bb.l:                                             ; preds = %_ZN4mlir3ptr9PtrDiffOp14getODSOperandsEj.exit48
  %i.bj = load ptr, ptr %0, align 8, !tbaa !64
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -16
  %i.bl = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i64 noundef 0) #25
  %i.bm = load ptr, ptr %0, align 8, !tbaa !64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.0.copyload.i.i.i.i.i61 = load i64, ptr %i.bn, align 8
  %i.bo = and i64 %.0.copyload.i.i.i.i.i61, -8
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = call fastcc i8 @_ZL40__mlir_ods_local_type_constraint_PtrOps9PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.bm, ptr %i.bp, ptr nonnull @.str.67, i64 6, i32 noundef 0)
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %_ZN4mlir3ptr9PtrDiffOp14getODSOperandsEj.exit75, label %.thread161

_ZN4mlir3ptr9PtrDiffOp14getODSOperandsEj.exit75:  ; preds = %bb.l
  %i.bs = load ptr, ptr %0, align 8, !tbaa !64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 72
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !45 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %.sroa.0.0.copyload.i.i.i69 = load ptr, ptr %i.bv, align 8, !tbaa !46
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i69, i64 8
  %.0.copyload.i.i.i.i.i70 = load i64, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 56
  %.sroa.0.0.copyload.i.i.i78 = load ptr, ptr %i.bx, align 8, !tbaa !46
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i78, i64 8
  %.0.copyload.i.i.i.i.i79 = load i64, ptr %i.by, align 8
  %i.bz = xor i64 %.0.copyload.i.i.i.i.i79, %.0.copyload.i.i.i.i.i70
  %i.ca = icmp ult i64 %i.bz, 8
  br i1 %i.ca, label %.thread161, label %.thread180

.thread180:                                       ; preds = %_ZN4mlir3ptr9PtrDiffOp14getODSOperandsEj.exit75
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 1, ptr %i.cc, align 1, !tbaa !68
  store ptr @.str.111, ptr %7, align 8, !tbaa !120
  store i8 3, ptr %i.cb, align 8, !tbaa !67
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %7) #25
  %i.cd = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %6) #25
  %i.ce = load ptr, ptr %6, align 8, !tbaa !77
  %.not.i = icmp eq ptr %i.ce, null
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.thread180
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %6) #25
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.thread180
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 200 ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 8, !tbaa !87, !range !88, !noundef !89
  %i.ch = trunc nuw i8 %i.cg to i1
  store i8 0, ptr %i.cf, align 8, !tbaa !87
  br i1 %i.ch, label %bb.o, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.o:                                             ; preds = %bb.n
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ci) #25
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %.thread161

.thread161:                                       ; preds = %_ZN4mlir3ptr9PtrDiffOp14getODSOperandsEj.exit75, %.thread, %_ZN4mlir3ptr9PtrDiffOp14getODSOperandsEj.exit48, %bb.l, %_ZL40__mlir_ods_local_prop_constraint_PtrOps3PN4mlir9OperationENS_3ptr12PtrDiffFlagsEN4llvm9StringRefE.exit, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.033.11 = phi i8 [ %i.cd, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 0, %_ZN4mlir3ptr9PtrDiffOp14getODSOperandsEj.exit48 ], [ 0, %_ZL40__mlir_ods_local_prop_constraint_PtrOps3PN4mlir9OperationENS_3ptr12PtrDiffFlagsEN4llvm9StringRefE.exit ], [ 0, %.thread ], [ 0, %bb.l ], [ 1, %_ZN4mlir3ptr9PtrDiffOp14getODSOperandsEj.exit75 ]
  ret i8 %.sroa.033.11
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir3ptr9PtrDiffOp16verifyInvariantsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call i8 @_ZN4mlir3ptr9PtrDiffOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i8 @_ZN4mlir3ptr9PtrDiffOp6verifyEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.02.0 = phi i8 [ 0, %bb.c ], [ 1, %bb.b ]
  ret i8 %.sroa.02.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir3ptr9PtrDiffOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(304) %1) #0 align 2 {
bb.a:
  %2 = alloca %class.anon.1617, align 1           ; 3 uses
  %3 = alloca %class.anon.1619, align 1           ; 3 uses
  %4 = alloca %"struct.mlir::OpAsmParser::UnresolvedOperand", align 8 ; 5 uses
  %5 = alloca %"class.llvm::ArrayRef.631", align 8 ; 5 uses
  %6 = alloca %"struct.mlir::OpAsmParser::UnresolvedOperand", align 8 ; 5 uses
  %7 = alloca %"class.mlir::Type", align 8        ; 5 uses
  %8 = alloca %"class.llvm::ArrayRef.599", align 8 ; 6 uses
  %9 = alloca %"class.mlir::Type", align 8        ; 5 uses
  %10 = alloca %"class.mlir::Type", align 8       ; 6 uses
  %11 = alloca %"class.mlir::Type", align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %4, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store ptr %4, ptr %5, align 8, !tbaa !284
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 1, ptr %i.a, align 8, !tbaa !285
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %6, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store ptr null, ptr %7, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store ptr %7, ptr %8, align 8, !tbaa !288
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 1, ptr %i.b, align 8, !tbaa !289
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  store ptr null, ptr %9, align 8, !tbaa !92
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !124  ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.b, label %_ZN4mlir14OperationState18getOrAddPropertiesINS_3ptr6detail27PtrDiffOpGenericAdaptorBase10PropertiesEEERT_v.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.f = call noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #24 ; 3 uses
  store i8 0, ptr %i.f, align 1, !tbaa !315
  store ptr @_ZN4mlir6detail14TypeIDResolverINS_3ptr6detail27PtrDiffOpGenericAdaptorBase10PropertiesEvE2idE, ptr %i.e, align 8, !tbaa !56
  store ptr %i.f, ptr %i.c, align 8, !tbaa !125
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.g = ptrtoint ptr %2 to i64
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 272
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefEEE11callback_fnIZNS1_14OperationState18getOrAddPropertiesINS1_3ptr6detail27PtrDiffOpGenericAdaptorBase10PropertiesEEERT_vEUlS2_E_EEvlS2_, ptr %i.h, align 8, !tbaa !125
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i64 %i.g, ptr %.sroa.43.0..sroa_idx.i, align 8, !tbaa !84
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.i = ptrtoint ptr %3 to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 288
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefES2_EE11callback_fnIZNS1_14OperationState18getOrAddPropertiesINS1_3ptr6detail27PtrDiffOpGenericAdaptorBase10PropertiesEEERT_vEUlS2_S2_E_EEvlS2_S2_, ptr %i.j, align 8, !tbaa !125
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 296
  store i64 %i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !84
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %_ZN4mlir14OperationState18getOrAddPropertiesINS_3ptr6detail27PtrDiffOpGenericAdaptorBase10PropertiesEEERT_v.exit

_ZN4mlir14OperationState18getOrAddPropertiesINS_3ptr6detail27PtrDiffOpGenericAdaptorBase10PropertiesEEERT_v.exit: ; preds = %bb.a, %bb.b
  %i.k = phi ptr [ %i.f, %bb.b ], [ %i.d, %bb.a ]
  %i.l = call i24 @_ZN4mlir11FieldParserISt8optionalINS_3ptr12PtrDiffFlagsEES4_E5parseINS_11OpAsmParserEEEN4llvm9FailureOrIS4_EERT_(ptr noundef nonnull align 8 dereferenceable(8) %0) ; 3 uses
  %.sroa.0.0.extract.trunc.i = trunc i24 %i.l to i8
  %i.m = and i24 %i.l, 65536
  %.not.i55 = icmp eq i24 %i.m, 0
  br i1 %.not.i55, label %.critedge54, label %bb.c

bb.c:                                             ; preds = %_ZN4mlir14OperationState18getOrAddPropertiesINS_3ptr6detail27PtrDiffOpGenericAdaptorBase10PropertiesEEERT_v.exit
  %i.n = and i24 %i.l, 256
  %.not2.i = icmp eq i24 %i.n, 0
  br i1 %.not2.i, label %.critedge4, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 %.sroa.0.0.extract.trunc.i, ptr %i.k, align 1, !tbaa !313
  br label %.critedge4

.critedge4:                                       ; preds = %bb.c, %bb.d
  %i.o = load ptr, ptr %0, align 8, !tbaa !39
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = call ptr %i.q(ptr noundef nonnull align 8 dereferenceable(8) %0) #25
  %i.s = load ptr, ptr %0, align 8, !tbaa !39
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 736
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = call i8 %i.u(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %4, i1 noundef zeroext true) #25
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.e, label %.critedge54

bb.e:                                             ; preds = %.critedge4
  %i.x = load ptr, ptr %0, align 8, !tbaa !39
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 120
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = call i8 %i.z(ptr noundef nonnull align 8 dereferenceable(8) %0) #25
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.f, label %.critedge54

bb.f:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr %0, align 8, !tbaa !39
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = call ptr %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %0) #25 ; 0 uses
  %i.ag = load ptr, ptr %0, align 8, !tbaa !39
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 736
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = call i8 %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %6, i1 noundef zeroext true) #25
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.g, label %.critedge54

bb.g:                                             ; preds = %bb.f
  %i.al = load ptr, ptr %0, align 8, !tbaa !39
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = call ptr %i.an(ptr noundef nonnull align 8 dereferenceable(8) %0) #25 ; 0 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.aq = load ptr, ptr %0, align 8, !tbaa !39
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 520
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = call i8 %i.as(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.ap) #25
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.h, label %.critedge54

bb.h:                                             ; preds = %bb.g
  %i.av = load ptr, ptr %0, align 8, !tbaa !39
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 104
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = call i8 %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %0) #25
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.i, label %.critedge54

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  store ptr null, ptr %10, align 8, !tbaa !92
  %i.ba = load ptr, ptr %0, align 8, !tbaa !39
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 568
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = call i8 %i.bc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %10) #25, !inline_history !16
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.j, label %.thread83

.thread83:                                        ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %.critedge54

bb.j:                                             ; preds = %bb.i
  %i.bf = load i64, ptr %10, align 8, !tbaa !247
  store i64 %i.bf, ptr %7, align 8, !tbaa !247
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %i.bg = load ptr, ptr %0, align 8, !tbaa !39
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = call i8 %i.bi(ptr noundef nonnull align 8 dereferenceable(8) %0) #25
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.k, label %.critedge54

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  store ptr null, ptr %11, align 8, !tbaa !92
  %i.bl = load ptr, ptr %0, align 8, !tbaa !39
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 568
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = call i8 %i.bn(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %11) #25, !inline_history !16
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.l, label %.thread84

.thread84:                                        ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %.critedge54

bb.l:                                             ; preds = %bb.k
  %i.bq = load i64, ptr %11, align 8, !tbaa !247
  store i64 %i.bq, ptr %9, align 8, !tbaa !247
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(304) %1, ptr nonnull %9, i64 1)
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bs = call i8 @_ZN4mlir11OpAsmParser15resolveOperandsIRN4llvm8ArrayRefINS0_17UnresolvedOperandEEERNS3_INS_4TypeEEEvEENS2_11ParseResultEOT_OT0_NS2_5SMLocERNS2_15SmallVectorImplINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.br)
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %.critedge.i.i, label %.critedge54

.critedge.i.i:                                    ; preds = %bb.l
  %i.bu = load ptr, ptr %8, align 8, !tbaa !288
end_hunk_0
