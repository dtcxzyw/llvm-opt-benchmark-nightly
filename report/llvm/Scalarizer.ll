Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Scalarizer?download=true
inline.NumInlined: 2963
inline.NumDeleted: 1477
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4llvm14ScalarizerPass3runERNS_8FunctionERNS_15AnalysisManagerIS1_JEEE:bb.a
  store ptr %i.k, ptr %i.j, align 8, !tbaa !41
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i32 0, ptr %i.l, align 8, !tbaa !42
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 60
  store i32 16, ptr %i.m, align 4, !tbaa !43
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 328 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 344 ; 2 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !41
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 336 ; 2 uses
  store i32 0, ptr %i.p, align 8, !tbaa !42
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 340
  store i32 32, ptr %i.q, align 4, !tbaa !43
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 1112
  store ptr %i.b, ptr %i.r, align 8, !tbaa !62
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 1120
  store ptr %i.d, ptr %i.s, align 8, !tbaa !63
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 1128
  %i.u = lshr i64 %.sroa.0.0.copyload, 32
  %i.v = trunc i64 %i.u to i8
  %i.w = and i8 %i.v, 1
  store i8 %i.w, ptr %i.t, align 8, !tbaa !64
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 1129
  %i.y = lshr i64 %.sroa.0.0.copyload, 40
  %i.z = trunc i64 %i.y to i8
  %i.aa = and i8 %i.z, 1
  store i8 %i.aa, ptr %i.x, align 1, !tbaa !65
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 1132
  store i32 %.sroa.0.0.extract.trunc.i, ptr %i.ab, align 4, !tbaa !66
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.val = load ptr, ptr %i.ac, align 8, !tbaa !69
  %i.ad = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_117ScalarizerVisitor5visitERN4llvm8FunctionE(ptr noundef nonnull align 8 dereferenceable(1136) %4, ptr %.val)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.ae, ptr %5, align 8, !tbaa !72
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 2, ptr %i.af, align 8, !tbaa !73
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 0, ptr %i.ag, align 4, !tbaa !74
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store i8 1, ptr %i.ah, align 8, !tbaa !75
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 64
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !72
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i32 2, ptr %i.ak, align 8, !tbaa !73
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 52
  store i32 0, ptr %i.al, align 4, !tbaa !74
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  store i8 1, ptr %i.am, align 8, !tbaa !75
  %i.an = call noundef nonnull align 8 dereferenceable(80) ptr @_ZN4llvm17PreservedAnalyses8preserveEPNS_11AnalysisKeyE(ptr noundef nonnull align 8 dereferenceable(80) %5, ptr noundef nonnull @_ZN4llvm21DominatorTreeAnalysis3KeyE) ; 0 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN4llvm19SmallPtrSetImplBaseC2EPPKvRKS0_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.ao, ptr noundef nonnull align 8 dereferenceable(80) %5) #15
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_ZN4llvm19SmallPtrSetImplBaseC2EPPKvRKS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.ap, ptr noundef nonnull %i.aq, ptr noundef nonnull align 8 dereferenceable(40) %i.ai) #15
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store ptr %i.ao, ptr %0, align 8, !tbaa !72, !alias.scope !238
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 2, ptr %i.ar, align 8, !tbaa !73, !alias.scope !238
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.at, align 8, !tbaa !75, !alias.scope !238
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.av, ptr %i.au, align 8, !tbaa !72, !alias.scope !238
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 2, ptr %i.aw, align 8, !tbaa !73, !alias.scope !238
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %i.ax, align 4, !tbaa !74, !alias.scope !238
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %i.ay, align 8, !tbaa !75, !alias.scope !238
  store i32 1, ptr %i.as, align 4, !tbaa !74, !alias.scope !238, !noalias !239
  store ptr @_ZN4llvm17PreservedAnalyses14AllAnalysesKeyE, ptr %i.ao, align 8, !tbaa !17, !alias.scope !238, !noalias !239
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.az = load i8, ptr %i.am, align 8, !tbaa !75, !range !76, !noundef !77
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = load ptr, ptr %i.ai, align 8, !tbaa !72
  call void @free(ptr noundef %i.bb) #15
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i:         ; preds = %bb.e, %bb.d
  %i.bc = load i8, ptr %i.ah, align 8, !tbaa !75, !range !76, !noundef !77
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %_ZN4llvm17PreservedAnalysesD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i
  %i.be = load ptr, ptr %5, align 8, !tbaa !72
  call void @free(ptr noundef %i.be) #15
  br label %_ZN4llvm17PreservedAnalysesD2Ev.exit

_ZN4llvm17PreservedAnalysesD2Ev.exit:             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.bf = load ptr, ptr %i.n, align 8, !tbaa !41  ; 3 uses
  %i.bg = load i32, ptr %i.p, align 8, !tbaa !42  ; 2 uses
  %.not4.i.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not4.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_14WeakTrackingVHELb0EE13destroy_rangeEPS1_S3_.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %_ZN4llvm17PreservedAnalysesD2Ev.exit
  %i.bh = zext i32 %i.bg to i64
  %.idx.i.i = mul nuw nsw i64 %i.bh, 24
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.idx.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i.i, %.lr.ph.i.preheader.i.i
  %.05.i.i.i = phi ptr [ %i.bj, %_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i.i ], [ %i.bi, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %i.bj = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -24 ; 3 uses
  %i.bk = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !83
  %.not.i.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i
  call void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bj) #15
  br label %_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i.i

_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i.i:         ; preds = %bb.g, %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %i.bf, %i.bj
  br i1 %.not.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_14WeakTrackingVHELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZN4llvm23SmallVectorTemplateBaseINS_14WeakTrackingVHELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i: ; preds = %_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i.i
  %.pre.i.i = load ptr, ptr %i.n, align 8, !tbaa !41
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_14WeakTrackingVHELb0EE13destroy_rangeEPS1_S3_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseINS_14WeakTrackingVHELb0EE13destroy_rangeEPS1_S3_.exit.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_14WeakTrackingVHELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i, %_ZN4llvm17PreservedAnalysesD2Ev.exit
  %i.bm = phi ptr [ %.pre.i.i, %_ZN4llvm23SmallVectorTemplateBaseINS_14WeakTrackingVHELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i ], [ %i.bf, %_ZN4llvm17PreservedAnalysesD2Ev.exit ] ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.o
  br i1 %i.bn, label %_ZN4llvm11SmallVectorINS_14WeakTrackingVHELj32EED2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_14WeakTrackingVHELb0EE13destroy_rangeEPS1_S3_.exit.i.i
  call void @free(ptr noundef %i.bm) #15
  br label %_ZN4llvm11SmallVectorINS_14WeakTrackingVHELj32EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_14WeakTrackingVHELj32EED2Ev.exit.i: ; preds = %bb.h, %_ZN4llvm23SmallVectorTemplateBaseINS_14WeakTrackingVHELb0EE13destroy_rangeEPS1_S3_.exit.i.i
  %i.bo = load ptr, ptr %i.j, align 8, !tbaa !41  ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.k
  br i1 %i.bp, label %_ZN12_GLOBAL__N_117ScalarizerVisitorD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm11SmallVectorINS_14WeakTrackingVHELj32EED2Ev.exit.i
  call void @free(ptr noundef %i.bo) #15
  br label %_ZN12_GLOBAL__N_117ScalarizerVisitorD2Ev.exit

_ZN12_GLOBAL__N_117ScalarizerVisitorD2Ev.exit:    ; preds = %_ZN4llvm11SmallVectorINS_14WeakTrackingVHELj32EED2Ev.exit.i, %bb.i
  %i.bq = load ptr, ptr %i.f, align 8, !tbaa !36
  call void @_ZNSt8_Rb_treeISt4pairIPN4llvm5ValueEPNS1_4TypeEES0_IKS6_NS1_11SmallVectorIS3_Lj8EEEESt10_Select1stISA_ESt4lessIS6_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(1136) %4, ptr noundef %i.bq)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_117ScalarizerVisitor5visitERN4llvm8FunctionE(ptr noundef nonnull align 8 dereferenceable(1136) initializes((320, 321)) %0, ptr %.88.val) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %2 = alloca %"class.llvm::InsertPosition", align 8 ; 4 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %5 = alloca %"class.std::optional.135", align 8 ; 12 uses
  %6 = alloca %"class.std::optional.135", align 8 ; 11 uses
  %7 = alloca %"class.llvm::IRBuilder", align 8   ; 19 uses
  %8 = alloca %"class.(anonymous namespace)::Scatterer", align 8 ; 6 uses
  %9 = alloca %"class.llvm::SmallVector.143", align 8 ; 11 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %12 = alloca %"class.std::optional.193", align 8 ; 12 uses
  %13 = alloca %"class.llvm::IRBuilder", align 8  ; 20 uses
  %14 = alloca %"class.(anonymous namespace)::Scatterer", align 8 ; 7 uses
  %15 = alloca %"class.llvm::SmallVector.143", align 8 ; 12 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 11 uses
  %17 = alloca %"class.llvm::Twine", align 8      ; 12 uses
  %18 = alloca %"class.std::optional.193", align 8 ; 10 uses
  %19 = alloca %"class.llvm::IRBuilder", align 8  ; 19 uses
  %20 = alloca %"class.(anonymous namespace)::Scatterer", align 8 ; 6 uses
  %21 = alloca %"class.(anonymous namespace)::Scatterer", align 8 ; 6 uses
  %22 = alloca %"class.llvm::SmallVector.143", align 8 ; 11 uses
  %23 = alloca %"class.llvm::InsertPosition", align 8 ; 4 uses
  %24 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %25 = alloca %"class.std::optional.135", align 8 ; 10 uses
  %26 = alloca %"class.llvm::IRBuilder", align 8  ; 19 uses
  %27 = alloca %"class.llvm::SmallVector.143", align 8 ; 12 uses
  %28 = alloca %"class.llvm::SmallVector.227", align 8 ; 11 uses
  %29 = alloca %"class.std::optional.135", align 8 ; 10 uses
  %30 = alloca %"class.(anonymous namespace)::Scatterer", align 8 ; 6 uses
  %31 = alloca %"class.llvm::SmallVector.143", align 8 ; 12 uses
  %32 = alloca %"class.llvm::SmallVector.143", align 8 ; 11 uses
  %33 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %34 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %35 = alloca %"class.std::optional.135", align 8 ; 10 uses
  %36 = alloca %"class.std::optional.135", align 8 ; 10 uses
  %37 = alloca %"class.llvm::IRBuilder", align 8  ; 22 uses
  %38 = alloca %"class.(anonymous namespace)::Scatterer", align 8 ; 8 uses
  %39 = alloca %"class.llvm::SmallVector.143", align 8 ; 13 uses
  %40 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %41 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %42 = alloca %"struct.(anonymous namespace)::VectorSplit", align 8 ; 8 uses
  %43 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %44 = alloca %"class.(anonymous namespace)::Scatterer", align 8 ; 6 uses
  %45 = alloca %"struct.(anonymous namespace)::VectorSplit", align 8 ; 8 uses
  %46 = alloca %"class.llvm::SmallVector.143", align 8 ; 10 uses
  %47 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %48 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %49 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %50 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %51 = alloca %"class.std::optional.135", align 8 ; 12 uses
  %52 = alloca %"class.std::optional.135", align 8 ; 12 uses
  %53 = alloca %"class.llvm::IRBuilder", align 8  ; 19 uses
  %54 = alloca %"class.(anonymous namespace)::Scatterer", align 8 ; 6 uses
  %55 = alloca %"class.(anonymous namespace)::Scatterer", align 8 ; 6 uses
  %56 = alloca %"class.llvm::SmallVector.143", align 8 ; 11 uses
  %57 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %58 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %59 = alloca %"class.std::optional.135", align 8 ; 12 uses
  %60 = alloca %"class.std::optional.135", align 8 ; 12 uses
  %61 = alloca %"class.llvm::IRBuilder", align 8  ; 19 uses
  %62 = alloca %"class.(anonymous namespace)::Scatterer", align 8 ; 6 uses
  %63 = alloca %"class.(anonymous namespace)::Scatterer", align 8 ; 6 uses
  %64 = alloca %"class.llvm::SmallVector.143", align 8 ; 11 uses
  %65 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %66 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %67 = alloca %"class.std::optional.135", align 8 ; 12 uses
  %68 = alloca %"class.llvm::IRBuilder", align 8  ; 20 uses
  %69 = alloca %"class.llvm::SmallVector.143", align 8 ; 13 uses
  %70 = alloca %"class.llvm::Twine", align 8      ; 11 uses
  %71 = alloca %"class.llvm::Twine", align 8      ; 12 uses
  %72 = alloca %"class.(anonymous namespace)::Scatterer", align 8 ; 9 uses
  %73 = alloca %"class.std::optional.135", align 8 ; 12 uses
  %74 = alloca %"class.llvm::SmallVector.143", align 8 ; 12 uses
  %75 = alloca %"class.llvm::SmallVector.227", align 8 ; 11 uses
  %76 = alloca %"class.llvm::SmallVector.172", align 8 ; 12 uses
  %77 = alloca %"class.llvm::SmallVector.233", align 8 ; 19 uses
  %78 = alloca %"class.std::optional.135", align 8 ; 10 uses
  %79 = alloca %"class.(anonymous namespace)::Scatterer", align 8 ; 6 uses
  %80 = alloca %"class.llvm::SmallVector.143", align 8 ; 11 uses
  %81 = alloca %"class.llvm::SmallVector.143", align 8 ; 18 uses
  %82 = alloca %"class.llvm::IRBuilder", align 8  ; 19 uses
  %83 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %84 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %85 = alloca %"class.std::optional.135", align 8 ; 13 uses
  %86 = alloca %"class.std::optional.135", align 8 ; 11 uses
  %87 = alloca %"class.llvm::IRBuilder", align 8  ; 20 uses
  %88 = alloca %"class.(anonymous namespace)::Scatterer", align 8 ; 7 uses
  %89 = alloca %"class.(anonymous namespace)::Scatterer", align 8 ; 7 uses
  %90 = alloca %"class.llvm::SmallVector.143", align 8 ; 12 uses
  %91 = alloca %"class.(anonymous namespace)::Scatterer", align 8 ; 8 uses
  %92 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %93 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %94 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %95 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %96 = alloca %"class.std::optional.135", align 8 ; 10 uses
  %97 = alloca %"class.llvm::IRBuilder", align 8  ; 21 uses
  %98 = alloca %"class.(anonymous namespace)::Scatterer", align 8 ; 7 uses
  %99 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %100 = alloca %"class.llvm::Twine", align 8     ; 7 uses
  %101 = alloca %"class.llvm::Twine", align 8     ; 8 uses
  %102 = alloca %"class.llvm::Twine", align 8     ; 7 uses
  %103 = alloca %"class.llvm::Twine", align 8     ; 8 uses
  %104 = alloca %"class.std::optional.135", align 8 ; 11 uses
  %105 = alloca %"class.llvm::IRBuilder", align 8 ; 22 uses
  %106 = alloca %"class.(anonymous namespace)::Scatterer", align 8 ; 12 uses
  %107 = alloca %"class.llvm::SmallVector.143", align 8 ; 18 uses
  %108 = alloca %"class.llvm::Twine", align 8     ; 7 uses
  %109 = alloca %"class.llvm::Twine", align 8     ; 7 uses
  %110 = alloca %"class.llvm::Twine", align 8     ; 8 uses
  %111 = alloca %"class.llvm::Twine", align 8     ; 7 uses
  %112 = alloca %"class.llvm::Twine", align 8     ; 8 uses
  %113 = alloca %"class.std::optional.135", align 8 ; 10 uses
  %114 = alloca %"class.std::optional.135", align 8 ; 11 uses
  %115 = alloca %"class.(anonymous namespace)::Scatterer", align 8 ; 7 uses
  %116 = alloca %"class.(anonymous namespace)::Scatterer", align 8 ; 6 uses
  %117 = alloca %"class.llvm::SmallVector.143", align 8 ; 11 uses
  %118 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %119 = alloca %"class.llvm::SmallVector.143", align 8 ; 10 uses
  %120 = alloca %"class.std::optional.135", align 8 ; 9 uses
  %121 = alloca %"class.llvm::IRBuilder", align 8 ; 19 uses
  %122 = alloca %"class.(anonymous namespace)::Scatterer", align 8 ; 7 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %123 = alloca %"class.llvm::Twine", align 8     ; 7 uses
  %124 = alloca %"class.llvm::Twine", align 8     ; 8 uses
  %125 = alloca %"class.std::optional.135", align 8 ; 9 uses
  %126 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %127 = alloca %"class.std::optional.135", align 8 ; 12 uses
  %128 = alloca %"class.std::optional.135", align 8 ; 11 uses
  %129 = alloca %"class.llvm::IRBuilder", align 8 ; 19 uses
  %130 = alloca %"class.(anonymous namespace)::Scatterer", align 8 ; 6 uses
  %131 = alloca %"class.llvm::SmallVector.143", align 8 ; 11 uses
  %132 = alloca %"class.llvm::Twine", align 8     ; 7 uses
  %133 = alloca %"class.llvm::Twine", align 8     ; 8 uses
  %134 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %135 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %i.d = alloca ptr, align 8                      ; 13 uses
  %136 = alloca %"class.llvm::IRBuilder", align 8 ; 20 uses
  %137 = alloca %"struct.(anonymous namespace)::VectorSplit", align 8 ; 8 uses
  %138 = alloca %"class.llvm::Twine", align 8     ; 7 uses
  %139 = alloca %"class.llvm::IRBuilder", align 8 ; 22 uses
  %140 = alloca %"class.llvm::SmallVector.245", align 8 ; 12 uses
  %i.e = alloca i32, align 4                      ; 10 uses
  %141 = alloca %"class.llvm::Twine", align 8     ; 7 uses
  %142 = alloca %"class.llvm::Twine", align 8     ; 8 uses
  %i.f = alloca i32, align 4                      ; 9 uses
  %143 = alloca %"struct.(anonymous namespace)::VectorSplit", align 8 ; 8 uses
  %144 = alloca %"class.llvm::Twine", align 8     ; 7 uses
  %145 = alloca %"class.llvm::Twine", align 8     ; 8 uses
  %146 = alloca %"class.std::function.250", align 8 ; 7 uses
  %147 = alloca %"class.llvm::ReversePostOrderTraversal", align 8 ; 9 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 6 uses
  store i8 0, ptr %i.h, align 8, !tbaa !467
  call void @llvm.lifetime.start.p0(ptr nonnull %147) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #15
  %i.i = getelementptr inbounds i8, ptr %.88.val, i64 -24
  store ptr %i.i, ptr %i.g, align 8, !tbaa !86
  %i.j = getelementptr inbounds nuw i8, ptr %147, i64 16 ; 2 uses
  store ptr %i.j, ptr %147, align 8, !tbaa !41
  %i.k = getelementptr inbounds nuw i8, ptr %147, i64 8 ; 2 uses
  store i32 0, ptr %i.k, align 8, !tbaa !42
  %i.l = getelementptr inbounds nuw i8, ptr %147, i64 12
  store i32 8, ptr %i.l, align 4, !tbaa !43
  call void @_ZN4llvm25ReversePostOrderTraversalIPNS_10BasicBlockENS_11GraphTraitsIS2_EEE10InitializeERKS2_(ptr noundef nonnull align 8 dereferenceable(80) %147, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #15
  %i.m = load ptr, ptr %147, align 8, !tbaa !41, !noalias !468 ; 2 uses
  %i.n = load i32, ptr %i.k, align 8, !tbaa !42, !noalias !468 ; 2 uses
  %.not82 = icmp eq i32 %i.n, 0
  br i1 %.not82, label %._crit_edge, label %.lr.ph84

.lr.ph84:                                         ; preds = %bb.a
  %i.o = zext i32 %i.n to i64
  %.idx = shl nuw nsw i64 %i.o, 3
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1132 ; 28 uses
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %127, i64 8
  %.sroa.10.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %127, i64 12
  %.sroa.12.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %127, i64 16
  %.sroa.14.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %127, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %127, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %128, i64 32
  %.sroa.4.0..sroa_idx.i.i.i17 = getelementptr inbounds nuw i8, ptr %128, i64 8
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %128, i64 12
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %128, i64 16
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %128, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %129, i64 88 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %129, i64 96 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %129, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %129, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %129, i64 48 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %129, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %129, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %129, i64 68
  %i.ab = getelementptr inbounds nuw i8, ptr %129, i64 69
  %i.ac = getelementptr inbounds nuw i8, ptr %129, i64 70
  %i.ad = getelementptr inbounds nuw i8, ptr %129, i64 72
  %i.ae = getelementptr inbounds nuw i8, ptr %129, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %129, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %129, i64 24 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %131, i64 16 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %131, i64 8 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %131, i64 12
  %i.aj = getelementptr inbounds nuw i8, ptr %133, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %133, i64 33
  %i.al = getelementptr inbounds nuw i8, ptr %133, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %133, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %132, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %132, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %132, i64 33
  %i.aq = getelementptr inbounds nuw i8, ptr %126, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %130, i64 80
  %i.as = getelementptr inbounds nuw i8, ptr %130, i64 96
  %i.at = getelementptr inbounds nuw i8, ptr %119, i64 16 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %119, i64 8 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %119, i64 12 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i.i29 = getelementptr inbounds nuw i8, ptr %120, i64 8
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %120, i64 12
  %.sroa.12.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %120, i64 16
  %.sroa.14.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %120, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %120, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %121, i64 88 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %121, i64 96 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %121, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %121, i64 40 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %121, i64 48 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %121, i64 56
  %i.bd = getelementptr inbounds nuw i8, ptr %121, i64 64
  %i.be = getelementptr inbounds nuw i8, ptr %121, i64 68
  %i.bf = getelementptr inbounds nuw i8, ptr %121, i64 69
  %i.bg = getelementptr inbounds nuw i8, ptr %121, i64 70
  %i.bh = getelementptr inbounds nuw i8, ptr %121, i64 72
  %i.bi = getelementptr inbounds nuw i8, ptr %121, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %121, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %121, i64 24 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %122, i64 44 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %124, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %124, i64 33
  %i.bn = getelementptr inbounds nuw i8, ptr %124, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %124, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %123, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %123, i64 32
  %i.br = getelementptr inbounds nuw i8, ptr %123, i64 33
  %i.bs = getelementptr inbounds nuw i8, ptr %118, i64 32
  %.sroa.6.0..sroa_idx.i83.i.i = getelementptr inbounds nuw i8, ptr %125, i64 8
  %.sroa.10.0..sroa_idx.i84.i.i = getelementptr inbounds nuw i8, ptr %125, i64 12
  %.sroa.12.0..sroa_idx.i85.i.i = getelementptr inbounds nuw i8, ptr %125, i64 16
  %.sroa.14.0..sroa_idx.i86.i.i = getelementptr inbounds nuw i8, ptr %125, i64 24
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_117ScalarizerVisitor5visitERN4llvm8FunctionE:bb.a
  %i.ga = getelementptr inbounds nuw i8, ptr %92, i64 16
  %i.gb = getelementptr inbounds nuw i8, ptr %92, i64 32
  %i.gc = getelementptr inbounds nuw i8, ptr %92, i64 33
  %i.gd = getelementptr inbounds nuw i8, ptr %91, i64 80
  %i.ge = getelementptr inbounds nuw i8, ptr %91, i64 96
  %i.gf = getelementptr inbounds nuw i8, ptr %89, i64 80
  %i.gg = getelementptr inbounds nuw i8, ptr %89, i64 96
  %i.gh = getelementptr inbounds nuw i8, ptr %88, i64 80
  %i.gi = getelementptr inbounds nuw i8, ptr %88, i64 96
  %i.gj = getelementptr inbounds nuw i8, ptr %73, i64 32
  %.sroa.4217.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %73, i64 8
  %.sroa.5218.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %73, i64 12
  %.sroa.6219.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %73, i64 16
  %.sroa.7220.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %73, i64 24
  %i.gk = getelementptr inbounds nuw i8, ptr %74, i64 16 ; 4 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %74, i64 8 ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %74, i64 12
  %i.gn = getelementptr inbounds nuw i8, ptr %76, i64 16 ; 4 uses
  %i.go = getelementptr inbounds nuw i8, ptr %76, i64 8 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %76, i64 12
  %i.gq = getelementptr inbounds nuw i8, ptr %77, i64 16 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %77, i64 8 ; 15 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %77, i64 12 ; 5 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 6 uses
  %.sroa.6.0..sroa_idx.i162.i.i.i = getelementptr inbounds nuw i8, ptr %78, i64 8
  %.sroa.10.0..sroa_idx.i163.i.i.i = getelementptr inbounds nuw i8, ptr %78, i64 12
  %.sroa.12.0..sroa_idx.i164.i.i.i = getelementptr inbounds nuw i8, ptr %78, i64 16
  %.sroa.14.0..sroa_idx.i165.i.i.i = getelementptr inbounds nuw i8, ptr %78, i64 24
  %i.gu = getelementptr inbounds nuw i8, ptr %78, i64 32
  %i.gv = getelementptr inbounds nuw i8, ptr %79, i64 80 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %79, i64 96
  %i.gx = getelementptr inbounds nuw i8, ptr %80, i64 16 ; 4 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %80, i64 8 ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %80, i64 12
  %i.ha = getelementptr inbounds nuw i8, ptr %81, i64 16 ; 4 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %81, i64 8 ; 17 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %81, i64 12 ; 5 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %82, i64 88 ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %82, i64 96 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %82, i64 32
  %i.hg = getelementptr inbounds nuw i8, ptr %82, i64 40
  %i.hh = getelementptr inbounds nuw i8, ptr %82, i64 48
  %i.hi = getelementptr inbounds nuw i8, ptr %82, i64 56
  %i.hj = getelementptr inbounds nuw i8, ptr %82, i64 64
  %i.hk = getelementptr inbounds nuw i8, ptr %82, i64 68
  %i.hl = getelementptr inbounds nuw i8, ptr %82, i64 69
  %i.hm = getelementptr inbounds nuw i8, ptr %82, i64 70
  %i.hn = getelementptr inbounds nuw i8, ptr %82, i64 72
  %i.ho = getelementptr inbounds nuw i8, ptr %82, i64 8
  %i.hp = getelementptr inbounds nuw i8, ptr %82, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i.i154 = getelementptr inbounds nuw i8, ptr %82, i64 24
  %i.hq = getelementptr inbounds nuw i8, ptr %84, i64 32
  %i.hr = getelementptr inbounds nuw i8, ptr %84, i64 33
  %i.hs = getelementptr inbounds nuw i8, ptr %84, i64 8
  %i.ht = getelementptr inbounds nuw i8, ptr %84, i64 16
  %i.hu = getelementptr inbounds nuw i8, ptr %83, i64 16
  %i.hv = getelementptr inbounds nuw i8, ptr %83, i64 32
  %i.hw = getelementptr inbounds nuw i8, ptr %83, i64 33
  %i.hx = getelementptr inbounds nuw i8, ptr %75, i64 8
  %i.hy = getelementptr inbounds nuw i8, ptr %75, i64 16
  %.sroa.6.0..sroa_idx.i.i.i179 = getelementptr inbounds nuw i8, ptr %67, i64 8
  %.sroa.10.0..sroa_idx.i.i.i180 = getelementptr inbounds nuw i8, ptr %67, i64 12
  %.sroa.12.0..sroa_idx.i.i.i181 = getelementptr inbounds nuw i8, ptr %67, i64 16
  %.sroa.14.0..sroa_idx.i.i.i182 = getelementptr inbounds nuw i8, ptr %67, i64 24
  %i.hz = getelementptr inbounds nuw i8, ptr %67, i64 32
  %i.ia = getelementptr inbounds nuw i8, ptr %68, i64 88 ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %68, i64 96 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %68, i64 32
  %i.id = getelementptr inbounds nuw i8, ptr %68, i64 40
  %i.ie = getelementptr inbounds nuw i8, ptr %68, i64 48 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %68, i64 56 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %68, i64 64 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %68, i64 68
  %i.ii = getelementptr inbounds nuw i8, ptr %68, i64 69
  %i.ij = getelementptr inbounds nuw i8, ptr %68, i64 70
  %i.ik = getelementptr inbounds nuw i8, ptr %68, i64 72
  %i.il = getelementptr inbounds nuw i8, ptr %68, i64 8
  %i.im = getelementptr inbounds nuw i8, ptr %68, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i183 = getelementptr inbounds nuw i8, ptr %68, i64 24 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %69, i64 16 ; 4 uses
  %i.io = getelementptr inbounds nuw i8, ptr %69, i64 8 ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %69, i64 12
  %i.iq = getelementptr inbounds nuw i8, ptr %71, i64 32 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %71, i64 33 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %71, i64 8 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %71, i64 16 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %70, i64 16 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %70, i64 32 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %70, i64 33 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.iy = getelementptr inbounds nuw i8, ptr %72, i64 80 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %72, i64 96 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i.i.i207 = getelementptr inbounds nuw i8, ptr %59, i64 8
  %.sroa.10.0..sroa_idx.i.i.i.i208 = getelementptr inbounds nuw i8, ptr %59, i64 12
  %.sroa.12.0..sroa_idx.i.i.i.i209 = getelementptr inbounds nuw i8, ptr %59, i64 16
  %.sroa.14.0..sroa_idx.i.i.i.i210 = getelementptr inbounds nuw i8, ptr %59, i64 24
  %i.ja = getelementptr inbounds nuw i8, ptr %59, i64 32
  %i.jb = getelementptr inbounds nuw i8, ptr %60, i64 32
  %.sroa.4.0..sroa_idx.i.i.i218 = getelementptr inbounds nuw i8, ptr %60, i64 8
  %.sroa.5.0..sroa_idx.i.i.i219 = getelementptr inbounds nuw i8, ptr %60, i64 12
  %.sroa.6.0..sroa_idx.i.i.i220 = getelementptr inbounds nuw i8, ptr %60, i64 16
  %.sroa.7.0..sroa_idx.i.i.i221 = getelementptr inbounds nuw i8, ptr %60, i64 24
  %i.jc = getelementptr inbounds nuw i8, ptr %61, i64 88 ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %61, i64 96 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %61, i64 32
  %i.jf = getelementptr inbounds nuw i8, ptr %61, i64 40
  %i.jg = getelementptr inbounds nuw i8, ptr %61, i64 48
  %i.jh = getelementptr inbounds nuw i8, ptr %61, i64 56
  %i.ji = getelementptr inbounds nuw i8, ptr %61, i64 64
  %i.jj = getelementptr inbounds nuw i8, ptr %61, i64 68
  %i.jk = getelementptr inbounds nuw i8, ptr %61, i64 69
  %i.jl = getelementptr inbounds nuw i8, ptr %61, i64 70
  %i.jm = getelementptr inbounds nuw i8, ptr %61, i64 72
  %i.jn = getelementptr inbounds nuw i8, ptr %61, i64 8
  %i.jo = getelementptr inbounds nuw i8, ptr %61, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i.i226 = getelementptr inbounds nuw i8, ptr %61, i64 24
  %i.jp = getelementptr inbounds nuw i8, ptr %64, i64 16 ; 4 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %64, i64 8 ; 3 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %64, i64 12
  %i.js = getelementptr inbounds nuw i8, ptr %66, i64 32
  %i.jt = getelementptr inbounds nuw i8, ptr %66, i64 33
  %i.ju = getelementptr inbounds nuw i8, ptr %66, i64 8
  %i.jv = getelementptr inbounds nuw i8, ptr %66, i64 16
  %i.jw = getelementptr inbounds nuw i8, ptr %65, i64 16
  %i.jx = getelementptr inbounds nuw i8, ptr %65, i64 32
  %i.jy = getelementptr inbounds nuw i8, ptr %65, i64 33
  %i.jz = getelementptr inbounds nuw i8, ptr %63, i64 80
  %i.ka = getelementptr inbounds nuw i8, ptr %63, i64 96
  %i.kb = getelementptr inbounds nuw i8, ptr %62, i64 80
  %i.kc = getelementptr inbounds nuw i8, ptr %62, i64 96
  %.sroa.6.0..sroa_idx.i.i.i.i252 = getelementptr inbounds nuw i8, ptr %51, i64 8
  %.sroa.10.0..sroa_idx.i.i.i.i253 = getelementptr inbounds nuw i8, ptr %51, i64 12
  %.sroa.12.0..sroa_idx.i.i.i.i254 = getelementptr inbounds nuw i8, ptr %51, i64 16
  %.sroa.14.0..sroa_idx.i.i.i.i255 = getelementptr inbounds nuw i8, ptr %51, i64 24
  %i.kd = getelementptr inbounds nuw i8, ptr %51, i64 32
  %i.ke = getelementptr inbounds nuw i8, ptr %52, i64 32
  %.sroa.4.0..sroa_idx.i.i.i269 = getelementptr inbounds nuw i8, ptr %52, i64 8
  %.sroa.5.0..sroa_idx.i.i.i270 = getelementptr inbounds nuw i8, ptr %52, i64 12
  %.sroa.6.0..sroa_idx.i.i.i271 = getelementptr inbounds nuw i8, ptr %52, i64 16
  %.sroa.7.0..sroa_idx.i.i.i272 = getelementptr inbounds nuw i8, ptr %52, i64 24
  %i.kf = getelementptr inbounds nuw i8, ptr %53, i64 88 ; 3 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %53, i64 96 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %53, i64 32
  %i.ki = getelementptr inbounds nuw i8, ptr %53, i64 40 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %53, i64 48 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %53, i64 56
  %i.kl = getelementptr inbounds nuw i8, ptr %53, i64 64
  %i.km = getelementptr inbounds nuw i8, ptr %53, i64 68
  %i.kn = getelementptr inbounds nuw i8, ptr %53, i64 69
  %i.ko = getelementptr inbounds nuw i8, ptr %53, i64 70
  %i.kp = getelementptr inbounds nuw i8, ptr %53, i64 72
  %i.kq = getelementptr inbounds nuw i8, ptr %53, i64 8
  %i.kr = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i278 = getelementptr inbounds nuw i8, ptr %53, i64 24 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %56, i64 16 ; 4 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %56, i64 8 ; 3 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %56, i64 12
  %i.kv = getelementptr inbounds nuw i8, ptr %58, i64 32
  %i.kw = getelementptr inbounds nuw i8, ptr %58, i64 33
  %i.kx = getelementptr inbounds nuw i8, ptr %58, i64 8
  %i.ky = getelementptr inbounds nuw i8, ptr %58, i64 16
  %i.kz = getelementptr inbounds nuw i8, ptr %57, i64 16
  %i.la = getelementptr inbounds nuw i8, ptr %57, i64 32
  %i.lb = getelementptr inbounds nuw i8, ptr %57, i64 33
  %i.lc = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ld = getelementptr inbounds nuw i8, ptr %55, i64 80
  %i.le = getelementptr inbounds nuw i8, ptr %55, i64 96
  %i.lf = getelementptr inbounds nuw i8, ptr %54, i64 80
  %i.lg = getelementptr inbounds nuw i8, ptr %54, i64 96
  %.sroa.6.0..sroa_idx.i.i.i343 = getelementptr inbounds nuw i8, ptr %35, i64 8
  %.sroa.10.0..sroa_idx.i.i.i344 = getelementptr inbounds nuw i8, ptr %35, i64 12
  %.sroa.12.0..sroa_idx.i.i.i345 = getelementptr inbounds nuw i8, ptr %35, i64 16
  %.sroa.14.0..sroa_idx.i.i.i346 = getelementptr inbounds nuw i8, ptr %35, i64 24
  %i.lh = getelementptr inbounds nuw i8, ptr %35, i64 32
  %.sroa.6.0..sroa_idx.i91.i.i = getelementptr inbounds nuw i8, ptr %36, i64 8
  %.sroa.10.0..sroa_idx.i92.i.i = getelementptr inbounds nuw i8, ptr %36, i64 12
  %.sroa.12.0..sroa_idx.i93.i.i = getelementptr inbounds nuw i8, ptr %36, i64 16
  %.sroa.14.0..sroa_idx.i94.i.i = getelementptr inbounds nuw i8, ptr %36, i64 24
  %i.li = getelementptr inbounds nuw i8, ptr %36, i64 32
  %i.lj = getelementptr inbounds nuw i8, ptr %37, i64 88 ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %37, i64 96 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %37, i64 32
  %i.lm = getelementptr inbounds nuw i8, ptr %37, i64 40
  %i.ln = getelementptr inbounds nuw i8, ptr %37, i64 48
  %i.lo = getelementptr inbounds nuw i8, ptr %37, i64 56
  %i.lp = getelementptr inbounds nuw i8, ptr %37, i64 64
  %i.lq = getelementptr inbounds nuw i8, ptr %37, i64 68
  %i.lr = getelementptr inbounds nuw i8, ptr %37, i64 69
  %i.ls = getelementptr inbounds nuw i8, ptr %37, i64 70
  %i.lt = getelementptr inbounds nuw i8, ptr %37, i64 72
  %i.lu = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.lv = getelementptr inbounds nuw i8, ptr %37, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i310 = getelementptr inbounds nuw i8, ptr %37, i64 24
  %i.lw = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 4 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 3 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %39, i64 12
  %i.lz = getelementptr inbounds nuw i8, ptr %45, i64 24
  %i.ma = getelementptr inbounds nuw i8, ptr %45, i64 12
  %i.mb = getelementptr inbounds nuw i8, ptr %45, i64 8
  %i.mc = getelementptr inbounds nuw i8, ptr %45, i64 16
  %i.md = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 3 uses
  %i.me = getelementptr inbounds nuw i8, ptr %46, i64 8 ; 3 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %46, i64 12
  %i.mg = getelementptr inbounds nuw i8, ptr %48, i64 32
  %i.mh = getelementptr inbounds nuw i8, ptr %48, i64 33
  %i.mi = getelementptr inbounds nuw i8, ptr %48, i64 8
  %i.mj = getelementptr inbounds nuw i8, ptr %48, i64 16
  %i.mk = getelementptr inbounds nuw i8, ptr %47, i64 16
  %i.ml = getelementptr inbounds nuw i8, ptr %47, i64 32
  %i.mm = getelementptr inbounds nuw i8, ptr %47, i64 33
  %i.mn = getelementptr inbounds nuw i8, ptr %50, i64 32
  %i.mo = getelementptr inbounds nuw i8, ptr %50, i64 33
  %i.mp = getelementptr inbounds nuw i8, ptr %50, i64 8
  %i.mq = getelementptr inbounds nuw i8, ptr %50, i64 16
  %i.mr = getelementptr inbounds nuw i8, ptr %49, i64 16
  %i.ms = getelementptr inbounds nuw i8, ptr %49, i64 32
  %i.mt = getelementptr inbounds nuw i8, ptr %49, i64 33
  %i.mu = getelementptr inbounds nuw i8, ptr %42, i64 24
  %i.mv = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.mw = getelementptr inbounds nuw i8, ptr %42, i64 12
  %i.mx = getelementptr inbounds nuw i8, ptr %42, i64 16
  %i.my = getelementptr inbounds nuw i8, ptr %43, i64 32
  %i.mz = getelementptr inbounds nuw i8, ptr %43, i64 33
  %i.na = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.nb = getelementptr inbounds nuw i8, ptr %43, i64 16
  %i.nc = getelementptr inbounds nuw i8, ptr %44, i64 80
  %i.nd = getelementptr inbounds nuw i8, ptr %44, i64 96
  %i.ne = getelementptr inbounds nuw i8, ptr %41, i64 32
  %i.nf = getelementptr inbounds nuw i8, ptr %41, i64 33
  %i.ng = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.nh = getelementptr inbounds nuw i8, ptr %41, i64 16
  %i.ni = getelementptr inbounds nuw i8, ptr %40, i64 16
  %i.nj = getelementptr inbounds nuw i8, ptr %40, i64 32
  %i.nk = getelementptr inbounds nuw i8, ptr %40, i64 33
  %i.nl = getelementptr inbounds nuw i8, ptr %38, i64 80
  %i.nm = getelementptr inbounds nuw i8, ptr %38, i64 96
  %.sroa.6.0..sroa_idx.i.i.i357 = getelementptr inbounds nuw i8, ptr %25, i64 8
  %.sroa.10.0..sroa_idx.i.i.i358 = getelementptr inbounds nuw i8, ptr %25, i64 12
  %.sroa.12.0..sroa_idx.i.i.i359 = getelementptr inbounds nuw i8, ptr %25, i64 16
  %.sroa.14.0..sroa_idx.i.i.i360 = getelementptr inbounds nuw i8, ptr %25, i64 24
  %i.nn = getelementptr inbounds nuw i8, ptr %25, i64 32
  %i.no = getelementptr inbounds nuw i8, ptr %26, i64 88 ; 3 uses
  %i.np = getelementptr inbounds nuw i8, ptr %26, i64 96 ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %26, i64 32
  %i.nr = getelementptr inbounds nuw i8, ptr %26, i64 40 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %26, i64 48 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %26, i64 56
  %i.nu = getelementptr inbounds nuw i8, ptr %26, i64 64
  %i.nv = getelementptr inbounds nuw i8, ptr %26, i64 68
  %i.nw = getelementptr inbounds nuw i8, ptr %26, i64 69
  %i.nx = getelementptr inbounds nuw i8, ptr %26, i64 70
  %i.ny = getelementptr inbounds nuw i8, ptr %26, i64 72
  %i.nz = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.oa = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i361 = getelementptr inbounds nuw i8, ptr %26, i64 24 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 4 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 3 uses
  %i.od = getelementptr inbounds nuw i8, ptr %27, i64 12
  %.sroa.6.0..sroa_idx.i79.i.i = getelementptr inbounds nuw i8, ptr %29, i64 8
  %.sroa.10.0..sroa_idx.i80.i.i = getelementptr inbounds nuw i8, ptr %29, i64 12
  %.sroa.12.0..sroa_idx.i81.i.i = getelementptr inbounds nuw i8, ptr %29, i64 16
  %.sroa.14.0..sroa_idx.i82.i.i = getelementptr inbounds nuw i8, ptr %29, i64 24
  %i.oe = getelementptr inbounds nuw i8, ptr %29, i64 32
  %i.of = getelementptr inbounds nuw i8, ptr %30, i64 80 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %30, i64 96
  %i.oh = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 4 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 3 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %31, i64 12
  %i.ok = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 5 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 4 uses
  %i.om = getelementptr inbounds nuw i8, ptr %32, i64 12
  %i.on = getelementptr inbounds nuw i8, ptr %34, i64 32
  %i.oo = getelementptr inbounds nuw i8, ptr %34, i64 33
  %i.op = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.oq = getelementptr inbounds nuw i8, ptr %34, i64 16
  %i.or = getelementptr inbounds nuw i8, ptr %33, i64 16
  %i.os = getelementptr inbounds nuw i8, ptr %33, i64 32
  %i.ot = getelementptr inbounds nuw i8, ptr %33, i64 33
  %i.ou = getelementptr inbounds nuw i8, ptr %24, i64 32
  %i.ov = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.ow = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 1129 ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %18, i64 48
  %i.oz = getelementptr inbounds nuw i8, ptr %19, i64 88 ; 3 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %19, i64 96 ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.pc = getelementptr inbounds nuw i8, ptr %19, i64 40
  %i.pd = getelementptr inbounds nuw i8, ptr %19, i64 48
  %i.pe = getelementptr inbounds nuw i8, ptr %19, i64 56
  %i.pf = getelementptr inbounds nuw i8, ptr %19, i64 64
  %i.pg = getelementptr inbounds nuw i8, ptr %19, i64 68
  %i.ph = getelementptr inbounds nuw i8, ptr %19, i64 69
  %i.pi = getelementptr inbounds nuw i8, ptr %19, i64 70
  %i.pj = getelementptr inbounds nuw i8, ptr %19, i64 72
  %i.pk = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.pl = getelementptr inbounds nuw i8, ptr %19, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i397 = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.pm = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 4 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 3 uses
  %i.po = getelementptr inbounds nuw i8, ptr %22, i64 12
  %i.pp = getelementptr inbounds nuw i8, ptr %18, i64 12
  %i.pq = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.pr = getelementptr inbounds nuw i8, ptr %18, i64 40
  %i.ps = getelementptr inbounds nuw i8, ptr %21, i64 80
  %i.pt = getelementptr inbounds nuw i8, ptr %21, i64 96
  %i.pu = getelementptr inbounds nuw i8, ptr %20, i64 80
  %i.pv = getelementptr inbounds nuw i8, ptr %20, i64 96
  %i.pw = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.px = getelementptr inbounds nuw i8, ptr %13, i64 88 ; 3 uses
  %i.py = getelementptr inbounds nuw i8, ptr %13, i64 96 ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.qa = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.qb = getelementptr inbounds nuw i8, ptr %13, i64 48
  %i.qc = getelementptr inbounds nuw i8, ptr %13, i64 56
  %i.qd = getelementptr inbounds nuw i8, ptr %13, i64 64
  %i.qe = getelementptr inbounds nuw i8, ptr %13, i64 68
  %i.qf = getelementptr inbounds nuw i8, ptr %13, i64 69
  %i.qg = getelementptr inbounds nuw i8, ptr %13, i64 70
  %i.qh = getelementptr inbounds nuw i8, ptr %13, i64 72
  %i.qi = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.qj = getelementptr inbounds nuw i8, ptr %13, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i415 = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.qk = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %15, i64 12
  %i.qn = getelementptr inbounds nuw i8, ptr %12, i64 12
  %i.qo = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.qp = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.qq = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.qr = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.qs = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %17, i64 33 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %16, i64 33 ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %14, i64 80
  %i.ra = getelementptr inbounds nuw i8, ptr %14, i64 96
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.10.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 12
  %.sroa.12.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.14.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.rb = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.rc = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.sroa.4.0..sroa_idx.i.i.i.i442 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 12
  %.sroa.6.0..sroa_idx.i.i.i.i443 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.rd = getelementptr inbounds nuw i8, ptr %7, i64 88 ; 3 uses
  %i.re = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.rg = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 3 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %7, i64 68
  %i.rl = getelementptr inbounds nuw i8, ptr %7, i64 69
  %i.rm = getelementptr inbounds nuw i8, ptr %7, i64 70
  %i.rn = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.ro = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.rp = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.rt = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.ru = getelementptr inbounds nuw i8, ptr %11, i64 33
  %i.rv = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.rw = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.rx = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ry = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.rz = getelementptr inbounds nuw i8, ptr %10, i64 33
  %i.sa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.sb = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.sc = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.sd = getelementptr inbounds nuw i8, ptr %8, i64 96
  br label %bb.au

.loopexit:                                        ; preds = %bb.rs, %bb.au
  %.not = icmp eq ptr %i.aei, %i.m
  br i1 %.not, label %._crit_edge, label %bb.au

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %138)
  call void @llvm.lifetime.start.p0(ptr nonnull %144)
  call void @llvm.lifetime.start.p0(ptr nonnull %146)
  %i.se = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.sf = load i32, ptr %i.se, align 8, !tbaa !42 ; 3 uses
  %.not.i.i = icmp ne i32 %i.sf, 0
  %i.sg = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.sh = load i64, ptr %i.sg, align 8
  %i.si = icmp ne i64 %i.sh, 0
  %or.cond.not158.i = select i1 %.not.i.i, i1 true, i1 %i.si
  %i.sj = load i8, ptr %i.h, align 8, !range !76
  %i.sk = trunc nuw i8 %i.sj to i1
  %or.cond155.i = select i1 %or.cond.not158.i, i1 true, i1 %i.sk ; 2 uses
  br i1 %or.cond155.i, label %bb.b, label %_ZN12_GLOBAL__N_117ScalarizerVisitor6finishEv.exit

bb.b:                                             ; preds = %._crit_edge
  %i.sl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !41 ; 2 uses
  %i.sn = zext i32 %i.sf to i64
  %.idx.i = shl nuw nsw i64 %i.sn, 4
  %i.so = getelementptr inbounds nuw i8, ptr %i.sm, i64 %.idx.i
  %.not170.i = icmp eq i32 %i.sf, 0
  br i1 %.not170.i, label %._crit_edge174.i, label %.lr.ph173.i

.lr.ph173.i:                                      ; preds = %bb.b
  %i.sp = getelementptr inbounds nuw i8, ptr %136, i64 88 ; 3 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %136, i64 96 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %136, i64 32
  %i.ss = getelementptr inbounds nuw i8, ptr %136, i64 40
  %i.st = getelementptr inbounds nuw i8, ptr %136, i64 48
  %i.su = getelementptr inbounds nuw i8, ptr %136, i64 56
  %i.sv = getelementptr inbounds nuw i8, ptr %136, i64 64
  %i.sw = getelementptr inbounds nuw i8, ptr %136, i64 68
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_117ScalarizerVisitor5visitERN4llvm8FunctionE:bb.a
  %i.abp = load i32, ptr %i.abo, align 8, !tbaa !129, !noalias !480 ; 6 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abj, i64 24
  %i.abr = load ptr, ptr %i.abq, align 8, !tbaa !130, !noalias !480 ; 8 uses
  %i.abs = icmp eq i32 %i.abp, 1
  br i1 %i.abs, label %_ZN12_GLOBAL__N_117ScalarizerVisitor14getVectorSplitEPN4llvm4TypeE.exit118.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abr, i64 8
  %i.abu = load i32, ptr %i.abt, align 8, !noalias !480
  %i.abv = and i32 %i.abu, 255
  %i.abw = icmp eq i32 %i.abv, 15
  br i1 %i.abw, label %_ZN12_GLOBAL__N_117ScalarizerVisitor14getVectorSplitEPN4llvm4TypeE.exit118.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.abx = call noundef i32 @_ZNK4llvm4Type19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.abr) #18, !noalias !480 ; 2 uses
  %i.aby = shl i32 %i.abx, 1
  %i.abz = icmp ugt i32 %i.aby, %.val.i
  br i1 %i.abz, label %_ZN12_GLOBAL__N_117ScalarizerVisitor14getVectorSplitEPN4llvm4TypeE.exit118.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.aca = udiv i32 %.val.i, %i.abx               ; 6 uses
  %.not20.i107.i = icmp ult i32 %i.aca, %i.abp
  br i1 %.not20.i107.i, label %bb.ak, label %_ZN12_GLOBAL__N_117ScalarizerVisitor14getVectorSplitEPN4llvm4TypeE.exit118.i

bb.ak:                                            ; preds = %bb.aj
  %i.acb = add i32 %i.abp, -1
  %i.acc = udiv i32 %i.acb, %i.aca
  %i.acd = add nuw i32 %i.acc, 1                  ; 2 uses
  %i.ace = call noundef ptr @_ZN4llvm15FixedVectorType3getEPNS_4TypeEj(ptr noundef nonnull %i.abr, i32 noundef %i.aca) #15, !noalias !480 ; 2 uses
  %i.acf = urem i32 %i.abp, %i.aca                ; 3 uses
  %i.acg = icmp ugt i32 %i.acf, 1
  br i1 %i.acg, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ach = call noundef ptr @_ZN4llvm15FixedVectorType3getEPNS_4TypeEj(ptr noundef nonnull %i.abr, i32 noundef %i.acf) #15, !noalias !480
  br label %_ZN12_GLOBAL__N_117ScalarizerVisitor14getVectorSplitEPN4llvm4TypeE.exit118.i

bb.am:                                            ; preds = %bb.ak
  %i.aci = icmp eq i32 %i.acf, 1
  %spec.select.i109.i = select i1 %i.aci, ptr %i.abr, ptr null
  br label %_ZN12_GLOBAL__N_117ScalarizerVisitor14getVectorSplitEPN4llvm4TypeE.exit118.i

_ZN12_GLOBAL__N_117ScalarizerVisitor14getVectorSplitEPN4llvm4TypeE.exit118.i: ; preds = %bb.am, %bb.al, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af
  %.sroa.7.0.i = phi ptr [ undef, %bb.af ], [ undef, %bb.aj ], [ %spec.select.i109.i, %bb.am ], [ %i.ach, %bb.al ], [ null, %bb.ag ], [ null, %bb.ai ], [ null, %bb.ah ]
  %.sroa.6.0.i = phi ptr [ undef, %bb.af ], [ undef, %bb.aj ], [ %i.ace, %bb.am ], [ %i.ace, %bb.al ], [ %i.abr, %bb.ag ], [ %i.abr, %bb.ai ], [ %i.abr, %bb.ah ]
  %.sroa.5.0.i = phi i32 [ undef, %bb.af ], [ undef, %bb.aj ], [ %i.acd, %bb.am ], [ %i.acd, %bb.al ], [ 1, %bb.ag ], [ %i.abp, %bb.ai ], [ %i.abp, %bb.ah ]
  %.sroa.4.0.i = phi i32 [ undef, %bb.af ], [ undef, %bb.aj ], [ %i.aca, %bb.am ], [ %i.aca, %bb.al ], [ 1, %bb.ag ], [ 1, %bb.ai ], [ 1, %bb.ah ]
  store ptr %i.abj, ptr %143, align 8, !tbaa !132
  store i32 %.sroa.4.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !133
  store i32 %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !133
  store ptr %.sroa.6.0.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !134
  store ptr %.sroa.7.0.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !134
  %i.acj = load i32, ptr %i.f, align 4, !tbaa !133
  %i.ack = zext i32 %i.acj to i64
  %i.acl = load ptr, ptr %140, align 8, !tbaa !41
  %i.acm = getelementptr inbounds nuw [80 x i8], ptr %i.acl, i64 %i.ack
  %i.acn = load ptr, ptr %i.acm, align 8, !tbaa !41
  %i.aco = load ptr, ptr %i.d, align 8, !tbaa !89
  %i.acp = call { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aco) #15 ; 2 uses
  %i.acq = extractvalue { ptr, i64 } %i.acp, 0
  %i.acr = extractvalue { ptr, i64 } %i.acp, 1
  store i8 5, ptr %i.ue, align 8, !tbaa !137
  store i8 1, ptr %i.uf, align 1, !tbaa !138
  store ptr %i.acq, ptr %144, align 8, !tbaa !139
  store i64 %i.acr, ptr %i.ug, align 8, !tbaa !139
  %i.acs = call fastcc noundef ptr @_ZL11concatenateRN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEENS_8ArrayRefIPNS_5ValueEEERKN12_GLOBAL__N_111VectorSplitENS_5TwineE(ptr noundef nonnull align 8 dereferenceable(104) %139, ptr %i.acn, ptr noundef nonnull align 8 dereferenceable(32) %143, ptr noundef nonnull byval(%"class.llvm::Twine") align 8 %144) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %145) #15
  %i.act = load ptr, ptr %i.d, align 8, !tbaa !89
  %i.acu = call { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(24) %i.act) #15 ; 2 uses
  %i.acv = extractvalue { ptr, i64 } %i.acu, 0
  %i.acw = extractvalue { ptr, i64 } %i.acu, 1
  store i8 5, ptr %i.uh, align 8, !tbaa !137, !alias.scope !481
  store i8 3, ptr %i.ui, align 1, !tbaa !138, !alias.scope !481
  store ptr %i.acv, ptr %145, align 8, !tbaa !139, !alias.scope !481
  store i64 %i.acw, ptr %i.uj, align 8, !tbaa !139, !alias.scope !481
  store ptr @.str.9, ptr %i.uk, align 8, !tbaa !139, !alias.scope !481
  %i.acx = load ptr, ptr %i.tj, align 8, !tbaa !141, !nonnull !77, !align !102 ; 2 uses
  %i.acy = load ptr, ptr %i.acx, align 8, !tbaa !30
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acy, i64 88
  %i.ada = load ptr, ptr %i.acz, align 8
  %i.adb = call noundef ptr %i.ada(ptr noundef nonnull align 8 dereferenceable(8) %i.acx, ptr noundef %.069166.i, ptr noundef %i.acs, ptr nonnull %i.f, i64 1) #15, !inline_history !261 ; 2 uses
  %.not.not.i119.i = icmp eq ptr %i.adb, null
  br i1 %.not.not.i119.i, label %bb.an, label %_ZN4llvm13IRBuilderBase17CreateInsertValueEPNS_5ValueES2_NS_8ArrayRefIjEERKNS_5TwineE.exit.i

bb.an:                                            ; preds = %_ZN12_GLOBAL__N_117ScalarizerVisitor14getVectorSplitEPN4llvm4TypeE.exit118.i
  call void @llvm.lifetime.start.p0(ptr nonnull %134) #15
  store i16 257, ptr %i.ul, align 8
  %i.adc = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 104, i32 2) #15 ; 9 uses
  %i.add = getelementptr inbounds nuw i8, ptr %.069166.i, i64 8
  %i.ade = load ptr, ptr %i.add, align 8, !tbaa !94
  call void @_ZN4llvm11InstructionC2EPNS_4TypeEjNS_4User9AllocInfoENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(104) %i.adc, ptr noundef %i.ade, i32 noundef 67, i32 2, ptr null, i64 0) #15
  %i.adf = getelementptr inbounds nuw i8, ptr %i.adc, i64 72
  %i.adg = getelementptr inbounds nuw i8, ptr %i.adc, i64 88
  store ptr %i.adg, ptr %i.adf, align 8, !tbaa !41
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adc, i64 80
  store i32 0, ptr %i.adh, align 8, !tbaa !42
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adc, i64 84
  store i32 4, ptr %i.adi, align 4, !tbaa !43
  call void @_ZN4llvm15InsertValueInst4initEPNS_5ValueES2_NS_8ArrayRefIjEERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(104) %i.adc, ptr noundef nonnull %.069166.i, ptr noundef %i.acs, ptr nonnull %i.f, i64 1, ptr noundef nonnull align 8 dereferenceable(34) %134) #15
  %i.adj = load ptr, ptr %i.tk, align 8, !tbaa !149, !nonnull !77, !align !102 ; 2 uses
  %.sroa.0.0.copyload.i.i121.i = load ptr, ptr %i.ts, align 8
  %.sroa.2.0.copyload.i.i123.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i92.i, align 8
  %i.adk = load ptr, ptr %i.adj, align 8, !tbaa !30
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adk, i64 16
  %i.adm = load ptr, ptr %i.adl, align 8
  call void %i.adm(ptr noundef nonnull align 8 dereferenceable(8) %i.adj, ptr noundef nonnull %i.adc, ptr noundef nonnull align 8 dereferenceable(34) %145, ptr %.sroa.0.0.copyload.i.i121.i, i64 %.sroa.2.0.copyload.i.i123.i) #15, !inline_history !262
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %139, ptr noundef nonnull %i.adc) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %134) #15
  br label %_ZN4llvm13IRBuilderBase17CreateInsertValueEPNS_5ValueES2_NS_8ArrayRefIjEERKNS_5TwineE.exit.i

_ZN4llvm13IRBuilderBase17CreateInsertValueEPNS_5ValueES2_NS_8ArrayRefIjEERKNS_5TwineE.exit.i: ; preds = %bb.an, %_ZN12_GLOBAL__N_117ScalarizerVisitor14getVectorSplitEPN4llvm4TypeE.exit118.i
  %.1.i120.i = phi ptr [ %i.adc, %bb.an ], [ %i.adb, %_ZN12_GLOBAL__N_117ScalarizerVisitor14getVectorSplitEPN4llvm4TypeE.exit118.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %145) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %143) #15
  %i.adn = load i32, ptr %i.f, align 4, !tbaa !133
  %i.ado = add i32 %i.adn, 1                      ; 3 uses
  store i32 %i.ado, ptr %i.f, align 4, !tbaa !133
  %i.adp = icmp ult i32 %i.ado, %i.xz
  br i1 %i.adp, label %bb.af, label %._crit_edge169.i, !llvm.loop !263

bb.ao:                                            ; preds = %bb.p
  %i.adq = load ptr, ptr %i.vb, align 8, !tbaa !41
  %i.adr = load ptr, ptr %i.adq, align 8, !tbaa !140 ; 2 uses
  %i.ads = icmp ne ptr %i.uz, %i.adr
  %cond.fr.i = freeze i1 %i.ads
  br i1 %cond.fr.i, label %.thread146.i, label %.critedge.i

.thread146.i:                                     ; preds = %bb.ao, %.thread.i, %_ZN12_GLOBAL__N_117ScalarizerVisitor14getVectorSplitEPN4llvm4TypeE.exit.i
  %.4150.i = phi ptr [ %i.adr, %bb.ao ], [ %i.xe, %_ZN12_GLOBAL__N_117ScalarizerVisitor14getVectorSplitEPN4llvm4TypeE.exit.i ], [ %.069.lcssa.i, %.thread.i ]
  %i.adt = load ptr, ptr %i.d, align 8, !tbaa !89
  call void @_ZN4llvm5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.adt, ptr noundef %.4150.i) #15
  br label %bb.ap

bb.ap:                                            ; preds = %.thread146.i, %bb.d
  %i.adu = load i32, ptr %i.un, align 8, !tbaa !42 ; 2 uses
  %i.adv = load i32, ptr %i.uo, align 4, !tbaa !43
  %.not.i124.i = icmp ult i32 %i.adu, %i.adv
  br i1 %.not.i124.i, label %bb.ar, label %bb.aq, !prof !150

bb.aq:                                            ; preds = %bb.ap
  %i.adw = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_14WeakTrackingVHELb0EE18growAndEmplaceBackIJRPNS_11InstructionEEEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.um, ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 0 uses
  br label %.critedge.i

bb.ar:                                            ; preds = %bb.ap
  %i.adx = zext i32 %i.adu to i64
  %i.ady = load ptr, ptr %i.um, align 8, !tbaa !41
  %i.adz = getelementptr inbounds nuw [24 x i8], ptr %i.ady, i64 %i.adx ; 4 uses
  %i.aea = load ptr, ptr %i.d, align 8, !tbaa !89 ; 2 uses
  store i64 6, ptr %i.adz, align 8
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.adz, i64 8
  store ptr null, ptr %i.aeb, align 8, !tbaa !152
  %i.aec = getelementptr inbounds nuw i8, ptr %i.adz, i64 16
  store ptr %i.aea, ptr %i.aec, align 8, !tbaa !83
  %.not.i.i.i125.i = icmp eq ptr %i.aea, null
  br i1 %.not.i.i.i125.i, label %_ZN4llvm14WeakTrackingVHC2EPNS_5ValueE.exit.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @_ZN4llvm15ValueHandleBase12AddToUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %i.adz) #15
  br label %_ZN4llvm14WeakTrackingVHC2EPNS_5ValueE.exit.i.i

_ZN4llvm14WeakTrackingVHC2EPNS_5ValueE.exit.i.i:  ; preds = %bb.as, %bb.ar
  %i.aed = load i32, ptr %i.un, align 8, !tbaa !42
  %i.aee = add i32 %i.aed, 1
  store i32 %i.aee, ptr %i.un, align 8, !tbaa !42
  br label %.critedge.i

.critedge.i:                                      ; preds = %_ZN4llvm14WeakTrackingVHC2EPNS_5ValueE.exit.i.i, %bb.aq, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  %i.aef = getelementptr inbounds nuw i8, ptr %.067171.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.aef, %i.so
  br i1 %.not.i, label %._crit_edge174.i, label %bb.d

_ZN12_GLOBAL__N_117ScalarizerVisitor6finishEv.exit: ; preds = %._crit_edge, %._crit_edge174.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %138)
  call void @llvm.lifetime.end.p0(ptr nonnull %144)
  call void @llvm.lifetime.end.p0(ptr nonnull %146)
  %i.aeg = load ptr, ptr %147, align 8, !tbaa !41 ; 2 uses
  %i.aeh = icmp eq ptr %i.aeg, %i.j
  br i1 %i.aeh, label %_ZN4llvm25ReversePostOrderTraversalIPNS_10BasicBlockENS_11GraphTraitsIS2_EEED2Ev.exit, label %bb.at

bb.at:                                            ; preds = %_ZN12_GLOBAL__N_117ScalarizerVisitor6finishEv.exit
  call void @free(ptr noundef %i.aeg) #15
  br label %_ZN4llvm25ReversePostOrderTraversalIPNS_10BasicBlockENS_11GraphTraitsIS2_EEED2Ev.exit

_ZN4llvm25ReversePostOrderTraversalIPNS_10BasicBlockENS_11GraphTraitsIS2_EEED2Ev.exit: ; preds = %_ZN12_GLOBAL__N_117ScalarizerVisitor6finishEv.exit, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %147) #15
  ret i1 %or.cond155.i

bb.au:                                            ; preds = %.lr.ph84, %.loopexit
  %.sroa.05.083 = phi ptr [ %i.p, %.lr.ph84 ], [ %i.aei, %.loopexit ]
  %i.aei = getelementptr inbounds i8, ptr %.sroa.05.083, i64 -8 ; 3 uses
  %i.aej = load ptr, ptr %i.aei, align 8, !tbaa !86 ; 2 uses
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aej, i64 56
  %i.ael = load ptr, ptr %i.aek, align 8, !tbaa !155 ; 2 uses
  %i.aem = getelementptr inbounds nuw i8, ptr %i.aej, i64 48 ; 2 uses
  %.not6580 = icmp eq ptr %i.ael, %i.aem
  br i1 %.not6580, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.au, %bb.rs
  %.sroa.01.081 = phi ptr [ %i.dlk, %bb.rs ], [ %i.ael, %bb.au ] ; 148 uses
  %i.aen = getelementptr inbounds i8, ptr %.sroa.01.081, i64 -24 ; 132 uses
  %i.aeo = load i8, ptr %i.aen, align 8, !tbaa !127
  switch i8 %i.aeo, label %bb.av [
    i8 31, label %_ZN4llvm11InstVisitorIN12_GLOBAL__N_117ScalarizerVisitorEbE5visitEPNS_11InstructionE.exit.thread
    i8 32, label %_ZN4llvm11InstVisitorIN12_GLOBAL__N_117ScalarizerVisitorEbE5visitEPNS_11InstructionE.exit.thread
    i8 33, label %_ZN4llvm11InstVisitorIN12_GLOBAL__N_117ScalarizerVisitorEbE5visitEPNS_11InstructionE.exit.thread
    i8 34, label %_ZN4llvm11InstVisitorIN12_GLOBAL__N_117ScalarizerVisitorEbE5visitEPNS_11InstructionE.exit.thread
    i8 35, label %_ZN4llvm11InstVisitorIN12_GLOBAL__N_117ScalarizerVisitorEbE5visitEPNS_11InstructionE.exit.thread
    i8 36, label %_ZN4llvm11InstVisitorIN12_GLOBAL__N_117ScalarizerVisitorEbE5visitEPNS_11InstructionE.exit.thread
    i8 37, label %_ZN4llvm11InstVisitorIN12_GLOBAL__N_117ScalarizerVisitorEbE5visitEPNS_11InstructionE.exit.thread
    i8 38, label %_ZN4llvm11InstVisitorIN12_GLOBAL__N_117ScalarizerVisitorEbE5visitEPNS_11InstructionE.exit.thread
    i8 39, label %_ZN4llvm11InstVisitorIN12_GLOBAL__N_117ScalarizerVisitorEbE5visitEPNS_11InstructionE.exit.thread
    i8 40, label %_ZN4llvm11InstVisitorIN12_GLOBAL__N_117ScalarizerVisitorEbE5visitEPNS_11InstructionE.exit.thread
    i8 41, label %_ZN4llvm11InstVisitorIN12_GLOBAL__N_117ScalarizerVisitorEbE5visitEPNS_11InstructionE.exit.thread
    i8 42, label %_ZN4llvm11InstVisitorIN12_GLOBAL__N_117ScalarizerVisitorEbE5visitEPNS_11InstructionE.exit.thread
    i8 43, label %bb.aw
    i8 44, label %.split39
    i8 45, label %.split38
    i8 46, label %.split37
    i8 47, label %.split36
    i8 48, label %.split35
    i8 49, label %.split34
    i8 50, label %.split33
    i8 51, label %.split32
    i8 52, label %.split31
    i8 53, label %.split30
    i8 54, label %.split29
    i8 55, label %.split28
    i8 56, label %.split27
    i8 57, label %.split26
    i8 58, label %.split25
    i8 59, label %.split24
    i8 60, label %.split23
    i8 61, label %.split22
    i8 62, label %_ZN4llvm11InstVisitorIN12_GLOBAL__N_117ScalarizerVisitorEbE5visitEPNS_11InstructionE.exit.thread
    i8 63, label %bb.bx
    i8 64, label %bb.ce
    i8 65, label %bb.cn
    i8 66, label %_ZN4llvm11InstVisitorIN12_GLOBAL__N_117ScalarizerVisitorEbE5visitEPNS_11InstructionE.exit.thread
    i8 67, label %_ZN4llvm11InstVisitorIN12_GLOBAL__N_117ScalarizerVisitorEbE5visitEPNS_11InstructionE.exit.thread
    i8 68, label %_ZN4llvm11InstVisitorIN12_GLOBAL__N_117ScalarizerVisitorEbE5visitEPNS_11InstructionE.exit.thread
    i8 69, label %.split19
    i8 70, label %.split18
    i8 71, label %.split17
    i8 72, label %.split16
    i8 73, label %.split15
    i8 74, label %.split14
    i8 75, label %.split13
    i8 76, label %.split
    i8 77, label %_ZN4llvm11InstVisitorIN12_GLOBAL__N_117ScalarizerVisitorEbE5visitEPNS_11InstructionE.exit
    i8 78, label %.split43
    i8 79, label %.split42
    i8 80, label %.split41
    i8 81, label %bb.dz
    i8 82, label %.split40
    i8 83, label %_ZN4llvm11InstVisitorIN12_GLOBAL__N_117ScalarizerVisitorEbE5visitEPNS_11InstructionE.exit.thread
    i8 84, label %_ZN4llvm11InstVisitorIN12_GLOBAL__N_117ScalarizerVisitorEbE5visitEPNS_11InstructionE.exit.thread
    i8 85, label %bb.fg
    i8 86, label %bb.gi
    i8 87, label %bb.hi
    i8 88, label %bb.in
    i8 89, label %bb.lp
    i8 90, label %_ZN4llvm11InstVisitorIN12_GLOBAL__N_117ScalarizerVisitorEbE5visitEPNS_11InstructionE.exit.thread
    i8 91, label %_ZN4llvm11InstVisitorIN12_GLOBAL__N_117ScalarizerVisitorEbE5visitEPNS_11InstructionE.exit.thread
    i8 92, label %_ZN4llvm11InstVisitorIN12_GLOBAL__N_117ScalarizerVisitorEbE5visitEPNS_11InstructionE.exit.thread
    i8 93, label %bb.mm
    i8 94, label %bb.nh
    i8 95, label %bb.og
    i8 96, label %bb.pi
    i8 97, label %_ZN4llvm11InstVisitorIN12_GLOBAL__N_117ScalarizerVisitorEbE5visitEPNS_11InstructionE.exit.thread
    i8 98, label %_ZN4llvm11InstVisitorIN12_GLOBAL__N_117ScalarizerVisitorEbE5visitEPNS_11InstructionE.exit.thread
    i8 99, label %bb.qt
  ]

bb.av:                                            ; preds = %.lr.ph
  unreachable

bb.aw:                                            ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.aep = getelementptr inbounds i8, ptr %.sroa.01.081, i64 -16 ; 4 uses
  %i.aeq = load ptr, ptr %i.aep, align 8, !tbaa !94 ; 5 uses
  %.val17.i.i.i.i = load i32, ptr %i.q, align 4   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !482)
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aeq, i64 8
  %i.aes = load i32, ptr %i.aer, align 8, !noalias !482
  %i.aet = and i32 %i.aes, 255
  %i.aeu = icmp ne i32 %i.aet, 18
  %.not4.i.i.i.i.i438 = icmp eq ptr %i.aeq, null
  %.not.i.i.i.i.i439 = or i1 %.not4.i.i.i.i.i438, %i.aeu
  br i1 %.not.i.i.i.i.i439, label %_ZN4llvm11InstVisitorIN12_GLOBAL__N_117ScalarizerVisitorEbE9visitFNegERNS_15FPUnaryOperatorE.exit.thread, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aeq, i64 32
  %i.aew = load i32, ptr %i.aev, align 8, !tbaa !129, !noalias !482 ; 6 uses
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aeq, i64 24
  %i.aey = load ptr, ptr %i.aex, align 8, !tbaa !130, !noalias !482 ; 8 uses
  %i.aez = icmp eq i32 %i.aew, 1
  br i1 %i.aez, label %bb.be, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aey, i64 8
  %i.afb = load i32, ptr %i.afa, align 8, !noalias !482
  %i.afc = and i32 %i.afb, 255
  %i.afd = icmp eq i32 %i.afc, 15
  br i1 %i.afd, label %bb.be, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.afe = call noundef i32 @_ZNK4llvm4Type19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aey) #18, !noalias !482 ; 2 uses
  %i.aff = shl i32 %i.afe, 1
  %i.afg = icmp ugt i32 %i.aff, %.val17.i.i.i.i
  br i1 %i.afg, label %bb.be, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.afh = udiv i32 %.val17.i.i.i.i, %i.afe       ; 6 uses
  %.not20.i.i.i.i.i = icmp ult i32 %i.afh, %i.aew
  br i1 %.not20.i.i.i.i.i, label %bb.bb, label %_ZN4llvm11InstVisitorIN12_GLOBAL__N_117ScalarizerVisitorEbE9visitFNegERNS_15FPUnaryOperatorE.exit.thread

bb.bb:                                            ; preds = %bb.ba
  %i.afi = add i32 %i.aew, -1
  %i.afj = udiv i32 %i.afi, %i.afh
  %i.afk = add nuw i32 %i.afj, 1                  ; 2 uses
  %i.afl = call noundef ptr @_ZN4llvm15FixedVectorType3getEPNS_4TypeEj(ptr noundef nonnull %i.aey, i32 noundef %i.afh) #15, !noalias !482 ; 2 uses
  %i.afm = urem i32 %i.aew, %i.afh                ; 3 uses
  %i.afn = icmp ugt i32 %i.afm, 1
  br i1 %i.afn, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.afo = call noundef ptr @_ZN4llvm15FixedVectorType3getEPNS_4TypeEj(ptr noundef nonnull %i.aey, i32 noundef %i.afm) #15, !noalias !482
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb
  %i.afp = icmp eq i32 %i.afm, 1
  %spec.select.i.i.i.i.i = select i1 %i.afp, ptr %i.aey, ptr null
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc, %bb.az, %bb.ay, %bb.ax
  %i.afq = phi i32 [ %i.afh, %bb.bd ], [ %i.afh, %bb.bc ], [ 1, %bb.ax ], [ 1, %bb.az ], [ 1, %bb.ay ] ; 2 uses
  %i.afr = phi i32 [ %i.afk, %bb.bd ], [ %i.afk, %bb.bc ], [ 1, %bb.ax ], [ %i.aew, %bb.az ], [ %i.aew, %bb.ay ] ; 6 uses
  %.sroa.12.0.i.i.i.i.i = phi ptr [ %i.afl, %bb.bd ], [ %i.afl, %bb.bc ], [ %i.aey, %bb.ax ], [ %i.aey, %bb.az ], [ %i.aey, %bb.ay ]
  %.sroa.14.0.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i, %bb.bd ], [ %i.afo, %bb.bc ], [ null, %bb.ax ], [ null, %bb.az ], [ null, %bb.ay ]
  store ptr %i.aeq, ptr %5, align 8, !tbaa !132, !alias.scope !482
  store i32 %i.afq, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !133, !alias.scope !482
  store i32 %i.afr, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i, align 4, !tbaa !133, !alias.scope !482
  store ptr %.sroa.12.0.i.i.i.i.i, ptr %.sroa.12.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !134, !alias.scope !482
  store ptr %.sroa.14.0.i.i.i.i.i, ptr %.sroa.14.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !134, !alias.scope !482
  store i8 1, ptr %i.rb, align 8, !tbaa !157, !alias.scope !482
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.afs = getelementptr inbounds i8, ptr %.sroa.01.081, i64 -20 ; 2 uses
  %i.aft = load i32, ptr %i.afs, align 4          ; 2 uses
  %i.afu = and i32 %i.aft, 1073741824
  %.not.i.i.i.i.i.i440 = icmp eq i32 %i.afu, 0
  br i1 %.not.i.i.i.i.i.i440, label %_ZNK4llvm4User10getOperandEj.exit.i.i.i.i, label %_ZNK4llvm4User10getOperandEj.exit.thread.i.i.i.i

_ZNK4llvm4User10getOperandEj.exit.i.i.i.i:        ; preds = %bb.be
  %i.afv = and i32 %i.aft, 268435455
  %i.afw = zext nneg i32 %i.afv to i64
  %i.afx = sub nsw i64 0, %i.afw
  %i.afy = getelementptr inbounds [32 x i8], ptr %i.aen, i64 %i.afx
  %i.afz = load ptr, ptr %i.afy, align 8, !tbaa !148
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afz, i64 8
  %i.agb = load ptr, ptr %i.aga, align 8, !tbaa !94 ; 2 uses
  %i.agc = load ptr, ptr %i.aep, align 8, !tbaa !94 ; 2 uses
  %i.agd = icmp eq ptr %i.agb, %i.agc
  br i1 %i.agd, label %bb.bf, label %_ZNK4llvm4User10getOperandEj.exit22.i.i.i.i

_ZNK4llvm4User10getOperandEj.exit.thread.i.i.i.i: ; preds = %bb.be
  %i.age = getelementptr inbounds i8, ptr %.sroa.01.081, i64 -32
  %i.agf = load ptr, ptr %i.age, align 8, !tbaa !147
  %i.agg = load ptr, ptr %i.agf, align 8, !tbaa !148
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agg, i64 8
  %i.agi = load ptr, ptr %i.agh, align 8, !tbaa !94 ; 2 uses
  %i.agj = load ptr, ptr %i.aep, align 8, !tbaa !94 ; 2 uses
  %i.agk = icmp eq ptr %i.agi, %i.agj
  br i1 %i.agk, label %bb.bf, label %_ZNK4llvm4User10getOperandEj.exit22.i.i.i.i

bb.bf:                                            ; preds = %_ZNK4llvm4User10getOperandEj.exit.thread.i.i.i.i, %_ZNK4llvm4User10getOperandEj.exit.i.i.i.i
  %i.agl = phi ptr [ %i.agj, %_ZNK4llvm4User10getOperandEj.exit.thread.i.i.i.i ], [ %i.agc, %_ZNK4llvm4User10getOperandEj.exit.i.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false)
  br label %bb.bn

_ZNK4llvm4User10getOperandEj.exit22.i.i.i.i:      ; preds = %_ZNK4llvm4User10getOperandEj.exit.thread.i.i.i.i, %_ZNK4llvm4User10getOperandEj.exit.i.i.i.i
  %i.agm = phi ptr [ %i.agi, %_ZNK4llvm4User10getOperandEj.exit.thread.i.i.i.i ], [ %i.agb, %_ZNK4llvm4User10getOperandEj.exit.i.i.i.i ] ; 5 uses
  %.val.i.i.i.i441 = load i32, ptr %i.q, align 4  ; 2 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agm, i64 8
  %i.ago = load i32, ptr %i.agn, align 8, !noalias !483
  %i.agp = and i32 %i.ago, 255
  %i.agq = icmp ne i32 %i.agp, 18
  %.not4.i23.i.i.i.i = icmp eq ptr %i.agm, null
  %.not.i24.i.i.i.i = or i1 %.not4.i23.i.i.i.i, %i.agq
  br i1 %.not.i24.i.i.i.i, label %_ZN12_GLOBAL__N_117ScalarizerVisitor14getVectorSplitEPN4llvm4TypeE.exit36.i.i.i.i, label %bb.bg

bb.bg:                                            ; preds = %_ZNK4llvm4User10getOperandEj.exit22.i.i.i.i
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agm, i64 32
  %i.ags = load i32, ptr %i.agr, align 8, !tbaa !129, !noalias !483 ; 6 uses
  %i.agt = getelementptr inbounds nuw i8, ptr %i.agm, i64 24
  %i.agu = load ptr, ptr %i.agt, align 8, !tbaa !130, !noalias !483 ; 8 uses
  %i.agv = icmp eq i32 %i.ags, 1
  br i1 %i.agv, label %_ZN12_GLOBAL__N_117ScalarizerVisitor14getVectorSplitEPN4llvm4TypeE.exit36.i.i.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agu, i64 8
end_hunk_2
begin_hunk_3_@_ZN12_GLOBAL__N_117ScalarizerVisitor5visitERN4llvm8FunctionE:bb.a
  %i.awk = getelementptr inbounds nuw i8, ptr %.val.i.i.i367, i64 %.idx.i.i.i
  br label %.lr.ph.i.i.i.i369

.lr.ph.i.i.i.i369:                                ; preds = %_ZN12_GLOBAL__N_19ScattererD2Ev.exit.i.i.i.i, %.lr.ph.i.preheader.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.awl, %_ZN12_GLOBAL__N_19ScattererD2Ev.exit.i.i.i.i ], [ %i.awk, %.lr.ph.i.preheader.i.i.i ] ; 3 uses
  %i.awl = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -160 ; 2 uses
  %i.awm = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -80
  %i.awn = load ptr, ptr %i.awm, align 8, !tbaa !41 ; 2 uses
  %i.awo = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -64
  %i.awp = icmp eq ptr %i.awn, %i.awo
  br i1 %i.awp, label %_ZN12_GLOBAL__N_19ScattererD2Ev.exit.i.i.i.i, label %bb.dw

bb.dw:                                            ; preds = %.lr.ph.i.i.i.i369
  call void @free(ptr noundef %i.awn) #15
  br label %_ZN12_GLOBAL__N_19ScattererD2Ev.exit.i.i.i.i

_ZN12_GLOBAL__N_19ScattererD2Ev.exit.i.i.i.i:     ; preds = %bb.dw, %.lr.ph.i.i.i.i369
  %.not.i.i.i.i370 = icmp eq ptr %.val.i.i.i367, %i.awl
  br i1 %.not.i.i.i.i370, label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_19ScattererELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i369, !llvm.loop !2

_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_19ScattererELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i: ; preds = %_ZN12_GLOBAL__N_19ScattererD2Ev.exit.i.i.i.i
  %.pre.i94.i.i = load ptr, ptr %28, align 8, !tbaa !41
  br label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_19ScattererELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i

_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_19ScattererELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_19ScattererELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i, %bb.dv
  %i.awq = phi ptr [ %.pre.i94.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_19ScattererELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i ], [ %.val.i.i.i367, %bb.dv ] ; 2 uses
  %i.awr = icmp eq ptr %i.awq, %i.ow
  br i1 %i.awr, label %_ZN4llvm11SmallVectorIN12_GLOBAL__N_19ScattererELj8EED2Ev.exit.i.i, label %bb.dx

bb.dx:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_19ScattererELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i
  call void @free(ptr noundef %i.awq) #15
  br label %_ZN4llvm11SmallVectorIN12_GLOBAL__N_19ScattererELj8EED2Ev.exit.i.i

_ZN4llvm11SmallVectorIN12_GLOBAL__N_19ScattererELj8EED2Ev.exit.i.i: ; preds = %bb.dx, %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_19ScattererELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #15
  %i.aws = load ptr, ptr %27, align 8, !tbaa !41  ; 2 uses
  %i.awt = icmp eq ptr %i.aws, %i.ob
  br i1 %i.awt, label %_ZN4llvm11InstVisitorIN12_GLOBAL__N_117ScalarizerVisitorEbE18visitGetElementPtrERNS_17GetElementPtrInstE.exit, label %bb.dy

bb.dy:                                            ; preds = %_ZN4llvm11SmallVectorIN12_GLOBAL__N_19ScattererELj8EED2Ev.exit.i.i
  call void @free(ptr noundef %i.aws) #15
  br label %_ZN4llvm11InstVisitorIN12_GLOBAL__N_117ScalarizerVisitorEbE18visitGetElementPtrERNS_17GetElementPtrInstE.exit

_ZN4llvm11InstVisitorIN12_GLOBAL__N_117ScalarizerVisitorEbE18visitGetElementPtrERNS_17GetElementPtrInstE.exit.thread: ; preds = %bb.cn, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #15
  %i.awu = getelementptr inbounds nuw i8, ptr %.sroa.01.081, i64 8
  %i.awv = load ptr, ptr %i.awu, align 8, !tbaa !155
  br label %bb.rs

_ZN4llvm11InstVisitorIN12_GLOBAL__N_117ScalarizerVisitorEbE18visitGetElementPtrERNS_17GetElementPtrInstE.exit: ; preds = %_ZN4llvm11SmallVectorIN12_GLOBAL__N_19ScattererELj8EED2Ev.exit.i.i, %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #15
  call void @_ZN4llvm24IRBuilderDefaultInserterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.np) #15
  call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.no) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #15
  %i.aww = getelementptr inbounds nuw i8, ptr %.sroa.01.081, i64 8
  %i.awx = load ptr, ptr %i.aww, align 8, !tbaa !155 ; 2 uses
  br i1 %.not58118.i.i, label %bb.rq, label %bb.rs

.split19:                                         ; preds = %.lr.ph
  %i.awy = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_117ScalarizerVisitor13visitCastInstERN4llvm8CastInstE(ptr noundef nonnull align 8 dereferenceable(1136) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.aen)
  %i.awz = getelementptr inbounds nuw i8, ptr %.sroa.01.081, i64 8
  %i.axa = load ptr, ptr %i.awz, align 8, !tbaa !155 ; 2 uses
  br i1 %i.awy, label %bb.rq, label %bb.rs

.split18:                                         ; preds = %.lr.ph
  %i.axb = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_117ScalarizerVisitor13visitCastInstERN4llvm8CastInstE(ptr noundef nonnull align 8 dereferenceable(1136) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.aen)
  %i.axc = getelementptr inbounds nuw i8, ptr %.sroa.01.081, i64 8
  %i.axd = load ptr, ptr %i.axc, align 8, !tbaa !155 ; 2 uses
  br i1 %i.axb, label %bb.rq, label %bb.rs

.split17:                                         ; preds = %.lr.ph
  %i.axe = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_117ScalarizerVisitor13visitCastInstERN4llvm8CastInstE(ptr noundef nonnull align 8 dereferenceable(1136) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.aen)
  %i.axf = getelementptr inbounds nuw i8, ptr %.sroa.01.081, i64 8
  %i.axg = load ptr, ptr %i.axf, align 8, !tbaa !155 ; 2 uses
  br i1 %i.axe, label %bb.rq, label %bb.rs

.split16:                                         ; preds = %.lr.ph
  %i.axh = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_117ScalarizerVisitor13visitCastInstERN4llvm8CastInstE(ptr noundef nonnull align 8 dereferenceable(1136) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.aen)
  %i.axi = getelementptr inbounds nuw i8, ptr %.sroa.01.081, i64 8
  %i.axj = load ptr, ptr %i.axi, align 8, !tbaa !155 ; 2 uses
  br i1 %i.axh, label %bb.rq, label %bb.rs

.split15:                                         ; preds = %.lr.ph
  %i.axk = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_117ScalarizerVisitor13visitCastInstERN4llvm8CastInstE(ptr noundef nonnull align 8 dereferenceable(1136) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.aen)
  %i.axl = getelementptr inbounds nuw i8, ptr %.sroa.01.081, i64 8
  %i.axm = load ptr, ptr %i.axl, align 8, !tbaa !155 ; 2 uses
  br i1 %i.axk, label %bb.rq, label %bb.rs

.split14:                                         ; preds = %.lr.ph
  %i.axn = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_117ScalarizerVisitor13visitCastInstERN4llvm8CastInstE(ptr noundef nonnull align 8 dereferenceable(1136) %0, ptr noundef nonnull align 8 dereferenceable(76) %i.aen)
  %i.axo = getelementptr inbounds nuw i8, ptr %.sroa.01.081, i64 8
  %i.axp = load ptr, ptr %i.axo, align 8, !tbaa !155 ; 2 uses
  br i1 %i.axn, label %bb.rq, label %bb.rs

.split13:                                         ; preds = %.lr.ph
  %i.axq = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_117ScalarizerVisitor13visitCastInstERN4llvm8CastInstE(ptr noundef nonnull align 8 dereferenceable(1136) %0, ptr noundef nonnull align 8 dereferenceable(76) %i.aen)
  %i.axr = getelementptr inbounds nuw i8, ptr %.sroa.01.081, i64 8
  %i.axs = load ptr, ptr %i.axr, align 8, !tbaa !155 ; 2 uses
  br i1 %i.axq, label %bb.rq, label %bb.rs

.split:                                           ; preds = %.lr.ph
  %i.axt = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_117ScalarizerVisitor13visitCastInstERN4llvm8CastInstE(ptr noundef nonnull align 8 dereferenceable(1136) %0, ptr noundef nonnull align 8 dereferenceable(76) %i.aen)
  %i.axu = getelementptr inbounds nuw i8, ptr %.sroa.01.081, i64 8
  %i.axv = load ptr, ptr %i.axu, align 8, !tbaa !155 ; 2 uses
  br i1 %i.axt, label %bb.rq, label %bb.rs

.split43:                                         ; preds = %.lr.ph
  %i.axw = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_117ScalarizerVisitor13visitCastInstERN4llvm8CastInstE(ptr noundef nonnull align 8 dereferenceable(1136) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.aen)
  %i.axx = getelementptr inbounds nuw i8, ptr %.sroa.01.081, i64 8
  %i.axy = load ptr, ptr %i.axx, align 8, !tbaa !155 ; 2 uses
  br i1 %i.axw, label %bb.rq, label %bb.rs

.split42:                                         ; preds = %.lr.ph
  %i.axz = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_117ScalarizerVisitor13visitCastInstERN4llvm8CastInstE(ptr noundef nonnull align 8 dereferenceable(1136) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.aen)
  %i.aya = getelementptr inbounds nuw i8, ptr %.sroa.01.081, i64 8
  %i.ayb = load ptr, ptr %i.aya, align 8, !tbaa !155 ; 2 uses
  br i1 %i.axz, label %bb.rq, label %bb.rs

.split41:                                         ; preds = %.lr.ph
  %i.ayc = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_117ScalarizerVisitor13visitCastInstERN4llvm8CastInstE(ptr noundef nonnull align 8 dereferenceable(1136) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.aen)
  %i.ayd = getelementptr inbounds nuw i8, ptr %.sroa.01.081, i64 8
  %i.aye = load ptr, ptr %i.ayd, align 8, !tbaa !155 ; 2 uses
  br i1 %i.ayc, label %bb.rq, label %bb.rs

bb.dz:                                            ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %47)
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #15
  %i.ayf = getelementptr inbounds i8, ptr %.sroa.01.081, i64 -16 ; 2 uses
  %i.ayg = load ptr, ptr %i.ayf, align 8, !tbaa !94 ; 6 uses
  %.val79.i.i = load i32, ptr %i.q, align 4       ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !494)
  %i.ayh = getelementptr inbounds nuw i8, ptr %i.ayg, i64 8
  %i.ayi = load i32, ptr %i.ayh, align 8, !noalias !494
  %i.ayj = and i32 %i.ayi, 255
  %i.ayk = icmp ne i32 %i.ayj, 18
  %.not4.i.i.i303 = icmp eq ptr %i.ayg, null
  %.not.i.i.i304 = or i1 %.not4.i.i.i303, %i.ayk
  br i1 %.not.i.i.i304, label %_ZN12_GLOBAL__N_117ScalarizerVisitor14getVectorSplitEPN4llvm4TypeE.exit.i.i306, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.ayl = getelementptr inbounds nuw i8, ptr %i.ayg, i64 32
  %i.aym = load i32, ptr %i.ayl, align 8, !tbaa !129, !noalias !494 ; 6 uses
  %i.ayn = getelementptr inbounds nuw i8, ptr %i.ayg, i64 24
  %i.ayo = load ptr, ptr %i.ayn, align 8, !tbaa !130, !noalias !494 ; 8 uses
  %i.ayp = icmp eq i32 %i.aym, 1
  br i1 %i.ayp, label %bb.eh, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.ayq = getelementptr inbounds nuw i8, ptr %i.ayo, i64 8
  %i.ayr = load i32, ptr %i.ayq, align 8, !noalias !494
  %i.ays = and i32 %i.ayr, 255
  %i.ayt = icmp eq i32 %i.ays, 15
  br i1 %i.ayt, label %bb.eh, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.ayu = call noundef i32 @_ZNK4llvm4Type19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ayo) #18, !noalias !494 ; 2 uses
  %i.ayv = shl i32 %i.ayu, 1
  %i.ayw = icmp ugt i32 %i.ayv, %.val79.i.i
  br i1 %i.ayw, label %bb.eh, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.ayx = udiv i32 %.val79.i.i, %i.ayu           ; 6 uses
  %.not20.i.i.i305 = icmp ult i32 %i.ayx, %i.aym
  br i1 %.not20.i.i.i305, label %bb.ee, label %_ZN12_GLOBAL__N_117ScalarizerVisitor14getVectorSplitEPN4llvm4TypeE.exit.i.i306

bb.ee:                                            ; preds = %bb.ed
  %i.ayy = add i32 %i.aym, -1
  %i.ayz = udiv i32 %i.ayy, %i.ayx
  %i.aza = add nuw i32 %i.ayz, 1                  ; 2 uses
  %i.azb = call noundef ptr @_ZN4llvm15FixedVectorType3getEPNS_4TypeEj(ptr noundef nonnull %i.ayo, i32 noundef %i.ayx) #15, !noalias !494 ; 2 uses
  %i.azc = urem i32 %i.aym, %i.ayx                ; 3 uses
  %i.azd = icmp ugt i32 %i.azc, 1
  br i1 %i.azd, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  %i.aze = call noundef ptr @_ZN4llvm15FixedVectorType3getEPNS_4TypeEj(ptr noundef nonnull %i.ayo, i32 noundef %i.azc) #15, !noalias !494
  br label %bb.eh

bb.eg:                                            ; preds = %bb.ee
  %i.azf = icmp eq i32 %i.azc, 1
  %spec.select.i.i.i338 = select i1 %i.azf, ptr %i.ayo, ptr null
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef, %bb.ec, %bb.eb, %bb.ea
  %.sroa.6.0.i.i.i339 = phi i32 [ %i.ayx, %bb.eg ], [ %i.ayx, %bb.ef ], [ 1, %bb.ea ], [ 1, %bb.ec ], [ 1, %bb.eb ] ; 2 uses
  %.sroa.10.0.i.i.i340 = phi i32 [ %i.aza, %bb.eg ], [ %i.aza, %bb.ef ], [ 1, %bb.ea ], [ %i.aym, %bb.ec ], [ %i.aym, %bb.eb ] ; 2 uses
  %.sroa.12.0.i.i.i341 = phi ptr [ %i.azb, %bb.eg ], [ %i.azb, %bb.ef ], [ %i.ayo, %bb.ea ], [ %i.ayo, %bb.ec ], [ %i.ayo, %bb.eb ] ; 2 uses
  %.sroa.14.0.i.i.i342 = phi ptr [ %spec.select.i.i.i338, %bb.eg ], [ %i.aze, %bb.ef ], [ null, %bb.ea ], [ null, %bb.ec ], [ null, %bb.eb ] ; 2 uses
  store ptr %i.ayg, ptr %35, align 8, !tbaa !132, !alias.scope !494
  store i32 %.sroa.6.0.i.i.i339, ptr %.sroa.6.0..sroa_idx.i.i.i343, align 8, !tbaa !133, !alias.scope !494
  store i32 %.sroa.10.0.i.i.i340, ptr %.sroa.10.0..sroa_idx.i.i.i344, align 4, !tbaa !133, !alias.scope !494
  store ptr %.sroa.12.0.i.i.i341, ptr %.sroa.12.0..sroa_idx.i.i.i345, align 8, !tbaa !134, !alias.scope !494
  store ptr %.sroa.14.0.i.i.i342, ptr %.sroa.14.0..sroa_idx.i.i.i346, align 8, !tbaa !134, !alias.scope !494
  %i.azg = icmp eq ptr %.sroa.14.0.i.i.i342, null
  %.val.pre.i.i347 = load i32, ptr %i.q, align 4
  br label %_ZN12_GLOBAL__N_117ScalarizerVisitor14getVectorSplitEPN4llvm4TypeE.exit.i.i306

_ZN12_GLOBAL__N_117ScalarizerVisitor14getVectorSplitEPN4llvm4TypeE.exit.i.i306: ; preds = %bb.eh, %bb.ed, %bb.dz
  %.val.i.i307 = phi i32 [ %.val79.i.i, %bb.dz ], [ %.val.pre.i.i347, %bb.eh ], [ %.val79.i.i, %bb.ed ] ; 2 uses
  %.sroa.12.0.i142.i.i = phi ptr [ undef, %bb.dz ], [ %.sroa.12.0.i.i.i341, %bb.eh ], [ undef, %bb.ed ] ; 4 uses
  %.sroa.10.0.i141.i.i = phi i32 [ undef, %bb.dz ], [ %.sroa.10.0.i.i.i340, %bb.eh ], [ undef, %bb.ed ] ; 5 uses
  %.sroa.6.0.i140.i.i = phi i32 [ undef, %bb.dz ], [ %.sroa.6.0.i.i.i339, %bb.eh ], [ undef, %bb.ed ] ; 2 uses
  %or.cond147.i.i = phi i1 [ false, %bb.dz ], [ %i.azg, %bb.eh ], [ false, %bb.ed ]
  %.sink.i.i.i308 = phi i8 [ 0, %bb.dz ], [ 1, %bb.eh ], [ 0, %bb.ed ]
  store i8 %.sink.i.i.i308, ptr %i.lh, align 8, !tbaa !157, !alias.scope !494
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #15
  %i.azh = getelementptr inbounds i8, ptr %.sroa.01.081, i64 -56 ; 2 uses
  %i.azi = load ptr, ptr %i.azh, align 8, !tbaa !148
  %i.azj = getelementptr inbounds nuw i8, ptr %i.azi, i64 8
  %i.azk = load ptr, ptr %i.azj, align 8, !tbaa !94 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !495)
  %i.azl = getelementptr inbounds nuw i8, ptr %i.azk, i64 8
  %i.azm = load i32, ptr %i.azl, align 8, !noalias !495
  %i.azn = and i32 %i.azm, 255
  %i.azo = icmp ne i32 %i.azn, 18
  %.not4.i82.i.i = icmp eq ptr %i.azk, null
  %.not.i83.i.i = or i1 %.not4.i82.i.i, %i.azo
  br i1 %.not.i83.i.i, label %_ZN4llvm11InstVisitorIN12_GLOBAL__N_117ScalarizerVisitorEbE12visitBitCastERNS_11BitCastInstE.exit.thread, label %bb.ei

bb.ei:                                            ; preds = %_ZN12_GLOBAL__N_117ScalarizerVisitor14getVectorSplitEPN4llvm4TypeE.exit.i.i306
  %i.azp = getelementptr inbounds nuw i8, ptr %i.azk, i64 32
  %i.azq = load i32, ptr %i.azp, align 8, !tbaa !129, !noalias !495 ; 6 uses
  %i.azr = getelementptr inbounds nuw i8, ptr %i.azk, i64 24 ; 2 uses
  %i.azs = load ptr, ptr %i.azr, align 8, !tbaa !130, !noalias !495 ; 8 uses
  %i.azt = icmp eq i32 %i.azq, 1
  br i1 %i.azt, label %_ZN12_GLOBAL__N_117ScalarizerVisitor14getVectorSplitEPN4llvm4TypeE.exit95.i.i, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.azu = getelementptr inbounds nuw i8, ptr %i.azs, i64 8
  %i.azv = load i32, ptr %i.azu, align 8, !noalias !495
  %i.azw = and i32 %i.azv, 255
  %i.azx = icmp eq i32 %i.azw, 15
  br i1 %i.azx, label %_ZN12_GLOBAL__N_117ScalarizerVisitor14getVectorSplitEPN4llvm4TypeE.exit95.i.i, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.azy = call noundef i32 @_ZNK4llvm4Type19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.azs) #18, !noalias !495 ; 2 uses
  %i.azz = shl i32 %i.azy, 1
  %i.baa = icmp ugt i32 %i.azz, %.val.i.i307
  br i1 %i.baa, label %_ZN12_GLOBAL__N_117ScalarizerVisitor14getVectorSplitEPN4llvm4TypeE.exit95.i.i, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.bab = udiv i32 %.val.i.i307, %i.azy          ; 6 uses
  %.not20.i84.i.i = icmp ult i32 %i.bab, %i.azq
  br i1 %.not20.i84.i.i, label %bb.em, label %_ZN4llvm11InstVisitorIN12_GLOBAL__N_117ScalarizerVisitorEbE12visitBitCastERNS_11BitCastInstE.exit.thread

bb.em:                                            ; preds = %bb.el
  %i.bac = add i32 %i.azq, -1
  %i.bad = udiv i32 %i.bac, %i.bab
  %i.bae = add nuw i32 %i.bad, 1                  ; 2 uses
  %i.baf = call noundef ptr @_ZN4llvm15FixedVectorType3getEPNS_4TypeEj(ptr noundef nonnull %i.azs, i32 noundef %i.bab) #15, !noalias !495 ; 2 uses
  %i.bag = urem i32 %i.azq, %i.bab                ; 3 uses
  %i.bah = icmp ugt i32 %i.bag, 1
  br i1 %i.bah, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  %i.bai = call noundef ptr @_ZN4llvm15FixedVectorType3getEPNS_4TypeEj(ptr noundef nonnull %i.azs, i32 noundef %i.bag) #15, !noalias !495
  br label %_ZN12_GLOBAL__N_117ScalarizerVisitor14getVectorSplitEPN4llvm4TypeE.exit95.i.i

bb.eo:                                            ; preds = %bb.em
  %i.baj = icmp eq i32 %i.bag, 1
  %spec.select.i86.i.i = select i1 %i.baj, ptr %i.azs, ptr null
  br label %_ZN12_GLOBAL__N_117ScalarizerVisitor14getVectorSplitEPN4llvm4TypeE.exit95.i.i

_ZN12_GLOBAL__N_117ScalarizerVisitor14getVectorSplitEPN4llvm4TypeE.exit95.i.i: ; preds = %bb.eo, %bb.en, %bb.ek, %bb.ej, %bb.ei
  %.sroa.6.0.i87.i.i = phi i32 [ %i.bab, %bb.eo ], [ %i.bab, %bb.en ], [ 1, %bb.ei ], [ 1, %bb.ek ], [ 1, %bb.ej ] ; 3 uses
  %.sroa.10.0.i88.i.i = phi i32 [ %i.bae, %bb.eo ], [ %i.bae, %bb.en ], [ 1, %bb.ei ], [ %i.azq, %bb.ek ], [ %i.azq, %bb.ej ] ; 3 uses
  %.sroa.12.0.i89.i.i = phi ptr [ %i.baf, %bb.eo ], [ %i.baf, %bb.en ], [ %i.azs, %bb.ei ], [ %i.azs, %bb.ek ], [ %i.azs, %bb.ej ] ; 3 uses
  %.sroa.14.0.i90.i.i = phi ptr [ %spec.select.i86.i.i, %bb.eo ], [ %i.bai, %bb.en ], [ null, %bb.ei ], [ null, %bb.ek ], [ null, %bb.ej ] ; 2 uses
  store ptr %i.azk, ptr %36, align 8, !tbaa !132, !alias.scope !495
  store i32 %.sroa.6.0.i87.i.i, ptr %.sroa.6.0..sroa_idx.i91.i.i, align 8, !tbaa !133, !alias.scope !495
  store i32 %.sroa.10.0.i88.i.i, ptr %.sroa.10.0..sroa_idx.i92.i.i, align 4, !tbaa !133, !alias.scope !495
  store ptr %.sroa.12.0.i89.i.i, ptr %.sroa.12.0..sroa_idx.i93.i.i, align 8, !tbaa !134, !alias.scope !495
  store ptr %.sroa.14.0.i90.i.i, ptr %.sroa.14.0..sroa_idx.i94.i.i, align 8, !tbaa !134, !alias.scope !495
  %i.bak = icmp eq ptr %.sroa.14.0.i90.i.i, null
  store i8 1, ptr %i.li, align 8, !tbaa !157, !alias.scope !495
  %or.cond149.i.i = select i1 %or.cond147.i.i, i1 %i.bak, i1 false
  br i1 %or.cond149.i.i, label %bb.ep, label %_ZN4llvm11InstVisitorIN12_GLOBAL__N_117ScalarizerVisitorEbE12visitBitCastERNS_11BitCastInstE.exit.thread

bb.ep:                                            ; preds = %_ZN12_GLOBAL__N_117ScalarizerVisitor14getVectorSplitEPN4llvm4TypeE.exit95.i.i
  %i.bal = getelementptr inbounds nuw i8, ptr %i.ayg, i64 24 ; 2 uses
  %i.bam = load ptr, ptr %i.bal, align 8, !tbaa !130
  %i.ban = getelementptr inbounds nuw i8, ptr %i.bam, i64 8
  %i.bao = load i32, ptr %i.ban, align 8
  %i.bap = and i32 %i.bao, 255
  %i.baq = icmp eq i32 %i.bap, 15
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #15
  %i.bar = load ptr, ptr %i.ayf, align 8, !tbaa !94
  %i.bas = load ptr, ptr %i.bar, align 8, !tbaa !101, !nonnull !77, !align !102
  store ptr null, ptr %37, align 8, !tbaa !105
  store ptr %i.bas, ptr %i.ll, align 8, !tbaa !106
  store ptr %i.lj, ptr %i.lm, align 8, !tbaa !108
  store ptr %i.lk, ptr %i.ln, align 8, !tbaa !110
  store ptr null, ptr %i.lo, align 8, !tbaa !120
  store i32 0, ptr %i.lp, align 8, !tbaa !121
  store i8 0, ptr %i.lq, align 4, !tbaa !122
  store i8 2, ptr %i.lr, align 1, !tbaa !123
  store i8 7, ptr %i.ls, align 2, !tbaa !124
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lt, i8 0, i64 16, i1 false)
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm14ConstantFolderE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm24IRBuilderDefaultInserterE, i64 16)>, ptr %i.lj, align 8, !tbaa !30
  %i.bat = getelementptr inbounds nuw i8, ptr %.sroa.01.081, i64 16
  %i.bau = load ptr, ptr %i.bat, align 8, !tbaa !96
  store ptr %i.bau, ptr %i.lu, align 8, !tbaa !125
  store ptr %.sroa.01.081, ptr %i.lv, align 8
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i310, align 8
  %i.bav = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.aen) #15
  %i.baw = load i64, ptr %i.bav, align 8, !tbaa !126
  store i64 %i.baw, ptr %37, align 8, !tbaa !126
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #15
  %i.bax = load ptr, ptr %i.azh, align 8, !tbaa !148
  call fastcc void @_ZN12_GLOBAL__N_117ScalarizerVisitor7scatterEPN4llvm11InstructionEPNS1_5ValueERKNS_11VectorSplitE(ptr dead_on_unwind noalias writable align 8 %38, ptr noundef nonnull align 8 dereferenceable(1136) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.aen, ptr noundef %i.bax, ptr noundef nonnull align 8 dereferenceable(32) %36)
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #15
  store ptr %i.lw, ptr %39, align 8, !tbaa !41
  store i32 0, ptr %i.lx, align 8, !tbaa !42
  store i32 8, ptr %i.ly, align 4, !tbaa !43
  %i.bay = zext i32 %.sroa.10.0.i141.i.i to i64   ; 4 uses
  %i.baz = icmp eq i32 %.sroa.10.0.i141.i.i, 0    ; 3 uses
  br i1 %i.baz, label %_ZN4llvm15SmallVectorImplIPNS_5ValueEE6resizeEm.exit.i.i313, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.bba = icmp ugt i32 %.sroa.10.0.i141.i.i, 8
  br i1 %i.bba, label %_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i.i.i.i332, label %.lr.ph.preheader.i.i.i.i311

_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i.i.i.i332: ; preds = %bb.eq
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %39, ptr noundef nonnull %i.lw, i64 noundef %i.bay, i64 noundef 8) #15
  %.pre.i.i.i.i333 = load i32, ptr %i.lx, align 8, !tbaa !42 ; 2 uses
  %.not11.i.i.i.i334 = icmp eq i32 %.sroa.10.0.i141.i.i, %.pre.i.i.i.i333
  br i1 %.not11.i.i.i.i334, label %.sink.split.i.i.i.i312, label %_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i.i335

_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i.i335: ; preds = %_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i.i.i.i332
  %.pre13.i.i.i.i336 = zext i32 %.pre.i.i.i.i333 to i64
  %.pre.i.i337 = load ptr, ptr %39, align 8, !tbaa !41
  br label %.lr.ph.preheader.i.i.i.i311

.lr.ph.preheader.i.i.i.i311:                      ; preds = %_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i.i335, %bb.eq
  %i.bbb = phi ptr [ %.pre.i.i337, %_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i.i335 ], [ %i.lw, %bb.eq ]
  %.pre-phi.i.i146.i.i = phi i64 [ %.pre13.i.i.i.i336, %_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i.i335 ], [ 0, %bb.eq ] ; 2 uses
  %i.bbc = getelementptr [8 x i8], ptr %i.bbb, i64 %.pre-phi.i.i146.i.i
  %i.bbd = sub nsw i64 %i.bay, %.pre-phi.i.i146.i.i
  %i.bbe = shl nsw i64 %i.bbd, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bbc, i8 0, i64 %i.bbe, i1 false), !tbaa !140
  br label %.sink.split.i.i.i.i312

.sink.split.i.i.i.i312:                           ; preds = %.lr.ph.preheader.i.i.i.i311, %_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i.i.i.i332
  store i32 %.sroa.10.0.i141.i.i, ptr %i.lx, align 8, !tbaa !42
  br label %_ZN4llvm15SmallVectorImplIPNS_5ValueEE6resizeEm.exit.i.i313

_ZN4llvm15SmallVectorImplIPNS_5ValueEE6resizeEm.exit.i.i313: ; preds = %.sink.split.i.i.i.i312, %bb.ep
  %i.bbf = call { i64, i8 } @_ZNK4llvm4Type22getPrimitiveSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.0.i142.i.i) #18 ; 2 uses
  %.fca.1.extract43.i.i = extractvalue { i64, i8 } %i.bbf, 1
  %i.bbg = trunc nuw i8 %.fca.1.extract43.i.i to i1
  br i1 %i.bbg, label %bb.er, label %_ZNK4llvm8TypeSizecvmEv.exit.i.i

bb.er:                                            ; preds = %_ZN4llvm15SmallVectorImplIPNS_5ValueEE6resizeEm.exit.i.i313
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.4) #16
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit.i.i:                 ; preds = %_ZN4llvm15SmallVectorImplIPNS_5ValueEE6resizeEm.exit.i.i313
  %.fca.0.extract42.i.i = extractvalue { i64, i8 } %i.bbf, 0
  %i.bbh = trunc i64 %.fca.0.extract42.i.i to i32 ; 5 uses
  %i.bbi = call { i64, i8 } @_ZNK4llvm4Type22getPrimitiveSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.0.i89.i.i) #18 ; 2 uses
  %.fca.1.extract.i.i = extractvalue { i64, i8 } %i.bbi, 1
  %i.bbj = trunc nuw i8 %.fca.1.extract.i.i to i1
  br i1 %i.bbj, label %bb.es, label %_ZNK4llvm8TypeSizecvmEv.exit96.i.i

bb.es:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.4) #16
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit96.i.i:               ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i.i
  %.fca.0.extract.i.i = extractvalue { i64, i8 } %i.bbi, 0
  %i.bbk = trunc i64 %.fca.0.extract.i.i to i32   ; 6 uses
  %i.bbl = icmp eq i32 %i.bbh, %i.bbk
  %or.cond.i.i314 = or i1 %i.baq, %i.bbl
  br i1 %or.cond.i.i314, label %.preheader.i.i329, label %bb.et

.preheader.i.i329:                                ; preds = %_ZNK4llvm8TypeSizecvmEv.exit96.i.i
  br i1 %i.baz, label %.loopexit.i.i323, label %_ZN4llvmplERKNS_5TwineES2_.exit.i.i331

_ZN4llvmplERKNS_5TwineES2_.exit.i.i331:           ; preds = %.preheader.i.i329, %_ZN4llvmplERKNS_5TwineES2_.exit.i.i331
  %indvars.iv185.i.i = phi i64 [ %indvars.iv.next186.i.i, %_ZN4llvmplERKNS_5TwineES2_.exit.i.i331 ], [ 0, %.preheader.i.i329 ] ; 4 uses
  %i.bbm = trunc nuw i64 %indvars.iv185.i.i to i32
  %i.bbn = call fastcc noundef ptr @_ZN12_GLOBAL__N_19ScattererixEj(ptr noundef nonnull align 8 dereferenceable(160) %38, i32 noundef %i.bbm)
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #15
  %i.bbo = call { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(72) %i.aen) #15 ; 2 uses
  %i.bbp = extractvalue { ptr, i64 } %i.bbo, 0
  %i.bbq = extractvalue { ptr, i64 } %i.bbo, 1
  store i8 5, ptr %i.ne, align 8, !tbaa !137, !alias.scope !496
  store i8 3, ptr %i.nf, align 1, !tbaa !138, !alias.scope !496
  store ptr %i.bbp, ptr %41, align 8, !tbaa !139, !alias.scope !496
  store i64 %i.bbq, ptr %i.ng, align 8, !tbaa !139, !alias.scope !496
  store ptr @.str.2, ptr %i.nh, align 8, !tbaa !139, !alias.scope !496
  %i.bbr = inttoptr i64 %indvars.iv185.i.i to ptr
  store ptr %41, ptr %40, align 8, !alias.scope !497
  store ptr %i.bbr, ptr %i.ni, align 8, !alias.scope !497
  store i8 2, ptr %i.nj, align 8, !tbaa !137, !alias.scope !497
  store i8 9, ptr %i.nk, align 1, !tbaa !138, !alias.scope !497
  %i.bbs = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateCastENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeENS_9FMFSourceE(ptr noundef nonnull align 8 dereferenceable(88) %37, i32 noundef 51, ptr noundef %i.bbn, ptr noundef nonnull %.sroa.12.0.i142.i.i, ptr noundef nonnull align 8 dereferenceable(34) %40, ptr noundef null, i64 0)
  %i.bbt = load ptr, ptr %39, align 8, !tbaa !41
  %i.bbu = getelementptr inbounds nuw [8 x i8], ptr %i.bbt, i64 %indvars.iv185.i.i
  store ptr %i.bbs, ptr %i.bbu, align 8, !tbaa !140
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #15
  %indvars.iv.next186.i.i = add nuw nsw i64 %indvars.iv185.i.i, 1 ; 2 uses
  %exitcond189.not.i.i = icmp eq i64 %indvars.iv.next186.i.i, %i.bay
  br i1 %exitcond189.not.i.i, label %.loopexit.i.i323, label %_ZN4llvmplERKNS_5TwineES2_.exit.i.i331, !llvm.loop !310

bb.et:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit96.i.i
  %i.bbv = urem i32 %i.bbk, %i.bbh
  %i.bbw = udiv exact i32 %i.bbk, %i.bbh          ; 3 uses
  %i.bbx = icmp eq i32 %i.bbv, 0
  br i1 %i.bbx, label %bb.eu, label %bb.fa

bb.eu:                                            ; preds = %bb.et
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #15
  store i64 0, ptr %i.mu, align 8
  store i32 %.sroa.6.0.i140.i.i, ptr %i.mv, align 8, !tbaa !172
  store i32 %i.bbw, ptr %i.mw, align 4, !tbaa !173
  %i.bby = load ptr, ptr %i.bal, align 8, !tbaa !130
  %i.bbz = mul i32 %i.bbw, %.sroa.6.0.i140.i.i
  %i.bca = call noundef ptr @_ZN4llvm15FixedVectorType3getEPNS_4TypeEj(ptr noundef %i.bby, i32 noundef %i.bbz) #15 ; 2 uses
  store ptr %i.bca, ptr %42, align 8, !tbaa !174
  store ptr %.sroa.12.0.i142.i.i, ptr %i.mx, align 8, !tbaa !175
  %.not174.i.i = icmp eq i32 %.sroa.10.0.i88.i.i, 0
  br i1 %.not174.i.i, label %._crit_edge171.i.i, label %.lr.ph170.i.i

.lr.ph170.i.i:                                    ; preds = %bb.eu
  %.not175.i.i = icmp eq i32 %i.bbk, 0
  br label %bb.ev

._crit_edge171.i.i:                               ; preds = %_ZN12_GLOBAL__N_19ScattererD2Ev.exit.i.i327, %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #15
  br label %.loopexit.i.i323

bb.ev:                                            ; preds = %_ZN12_GLOBAL__N_19ScattererD2Ev.exit.i.i327, %.lr.ph170.i.i
  %.070168.i.i = phi i32 [ 0, %.lr.ph170.i.i ], [ %.171.lcssa.i.i, %_ZN12_GLOBAL__N_19ScattererD2Ev.exit.i.i327 ] ; 2 uses
  %.073167.i.i = phi i32 [ 0, %.lr.ph170.i.i ], [ %i.bcz, %_ZN12_GLOBAL__N_19ScattererD2Ev.exit.i.i327 ] ; 2 uses
  %i.bcb = call fastcc noundef ptr @_ZN12_GLOBAL__N_19ScattererixEj(ptr noundef nonnull align 8 dereferenceable(160) %38, i32 noundef %.073167.i.i) ; 3 uses
  %i.bcc = load i8, ptr %i.bcb, align 8, !tbaa !127 ; 2 uses
  %i.bcd = icmp ult i8 %i.bcc, 30
  br i1 %i.bcd, label %.critedge.i.i326, label %.lr.ph158.i.i

.lr.ph158.i.i:                                    ; preds = %bb.ev, %_ZNK4llvm4User10getOperandEj.exit.i.i
  %i.bce = phi i8 [ %i.bcr, %_ZNK4llvm4User10getOperandEj.exit.i.i ], [ %i.bcc, %bb.ev ]
  %.072156.i.i = phi ptr [ %i.bcq, %_ZNK4llvm4User10getOperandEj.exit.i.i ], [ %i.bcb, %bb.ev ] ; 4 uses
  %i.bcf = icmp eq i8 %i.bce, 81
  br i1 %i.bcf, label %bb.ew, label %.critedge.i.i326

bb.ew:                                            ; preds = %.lr.ph158.i.i
  %i.bcg = getelementptr inbounds nuw i8, ptr %.072156.i.i, i64 4
  %i.bch = load i32, ptr %i.bcg, align 4          ; 2 uses
  %i.bci = and i32 %i.bch, 1073741824
  %.not.i.i.i.i328 = icmp eq i32 %i.bci, 0
  br i1 %.not.i.i.i.i328, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.bcj = getelementptr inbounds i8, ptr %.072156.i.i, i64 -8
  %i.bck = load ptr, ptr %i.bcj, align 8, !tbaa !147
  br label %_ZNK4llvm4User10getOperandEj.exit.i.i

bb.ey:                                            ; preds = %bb.ew
  %i.bcl = and i32 %i.bch, 268435455
  %i.bcm = zext nneg i32 %i.bcl to i64
  %i.bcn = sub nsw i64 0, %i.bcm
  %i.bco = getelementptr inbounds [32 x i8], ptr %.072156.i.i, i64 %i.bcn
  br label %_ZNK4llvm4User10getOperandEj.exit.i.i

_ZNK4llvm4User10getOperandEj.exit.i.i:            ; preds = %bb.ey, %bb.ex
  %i.bcp = phi ptr [ %i.bck, %bb.ex ], [ %i.bco, %bb.ey ]
  %i.bcq = load ptr, ptr %i.bcp, align 8, !tbaa !148 ; 3 uses
  %i.bcr = load i8, ptr %i.bcq, align 8, !tbaa !127 ; 2 uses
  %i.bcs = icmp ult i8 %i.bcr, 30
  br i1 %i.bcs, label %.critedge.i.i326, label %.lr.ph158.i.i, !llvm.loop !311

.critedge.i.i326:                                 ; preds = %_ZNK4llvm4User10getOperandEj.exit.i.i, %.lr.ph158.i.i, %bb.ev
  %.072.lcssa.i.i = phi ptr [ %i.bcb, %bb.ev ], [ %i.bcq, %_ZNK4llvm4User10getOperandEj.exit.i.i ], [ %.072156.i.i, %.lr.ph158.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #15
  %i.bct = call { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(24) %.072.lcssa.i.i) #15 ; 2 uses
  %i.bcu = extractvalue { ptr, i64 } %i.bct, 0
  %i.bcv = extractvalue { ptr, i64 } %i.bct, 1
  store i8 5, ptr %i.my, align 8, !tbaa !137, !alias.scope !498
  store i8 3, ptr %i.mz, align 1, !tbaa !138, !alias.scope !498
  store ptr %i.bcu, ptr %43, align 8, !tbaa !139, !alias.scope !498
  store i64 %i.bcv, ptr %i.na, align 8, !tbaa !139, !alias.scope !498
  store ptr @.str.5, ptr %i.nb, align 8, !tbaa !139, !alias.scope !498
  %i.bcw = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateCastENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeENS_9FMFSourceE(ptr noundef nonnull align 8 dereferenceable(88) %37, i32 noundef 51, ptr noundef nonnull %.072.lcssa.i.i, ptr noundef %i.bca, ptr noundef nonnull align 8 dereferenceable(34) %43, ptr noundef null, i64 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #15
  call fastcc void @_ZN12_GLOBAL__N_117ScalarizerVisitor7scatterEPN4llvm11InstructionEPNS1_5ValueERKNS_11VectorSplitE(ptr dead_on_unwind noalias writable align 8 %44, ptr noundef nonnull align 8 dereferenceable(1136) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.aen, ptr noundef %i.bcw, ptr noundef nonnull align 8 dereferenceable(32) %42)
  br i1 %.not175.i.i, label %._crit_edge165.i.i, label %.lr.ph164.i.i

._crit_edge165.i.i:                               ; preds = %.lr.ph164.i.i, %.critedge.i.i326
  %.171.lcssa.i.i = phi i32 [ %.070168.i.i, %.critedge.i.i326 ], [ %i.bdb, %.lr.ph164.i.i ]
  %i.bcx = load ptr, ptr %i.nc, align 8, !tbaa !41 ; 2 uses
  %i.bcy = icmp eq ptr %i.bcx, %i.nd
  br i1 %i.bcy, label %_ZN12_GLOBAL__N_19ScattererD2Ev.exit.i.i327, label %bb.ez

bb.ez:                                            ; preds = %._crit_edge165.i.i
  call void @free(ptr noundef %i.bcx) #15
  br label %_ZN12_GLOBAL__N_19ScattererD2Ev.exit.i.i327

_ZN12_GLOBAL__N_19ScattererD2Ev.exit.i.i327:      ; preds = %bb.ez, %._crit_edge165.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #15
  %i.bcz = add nuw i32 %.073167.i.i, 1            ; 2 uses
  %exitcond184.not.i.i = icmp eq i32 %i.bcz, %.sroa.10.0.i88.i.i
  br i1 %exitcond184.not.i.i, label %._crit_edge171.i.i, label %bb.ev, !llvm.loop !314

.lr.ph164.i.i:                                    ; preds = %.critedge.i.i326, %.lr.ph164.i.i
  %.068163.i.i = phi i32 [ %i.bdf, %.lr.ph164.i.i ], [ 0, %.critedge.i.i326 ] ; 2 uses
  %.171162.i.i = phi i32 [ %i.bdb, %.lr.ph164.i.i ], [ %.070168.i.i, %.critedge.i.i326 ] ; 2 uses
  %i.bda = call fastcc noundef ptr @_ZN12_GLOBAL__N_19ScattererixEj(ptr noundef nonnull align 8 dereferenceable(160) %44, i32 noundef %.068163.i.i)
  %i.bdb = add i32 %.171162.i.i, 1                ; 2 uses
  %i.bdc = zext i32 %.171162.i.i to i64
  %i.bdd = load ptr, ptr %39, align 8, !tbaa !41
  %i.bde = getelementptr inbounds nuw [8 x i8], ptr %i.bdd, i64 %i.bdc
  store ptr %i.bda, ptr %i.bde, align 8, !tbaa !140
  %i.bdf = add nuw i32 %.068163.i.i, 1            ; 2 uses
  %i.bdg = icmp ult i32 %i.bdf, %i.bbw
  br i1 %i.bdg, label %.lr.ph164.i.i, label %._crit_edge165.i.i, !llvm.loop !315

bb.fa:                                            ; preds = %bb.et
  %i.bdh = urem i32 %i.bbh, %i.bbk
  %i.bdi = udiv exact i32 %i.bbh, %i.bbk          ; 5 uses
  %i.bdj = icmp eq i32 %i.bdh, 0
  br i1 %i.bdj, label %bb.fb, label %bb.fd

bb.fb:                                            ; preds = %bb.fa
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #15
  store i64 0, ptr %i.lz, align 8
  store i32 %i.bdi, ptr %i.ma, align 4, !tbaa !173
  store i32 %.sroa.6.0.i87.i.i, ptr %i.mb, align 8, !tbaa !172
  %i.bdk = load ptr, ptr %i.azr, align 8, !tbaa !130
  %i.bdl = mul i32 %i.bdi, %.sroa.6.0.i87.i.i
  %i.bdm = call noundef ptr @_ZN4llvm15FixedVectorType3getEPNS_4TypeEj(ptr noundef %i.bdk, i32 noundef %i.bdl) #15
  store ptr %i.bdm, ptr %45, align 8, !tbaa !174
  store ptr %.sroa.12.0.i89.i.i, ptr %i.mc, align 8, !tbaa !175
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #15
  store ptr %i.md, ptr %46, align 8, !tbaa !41
  store i32 0, ptr %i.me, align 8, !tbaa !42
  store i32 8, ptr %i.mf, align 4, !tbaa !43
  %i.bdn = zext i32 %i.bdi to i64                 ; 4 uses
  %i.bdo = icmp ugt i32 %i.bdi, 8
  br i1 %i.bdo, label %_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i.i.i.a, label %_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i

_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i.i.i.a: ; preds = %bb.fb
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %46, ptr noundef nonnull %i.md, i64 noundef %i.bdn, i64 noundef 8) #15
  %.pre.i.i.i324 = load i32, ptr %i.me, align 8, !tbaa !42
  %.pre13.i.i.i = zext i32 %.pre.i.i.i324 to i64
  br label %_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i

_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i: ; preds = %_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i.i.i.a, %bb.fb
  %.pre-phi.i.i.i = phi i64 [ 0, %bb.fb ], [ %.pre13.i.i.i, %_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i.i.i.a ] ; 3 uses
  %.not11.i.i.i = icmp samesign eq i64 %.pre-phi.i.i.i, %i.bdn
  br i1 %.not11.i.i.i, label %.preheader151.i.us.i, label %.lr.ph.preheader.i.i.i316

.lr.ph.preheader.i.i.i316:                        ; preds = %_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i
  %148 = load ptr, ptr %46, align 8, !tbaa !41
  %i.bdp = getelementptr [8 x i8], ptr %148, i64 %.pre-phi.i.i.i
  %i.bdq = sub nsw i64 %i.bdn, %.pre-phi.i.i.i
  %i.bdr = shl nsw i64 %i.bdq, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bdp, i8 0, i64 %i.bdr, i1 false), !tbaa !140
  br label %.preheader151.i.us.i

.preheader151.i.us.i:                             ; preds = %.lr.ph.preheader.i.i.i316, %_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i
  store i32 %i.bdi, ptr %i.me, align 8, !tbaa !42
  br i1 %i.baz, label %._crit_edge.i.i321, label %.preheader151.i.i

.preheader151.i.i:                                ; preds = %.preheader151.i.us.i, %_ZN4llvmplERKNS_5TwineES2_.exit129.i.loopexit.i
  %indvars.iv179.i.i = phi i64 [ %indvars.iv.next180.i.i, %_ZN4llvmplERKNS_5TwineES2_.exit129.i.loopexit.i ], [ 0, %.preheader151.i.us.i ] ; 3 uses
  %.066154.i.i = phi i32 [ %i.bef, %_ZN4llvmplERKNS_5TwineES2_.exit129.i.loopexit.i ], [ 0, %.preheader151.i.us.i ]
  br label %.lr.ph.i.i317

._crit_edge.i.i321:                               ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit129.i.loopexit.i, %.preheader151.i.us.i
  %i.bds = load ptr, ptr %46, align 8, !tbaa !41  ; 2 uses
  %i.bdt = icmp eq ptr %i.bds, %i.md
  br i1 %i.bdt, label %_ZN4llvm11SmallVectorIPNS_5ValueELj8EED2Ev.exit.i.i322, label %bb.fc

bb.fc:                                            ; preds = %._crit_edge.i.i321
  call void @free(ptr noundef %i.bds) #15
  br label %_ZN4llvm11SmallVectorIPNS_5ValueELj8EED2Ev.exit.i.i322

_ZN4llvm11SmallVectorIPNS_5ValueELj8EED2Ev.exit.i.i322: ; preds = %bb.fc, %._crit_edge.i.i321
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #15
  br label %.loopexit.i.i323

_ZN4llvmplERKNS_5TwineES2_.exit129.i.loopexit.i:  ; preds = %.lr.ph.i.i317
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #15
  %i.bdu = call { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(72) %i.aen) #15 ; 2 uses
  %i.bdv = extractvalue { ptr, i64 } %i.bdu, 0
  %i.bdw = extractvalue { ptr, i64 } %i.bdu, 1
  store i8 5, ptr %i.mg, align 8, !tbaa !137, !alias.scope !499
  store i8 3, ptr %i.mh, align 1, !tbaa !138, !alias.scope !499
  store ptr %i.bdv, ptr %48, align 8, !tbaa !139, !alias.scope !499
  store i64 %i.bdw, ptr %i.mi, align 8, !tbaa !139, !alias.scope !499
  store ptr @.str.2, ptr %i.mj, align 8, !tbaa !139, !alias.scope !499
  %i.bdx = inttoptr i64 %indvars.iv179.i.i to ptr ; 2 uses
  store ptr %48, ptr %47, align 8, !alias.scope !500
  store ptr %i.bdx, ptr %i.mk, align 8, !alias.scope !500
  store i8 2, ptr %i.ml, align 8, !tbaa !137, !alias.scope !500
  store i8 9, ptr %i.mm, align 1, !tbaa !138, !alias.scope !500
  %i.bdy = call fastcc noundef ptr @_ZL11concatenateRN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEENS_8ArrayRefIPNS_5ValueEEERKN12_GLOBAL__N_111VectorSplitENS_5TwineE(ptr noundef nonnull align 8 dereferenceable(104) %37, ptr nonnull %i.beh, ptr noundef nonnull align 8 dereferenceable(32) %45, ptr noundef nonnull byval(%"class.llvm::Twine") align 8 %47)
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #15
  %i.bdz = call { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(72) %i.aen) #15 ; 2 uses
  %i.bea = extractvalue { ptr, i64 } %i.bdz, 0
  %i.beb = extractvalue { ptr, i64 } %i.bdz, 1
  store i8 5, ptr %i.mn, align 8, !tbaa !137, !alias.scope !501
  store i8 3, ptr %i.mo, align 1, !tbaa !138, !alias.scope !501
  store ptr %i.bea, ptr %50, align 8, !tbaa !139, !alias.scope !501
  store i64 %i.beb, ptr %i.mp, align 8, !tbaa !139, !alias.scope !501
  store ptr @.str.2, ptr %i.mq, align 8, !tbaa !139, !alias.scope !501
  store ptr %50, ptr %49, align 8, !alias.scope !502
  store ptr %i.bdx, ptr %i.mr, align 8, !alias.scope !502
  store i8 2, ptr %i.ms, align 8, !tbaa !137, !alias.scope !502
  store i8 9, ptr %i.mt, align 1, !tbaa !138, !alias.scope !502
  %i.bec = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateCastENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeENS_9FMFSourceE(ptr noundef nonnull align 8 dereferenceable(88) %37, i32 noundef 51, ptr noundef %i.bdy, ptr noundef nonnull %.sroa.12.0.i142.i.i, ptr noundef nonnull align 8 dereferenceable(34) %49, ptr noundef null, i64 0)
  %i.bed = load ptr, ptr %39, align 8, !tbaa !41
  %i.bee = getelementptr inbounds nuw [8 x i8], ptr %i.bed, i64 %indvars.iv179.i.i
  store ptr %i.bec, ptr %i.bee, align 8, !tbaa !140
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #15
  %indvars.iv.next180.i.i = add nuw nsw i64 %indvars.iv179.i.i, 1 ; 2 uses
  %exitcond183.not.i.i = icmp eq i64 %indvars.iv.next180.i.i, %i.bay
  br i1 %exitcond183.not.i.i, label %._crit_edge.i.i321, label %.preheader151.i.i, !llvm.loop !328

.lr.ph.i.i317:                                    ; preds = %.lr.ph.i.i317, %.preheader151.i.i
  %indvars.iv.i.i318 = phi i64 [ 0, %.preheader151.i.i ], [ %indvars.iv.next.i.i319, %.lr.ph.i.i317 ] ; 2 uses
  %.167152.i.i = phi i32 [ %.066154.i.i, %.preheader151.i.i ], [ %i.bef, %.lr.ph.i.i317 ] ; 2 uses
  %i.bef = add i32 %.167152.i.i, 1                ; 2 uses
  %i.beg = call fastcc noundef ptr @_ZN12_GLOBAL__N_19ScattererixEj(ptr noundef nonnull align 8 dereferenceable(160) %38, i32 noundef %.167152.i.i)
  %i.beh = load ptr, ptr %46, align 8, !tbaa !41  ; 2 uses
  %i.bei = getelementptr inbounds nuw [8 x i8], ptr %i.beh, i64 %indvars.iv.i.i318
  store ptr %i.beg, ptr %i.bei, align 8, !tbaa !140
  %indvars.iv.next.i.i319 = add nuw nsw i64 %indvars.iv.i.i318, 1 ; 2 uses
  %exitcond.not.i.i320 = icmp eq i64 %indvars.iv.next.i.i319, %i.bdn
  br i1 %exitcond.not.i.i320, label %_ZN4llvmplERKNS_5TwineES2_.exit129.i.loopexit.i, label %.lr.ph.i.i317, !llvm.loop !329

.loopexit.i.i323:                                 ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit.i.i331, %_ZN4llvm11SmallVectorIPNS_5ValueELj8EED2Ev.exit.i.i322, %._crit_edge171.i.i, %.preheader.i.i329
  call fastcc void @_ZN12_GLOBAL__N_117ScalarizerVisitor6gatherEPN4llvm11InstructionERKNS1_11SmallVectorIPNS1_5ValueELj8EEERKNS_11VectorSplitE(ptr noundef nonnull align 8 dereferenceable(1136) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.aen, ptr noundef nonnull align 8 dereferenceable(80) %39, ptr noundef nonnull align 8 dereferenceable(32) %35)
  br label %bb.fd

bb.fd:                                            ; preds = %.loopexit.i.i323, %bb.fa
  %.0.i.i315 = phi i1 [ true, %.loopexit.i.i323 ], [ false, %bb.fa ]
  %i.bej = load ptr, ptr %39, align 8, !tbaa !41  ; 2 uses
  %i.bek = icmp eq ptr %i.bej, %i.lw
  br i1 %i.bek, label %_ZN4llvm11SmallVectorIPNS_5ValueELj8EED2Ev.exit130.i.i, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  call void @free(ptr noundef %i.bej) #15
  br label %_ZN4llvm11SmallVectorIPNS_5ValueELj8EED2Ev.exit130.i.i

_ZN4llvm11SmallVectorIPNS_5ValueELj8EED2Ev.exit130.i.i: ; preds = %bb.fe, %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #15
  %i.bel = load ptr, ptr %i.nl, align 8, !tbaa !41 ; 2 uses
  %i.bem = icmp eq ptr %i.bel, %i.nm
  br i1 %i.bem, label %_ZN4llvm11InstVisitorIN12_GLOBAL__N_117ScalarizerVisitorEbE12visitBitCastERNS_11BitCastInstE.exit, label %bb.ff

bb.ff:                                            ; preds = %_ZN4llvm11SmallVectorIPNS_5ValueELj8EED2Ev.exit130.i.i
  call void @free(ptr noundef %i.bel) #15
  br label %_ZN4llvm11InstVisitorIN12_GLOBAL__N_117ScalarizerVisitorEbE12visitBitCastERNS_11BitCastInstE.exit

_ZN4llvm11InstVisitorIN12_GLOBAL__N_117ScalarizerVisitorEbE12visitBitCastERNS_11BitCastInstE.exit.thread: ; preds = %_ZN12_GLOBAL__N_117ScalarizerVisitor14getVectorSplitEPN4llvm4TypeE.exit95.i.i, %_ZN12_GLOBAL__N_117ScalarizerVisitor14getVectorSplitEPN4llvm4TypeE.exit.i.i306, %bb.el
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %47)
  %i.ben = getelementptr inbounds nuw i8, ptr %.sroa.01.081, i64 8
  %i.beo = load ptr, ptr %i.ben, align 8, !tbaa !155
  br label %bb.rs

_ZN4llvm11InstVisitorIN12_GLOBAL__N_117ScalarizerVisitorEbE12visitBitCastERNS_11BitCastInstE.exit: ; preds = %_ZN4llvm11SmallVectorIPNS_5ValueELj8EED2Ev.exit130.i.i, %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #15
  call void @_ZN4llvm24IRBuilderDefaultInserterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.lk) #15
  call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.lj) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %47)
  %i.bep = getelementptr inbounds nuw i8, ptr %.sroa.01.081, i64 8
  %i.beq = load ptr, ptr %i.bep, align 8, !tbaa !155 ; 2 uses
  br i1 %.0.i.i315, label %bb.rq, label %bb.rs

.split40:                                         ; preds = %.lr.ph
  %i.ber = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_117ScalarizerVisitor13visitCastInstERN4llvm8CastInstE(ptr noundef nonnull align 8 dereferenceable(1136) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.aen)
  %i.bes = getelementptr inbounds nuw i8, ptr %.sroa.01.081, i64 8
  %i.bet = load ptr, ptr %i.bes, align 8, !tbaa !155 ; 2 uses
  br i1 %i.ber, label %bb.rq, label %bb.rs

bb.fg:                                            ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #15
  %i.beu = getelementptr inbounds i8, ptr %.sroa.01.081, i64 -16 ; 4 uses
  %i.bev = load ptr, ptr %i.beu, align 8, !tbaa !94 ; 5 uses
  %.val22.i.i.i244 = load i32, ptr %i.q, align 4  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !503)
  %i.bew = getelementptr inbounds nuw i8, ptr %i.bev, i64 8
  %i.bex = load i32, ptr %i.bew, align 8, !noalias !503
  %i.bey = and i32 %i.bex, 255
  %i.bez = icmp ne i32 %i.bey, 18
  %.not4.i.i.i.i245 = icmp eq ptr %i.bev, null
  %.not.i.i.i.i246 = or i1 %.not4.i.i.i.i245, %i.bez
  br i1 %.not.i.i.i.i246, label %_ZN4llvm11InstVisitorIN12_GLOBAL__N_117ScalarizerVisitorEbE9visitICmpERNS_8ICmpInstE.exit.thread, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.bfa = getelementptr inbounds nuw i8, ptr %i.bev, i64 32
  %i.bfb = load i32, ptr %i.bfa, align 8, !tbaa !129, !noalias !503 ; 6 uses
  %i.bfc = getelementptr inbounds nuw i8, ptr %i.bev, i64 24
  %i.bfd = load ptr, ptr %i.bfc, align 8, !tbaa !130, !noalias !503 ; 8 uses
  %i.bfe = icmp eq i32 %i.bfb, 1
  br i1 %i.bfe, label %bb.fo, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.bff = getelementptr inbounds nuw i8, ptr %i.bfd, i64 8
  %i.bfg = load i32, ptr %i.bff, align 8, !noalias !503
  %i.bfh = and i32 %i.bfg, 255
  %i.bfi = icmp eq i32 %i.bfh, 15
  br i1 %i.bfi, label %bb.fo, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.bfj = call noundef i32 @_ZNK4llvm4Type19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bfd) #18, !noalias !503 ; 2 uses
  %i.bfk = shl i32 %i.bfj, 1
  %i.bfl = icmp ugt i32 %i.bfk, %.val22.i.i.i244
  br i1 %i.bfl, label %bb.fo, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.bfm = udiv i32 %.val22.i.i.i244, %i.bfj      ; 6 uses
  %.not20.i.i.i.i247 = icmp ult i32 %i.bfm, %i.bfb
  br i1 %.not20.i.i.i.i247, label %bb.fl, label %_ZN4llvm11InstVisitorIN12_GLOBAL__N_117ScalarizerVisitorEbE9visitICmpERNS_8ICmpInstE.exit.thread

bb.fl:                                            ; preds = %bb.fk
  %i.bfn = add i32 %i.bfb, -1
  %i.bfo = udiv i32 %i.bfn, %i.bfm
  %i.bfp = add nuw i32 %i.bfo, 1                  ; 2 uses
  %i.bfq = call noundef ptr @_ZN4llvm15FixedVectorType3getEPNS_4TypeEj(ptr noundef nonnull %i.bfd, i32 noundef %i.bfm) #15, !noalias !503 ; 2 uses
  %i.bfr = urem i32 %i.bfb, %i.bfm                ; 3 uses
  %i.bfs = icmp ugt i32 %i.bfr, 1
  br i1 %i.bfs, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  %i.bft = call noundef ptr @_ZN4llvm15FixedVectorType3getEPNS_4TypeEj(ptr noundef nonnull %i.bfd, i32 noundef %i.bfr) #15, !noalias !503
  br label %bb.fo

bb.fn:                                            ; preds = %bb.fl
  %i.bfu = icmp eq i32 %i.bfr, 1
  %spec.select.i.i.i.i249 = select i1 %i.bfu, ptr %i.bfd, ptr null
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %bb.fm, %bb.fj, %bb.fi, %bb.fh
  %i.bfv = phi i32 [ %i.bfm, %bb.fn ], [ %i.bfm, %bb.fm ], [ 1, %bb.fh ], [ 1, %bb.fj ], [ 1, %bb.fi ] ; 2 uses
  %i.bfw = phi i32 [ %i.bfp, %bb.fn ], [ %i.bfp, %bb.fm ], [ 1, %bb.fh ], [ %i.bfb, %bb.fj ], [ %i.bfb, %bb.fi ] ; 6 uses
  %.sroa.12.0.i.i.i.i250 = phi ptr [ %i.bfq, %bb.fn ], [ %i.bfq, %bb.fm ], [ %i.bfd, %bb.fh ], [ %i.bfd, %bb.fj ], [ %i.bfd, %bb.fi ]
  %.sroa.14.0.i.i.i.i251 = phi ptr [ %spec.select.i.i.i.i249, %bb.fn ], [ %i.bft, %bb.fm ], [ null, %bb.fh ], [ null, %bb.fj ], [ null, %bb.fi ]
  store ptr %i.bev, ptr %51, align 8, !tbaa !132, !alias.scope !503
  store i32 %i.bfv, ptr %.sroa.6.0..sroa_idx.i.i.i.i252, align 8, !tbaa !133, !alias.scope !503
  store i32 %i.bfw, ptr %.sroa.10.0..sroa_idx.i.i.i.i253, align 4, !tbaa !133, !alias.scope !503
  store ptr %.sroa.12.0.i.i.i.i250, ptr %.sroa.12.0..sroa_idx.i.i.i.i254, align 8, !tbaa !134, !alias.scope !503
  store ptr %.sroa.14.0.i.i.i.i251, ptr %.sroa.14.0..sroa_idx.i.i.i.i255, align 8, !tbaa !134, !alias.scope !503
  store i8 1, ptr %i.kd, align 8, !tbaa !157, !alias.scope !503
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #15
  %i.bfx = getelementptr inbounds i8, ptr %.sroa.01.081, i64 -20 ; 3 uses
  %i.bfy = load i32, ptr %i.bfx, align 4          ; 2 uses
  %i.bfz = and i32 %i.bfy, 1073741824
  %.not.i.i.i.i.i256 = icmp eq i32 %i.bfz, 0
  br i1 %.not.i.i.i.i.i256, label %_ZNK4llvm4User10getOperandEj.exit.i.i.i302, label %_ZNK4llvm4User10getOperandEj.exit.thread.i.i.i257

_ZNK4llvm4User10getOperandEj.exit.i.i.i302:       ; preds = %bb.fo
  %i.bga = and i32 %i.bfy, 268435455
  %i.bgb = zext nneg i32 %i.bga to i64
  %i.bgc = sub nsw i64 0, %i.bgb
  %i.bgd = getelementptr inbounds [32 x i8], ptr %i.aen, i64 %i.bgc
  %i.bge = load ptr, ptr %i.bgd, align 8, !tbaa !148
  %i.bgf = getelementptr inbounds nuw i8, ptr %i.bge, i64 8
  %i.bgg = load ptr, ptr %i.bgf, align 8, !tbaa !94 ; 2 uses
  %i.bgh = load ptr, ptr %i.beu, align 8, !tbaa !94 ; 2 uses
  %i.bgi = icmp eq ptr %i.bgg, %i.bgh
  br i1 %i.bgi, label %bb.fp, label %_ZNK4llvm4User10getOperandEj.exit27.i.i.i258

_ZNK4llvm4User10getOperandEj.exit.thread.i.i.i257: ; preds = %bb.fo
  %i.bgj = getelementptr inbounds i8, ptr %.sroa.01.081, i64 -32
  %i.bgk = load ptr, ptr %i.bgj, align 8, !tbaa !147
  %i.bgl = load ptr, ptr %i.bgk, align 8, !tbaa !148
  %i.bgm = getelementptr inbounds nuw i8, ptr %i.bgl, i64 8
  %i.bgn = load ptr, ptr %i.bgm, align 8, !tbaa !94 ; 2 uses
  %i.bgo = load ptr, ptr %i.beu, align 8, !tbaa !94 ; 2 uses
  %i.bgp = icmp eq ptr %i.bgn, %i.bgo
  br i1 %i.bgp, label %bb.fp, label %_ZNK4llvm4User10getOperandEj.exit27.i.i.i258

bb.fp:                                            ; preds = %_ZNK4llvm4User10getOperandEj.exit.thread.i.i.i257, %_ZNK4llvm4User10getOperandEj.exit.i.i.i302
  %i.bgq = phi ptr [ %i.bgo, %_ZNK4llvm4User10getOperandEj.exit.thread.i.i.i257 ], [ %i.bgh, %_ZNK4llvm4User10getOperandEj.exit.i.i.i302 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %52, ptr noundef nonnull align 8 dereferenceable(40) %51, i64 40, i1 false)
  br label %bb.fx

_ZNK4llvm4User10getOperandEj.exit27.i.i.i258:     ; preds = %_ZNK4llvm4User10getOperandEj.exit.thread.i.i.i257, %_ZNK4llvm4User10getOperandEj.exit.i.i.i302
  %i.bgr = phi ptr [ %i.bgn, %_ZNK4llvm4User10getOperandEj.exit.thread.i.i.i257 ], [ %i.bgg, %_ZNK4llvm4User10getOperandEj.exit.i.i.i302 ] ; 5 uses
  %.val.i.i.i259 = load i32, ptr %i.q, align 4    ; 2 uses
  %i.bgs = getelementptr inbounds nuw i8, ptr %i.bgr, i64 8
  %i.bgt = load i32, ptr %i.bgs, align 8, !noalias !504
  %i.bgu = and i32 %i.bgt, 255
  %i.bgv = icmp ne i32 %i.bgu, 18
  %.not4.i28.i.i.i260 = icmp eq ptr %i.bgr, null
  %.not.i29.i.i.i261 = or i1 %.not4.i28.i.i.i260, %i.bgv
  br i1 %.not.i29.i.i.i261, label %_ZN12_GLOBAL__N_117ScalarizerVisitor14getVectorSplitEPN4llvm4TypeE.exit41.i.i.i263, label %bb.fq

bb.fq:                                            ; preds = %_ZNK4llvm4User10getOperandEj.exit27.i.i.i258
  %i.bgw = getelementptr inbounds nuw i8, ptr %i.bgr, i64 32
  %i.bgx = load i32, ptr %i.bgw, align 8, !tbaa !129, !noalias !504 ; 6 uses
  %i.bgy = getelementptr inbounds nuw i8, ptr %i.bgr, i64 24
  %i.bgz = load ptr, ptr %i.bgy, align 8, !tbaa !130, !noalias !504 ; 8 uses
  %i.bha = icmp eq i32 %i.bgx, 1
  br i1 %i.bha, label %_ZN12_GLOBAL__N_117ScalarizerVisitor14getVectorSplitEPN4llvm4TypeE.exit41.i.i.i263, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.bhb = getelementptr inbounds nuw i8, ptr %i.bgz, i64 8
  %i.bhc = load i32, ptr %i.bhb, align 8, !noalias !504
  %i.bhd = and i32 %i.bhc, 255
  %i.bhe = icmp eq i32 %i.bhd, 15
  br i1 %i.bhe, label %_ZN12_GLOBAL__N_117ScalarizerVisitor14getVectorSplitEPN4llvm4TypeE.exit41.i.i.i263, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.bhf = call noundef i32 @_ZNK4llvm4Type19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bgz) #18, !noalias !504 ; 2 uses
  %i.bhg = shl i32 %i.bhf, 1
  %i.bhh = icmp ugt i32 %i.bhg, %.val.i.i.i259
  br i1 %i.bhh, label %_ZN12_GLOBAL__N_117ScalarizerVisitor14getVectorSplitEPN4llvm4TypeE.exit41.i.i.i263, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.bhi = udiv i32 %.val.i.i.i259, %i.bhf        ; 6 uses
  %.not20.i30.i.i.i262 = icmp ult i32 %i.bhi, %i.bgx
  br i1 %.not20.i30.i.i.i262, label %bb.fu, label %_ZN12_GLOBAL__N_117ScalarizerVisitor14getVectorSplitEPN4llvm4TypeE.exit41.i.i.i263

bb.fu:                                            ; preds = %bb.ft
end_hunk_3
