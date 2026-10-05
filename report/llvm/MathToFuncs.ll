Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MathToFuncs?download=true
inline.NumInlined: 3934
inline.NumDeleted: 2283
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE:bb.a
  %.sroa.019.035 = phi ptr [ %i.l, %.lr.ph ], [ %i.i, %.lr.ph40 ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.019.035, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !146  ; 2 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.019.035) #25
  tail call void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef nonnull %i.m, ptr %1, i64 %2, i32 noundef %3)
  %.not33 = icmp eq ptr %i.l, %i.j
  br i1 %.not33, label %.loopexit, label %.lr.ph

bb.d:                                             ; preds = %._crit_edge43
  tail call void %1(i64 noundef %2, ptr noundef nonnull %0) #25, !inline_history !476
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge43
  ret void
}

declare { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #7

declare noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZN12_GLOBAL__N_122ConvertMathToFuncsPass25generateOpImplementationsEvE3$_0EEvlS3_"(i64 noundef %0, ptr noundef %1) #0 align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  tail call fastcc void @"_ZZN12_GLOBAL__N_122ConvertMathToFuncsPass25generateOpImplementationsEvENK3$_0clEPN4mlir9OperationE"(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef %1)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZZN12_GLOBAL__N_122ConvertMathToFuncsPass25generateOpImplementationsEvENK3$_0clEPN4mlir9OperationE"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1) unnamed_addr #5 align 2 {
bb.a:
  %2 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %3 = alloca %"class.mlir::Type", align 8        ; 4 uses
  %4 = alloca %"class.mlir::Type", align 8        ; 4 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.mlir::func::FuncOp", align 8 ; 8 uses
  %6 = alloca %"class.mlir::FunctionType", align 8 ; 6 uses
  %7 = alloca %"class.mlir::FloatType", align 8   ; 9 uses
  %8 = alloca %"class.mlir::IntegerType", align 8 ; 11 uses
  %9 = alloca %"class.mlir::ImplicitLocOpBuilder", align 8 ; 56 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %11 = alloca %"class.llvm::raw_string_ostream", align 8 ; 16 uses
  %12 = alloca %"class.llvm::ArrayRef.365", align 8 ; 4 uses
  %13 = alloca %"class.mlir::Value", align 8      ; 6 uses
  %14 = alloca %"class.llvm::APInt", align 8      ; 9 uses
  %15 = alloca %"class.llvm::APInt", align 8      ; 9 uses
  %16 = alloca %"class.mlir::TypeRange", align 8  ; 5 uses
  %17 = alloca %"class.llvm::ArrayRef.617", align 8 ; 4 uses
  %18 = alloca %"class.mlir::TypeRange", align 8  ; 5 uses
  %19 = alloca %"class.llvm::ArrayRef.617", align 8 ; 4 uses
  %20 = alloca %"class.mlir::ValueRange", align 8 ; 5 uses
  %21 = alloca %"class.llvm::ArrayRef.812", align 8 ; 4 uses
  %22 = alloca %"class.mlir::TypeRange", align 8  ; 5 uses
  %23 = alloca [3 x %"class.mlir::Type"], align 8 ; 6 uses
  %24 = alloca %"class.llvm::ArrayRef.617", align 8 ; 5 uses
  %25 = alloca [3 x %"class.mlir::Location"], align 8 ; 6 uses
  %26 = alloca %"class.mlir::ValueRange", align 8 ; 5 uses
  %27 = alloca [3 x %"class.mlir::Value"], align 8 ; 6 uses
  %28 = alloca %"class.mlir::Value", align 8      ; 4 uses
  %29 = alloca %"class.mlir::TypeRange", align 8  ; 5 uses
  %30 = alloca %"class.llvm::ArrayRef.617", align 8 ; 4 uses
  %31 = alloca %"class.mlir::Value", align 8      ; 12 uses
  %32 = alloca %"class.mlir::TypeRange", align 8  ; 5 uses
  %33 = alloca %"class.llvm::ArrayRef.617", align 8 ; 5 uses
  %34 = alloca %"class.mlir::Location", align 8   ; 4 uses
  %35 = alloca %"class.llvm::ArrayRef.812", align 8 ; 4 uses
  %36 = alloca %"class.mlir::TypeRange", align 8  ; 5 uses
  %37 = alloca %"class.llvm::ArrayRef.617", align 8 ; 4 uses
  %38 = alloca %"class.mlir::ValueRange", align 8 ; 5 uses
  %39 = alloca [3 x %"class.mlir::Value"], align 8 ; 6 uses
  %40 = alloca %"class.mlir::TypeRange", align 8  ; 5 uses
  %41 = alloca %"class.llvm::ArrayRef.617", align 8 ; 5 uses
  %42 = alloca %"class.mlir::Location", align 8   ; 4 uses
  %43 = alloca %"class.mlir::ValueRange", align 8 ; 4 uses
  %44 = alloca %"class.llvm::ArrayRef.812", align 8 ; 4 uses
  %45 = alloca %"class.mlir::TypeRange", align 8  ; 5 uses
  %46 = alloca %"class.llvm::ArrayRef.617", align 8 ; 4 uses
  %47 = alloca %"class.mlir::TypeRange", align 8  ; 5 uses
  %48 = alloca %"class.llvm::ArrayRef.617", align 8 ; 5 uses
  %49 = alloca %"class.mlir::Location", align 8   ; 4 uses
  %50 = alloca %"class.llvm::ArrayRef.812", align 8 ; 4 uses
  %51 = alloca %"class.mlir::TypeRange", align 8  ; 5 uses
  %52 = alloca %"class.llvm::ArrayRef.617", align 8 ; 4 uses
  %53 = alloca %"class.mlir::TypeRange", align 8  ; 5 uses
  %54 = alloca %"class.llvm::ArrayRef.617", align 8 ; 5 uses
  %55 = alloca %"class.mlir::Location", align 8   ; 4 uses
  %56 = alloca %"class.llvm::ArrayRef.812", align 8 ; 4 uses
  %57 = alloca %"class.mlir::BlockArgument", align 8 ; 4 uses
  %58 = alloca %"class.mlir::IntegerType", align 8 ; 5 uses
  %59 = alloca %"struct.std::pair.301", align 8   ; 5 uses
  %60 = alloca %"class.mlir::func::FuncOp", align 8 ; 4 uses
  %61 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %62 = alloca %"class.mlir::Type", align 8       ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %63 = alloca %"class.mlir::func::FuncOp", align 8 ; 8 uses
  %64 = alloca %"class.mlir::Type", align 8       ; 12 uses
  %65 = alloca %"class.mlir::ImplicitLocOpBuilder", align 8 ; 63 uses
  %66 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %67 = alloca %"class.llvm::raw_string_ostream", align 8 ; 14 uses
  %68 = alloca %"class.mlir::TypeRange", align 8  ; 5 uses
  %69 = alloca [2 x %"class.mlir::Type"], align 8 ; 5 uses
  %70 = alloca %"class.mlir::TypeRange", align 8  ; 5 uses
  %71 = alloca %"class.llvm::ArrayRef.365", align 8 ; 4 uses
  %72 = alloca %"class.mlir::Value", align 8      ; 8 uses
  %73 = alloca %"class.mlir::Value", align 8      ; 10 uses
  %74 = alloca %"class.mlir::Value", align 8      ; 5 uses
  %75 = alloca %"class.llvm::APInt", align 8      ; 7 uses
  %76 = alloca %"class.mlir::TypeRange", align 8  ; 5 uses
  %77 = alloca %"class.llvm::ArrayRef.617", align 8 ; 4 uses
  %78 = alloca %"class.mlir::TypeRange", align 8  ; 5 uses
  %79 = alloca %"class.llvm::ArrayRef.617", align 8 ; 4 uses
  %80 = alloca %"class.mlir::ValueRange", align 8 ; 5 uses
  %81 = alloca %"class.llvm::ArrayRef.812", align 8 ; 4 uses
  %82 = alloca %"class.mlir::TypeRange", align 8  ; 5 uses
  %83 = alloca %"class.llvm::ArrayRef.617", align 8 ; 4 uses
  %84 = alloca %"class.mlir::TypeRange", align 8  ; 5 uses
  %85 = alloca %"class.llvm::ArrayRef.617", align 8 ; 4 uses
  %86 = alloca %"class.mlir::Value", align 8      ; 4 uses
  %87 = alloca %"class.mlir::TypeRange", align 8  ; 5 uses
  %88 = alloca %"class.llvm::ArrayRef.617", align 8 ; 4 uses
  %89 = alloca %"class.mlir::ValueRange", align 8 ; 5 uses
  %90 = alloca %"class.llvm::ArrayRef.812", align 8 ; 4 uses
  %91 = alloca %"class.mlir::TypeRange", align 8  ; 5 uses
  %92 = alloca %"class.llvm::ArrayRef.617", align 8 ; 4 uses
  %93 = alloca %"class.mlir::TypeRange", align 8  ; 5 uses
  %94 = alloca %"class.llvm::ArrayRef.617", align 8 ; 4 uses
  %95 = alloca %"class.mlir::ValueRange", align 8 ; 5 uses
  %96 = alloca %"class.llvm::ArrayRef.812", align 8 ; 4 uses
  %97 = alloca %"class.mlir::TypeRange", align 8  ; 5 uses
  %98 = alloca %"class.llvm::ArrayRef.617", align 8 ; 4 uses
  %99 = alloca %"class.mlir::TypeRange", align 8  ; 5 uses
  %100 = alloca %"class.llvm::ArrayRef.617", align 8 ; 4 uses
  %101 = alloca %"class.mlir::TypeRange", align 8 ; 5 uses
  %102 = alloca %"class.llvm::ArrayRef.617", align 8 ; 4 uses
  %103 = alloca %"class.mlir::ValueRange", align 8 ; 5 uses
  %104 = alloca %"class.llvm::ArrayRef.812", align 8 ; 4 uses
  %105 = alloca %"class.mlir::TypeRange", align 8 ; 5 uses
  %106 = alloca %"class.llvm::ArrayRef.617", align 8 ; 4 uses
  %107 = alloca %"class.mlir::ValueRange", align 8 ; 5 uses
  %108 = alloca %"class.llvm::ArrayRef.812", align 8 ; 4 uses
  %109 = alloca %"class.mlir::TypeRange", align 8 ; 5 uses
  %110 = alloca [3 x %"class.mlir::Type"], align 8 ; 6 uses
  %111 = alloca %"class.llvm::ArrayRef.617", align 8 ; 5 uses
  %112 = alloca [3 x %"class.mlir::Location"], align 8 ; 6 uses
  %113 = alloca %"class.mlir::ValueRange", align 8 ; 5 uses
  %114 = alloca [3 x %"class.mlir::Value"], align 8 ; 6 uses
  %115 = alloca %"class.llvm::ArrayRef.812", align 8 ; 4 uses
  %116 = alloca %"class.mlir::Value", align 8     ; 4 uses
  %117 = alloca %"class.mlir::TypeRange", align 8 ; 5 uses
  %118 = alloca %"class.llvm::ArrayRef.617", align 8 ; 4 uses
  %119 = alloca %"class.mlir::Value", align 8     ; 6 uses
  %120 = alloca %"class.mlir::TypeRange", align 8 ; 5 uses
  %121 = alloca %"class.llvm::ArrayRef.617", align 8 ; 5 uses
  %122 = alloca %"class.mlir::Location", align 8  ; 4 uses
  %123 = alloca %"class.llvm::ArrayRef.812", align 8 ; 4 uses
  %124 = alloca %"class.mlir::TypeRange", align 8 ; 5 uses
  %125 = alloca %"class.llvm::ArrayRef.617", align 8 ; 4 uses
  %126 = alloca %"class.mlir::TypeRange", align 8 ; 5 uses
  %127 = alloca %"class.llvm::ArrayRef.617", align 8 ; 4 uses
  %128 = alloca %"class.mlir::ValueRange", align 8 ; 5 uses
  %129 = alloca %"class.llvm::ArrayRef.812", align 8 ; 4 uses
  %130 = alloca %"class.mlir::ValueRange", align 8 ; 5 uses
  %131 = alloca [3 x %"class.mlir::Value"], align 8 ; 6 uses
  %132 = alloca %"struct.std::pair.301", align 8  ; 5 uses
  %133 = alloca %"class.mlir::func::FuncOp", align 8 ; 4 uses
  %134 = alloca %"class.llvm::Twine", align 8     ; 7 uses
  %135 = alloca %"class.mlir::Type", align 8      ; 4 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %136 = alloca %"class.mlir::func::FuncOp", align 8 ; 8 uses
  %137 = alloca %"class.mlir::Type", align 8      ; 12 uses
  %138 = alloca %"class.mlir::ImplicitLocOpBuilder", align 8 ; 18 uses
  %139 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %140 = alloca %"class.llvm::raw_string_ostream", align 8 ; 14 uses
  %141 = alloca %"class.mlir::TypeRange", align 8 ; 5 uses
  %142 = alloca [1 x %"class.mlir::Type"], align 8 ; 4 uses
  %143 = alloca %"class.mlir::TypeRange", align 8 ; 5 uses
  %144 = alloca %"class.llvm::ArrayRef.365", align 8 ; 4 uses
  %145 = alloca %"class.mlir::Value", align 8     ; 4 uses
  %146 = alloca %"class.mlir::Value", align 8     ; 4 uses
  %147 = alloca %"class.mlir::scf::IfOp", align 8 ; 6 uses
  %148 = alloca %"class.mlir::TypeRange", align 8 ; 5 uses
  %149 = alloca %"class.mlir::OpBuilder", align 8 ; 4 uses
  %150 = alloca %"class.mlir::ImplicitLocOpBuilder", align 8 ; 17 uses
  %151 = alloca %"class.mlir::Value", align 8     ; 4 uses
  %152 = alloca %"class.mlir::ValueRange", align 8 ; 5 uses
  %153 = alloca [2 x %"class.mlir::Value"], align 8 ; 5 uses
  %154 = alloca %"class.llvm::function_ref.556", align 8 ; 5 uses
  %155 = alloca %class.anon.558, align 8          ; 5 uses
  %156 = alloca %"class.mlir::Value", align 8     ; 4 uses
  %157 = alloca %"class.mlir::Value", align 8     ; 4 uses
  %158 = alloca %"struct.std::pair.301", align 8  ; 5 uses
  %159 = alloca %"class.mlir::func::FuncOp", align 8 ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !48     ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !503, !nonnull !70, !align !77 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !79
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !81   ; 3 uses
  %i.j = icmp ne ptr %i.i, @_ZN4mlir6detail14TypeIDResolverINS_4math19CountLeadingZerosOpEvE2idE
  %160 = icmp eq ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_4math19CountLeadingZerosOpEvE2idE
  %spec.select.i.i.i.i.i.not.i.i = or i1 %160, %i.j
  %.not4.i.i = icmp eq ptr %1, null
  %.not.i.i = or i1 %.not4.i.i, %spec.select.i.i.i.i.i.not.i.i
  br i1 %.not.i.i, label %bb.am, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 656
  %i.l = load i8, ptr %i.k, align 8, !tbaa !68, !range !69, !noundef !70
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.c, label %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationEvEES5_E4CaseIZZN12_GLOBAL__N_122ConvertMathToFuncsPass25generateOpImplementationsEvENK3$_0clES5_EUlNS3_4math7FPowIOpEE_EERS6_OT_.exit"

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds i8, ptr %1, i64 -8
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.n, align 8
  %i.o = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -8
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = tail call ptr @_ZN4mlir20getElementTypeOrSelfENS_4TypeE(ptr %i.p) #25
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !149
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i3.i.i = load ptr, ptr %i.s, align 8, !tbaa !19
  %i.t = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i3.i.i, @_ZN4mlir6detail14TypeIDResolverINS_11IntegerTypeEvE2idE
  br i1 %i.t, label %bb.d, label %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationEvEES5_E4CaseIZZN12_GLOBAL__N_122ConvertMathToFuncsPass25generateOpImplementationsEvENK3$_0clES5_EUlNS3_4math7FPowIOpEE_EERS6_OT_.exit"

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds i8, ptr %1, i64 -16
  %i.v = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 noundef 0) #25
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.w, align 8
  %i.x = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -8
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = tail call ptr @_ZN4mlir20getElementTypeOrSelfENS_4TypeE(ptr %i.y) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %158) #25
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !79
  %i.aa = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i to i64
  store i64 %i.aa, ptr %158, align 8, !tbaa !79
  %i.ab = getelementptr inbounds nuw i8, ptr %158, i64 8
  %i.ac = ptrtoint ptr %i.z to i64
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !151
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 736
  call void @llvm.lifetime.start.p0(ptr nonnull %159) #25
  store ptr null, ptr %159, align 8, !tbaa !152
  %i.ae = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIN4mlir13OperationNameENS3_4TypeEENS3_4func6FuncOpENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E24lookupOrInsertIntoBucketIRKS6_JS8_EEES2_IPSD_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %158, ptr noundef nonnull align 8 dereferenceable(8) %159), !noalias !504 ; 2 uses
  %.fca.0.extract.i.i.i.i.i = extractvalue { ptr, i8 } %i.ae, 0
  %.fca.1.extract.i.i.i.i.i = extractvalue { ptr, i8 } %i.ae, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %159) #25
  %i.af = trunc nuw i8 %.fca.1.extract.i.i.i.i.i to i1
  br i1 %i.af, label %bb.e, label %bb.al

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %136)
  call void @llvm.lifetime.start.p0(ptr nonnull %137)
  call void @llvm.lifetime.start.p0(ptr nonnull %141)
  call void @llvm.lifetime.start.p0(ptr nonnull %143)
  call void @llvm.lifetime.start.p0(ptr nonnull %144)
  call void @llvm.lifetime.start.p0(ptr nonnull %148)
  call void @llvm.lifetime.start.p0(ptr nonnull %152)
  call void @llvm.lifetime.start.p0(ptr nonnull %154)
  store ptr %i.z, ptr %137, align 8
  %i.ag = load ptr, ptr %i.z, align 8, !tbaa !149
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i3.i.i.i = load ptr, ptr %i.ah, align 8, !tbaa !19
  %i.ai = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i3.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_11IntegerTypeEvE2idE
  call void @llvm.assume(i1 %i.ai)
  %i.aj = call noundef i32 @_ZNK4mlir4Type21getIntOrFloatBitWidthEv(ptr noundef nonnull align 8 dereferenceable(8) %137) #25
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = load ptr, ptr %i.f, align 8, !tbaa !152 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.am, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %138) #25
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 44
  %i.ao = load i32, ptr %i.an, align 4            ; 3 uses
  %i.ap = and i32 %i.ao, 8388607
  %i.aq = icmp ne i32 %i.ap, 0
  call void @llvm.assume(i1 %i.aq)
  %i.ar = lshr i32 %i.ao, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.ar, 1
  %i.as = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %i.as
  %i.au = lshr i32 %i.ao, 21
  %i.av = and i32 %i.au, 2040
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !166
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [32 x i8], ptr %i.ax, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 72
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !146 ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !505)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bg = call noundef ptr @_ZNK4mlir5Block9getParentEv(ptr noundef nonnull align 8 dereferenceable(80) %i.be) #25, !noalias !505
  %i.bh = call noundef ptr @_ZN4mlir6Region10getContextEv(ptr noundef nonnull align 8 dereferenceable(28) %i.bg) #25, !noalias !505
  store ptr %i.bh, ptr %138, align 8, !tbaa !168, !alias.scope !505
  %i.bi = getelementptr inbounds nuw i8, ptr %138, i64 8
  store ptr null, ptr %i.bi, align 8, !tbaa !173, !alias.scope !505
  %i.bj = getelementptr inbounds nuw i8, ptr %138, i64 16 ; 2 uses
  store ptr %i.be, ptr %i.bj, align 8, !tbaa !174, !alias.scope !505
  %i.bk = getelementptr inbounds nuw i8, ptr %138, i64 24 ; 2 uses
  store ptr %i.bf, ptr %i.bk, align 8, !alias.scope !505
  %i.bl = getelementptr inbounds nuw i8, ptr %138, i64 32
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i, ptr %i.bl, align 8, !alias.scope !505
  call void @llvm.lifetime.start.p0(ptr nonnull %139) #25
  %i.bm = getelementptr inbounds nuw i8, ptr %139, i64 16 ; 4 uses
  store ptr %i.bm, ptr %139, align 8, !tbaa !507
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i64 16, ptr %i.c, align 8, !tbaa !28
  %i.bn = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %139, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) #25 ; 2 uses
  store ptr %i.bn, ptr %139, align 8, !tbaa !509
  %i.bo = load i64, ptr %i.c, align 8, !tbaa !28  ; 3 uses
  store i64 %i.bo, ptr %i.bm, align 8, !tbaa !107
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bn, ptr noundef nonnull align 1 dereferenceable(16) @.str.19, i64 16, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %139, i64 8 ; 2 uses
  store i64 %i.bo, ptr %i.bp, align 8, !tbaa !510
  %i.bq = load ptr, ptr %139, align 8, !tbaa !509
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bo
  store i8 0, ptr %i.br, align 1, !tbaa !107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %140) #25
  %i.bs = getelementptr inbounds nuw i8, ptr %140, i64 8
  store i32 0, ptr %i.bs, align 8, !tbaa !511
  %i.bt = getelementptr inbounds nuw i8, ptr %140, i64 40
  store i8 0, ptr %i.bt, align 8, !tbaa !512
  %i.bu = getelementptr inbounds nuw i8, ptr %140, i64 44
  store i32 1, ptr %i.bu, align 4, !tbaa !513
  %i.bv = getelementptr inbounds nuw i8, ptr %140, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %140, align 8, !tbaa !24
  %i.bw = getelementptr inbounds nuw i8, ptr %140, i64 48
  store ptr %139, ptr %i.bw, align 8, !tbaa !515
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %140, ptr noundef null, i64 noundef 0, i32 noundef 0) #25
  %i.bx = getelementptr inbounds nuw i8, ptr %140, i64 32 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !113 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %140, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !112
  %.not.i.i.i.i.i = icmp ult ptr %i.by, %i.ca
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cb = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %140, i8 noundef zeroext 95) #25
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  store ptr %i.cc, ptr %i.bx, align 8, !tbaa !113
  store i8 95, ptr %i.by, align 1, !tbaa !107
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i.i.i.i

_ZN4llvm11raw_ostreamlsEc.exit.i.i.i.i:           ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi ptr [ %i.cb, %bb.f ], [ %140, %bb.g ]
  %.sroa.041.0.copyload.i.i.i.i = load ptr, ptr %137, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %135)
  store ptr %.sroa.041.0.copyload.i.i.i.i, ptr %135, align 8
  call void @_ZNK4mlir4Type5printERN4llvm11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(8) %135, ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i.i.i) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %135)
  %i.cd = load ptr, ptr %138, align 8, !tbaa !168
  call void @llvm.lifetime.start.p0(ptr nonnull %142) #25
  %i.ce = load i64, ptr %137, align 8, !tbaa !151
  store i64 %i.ce, ptr %142, align 8, !tbaa !151
  call void @_ZN4mlir9TypeRangeC2EN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(16) %141, ptr nonnull %142, i64 1) #25
  call void @_ZN4mlir9TypeRangeC2EN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(16) %143, ptr nonnull align 8 dereferenceable(8) %137, i64 1) #25
  %i.cf = load i64, ptr %141, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %141, i64 8
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = load i64, ptr %143, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %143, i64 8
  %i.ck = load i64, ptr %i.cj, align 8
  %i.cl = call ptr @_ZN4mlir12FunctionType3getEPNS_11MLIRContextENS_9TypeRangeES3_(ptr noundef %i.cd, i64 %i.cf, i64 %i.ch, i64 %i.ci, i64 %i.ck) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %142) #25
  %i.cm = load ptr, ptr %139, align 8, !tbaa !509
  %i.cn = load i64, ptr %i.bp, align 8, !tbaa !510
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %144, i8 0, i64 16, i1 false)
  %i.co = call ptr @_ZN4mlir4func6FuncOp6createERNS_20ImplicitLocOpBuilderEN4llvm9StringRefENS_12FunctionTypeENS4_8ArrayRefINS_14NamedAttributeEEENS7_INS_14DictionaryAttrEEE(ptr noundef nonnull align 8 dereferenceable(40) %138, ptr %i.cm, i64 %i.cn, ptr %i.cl, ptr null, i64 0, ptr noundef nonnull byval(%"class.llvm::ArrayRef.365") align 8 %144) #25
  store ptr %i.co, ptr %136, align 8
  %i.cp = load ptr, ptr %138, align 8, !tbaa !168
  %i.cq = call ptr @_ZN4mlir4LLVM11LinkageAttr3getEPNS_11MLIRContextENS0_7linkage7LinkageE(ptr noundef %i.cp, i64 noundef 3) #25
  %i.cr = load ptr, ptr %136, align 8, !tbaa !152 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.ct = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cs) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %134) #25
  %i.cu = getelementptr inbounds nuw i8, ptr %134, i64 32
  store i8 5, ptr %i.cu, align 8, !tbaa !177
  %i.cv = getelementptr inbounds nuw i8, ptr %134, i64 33
  store i8 1, ptr %i.cv, align 1, !tbaa !178
  store ptr @.str.20, ptr %134, align 8, !tbaa !107
  %i.cw = getelementptr inbounds nuw i8, ptr %134, i64 8
  store i64 12, ptr %i.cw, align 8, !tbaa !107
  %i.cx = call ptr @_ZN4mlir10StringAttr3getEPNS_11MLIRContextERKN4llvm5TwineE(ptr noundef %i.ct, ptr noundef nonnull align 8 dereferenceable(34) %134) #25
  call void @_ZN4mlir9Operation7setAttrENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(64) %i.cr, ptr %i.cx, ptr %i.cq)
  call void @llvm.lifetime.end.p0(ptr nonnull %134) #25
  %i.cy = load ptr, ptr %136, align 8, !tbaa !152
  call void @_ZN4mlir11SymbolTable19setSymbolVisibilityEPNS_9OperationENS0_10VisibilityE(ptr noundef %i.cy, i32 noundef 1) #25
  %i.cz = call noundef ptr @_ZN4mlir6detail24FunctionOpInterfaceTraitINS_4func6FuncOpEE13addEntryBlockEv(ptr noundef nonnull align 1 dereferenceable(1) %136) ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 48
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !146
  store ptr %i.cz, ptr %i.bj, align 8, !tbaa !174
  store ptr %i.db, ptr %i.bk, align 8
  %i.dc = load ptr, ptr %136, align 8, !tbaa !152 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 44
  %i.de = load i32, ptr %i.dd, align 4            ; 3 uses
  %i.df = and i32 %i.de, 8388607
  %i.dg = icmp ne i32 %i.df, 0
  call void @llvm.assume(i1 %i.dg)
end_hunk_0
begin_hunk_1_@"_ZZN12_GLOBAL__N_122ConvertMathToFuncsPass25generateOpImplementationsEvENK3$_0clEPN4mlir9OperationE":bb.a
  %i.jn = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id) #25
  %.not.i.i.i.i.i.i.i.i.i130.i.i.i.i = icmp eq i32 %i.jn, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i130.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i114.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.jo = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.22, i64 49), i64 15) #25
  store ptr %i.jo, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id) #25
  br label %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i114.i.i.i.i

_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i114.i.i.i.i: ; preds = %bb.ad, %bb.ac, %bb.ab
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i115.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id, align 8, !tbaa !19 ; 2 uses
  %i.jp = load ptr, ptr %i.jk, align 8, !tbaa !21 ; 3 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  %i.jr = load i32, ptr %i.jq, align 8, !tbaa !37 ; 2 uses
  %.not.i.i.i.i.i.i.i.i116.i.i.i.i = icmp eq i32 %i.jr, 0
  br i1 %.not.i.i.i.i.i.i.i.i116.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i126.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i117.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i117.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i114.i.i.i.i
  %i.js = zext i32 %i.jr to i64                   ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i118.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i118.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i118.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i117.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i119.i.i.i.i = phi i64 [ %i.js, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i117.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i125.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i118.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i120.i.i.i.i = phi ptr [ %i.jp, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i117.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i124.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i118.i.i.i.i ] ; 2 uses
  %i.jt = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i119.i.i.i.i, 1 ; 3 uses
  %i.ju = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i120.i.i.i.i, i64 %i.jt ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i123.i.i.i.i = load ptr, ptr %i.ju, align 8, !tbaa !19
  %i.jv = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i123.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i115.i.i.i.i ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  %i.jx = xor i64 %i.jt, -1
  %i.jy = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i119.i.i.i.i, %i.jx
  %.112.i.i.i.i.i.i.i.i.i.i124.i.i.i.i = select i1 %i.jv, ptr %i.jw, ptr %.01116.i.i.i.i.i.i.i.i.i.i120.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i125.i.i.i.i = select i1 %i.jv, i64 %i.jy, i64 %i.jt ; 2 uses
  %i.jz = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i125.i.i.i.i, 0
  br i1 %i.jz, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i118.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i126.i.i.i.i, !llvm.loop !2

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i126.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i118.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i114.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i127.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i114.i.i.i.i ], [ %i.js, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i118.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i128.i.i.i.i = phi ptr [ %i.jp, %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i114.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i124.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i118.i.i.i.i ] ; 3 uses
  %i.ka = getelementptr inbounds nuw [16 x i8], ptr %i.jp, i64 %.pre-phi.i.i.i.i.i.i.i127.i.i.i.i
  %.not.i.i.i.i.i.i.i129.i.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i128.i.i.i.i, %i.ka
  br i1 %.not.i.i.i.i.i.i.i129.i.i.i.i, label %_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit131.i.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i126.i.i.i.i
  %i.kb = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i128.i.i.i.i, align 8, !tbaa !81
  %i.kc = icmp eq ptr %i.kb, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i115.i.i.i.i
  br i1 %i.kc, label %bb.af, label %_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit131.i.i.i.i

bb.af:                                            ; preds = %bb.ae
  %i.kd = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i128.i.i.i.i, i64 8
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !187
  br label %_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit131.i.i.i.i

_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit131.i.i.i.i: ; preds = %bb.af, %bb.ae, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i126.i.i.i.i, %_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit111.i.i.i.i
  %i.kf = phi ptr [ null, %_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit111.i.i.i.i ], [ %i.ke, %bb.af ], [ null, %bb.ae ], [ null, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i126.i.i.i.i ]
  %i.kg = call ptr @_ZN4mlir5arith10ConstantOp6createERNS_20ImplicitLocOpBuilderENS_4TypeENS_9TypedAttrE(ptr noundef nonnull align 8 dereferenceable(40) %150, ptr %i.dz, ptr %i.ji, ptr %i.kf) #25
  %i.kh = getelementptr inbounds i8, ptr %i.kg, i64 -16
  %.sroa.07.0.copyload.i.i.i.i = load ptr, ptr %137, align 8, !tbaa !151 ; 2 uses
  %i.ki = call ptr @_ZN4mlir7Builder14getIntegerAttrENS_4TypeEl(ptr noundef nonnull align 8 dereferenceable(8) %150, ptr %.sroa.07.0.copyload.i.i.i.i, i64 noundef 0) #25 ; 3 uses
  %.not.i.i.i133.i.i.i.i = icmp eq ptr %i.ki, null
  br i1 %.not.i.i.i133.i.i.i.i, label %_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit151.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit131.i.i.i.i
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !184 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  %i.kl = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id acquire, align 8
  %i.km = icmp eq i8 %i.kl, 0
  br i1 %i.km, label %bb.ah, label %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i134.i.i.i.i, !prof !185

bb.ah:                                            ; preds = %bb.ag
  %i.kn = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id) #25
  %.not.i.i.i.i.i.i.i.i.i150.i.i.i.i = icmp eq i32 %i.kn, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i150.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i134.i.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ko = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.22, i64 49), i64 15) #25
  store ptr %i.ko, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id) #25
  br label %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i134.i.i.i.i

_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i134.i.i.i.i: ; preds = %bb.ai, %bb.ah, %bb.ag
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i135.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id, align 8, !tbaa !19 ; 2 uses
  %i.kp = load ptr, ptr %i.kk, align 8, !tbaa !21 ; 3 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kj, i64 16
  %i.kr = load i32, ptr %i.kq, align 8, !tbaa !37 ; 2 uses
  %.not.i.i.i.i.i.i.i.i136.i.i.i.i = icmp eq i32 %i.kr, 0
  br i1 %.not.i.i.i.i.i.i.i.i136.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i146.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i137.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i137.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i134.i.i.i.i
  %i.ks = zext i32 %i.kr to i64                   ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i138.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i138.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i138.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i137.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i139.i.i.i.i = phi i64 [ %i.ks, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i137.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i145.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i138.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i140.i.i.i.i = phi ptr [ %i.kp, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i137.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i144.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i138.i.i.i.i ] ; 2 uses
  %i.kt = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i139.i.i.i.i, 1 ; 3 uses
  %i.ku = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i140.i.i.i.i, i64 %i.kt ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i143.i.i.i.i = load ptr, ptr %i.ku, align 8, !tbaa !19
  %i.kv = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i143.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i135.i.i.i.i ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ku, i64 16
  %i.kx = xor i64 %i.kt, -1
  %i.ky = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i139.i.i.i.i, %i.kx
  %.112.i.i.i.i.i.i.i.i.i.i144.i.i.i.i = select i1 %i.kv, ptr %i.kw, ptr %.01116.i.i.i.i.i.i.i.i.i.i140.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i145.i.i.i.i = select i1 %i.kv, i64 %i.ky, i64 %i.kt ; 2 uses
  %i.kz = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i145.i.i.i.i, 0
  br i1 %i.kz, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i138.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i146.i.i.i.i, !llvm.loop !2

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i146.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i138.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i134.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i147.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i134.i.i.i.i ], [ %i.ks, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i138.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i148.i.i.i.i = phi ptr [ %i.kp, %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i134.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i144.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i138.i.i.i.i ] ; 3 uses
  %i.la = getelementptr inbounds nuw [16 x i8], ptr %i.kp, i64 %.pre-phi.i.i.i.i.i.i.i147.i.i.i.i
  %.not.i.i.i.i.i.i.i149.i.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i148.i.i.i.i, %i.la
  br i1 %.not.i.i.i.i.i.i.i149.i.i.i.i, label %_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit151.i.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i146.i.i.i.i
  %i.lb = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i148.i.i.i.i, align 8, !tbaa !81
  %i.lc = icmp eq ptr %i.lb, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i135.i.i.i.i
  br i1 %i.lc, label %bb.ak, label %_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit151.i.i.i.i

bb.ak:                                            ; preds = %bb.aj
  %i.ld = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i148.i.i.i.i, i64 8
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !187
  br label %_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit151.i.i.i.i

_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit151.i.i.i.i: ; preds = %bb.ak, %bb.aj, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i146.i.i.i.i, %_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit131.i.i.i.i
  %i.lf = phi ptr [ null, %_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit131.i.i.i.i ], [ %i.le, %bb.ak ], [ null, %bb.aj ], [ null, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i146.i.i.i.i ]
  %i.lg = call ptr @_ZN4mlir5arith10ConstantOp6createERNS_20ImplicitLocOpBuilderENS_4TypeENS_9TypedAttrE(ptr noundef nonnull align 8 dereferenceable(40) %150, ptr %.sroa.07.0.copyload.i.i.i.i, ptr %i.ki, ptr %i.lf) #25
  %i.lh = getelementptr inbounds i8, ptr %i.lg, i64 -16
  call void @llvm.lifetime.start.p0(ptr nonnull %153) #25
  store ptr %.sroa.0.0.copyload.i.i50.i.i.i.i, ptr %153, align 8, !tbaa !189
  %i.li = getelementptr inbounds nuw i8, ptr %153, i64 8
  store ptr %i.lh, ptr %i.li, align 8, !tbaa !189
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %152, ptr nonnull %153, i64 2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %155) #25
  store ptr %146, ptr %155, align 8, !tbaa !191
  %i.lj = getelementptr inbounds nuw i8, ptr %155, i64 8
  store ptr %151, ptr %i.lj, align 8, !tbaa !191
  store ptr @"_ZN4llvm12function_refIFvRN4mlir9OpBuilderENS1_8LocationENS1_5ValueENS1_10ValueRangeEEE11callback_fnIZL14createCtlzFuncPNS1_8ModuleOpENS1_4TypeEE3$_0EEvlS3_S4_S5_S6_", ptr %154, align 8, !tbaa !519
  %i.lk = getelementptr inbounds nuw i8, ptr %154, i64 8
  %i.ll = ptrtoint ptr %155 to i64
  store i64 %i.ll, ptr %i.lk, align 8, !tbaa !520
  %i.lm = load i64, ptr %152, align 8
  %i.ln = getelementptr inbounds nuw i8, ptr %152, i64 8
  %i.lo = load i64, ptr %i.ln, align 8
  %i.lp = call ptr @_ZN4mlir3scf5ForOp6createERNS_20ImplicitLocOpBuilderENS_5ValueES4_S4_NS_10ValueRangeEN4llvm12function_refIFvRNS_9OpBuilderENS_8LocationES4_S5_EEEb(ptr noundef nonnull align 8 dereferenceable(40) %150, ptr nonnull %i.ih, ptr nonnull %i.kh, ptr nonnull %i.ih, i64 %i.lm, i64 %i.lo, ptr noundef nonnull byval(%"class.llvm::function_ref.556") align 8 %154, i1 noundef zeroext false) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %155) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %153) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %156) #25
  %i.lq = getelementptr inbounds i8, ptr %i.lp, i64 -32
  store ptr %i.lq, ptr %156, align 8
  %i.lr = ptrtoint ptr %156 to i64
  %i.ls = call ptr @_ZN4mlir3scf7YieldOp6createERNS_20ImplicitLocOpBuilderENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(40) %150, i64 %i.lr, i64 1) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %156) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %157) #25
  %i.lt = load ptr, ptr %147, align 8, !tbaa !152
  %i.lu = getelementptr inbounds i8, ptr %i.lt, i64 -16
  store ptr %i.lu, ptr %157, align 8
  %i.lv = ptrtoint ptr %157 to i64
  %i.lw = call ptr @_ZN4mlir4func8ReturnOp6createERNS_20ImplicitLocOpBuilderENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(40) %138, i64 %i.lv, i64 1) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %157) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %151) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %150) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %149) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %147) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %146) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %145) #25
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %140) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %140) #25
  %i.lx = load ptr, ptr %139, align 8, !tbaa !509 ; 2 uses
  %i.ly = icmp eq ptr %i.lx, %i.bm
  br i1 %i.ly, label %_ZL14createCtlzFuncPN4mlir8ModuleOpENS_4TypeE.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit151.i.i.i.i
  %i.lz = load i64, ptr %i.bm, align 8, !tbaa !107
  %i.ma = add i64 %i.lz, 1
  call void @_ZdlPvm(ptr noundef %i.lx, i64 noundef %i.ma) #26
  br label %_ZL14createCtlzFuncPN4mlir8ModuleOpENS_4TypeE.exit.i.i.i

_ZL14createCtlzFuncPN4mlir8ModuleOpENS_4TypeE.exit.i.i.i: ; preds = %_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit151.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %139) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %138) #25
  %i.mb = load ptr, ptr %136, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %136)
  call void @llvm.lifetime.end.p0(ptr nonnull %137)
  call void @llvm.lifetime.end.p0(ptr nonnull %141)
  call void @llvm.lifetime.end.p0(ptr nonnull %143)
  call void @llvm.lifetime.end.p0(ptr nonnull %144)
  call void @llvm.lifetime.end.p0(ptr nonnull %148)
  call void @llvm.lifetime.end.p0(ptr nonnull %152)
  call void @llvm.lifetime.end.p0(ptr nonnull %154)
  %i.mc = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i.i.i, i64 16
  store ptr %i.mb, ptr %i.mc, align 8
  br label %bb.al

bb.al:                                            ; preds = %_ZL14createCtlzFuncPN4mlir8ModuleOpENS_4TypeE.exit.i.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %158) #25
  br label %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationEvEES5_E4CaseIZZN12_GLOBAL__N_122ConvertMathToFuncsPass25generateOpImplementationsEvENK3$_0clES5_EUlNS3_4math7FPowIOpEE_EERS6_OT_.exit"

bb.am:                                            ; preds = %bb.a
  %161 = icmp ne ptr %i.i, @_ZN4mlir6detail14TypeIDResolverINS_4math7IPowIOpEvE2idE
  %.not = icmp eq ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_4math7IPowIOpEvE2idE
  %spec.select.i.i.i.i.i.not.i.i7 = or i1 %.not, %161
  br i1 %spec.select.i.i.i.i.i.not.i.i7, label %bb.bm, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.md = getelementptr inbounds i8, ptr %1, i64 -8
  %.0.copyload.i.i.i.i.i.i.i.i.i8 = load i64, ptr %i.md, align 8
  %i.me = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i8, -8
  %i.mf = inttoptr i64 %i.me to ptr
  %i.mg = tail call ptr @_ZN4mlir20getElementTypeOrSelfENS_4TypeE(ptr %i.mf) #25
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !149
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i3.i.i9 = load ptr, ptr %i.mi, align 8, !tbaa !19
  %i.mj = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i3.i.i9, @_ZN4mlir6detail14TypeIDResolverINS_11IntegerTypeEvE2idE
  br i1 %i.mj, label %bb.ao, label %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationEvEES5_E4CaseIZZN12_GLOBAL__N_122ConvertMathToFuncsPass25generateOpImplementationsEvENK3$_0clES5_EUlNS3_4math7FPowIOpEE_EERS6_OT_.exit"

bb.ao:                                            ; preds = %bb.an
  %i.mk = getelementptr inbounds i8, ptr %1, i64 -16
  %i.ml = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.mk, i64 noundef 0) #25
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i10 = load i64, ptr %i.mm, align 8
  %i.mn = and i64 %.0.copyload.i.i.i.i.i.i.i.i10, -8
  %i.mo = inttoptr i64 %i.mn to ptr
  %i.mp = tail call ptr @_ZN4mlir20getElementTypeOrSelfENS_4TypeE(ptr %i.mo) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %132) #25
  %.sroa.0.0.copyload.i.i.i.i11 = load ptr, ptr %i.g, align 8, !tbaa !79
  %i.mq = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i11 to i64
  store i64 %i.mq, ptr %132, align 8, !tbaa !79
  %i.mr = getelementptr inbounds nuw i8, ptr %132, i64 8
  %i.ms = ptrtoint ptr %i.mp to i64
  store i64 %i.ms, ptr %i.mr, align 8, !tbaa !151
  %i.mt = getelementptr inbounds nuw i8, ptr %i.d, i64 736
  call void @llvm.lifetime.start.p0(ptr nonnull %133) #25
  store ptr null, ptr %133, align 8, !tbaa !152
  %i.mu = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIN4mlir13OperationNameENS3_4TypeEENS3_4func6FuncOpENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E24lookupOrInsertIntoBucketIRKS6_JS8_EEES2_IPSD_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.mt, ptr noundef nonnull align 8 dereferenceable(16) %132, ptr noundef nonnull align 8 dereferenceable(8) %133), !noalias !521 ; 2 uses
  %.fca.0.extract.i.i.i.i.i12 = extractvalue { ptr, i8 } %i.mu, 0
  %.fca.1.extract.i.i.i.i.i13 = extractvalue { ptr, i8 } %i.mu, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %133) #25
  %i.mv = trunc nuw i8 %.fca.1.extract.i.i.i.i.i13 to i1
  br i1 %i.mv, label %bb.ap, label %bb.bl

bb.ap:                                            ; preds = %bb.ao
  %.val.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !152 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %63)
  call void @llvm.lifetime.start.p0(ptr nonnull %64)
  call void @llvm.lifetime.start.p0(ptr nonnull %68)
  call void @llvm.lifetime.start.p0(ptr nonnull %70)
  call void @llvm.lifetime.start.p0(ptr nonnull %71)
  call void @llvm.lifetime.start.p0(ptr nonnull %76)
  call void @llvm.lifetime.start.p0(ptr nonnull %77)
  call void @llvm.lifetime.start.p0(ptr nonnull %78)
  call void @llvm.lifetime.start.p0(ptr nonnull %79)
  call void @llvm.lifetime.start.p0(ptr nonnull %80)
  call void @llvm.lifetime.start.p0(ptr nonnull %81)
  call void @llvm.lifetime.start.p0(ptr nonnull %82)
  call void @llvm.lifetime.start.p0(ptr nonnull %83)
  call void @llvm.lifetime.start.p0(ptr nonnull %84)
  call void @llvm.lifetime.start.p0(ptr nonnull %85)
  call void @llvm.lifetime.start.p0(ptr nonnull %87)
  call void @llvm.lifetime.start.p0(ptr nonnull %88)
  call void @llvm.lifetime.start.p0(ptr nonnull %89)
  call void @llvm.lifetime.start.p0(ptr nonnull %90)
  call void @llvm.lifetime.start.p0(ptr nonnull %91)
  call void @llvm.lifetime.start.p0(ptr nonnull %92)
  call void @llvm.lifetime.start.p0(ptr nonnull %93)
  call void @llvm.lifetime.start.p0(ptr nonnull %94)
  call void @llvm.lifetime.start.p0(ptr nonnull %95)
  call void @llvm.lifetime.start.p0(ptr nonnull %96)
  call void @llvm.lifetime.start.p0(ptr nonnull %97)
  call void @llvm.lifetime.start.p0(ptr nonnull %98)
  call void @llvm.lifetime.start.p0(ptr nonnull %99)
  call void @llvm.lifetime.start.p0(ptr nonnull %100)
  call void @llvm.lifetime.start.p0(ptr nonnull %101)
  call void @llvm.lifetime.start.p0(ptr nonnull %102)
  call void @llvm.lifetime.start.p0(ptr nonnull %103)
  call void @llvm.lifetime.start.p0(ptr nonnull %104)
  call void @llvm.lifetime.start.p0(ptr nonnull %105)
  call void @llvm.lifetime.start.p0(ptr nonnull %106)
  call void @llvm.lifetime.start.p0(ptr nonnull %107)
  call void @llvm.lifetime.start.p0(ptr nonnull %108)
  call void @llvm.lifetime.start.p0(ptr nonnull %109)
  call void @llvm.lifetime.start.p0(ptr nonnull %111)
  call void @llvm.lifetime.start.p0(ptr nonnull %113)
  call void @llvm.lifetime.start.p0(ptr nonnull %115)
  call void @llvm.lifetime.start.p0(ptr nonnull %117)
  call void @llvm.lifetime.start.p0(ptr nonnull %118)
  call void @llvm.lifetime.start.p0(ptr nonnull %120)
  call void @llvm.lifetime.start.p0(ptr nonnull %121)
  call void @llvm.lifetime.start.p0(ptr nonnull %123)
  call void @llvm.lifetime.start.p0(ptr nonnull %124)
  call void @llvm.lifetime.start.p0(ptr nonnull %125)
  call void @llvm.lifetime.start.p0(ptr nonnull %126)
  call void @llvm.lifetime.start.p0(ptr nonnull %127)
  call void @llvm.lifetime.start.p0(ptr nonnull %128)
  call void @llvm.lifetime.start.p0(ptr nonnull %129)
  call void @llvm.lifetime.start.p0(ptr nonnull %130)
  store ptr %i.mp, ptr %64, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #25
  %i.mw = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i14 = load ptr, ptr %i.mw, align 8
  %i.mx = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 44
  %i.my = load i32, ptr %i.mx, align 4            ; 3 uses
  %i.mz = and i32 %i.my, 8388607
  %i.na = icmp ne i32 %i.mz, 0
  call void @llvm.assume(i1 %i.na)
  %i.nb = lshr i32 %i.my, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i15 = and i32 %i.nb, 1
  %i.nc = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i15 to i64
  %i.nd = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i, i64 %i.nc
  %i.ne = lshr i32 %i.my, 21
  %i.nf = and i32 %i.ne, 2040
  %i.ng = zext nneg i32 %i.nf to i64
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nd, i64 %i.ng
  %i.ni = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 40
  %i.nj = load i32, ptr %i.ni, align 8, !tbaa !166
  %i.nk = zext i32 %i.nj to i64
  %i.nl = getelementptr inbounds nuw [32 x i8], ptr %i.nh, i64 %i.nk
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 72
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !146 ; 2 uses
  %i.no = getelementptr inbounds i8, ptr %i.nn, i64 -8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !522)
  %i.np = getelementptr inbounds nuw i8, ptr %i.nn, i64 32
  %i.nq = call noundef ptr @_ZNK4mlir5Block9getParentEv(ptr noundef nonnull align 8 dereferenceable(80) %i.no) #25, !noalias !522
  %i.nr = call noundef ptr @_ZN4mlir6Region10getContextEv(ptr noundef nonnull align 8 dereferenceable(28) %i.nq) #25, !noalias !522
  store ptr %i.nr, ptr %65, align 8, !tbaa !168, !alias.scope !522
  %i.ns = getelementptr inbounds nuw i8, ptr %65, i64 8
  store ptr null, ptr %i.ns, align 8, !tbaa !173, !alias.scope !522
  %i.nt = getelementptr inbounds nuw i8, ptr %65, i64 16 ; 19 uses
  store ptr %i.no, ptr %i.nt, align 8, !tbaa !174, !alias.scope !522
  %i.nu = getelementptr inbounds nuw i8, ptr %65, i64 24 ; 19 uses
  store ptr %i.np, ptr %i.nu, align 8, !alias.scope !522
  %i.nv = getelementptr inbounds nuw i8, ptr %65, i64 32 ; 3 uses
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i14, ptr %i.nv, align 8, !alias.scope !522
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #25
  %i.nw = getelementptr inbounds nuw i8, ptr %66, i64 16 ; 4 uses
  store ptr %i.nw, ptr %66, align 8, !tbaa !507
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i64 17, ptr %i.b, align 8, !tbaa !28
  %i.nx = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %66, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #25 ; 2 uses
  store ptr %i.nx, ptr %66, align 8, !tbaa !509
  %i.ny = load i64, ptr %i.b, align 8, !tbaa !28  ; 3 uses
  store i64 %i.ny, ptr %i.nw, align 8, !tbaa !107
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.nx, ptr noundef nonnull align 1 dereferenceable(17) @.str.26, i64 17, i1 false)
  %i.nz = getelementptr inbounds nuw i8, ptr %66, i64 8 ; 2 uses
  store i64 %i.ny, ptr %i.nz, align 8, !tbaa !510
  %i.oa = load ptr, ptr %66, align 8, !tbaa !509
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 %i.ny
  store i8 0, ptr %i.ob, align 1, !tbaa !107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #25
  %i.oc = getelementptr inbounds nuw i8, ptr %67, i64 8
  store i32 0, ptr %i.oc, align 8, !tbaa !511
  %i.od = getelementptr inbounds nuw i8, ptr %67, i64 40
  store i8 0, ptr %i.od, align 8, !tbaa !512
  %i.oe = getelementptr inbounds nuw i8, ptr %67, i64 44
  store i32 1, ptr %i.oe, align 4, !tbaa !513
  %i.of = getelementptr inbounds nuw i8, ptr %67, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.of, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %67, align 8, !tbaa !24
  %i.og = getelementptr inbounds nuw i8, ptr %67, i64 48
  store ptr %66, ptr %i.og, align 8, !tbaa !515
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %67, ptr noundef null, i64 noundef 0, i32 noundef 0) #25
  %i.oh = getelementptr inbounds nuw i8, ptr %67, i64 32 ; 2 uses
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !113 ; 3 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %67, i64 24
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !112
  %.not.i.i.i.i.i16 = icmp ult ptr %i.oi, %i.ok
  br i1 %.not.i.i.i.i.i16, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ol = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %67, i8 noundef zeroext 95) #25
  %.sroa.0134.0.copyload.pre.i.i.i.i = load ptr, ptr %64, align 8, !tbaa !151
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i.i.i.i17

bb.ar:                                            ; preds = %bb.ap
  %i.om = getelementptr inbounds nuw i8, ptr %i.oi, i64 1
  store ptr %i.om, ptr %i.oh, align 8, !tbaa !113
  store i8 95, ptr %i.oi, align 1, !tbaa !107
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i.i.i.i17

_ZN4llvm11raw_ostreamlsEc.exit.i.i.i.i17:         ; preds = %bb.ar, %bb.aq
  %.sroa.0134.0.copyload.i.i.i.i = phi ptr [ %.sroa.0134.0.copyload.pre.i.i.i.i, %bb.aq ], [ %i.mp, %bb.ar ]
  %.0.i.i.i.i.i18 = phi ptr [ %i.ol, %bb.aq ], [ %67, %bb.ar ]
  call void @llvm.lifetime.start.p0(ptr nonnull %62)
  store ptr %.sroa.0134.0.copyload.i.i.i.i, ptr %62, align 8
  call void @_ZNK4mlir4Type5printERN4llvm11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(8) %62, ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i.i.i18) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %62)
  %i.on = load ptr, ptr %65, align 8, !tbaa !168
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #25
  %i.oo = load i64, ptr %64, align 8, !tbaa !151  ; 2 uses
  store i64 %i.oo, ptr %69, align 8, !tbaa !151
  %i.op = getelementptr inbounds nuw i8, ptr %69, i64 8
  store i64 %i.oo, ptr %i.op, align 8, !tbaa !151
  call void @_ZN4mlir9TypeRangeC2EN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(16) %68, ptr nonnull %69, i64 2) #25
  call void @_ZN4mlir9TypeRangeC2EN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(16) %70, ptr nonnull align 8 dereferenceable(8) %64, i64 1) #25
  %i.oq = load i64, ptr %68, align 8
  %i.or = getelementptr inbounds nuw i8, ptr %68, i64 8
  %i.os = load i64, ptr %i.or, align 8
  %i.ot = load i64, ptr %70, align 8
  %i.ou = getelementptr inbounds nuw i8, ptr %70, i64 8
  %i.ov = load i64, ptr %i.ou, align 8
  %i.ow = call ptr @_ZN4mlir12FunctionType3getEPNS_11MLIRContextENS_9TypeRangeES3_(ptr noundef %i.on, i64 %i.oq, i64 %i.os, i64 %i.ot, i64 %i.ov) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #25
end_hunk_1
begin_hunk_2_@"_ZZN12_GLOBAL__N_122ConvertMathToFuncsPass25generateOpImplementationsEvENK3$_0clEPN4mlir9OperationE":bb.a
  %i.yv = getelementptr inbounds nuw i8, ptr %114, i64 16
  store ptr %.sroa.0.0.copyload.i.i140.i.i.i.i, ptr %i.yv, align 8, !tbaa !189
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %113, ptr nonnull %114, i64 3) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %115, i8 0, i64 16, i1 false)
  %i.yw = load i64, ptr %113, align 8
  %i.yx = getelementptr inbounds nuw i8, ptr %113, i64 8
  %i.yy = load i64, ptr %i.yx, align 8
  %i.yz = call ptr @_ZN4mlir2cf12CondBranchOp6createERNS_20ImplicitLocOpBuilderENS_5ValueEPNS_5BlockES6_NS_10ValueRangeEN4llvm8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(40) %65, ptr nonnull %i.yr, ptr noundef %i.ys, ptr noundef %i.yn, i64 %i.yw, i64 %i.yy, ptr noundef nonnull byval(%"class.llvm::ArrayRef.812") align 8 %115) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %114) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %116) #25
  %i.za = getelementptr inbounds nuw i8, ptr %i.yn, i64 56
  %i.zb = load ptr, ptr %i.za, align 8, !tbaa !516 ; 3 uses
  %.sroa.0.0.copyload.i185.i.i.i.i = load ptr, ptr %i.zb, align 8 ; 2 uses
  store ptr %.sroa.0.0.copyload.i185.i.i.i.i, ptr %116, align 8, !tbaa !189
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 8
  %.sroa.0.0.copyload.i186.i.i.i.i = load ptr, ptr %i.zc, align 8 ; 3 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zb, i64 16
  %.sroa.0.0.copyload.i187.i.i.i.i = load ptr, ptr %i.zd, align 8 ; 2 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %i.yn, i64 40
  store ptr %i.yn, ptr %i.nt, align 8, !tbaa !174
  store ptr %i.ze, ptr %i.nu, align 8
  %.sroa.020.0.copyload.i.i.i.i = load ptr, ptr %73, align 8, !tbaa !189
  %i.zf = call ptr @_ZN4mlir5arith6AndIOp6createERNS_20ImplicitLocOpBuilderENS_5ValueES4_(ptr noundef nonnull align 8 dereferenceable(40) %65, ptr %.sroa.0.0.copyload.i187.i.i.i.i, ptr %.sroa.020.0.copyload.i.i.i.i) #25
  %i.zg = getelementptr inbounds i8, ptr %i.zf, i64 -16
  %.sroa.019.0.copyload.i.i.i.i = load ptr, ptr %72, align 8, !tbaa !189
  %i.zh = call ptr @_ZN4mlir5arith6CmpIOp6createERNS_20ImplicitLocOpBuilderENS0_13CmpIPredicateENS_5ValueES5_(ptr noundef nonnull align 8 dereferenceable(40) %65, i64 noundef 1, ptr nonnull %i.zg, ptr %.sroa.019.0.copyload.i.i.i.i) #25 ; 2 uses
  call void @_ZN4mlir9TypeRangeC1EN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(16) %117, ptr null, i64 0) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %118, i8 0, i64 16, i1 false)
  %i.zi = load i64, ptr %117, align 8
  %i.zj = getelementptr inbounds nuw i8, ptr %117, i64 8
  %i.zk = load i64, ptr %i.zj, align 8
  %i.zl = call noundef ptr @_ZN4mlir9OpBuilder11createBlockEPNS_6RegionEN4llvm14ilist_iteratorINS3_12ilist_detail12node_optionsINS_5BlockELb0ELb0EvLb0EvEELb0ELb0EEENS_9TypeRangeENS3_8ArrayRefINS_8LocationEEE(ptr noundef nonnull align 8 dereferenceable(32) %65, ptr noundef nonnull %i.pl, ptr null, i64 %i.zi, i64 %i.zk, ptr noundef nonnull byval(%"class.llvm::ArrayRef.617") align 8 %118) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %119) #25
  %i.zm = call ptr @_ZN4mlir5arith6MulIOp6createERNS_20ImplicitLocOpBuilderENS_5ValueES4_NS0_20IntegerOverflowFlagsE(ptr noundef nonnull align 8 dereferenceable(40) %65, ptr %.sroa.0.0.copyload.i185.i.i.i.i, ptr %.sroa.0.0.copyload.i186.i.i.i.i, i32 noundef 0) #25
  %i.zn = getelementptr inbounds i8, ptr %i.zm, i64 -16
  store ptr %i.zn, ptr %119, align 8
  call void @_ZN4mlir9TypeRangeC2EN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(16) %120, ptr nonnull align 8 dereferenceable(8) %64, i64 1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %122) #25
  %.sroa.0.0.copyload.i188.i.i.i.i = load ptr, ptr %i.nv, align 8
  store ptr %.sroa.0.0.copyload.i188.i.i.i.i, ptr %122, align 8
  store ptr %122, ptr %121, align 8, !tbaa !528
  %i.zo = getelementptr inbounds nuw i8, ptr %121, i64 8
  store i64 1, ptr %i.zo, align 8, !tbaa !529
  %i.zp = load i64, ptr %120, align 8
  %i.zq = getelementptr inbounds nuw i8, ptr %120, i64 8
  %i.zr = load i64, ptr %i.zq, align 8
  %i.zs = call noundef ptr @_ZN4mlir9OpBuilder11createBlockEPNS_6RegionEN4llvm14ilist_iteratorINS3_12ilist_detail12node_optionsINS_5BlockELb0ELb0EvLb0EvEELb0ELb0EEENS_9TypeRangeENS3_8ArrayRefINS_8LocationEEE(ptr noundef nonnull align 8 dereferenceable(32) %65, ptr noundef nonnull %i.pl, ptr nonnull %i.pl, i64 %i.zp, i64 %i.zr, ptr noundef nonnull byval(%"class.llvm::ArrayRef.617") align 8 %121) #25 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %122) #25
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zl, i64 40
  store ptr %i.zl, ptr %i.nt, align 8, !tbaa !174
  store ptr %i.zt, ptr %i.nu, align 8
  %i.zu = ptrtoint ptr %119 to i64                ; 2 uses
  %i.zv = call ptr @_ZN4mlir2cf8BranchOp6createERNS_20ImplicitLocOpBuilderENS_10ValueRangeEPNS_5BlockE(ptr noundef nonnull align 8 dereferenceable(40) %65, i64 %i.zu, i64 1, ptr noundef %i.zs) #25 ; 0 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zh, i64 16
  %i.zx = load ptr, ptr %i.zw, align 8, !tbaa !525 ; 2 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zx, i64 40
  store ptr %i.zx, ptr %i.nt, align 8, !tbaa !174
  store ptr %i.zy, ptr %i.nu, align 8
  %i.zz = getelementptr inbounds i8, ptr %i.zh, i64 -16
  %i.aaa = ptrtoint ptr %116 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %123, i8 0, i64 16, i1 false)
  %i.aab = call ptr @_ZN4mlir2cf12CondBranchOp6createERNS_20ImplicitLocOpBuilderENS_5ValueEPNS_5BlockES6_NS_10ValueRangeEN4llvm8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(40) %65, ptr nonnull %i.zz, ptr noundef %i.zl, ptr noundef %i.zs, i64 %i.aaa, i64 1, ptr noundef nonnull byval(%"class.llvm::ArrayRef.812") align 8 %123) #25 ; 0 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zs, i64 56
  %i.aad = load ptr, ptr %i.aac, align 8, !tbaa !516
  %.sroa.0.0.copyload.i189.i.i.i.i = load ptr, ptr %i.aad, align 8
  store ptr %.sroa.0.0.copyload.i189.i.i.i.i, ptr %119, align 8, !tbaa !189
  %i.aae = getelementptr inbounds nuw i8, ptr %i.zs, i64 40
  store ptr %i.zs, ptr %i.nt, align 8, !tbaa !174
  store ptr %i.aae, ptr %i.nu, align 8
  %.sroa.09.0.copyload.i.i.i.i = load ptr, ptr %73, align 8, !tbaa !189
  %i.aaf = call ptr @_ZN4mlir5arith7ShRUIOp6createERNS_20ImplicitLocOpBuilderENS_5ValueES4_b(ptr noundef nonnull align 8 dereferenceable(40) %65, ptr %.sroa.0.0.copyload.i187.i.i.i.i, ptr %.sroa.09.0.copyload.i.i.i.i, i1 noundef zeroext false) #25
  %i.aag = getelementptr inbounds i8, ptr %i.aaf, i64 -16 ; 2 uses
  %.sroa.07.0.copyload.i.i.i.i38 = load ptr, ptr %72, align 8, !tbaa !189
  %i.aah = call ptr @_ZN4mlir5arith6CmpIOp6createERNS_20ImplicitLocOpBuilderENS0_13CmpIPredicateENS_5ValueES5_(ptr noundef nonnull align 8 dereferenceable(40) %65, i64 noundef 0, ptr nonnull %i.aag, ptr %.sroa.07.0.copyload.i.i.i.i38) #25 ; 2 uses
  call void @_ZN4mlir9TypeRangeC1EN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(16) %124, ptr null, i64 0) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %125, i8 0, i64 16, i1 false)
  %i.aai = load i64, ptr %124, align 8
  %i.aaj = getelementptr inbounds nuw i8, ptr %124, i64 8
  %i.aak = load i64, ptr %i.aaj, align 8
  %i.aal = call noundef ptr @_ZN4mlir9OpBuilder11createBlockEPNS_6RegionEN4llvm14ilist_iteratorINS3_12ilist_detail12node_optionsINS_5BlockELb0ELb0EvLb0EvEELb0ELb0EEENS_9TypeRangeENS3_8ArrayRefINS_8LocationEEE(ptr noundef nonnull align 8 dereferenceable(32) %65, ptr noundef nonnull %i.pl, ptr null, i64 %i.aai, i64 %i.aak, ptr noundef nonnull byval(%"class.llvm::ArrayRef.617") align 8 %125) #25
  %i.aam = call ptr @_ZN4mlir4func8ReturnOp6createERNS_20ImplicitLocOpBuilderENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(40) %65, i64 %i.zu, i64 1) #25 ; 0 uses
  call void @_ZN4mlir9TypeRangeC1EN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(16) %126, ptr null, i64 0) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %127, i8 0, i64 16, i1 false)
  %i.aan = load i64, ptr %126, align 8
  %i.aao = getelementptr inbounds nuw i8, ptr %126, i64 8
  %i.aap = load i64, ptr %i.aao, align 8
  %i.aaq = call noundef ptr @_ZN4mlir9OpBuilder11createBlockEPNS_6RegionEN4llvm14ilist_iteratorINS3_12ilist_detail12node_optionsINS_5BlockELb0ELb0EvLb0EvEELb0ELb0EEENS_9TypeRangeENS3_8ArrayRefINS_8LocationEEE(ptr noundef nonnull align 8 dereferenceable(32) %65, ptr noundef nonnull %i.pl, ptr null, i64 %i.aan, i64 %i.aap, ptr noundef nonnull byval(%"class.llvm::ArrayRef.617") align 8 %127) #25 ; 3 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aah, i64 16
  %i.aas = load ptr, ptr %i.aar, align 8, !tbaa !525 ; 2 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aas, i64 40
  store ptr %i.aas, ptr %i.nt, align 8, !tbaa !174
  store ptr %i.aat, ptr %i.nu, align 8
  %i.aau = getelementptr inbounds i8, ptr %i.aah, i64 -16
  call void @_ZN4mlir10ValueRangeC1EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %128, ptr null, i64 0) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %129, i8 0, i64 16, i1 false)
  %i.aav = load i64, ptr %128, align 8
  %i.aaw = getelementptr inbounds nuw i8, ptr %128, i64 8
  %i.aax = load i64, ptr %i.aaw, align 8
  %i.aay = call ptr @_ZN4mlir2cf12CondBranchOp6createERNS_20ImplicitLocOpBuilderENS_5ValueEPNS_5BlockES6_NS_10ValueRangeEN4llvm8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(40) %65, ptr nonnull %i.aau, ptr noundef %i.aal, ptr noundef %i.aaq, i64 %i.aav, i64 %i.aax, ptr noundef nonnull byval(%"class.llvm::ArrayRef.812") align 8 %129) #25 ; 0 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aaq, i64 40
  store ptr %i.aaq, ptr %i.nt, align 8, !tbaa !174
  store ptr %i.aaz, ptr %i.nu, align 8
  %i.aba = call ptr @_ZN4mlir5arith6MulIOp6createERNS_20ImplicitLocOpBuilderENS_5ValueES4_NS0_20IntegerOverflowFlagsE(ptr noundef nonnull align 8 dereferenceable(40) %65, ptr %.sroa.0.0.copyload.i186.i.i.i.i, ptr %.sroa.0.0.copyload.i186.i.i.i.i, i32 noundef 0) #25
  %i.abb = getelementptr inbounds i8, ptr %i.aba, i64 -16
  call void @llvm.lifetime.start.p0(ptr nonnull %131) #25
  %i.abc = load i64, ptr %119, align 8, !tbaa !189
  store i64 %i.abc, ptr %131, align 8, !tbaa !189
  %i.abd = getelementptr inbounds nuw i8, ptr %131, i64 8
  store ptr %i.abb, ptr %i.abd, align 8, !tbaa !189
  %i.abe = getelementptr inbounds nuw i8, ptr %131, i64 16
  store ptr %i.aag, ptr %i.abe, align 8, !tbaa !189
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %130, ptr nonnull %131, i64 3) #25
  %i.abf = load i64, ptr %130, align 8
  %i.abg = getelementptr inbounds nuw i8, ptr %130, i64 8
  %i.abh = load i64, ptr %i.abg, align 8
  %i.abi = call ptr @_ZN4mlir2cf8BranchOp6createERNS_20ImplicitLocOpBuilderENS_10ValueRangeEPNS_5BlockE(ptr noundef nonnull align 8 dereferenceable(40) %65, i64 %i.abf, i64 %i.abh, ptr noundef nonnull %i.yn) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %131) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %119) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %116) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #25
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %67) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #25
  %i.abj = load ptr, ptr %66, align 8, !tbaa !509 ; 2 uses
  %i.abk = icmp eq ptr %i.abj, %i.nw
  br i1 %i.abk, label %_ZL22createElementIPowIFuncPN4mlir8ModuleOpENS_4TypeE.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i39: ; preds = %_ZN4llvm5APIntD2Ev.exit.i.i.i.i
  %i.abl = load i64, ptr %i.nw, align 8, !tbaa !107
  %i.abm = add i64 %i.abl, 1
  call void @_ZdlPvm(ptr noundef %i.abj, i64 noundef %i.abm) #26
  br label %_ZL22createElementIPowIFuncPN4mlir8ModuleOpENS_4TypeE.exit.i.i.i

_ZL22createElementIPowIFuncPN4mlir8ModuleOpENS_4TypeE.exit.i.i.i: ; preds = %_ZN4llvm5APIntD2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #25
  %i.abn = load ptr, ptr %63, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %63)
  call void @llvm.lifetime.end.p0(ptr nonnull %64)
  call void @llvm.lifetime.end.p0(ptr nonnull %68)
  call void @llvm.lifetime.end.p0(ptr nonnull %70)
  call void @llvm.lifetime.end.p0(ptr nonnull %71)
  call void @llvm.lifetime.end.p0(ptr nonnull %76)
  call void @llvm.lifetime.end.p0(ptr nonnull %77)
  call void @llvm.lifetime.end.p0(ptr nonnull %78)
  call void @llvm.lifetime.end.p0(ptr nonnull %79)
  call void @llvm.lifetime.end.p0(ptr nonnull %80)
  call void @llvm.lifetime.end.p0(ptr nonnull %81)
  call void @llvm.lifetime.end.p0(ptr nonnull %82)
  call void @llvm.lifetime.end.p0(ptr nonnull %83)
  call void @llvm.lifetime.end.p0(ptr nonnull %84)
  call void @llvm.lifetime.end.p0(ptr nonnull %85)
  call void @llvm.lifetime.end.p0(ptr nonnull %87)
  call void @llvm.lifetime.end.p0(ptr nonnull %88)
  call void @llvm.lifetime.end.p0(ptr nonnull %89)
  call void @llvm.lifetime.end.p0(ptr nonnull %90)
  call void @llvm.lifetime.end.p0(ptr nonnull %91)
  call void @llvm.lifetime.end.p0(ptr nonnull %92)
  call void @llvm.lifetime.end.p0(ptr nonnull %93)
  call void @llvm.lifetime.end.p0(ptr nonnull %94)
  call void @llvm.lifetime.end.p0(ptr nonnull %95)
  call void @llvm.lifetime.end.p0(ptr nonnull %96)
  call void @llvm.lifetime.end.p0(ptr nonnull %97)
  call void @llvm.lifetime.end.p0(ptr nonnull %98)
  call void @llvm.lifetime.end.p0(ptr nonnull %99)
  call void @llvm.lifetime.end.p0(ptr nonnull %100)
  call void @llvm.lifetime.end.p0(ptr nonnull %101)
  call void @llvm.lifetime.end.p0(ptr nonnull %102)
  call void @llvm.lifetime.end.p0(ptr nonnull %103)
  call void @llvm.lifetime.end.p0(ptr nonnull %104)
  call void @llvm.lifetime.end.p0(ptr nonnull %105)
  call void @llvm.lifetime.end.p0(ptr nonnull %106)
  call void @llvm.lifetime.end.p0(ptr nonnull %107)
  call void @llvm.lifetime.end.p0(ptr nonnull %108)
  call void @llvm.lifetime.end.p0(ptr nonnull %109)
  call void @llvm.lifetime.end.p0(ptr nonnull %111)
  call void @llvm.lifetime.end.p0(ptr nonnull %113)
  call void @llvm.lifetime.end.p0(ptr nonnull %115)
  call void @llvm.lifetime.end.p0(ptr nonnull %117)
  call void @llvm.lifetime.end.p0(ptr nonnull %118)
  call void @llvm.lifetime.end.p0(ptr nonnull %120)
  call void @llvm.lifetime.end.p0(ptr nonnull %121)
  call void @llvm.lifetime.end.p0(ptr nonnull %123)
  call void @llvm.lifetime.end.p0(ptr nonnull %124)
  call void @llvm.lifetime.end.p0(ptr nonnull %125)
  call void @llvm.lifetime.end.p0(ptr nonnull %126)
  call void @llvm.lifetime.end.p0(ptr nonnull %127)
  call void @llvm.lifetime.end.p0(ptr nonnull %128)
  call void @llvm.lifetime.end.p0(ptr nonnull %129)
  call void @llvm.lifetime.end.p0(ptr nonnull %130)
  %i.abo = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i.i.i12, i64 16
  store ptr %i.abn, ptr %i.abo, align 8
  br label %bb.bl

bb.bl:                                            ; preds = %_ZL22createElementIPowIFuncPN4mlir8ModuleOpENS_4TypeE.exit.i.i.i, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %132) #25
  br label %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationEvEES5_E4CaseIZZN12_GLOBAL__N_122ConvertMathToFuncsPass25generateOpImplementationsEvENK3$_0clES5_EUlNS3_4math7FPowIOpEE_EERS6_OT_.exit"

bb.bm:                                            ; preds = %bb.am
  %162 = icmp ne ptr %i.i, @_ZN4mlir6detail14TypeIDResolverINS_4math7FPowIOpEvE2idE
  %.not91 = icmp eq ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_4math7FPowIOpEvE2idE
  %spec.select.i.i.i.i.i.not.i.i44 = or i1 %.not91, %162
  br i1 %spec.select.i.i.i.i.i.not.i.i44, label %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationEvEES5_E4CaseIZZN12_GLOBAL__N_122ConvertMathToFuncsPass25generateOpImplementationsEvENK3$_0clES5_EUlNS3_4math7FPowIOpEE_EERS6_OT_.exit", label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #25
  %i.abp = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.abq = load ptr, ptr %i.abp, align 8, !tbaa !195
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abq, i64 56
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.abr, align 8, !tbaa !189
  %i.abs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i.i44 = load i64, ptr %i.abs, align 8
  %i.abt = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i44, -8
  %i.abu = inttoptr i64 %i.abt to ptr
  %i.abv = tail call ptr @_ZN4mlir20getElementTypeOrSelfENS_4TypeE(ptr %i.abu) #25 ; 2 uses
  %i.abw = load ptr, ptr %i.abv, align 8, !tbaa !149
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abw, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.abx, align 8, !tbaa !19
  %i.aby = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_11IntegerTypeEvE2idE ; 2 uses
  %spec.select.i.i.i.i.i.i = select i1 %i.aby, ptr %i.abv, ptr null
  store ptr %spec.select.i.i.i.i.i.i, ptr %58, align 8
  br i1 %i.aby, label %_ZN12_GLOBAL__N_122ConvertMathToFuncsPass18isFPowIConvertibleEN4mlir4math7FPowIOpE.exit.i.i.i, label %_ZN12_GLOBAL__N_122ConvertMathToFuncsPass18isFPowIConvertibleEN4mlir4math7FPowIOpE.exit.thread.i.i.i

_ZN12_GLOBAL__N_122ConvertMathToFuncsPass18isFPowIConvertibleEN4mlir4math7FPowIOpE.exit.thread.i.i.i: ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #25
  br label %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationEvEES5_E4CaseIZZN12_GLOBAL__N_122ConvertMathToFuncsPass25generateOpImplementationsEvENK3$_0clES5_EUlNS3_4math7FPowIOpEE_EERS6_OT_.exit"

_ZN12_GLOBAL__N_122ConvertMathToFuncsPass18isFPowIConvertibleEN4mlir4math7FPowIOpE.exit.i.i.i: ; preds = %bb.bn
  %i.abz = call noundef i32 @_ZNK4mlir11IntegerType8getWidthEv(ptr noundef nonnull align 8 dereferenceable(8) %58) #25
  %i.aca = getelementptr inbounds nuw i8, ptr %i.d, i64 456
  %i.acb = load i32, ptr %i.aca, align 8, !tbaa !98
  %.not.i.i.i = icmp ult i32 %i.abz, %i.acb
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #25
  br i1 %.not.i.i.i, label %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationEvEES5_E4CaseIZZN12_GLOBAL__N_122ConvertMathToFuncsPass25generateOpImplementationsEvENK3$_0clES5_EUlNS3_4math7FPowIOpEE_EERS6_OT_.exit", label %bb.bo

bb.bo:                                            ; preds = %_ZN12_GLOBAL__N_122ConvertMathToFuncsPass18isFPowIConvertibleEN4mlir4math7FPowIOpE.exit.i.i.i
  %i.acc = call fastcc ptr @_ZL25getElementalFuncTypeForOpPN4mlir9OperationE(ptr noundef nonnull %1) ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i45 = load ptr, ptr %i.g, align 8, !tbaa !79
  %i.acd = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i45 to i64
  %i.ace = ptrtoint ptr %i.acc to i64
  %i.acf = getelementptr inbounds nuw i8, ptr %i.d, i64 736
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #25
  store i64 %i.acd, ptr %59, align 8, !tbaa !79
  %i.acg = getelementptr inbounds nuw i8, ptr %59, i64 8
  store i64 %i.ace, ptr %i.acg, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #25
  store ptr null, ptr %60, align 8, !tbaa !152
  %i.ach = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIN4mlir13OperationNameENS3_4TypeEENS3_4func6FuncOpENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E24lookupOrInsertIntoBucketIS6_JS8_EEES2_IPSD_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.acf, ptr noundef nonnull align 8 dereferenceable(16) %59, ptr noundef nonnull align 8 dereferenceable(8) %60), !noalias !530 ; 2 uses
  %.fca.0.extract.i.i.i.i.i46 = extractvalue { ptr, i8 } %i.ach, 0
  %.fca.1.extract.i.i.i.i.i47 = extractvalue { ptr, i8 } %i.ach, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #25
  %i.aci = trunc nuw i8 %.fca.1.extract.i.i.i.i.i47 to i1
  br i1 %i.aci, label %bb.bp, label %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationEvEES5_E4CaseIZZN12_GLOBAL__N_122ConvertMathToFuncsPass25generateOpImplementationsEvENK3$_0clES5_EUlNS3_4math7FPowIOpEE_EERS6_OT_.exit"

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  call void @llvm.lifetime.start.p0(ptr nonnull %29)
  call void @llvm.lifetime.start.p0(ptr nonnull %30)
  call void @llvm.lifetime.start.p0(ptr nonnull %32)
  call void @llvm.lifetime.start.p0(ptr nonnull %33)
  call void @llvm.lifetime.start.p0(ptr nonnull %35)
  call void @llvm.lifetime.start.p0(ptr nonnull %36)
  call void @llvm.lifetime.start.p0(ptr nonnull %37)
  call void @llvm.lifetime.start.p0(ptr nonnull %38)
  call void @llvm.lifetime.start.p0(ptr nonnull %40)
  call void @llvm.lifetime.start.p0(ptr nonnull %41)
  call void @llvm.lifetime.start.p0(ptr nonnull %43)
  call void @llvm.lifetime.start.p0(ptr nonnull %44)
  call void @llvm.lifetime.start.p0(ptr nonnull %45)
  call void @llvm.lifetime.start.p0(ptr nonnull %46)
  call void @llvm.lifetime.start.p0(ptr nonnull %47)
  call void @llvm.lifetime.start.p0(ptr nonnull %48)
  call void @llvm.lifetime.start.p0(ptr nonnull %50)
  call void @llvm.lifetime.start.p0(ptr nonnull %51)
  call void @llvm.lifetime.start.p0(ptr nonnull %52)
  call void @llvm.lifetime.start.p0(ptr nonnull %53)
  call void @llvm.lifetime.start.p0(ptr nonnull %54)
  call void @llvm.lifetime.start.p0(ptr nonnull %56)
  store ptr %i.acc, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.acj = call { ptr, i64 } @_ZNK4mlir12FunctionType9getInputsEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #25
  %i.ack = extractvalue { ptr, i64 } %i.acj, 0
  %.sroa.0.0.copyload.i.i.i.i.i48 = load ptr, ptr %i.ack, align 8, !tbaa !151 ; 6 uses
  %.not.i.i.i.i.i.i3.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i48, null
  br i1 %.not.i.i.i.i.i.i3.i.i.i, label %_ZN4llvm4castIN4mlir9FloatTypeENS1_4TypeEEEDcRKT0_.exit.i.i.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.acl = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i.i48, align 8, !tbaa !149 ; 2 uses
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acl, i64 8
  %i.acn = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9FloatTypeEvE13resolveTypeIDEvE2id acquire, align 8
  %i.aco = icmp eq i8 %i.acn, 0
  br i1 %i.aco, label %bb.br, label %_ZN4mlir6detail9InterfaceINS_9FloatTypeENS_4TypeENS0_24FloatTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i.i.i.i, !prof !185

bb.br:                                            ; preds = %bb.bq
  %i.acp = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9FloatTypeEvE13resolveTypeIDEvE2id) #25
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.acp, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_9FloatTypeENS_4TypeENS0_24FloatTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.acq = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.28, i64 49), i64 15) #25
  store ptr %i.acq, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9FloatTypeEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9FloatTypeEvE13resolveTypeIDEvE2id) #25
  br label %_ZN4mlir6detail9InterfaceINS_9FloatTypeENS_4TypeENS0_24FloatTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN4mlir6detail9InterfaceINS_9FloatTypeENS_4TypeENS0_24FloatTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bs, %bb.br, %bb.bq
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9FloatTypeEvE13resolveTypeIDEvE2id, align 8, !tbaa !19 ; 2 uses
  %i.acr = load ptr, ptr %i.acm, align 8, !tbaa !21 ; 3 uses
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acl, i64 16
  %i.act = load i32, ptr %i.acs, align 8, !tbaa !37 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.act, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_9FloatTypeENS_4TypeENS0_24FloatTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.acu = zext i32 %i.act to i64                 ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.acu, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.acr, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.acv = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.acw = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.acv ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.acw, align 8, !tbaa !19
  %i.acx = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acw, i64 16
  %i.acz = xor i64 %i.acv, -1
  %i.ada = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.acz
  %.112.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.acx, ptr %i.acy, ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.acx, i64 %i.ada, i64 %i.acv ; 2 uses
  %i.adb = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.adb, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !2

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_9FloatTypeENS_4TypeENS0_24FloatTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_9FloatTypeENS_4TypeENS0_24FloatTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.acu, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.acr, %_ZN4mlir6detail9InterfaceINS_9FloatTypeENS_4TypeENS0_24FloatTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.adc = getelementptr inbounds nuw [16 x i8], ptr %i.acr, i64 %.pre-phi.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i49 = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.adc
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i49, label %_ZN4llvm4castIN4mlir9FloatTypeENS1_4TypeEEEDcRKT0_.exit.i.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.add = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !81
  %i.ade = icmp eq ptr %i.add, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.ade, label %bb.bu, label %_ZN4llvm4castIN4mlir9FloatTypeENS1_4TypeEEEDcRKT0_.exit.i.i.i.i

bb.bu:                                            ; preds = %bb.bt
  %i.adf = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.adg = load ptr, ptr %i.adf, align 8, !tbaa !187
  br label %_ZN4llvm4castIN4mlir9FloatTypeENS1_4TypeEEEDcRKT0_.exit.i.i.i.i

_ZN4llvm4castIN4mlir9FloatTypeENS1_4TypeEEEDcRKT0_.exit.i.i.i.i: ; preds = %bb.bu, %bb.bt, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bp
  %i.adh = phi ptr [ null, %bb.bp ], [ %i.adg, %bb.bu ], [ null, %bb.bt ], [ null, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  store ptr %.sroa.0.0.copyload.i.i.i.i.i48, ptr %7, align 8
  %i.adi = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.adh, ptr %i.adi, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.adj = call { ptr, i64 } @_ZNK4mlir12FunctionType9getInputsEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #25
  %i.adk = extractvalue { ptr, i64 } %i.adj, 0
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adk, i64 8
  %.sroa.0.0.copyload.i151.i.i.i.i = load ptr, ptr %i.adl, align 8, !tbaa !151
  store ptr %.sroa.0.0.copyload.i151.i.i.i.i, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.adm = load ptr, ptr %i.f, align 8, !tbaa !152 ; 4 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adm, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i50 = load ptr, ptr %i.adn, align 8
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adm, i64 44
  %i.adp = load i32, ptr %i.ado, align 4          ; 3 uses
  %i.adq = and i32 %i.adp, 8388607
  %i.adr = icmp ne i32 %i.adq, 0
  call void @llvm.assume(i1 %i.adr)
  %i.ads = lshr i32 %i.adp, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i51 = and i32 %i.ads, 1
  %i.adt = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i51 to i64
  %i.adu = getelementptr inbounds nuw [16 x i8], ptr %i.adm, i64 %i.adt
  %i.adv = lshr i32 %i.adp, 21
  %i.adw = and i32 %i.adv, 2040
  %i.adx = zext nneg i32 %i.adw to i64
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adu, i64 %i.adx
  %i.adz = getelementptr inbounds nuw i8, ptr %i.adm, i64 40
  %i.aea = load i32, ptr %i.adz, align 8, !tbaa !166
  %i.aeb = zext i32 %i.aea to i64
  %i.aec = getelementptr inbounds nuw [32 x i8], ptr %i.ady, i64 %i.aeb
  %i.aed = getelementptr inbounds nuw i8, ptr %i.aec, i64 72
  %i.aee = load ptr, ptr %i.aed, align 8, !tbaa !146 ; 2 uses
  %i.aef = getelementptr inbounds i8, ptr %i.aee, i64 -8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !531)
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aee, i64 32
  %i.aeh = call noundef ptr @_ZNK4mlir5Block9getParentEv(ptr noundef nonnull align 8 dereferenceable(80) %i.aef) #25, !noalias !531
  %i.aei = call noundef ptr @_ZN4mlir6Region10getContextEv(ptr noundef nonnull align 8 dereferenceable(28) %i.aeh) #25, !noalias !531
  store ptr %i.aei, ptr %9, align 8, !tbaa !168, !alias.scope !531
  %i.aej = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr null, ptr %i.aej, align 8, !tbaa !173, !alias.scope !531
  %i.aek = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 16 uses
end_hunk_2
