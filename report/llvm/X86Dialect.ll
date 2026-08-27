Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/X86Dialect?download=true
inline.NumInlined: 15878
inline.NumDeleted: 5154
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN4mlir3x866avx51214MaskRndScaleOp5parseERNS_11OpAsmParserERNS_14OperationStateE:bb.a
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 520
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = call i8 %i.bu(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.br) #26
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.bx = load ptr, ptr %0, align 8, !tbaa !22
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 104
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = call i8 %i.bz(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  store ptr null, ptr %8, align 8, !tbaa !137
  %i.cc = call i8 @_ZN4mlir9AsmParser9parseTypeINS_10VectorTypeEEEN4llvm11ParseResultERT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %8)
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.m, label %.thread

.thread:                                          ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.ce = load i64, ptr %8, align 8, !tbaa !109   ; 3 uses
  store i64 %i.ce, ptr %7, align 8, !tbaa !109
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.cf = getelementptr inbounds nuw i8, ptr %11, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  store i64 %i.ce, ptr %9, align 8, !tbaa !109
  %.sroa.0.0.copyload.i.cast = inttoptr i64 %i.ce to ptr ; 2 uses
  %i.cg = load ptr, ptr %.sroa.0.0.copyload.i.cast, align 8, !tbaa !171
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.ch, align 8, !tbaa !123
  %i.ci = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_10VectorTypeEvE2idE
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  br i1 %i.ci, label %bb.n, label %.critedge97

bb.n:                                             ; preds = %bb.m
  store ptr %.sroa.0.0.copyload.i.cast, ptr %10, align 8
  %i.cj = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #26
  %i.ck = extractvalue { ptr, i64 } %i.cj, 1
  %i.cl = icmp sgt i64 %i.ck, 0
  br i1 %i.cl, label %bb.o, label %.critedge97

bb.o:                                             ; preds = %bb.n
  %i.cm = call { ptr, ptr } @_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRT0_(ptr noundef nonnull align 8 dereferenceable(8) %9) ; 2 uses
  %i.cn = extractvalue { ptr, ptr } %i.cm, 0
  store ptr %i.cn, ptr %11, align 8
  %i.co = extractvalue { ptr, ptr } %i.cm, 1
  store ptr %i.co, ptr %i.cf, align 8
  %i.cp = call ptr @_ZNK4mlir10ShapedType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #26
  %i.cq = call fastcc noundef zeroext i1 @"_ZZN4mlir3x866avx51214MaskRndScaleOp5parseERNS_11OpAsmParserERNS_14OperationStateEENK3$_1clENS_4TypeE"(ptr %i.cp)
  br i1 %i.cq, label %bb.p, label %.critedge97

bb.p:                                             ; preds = %bb.o
  %.sroa.0.0.copyload.i99 = load ptr, ptr %9, align 8, !tbaa !109 ; 2 uses
  %i.cr = load ptr, ptr %.sroa.0.0.copyload.i99, align 8, !tbaa !171
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i100 = load ptr, ptr %i.cs, align 8, !tbaa !123
  %i.ct = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i100, @_ZN4mlir6detail14TypeIDResolverINS_10VectorTypeEvE2idE
  br i1 %i.ct, label %bb.q, label %.critedge97

bb.q:                                             ; preds = %bb.p
  store ptr %.sroa.0.0.copyload.i99, ptr %12, align 8
  %i.cu = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #26
  %i.cv = extractvalue { ptr, i64 } %i.cu, 1
  %i.cw = icmp sgt i64 %i.cv, 0
  br i1 %i.cw, label %bb.r, label %.critedge97

bb.r:                                             ; preds = %bb.q
  %.sroa.0.0.copyload.i102 = load ptr, ptr %9, align 8, !tbaa !109
  store ptr %.sroa.0.0.copyload.i102, ptr %13, align 8
  %i.cx = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #26 ; 2 uses
  %i.cy = extractvalue { ptr, i64 } %i.cx, 0
  %i.cz = extractvalue { ptr, i64 } %i.cx, 1
  %i.da = call noundef i64 @_ZN4mlir10ShapedType14getNumElementsEN4llvm8ArrayRefIlEE(ptr %i.cy, i64 %i.cz) #26
  %i.db = icmp eq i64 %i.da, 16
  br i1 %i.db, label %.critedge92.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.sroa.0.0.copyload.i103 = load ptr, ptr %9, align 8, !tbaa !109
  store ptr %.sroa.0.0.copyload.i103, ptr %14, align 8
  %i.dc = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %14) #26 ; 2 uses
  %i.dd = extractvalue { ptr, i64 } %i.dc, 0
  %i.de = extractvalue { ptr, i64 } %i.dc, 1
  %i.df = call noundef i64 @_ZN4mlir10ShapedType14getNumElementsEN4llvm8ArrayRefIlEE(ptr %i.dd, i64 %i.de) #26
  %.not180 = icmp eq i64 %i.df, 8
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br i1 %.not180, label %.critedge92, label %.loopexit

.critedge97:                                      ; preds = %bb.p, %bb.q, %bb.m, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %.loopexit

.loopexit:                                        ; preds = %bb.s, %.critedge97
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  %i.dg = load ptr, ptr %0, align 8, !tbaa !22
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = call ptr %i.di(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  %i.dk = getelementptr inbounds nuw i8, ptr %16, i64 32
  store i8 1, ptr %i.dk, align 8, !tbaa !45
  %i.dl = getelementptr inbounds nuw i8, ptr %16, i64 33
  store i8 1, ptr %i.dl, align 1, !tbaa !41
  %i.dm = load ptr, ptr %0, align 8, !tbaa !22
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load ptr, ptr %i.dn, align 8
  call void %i.do(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %i.dj, ptr noundef nonnull align 8 dereferenceable(34) %16) #26
  %i.dp = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsIRA85_KcEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %15, ptr noundef nonnull align 1 dereferenceable(85) @.str.29)
  %i.dq = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %i.dp, ptr noundef nonnull align 8 dereferenceable(8) %9)
  %i.dr = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %i.dq) #26
  call void @_ZN4mlir18InFlightDiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %.critedge

.critedge92.critedge:                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %.critedge92

.critedge92:                                      ; preds = %.critedge92.critedge, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.ds = load ptr, ptr %0, align 8, !tbaa !22
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = call noundef nonnull align 8 dereferenceable(8) ptr %i.du(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  %i.dw = call ptr @_ZN4mlir7Builder14getIntegerTypeEj(ptr noundef nonnull align 8 dereferenceable(8) %i.dv, i32 noundef 32) #26 ; 2 uses
  call void @_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(304) %1, ptr nonnull %7, i64 1)
  %.sroa.019.0.copyload = load ptr, ptr %7, align 8, !tbaa !109
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.dy = load ptr, ptr %0, align 8, !tbaa !22
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 760
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = call i8 %i.ea(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %2, ptr %.sroa.019.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %i.dx) #26, !inline_history !185
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %.critedge.i.i106.preheader, label %.critedge

.critedge.i.i106.preheader:                       ; preds = %.critedge92
  %i.ed = load ptr, ptr %0, align 8, !tbaa !22
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 760
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = call i8 %i.ef(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %3, ptr %i.dw, ptr noundef nonnull align 8 dereferenceable(16) %i.dx) #26, !inline_history !185
  %i.eh = trunc nuw i8 %i.eg to i1
  br i1 %i.eh, label %.critedge.i.i113, label %.critedge

.critedge.i.i113:                                 ; preds = %.critedge.i.i106.preheader
  %.sroa.013.0.copyload = load ptr, ptr %7, align 8, !tbaa !109
  %i.ei = load ptr, ptr %0, align 8, !tbaa !22
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 760
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = call i8 %i.ek(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %4, ptr %.sroa.013.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %i.dx) #26, !inline_history !185
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %.critedge.i.i121, label %.critedge

.critedge.i.i121:                                 ; preds = %.critedge.i.i113
  %i.en = call noundef ptr @_ZNK4mlir4Type10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  %.sroa.0.0.copyload.i118 = load ptr, ptr %7, align 8, !tbaa !109
  store ptr %.sroa.0.0.copyload.i118, ptr %17, align 8
  %i.eo = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %17) #26
  %i.ep = extractvalue { ptr, i64 } %i.eo, 0
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !108
  %i.er = trunc i64 %i.eq to i32
  %i.es = call ptr @_ZN4mlir11IntegerType3getEPNS_11MLIRContextEjNS0_19SignednessSemanticsE(ptr noundef %i.en, i32 noundef %i.er, i32 noundef 0) #26
  %i.et = load ptr, ptr %0, align 8, !tbaa !22
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 760
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = call i8 %i.ev(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %5, ptr %i.es, ptr noundef nonnull align 8 dereferenceable(16) %i.dx) #26, !inline_history !185
  %i.ex = trunc nuw i8 %i.ew to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br i1 %i.ex, label %.critedge.i.i128, label %.critedge

.critedge.i.i128:                                 ; preds = %.critedge.i.i121
  %i.ey = load ptr, ptr %0, align 8, !tbaa !22
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 760
  %i.fa = load ptr, ptr %i.ez, align 8
  %i.fb = call i8 %i.fa(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %6, ptr %i.dw, ptr noundef nonnull align 8 dereferenceable(16) %i.dx) #26, !inline_history !185
  br label %.critedge

.critedge:                                        ; preds = %.critedge.i.i128, %.critedge.i.i121, %.critedge92, %.critedge.i.i106.preheader, %.critedge.i.i113, %bb.j, %.loopexit, %.thread, %bb.k, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.sroa.0174.2 = phi i8 [ %i.dr, %.loopexit ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %bb.h ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %.thread ], [ 0, %bb.k ], [ 0, %.critedge.i.i106.preheader ], [ 0, %.critedge.i.i113 ], [ 0, %.critedge92 ], [ 0, %.critedge.i.i121 ], [ %i.fb, %.critedge.i.i128 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret i8 %.sroa.0174.2
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @"_ZZN4mlir3x866avx51214MaskRndScaleOp5parseERNS_11OpAsmParserERNS_14OperationStateEENK3$_1clENS_4TypeE"(ptr %0) unnamed_addr #9 align 2 {
bb.a:
  %1 = alloca %"class.mlir::Type", align 8        ; 3 uses
  store ptr %0, ptr %1, align 8
  %i.a = call noundef zeroext i1 @_ZNK4mlir4Type5isF32Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #26
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = call noundef zeroext i1 @_ZNK4mlir4Type5isF64Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi i1 [ true, %bb.a ], [ %i.b, %bb.b ]
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsIRA85_KcEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 1 dereferenceable(85) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !46
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNR4mlir18InFlightDiagnostic6appendIJRA85_KcEEERS0_DpOT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(85) %1) #26
  store i32 3, ptr %2, align 8, !tbaa !111
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %1, ptr %i.d, align 8, !tbaa !126
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.c, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !108
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !104  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.h = load i32, ptr %i.g, align 4, !tbaa !103
  %.not.i.i.i.i = icmp ult i32 %i.f, %i.h
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c, !prof !105

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZN4mlir10Diagnostic6appendIRA85_KcEERS0_OT_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = zext i32 %i.f to i64
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !101
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.l = load i32, ptr %i.e, align 8, !tbaa !104
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.e, align 8, !tbaa !104
  br label %_ZN4mlir10Diagnostic6appendIRA85_KcEERS0_OT_.exit.i

_ZN4mlir10Diagnostic6appendIRA85_KcEERS0_OT_.exit.i: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %_ZNR4mlir18InFlightDiagnostic6appendIJRA85_KcEEERS0_DpOT_.exit

_ZNR4mlir18InFlightDiagnostic6appendIJRA85_KcEEERS0_DpOT_.exit: ; preds = %bb.a, %_ZN4mlir10Diagnostic6appendIRA85_KcEERS0_OT_.exit.i
  ret ptr %0
}

declare ptr @_ZN4mlir7Builder14getIntegerTypeEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir3x866avx51214MaskRndScaleOp5printERNS_12OpAsmPrinterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::DictionaryAttr", align 8 ; 4 uses
  %3 = alloca %"class.llvm::SmallVector.549", align 8 ; 8 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(48) ptr %i.c(ptr noundef nonnull align 8 dereferenceable(16) %1) #26, !inline_history !191 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !160  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !156
  %.not.i.i = icmp ult ptr %i.f, %i.h
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.d, i8 noundef zeroext 32) #26 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store ptr %i.j, ptr %i.e, align 8, !tbaa !160
  store i8 32, ptr %i.f, align 1, !tbaa !44
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit

_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit: ; preds = %bb.b, %bb.c
  %i.k = load ptr, ptr %0, align 8, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !35
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !36
  %i.o = load ptr, ptr %1, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 168
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %.sroa.0.0.copyload.i.i.i.i) #26, !inline_history !192
  %i.r = load ptr, ptr %1, align 8, !tbaa !22
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef nonnull align 8 dereferenceable(48) ptr %i.t(ptr noundef nonnull align 8 dereferenceable(16) %1) #26, !inline_history !193 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !156
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !160  ; 2 uses
  %i.z = icmp eq ptr %i.w, %i.y
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit
  %i.aa = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.u, ptr noundef nonnull @.str.12, i64 noundef 1) #26 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit

bb.e:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit
  store i8 44, ptr %i.y, align 1
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !160
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  store ptr %i.ac, ptr %i.x, align 8, !tbaa !160
  br label %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit

_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit: ; preds = %bb.d, %bb.e
  %i.ad = load ptr, ptr %1, align 8, !tbaa !22
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call noundef nonnull align 8 dereferenceable(48) ptr %i.af(ptr noundef nonnull align 8 dereferenceable(16) %1) #26, !inline_history !191 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !160 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !156
  %.not.i.i31 = icmp ult ptr %i.ai, %i.ak
  br i1 %.not.i.i31, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit
  %i.al = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.ag, i8 noundef zeroext 32) #26 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit32

bb.g:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  store ptr %i.am, ptr %i.ah, align 8, !tbaa !160
  store i8 32, ptr %i.ai, align 1, !tbaa !44
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit32

_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit32: ; preds = %bb.f, %bb.g
  %i.an = load ptr, ptr %0, align 8, !tbaa !20
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !35
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %.sroa.0.0.copyload.i.i.i.i34 = load ptr, ptr %i.aq, align 8, !tbaa !36
  %i.ar = load ptr, ptr %1, align 8, !tbaa !22
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 168
  %i.at = load ptr, ptr %i.as, align 8
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %.sroa.0.0.copyload.i.i.i.i34) #26, !inline_history !192
  %i.au = load ptr, ptr %1, align 8, !tbaa !22
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = tail call noundef nonnull align 8 dereferenceable(48) ptr %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %1) #26, !inline_history !193 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !156
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 32 ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !160 ; 2 uses
  %i.bc = icmp eq ptr %i.az, %i.bb
  br i1 %i.bc, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit32
  %i.bd = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ax, ptr noundef nonnull @.str.12, i64 noundef 1) #26 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit36

bb.i:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit32
  store i8 44, ptr %i.bb, align 1
  %i.be = load ptr, ptr %i.ba, align 8, !tbaa !160
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  store ptr %i.bf, ptr %i.ba, align 8, !tbaa !160
  br label %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit36

_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit36: ; preds = %bb.h, %bb.i
  %i.bg = load ptr, ptr %1, align 8, !tbaa !22
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = tail call noundef nonnull align 8 dereferenceable(48) ptr %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %1) #26, !inline_history !191 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !160 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !156
  %.not.i.i37 = icmp ult ptr %i.bl, %i.bn
  br i1 %.not.i.i37, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit36
  %i.bo = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.bj, i8 noundef zeroext 32) #26 ; 0 uses
end_hunk_0
begin_hunk_1_@_ZN4mlir3x866avx51212MaskScaleFOp5parseERNS_11OpAsmParserERNS_14OperationStateE:bb.a
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = call i8 %i.bu(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.br) #26
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.bx = load ptr, ptr %0, align 8, !tbaa !22
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 104
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = call i8 %i.bz(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  store ptr null, ptr %8, align 8, !tbaa !137
  %i.cc = call i8 @_ZN4mlir9AsmParser9parseTypeINS_10VectorTypeEEEN4llvm11ParseResultERT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %8)
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.m, label %.thread

.thread:                                          ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.ce = load i64, ptr %8, align 8, !tbaa !109   ; 3 uses
  store i64 %i.ce, ptr %7, align 8, !tbaa !109
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.cf = getelementptr inbounds nuw i8, ptr %11, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  store i64 %i.ce, ptr %9, align 8, !tbaa !109
  %.sroa.0.0.copyload.i.cast = inttoptr i64 %i.ce to ptr ; 2 uses
  %i.cg = load ptr, ptr %.sroa.0.0.copyload.i.cast, align 8, !tbaa !171
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.ch, align 8, !tbaa !123
  %i.ci = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_10VectorTypeEvE2idE
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  br i1 %i.ci, label %bb.n, label %.critedge97

bb.n:                                             ; preds = %bb.m
  store ptr %.sroa.0.0.copyload.i.cast, ptr %10, align 8
  %i.cj = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #26
  %i.ck = extractvalue { ptr, i64 } %i.cj, 1
  %i.cl = icmp sgt i64 %i.ck, 0
  br i1 %i.cl, label %bb.o, label %.critedge97

bb.o:                                             ; preds = %bb.n
  %i.cm = call { ptr, ptr } @_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRT0_(ptr noundef nonnull align 8 dereferenceable(8) %9) ; 2 uses
  %i.cn = extractvalue { ptr, ptr } %i.cm, 0
  store ptr %i.cn, ptr %11, align 8
  %i.co = extractvalue { ptr, ptr } %i.cm, 1
  store ptr %i.co, ptr %i.cf, align 8
  %i.cp = call ptr @_ZNK4mlir10ShapedType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #26
  %i.cq = call fastcc noundef zeroext i1 @"_ZZN4mlir3x866avx51212MaskScaleFOp5parseERNS_11OpAsmParserERNS_14OperationStateEENK3$_1clENS_4TypeE"(ptr %i.cp)
  br i1 %i.cq, label %bb.p, label %.critedge97

bb.p:                                             ; preds = %bb.o
  %.sroa.0.0.copyload.i99 = load ptr, ptr %9, align 8, !tbaa !109 ; 2 uses
  %i.cr = load ptr, ptr %.sroa.0.0.copyload.i99, align 8, !tbaa !171
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i100 = load ptr, ptr %i.cs, align 8, !tbaa !123
  %i.ct = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i100, @_ZN4mlir6detail14TypeIDResolverINS_10VectorTypeEvE2idE
  br i1 %i.ct, label %bb.q, label %.critedge97

bb.q:                                             ; preds = %bb.p
  store ptr %.sroa.0.0.copyload.i99, ptr %12, align 8
  %i.cu = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #26
  %i.cv = extractvalue { ptr, i64 } %i.cu, 1
  %i.cw = icmp sgt i64 %i.cv, 0
  br i1 %i.cw, label %bb.r, label %.critedge97

bb.r:                                             ; preds = %bb.q
  %.sroa.0.0.copyload.i102 = load ptr, ptr %9, align 8, !tbaa !109
  store ptr %.sroa.0.0.copyload.i102, ptr %13, align 8
  %i.cx = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #26 ; 2 uses
  %i.cy = extractvalue { ptr, i64 } %i.cx, 0
  %i.cz = extractvalue { ptr, i64 } %i.cx, 1
  %i.da = call noundef i64 @_ZN4mlir10ShapedType14getNumElementsEN4llvm8ArrayRefIlEE(ptr %i.cy, i64 %i.cz) #26
  %i.db = icmp eq i64 %i.da, 16
  br i1 %i.db, label %.critedge92.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.sroa.0.0.copyload.i103 = load ptr, ptr %9, align 8, !tbaa !109
  store ptr %.sroa.0.0.copyload.i103, ptr %14, align 8
  %i.dc = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %14) #26 ; 2 uses
  %i.dd = extractvalue { ptr, i64 } %i.dc, 0
  %i.de = extractvalue { ptr, i64 } %i.dc, 1
  %i.df = call noundef i64 @_ZN4mlir10ShapedType14getNumElementsEN4llvm8ArrayRefIlEE(ptr %i.dd, i64 %i.de) #26
  %.not181 = icmp eq i64 %i.df, 8
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br i1 %.not181, label %.critedge92, label %.loopexit

.critedge97:                                      ; preds = %bb.p, %bb.q, %bb.m, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %.loopexit

.loopexit:                                        ; preds = %bb.s, %.critedge97
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  %i.dg = load ptr, ptr %0, align 8, !tbaa !22
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = call ptr %i.di(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  %i.dk = getelementptr inbounds nuw i8, ptr %16, i64 32
  store i8 1, ptr %i.dk, align 8, !tbaa !45
  %i.dl = getelementptr inbounds nuw i8, ptr %16, i64 33
  store i8 1, ptr %i.dl, align 1, !tbaa !41
  %i.dm = load ptr, ptr %0, align 8, !tbaa !22
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load ptr, ptr %i.dn, align 8
  call void %i.do(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %i.dj, ptr noundef nonnull align 8 dereferenceable(34) %16) #26
  %i.dp = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsIRA85_KcEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %15, ptr noundef nonnull align 1 dereferenceable(85) @.str.29)
  %i.dq = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %i.dp, ptr noundef nonnull align 8 dereferenceable(8) %9)
  %i.dr = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %i.dq) #26
  call void @_ZN4mlir18InFlightDiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %.critedge

.critedge92.critedge:                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %.critedge92

.critedge92:                                      ; preds = %.critedge92.critedge, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.ds = load ptr, ptr %0, align 8, !tbaa !22
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = call noundef nonnull align 8 dereferenceable(8) ptr %i.du(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  %i.dw = call ptr @_ZN4mlir7Builder14getIntegerTypeEj(ptr noundef nonnull align 8 dereferenceable(8) %i.dv, i32 noundef 32) #26
  call void @_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(304) %1, ptr nonnull %7, i64 1)
  %.sroa.019.0.copyload = load ptr, ptr %7, align 8, !tbaa !109
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.dy = load ptr, ptr %0, align 8, !tbaa !22
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 760
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = call i8 %i.ea(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %2, ptr %.sroa.019.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %i.dx) #26, !inline_history !185
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %.critedge.i.i106, label %.critedge

.critedge.i.i106:                                 ; preds = %.critedge92
  %.sroa.016.0.copyload = load ptr, ptr %7, align 8, !tbaa !109
  %i.ed = load ptr, ptr %0, align 8, !tbaa !22
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 760
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = call i8 %i.ef(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %3, ptr %.sroa.016.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %i.dx) #26, !inline_history !185
  %i.eh = trunc nuw i8 %i.eg to i1
  br i1 %i.eh, label %.critedge.i.i113, label %.critedge

.critedge.i.i113:                                 ; preds = %.critedge.i.i106
  %.sroa.013.0.copyload = load ptr, ptr %7, align 8, !tbaa !109
  %i.ei = load ptr, ptr %0, align 8, !tbaa !22
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 760
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = call i8 %i.ek(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %4, ptr %.sroa.013.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %i.dx) #26, !inline_history !185
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %.critedge.i.i121, label %.critedge

.critedge.i.i121:                                 ; preds = %.critedge.i.i113
  %i.en = call noundef ptr @_ZNK4mlir4Type10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  %.sroa.0.0.copyload.i118 = load ptr, ptr %7, align 8, !tbaa !109
  store ptr %.sroa.0.0.copyload.i118, ptr %17, align 8
  %i.eo = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %17) #26
  %i.ep = extractvalue { ptr, i64 } %i.eo, 0
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !108
  %i.er = trunc i64 %i.eq to i32
  %i.es = call ptr @_ZN4mlir11IntegerType3getEPNS_11MLIRContextEjNS0_19SignednessSemanticsE(ptr noundef %i.en, i32 noundef %i.er, i32 noundef 0) #26
  %i.et = load ptr, ptr %0, align 8, !tbaa !22
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 760
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = call i8 %i.ev(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %5, ptr %i.es, ptr noundef nonnull align 8 dereferenceable(16) %i.dx) #26, !inline_history !185
  %i.ex = trunc nuw i8 %i.ew to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br i1 %i.ex, label %.critedge.i.i128, label %.critedge

.critedge.i.i128:                                 ; preds = %.critedge.i.i121
  %i.ey = load ptr, ptr %0, align 8, !tbaa !22
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 760
  %i.fa = load ptr, ptr %i.ez, align 8
  %i.fb = call i8 %i.fa(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %6, ptr %i.dw, ptr noundef nonnull align 8 dereferenceable(16) %i.dx) #26, !inline_history !185
  br label %.critedge

.critedge:                                        ; preds = %.critedge.i.i128, %.critedge.i.i121, %.critedge92, %.critedge.i.i106, %.critedge.i.i113, %bb.j, %.loopexit, %.thread, %bb.k, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.sroa.0175.2 = phi i8 [ %i.dr, %.loopexit ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %bb.h ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %.thread ], [ 0, %bb.k ], [ 0, %.critedge.i.i106 ], [ 0, %.critedge.i.i113 ], [ 0, %.critedge92 ], [ 0, %.critedge.i.i121 ], [ %i.fb, %.critedge.i.i128 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret i8 %.sroa.0175.2
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @"_ZZN4mlir3x866avx51212MaskScaleFOp5parseERNS_11OpAsmParserERNS_14OperationStateEENK3$_1clENS_4TypeE"(ptr %0) unnamed_addr #9 align 2 {
bb.a:
  %1 = alloca %"class.mlir::Type", align 8        ; 3 uses
  store ptr %0, ptr %1, align 8
  %i.a = call noundef zeroext i1 @_ZNK4mlir4Type5isF32Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #26
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = call noundef zeroext i1 @_ZNK4mlir4Type5isF64Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi i1 [ true, %bb.a ], [ %i.b, %bb.b ]
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir3x866avx51212MaskScaleFOp5printERNS_12OpAsmPrinterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::DictionaryAttr", align 8 ; 4 uses
  %3 = alloca %"class.llvm::SmallVector.549", align 8 ; 8 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(48) ptr %i.c(ptr noundef nonnull align 8 dereferenceable(16) %1) #26, !inline_history !191 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !160  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !156
  %.not.i.i = icmp ult ptr %i.f, %i.h
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.d, i8 noundef zeroext 32) #26 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store ptr %i.j, ptr %i.e, align 8, !tbaa !160
  store i8 32, ptr %i.f, align 1, !tbaa !44
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit

_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit: ; preds = %bb.b, %bb.c
  %i.k = load ptr, ptr %0, align 8, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !35
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !36
  %i.o = load ptr, ptr %1, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 168
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %.sroa.0.0.copyload.i.i.i.i) #26, !inline_history !192
  %i.r = load ptr, ptr %1, align 8, !tbaa !22
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef nonnull align 8 dereferenceable(48) ptr %i.t(ptr noundef nonnull align 8 dereferenceable(16) %1) #26, !inline_history !193 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !156
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !160  ; 2 uses
  %i.z = icmp eq ptr %i.w, %i.y
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit
  %i.aa = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.u, ptr noundef nonnull @.str.12, i64 noundef 1) #26 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit

bb.e:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit
  store i8 44, ptr %i.y, align 1
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !160
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  store ptr %i.ac, ptr %i.x, align 8, !tbaa !160
  br label %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit

_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit: ; preds = %bb.d, %bb.e
  %i.ad = load ptr, ptr %1, align 8, !tbaa !22
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call noundef nonnull align 8 dereferenceable(48) ptr %i.af(ptr noundef nonnull align 8 dereferenceable(16) %1) #26, !inline_history !191 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !160 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !156
  %.not.i.i31 = icmp ult ptr %i.ai, %i.ak
  br i1 %.not.i.i31, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit
  %i.al = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.ag, i8 noundef zeroext 32) #26 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit32

bb.g:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  store ptr %i.am, ptr %i.ah, align 8, !tbaa !160
  store i8 32, ptr %i.ai, align 1, !tbaa !44
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit32

_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit32: ; preds = %bb.f, %bb.g
  %i.an = load ptr, ptr %0, align 8, !tbaa !20
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !35
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %.sroa.0.0.copyload.i.i.i.i34 = load ptr, ptr %i.aq, align 8, !tbaa !36
  %i.ar = load ptr, ptr %1, align 8, !tbaa !22
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 168
  %i.at = load ptr, ptr %i.as, align 8
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %.sroa.0.0.copyload.i.i.i.i34) #26, !inline_history !192
  %i.au = load ptr, ptr %1, align 8, !tbaa !22
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = tail call noundef nonnull align 8 dereferenceable(48) ptr %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %1) #26, !inline_history !193 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !156
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 32 ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !160 ; 2 uses
  %i.bc = icmp eq ptr %i.az, %i.bb
  br i1 %i.bc, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit32
  %i.bd = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ax, ptr noundef nonnull @.str.12, i64 noundef 1) #26 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit36

bb.i:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit32
  store i8 44, ptr %i.bb, align 1
  %i.be = load ptr, ptr %i.ba, align 8, !tbaa !160
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  store ptr %i.bf, ptr %i.ba, align 8, !tbaa !160
  br label %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit36

_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit36: ; preds = %bb.h, %bb.i
  %i.bg = load ptr, ptr %1, align 8, !tbaa !22
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = tail call noundef nonnull align 8 dereferenceable(48) ptr %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %1) #26, !inline_history !191 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !160 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !156
  %.not.i.i37 = icmp ult ptr %i.bl, %i.bn
  br i1 %.not.i.i37, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit36
  %i.bo = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.bj, i8 noundef zeroext 32) #26 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit38

bb.k:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit36
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  store ptr %i.bp, ptr %i.bk, align 8, !tbaa !160
  store i8 32, ptr %i.bl, align 1, !tbaa !44
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit38

_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit38: ; preds = %bb.j, %bb.k
  %i.bq = load ptr, ptr %0, align 8, !tbaa !20
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 72
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !35
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 88
  %.sroa.0.0.copyload.i.i.i.i40 = load ptr, ptr %i.bt, align 8, !tbaa !36
  %i.bu = load ptr, ptr %1, align 8, !tbaa !22
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 168
  %i.bw = load ptr, ptr %i.bv, align 8
  tail call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %.sroa.0.0.copyload.i.i.i.i40) #26, !inline_history !192
  %i.bx = load ptr, ptr %1, align 8, !tbaa !22
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = tail call noundef nonnull align 8 dereferenceable(48) ptr %i.bz(ptr noundef nonnull align 8 dereferenceable(16) %1) #26, !inline_history !193 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !156
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 32 ; 3 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !160 ; 2 uses
  %i.cf = icmp eq ptr %i.cc, %i.ce
  br i1 %i.cf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit38
  %i.cg = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ca, ptr noundef nonnull @.str.12, i64 noundef 1) #26 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit42

bb.m:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit38
  store i8 44, ptr %i.ce, align 1
  %i.ch = load ptr, ptr %i.cd, align 8, !tbaa !160
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 1
  store ptr %i.ci, ptr %i.cd, align 8, !tbaa !160
  br label %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit42

_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit42: ; preds = %bb.l, %bb.m
  %i.cj = load ptr, ptr %1, align 8, !tbaa !22
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = tail call noundef nonnull align 8 dereferenceable(48) ptr %i.cl(ptr noundef nonnull align 8 dereferenceable(16) %1) #26, !inline_history !191 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 32 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !160 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
end_hunk_1
