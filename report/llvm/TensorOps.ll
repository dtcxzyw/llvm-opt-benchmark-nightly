Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TensorOps?download=true
inline.NumInlined: 24452
inline.NumDeleted: 8751
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 62
begin_hunk_0_@_ZN4mlir6tensor21ParallelInsertSliceOp18getIteratingParentEv:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !103  ; 2 uses
  %.not.i3 = icmp eq ptr %i.i, null
  br i1 %.not.i3, label %_ZN4mlir9Operation11getParentOpEv.exit4, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80) %i.i) #26
  br label %_ZN4mlir9Operation11getParentOpEv.exit4

_ZN4mlir9Operation11getParentOpEv.exit4:          ; preds = %_ZN4mlir9Operation11getParentOpEv.exit, %_ZN4mlir9Operation11getParentOpEv.exit.thread, %bb.c, %bb.b
  %spec.select = phi ptr [ null, %bb.b ], [ %i.j, %bb.c ], [ null, %_ZN4mlir9Operation11getParentOpEv.exit.thread ], [ null, %_ZN4mlir9Operation11getParentOpEv.exit ]
  ret ptr %spec.select
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir6tensor9ScatterOp17getAsmResultNamesEN4llvm12function_refIFvNS_5ValueENS2_9StringRefEEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree readonly captures(none) %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !130
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -16
  %i.c = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 noundef 0) #26
  tail call void %1(i64 noundef %2, ptr %i.c, ptr nonnull @.str.56, i64 7) #26, !inline_history !3
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir6tensor9ScatterOp6verifyEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %2 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %3 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %4 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %5 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %6 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %7 = alloca %"class.mlir::detail::DenseArrayAttrImpl", align 8 ; 4 uses
  %8 = alloca %"class.mlir::RankedTensorType", align 8 ; 4 uses
  %9 = alloca %"class.mlir::RankedTensorType", align 8 ; 4 uses
  %10 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %12 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 20 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.a = load ptr, ptr %0, align 8, !tbaa !130
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !133
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.e, align 8
  %i.f = and i64 %.0.copyload.i.i.i.i.i.i.i, -8
  %i.g = inttoptr i64 %i.f to ptr
  store ptr %i.g, ptr %8, align 8
  %i.h = call { ptr, i64 } @_ZNK4mlir16RankedTensorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #26
  %i.i = extractvalue { ptr, i64 } %i.h, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.j = load ptr, ptr %0, align 8, !tbaa !130    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 44
  %i.l = load i32, ptr %i.k, align 4              ; 2 uses
  %.not.i.i.i.i = icmp ugt i32 %i.l, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.n = lshr i32 %i.l, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i32 %i.n, 1
  %i.o = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i to i64
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.o
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !172
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %7, align 8
  %i.q = call { ptr, i64 } @_ZNK4mlir6detail18DenseArrayAttrImplIlEcvN4llvm8ArrayRefIlEEEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #26 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.r = extractvalue { ptr, i64 } %i.q, 0        ; 3 uses
  %i.s = extractvalue { ptr, i64 } %i.q, 1        ; 3 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !130    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !133
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 88
  %.sroa.0.0.copyload.i.i.i.i.i22 = load ptr, ptr %i.w, align 8, !tbaa !63
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i22, i64 8
  %.0.copyload.i.i.i.i.i.i.i23 = load i64, ptr %i.x, align 8
  %i.y = and i64 %.0.copyload.i.i.i.i.i.i.i23, -8
  %i.z = inttoptr i64 %i.y to ptr
  store ptr %i.z, ptr %9, align 8
  %i.aa = call { ptr, i64 } @_ZNK4mlir16RankedTensorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #26 ; 2 uses
  %i.ab = extractvalue { ptr, i64 } %i.aa, 0
  %i.ac = extractvalue { ptr, i64 } %i.aa, 1
  %i.ad = call fastcc i8 @_ZL25verifyGatherOrScatterDimsPN4mlir9OperationEN4llvm8ArrayRefIlEES4_lNS2_9StringRefES5_(ptr noundef %i.t, ptr %i.r, i64 %i.s, ptr %i.ab, i64 %i.ac, i64 noundef %i.i, ptr nonnull @.str.56, i64 7, ptr nonnull @.str.57, i64 4)
  %i.ae = trunc nuw i8 %i.ad to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br i1 %i.ae, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.af = load ptr, ptr %0, align 8, !tbaa !130   ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 44
  %i.ah = load i32, ptr %i.ag, align 4            ; 3 uses
  %.not.i.i.i.i24 = icmp ugt i32 %i.ah, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i24)
  %i.ai = lshr i32 %i.ah, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i25 = and i32 %i.ai, 1
  %i.aj = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i25 to i64
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 72
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !154
  %.not = icmp eq ptr %i.am, null
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.an = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 1, ptr %i.ao, align 1, !tbaa !158
  store ptr @.str.58, ptr %11, align 8, !tbaa !159
  store i8 3, ptr %i.an, align 8, !tbaa !160
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %11) #26
  %i.ap = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %10) #26
  %i.aq = load ptr, ptr %10, align 8, !tbaa !168
  %.not.i = icmp eq ptr %i.aq, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %10) #26
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 200 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !169, !range !170, !noundef !171
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.f, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i8 0, ptr %i.ar, align 8, !tbaa !169
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.au) #26
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %.critedge

bb.g:                                             ; preds = %bb.b
  %i.av = and i32 %i.ah, 8388608
  %.not.i.i.i.i.i.i26 = icmp ne i32 %i.av, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i26)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !133 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  %.sroa.0.0.copyload.i.i.i.i.i27 = load ptr, ptr %i.ay, align 8, !tbaa !63
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i27, i64 8
  %.0.copyload.i.i.i.i.i.i.i28 = load i64, ptr %i.az, align 8
  %i.ba = and i64 %.0.copyload.i.i.i.i.i.i.i28, -8
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 88
  %.sroa.0.0.copyload.i.i.i.i.i30 = load ptr, ptr %i.bc, align 8, !tbaa !63
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i30, i64 8
  %.0.copyload.i.i.i.i.i.i.i31 = load i64, ptr %i.bd, align 8
  %i.be = and i64 %.0.copyload.i.i.i.i.i.i.i31, -8
  %i.bf = inttoptr i64 %i.be to ptr
  %i.bg = call ptr @_ZN4mlir6tensor8GatherOp15inferResultTypeENS_16RankedTensorTypeES2_N4llvm8ArrayRefIlEEb(ptr %i.bb, ptr %i.bf, ptr %i.r, i64 %i.s, i1 noundef zeroext false) ; 2 uses
  %i.bh = load ptr, ptr %0, align 8, !tbaa !130
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 72
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !133 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 56
  %.sroa.0.0.copyload.i.i.i.i.i33 = load ptr, ptr %i.bk, align 8, !tbaa !63
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i33, i64 8
  %.0.copyload.i.i.i.i.i.i.i34 = load i64, ptr %i.bl, align 8
  %i.bm = and i64 %.0.copyload.i.i.i.i.i.i.i34, -8
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 88
  %.sroa.0.0.copyload.i.i.i.i.i36 = load ptr, ptr %i.bo, align 8, !tbaa !63
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i36, i64 8
  %.0.copyload.i.i.i.i.i.i.i37 = load i64, ptr %i.bp, align 8
  %i.bq = and i64 %.0.copyload.i.i.i.i.i.i.i37, -8
  %i.br = inttoptr i64 %i.bq to ptr
  %i.bs = call ptr @_ZN4mlir6tensor8GatherOp15inferResultTypeENS_16RankedTensorTypeES2_N4llvm8ArrayRefIlEEb(ptr %i.bn, ptr %i.br, ptr %i.r, i64 %i.s, i1 noundef zeroext true) ; 2 uses
  %i.bt = load ptr, ptr %0, align 8, !tbaa !130
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 72
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !133
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i39 = load ptr, ptr %i.bw, align 8, !tbaa !63
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i39, i64 8
  %.0.copyload.i.i.i.i.i.i.i40 = load i64, ptr %i.bx, align 8
  %i.by = and i64 %.0.copyload.i.i.i.i.i.i.i40, -8
  %i.bz = inttoptr i64 %i.by to ptr               ; 2 uses
  %i.ca = icmp ne ptr %i.bg, %i.bz
  %i.cb = icmp ne ptr %i.bs, %i.bz
  %or.cond = select i1 %i.ca, i1 %i.cb, i1 false
  br i1 %or.cond, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.cc = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.cd = getelementptr inbounds nuw i8, ptr %13, i64 33
  store i8 1, ptr %i.cd, align 1, !tbaa !158
  store ptr @.str.59, ptr %13, align 8, !tbaa !159
  store i8 3, ptr %i.cc, align 8, !tbaa !160
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %13) #26
  %i.ce = load ptr, ptr %12, align 8, !tbaa !168
  %.not.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cf = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @_ZN4mlir18DiagnosticArgumentC1ENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %i.bg) #26
  %i.cg = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 12 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !60 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %12, i64 36 ; 4 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !61
  %.not.i.i.i.i.i = icmp ult i32 %i.ch, %i.cj
  br i1 %.not.i.i.i.i.i, label %bb.k, label %bb.j, !prof !64

bb.j:                                             ; preds = %bb.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_16RankedTensorTypeEEEOS0_OT_.exit

bb.k:                                             ; preds = %bb.i
  %i.ck = zext i32 %i.ch to i64
  %i.cl = load ptr, ptr %i.cf, align 8, !tbaa !59
  %i.cm = getelementptr inbounds nuw [24 x i8], ptr %i.cl, i64 %i.ck
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.cm, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  %i.cn = load i32, ptr %i.cg, align 8, !tbaa !60
  %i.co = add i32 %i.cn, 1
  store i32 %i.co, ptr %i.cg, align 8, !tbaa !60
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_16RankedTensorTypeEEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRNS_16RankedTensorTypeEEEOS0_OT_.exit: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %.pr = load ptr, ptr %12, align 8, !tbaa !168
  %.not.i.i44 = icmp eq ptr %.pr, null
  br i1 %.not.i.i44, label %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit, label %bb.l

bb.l:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRNS_16RankedTensorTypeEEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store i32 3, ptr %5, align 8, !tbaa !177
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.18, ptr %i.cp, align 8, !tbaa !116
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 29, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !56
  %i.cq = load i32, ptr %i.cg, align 8, !tbaa !60 ; 2 uses
  %i.cr = load i32, ptr %i.ci, align 4, !tbaa !61
  %.not.i.i.i.i.i45 = icmp ult i32 %i.cq, %i.cr
  br i1 %.not.i.i.i.i.i45, label %bb.n, label %bb.m, !prof !64

bb.m:                                             ; preds = %bb.l
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA30_KcEEOS0_OT_.exit

bb.n:                                             ; preds = %bb.l
  %i.cs = zext i32 %i.cq to i64
  %i.ct = load ptr, ptr %i.cf, align 8, !tbaa !59
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.ct, i64 %i.cs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  %i.cv = load i32, ptr %i.cg, align 8, !tbaa !60
  %i.cw = add i32 %i.cv, 1
  store i32 %i.cw, ptr %i.cg, align 8, !tbaa !60
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA30_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA30_KcEEOS0_OT_.exit: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %.pr72 = load ptr, ptr %12, align 8, !tbaa !168
  %.not.i.i46 = icmp eq ptr %.pr72, null
  br i1 %.not.i.i46, label %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit, label %bb.o

bb.o:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA30_KcEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZN4mlir18DiagnosticArgumentC1ENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.bs) #26
  %i.cx = load i32, ptr %i.cg, align 8, !tbaa !60 ; 2 uses
  %i.cy = load i32, ptr %i.ci, align 4, !tbaa !61
  %.not.i.i.i.i.i48 = icmp ult i32 %i.cx, %i.cy
  br i1 %.not.i.i.i.i.i48, label %bb.q, label %bb.p, !prof !64

bb.p:                                             ; preds = %bb.o
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_16RankedTensorTypeEEEOS0_OT_.exit50

bb.q:                                             ; preds = %bb.o
  %i.cz = zext i32 %i.cx to i64
  %i.da = load ptr, ptr %i.cf, align 8, !tbaa !59
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %i.da, i64 %i.cz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.db, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.dc = load i32, ptr %i.cg, align 8, !tbaa !60
  %i.dd = add i32 %i.dc, 1
  store i32 %i.dd, ptr %i.cg, align 8, !tbaa !60
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_16RankedTensorTypeEEEOS0_OT_.exit50

_ZNO4mlir18InFlightDiagnosticlsIRNS_16RankedTensorTypeEEEOS0_OT_.exit50: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %.pr74.pr = load ptr, ptr %12, align 8, !tbaa !168
  %.not.i.i51 = icmp eq ptr %.pr74.pr, null
  br i1 %.not.i.i51, label %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit, label %bb.r

bb.r:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRNS_16RankedTensorTypeEEEOS0_OT_.exit50
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i32 3, ptr %3, align 8, !tbaa !177
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.19, ptr %i.de, align 8, !tbaa !116
  %.sroa.2.0..sroa_idx.i.i.i.i.i52 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 7, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i52, align 8, !tbaa !56
  %i.df = load i32, ptr %i.cg, align 8, !tbaa !60 ; 2 uses
  %i.dg = load i32, ptr %i.ci, align 4, !tbaa !61
  %.not.i.i.i.i.i53 = icmp ult i32 %i.df, %i.dg
  br i1 %.not.i.i.i.i.i53, label %bb.t, label %bb.s, !prof !64

bb.s:                                             ; preds = %bb.r
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA8_KcEEOS0_OT_.exit

bb.t:                                             ; preds = %bb.r
  %i.dh = zext i32 %i.df to i64
  %i.di = load ptr, ptr %i.cf, align 8, !tbaa !59
  %i.dj = getelementptr inbounds nuw [24 x i8], ptr %i.di, i64 %i.dh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.dj, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.dk = load i32, ptr %i.cg, align 8, !tbaa !60
  %i.dl = add i32 %i.dk, 1
  store i32 %i.dl, ptr %i.cg, align 8, !tbaa !60
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA8_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA8_KcEEOS0_OT_.exit: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %.pre = load ptr, ptr %12, align 8, !tbaa !168
  %i.dm = icmp eq ptr %.pre, null
  br i1 %i.dm, label %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit, label %bb.u

bb.u:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA8_KcEEOS0_OT_.exit
  %i.dn = load ptr, ptr %0, align 8, !tbaa !130
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 72
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !133
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i55 = load ptr, ptr %i.dq, align 8, !tbaa !63
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i55, i64 8
  %.0.copyload.i.i.i.i.i.i.i56 = load i64, ptr %i.dr, align 8
  %i.ds = and i64 %.0.copyload.i.i.i.i.i.i.i56, -8
  %i.dt = inttoptr i64 %i.ds to ptr
  %i.du = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZN4mlir18DiagnosticArgumentC1ENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.dt) #26
  %i.dv = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 6 uses
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !60 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %12, i64 36 ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !61
  %.not.i.i.i.i.i59 = icmp ult i32 %i.dw, %i.dy
  br i1 %.not.i.i.i.i.i59, label %bb.w, label %bb.v, !prof !64

bb.v:                                             ; preds = %bb.u
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.du, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZNO4mlir18InFlightDiagnosticlsINS_16RankedTensorTypeEEEOS0_OT_.exit

bb.w:                                             ; preds = %bb.u
  %i.dz = zext i32 %i.dw to i64
  %i.ea = load ptr, ptr %i.du, align 8, !tbaa !59
  %i.eb = getelementptr inbounds nuw [24 x i8], ptr %i.ea, i64 %i.dz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.eb, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.ec = load i32, ptr %i.dv, align 8, !tbaa !60
  %i.ed = add i32 %i.ec, 1
  store i32 %i.ed, ptr %i.dv, align 8, !tbaa !60
  br label %_ZNO4mlir18InFlightDiagnosticlsINS_16RankedTensorTypeEEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsINS_16RankedTensorTypeEEEOS0_OT_.exit: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %.pr76 = load ptr, ptr %12, align 8, !tbaa !168
  %.not.i.i60 = icmp eq ptr %.pr76, null
  br i1 %.not.i.i60, label %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit, label %bb.x

bb.x:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsINS_16RankedTensorTypeEEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  store i32 3, ptr %1, align 8, !tbaa !177
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @.str.20, ptr %i.ee, align 8, !tbaa !116
  %.sroa.2.0..sroa_idx.i.i.i.i.i61 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 1, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i61, align 8, !tbaa !56
  %i.ef = load i32, ptr %i.dv, align 8, !tbaa !60 ; 2 uses
  %i.eg = load i32, ptr %i.dx, align 4, !tbaa !61
  %.not.i.i.i.i.i62 = icmp ult i32 %i.ef, %i.eg
  br i1 %.not.i.i.i.i.i62, label %bb.z, label %bb.y, !prof !64

bb.y:                                             ; preds = %bb.x
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.du, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZN4mlir10Diagnostic6appendIRA2_KcEERS0_OT_.exit.i.i

bb.z:                                             ; preds = %bb.x
  %i.eh = zext i32 %i.ef to i64
  %i.ei = load ptr, ptr %i.du, align 8, !tbaa !59
  %i.ej = getelementptr inbounds nuw [24 x i8], ptr %i.ei, i64 %i.eh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ej, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.ek = load i32, ptr %i.dv, align 8, !tbaa !60
  %i.el = add i32 %i.ek, 1
  store i32 %i.el, ptr %i.dv, align 8, !tbaa !60
  br label %_ZN4mlir10Diagnostic6appendIRA2_KcEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendIRA2_KcEERS0_OT_.exit.i.i: ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRNS_16RankedTensorTypeEEEOS0_OT_.exit50, %_ZNO4mlir18InFlightDiagnosticlsIRA30_KcEEOS0_OT_.exit, %bb.h, %_ZNO4mlir18InFlightDiagnosticlsIRNS_16RankedTensorTypeEEEOS0_OT_.exit, %_ZNO4mlir18InFlightDiagnosticlsIRA8_KcEEOS0_OT_.exit, %_ZNO4mlir18InFlightDiagnosticlsINS_16RankedTensorTypeEEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendIRA2_KcEERS0_OT_.exit.i.i
  %i.em = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %12) #26
  %i.en = load ptr, ptr %12, align 8, !tbaa !168
  %.not.i63 = icmp eq ptr %i.en, null
  br i1 %.not.i63, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %12) #26
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit
  %i.eo = getelementptr inbounds nuw i8, ptr %12, i64 200 ; 2 uses
  %i.ep = load i8, ptr %i.eo, align 8, !tbaa !169, !range !170, !noundef !171
  %i.eq = trunc nuw i8 %i.ep to i1
  br i1 %i.eq, label %bb.ac, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit64

bb.ac:                                            ; preds = %bb.ab
  %i.er = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i8 0, ptr %i.eo, align 8, !tbaa !169
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.er) #26
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit64

_ZN4mlir18InFlightDiagnosticD2Ev.exit64:          ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %.critedge

.critedge:                                        ; preds = %_ZN4mlir18InFlightDiagnosticD2Ev.exit64, %bb.g, %bb.a, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.017.1 = phi i8 [ %i.ap, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 0, %bb.a ], [ %i.em, %_ZN4mlir18InFlightDiagnosticD2Ev.exit64 ], [ 1, %bb.g ]
  ret i8 %.sroa.017.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i64 } @_ZN4mlir6tensor9ScatterOp14getScatterDimsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.mlir::detail::DenseArrayAttrImpl", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.a = load ptr, ptr %0, align 8, !tbaa !130    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %.not.i.i.i = icmp ugt i32 %i.c, 16777215
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.e = lshr i32 %i.c, 23
  %.lobit.i.i.i.i.i.i.i.i.i = and i32 %i.e, 1
  %i.f = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i to i64
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.f
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.g, align 8, !tbaa !172
  store ptr %.sroa.0.0.copyload.i.i, ptr %1, align 8
  %i.h = call { ptr, i64 } @_ZNK4mlir6detail18DenseArrayAttrImplIlEcvN4llvm8ArrayRefIlEEEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret { ptr, i64 } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN4mlir6tensor9ScatterOp9getUniqueEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !130    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %.not.i.i.i = icmp ugt i32 %i.c, 16777215
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.d = lshr i32 %i.c, 23
  %.lobit.i.i.i.i.i.i.i.i.i = and i32 %i.d, 1
  %i.e = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i to i64
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !154
  %i.i = icmp ne ptr %i.h, null
  ret i1 %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir6tensor7SplatOp5buildERNS_9OpBuilderERNS_14OperationStateENS_5ValueENS_4TypeENS_10ValueRangeE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, ptr %2, ptr %3, i64 %4, i64 %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.mlir::Value", align 8       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %2, ptr %6, align 8
  %i.a = ptrtoint ptr %6 to i64
  call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %i.a, i64 1) #26
  call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %4, i64 %5) #26
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !60   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.f = load i32, ptr %i.e, align 4, !tbaa !61
  %.not.i = icmp ult i32 %i.d, %i.f
  br i1 %.not.i, label %_ZN4mlir6tensor7SplatOp5buildERNS_9OpBuilderERNS_14OperationStateENS_4TypeENS_5ValueENS_10ValueRangeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.d to i64
  %i.h = add nuw nsw i64 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.i, i64 noundef %i.h, i64 noundef 8) #26
  %.pre8.pre.i.i.i = load i32, ptr %i.c, align 8, !tbaa !60
  br label %_ZN4mlir6tensor7SplatOp5buildERNS_9OpBuilderERNS_14OperationStateENS_4TypeENS_5ValueENS_10ValueRangeE.exit

_ZN4mlir6tensor7SplatOp5buildERNS_9OpBuilderERNS_14OperationStateENS_4TypeENS_5ValueENS_10ValueRangeE.exit: ; preds = %bb.a, %bb.b
  %.pre8.i.i.i = phi i32 [ %i.d, %bb.a ], [ %.pre8.pre.i.i.i, %bb.b ]
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !59
  %i.k = zext i32 %.pre8.i.i.i to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k
  store ptr %3, ptr %i.l, align 1
  %.pre.i.i.i = load i32, ptr %i.c, align 8, !tbaa !60
  %i.m = add i32 %.pre.i.i.i, 1
  store i32 %i.m, ptr %i.c, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir6tensor7SplatOp5buildERNS_9OpBuilderERNS_14OperationStateENS_4TypeENS_5ValueENS_10ValueRangeE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, ptr %2, ptr %3, i64 %4, i64 %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.mlir::Value", align 8       ; 2 uses
  store ptr %3, ptr %6, align 8
  %i.a = ptrtoint ptr %6 to i64
  call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %i.a, i64 1) #26
  call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %4, i64 %5) #26
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !60   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.f = load i32, ptr %i.e, align 4, !tbaa !61
  %.not = icmp ult i32 %i.d, %i.f
  br i1 %.not, label %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.d to i64
  %i.h = add nuw nsw i64 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.i, i64 noundef %i.h, i64 noundef 8) #26
  %.pre8.pre.i.i = load i32, ptr %i.c, align 8, !tbaa !60
  br label %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit

_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit: ; preds = %bb.a, %bb.b
  %.pre8.i.i = phi i32 [ %i.d, %bb.a ], [ %.pre8.pre.i.i, %bb.b ]
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !59
  %i.k = zext i32 %.pre8.i.i to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k
  store ptr %2, ptr %i.l, align 1
  %.pre.i.i = load i32, ptr %i.c, align 8, !tbaa !60
  %i.m = add i32 %.pre.i.i, 1
  store i32 %i.m, ptr %i.c, align 8, !tbaa !60
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir6tensor7SplatOp5buildERNS_9OpBuilderERNS_14OperationStateENS_5ValueEN4llvm8ArrayRefIlEENS_10ValueRangeE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, ptr %2, ptr %3, i64 %4, ptr nofree noundef readonly byval(%"class.mlir::ValueRange") align 8 captures(none) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.mlir::Value", align 8       ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.a, align 8
  %i.b = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @_ZN4mlir16RankedTensorType3getEN4llvm8ArrayRefIlEENS_4TypeENS_9AttributeE(ptr %3, i64 %4, ptr %i.c, ptr null) #26
  %.sroa.0.0.copyload = load i64, ptr %5, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %2, ptr %6, align 8
  %i.e = ptrtoint ptr %6 to i64
  call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %i.e, i64 1) #26
  call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload) #26
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !60   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.j = load i32, ptr %i.i, align 4, !tbaa !61
  %.not.i = icmp ult i32 %i.h, %i.j
  br i1 %.not.i, label %_ZN4mlir6tensor7SplatOp5buildERNS_9OpBuilderERNS_14OperationStateENS_4TypeENS_5ValueENS_10ValueRangeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = zext i32 %i.h to i64
  %i.l = add nuw nsw i64 %i.k, 1
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull %i.m, i64 noundef %i.l, i64 noundef 8) #26
  %.pre8.pre.i.i.i = load i32, ptr %i.g, align 8, !tbaa !60
  br label %_ZN4mlir6tensor7SplatOp5buildERNS_9OpBuilderERNS_14OperationStateENS_4TypeENS_5ValueENS_10ValueRangeE.exit

_ZN4mlir6tensor7SplatOp5buildERNS_9OpBuilderERNS_14OperationStateENS_4TypeENS_5ValueENS_10ValueRangeE.exit: ; preds = %bb.a, %bb.b
  %.pre8.i.i.i = phi i32 [ %i.h, %bb.a ], [ %.pre8.pre.i.i.i, %bb.b ]
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !59
  %i.o = zext i32 %.pre8.i.i.i to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.o
  store ptr %i.d, ptr %i.p, align 1
  %.pre.i.i.i = load i32, ptr %i.g, align 8, !tbaa !60
  %i.q = add i32 %.pre.i.i.i, 1
  store i32 %i.q, ptr %i.g, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir6tensor7SplatOp5buildERNS_9OpBuilderERNS_14OperationStateENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, ptr %2, ptr %3, i64 %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.mlir::Value", align 8       ; 4 uses
  %6 = alloca %"class.llvm::SmallVector.187", align 8 ; 9 uses
  %7 = alloca %"class.llvm::SmallVector.91", align 8 ; 9 uses
  %8 = alloca %"class.mlir::ValueRange", align 8  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
end_hunk_0
