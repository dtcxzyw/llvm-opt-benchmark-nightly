Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AddressSanitizer?download=true
inline.NumInlined: 7429
inline.NumDeleted: 3672
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN4llvm20AddressSanitizerPass3runERNS_6ModuleERNS_15AnalysisManagerIS1_JEEE:bb.a
  %.not35.i = icmp eq i16 %i.pb, 0
  %i.pc = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL24ClMaxInlinePoisoningSize, i64 120), align 8
  %i.pd = select i1 %.not35.i, i32 %i.om, i32 %i.pc
  store i32 %i.pd, ptr %i.db, align 4, !tbaa !331
  %i.pe = load ptr, ptr %2, align 8, !tbaa !257, !nonnull !34, !align !258
  store ptr %i.pe, ptr %i.dc, align 8, !tbaa !332
  store ptr %i.bk, ptr %i.dd, align 8, !tbaa !333
  %i.pf = call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK4llvm10DataLayout14getPointerSpecEj(ptr noundef nonnull align 8 dereferenceable(912) %i.bk, i32 noundef 0) #25
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 4
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !262 ; 2 uses
  store i32 %i.ph, ptr %i.de, align 8, !tbaa !334
  %i.pi = load ptr, ptr %i.dc, align 8, !tbaa !332
  %i.pj = call noundef ptr @_ZN4llvm4Type9getIntNTyERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.pi, i32 noundef %i.ph) #25
  store ptr %i.pj, ptr %i.df, align 8, !tbaa !335
  %i.pk = load ptr, ptr %i.dc, align 8, !tbaa !332
  %i.pl = call noundef ptr @_ZN4llvm11PointerType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.pk, i32 noundef 0) #25
  store ptr %i.pl, ptr %i.dg, align 8, !tbaa !336
  %i.pm = load ptr, ptr %i.dc, align 8, !tbaa !332
  %i.pn = call noundef ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.pm) #25
  store ptr %i.pn, ptr %i.dh, align 8, !tbaa !337
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(56) %i.cp, ptr noundef nonnull align 8 dereferenceable(56) %i.bu) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.po = load i32, ptr %i.de, align 8, !tbaa !334
  %i.pp = load i8, ptr %i.ct, align 4, !tbaa !325, !range !33, !noundef !34
  %i.pq = trunc nuw i8 %i.pp to i1
  call fastcc void @_ZL16getShadowMappingRKN4llvm6TripleEib(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef nonnull align 8 dereferenceable(56) %i.cp, i32 noundef %i.po, i1 noundef zeroext %i.pq)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.di, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !264
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.pr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm15AnalysisManagerINS_8FunctionEJEE13getResultImplEPNS_11AnalysisKeyERS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.cc, ptr noundef nonnull @_ZN4llvm21TargetLibraryAnalysis3KeyE, ptr noundef nonnull align 8 dereferenceable(140) %i.nj) #25
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 8
  %i.pt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm15AnalysisManagerINS_8FunctionEJEE13getResultImplEPNS_11AnalysisKeyERS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.cc, ptr noundef nonnull @_ZN4llvm16TargetIRAnalysis3KeyE, ptr noundef nonnull align 8 dereferenceable(140) %i.nj) #25
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 8
  call fastcc void @_ZN12_GLOBAL__N_116AddressSanitizer18instrumentFunctionERN4llvm8FunctionEPKNS1_17TargetLibraryInfoEPKNS1_19TargetTransformInfoE(ptr noundef nonnull align 8 dereferenceable(1104) %24, ptr noundef nonnull align 8 dereferenceable(140) %i.nj, ptr noundef %i.ps, ptr noundef %i.pu)
  %i.pv = load i32, ptr %i.dj, align 4, !tbaa !338 ; 2 uses
  %i.pw = icmp eq i32 %i.pv, 0
  br i1 %i.pw, label %_ZN4llvm8DenseMapIPKNS_10AllocaInstEbNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_bEEED2Ev.exit.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.px = load ptr, ptr %i.cz, align 8, !tbaa !339
  %i.py = zext i32 %i.pv to i64                   ; 2 uses
  %i.pz = shl nuw nsw i64 %i.py, 4
  %i.qa = add nuw nsw i64 %i.py, 31
  %i.qb = lshr i64 %i.qa, 3
  %i.qc = and i64 %i.qb, 1073741820
  %i.qd = add nuw nsw i64 %i.qc, %i.pz
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.px, i64 noundef %i.qd, i64 noundef 8) #25
  br label %_ZN4llvm8DenseMapIPKNS_10AllocaInstEbNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_bEEED2Ev.exit.i

_ZN4llvm8DenseMapIPKNS_10AllocaInstEbNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_bEEED2Ev.exit.i: ; preds = %bb.ao, %bb.an
  %i.qe = load ptr, ptr %i.cp, align 8, !tbaa !43 ; 2 uses
  %i.qf = icmp eq ptr %i.qe, %i.cq
  br i1 %i.qf, label %_ZN12_GLOBAL__N_116AddressSanitizerD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i33: ; preds = %_ZN4llvm8DenseMapIPKNS_10AllocaInstEbNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_bEEED2Ev.exit.i
  %i.qg = load i64, ptr %i.cq, align 8, !tbaa !44
  %i.qh = add i64 %i.qg, 1
  call void @_ZdlPvm(ptr noundef %i.qe, i64 noundef %i.qh) #26
  br label %_ZN12_GLOBAL__N_116AddressSanitizerD2Ev.exit

_ZN12_GLOBAL__N_116AddressSanitizerD2Ev.exit:     ; preds = %_ZN4llvm8DenseMapIPKNS_10AllocaInstEbNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_bEEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #25
  br label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread

_ZNK4llvm9StringRef11starts_withES0_.exit.thread: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.thread44, %_ZNK4llvm9StringRef11starts_withES0_.exit, %_ZN4llvmeqENS_9StringRefES0_.exit, %bb.ak, %bb.aj, %_ZN12_GLOBAL__N_116AddressSanitizerD2Ev.exit
  %i.qi = getelementptr inbounds nuw i8, ptr %.sroa.038.053, i64 8
  %.sroa.038.0 = load ptr, ptr %i.qi, align 8, !tbaa !270 ; 2 uses
  %.not = icmp eq ptr %.sroa.038.0, %i.cj
  br i1 %.not, label %._crit_edge, label %bb.aj

bb.ap:                                            ; preds = %_ZN12_GLOBAL__N_122ModuleAddressSanitizerD2Ev.exit, %bb.b
  ret void
}

declare noundef zeroext i1 @_ZN4llvm26checkIfAlreadyInstrumentedERNS_6ModuleENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(1288), ptr, i64) local_unnamed_addr #5

declare { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_116AddressSanitizer18instrumentFunctionERN4llvm8FunctionEPKNS1_17TargetLibraryInfoEPKNS1_19TargetTransformInfoE(ptr noundef nonnull align 8 dereferenceable(1104) %0, ptr noundef nonnull align 8 dereferenceable(140) %1, ptr noundef nonnull %2, ptr noundef nonnull %3) unnamed_addr #4 align 2 {
bb.a:
  %4 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %5 = alloca %"class.llvm::AttributeList", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.llvm::DenseMap.625", align 8 ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %8 = alloca %"class.llvm::OperandBundleDefT", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %10 = alloca %"class.llvm::OperandBundleDefT", align 8 ; 13 uses
  %11 = alloca %"class.llvm::IRBuilder", align 8  ; 21 uses
  %i.c = alloca [2 x ptr], align 16               ; 6 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %14 = alloca %"struct.llvm::InstrumentationIRBuilder", align 8 ; 14 uses
  %i.d = alloca [3 x ptr], align 8                ; 6 uses
  %15 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %17 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %18 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %i.e = alloca [3 x ptr], align 8                ; 6 uses
  %19 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %20 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %21 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %22 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %23 = alloca %"struct.llvm::MaybeAlign", align 2 ; 4 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca ptr, align 8                      ; 4 uses
  %i.j = alloca ptr, align 8                      ; 4 uses
  %i.k = alloca i32, align 4                      ; 4 uses
  %i.l = alloca i8, align 1                       ; 4 uses
  %i.m = alloca ptr, align 8                      ; 4 uses
  %i.n = alloca i8, align 1                       ; 4 uses
  %i.o = alloca i32, align 4                      ; 4 uses
  %i.p = alloca ptr, align 8                      ; 4 uses
  %24 = alloca %"class.llvm::TypeSize", align 8   ; 5 uses
  %i.q = alloca ptr, align 8                      ; 4 uses
  %25 = alloca %"class.llvm::IRBuilder", align 8  ; 25 uses
  %26 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %27 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %28 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %29 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %30 = alloca %"class.std::function.521", align 8 ; 8 uses
  %31 = alloca %"class.llvm::InsertPosition", align 8 ; 4 uses
  %32 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %33 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %34 = alloca %"class.llvm::IRBuilder", align 8  ; 20 uses
  %35 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %i.r = alloca [1 x ptr], align 8                ; 5 uses
  %36 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %i.s = alloca ptr, align 8                      ; 13 uses
  %i.t = alloca i32, align 4                      ; 4 uses
  %i.u = alloca i8, align 1                       ; 4 uses
  %i.v = alloca ptr, align 8                      ; 4 uses
  %37 = alloca %"struct.llvm::Align", align 1     ; 4 uses
  %i.w = alloca i32, align 4                      ; 4 uses
  %i.x = alloca i8, align 1                       ; 4 uses
  %i.y = alloca ptr, align 8                      ; 4 uses
  %38 = alloca %"struct.llvm::Align", align 1     ; 4 uses
  %i.z = alloca i32, align 4                      ; 4 uses
  %i.aa = alloca i8, align 1                      ; 4 uses
  %i.ab = alloca ptr, align 8                     ; 4 uses
  %i.ac = alloca i32, align 4                     ; 4 uses
  %i.ad = alloca i8, align 1                      ; 4 uses
  %i.ae = alloca ptr, align 8                     ; 4 uses
  %i.af = alloca i8, align 1                      ; 5 uses
  %i.ag = alloca i32, align 4                     ; 5 uses
  %i.ah = alloca ptr, align 8                     ; 4 uses
  %39 = alloca %"struct.llvm::MaybeAlign", align 2 ; 4 uses
  %i.ai = alloca ptr, align 8                     ; 4 uses
  %i.aj = alloca i8, align 1                      ; 5 uses
  %i.ak = alloca i32, align 4                     ; 5 uses
  %40 = alloca %"struct.llvm::MaybeAlign", align 1 ; 5 uses
  %i.al = alloca ptr, align 8                     ; 4 uses
  %41 = alloca %"class.llvm::IRBuilder", align 8  ; 20 uses
  %42 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %i.am = alloca ptr, align 8                     ; 4 uses
  %i.an = alloca ptr, align 8                     ; 4 uses
  %i.ao = alloca i8, align 1                      ; 5 uses
  %i.ap = alloca i32, align 4                     ; 6 uses
  %i.aq = alloca ptr, align 8                     ; 5 uses
  %43 = alloca %"struct.llvm::MaybeAlign", align 2 ; 6 uses
  %i.ar = alloca ptr, align 8                     ; 5 uses
  %i.as = alloca ptr, align 8                     ; 4 uses
  %i.at = alloca ptr, align 8                     ; 4 uses
  %i.au = alloca i8, align 1                      ; 5 uses
  %i.av = alloca i32, align 4                     ; 6 uses
  %i.aw = alloca ptr, align 8                     ; 5 uses
  %44 = alloca %"struct.llvm::MaybeAlign", align 2 ; 4 uses
  %i.ax = alloca ptr, align 8                     ; 4 uses
  %i.ay = alloca ptr, align 8                     ; 4 uses
  %45 = alloca %"struct.llvm::MemIntrinsicInfo", align 8 ; 8 uses
  %i.az = alloca i32, align 4                     ; 10 uses
  %i.ba = alloca ptr, align 8                     ; 4 uses
  %i.bb = alloca i8, align 1                      ; 4 uses
  %46 = alloca %"struct.llvm::Align", align 1     ; 4 uses
  %i.bc = alloca ptr, align 8                     ; 4 uses
  %47 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %48 = alloca %"class.llvm::InsertPosition", align 8 ; 4 uses
  %49 = alloca %"class.llvm::IRBuilder", align 8  ; 21 uses
  %i.bd = alloca [1 x ptr], align 8               ; 4 uses
  %i.be = alloca [1 x ptr], align 8               ; 4 uses
  %50 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %51 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %52 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %53 = alloca %"class.llvm::SmallVector.299", align 8 ; 7 uses
  %54 = alloca %"class.llvm::SmallVector.299", align 8 ; 7 uses
  %55 = alloca %"class.llvm::SmallVector.306", align 8 ; 8 uses
  %56 = alloca %"class.llvm::SmallVector.306", align 8 ; 8 uses
  %57 = alloca %"class.llvm::SmallVector.304", align 8 ; 7 uses
  %58 = alloca %"class.llvm::SmallVector.308", align 8 ; 9 uses
  %59 = alloca %"class.llvm::AttributeList", align 8 ; 4 uses
  %60 = alloca %"class.llvm::SmallVector.308", align 8 ; 9 uses
  %61 = alloca %"class.llvm::SmallVector.308", align 8 ; 9 uses
  %i.bf = alloca i64, align 8                     ; 6 uses
  %i.bg = alloca i64, align 8                     ; 6 uses
  %i.bh = alloca [21 x i8], align 16              ; 3 uses
  %62 = alloca %"class.llvm::IRBuilder", align 8  ; 15 uses
  %63 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %64 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %65 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %66 = alloca %"class.llvm::SmallVector.308", align 8 ; 12 uses
  %67 = alloca %"class.llvm::SmallVector.306", align 8 ; 11 uses
  %68 = alloca %"class.llvm::AttributeList", align 8 ; 7 uses
  %69 = alloca %"class.llvm::AttributeList", align 8 ; 7 uses
  %70 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %71 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %72 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %73 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %74 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %75 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %76 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %77 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %78 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %79 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %80 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %81 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %82 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %83 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %84 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %85 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %86 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %87 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %88 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %89 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %90 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %91 = alloca %"class.llvm::IRBuilder", align 8  ; 19 uses
  %92 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %93 = alloca %"class.(anonymous namespace)::RuntimeCallInserter", align 8 ; 13 uses
  %94 = alloca %"class.llvm::SmallPtrSet.404", align 8 ; 16 uses
  %95 = alloca %"class.llvm::SmallVector.407", align 8 ; 10 uses
  %96 = alloca %"class.llvm::SmallVector.412", align 8 ; 10 uses
  %97 = alloca %"class.llvm::SmallVector.417", align 8 ; 10 uses
  %98 = alloca %"class.llvm::SmallVector.422", align 8 ; 9 uses
  %99 = alloca %"class.llvm::SmallVector.427", align 8 ; 10 uses
  %100 = alloca %"class.llvm::SmallVector.429", align 8 ; 18 uses
  %101 = alloca %"class.llvm::ObjectSizeOffsetVisitor", align 8 ; 8 uses
  %102 = alloca %"struct.(anonymous namespace)::FunctionStackPoisoner", align 8 ; 42 uses
  %103 = alloca %"class.llvm::IRBuilder", align 8 ; 19 uses
  %104 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %i.bi = tail call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %1, i32 noundef 21) #25
  br i1 %i.bi, label %_ZN12_GLOBAL__N_116AddressSanitizer17FunctionStateRAIID2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %90) #25
  %i.bj = tail call { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(140) %1) #25 ; 2 uses
  %i.bk = extractvalue { ptr, i64 } %i.bj, 0
  store ptr %i.bk, ptr %90, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %90, i64 8
  %i.bm = extractvalue { ptr, i64 } %i.bj, 1
  store i64 %i.bm, ptr %i.bl, align 8
  %i.bn = call noundef i64 @_ZNK4llvm9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %90, ptr nonnull @.str.206, i64 6, i64 noundef 0) #25
  %.not7 = icmp eq i64 %i.bn, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #25
  br i1 %.not7, label %_ZN12_GLOBAL__N_116AddressSanitizer34maybeInsertAsanInitAtFunctionEntryERN4llvm8FunctionE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !340
  %i.bq = call { ptr, ptr } @_ZN4llvm28declareSanitizerInitFunctionERNS_6ModuleENS_9StringRefENS_8ArrayRefIPNS_4TypeEEEb(ptr noundef nonnull align 8 dereferenceable(1288) %i.bp, ptr nonnull @_ZL13kAsanInitName, i64 11, ptr null, i64 0, i1 noundef zeroext false) #25 ; 2 uses
  %i.br = extractvalue { ptr, ptr } %i.bq, 0
  %i.bs = extractvalue { ptr, ptr } %i.bq, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %91) #25
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !270 ; 3 uses
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 -24 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !341 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %91, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.by, i8 0, i64 16, i1 false)
  %i.bz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm10BasicBlock10getContextEv(ptr noundef nonnull align 8 dereferenceable(80) %i.bv) #25
  %i.ca = getelementptr inbounds nuw i8, ptr %91, i64 88 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %91, i64 96 ; 3 uses
  store ptr null, ptr %91, align 8, !tbaa !273
  %i.cc = getelementptr inbounds nuw i8, ptr %91, i64 32
  store ptr %i.bz, ptr %i.cc, align 8, !tbaa !274
  %i.cd = getelementptr inbounds nuw i8, ptr %91, i64 40
  store ptr %i.ca, ptr %i.cd, align 8, !tbaa !276
  %i.ce = getelementptr inbounds nuw i8, ptr %91, i64 48
  store ptr %i.cb, ptr %i.ce, align 8, !tbaa !278
  %i.cf = getelementptr inbounds nuw i8, ptr %91, i64 56
  store ptr null, ptr %i.cf, align 8, !tbaa !289
  %i.cg = getelementptr inbounds nuw i8, ptr %91, i64 64
  store i32 0, ptr %i.cg, align 8, !tbaa !290
  %i.ch = getelementptr inbounds nuw i8, ptr %91, i64 68
  store i8 0, ptr %i.ch, align 4, !tbaa !291
  %i.ci = getelementptr inbounds nuw i8, ptr %91, i64 69
  store i8 2, ptr %i.ci, align 1, !tbaa !292
  %i.cj = getelementptr inbounds nuw i8, ptr %91, i64 70
  store i8 7, ptr %i.cj, align 2, !tbaa !293
  %i.ck = getelementptr inbounds nuw i8, ptr %91, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm14ConstantFolderE, i64 16), ptr %i.ca, align 8, !tbaa !25
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm24IRBuilderDefaultInserterE, i64 16), ptr %i.cb, align 8, !tbaa !25
  store ptr %i.bv, ptr %i.ck, align 8, !tbaa !315
  %i.cl = getelementptr inbounds nuw i8, ptr %91, i64 16
  store ptr %i.bx, ptr %i.cl, align 8
  %.sroa.45.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %91, i64 24
  store i16 1, ptr %.sroa.45.0..sroa_idx.i.i.i, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %.not.i.i.i = icmp eq ptr %i.bx, %i.cm
  br i1 %.not.i.i.i, label %_ZN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEC2EPNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES4_EELb0ELb0EEEPNS_6MDNodeENS_8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEEE.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cn = getelementptr inbounds i8, ptr %i.bx, i64 -24
  %i.co = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.cn) #25
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !316
  store i64 %i.cp, ptr %91, align 8, !tbaa !316
  br label %_ZN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEC2EPNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES4_EELb0ELb0EEEPNS_6MDNodeENS_8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEEE.exit.i

_ZN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEC2EPNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES4_EELb0ELb0EEEPNS_6MDNodeENS_8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEEE.exit.i: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %92) #25
  %i.cq = getelementptr inbounds nuw i8, ptr %92, i64 32
  store i16 257, ptr %i.cq, align 8
  %i.cr = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateCallEPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(88) %91, ptr noundef %i.br, ptr noundef %i.bs, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(34) %92, ptr noundef null) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #25
  call void @_ZN4llvm24IRBuilderDefaultInserterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cb) #25
  call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ca) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #25
  br label %_ZN12_GLOBAL__N_116AddressSanitizer34maybeInsertAsanInitAtFunctionEntryERN4llvm8FunctionE.exit

_ZN12_GLOBAL__N_116AddressSanitizer34maybeInsertAsanInitAtFunctionEntryERN4llvm8FunctionE.exit: ; preds = %bb.b, %_ZN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEC2EPNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES4_EELb0ELb0EEEPNS_6MDNodeENS_8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEEE.exit.i
  %i.cs = call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %1, i32 noundef 60) #25
  br i1 %i.cs, label %bb.e, label %_ZN12_GLOBAL__N_116AddressSanitizer17FunctionStateRAIID2Ev.exit

bb.e:                                             ; preds = %_ZN12_GLOBAL__N_116AddressSanitizer34maybeInsertAsanInitAtFunctionEntryERN4llvm8FunctionE.exit
  %i.ct = call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %1, i32 noundef 10) #25
  br i1 %i.ct, label %_ZN12_GLOBAL__N_116AddressSanitizer17FunctionStateRAIID2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #25
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !332
  %i.cw = getelementptr inbounds nuw i8, ptr %62, i64 88 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %62, i64 96 ; 3 uses
  store ptr null, ptr %62, align 8, !tbaa !273
  %i.cy = getelementptr inbounds nuw i8, ptr %62, i64 32 ; 12 uses
  store ptr %i.cv, ptr %i.cy, align 8, !tbaa !274
  %i.cz = getelementptr inbounds nuw i8, ptr %62, i64 40
  store ptr %i.cw, ptr %i.cz, align 8, !tbaa !276
  %i.da = getelementptr inbounds nuw i8, ptr %62, i64 48
  store ptr %i.cx, ptr %i.da, align 8, !tbaa !278
  %i.db = getelementptr inbounds nuw i8, ptr %62, i64 56
  store ptr null, ptr %i.db, align 8, !tbaa !289
  %i.dc = getelementptr inbounds nuw i8, ptr %62, i64 64
  store i32 0, ptr %i.dc, align 8, !tbaa !290
  %i.dd = getelementptr inbounds nuw i8, ptr %62, i64 68
  store i8 0, ptr %i.dd, align 4, !tbaa !291
  %i.de = getelementptr inbounds nuw i8, ptr %62, i64 69
  store i8 2, ptr %i.de, align 1, !tbaa !292
  %i.df = getelementptr inbounds nuw i8, ptr %62, i64 70
  store i8 7, ptr %i.df, align 2, !tbaa !293
  %i.dg = getelementptr inbounds nuw i8, ptr %62, i64 72
  %i.dh = getelementptr inbounds nuw i8, ptr %62, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.dh, i8 0, i64 18, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dg, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm14ConstantFolderE, i64 16), ptr %i.cw, align 8, !tbaa !25
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm24IRBuilderDefaultInserterE, i64 16), ptr %i.cx, align 8, !tbaa !25
  %i.di = getelementptr inbounds nuw i8, ptr %63, i64 16 ; 5 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %63, i64 8 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %64, i64 16 ; 5 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %64, i64 8 ; 5 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 93
  %i.dn = getelementptr inbounds nuw i8, ptr %65, i64 16 ; 5 uses
  %i.do = getelementptr inbounds nuw i8, ptr %65, i64 8 ; 5 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 18 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %66, i64 16 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %66, i64 8 ; 6 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %66, i64 12 ; 2 uses
  %.sroa.4.0..sroa_idx286.i = getelementptr inbounds nuw i8, ptr %66, i64 24
  %.ptr292.i = getelementptr inbounds nuw i8, ptr %67, i64 16 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %67, i64 8 ; 6 uses
  %i.du = getelementptr inbounds nuw i8, ptr %67, i64 12 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %73, i64 16 ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %73, i64 8 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %72, i64 16 ; 5 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %72, i64 8 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %71, i64 16 ; 5 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %71, i64 8 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %70, i64 16 ; 5 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %70, i64 8 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.ef = getelementptr inbounds nuw i8, ptr %77, i64 16 ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %77, i64 8 ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %76, i64 16 ; 5 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %76, i64 8 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %75, i64 16 ; 5 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %75, i64 8 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %74, i64 16 ; 5 uses
  %i.em = getelementptr inbounds nuw i8, ptr %74, i64 8 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.eo = getelementptr inbounds nuw i8, ptr %i.bh, i64 21 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %79, i64 16 ; 5 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %79, i64 8 ; 2 uses
  %i.er = ptrtoint ptr %i.eo to i64
  %i.es = getelementptr inbounds nuw i8, ptr %78, i64 16 ; 5 uses
  %i.et = getelementptr inbounds nuw i8, ptr %78, i64 8 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %82, i64 16 ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %82, i64 8 ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %81, i64 16 ; 5 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %81, i64 8 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %80, i64 16 ; 5 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %80, i64 8 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.fb = getelementptr inbounds nuw i8, ptr %85, i64 16 ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %85, i64 8 ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %84, i64 16 ; 5 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %84, i64 8 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %83, i64 16 ; 5 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %83, i64 8 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 528
  %.sroa.gep301 = getelementptr inbounds nuw i8, ptr %64, i64 20
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %65, i64 24
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.h, %bb.f
  %.not61.i = phi i1 [ true, %bb.f ], [ false, %bb.h ] ; 5 uses
  %indvars.iv.i = phi i64 [ 0, %bb.f ], [ 1, %bb.h ] ; 4 uses
  %i.fi = select i1 %.not61.i, i64 0, i64 4
  %invariant.gep.i = getelementptr inbounds nuw [16 x i8], ptr %i.ee, i64 %indvars.iv.i
  %invariant.gep296.i = getelementptr inbounds nuw [16 x i8], ptr %i.en, i64 %indvars.iv.i
  %invariant.gep298.i = getelementptr inbounds nuw [80 x i8], ptr %i.fa, i64 %indvars.iv.i
  %invariant.gep300.i = getelementptr inbounds nuw [80 x i8], ptr %i.fh, i64 %indvars.iv.i
  %.sroa.sel302 = select i1 %.not61.i, ptr %i.dk, ptr %.sroa.gep301
  br label %._crit_edge.i.i.i

bb.g:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #25
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.fk = load i8, ptr %i.fj, align 4, !tbaa !325, !range !33, !noundef !34
  %i.fl = trunc nuw i8 %i.fk to i1
  %.not290.i = xor i1 %i.fl, true
  %i.fm = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL30ClKasanMemIntrinCallbackPrefix, i64 120), align 8, !range !33
  %i.fn = trunc nuw i8 %i.fm to i1
  %or.cond.i = select i1 %.not290.i, i1 true, i1 %i.fn
  %i.fo = getelementptr inbounds nuw i8, ptr %86, i64 16 ; 7 uses
  store ptr %i.fo, ptr %86, align 8, !tbaa !178
  br i1 %or.cond.i, label %.critedge.critedge.i, label %._crit_edge.i.i220.i

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167.i
  br i1 %.not61.i, label %.preheader.i, label %bb.g, !llvm.loop !634

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167.i, %.preheader.i
  %.not.i = phi i1 [ true, %.preheader.i ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167.i ] ; 2 uses
  %.056295.i = phi i64 [ 0, %.preheader.i ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #25
  %i.fp = select i1 %.not.i, ptr @.str.208, ptr @.str.207
  store ptr %i.di, ptr %63, align 8, !tbaa !178
  %105 = or disjoint i64 %.056295.i, 4            ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.di, ptr noundef nonnull align 1 dereferenceable(1) %i.fp, i64 %105, i1 false)
  store i64 %105, ptr %i.dj, align 8, !tbaa !179
  %.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.di, i64 %105
  store i8 0, ptr %.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 1, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #25
  store ptr %i.dk, ptr %64, align 8, !tbaa !178
  br i1 %.not61.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit108.i, label %bb.i

bb.i:                                             ; preds = %._crit_edge.i.i.i
  store i32 1601206373, ptr %i.dk, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit108.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit108.i: ; preds = %bb.i, %._crit_edge.i.i.i
  store i64 %i.fi, ptr %i.dl, align 8, !tbaa !179
  store i8 0, ptr %.sroa.sel302, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #25
  %i.fq = load i8, ptr %i.dm, align 1, !tbaa !326, !range !33, !noundef !34
  %i.fr = trunc nuw i8 %i.fq to i1                ; 2 uses
  store ptr %i.dn, ptr %65, align 8, !tbaa !178
  %i.fs = select i1 %i.fr, i64 8, i64 0
  br i1 %i.fr, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit110.i

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit108.i
  store i64 8390891524076826207, ptr %i.dn, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit110.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit110.i: ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit108.i
  %.sroa.sel = phi ptr [ %.sroa.gep, %bb.j ], [ %i.dn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit108.i ]
  store i64 %i.fs, ptr %i.do, align 8, !tbaa !179
  store i8 0, ptr %.sroa.sel, align 1, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #25
  %i.ft = load ptr, ptr %i.dp, align 8, !tbaa !335 ; 3 uses
  store ptr %i.dq, ptr %66, align 8, !tbaa !37
  store i32 3, ptr %i.ds, align 4, !tbaa !296
  store ptr %i.ft, ptr %i.dq, align 8
  store ptr %i.ft, ptr %.sroa.4.0..sroa_idx286.i, align 8
  store i32 2, ptr %i.dr, align 8, !tbaa !297
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #25
  store ptr %.ptr292.i, ptr %67, align 8, !tbaa !37
  store i32 2, ptr %i.du, align 4, !tbaa !296
  store ptr %i.ft, ptr %.ptr292.i, align 8, !tbaa !295
  store i32 1, ptr %i.dt, align 8, !tbaa !297
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #25
  store ptr null, ptr %68, align 8, !tbaa !343
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #25
  store ptr null, ptr %69, align 8, !tbaa !343
  br i1 %.not61.i, label %bb.q, label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit110.i
  %i.fu = load ptr, ptr %i.cu, align 8, !tbaa !332
  %i.fv = call noundef ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.fu) #25 ; 4 uses
  %i.fw = load i32, ptr %i.dr, align 8, !tbaa !297 ; 2 uses
  %i.fx = load i32, ptr %i.ds, align 4, !tbaa !296
  %.not.i.i = icmp ult i32 %i.fw, %i.fx
  br i1 %.not.i.i, label %bb.m, label %bb.l, !prof !344

bb.l:                                             ; preds = %bb.k
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_4TypeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %66, ptr noundef %i.fv)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_4TypeELb1EE9push_backES2_.exit.i

bb.m:                                             ; preds = %bb.k
  %i.fy = zext i32 %i.fw to i64
  %i.fz = load ptr, ptr %66, align 8, !tbaa !37
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %i.fy
  store ptr %i.fv, ptr %i.ga, align 1
  %i.gb = load i32, ptr %i.dr, align 8, !tbaa !297
  %i.gc = add i32 %i.gb, 1
  store i32 %i.gc, ptr %i.dr, align 8, !tbaa !297
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_4TypeELb1EE9push_backES2_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_4TypeELb1EE9push_backES2_.exit.i: ; preds = %bb.m, %bb.l
  %i.gd = load i32, ptr %i.dt, align 8, !tbaa !297 ; 2 uses
  %i.ge = load i32, ptr %i.du, align 4, !tbaa !296
  %.not.i111.i = icmp ult i32 %i.gd, %i.ge
  br i1 %.not.i111.i, label %bb.o, label %bb.n, !prof !344

bb.n:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_4TypeELb1EE9push_backES2_.exit.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_4TypeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %67, ptr noundef %i.fv)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_4TypeELb1EE9push_backES2_.exit112.i

bb.o:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_4TypeELb1EE9push_backES2_.exit.i
  %i.gf = zext i32 %i.gd to i64
  %i.gg = load ptr, ptr %67, align 8, !tbaa !37
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %i.gf
  store ptr %i.fv, ptr %i.gh, align 1
  %i.gi = load i32, ptr %i.dt, align 8, !tbaa !297
  %i.gj = add i32 %i.gi, 1
  store i32 %i.gj, ptr %i.dt, align 8, !tbaa !297
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_4TypeELb1EE9push_backES2_.exit112.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_4TypeELb1EE9push_backES2_.exit112.i: ; preds = %bb.o, %bb.n
  %i.gk = load ptr, ptr %2, align 8, !tbaa !714   ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 160
  %i.gm = load i8, ptr %i.gl, align 8, !tbaa !723, !range !33, !noundef !34
  %i.gn = trunc nuw i8 %i.gm to i1
  %i.go = getelementptr inbounds nuw i8, ptr %i.gk, i64 162
  %i.gp = load i8, ptr %i.go, align 2, !tbaa !724, !range !33, !noundef !34
  %i.gq = trunc nuw i8 %i.gp to i1
  %..i.i.i = select i1 %i.gq, i32 58, i32 0
  %.0.i.i.i = select i1 %i.gn, i32 84, i32 %..i.i.i ; 3 uses
  %.not62.i = icmp eq i32 %.0.i.i.i, 0
  br i1 %.not62.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_4TypeELb1EE9push_backES2_.exit112.i
  %i.gr = load ptr, ptr %i.cu, align 8, !tbaa !332
  %i.gs = call ptr @_ZNK4llvm13AttributeList19addAttributeAtIndexERNS_11LLVMContextEjNS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(8) %68, ptr noundef nonnull align 8 dereferenceable(8) %i.gr, i32 noundef 3, i32 noundef %.0.i.i.i) #25
  store ptr %i.gs, ptr %68, align 8, !tbaa !345
  %i.gt = load ptr, ptr %i.cu, align 8, !tbaa !332
  %i.gu = call ptr @_ZNK4llvm13AttributeList19addAttributeAtIndexERNS_11LLVMContextEjNS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(8) %69, ptr noundef nonnull align 8 dereferenceable(8) %i.gt, i32 noundef 2, i32 noundef %.0.i.i.i) #25
  store ptr %i.gu, ptr %69, align 8, !tbaa !345
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZN4llvm23SmallVectorTemplateBaseIPNS_4TypeELb1EE9push_backES2_.exit112.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit110.i
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !725)
  %i.gv = load ptr, ptr %64, align 8, !tbaa !43, !noalias !725
  %i.gw = load i64, ptr %i.dl, align 8, !tbaa !179, !noalias !725 ; 3 uses
  store ptr %i.dw, ptr %73, align 8, !tbaa !178, !alias.scope !726
  store i64 0, ptr %i.dx, align 8, !tbaa !179, !alias.scope !726
  store i8 0, ptr %i.dw, align 8, !tbaa !44, !alias.scope !726
  %i.gx = add i64 %i.gw, 14
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %73, i64 noundef %i.gx) #25
  %i.gy = load i64, ptr %i.dx, align 8, !tbaa !179, !alias.scope !726
  %i.gz = add i64 %i.gy, -4611686018427387890
  %i.ha = icmp ult i64 %i.gz, 14
  br i1 %i.ha, label %bb.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.173) #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i: ; preds = %bb.q
  %i.hb = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %73, ptr noundef nonnull @_ZL24kAsanReportErrorTemplate, i64 noundef 14) #25 ; 0 uses
  %i.hc = load i64, ptr %i.dx, align 8, !tbaa !179, !alias.scope !726
  %i.hd = sub i64 4611686018427387903, %i.hc
  %i.he = icmp ult i64 %i.hd, %i.gw
  br i1 %i.he, label %bb.s, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit.i

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.173) #27
  unreachable

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i
  %i.hf = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %73, ptr noundef %i.gv, i64 noundef %i.gw) #25 ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !727)
  %i.hg = load i64, ptr %i.dj, align 8, !tbaa !179, !noalias !727 ; 2 uses
  %i.hh = load i64, ptr %i.dx, align 8, !tbaa !179, !noalias !727
  %i.hi = sub i64 4611686018427387903, %i.hh
  %i.hj = icmp ult i64 %i.hi, %i.hg
  br i1 %i.hj, label %bb.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i

bb.t:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.173) #27, !noalias !727
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit.i
  %i.hk = load ptr, ptr %63, align 8, !tbaa !43, !noalias !727
  %i.hl = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %73, ptr noundef %i.hk, i64 noundef %i.hg) #25, !noalias !727 ; 6 uses
  store ptr %i.dy, ptr %72, align 8, !tbaa !178, !alias.scope !727
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !43 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 16 ; 5 uses
  %i.ho = icmp eq ptr %i.hm, %i.hn
  br i1 %i.ho, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !179 ; 3 uses
  %i.hr = icmp ult i64 %i.hq, 16
  call void @llvm.assume(i1 %i.hr)
  %i.hs = add nuw nsw i64 %i.hq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dy, ptr noundef nonnull align 8 dereferenceable(1) %i.hn, i64 %i.hs, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i
  store ptr %i.hm, ptr %72, align 8, !tbaa !43, !alias.scope !727
  %i.ht = load i64, ptr %i.hn, align 8, !tbaa !44
  store i64 %i.ht, ptr %i.dy, align 8, !tbaa !44, !alias.scope !727
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !179
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit.i

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.u
  %i.hu = phi i64 [ %i.hq, %bb.u ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  store i64 %i.hu, ptr %i.dz, align 8, !tbaa !179, !alias.scope !727
  store ptr %i.hn, ptr %i.hl, align 8, !tbaa !43
  store i64 0, ptr %i.hv, align 8, !tbaa !179
  store i8 0, ptr %i.hn, align 8, !tbaa !44
  call void @llvm.experimental.noalias.scope.decl(metadata !728)
  %i.hw = load i64, ptr %i.dz, align 8, !tbaa !179, !noalias !728
  %i.hx = and i64 %i.hw, -2
  %i.hy = icmp eq i64 %i.hx, 4611686018427387902
  br i1 %i.hy, label %bb.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i

bb.v:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.173) #27, !noalias !728
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit.i
  %i.hz = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %72, ptr noundef nonnull @.str.211, i64 noundef 2) #25, !noalias !728 ; 6 uses
end_hunk_0
