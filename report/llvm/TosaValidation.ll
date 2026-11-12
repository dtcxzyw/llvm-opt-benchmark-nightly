Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TosaValidation?download=true
inline.NumInlined: 11096
inline.NumDeleted: 3580
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@"_ZZN12_GLOBAL__N_114TosaValidation14runOnOperationEvENK3$_1clEPN4mlir9OperationE":bb.a
  %3 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %4 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %5 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %6 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %7 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %8 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %9 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %10 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %11 = alloca %"class.llvm::SmallVector.4478", align 8 ; 9 uses
  %12 = alloca %"struct.mlir::detail::TypedValue.4605", align 8 ; 4 uses
  %13 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 13 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %15 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %16 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %.sroa.019.i.i = alloca [48 x i8], align 8      ; 6 uses
  %17 = alloca %"class.mlir::Type", align 8       ; 4 uses
  %18 = alloca %"class.mlir::DenseElementsAttr::IntElementIterator", align 8 ; 5 uses
  %19 = alloca %"class.mlir::DenseElementsAttr::IntElementIterator", align 8 ; 6 uses
  %20 = alloca %"class.mlir::Value", align 8      ; 5 uses
  %21 = alloca %"class.mlir::DenseIntElementsAttr", align 8 ; 10 uses
  %22 = alloca %"struct.mlir::detail::constant_op_binder.4606", align 8 ; 5 uses
  %.sroa.016.i.i = alloca [48 x i8], align 8      ; 5 uses
  %23 = alloca %"class.mlir::DenseElementsAttr::IntElementIterator", align 8 ; 8 uses
  %24 = alloca %"class.llvm::APInt", align 8      ; 11 uses
  %25 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 13 uses
  %26 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %27 = alloca %"class.mlir::tosa::RescaleOp", align 8 ; 8 uses
  %28 = alloca %"class.mlir::ShapedType", align 8 ; 7 uses
  %29 = alloca %"class.mlir::ShapedType", align 8 ; 7 uses
  %30 = alloca %"class.mlir::Type", align 8       ; 5 uses
  %31 = alloca %"class.mlir::Type", align 8       ; 5 uses
  %32 = alloca %"class.mlir::Type", align 8       ; 5 uses
  %33 = alloca %"class.mlir::Type", align 8       ; 5 uses
  %34 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 5 uses
  %35 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %36 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 5 uses
  %37 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %38 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 5 uses
  %39 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %40 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 5 uses
  %41 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %42 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 5 uses
  %43 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %44 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 5 uses
  %45 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %46 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 5 uses
  %47 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %48 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 5 uses
  %49 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %50 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 5 uses
  %51 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %52 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %53 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %54 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %55 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %56 = alloca %"class.mlir::Type", align 8       ; 5 uses
  %57 = alloca %"class.mlir::ShapeAdaptor", align 8 ; 7 uses
  %58 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 15 uses
  %59 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %60 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %61 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %62 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %63 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %64 = alloca %"class.llvm::mapped_iterator.4556", align 8 ; 12 uses
  %65 = alloca %"class.mlir::Value", align 8      ; 5 uses
  %66 = alloca %"class.mlir::ElementsAttr", align 8 ; 6 uses
  %67 = alloca %"struct.mlir::detail::constant_op_binder.4548", align 8 ; 5 uses
  %68 = alloca %"class.mlir::IntegerAttr", align 8 ; 4 uses
  %69 = alloca %"class.mlir::detail::ElementsAttrRange.4554", align 8 ; 15 uses
  %70 = alloca %"class.mlir::Type", align 8       ; 5 uses
  %71 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 13 uses
  %72 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %73 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 13 uses
  %74 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %75 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %76 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %77 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %78 = alloca %"class.mlir::RankedTensorType", align 8 ; 9 uses
  %79 = alloca %"class.mlir::RankedTensorType", align 8 ; 9 uses
  %80 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %81 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %82 = alloca %"class.llvm::SmallVector.4531", align 8 ; 12 uses
  %83 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 5 uses
  %84 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %85 = alloca %"class.llvm::SmallVector.4478", align 8 ; 9 uses
  %86 = alloca %"class.mlir::Value", align 8      ; 4 uses
  %i.a = alloca i64, align 8                      ; 10 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 10 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %87 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 14 uses
  %88 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %89 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 18 uses
  %90 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %91 = alloca %"class.llvm::SmallVector.4478", align 8 ; 9 uses
  %92 = alloca %"class.llvm::SmallVector.4478", align 8 ; 9 uses
  %93 = alloca %"class.mlir::Value", align 8      ; 5 uses
  %94 = alloca %"class.mlir::Value", align 8      ; 5 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %95 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 5 uses
  %96 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %97 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 5 uses
  %98 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %99 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 5 uses
  %100 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %101 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 5 uses
  %102 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %i.i = alloca i64, align 8                      ; 4 uses
  %i.j = alloca i64, align 8                      ; 4 uses
  %i.k = alloca i64, align 8                      ; 4 uses
  %i.l = alloca i64, align 8                      ; 4 uses
  %103 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 5 uses
  %104 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %i.m = alloca i64, align 8                      ; 5 uses
  %105 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 5 uses
  %106 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %107 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 5 uses
  %108 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %i.n = alloca i64, align 8                      ; 5 uses
  %109 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 5 uses
  %110 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %111 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %112 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %113 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %114 = alloca %"class.mlir::StringAttr", align 8 ; 5 uses
  %115 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  %116 = alloca %"class.llvm::Twine", align 8     ; 5 uses
  %117 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  %118 = alloca %"class.llvm::Twine", align 8     ; 5 uses
  %119 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  %120 = alloca %"class.llvm::Twine", align 8     ; 5 uses
  %121 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %122 = alloca %"class.mlir::tosa::VariableOp", align 8 ; 6 uses
  %123 = alloca %"class.mlir::StringAttr", align 8 ; 5 uses
  %124 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  %125 = alloca %"class.llvm::Twine", align 8     ; 5 uses
  %126 = alloca %"class.mlir::DenseIntElementsAttr", align 8 ; 8 uses
  %127 = alloca %"class.llvm::SmallVector.4478", align 8 ; 13 uses
  %128 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %129 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %130 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %131 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %132 = alloca %"class.mlir::tosa::RescaleOp", align 8 ; 6 uses
  %133 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  %134 = alloca %"class.llvm::Twine", align 8     ; 5 uses
  %135 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  %136 = alloca %"class.llvm::Twine", align 8     ; 5 uses
  %i.o = alloca ptr, align 8                      ; 4 uses
  %137 = alloca %"class.mlir::ResultRange", align 8 ; 5 uses
  %138 = alloca %"class.mlir::ValueTypeRange", align 8 ; 7 uses
  %139 = alloca %"class.mlir::tosa::VariableOp", align 8 ; 5 uses
  %140 = alloca %"class.mlir::StringAttr", align 8 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !143  ; 32 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 12 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.r, align 8, !tbaa !144 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !146
  %.not.i.i = icmp eq ptr %i.t, @_ZN4mlir6detail14TypeIDResolverIvvE2idE
  call void @llvm.lifetime.start.p0(ptr nonnull %140) #24
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !431
  br label %_ZN4mlir9Operation10getDialectEv.exit

bb.c:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 8
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.w, align 8
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %140, align 8
  %i.x = call noundef ptr @_ZNK4mlir10StringAttr20getReferencedDialectEv(ptr noundef nonnull align 8 dereferenceable(8) %140) #24
  br label %_ZN4mlir9Operation10getDialectEv.exit

_ZN4mlir9Operation10getDialectEv.exit:            ; preds = %bb.b, %bb.c
  %i.y = phi ptr [ %i.v, %bb.b ], [ %i.x, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %140) #24
  %i.z = load ptr, ptr %0, align 8, !tbaa !432, !nonnull !91, !align !210
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !90
  %.not = icmp eq ptr %i.y, %i.aa
  br i1 %.not, label %bb.d, label %bb.kn

bb.d:                                             ; preds = %_ZN4mlir9Operation10getDialectEv.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 456 ; 4 uses
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !36, !range !40, !noundef !91
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !144
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !146
  %i.ag = icmp eq ptr %i.af, @_ZN4mlir6detail14TypeIDResolverINS_4tosa9RescaleOpEvE2idE
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ah = phi i1 [ false, %bb.d ], [ %i.ag, %bb.e ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = and i32 %i.aj, 8388608
  %.not.i.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i.i, label %._crit_edge.i, label %_ZN4mlir9Operation11getOperandsEv.exit.i, !prof !194

_ZN4mlir9Operation11getOperandsEv.exit.i:         ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !180
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !211 ; 2 uses
  %i.ap = zext i32 %i.ao to i64
  %.not28.i = icmp eq i32 %i.ao, 0
  br i1 %.not28.i, label %._crit_edge.i, label %.lr.ph.i

bb.g:                                             ; preds = %.lr.ph.i
  %i.aq = add nuw nsw i64 %.sroa.47.029.i, 1      ; 2 uses
  %.not.i = icmp eq i64 %i.aq, %i.ap
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4mlir9Operation11getOperandsEv.exit.i, %bb.g
  %.sroa.47.029.i = phi i64 [ %i.aq, %bb.g ], [ 0, %_ZN4mlir9Operation11getOperandsEv.exit.i ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %i.am, i64 %.sroa.47.029.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.as, align 8, !tbaa !182
  %i.at = call ptr @_ZN4mlir20getElementTypeOrSelfENS_5ValueE(ptr %.sroa.0.0.copyload.i.i.i.i) #24
  %i.au = call fastcc i8 @_ZN12_GLOBAL__N_114TosaValidation24validateValidElementTypeEPN4mlir9OperationENS1_4TypeEb(ptr noundef nonnull %1, ptr %i.at, i1 noundef zeroext %i.ah)
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.g, label %.sink.split

._crit_edge.i:                                    ; preds = %bb.g, %_ZN4mlir9Operation11getOperandsEv.exit.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %138) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %137) #24, !noalias !433
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !212, !noalias !433 ; 2 uses
  %i.ay = icmp eq i32 %i.ax, 0
  %i.az = getelementptr inbounds i8, ptr %1, i64 -16 ; 4 uses
  %i.ba = zext i32 %i.ax to i64
  %.sroa.0.0.i.i38.i = select i1 %i.ay, ptr null, ptr %i.az
  store ptr %.sroa.0.0.i.i38.i, ptr %137, align 8, !noalias !433
  %i.bb = getelementptr inbounds nuw i8, ptr %137, i64 8
  store i64 %i.ba, ptr %i.bb, align 8, !noalias !433
  call void @_ZNK4mlir11ResultRange8getTypesEv(ptr dead_on_unwind nonnull writable sret(%"class.mlir::ValueTypeRange") align 8 %138, ptr noundef nonnull align 8 dereferenceable(16) %137) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %137) #24, !noalias !433
  %.sroa.0.0.copyload.i.i9 = load ptr, ptr %138, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %138, i64 8
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i42.i = getelementptr inbounds nuw i8, ptr %138, i64 24
  %.sroa.2.0.copyload.i43.i = load i64, ptr %.sroa.2.0..sroa_idx.i42.i, align 8 ; 2 uses
  %.not2630.i = icmp eq i64 %.sroa.2.0.copyload.i.i, %.sroa.2.0.copyload.i43.i
  br i1 %.not2630.i, label %._crit_edge34.i, label %.lr.ph33.i

bb.h:                                             ; preds = %.lr.ph33.i
  %i.bc = add nsw i64 %.sroa.4.031.i, 1           ; 2 uses
  %.not26.i = icmp eq i64 %i.bc, %.sroa.2.0.copyload.i43.i
  br i1 %.not26.i, label %._crit_edge34.i, label %.lr.ph33.i

.lr.ph33.i:                                       ; preds = %._crit_edge.i, %bb.h
  %.sroa.4.031.i = phi i64 [ %i.bc, %bb.h ], [ %.sroa.2.0.copyload.i.i, %._crit_edge.i ] ; 2 uses
  %i.bd = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.copyload.i.i9, i64 noundef %.sroa.4.031.i) #24
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.be, align 8
  %i.bf = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -8
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = call ptr @_ZN4mlir20getElementTypeOrSelfENS_4TypeE(ptr %i.bg) #24
  %i.bi = call fastcc i8 @_ZN12_GLOBAL__N_114TosaValidation24validateValidElementTypeEPN4mlir9OperationENS1_4TypeEb(ptr noundef nonnull %1, ptr %i.bh, i1 noundef zeroext %i.ah)
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.h, label %bb.i

bb.i:                                             ; preds = %.lr.ph33.i
  call void @llvm.lifetime.end.p0(ptr nonnull %138) #24
  br label %.sink.split

._crit_edge34.i:                                  ; preds = %bb.h, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %138) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %139) #24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i10 = load ptr, ptr %i.r, align 8, !tbaa !144
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i10, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !146
  %i.bm = icmp eq ptr %i.bl, @_ZN4mlir6detail14TypeIDResolverINS_4tosa10VariableOpEvE2idE
  %spec.select.i.i.i = select i1 %i.bm, ptr %1, ptr null ; 2 uses
  store ptr %spec.select.i.i.i, ptr %139, align 8
  %.not27.i = icmp eq ptr %spec.select.i.i.i, null
  br i1 %.not27.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %._crit_edge34.i
  %i.bn = call ptr @_ZN4mlir4tosa10VariableOp7getTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %139) #24
  %i.bo = call fastcc i8 @_ZN12_GLOBAL__N_114TosaValidation24validateValidElementTypeEPN4mlir9OperationENS1_4TypeEb(ptr noundef nonnull %1, ptr %i.bn, i1 noundef zeroext %i.ah)
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %139) #24
  br label %.sink.split

bb.l:                                             ; preds = %bb.j, %._crit_edge34.i
  call void @llvm.lifetime.end.p0(ptr nonnull %139) #24
  %i.bq = load i8, ptr %i.ab, align 8, !tbaa !36, !range !40, !noundef !91
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.bs = getelementptr inbounds nuw i8, ptr %i.q, i64 808
  %i.bt = getelementptr inbounds nuw i8, ptr %i.q, i64 920
  %i.bu = call i8 @_ZN21TosaProfileCompliance12checkProfileEPN4mlir9OperationERKNS0_4tosa9TargetEnvE(ptr noundef nonnull align 8 dereferenceable(112) %i.bs, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(248) %i.bt) #24
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.n, label %.sink.split

bb.n:                                             ; preds = %bb.m
  %.pre = load i8, ptr %i.ab, align 8, !tbaa !36, !range !40
  %i.bw = trunc nuw i8 %.pre to i1
  br i1 %i.bw, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.bx = getelementptr inbounds nuw i8, ptr %i.q, i64 808
  %i.by = getelementptr inbounds nuw i8, ptr %i.q, i64 920
  %i.bz = call i8 @_ZN21TosaProfileCompliance14checkExtensionEPN4mlir9OperationERKNS0_4tosa9TargetEnvE(ptr noundef nonnull align 8 dereferenceable(112) %i.bx, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(248) %i.by) #24
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %.thread, label %.sink.split

.thread:                                          ; preds = %bb.l, %bb.o, %bb.n
  %i.cb = getelementptr inbounds nuw i8, ptr %i.q, i64 656
  %i.cc = load i8, ptr %i.cb, align 8, !tbaa !36, !range !40, !noundef !91
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.thread
  %i.ce = getelementptr inbounds nuw i8, ptr %i.q, i64 808
  %i.cf = call i8 @_ZN21TosaProfileCompliance12checkInvalidEPN4mlir9OperationE(ptr noundef nonnull align 8 dereferenceable(112) %i.ce, ptr noundef nonnull %1) #24
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.q, label %.sink.split

bb.q:                                             ; preds = %bb.p, %.thread
  %i.ch = getelementptr inbounds nuw i8, ptr %i.q, i64 736
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !46 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.q, i64 744
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !47 ; 2 uses
  %i.cl = zext i32 %i.ck to i64
  %.idx.i = shl nuw nsw i64 %i.cl, 5
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.idx.i
  %.not16.i = icmp eq i32 %i.ck, 0
  br i1 %.not16.i, label %_ZN12_GLOBAL__N_114TosaValidation25applyConstantOperandCheckEPN4mlir9OperationE.exit.thread, label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %bb.q
  %i.cn = getelementptr inbounds nuw i8, ptr %i.q, i64 920
  br label %bb.s

bb.r:                                             ; preds = %_ZNKSt8functionIFN4llvm13LogicalResultEPN4mlir9OperationERKNS2_4tosa9TargetEnvEEEclES4_S8_.exit.i
  %i.co = getelementptr inbounds nuw i8, ptr %.01117.i, i64 32 ; 2 uses
  %.not.i17 = icmp eq ptr %i.co, %i.cm
  br i1 %.not.i17, label %_ZN12_GLOBAL__N_114TosaValidation25applyConstantOperandCheckEPN4mlir9OperationE.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i14
  %.01117.i = phi ptr [ %i.ci, %.lr.ph.i14 ], [ %i.co, %bb.r ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %1, ptr %i.o, align 8, !tbaa !184
  %i.cp = getelementptr inbounds nuw i8, ptr %.01117.i, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !38
  %.not.i.i.i15 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i15, label %bb.t, label %_ZNKSt8functionIFN4llvm13LogicalResultEPN4mlir9OperationERKNS2_4tosa9TargetEnvEEEclES4_S8_.exit.i

bb.t:                                             ; preds = %bb.s
  call void @_ZSt25__throw_bad_function_callv() #26
  unreachable

_ZNKSt8functionIFN4llvm13LogicalResultEPN4mlir9OperationERKNS2_4tosa9TargetEnvEEEclES4_S8_.exit.i: ; preds = %bb.s
  %i.cr = getelementptr inbounds nuw i8, ptr %.01117.i, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !67
  %i.ct = call i8 %i.cs(ptr noundef nonnull align 8 dereferenceable(32) %.01117.i, ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 8 dereferenceable(248) %i.cn) #24, !inline_history !379
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %bb.r, label %bb.u

bb.u:                                             ; preds = %_ZNKSt8functionIFN4llvm13LogicalResultEPN4mlir9OperationERKNS2_4tosa9TargetEnvEEEclES4_S8_.exit.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 2 uses
  %.0.copyload.i.i.i.i18 = load i64, ptr %i.cv, align 8
  %i.cw = or i64 %.0.copyload.i.i.i.i18, 4
  store i64 %i.cw, ptr %i.cv, align 8
  br label %_ZN12_GLOBAL__N_114TosaValidation25applyConstantOperandCheckEPN4mlir9OperationE.exit.thread

_ZN12_GLOBAL__N_114TosaValidation25applyConstantOperandCheckEPN4mlir9OperationE.exit.thread: ; preds = %bb.r, %bb.q, %bb.u
  %i.cx = call fastcc i8 @_ZN12_GLOBAL__N_114TosaValidation15applyLevelCheckEPN4mlir9OperationE(ptr noundef nonnull align 8 dereferenceable(1168) %i.q, ptr noundef %1)
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZN12_GLOBAL__N_114TosaValidation25applyConstantOperandCheckEPN4mlir9OperationE.exit.thread
  %i.cz = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 2 uses
  %.0.copyload.i.i.i.i19 = load i64, ptr %i.cz, align 8
  %i.da = or i64 %.0.copyload.i.i.i.i19, 4
  store i64 %i.da, ptr %i.cz, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZN12_GLOBAL__N_114TosaValidation25applyConstantOperandCheckEPN4mlir9OperationE.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %132) #24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !144
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !146
  %i.dd = icmp eq ptr %i.dc, @_ZN4mlir6detail14TypeIDResolverINS_4tosa9RescaleOpEvE2idE
  %spec.select.i.i.i.i = select i1 %i.dd, ptr %1, ptr null ; 2 uses
  store ptr %spec.select.i.i.i.i, ptr %132, align 8
  %.not.i.i20 = icmp eq ptr %spec.select.i.i.i.i, null
end_hunk_0
begin_hunk_1_@"_ZZN12_GLOBAL__N_114TosaValidation14runOnOperationEvENK3$_1clEPN4mlir9OperationE":bb.a
  br i1 %diff.check, label %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader248, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ju, 9223372036854775804     ; 4 uses
  %i.kh = shl i64 %n.vec, 3
  %i.ki = getelementptr i8, ptr %i.kc, i64 %i.kh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.kj = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.kc, i64 %i.kj ; 2 uses
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.jq, i64 %index ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  %wide.load = load <2 x i64>, ptr %i.kk, align 8, !tbaa !54
  %wide.load221 = load <2 x i64>, ptr %i.kl, align 8, !tbaa !54
  %i.km = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !54
  store <2 x i64> %wide.load221, ptr %i.km, align 8, !tbaa !54
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.kn = icmp eq i64 %index.next, %n.vec
  br i1 %i.kn, label %middle.block, label %vector.body, !llvm.loop !392

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ju, %n.vec
  br i1 %cmp.n, label %_ZN4llvm9to_vectorIN4mlir6detail17ElementsAttrRangeINS1_17DenseElementsAttr15ElementIteratorIlEEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISH_EE5valueEEEOSB_.exit.i.i, label %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader248

.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader248: ; preds = %vector.memcheck, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.045.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.kc, %vector.memcheck ], [ %i.kc, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ki, %middle.block ] ; 2 uses
  %.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %i.ko = sub nsw i64 %i.ju, %.ph
  %xtraiter = and i64 %i.ko, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.prol:      ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader248, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %.045.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.kt, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.045.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader248 ] ; 2 uses
  %i.kp = phi i64 [ %i.ks, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.ph, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader248 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader248 ]
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.jq, i64 %i.kp
  %i.kr = load i64, ptr %i.kq, align 8, !tbaa !54
  store i64 %i.kr, ptr %.045.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, align 8, !tbaa !54
  %i.ks = add nuw nsw i64 %i.kp, 1                ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !393

.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader248
  %.045.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %.045.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader248 ], [ %i.kt, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %.unr = phi i64 [ %.ph, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader248 ], [ %i.ks, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.ku = sub nsw i64 %.ph, %i.ju
  %i.kv = icmp ugt i64 %i.ku, -8
  br i1 %i.kv, label %_ZN4llvm9to_vectorIN4mlir6detail17ElementsAttrRangeINS1_17DenseElementsAttr15ElementIteratorIlEEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISH_EE5valueEEEOSB_.exit.i.i, label %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.split.us.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.jq, align 8, !tbaa !54 ; 4 uses
  %min.iters.check224 = icmp ult i64 %i.ju, 4
  br i1 %min.iters.check224, label %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i, label %vector.ph225

vector.ph225:                                     ; preds = %.lr.ph.split.us.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i
  %n.vec226 = and i64 %i.ju, 9223372036854775804  ; 3 uses
  %i.kw = and i64 %i.ju, 3
  %i.kx = shl i64 %n.vec226, 3
  %i.ky = getelementptr i8, ptr %i.kc, i64 %i.kx
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body227

vector.body227:                                   ; preds = %vector.body227, %vector.ph225
  %index228 = phi i64 [ 0, %vector.ph225 ], [ %index.next230, %vector.body227 ] ; 2 uses
  %i.kz = shl i64 %index228, 3
  %next.gep229 = getelementptr i8, ptr %i.kc, i64 %i.kz ; 2 uses
  %i.la = getelementptr i8, ptr %next.gep229, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep229, align 8, !tbaa !54
  store <2 x i64> %broadcast.splat, ptr %i.la, align 8, !tbaa !54
  %index.next230 = add nuw i64 %index228, 4       ; 2 uses
  %i.lb = icmp eq i64 %index.next230, %n.vec226
  br i1 %i.lb, label %middle.block231, label %vector.body227, !llvm.loop !394

middle.block231:                                  ; preds = %vector.body227
  %cmp.n232 = icmp eq i64 %i.ju, %n.vec226
  br i1 %cmp.n232, label %_ZN4llvm9to_vectorIN4mlir6detail17ElementsAttrRangeINS1_17DenseElementsAttr15ElementIteratorIlEEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISH_EE5valueEEEOSB_.exit.i.i, label %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i:        ; preds = %middle.block231, %.lr.ph.split.us.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.06.us.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.ju, %.lr.ph.split.us.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.kw, %middle.block231 ] ; 2 uses
  %.045.us.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.kc, %.lr.ph.split.us.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ky, %middle.block231 ] ; 3 uses
  store i64 %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.045.us.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, align 8, !tbaa !54
  %i.lc = icmp samesign ugt i64 %.06.us.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, 1
  br i1 %i.lc, label %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i.1, label %_ZN4llvm9to_vectorIN4mlir6detail17ElementsAttrRangeINS1_17DenseElementsAttr15ElementIteratorIlEEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISH_EE5valueEEEOSB_.exit.i.i

.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i.1:      ; preds = %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ld = getelementptr inbounds nuw i8, ptr %.045.us.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, i64 8
  store i64 %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.ld, align 8, !tbaa !54
  %i.le = icmp eq i64 %.06.us.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, 3
  br i1 %i.le, label %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i.2, label %_ZN4llvm9to_vectorIN4mlir6detail17ElementsAttrRangeINS1_17DenseElementsAttr15ElementIteratorIlEEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISH_EE5valueEEEOSB_.exit.i.i

.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i.2:      ; preds = %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i.1
  %i.lf = getelementptr inbounds nuw i8, ptr %.045.us.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, i64 16
  store i64 %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.lf, align 8, !tbaa !54
  br label %_ZN4llvm9to_vectorIN4mlir6detail17ElementsAttrRangeINS1_17DenseElementsAttr15ElementIteratorIlEEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISH_EE5valueEEEOSB_.exit.i.i

.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.045.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.mm, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.045.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.lg = phi i64 [ %i.ml, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.unr, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.jq, i64 %i.lg
  %i.li = load i64, ptr %i.lh, align 8, !tbaa !54
  store i64 %i.li, ptr %.045.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !54
  %i.lj = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.jq, i64 %i.lg
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  %i.lm = load i64, ptr %i.ll, align 8, !tbaa !54
  store i64 %i.lm, ptr %i.lj, align 8, !tbaa !54
  %i.ln = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.jq, i64 %i.lg
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 16
  %i.lq = load i64, ptr %i.lp, align 8, !tbaa !54
  store i64 %i.lq, ptr %i.ln, align 8, !tbaa !54
  %i.lr = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 24
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.jq, i64 %i.lg
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 24
  %i.lu = load i64, ptr %i.lt, align 8, !tbaa !54
  store i64 %i.lu, ptr %i.lr, align 8, !tbaa !54
  %i.lv = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 32
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.jq, i64 %i.lg
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 32
  %i.ly = load i64, ptr %i.lx, align 8, !tbaa !54
  store i64 %i.ly, ptr %i.lv, align 8, !tbaa !54
  %i.lz = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 40
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.jq, i64 %i.lg
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 40
  %i.mc = load i64, ptr %i.mb, align 8, !tbaa !54
  store i64 %i.mc, ptr %i.lz, align 8, !tbaa !54
  %i.md = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 48
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.jq, i64 %i.lg
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 48
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !54
  store i64 %i.mg, ptr %i.md, align 8, !tbaa !54
  %i.mh = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 56
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.jq, i64 %i.lg
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 56
  %i.mk = load i64, ptr %i.mj, align 8, !tbaa !54
  store i64 %i.mk, ptr %i.mh, align 8, !tbaa !54
  %i.ml = add nuw nsw i64 %i.lg, 8                ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 64
  %exitcond.not.i.i.7 = icmp eq i64 %i.ml, %i.ju
  br i1 %exitcond.not.i.i.7, label %_ZN4llvm9to_vectorIN4mlir6detail17ElementsAttrRangeINS1_17DenseElementsAttr15ElementIteratorIlEEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISH_EE5valueEEEOSB_.exit.i.i, label %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !395

_ZN4llvm9to_vectorIN4mlir6detail17ElementsAttrRangeINS1_17DenseElementsAttr15ElementIteratorIlEEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISH_EE5valueEEEOSB_.exit.i.i: ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i.1, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i.2, %middle.block, %middle.block231, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i.i, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.thread.i.i
  %i.mn = phi ptr [ %i.jm, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.thread.i.i ], [ %i.jz, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i.i ], [ %i.jz, %middle.block231 ], [ %i.jz, %middle.block ], [ %i.jz, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.jz, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i.2 ], [ %i.jz, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i.1 ], [ %i.jz, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.jz, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.mo = phi i32 [ 0, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.thread.i.i ], [ %i.ka, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i.i ], [ %i.ka, %middle.block231 ], [ %i.ka, %middle.block ], [ %i.ka, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ka, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i.2 ], [ %i.ka, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i.1 ], [ %i.ka, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ka, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %.sroa.82.0.i1825.i.i = phi i64 [ undef, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.thread.i.i ], [ %i.ju, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i.i ], [ %i.ju, %middle.block231 ], [ %i.ju, %middle.block ], [ %i.ju, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ju, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i.2 ], [ %i.ju, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i.1 ], [ %i.ju, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ju, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.mp = phi ptr [ %i.jm, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.thread.i.i ], [ %i.jv, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i.i ], [ %i.jv, %middle.block231 ], [ %i.jv, %middle.block ], [ %i.jv, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.jv, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i.2 ], [ %i.jv, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i.1 ], [ %i.jv, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.jv, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.mq = phi ptr [ %i.jn, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.thread.i.i ], [ %i.jw, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i.i ], [ %i.jw, %middle.block231 ], [ %i.jw, %middle.block ], [ %i.jw, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.jw, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i.2 ], [ %i.jw, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i.1 ], [ %i.jw, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.jw, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.mr = trunc i64 %.sroa.82.0.i1825.i.i to i32
  %i.ms = add i32 %i.mo, %i.mr                    ; 2 uses
  store i32 %i.ms, ptr %i.mq, align 8, !tbaa !47, !alias.scope !437
  %i.mt = zext i32 %i.ms to i64
  %i.mu = call ptr @_ZN4mlir16RankedTensorType3getEN4llvm8ArrayRefIlEENS_4TypeENS_9AttributeE(ptr %i.mn, i64 %i.mt, ptr %i.jj, ptr null) #24
  %i.mv = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir10StringAttrENS2_4TypeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.hi, ptr noundef nonnull align 8 dereferenceable(8) %123)
  %.fca.0.extract.i.i.i = extractvalue { ptr, i8 } %i.mv, 0
  %i.mw = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i, i64 8
  store ptr %i.mu, ptr %i.mw, align 8, !tbaa !113
  %i.mx = load ptr, ptr %127, align 8, !tbaa !46  ; 2 uses
  %i.my = icmp eq ptr %i.mx, %i.mp
  br i1 %i.my, label %_ZN12_GLOBAL__N_114TosaValidation13CheckVariableEPN4mlir9OperationE.exit.thread18.i, label %bb.bj

bb.bj:                                            ; preds = %_ZN4llvm9to_vectorIN4mlir6detail17ElementsAttrRangeINS1_17DenseElementsAttr15ElementIteratorIlEEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISH_EE5valueEEEOSB_.exit.i.i
  call void @free(ptr noundef %i.mx) #24
  br label %_ZN12_GLOBAL__N_114TosaValidation13CheckVariableEPN4mlir9OperationE.exit.thread18.i

_ZN12_GLOBAL__N_114TosaValidation13CheckVariableEPN4mlir9OperationE.exit.thread18.i: ; preds = %bb.bj, %_ZN4llvm9to_vectorIN4mlir6detail17ElementsAttrRangeINS1_17DenseElementsAttr15ElementIteratorIlEEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISH_EE5valueEEEOSB_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %127) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %126) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %123) #24
  br label %.sink.split.i

_ZN12_GLOBAL__N_114TosaValidation13CheckVariableEPN4mlir9OperationE.exit.i: ; preds = %bb.bh, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %125) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %124) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %123) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %122) #24
  %i.mz = trunc nuw i8 %i.jd to i1
  br i1 %i.mz, label %bb.bk, label %bb.cn

.sink.split.i:                                    ; preds = %_ZN12_GLOBAL__N_114TosaValidation13CheckVariableEPN4mlir9OperationE.exit.thread18.i, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %122) #24
  br label %bb.bk

bb.bk:                                            ; preds = %.sink.split.i, %_ZN12_GLOBAL__N_114TosaValidation13CheckVariableEPN4mlir9OperationE.exit.i
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !144
  %i.na = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 16
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !146 ; 2 uses
  %i.nc = icmp eq ptr %i.nb, @_ZN4mlir6detail14TypeIDResolverINS_4tosa14VariableReadOpEvE2idE
  %i.nd = icmp eq ptr %i.nb, @_ZN4mlir6detail14TypeIDResolverINS_4tosa15VariableWriteOpEvE2idE
  %or.cond.i.i = or i1 %i.nc, %i.nd
  br i1 %or.cond.i.i, label %bb.bl, label %_ZN12_GLOBAL__N_114TosaValidation18applyVariableCheckEPN4mlir9OperationE.exit

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %114) #24
  %141 = load i32, ptr %i.ai, align 4
  %.not.i.i5.i = icmp ult i32 %141, 16777216
  br i1 %.not.i.i5.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ne = call { ptr, i8 } @_ZN4mlir9Operation15getInherentAttrEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nonnull @.str.73, i64 4) #24 ; 2 uses
  %i.nf = extractvalue { ptr, i8 } %i.ne, 0
  %i.ng = extractvalue { ptr, i8 } %i.ne, 1
  %i.nh = trunc nuw i8 %i.ng to i1
  br i1 %i.nh, label %_ZN4mlir9Operation7getAttrEN4llvm9StringRefE.exit.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.ni = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.nj = call ptr @_ZNK4mlir14DictionaryAttr3getEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.ni, ptr nonnull @.str.73, i64 4) #24
  br label %_ZN4mlir9Operation7getAttrEN4llvm9StringRefE.exit.i.i

_ZN4mlir9Operation7getAttrEN4llvm9StringRefE.exit.i.i: ; preds = %bb.bn, %bb.bm
  %.sroa.05.1.i.i.i = phi ptr [ %i.nj, %bb.bn ], [ %i.nf, %bb.bm ] ; 3 uses
  store ptr %.sroa.05.1.i.i.i, ptr %114, align 8
  %i.nk = getelementptr inbounds nuw i8, ptr %i.q, i64 784 ; 2 uses
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !88, !noalias !441
  %i.nm = getelementptr inbounds nuw i8, ptr %i.q, i64 792
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !213, !noalias !441 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.q, i64 804
  %i.np = load i32, ptr %i.no, align 4, !tbaa !87, !noalias !441 ; 2 uses
  %i.nq = icmp eq i32 %i.np, 0
  br i1 %i.nq, label %.loopexit.i6.i, label %bb.bo

bb.bo:                                            ; preds = %_ZN4mlir9Operation7getAttrEN4llvm9StringRefE.exit.i.i
  %i.nr = add i32 %i.np, -1                       ; 2 uses
  %i.ns = ptrtoint ptr %.sroa.05.1.i.i.i to i64
  %i.nt = mul i64 %i.ns, -4658895280553007687     ; 2 uses
  %i.nu = lshr i64 %i.nt, 31
  %i.nv = xor i64 %i.nu, %i.nt
  %i.nw = trunc i64 %i.nv to i32
  %i.nx = and i32 %i.nr, %i.nw                    ; 3 uses
  %i.ny = zext i32 %i.nx to i64                   ; 2 uses
  %i.nz = lshr i64 %i.ny, 5
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.nn, i64 %i.nz
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !177
  %i.oc = and i32 %i.nx, 31
  %i.od = lshr i32 %i.ob, %i.oc
  %i.oe = trunc i32 %i.od to i1
  br i1 %i.oe, label %.lr.ph.i.i.i.i11.i, label %.loopexit.i6.i, !prof !214

.lr.ph.i.i.i.i11.i:                               ; preds = %bb.bo, %bb.bp
  %i.of = phi i64 [ %i.ok, %bb.bp ], [ %i.ny, %bb.bo ]
  %.01419.i.i.i.i12.i = phi i32 [ %i.oj, %bb.bp ], [ %i.nx, %bb.bo ]
  %i.og = getelementptr inbounds nuw [16 x i8], ptr %i.nl, i64 %i.of
  %.sroa.0.0.copyload.i.i.i.i13.i = load ptr, ptr %i.og, align 8, !tbaa !188
  %i.oh = icmp eq ptr %.sroa.05.1.i.i.i, %.sroa.0.0.copyload.i.i.i.i13.i
  br i1 %i.oh, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir10StringAttrENS2_4TypeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E5countERKS3_.exit.i14.i, label %bb.bp, !prof !64

bb.bp:                                            ; preds = %.lr.ph.i.i.i.i11.i
  %i.oi = add nuw i32 %.01419.i.i.i.i12.i, 1
  %i.oj = and i32 %i.oi, %i.nr                    ; 3 uses
  %i.ok = zext i32 %i.oj to i64                   ; 2 uses
  %i.ol = lshr i64 %i.ok, 5
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.nn, i64 %i.ol
  %i.on = load i32, ptr %i.om, align 4, !tbaa !177
  %i.oo = and i32 %i.oj, 31
  %i.op = lshr i32 %i.on, %i.oo
  %i.oq = trunc i32 %i.op to i1
  br i1 %i.oq, label %.lr.ph.i.i.i.i11.i, label %.loopexit.i6.i, !prof !215

.loopexit.i6.i:                                   ; preds = %bb.bp, %bb.bo, %_ZN4mlir9Operation7getAttrEN4llvm9StringRefE.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %115) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %116) #24
  %i.or = getelementptr inbounds nuw i8, ptr %116, i64 32
  store i8 1, ptr %i.or, align 8, !tbaa !119
  %i.os = getelementptr inbounds nuw i8, ptr %116, i64 33
  store i8 1, ptr %i.os, align 1, !tbaa !120
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %115, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(34) %116) #24
  %i.ot = load ptr, ptr %115, align 8, !tbaa !128
  %.not.i.i.i7.i = icmp eq ptr %i.ot, null
  br i1 %.not.i.i.i7.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA27_KcEEOS0_OT_.exit.i.i, label %bb.bq

bb.bq:                                            ; preds = %.loopexit.i6.i
  %i.ou = getelementptr inbounds nuw i8, ptr %115, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %113) #24
  store i32 3, ptr %113, align 8, !tbaa !131
  %i.ov = getelementptr inbounds nuw i8, ptr %113, i64 8
  store ptr @.str.74, ptr %i.ov, align 8, !tbaa !52
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i8.i = getelementptr inbounds nuw i8, ptr %113, i64 16
  store i64 26, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i8.i, align 8, !tbaa !54
  %i.ow = getelementptr inbounds nuw i8, ptr %115, i64 32 ; 3 uses
  %i.ox = load i32, ptr %i.ow, align 8, !tbaa !47 ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %115, i64 36
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !48
  %.not.i.i.i.i.i.i9.i = icmp ult i32 %i.ox, %i.oz
  br i1 %.not.i.i.i.i.i.i9.i, label %bb.bs, label %bb.br, !prof !64

bb.br:                                            ; preds = %bb.bq
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ou, ptr noundef nonnull align 8 dereferenceable(24) %113)
  br label %_ZN4mlir10Diagnostic6appendIRA27_KcEERS0_OT_.exit.i.i.i.i

bb.bs:                                            ; preds = %bb.bq
  %i.pa = zext i32 %i.ox to i64
  %i.pb = load ptr, ptr %i.ou, align 8, !tbaa !46
  %i.pc = getelementptr inbounds nuw [24 x i8], ptr %i.pb, i64 %i.pa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.pc, ptr noundef nonnull align 8 dereferenceable(24) %113, i64 24, i1 false)
  %i.pd = load i32, ptr %i.ow, align 8, !tbaa !47
  %i.pe = add i32 %i.pd, 1
  store i32 %i.pe, ptr %i.ow, align 8, !tbaa !47
  br label %_ZN4mlir10Diagnostic6appendIRA27_KcEERS0_OT_.exit.i.i.i.i

_ZN4mlir10Diagnostic6appendIRA27_KcEERS0_OT_.exit.i.i.i.i: ; preds = %bb.bs, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %113) #24
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA27_KcEEOS0_OT_.exit.i.i

_ZNO4mlir18InFlightDiagnosticlsIRA27_KcEEOS0_OT_.exit.i.i: ; preds = %_ZN4mlir10Diagnostic6appendIRA27_KcEERS0_OT_.exit.i.i.i.i, %.loopexit.i6.i
  %i.pf = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %115) #24
  %i.pg = load ptr, ptr %115, align 8, !tbaa !128
  %.not.i22.i.i = icmp eq ptr %i.pg, null
  br i1 %.not.i22.i.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA27_KcEEOS0_OT_.exit.i.i
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %115) #24
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %_ZNO4mlir18InFlightDiagnosticlsIRA27_KcEEOS0_OT_.exit.i.i
  %i.ph = getelementptr inbounds nuw i8, ptr %115, i64 200 ; 2 uses
  %i.pi = load i8, ptr %i.ph, align 8, !tbaa !132, !range !40, !noundef !91
  %i.pj = trunc nuw i8 %i.pi to i1
  br i1 %i.pj, label %bb.bv, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i.i26

bb.bv:                                            ; preds = %bb.bu
  %i.pk = getelementptr inbounds nuw i8, ptr %115, i64 8
  store i8 0, ptr %i.ph, align 8, !tbaa !132
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.pk) #24
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i.i26

_ZN4mlir18InFlightDiagnosticD2Ev.exit.i.i26:      ; preds = %bb.bv, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %116) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %115) #24
  br label %_ZN12_GLOBAL__N_114TosaValidation24CheckVariableReadOrWriteEPN4mlir9OperationE.exit.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir10StringAttrENS2_4TypeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E5countERKS3_.exit.i14.i: ; preds = %.lr.ph.i.i.i.i11.i
  %i.pl = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir10StringAttrENS2_4TypeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.nk, ptr noundef nonnull align 8 dereferenceable(8) %114)
  %.fca.0.extract.i.i15.i = extractvalue { ptr, i8 } %i.pl, 0
  %i.pm = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i15.i, i64 8
  %i.pn = load i64, ptr %i.pm, align 8, !tbaa !113 ; 2 uses
  %i.po = load i32, ptr %i.ai, align 4
  %i.pp = and i32 %i.po, 8388608
  %.not.i.i23.i.i = icmp eq i32 %i.pp, 0
  br i1 %.not.i.i23.i.i, label %._crit_edge.i.i, label %_ZN4mlir9Operation11getOperandsEv.exit.i.i, !prof !194

_ZN4mlir9Operation11getOperandsEv.exit.i.i:       ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir10StringAttrENS2_4TypeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E5countERKS3_.exit.i14.i
  %i.pq = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !180
  %i.ps = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !211 ; 2 uses
  %i.pu = zext i32 %i.pt to i64
  %.not85.i.i = icmp eq i32 %i.pt, 0
  br i1 %.not85.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.bw:                                            ; preds = %.lr.ph.i.i
  %i.pv = add nuw nsw i64 %.sroa.456.086.i.i, 1   ; 2 uses
  %.not.i16.i = icmp eq i64 %i.pv, %i.pu
  br i1 %.not.i16.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4mlir9Operation11getOperandsEv.exit.i.i, %bb.bw
  %.sroa.456.086.i.i = phi i64 [ %i.pv, %bb.bw ], [ 0, %_ZN4mlir9Operation11getOperandsEv.exit.i.i ] ; 2 uses
  %i.pw = getelementptr inbounds nuw [32 x i8], ptr %i.pr, i64 %.sroa.456.086.i.i
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 24
  %.sroa.0.0.copyload.i.i.i26.i.i = load ptr, ptr %i.px, align 8, !tbaa !182
  %i.py = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i26.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.py, align 8
  %i.pz = and i64 %.0.copyload.i.i.i.i.i.i.i, -8
  %i.qa = icmp eq i64 %i.pz, %i.pn
  br i1 %i.qa, label %bb.bw, label %bb.bx

bb.bx:                                            ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %117) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %118) #24
  %i.qb = getelementptr inbounds nuw i8, ptr %118, i64 32
  store i8 1, ptr %i.qb, align 8, !tbaa !119
  %i.qc = getelementptr inbounds nuw i8, ptr %118, i64 33
  store i8 1, ptr %i.qc, align 1, !tbaa !120
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %117, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(34) %118) #24
  %i.qd = load ptr, ptr %117, align 8, !tbaa !128
  %.not.i.i27.i.i = icmp eq ptr %i.qd, null
  br i1 %.not.i.i27.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.i.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.qe = getelementptr inbounds nuw i8, ptr %117, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %112) #24
  store i32 3, ptr %112, align 8, !tbaa !131
  %i.qf = getelementptr inbounds nuw i8, ptr %112, i64 8
  store ptr @.str.75, ptr %i.qf, align 8, !tbaa !52
  %.sroa.2.0..sroa_idx.i.i.i.i.i28.i.i = getelementptr inbounds nuw i8, ptr %112, i64 16
  store i64 41, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i28.i.i, align 8, !tbaa !54
  %i.qg = getelementptr inbounds nuw i8, ptr %117, i64 32 ; 3 uses
  %i.qh = load i32, ptr %i.qg, align 8, !tbaa !47 ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %117, i64 36
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !48
  %.not.i.i.i.i.i29.i.i = icmp ult i32 %i.qh, %i.qj
  br i1 %.not.i.i.i.i.i29.i.i, label %bb.ca, label %bb.bz, !prof !64

bb.bz:                                            ; preds = %bb.by
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.qe, ptr noundef nonnull align 8 dereferenceable(24) %112)
  br label %_ZN4mlir10Diagnostic6appendIRA42_KcEERS0_OT_.exit.i.i.i.i
end_hunk_1
