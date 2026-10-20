Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/wasmi-f4c56b525af24363.wasmi.a5f598a5e97a06b2-cgu.13?download=true
inline.NumInlined: 466
inline.NumDeleted: 255
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_RNvMs0_NtNtCsefoF4u9kbII_5wasmi4func2tyNtB5_8FuncType11len_results
define hidden noundef i16 @_RNvMs0_NtNtCsefoF4u9kbII_5wasmi4func2tyNtB5_8FuncType11len_results(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i16 @_RNvMs2_NtCs5zeGauAcNNa_10wasmi_core9func_typeNtB5_8FuncType11len_results(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0)
  ret i16 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 -1, 5) i8 @_RNvMs0_NtNtCsefoF4u9kbII_5wasmi4func2tyNtB5_8FuncType15prepare_outputs(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 %1, i64 noundef range(i64 0, 384307168202282326) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = tail call { ptr, i64 } @_RNvMs2_NtCs5zeGauAcNNa_10wasmi_core9func_typeNtB5_8FuncType7results(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0)
  %i.c = extractvalue { ptr, i64 } %i.b, 1
  %.not = icmp eq i64 %i.c, %2
  br i1 %.not, label %bb.b, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtCsefoF4u9kbII_5wasmi5value3ValEINtBZ_4IterNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEEINtB5_7ZipImplBW_B1Y_E4nextB1t_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %2
  %i.e = tail call { ptr, i64 } @_RNvMs2_NtCs5zeGauAcNNa_10wasmi_core9func_typeNtB5_8FuncType7results(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0        ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.e, 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.g
  call void @_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtCsefoF4u9kbII_5wasmi5value3ValEINtBZ_4IterNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEEINtB5_7ZipImplBW_B1Y_E3newB1t_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %1, ptr noundef nonnull %i.d, ptr noundef nonnull readonly %i.f, ptr noundef nonnull readonly %i.h)
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8 ; 6 uses
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.412.0.copyload = load ptr, ptr %.sroa.412.0..sroa_idx, align 8 ; 6 uses
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.513.0.copyload = load i64, ptr %.sroa.513.0..sroa_idx, align 8 ; 5 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 4 uses
  %i.i = icmp ult i64 %.sroa.513.0.copyload, %.sroa.7.0.copyload
  br i1 %i.i, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtCsefoF4u9kbII_5wasmi5value3ValEINtBZ_4IterNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEEINtB5_7ZipImplBW_B1Y_E4nextB1t_.exit.lr.ph, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtCsefoF4u9kbII_5wasmi5value3ValEINtBZ_4IterNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEEINtB5_7ZipImplBW_B1Y_E4nextB1t_.exit.thread

_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtCsefoF4u9kbII_5wasmi5value3ValEINtBZ_4IterNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEEINtB5_7ZipImplBW_B1Y_E4nextB1t_.exit.lr.ph: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.412.0.copyload) ]
  %i.j = sub nuw i64 %.sroa.7.0.copyload, %.sroa.513.0.copyload
  %xtraiter = and i64 %i.j, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtCsefoF4u9kbII_5wasmi5value3ValEINtBZ_4IterNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEEINtB5_7ZipImplBW_B1Y_E4nextB1t_.exit.prol.loopexit, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtCsefoF4u9kbII_5wasmi5value3ValEINtBZ_4IterNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEEINtB5_7ZipImplBW_B1Y_E4nextB1t_.exit.prol

_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtCsefoF4u9kbII_5wasmi5value3ValEINtBZ_4IterNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEEINtB5_7ZipImplBW_B1Y_E4nextB1t_.exit.prol: ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtCsefoF4u9kbII_5wasmi5value3ValEINtBZ_4IterNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEEINtB5_7ZipImplBW_B1Y_E4nextB1t_.exit.lr.ph, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtCsefoF4u9kbII_5wasmi5value3ValEINtBZ_4IterNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEEINtB5_7ZipImplBW_B1Y_E4nextB1t_.exit.prol
  %.sroa.513.018.prol = phi i64 [ %i.m, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtCsefoF4u9kbII_5wasmi5value3ValEINtBZ_4IterNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEEINtB5_7ZipImplBW_B1Y_E4nextB1t_.exit.prol ], [ %.sroa.513.0.copyload, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtCsefoF4u9kbII_5wasmi5value3ValEINtBZ_4IterNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEEINtB5_7ZipImplBW_B1Y_E4nextB1t_.exit.lr.ph ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtCsefoF4u9kbII_5wasmi5value3ValEINtBZ_4IterNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEEINtB5_7ZipImplBW_B1Y_E4nextB1t_.exit.prol ], [ 0, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtCsefoF4u9kbII_5wasmi5value3ValEINtBZ_4IterNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEEINtB5_7ZipImplBW_B1Y_E4nextB1t_.exit.lr.ph ]
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.513.018.prol ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.412.0.copyload, i64 %.sroa.513.018.prol
  %i.m = add nuw i64 %.sroa.513.018.prol, 1       ; 2 uses
  %i.n = load i8, ptr %i.l, align 1, !range !11, !noundef !4
  store i8 %i.n, ptr %i.k, align 8
  %.sroa.10.0..sroa.01.0.2.sroa_idx.prol = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.10.0..sroa.01.0.2.sroa_idx.prol, i8 0, i64 23, i1 false)
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtCsefoF4u9kbII_5wasmi5value3ValEINtBZ_4IterNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEEINtB5_7ZipImplBW_B1Y_E4nextB1t_.exit.prol.loopexit, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtCsefoF4u9kbII_5wasmi5value3ValEINtBZ_4IterNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEEINtB5_7ZipImplBW_B1Y_E4nextB1t_.exit.prol, !llvm.loop !704

_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtCsefoF4u9kbII_5wasmi5value3ValEINtBZ_4IterNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEEINtB5_7ZipImplBW_B1Y_E4nextB1t_.exit.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtCsefoF4u9kbII_5wasmi5value3ValEINtBZ_4IterNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEEINtB5_7ZipImplBW_B1Y_E4nextB1t_.exit.prol, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtCsefoF4u9kbII_5wasmi5value3ValEINtBZ_4IterNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEEINtB5_7ZipImplBW_B1Y_E4nextB1t_.exit.lr.ph
  %.sroa.513.018.unr = phi i64 [ %.sroa.513.0.copyload, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtCsefoF4u9kbII_5wasmi5value3ValEINtBZ_4IterNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEEINtB5_7ZipImplBW_B1Y_E4nextB1t_.exit.lr.ph ], [ %i.m, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtCsefoF4u9kbII_5wasmi5value3ValEINtBZ_4IterNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEEINtB5_7ZipImplBW_B1Y_E4nextB1t_.exit.prol ]
  %i.o = sub i64 %.sroa.513.0.copyload, %.sroa.7.0.copyload
  %i.p = icmp ugt i64 %i.o, -4
  br i1 %i.p, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtCsefoF4u9kbII_5wasmi5value3ValEINtBZ_4IterNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEEINtB5_7ZipImplBW_B1Y_E4nextB1t_.exit.thread, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtCsefoF4u9kbII_5wasmi5value3ValEINtBZ_4IterNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEEINtB5_7ZipImplBW_B1Y_E4nextB1t_.exit

_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtCsefoF4u9kbII_5wasmi5value3ValEINtBZ_4IterNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEEINtB5_7ZipImplBW_B1Y_E4nextB1t_.exit: ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtCsefoF4u9kbII_5wasmi5value3ValEINtBZ_4IterNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEEINtB5_7ZipImplBW_B1Y_E4nextB1t_.exit.prol.loopexit, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtCsefoF4u9kbII_5wasmi5value3ValEINtBZ_4IterNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEEINtB5_7ZipImplBW_B1Y_E4nextB1t_.exit
  %.sroa.513.018 = phi i64 [ %i.ae, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtCsefoF4u9kbII_5wasmi5value3ValEINtBZ_4IterNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEEINtB5_7ZipImplBW_B1Y_E4nextB1t_.exit ], [ %.sroa.513.018.unr, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtCsefoF4u9kbII_5wasmi5value3ValEINtBZ_4IterNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEEINtB5_7ZipImplBW_B1Y_E4nextB1t_.exit.prol.loopexit ] ; 6 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.513.018 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.412.0.copyload, i64 %.sroa.513.018
  %i.s = add nuw i64 %.sroa.513.018, 1            ; 2 uses
  %i.t = load i8, ptr %i.r, align 1, !range !11, !noundef !4
  store i8 %i.t, ptr %i.q, align 8
  %.sroa.10.0..sroa.01.0.2.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.10.0..sroa.01.0.2.sroa_idx, i8 0, i64 23, i1 false)
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload, i64 %i.s ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.412.0.copyload, i64 %i.s
  %i.w = add nuw i64 %.sroa.513.018, 2            ; 2 uses
  %i.x = load i8, ptr %i.v, align 1, !range !11, !noundef !4
  store i8 %i.x, ptr %i.u, align 8
  %.sroa.10.0..sroa.01.0.2.sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.10.0..sroa.01.0.2.sroa_idx.1, i8 0, i64 23, i1 false)
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload, i64 %i.w ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.412.0.copyload, i64 %i.w
  %i.aa = add nuw i64 %.sroa.513.018, 3           ; 2 uses
  %i.ab = load i8, ptr %i.z, align 1, !range !11, !noundef !4
  store i8 %i.ab, ptr %i.y, align 8
  %.sroa.10.0..sroa.01.0.2.sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.10.0..sroa.01.0.2.sroa_idx.2, i8 0, i64 23, i1 false)
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload, i64 %i.aa ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.412.0.copyload, i64 %i.aa
  %i.ae = add nuw i64 %.sroa.513.018, 4           ; 2 uses
  %i.af = load i8, ptr %i.ad, align 1, !range !11, !noundef !4
  store i8 %i.af, ptr %i.ac, align 8
  %.sroa.10.0..sroa.01.0.2.sroa_idx.3 = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %exitcond.not.3 = icmp eq i64 %i.ae, %.sroa.7.0.copyload
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.10.0..sroa.01.0.2.sroa_idx.3, i8 0, i64 23, i1 false)
  br i1 %exitcond.not.3, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtCsefoF4u9kbII_5wasmi5value3ValEINtBZ_4IterNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEEINtB5_7ZipImplBW_B1Y_E4nextB1t_.exit.thread, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtCsefoF4u9kbII_5wasmi5value3ValEINtBZ_4IterNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEEINtB5_7ZipImplBW_B1Y_E4nextB1t_.exit

_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtCsefoF4u9kbII_5wasmi5value3ValEINtBZ_4IterNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEEINtB5_7ZipImplBW_B1Y_E4nextB1t_.exit.thread: ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtCsefoF4u9kbII_5wasmi5value3ValEINtBZ_4IterNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEEINtB5_7ZipImplBW_B1Y_E4nextB1t_.exit.prol.loopexit, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtCsefoF4u9kbII_5wasmi5value3ValEINtBZ_4IterNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEEINtB5_7ZipImplBW_B1Y_E4nextB1t_.exit, %bb.b, %bb.a
  %.sroa.0.0 = phi i8 [ 4, %bb.a ], [ -1, %bb.b ], [ -1, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtCsefoF4u9kbII_5wasmi5value3ValEINtBZ_4IterNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEEINtB5_7ZipImplBW_B1Y_E4nextB1t_.exit ], [ -1, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtCsefoF4u9kbII_5wasmi5value3ValEINtBZ_4IterNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEEINtB5_7ZipImplBW_B1Y_E4nextB1t_.exit.prol.loopexit ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMs0_NtNtCsefoF4u9kbII_5wasmi4func2tyNtB5_8FuncType6params(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvMs2_NtCs5zeGauAcNNa_10wasmi_core9func_typeNtB5_8FuncType6params(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0)
  ret { ptr, i64 } %i.a
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMs0_NtNtCsefoF4u9kbII_5wasmi4func2tyNtB5_8FuncType7results(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvMs2_NtCs5zeGauAcNNa_10wasmi_core9func_typeNtB5_8FuncType7results(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0)
  ret { ptr, i64 } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_11VacantEntryINtNtBd_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternE12insert_entryB1J_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !noundef !4 ; 12 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.e = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeIBx_eENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternEE13new_uninit_inB1B_()
          to label %bb.c unwind label %bb.bo      ; 6 uses

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  store ptr null, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 318 ; 3 uses
  store i16 0, ptr %i.g, align 2
  store ptr %i.e, ptr %i.d, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 0, ptr %i.h, align 8
  %i.i = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noundef !4 ; 3 uses
  %i.l = load i16, ptr %i.g, align 2, !noalias !827, !noundef !4 ; 3 uses
  %i.m = icmp ult i16 %i.l, 11
  br i1 %i.m, label %bb.h, label %bb.d, !prof !8

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #31
          to label %bb.g unwind label %bb.e, !noalias !827

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = icmp eq i64 %i.k, 0
  br i1 %i.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi.exit14, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef range(i64 1, 0) %i.k, i64 noundef 1) #29, !noalias !828
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi.exit14

bb.g:                                             ; preds = %bb.d
  unreachable

bb.h:                                             ; preds = %bb.c
  %i.p = zext nneg i16 %i.l to i64                ; 3 uses
  %i.q = add nuw nsw i16 %i.l, 1
  store i16 %i.q, ptr %i.g, align 2, !noalias !827
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.p ; 2 uses
  store ptr %i.i, ptr %i.r, align 8, !noalias !827
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.k, ptr %i.s, align 8, !noalias !827
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 184
  %i.u = getelementptr inbounds nuw [12 x i8], ptr %i.t, i64 %i.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.u, ptr noundef nonnull readonly align 4 dereferenceable(12) %2, i64 12, i1 false), !noalias !829
  br label %_RINvMsN_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3T_11VacantEntryB1D_B1X_E12insert_entry0EB23_.exit

_RINvMsN_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3T_11VacantEntryB1D_B1X_E12insert_entry0EB23_.exit: ; preds = %_RINvMsM_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB23_.exit.i, %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %_RINvMsK_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB23_.exit.thread.i, %_RINvMsK_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB23_.exit.i, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeINtNtB8_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternEEEB2u_.exit.i.i.i, %bb.bn, %bb.h
  %i.v = phi ptr [ %i.d, %bb.h ], [ %.val9, %_RINvMsK_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB23_.exit.i ], [ %.val9, %bb.bn ], [ %.val9, %_RINvMsK_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB23_.exit.thread.i ], [ %.val9, %.lr.ph.i.i.i.i.prol.loopexit ], [ %.val9, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeINtNtB8_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternEEEB2u_.exit.i.i.i ], [ %.val9, %.lr.ph.i.i.i.i ], [ %.val9, %_RINvMsM_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB23_.exit.i ] ; 2 uses
  %.sroa.8.0 = phi i64 [ %i.p, %bb.h ], [ %.sroa.510.0.i.i, %_RINvMsK_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB23_.exit.i ], [ %.sroa.510.0.i.i, %bb.bn ], [ %.sroa.6.0.copyload, %_RINvMsK_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB23_.exit.thread.i ], [ %.sroa.510.0.i.i, %.lr.ph.i.i.i.i.prol.loopexit ], [ %.sroa.510.0.i.i, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeINtNtB8_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternEEEB2u_.exit.i.i.i ], [ %.sroa.510.0.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.510.0.i.i, %_RINvMsM_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB23_.exit.i ]
  %.sroa.5.0 = phi i64 [ 0, %bb.h ], [ %spec.select.i.i, %_RINvMsK_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB23_.exit.i ], [ %spec.select.i.i, %bb.bn ], [ %.sroa.417.0.copyload, %_RINvMsK_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB23_.exit.thread.i ], [ %spec.select.i.i, %.lr.ph.i.i.i.i.prol.loopexit ], [ %spec.select.i.i, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeINtNtB8_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternEEEB2u_.exit.i.i.i ], [ %spec.select.i.i, %.lr.ph.i.i.i.i ], [ %spec.select.i.i, %_RINvMsM_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB23_.exit.i ]
  %.sroa.0.0 = phi ptr [ %i.e, %bb.h ], [ %spec.select54.i.i, %_RINvMsK_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB23_.exit.i ], [ %spec.select54.i.i, %bb.bn ], [ %i.b, %_RINvMsK_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB23_.exit.thread.i ], [ %spec.select54.i.i, %.lr.ph.i.i.i.i.prol.loopexit ], [ %spec.select54.i.i, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeINtNtB8_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternEEEB2u_.exit.i.i.i ], [ %spec.select54.i.i, %.lr.ph.i.i.i.i ], [ %spec.select54.i.i, %_RINvMsM_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB23_.exit.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !noundef !4
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.w, align 8
  store ptr %.sroa.0.0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8.0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.v, ptr %i.z, align 8
  ret void

bb.i:                                             ; preds = %bb.a
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.417.0.copyload = load i64, ptr %.sroa.417.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 12 uses
  %i.aa = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !4 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val9 = load ptr, ptr %i.ad, align 8           ; 11 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 318 ; 4 uses
  %i.af = load i16, ptr %i.ae, align 2, !noalias !830, !noundef !4 ; 3 uses
  %i.ag = icmp ugt i16 %i.af, 10
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ah = icmp ult i64 %.sroa.6.0.copyload, 5
  br i1 %i.ah, label %bb.p, label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.ai = zext nneg i16 %i.af to i64              ; 2 uses
  %i.aj = add i64 %.sroa.6.0.copyload, 1          ; 3 uses
  %.not.i.i.i = icmp ugt i64 %i.aj, %i.ai
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.6.0.copyload ; 5 uses
  br i1 %.not.i.i.i, label %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertINtNtB8_5boxed3BoxeEECsefoF4u9kbII_5wasmi.exit.i.i.i, label %bb.l

_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertINtNtB8_5boxed3BoxeEECsefoF4u9kbII_5wasmi.exit.i.i.i: ; preds = %bb.k
  store ptr %i.aa, ptr %i.ak, align 8, !alias.scope !831, !noalias !832
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i64 %i.ac, ptr %i.al, align 8, !alias.scope !831, !noalias !833
  tail call void @llvm.experimental.noalias.scope.decl(metadata !834)
  br label %_RINvMsK_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB23_.exit.thread.i

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.aj
  %i.an = sub nsw i64 %i.ai, %.sroa.6.0.copyload  ; 2 uses
  %i.ao = shl nuw nsw i64 %i.an, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.am, ptr nonnull align 8 %i.ak, i64 %i.ao, i1 false), !alias.scope !831, !noalias !832
  store ptr %i.aa, ptr %i.ak, align 8, !alias.scope !831, !noalias !832
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i64 %i.ac, ptr %i.ap, align 8, !alias.scope !831, !noalias !833
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 184 ; 2 uses
  %i.ar = getelementptr inbounds nuw [12 x i8], ptr %i.aq, i64 %.sroa.6.0.copyload
  %i.as = getelementptr inbounds nuw [12 x i8], ptr %i.aq, i64 %i.aj
  %i.at = mul nuw nsw i64 %i.an, 12
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.as, ptr nonnull align 4 %i.ar, i64 %i.at, i1 false), !alias.scope !835, !noalias !833
  br label %_RINvMsK_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB23_.exit.thread.i

bb.m:                                             ; preds = %bb.j
  switch i64 %.sroa.6.0.copyload, label %bb.n [
    i64 5, label %bb.p
    i64 6, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  %i.au = add i64 %.sroa.6.0.copyload, -7
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.j
  %.sroa.09.0.i.i = phi i1 [ true, %bb.o ], [ true, %bb.n ], [ false, %bb.j ], [ false, %bb.m ] ; 2 uses
  %.sroa.510.0.i.i = phi i64 [ 0, %bb.o ], [ %i.au, %bb.n ], [ %.sroa.6.0.copyload, %bb.j ], [ %.sroa.6.0.copyload, %bb.m ] ; 12 uses
  %.sroa.013.0.i.i = phi i64 [ 5, %bb.o ], [ 6, %bb.n ], [ 4, %bb.j ], [ %.sroa.6.0.copyload, %bb.m ] ; 5 uses
  %i.av = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeIBx_eENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternEE13new_uninit_inB1B_()
          to label %.noexc.i.i unwind label %bb.u, !noalias !836 ; 7 uses

.noexc.i.i:                                       ; preds = %bb.p
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 176
  store ptr null, ptr %i.aw, align 8, !noalias !837
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 318 ; 2 uses
  store i16 0, ptr %i.ax, align 2, !noalias !837
  tail call void @llvm.experimental.noalias.scope.decl(metadata !838)
  %i.ay = load i16, ptr %i.ae, align 2, !noalias !839, !noundef !4
  %i.az = zext i16 %i.ay to i64
  %i.ba = xor i64 %.sroa.013.0.i.i, -1
  %i.bb = add nsw i64 %i.az, %i.ba                ; 5 uses
  %i.bc = trunc i64 %i.bb to i16
  store i16 %i.bc, ptr %i.ax, align 2, !alias.scope !838, !noalias !837
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.013.0.i.i ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !839, !nonnull !4, !noundef !4 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !noalias !839, !noundef !4 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 184 ; 2 uses
  %i.bi = getelementptr inbounds nuw [12 x i8], ptr %i.bh, i64 %.sroa.013.0.i.i ; 2 uses
  %.sroa.064.0.copyload.i = load i32, ptr %i.bi, align 4, !noalias !839 ; 2 uses
  %.sroa.465.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %.sroa.465.0.copyload.i = load i64, ptr %.sroa.465.0..sroa_idx.i, align 4, !noalias !839
  %i.bj = icmp ult i64 %i.bb, 12
  br i1 %i.bj, label %bb.v, label %bb.q, !prof !20

bb.q:                                             ; preds = %.noexc.i.i
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bb, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #31
          to label %bb.t unwind label %bb.r, !noalias !839

bb.r:                                             ; preds = %bb.q
  %i.bk = landingpad { ptr, i32 }
          cleanup
  %i.bl = icmp eq i64 %i.bg, 0
  br i1 %i.bl, label %.thread.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.be, i64 noundef range(i64 1, 0) %i.bg, i64 noundef 1) #29, !noalias !840
  br label %.thread.i.i.i

bb.t:                                             ; preds = %bb.q
  unreachable

.thread.i.i.i:                                    ; preds = %bb.s, %bb.r
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.av, i64 noundef 320, i64 noundef 8) #29, !noalias !837
  br label %bb.x

bb.u:                                             ; preds = %bb.p
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.v:                                             ; preds = %.noexc.i.i
  %i.bn = add nuw nsw i64 %.sroa.013.0.i.i, 1     ; 2 uses
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.bn
  %i.bp = shl nuw nsw i64 %i.bb, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(320) %i.av, ptr nonnull readonly align 8 %i.bo, i64 %i.bp, i1 false), !alias.scope !841, !noalias !842
  %i.bq = getelementptr inbounds nuw [12 x i8], ptr %i.bh, i64 %i.bn
  %i.br = getelementptr inbounds nuw i8, ptr %i.av, i64 184
  %i.bs = mul nuw nsw i64 %i.bb, 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.br, ptr nonnull readonly align 4 %i.bq, i64 %i.bs, i1 false), !alias.scope !843, !noalias !842
  %i.bt = trunc nuw nsw i64 %.sroa.013.0.i.i to i16
  store i16 %i.bt, ptr %i.ae, align 2, !noalias !839
  %spec.select.i.i = select i1 %.sroa.09.0.i.i, i64 0, i64 %.sroa.417.0.copyload ; 6 uses
  %spec.select54.i.i = select i1 %.sroa.09.0.i.i, ptr %i.av, ptr %i.b ; 11 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %spec.select54.i.i, i64 318 ; 2 uses
  %i.bv = load i16, ptr %i.bu, align 2, !noalias !844, !noundef !4 ; 2 uses
  %i.bw = zext i16 %i.bv to i64                   ; 2 uses
  %.not.i17.not.i.i = icmp ult i64 %.sroa.510.0.i.i, %i.bw
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %spec.select54.i.i, i64 %.sroa.510.0.i.i ; 5 uses
  br i1 %.not.i17.not.i.i, label %bb.w, label %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertINtNtB8_5boxed3BoxeEECsefoF4u9kbII_5wasmi.exit.i18.i.i

_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertINtNtB8_5boxed3BoxeEECsefoF4u9kbII_5wasmi.exit.i18.i.i: ; preds = %bb.v
  store ptr %i.aa, ptr %i.bx, align 8, !alias.scope !845, !noalias !844
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i64 %i.ac, ptr %i.by, align 8, !alias.scope !845, !noalias !846
  tail call void @llvm.experimental.noalias.scope.decl(metadata !847)
  br label %_RINvMsK_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB23_.exit.i

bb.w:                                             ; preds = %bb.v
  %i.bz = add nuw nsw i64 %.sroa.510.0.i.i, 1     ; 2 uses
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %spec.select54.i.i, i64 %i.bz
  %i.cb = sub nuw nsw i64 %i.bw, %.sroa.510.0.i.i ; 2 uses
  %i.cc = shl nuw nsw i64 %i.cb, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ca, ptr nonnull align 8 %i.bx, i64 %i.cc, i1 false), !alias.scope !845, !noalias !844
  store ptr %i.aa, ptr %i.bx, align 8, !alias.scope !845, !noalias !844
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i64 %i.ac, ptr %i.cd, align 8, !alias.scope !845, !noalias !846
  %i.ce = getelementptr inbounds nuw i8, ptr %spec.select54.i.i, i64 184 ; 2 uses
  %i.cf = getelementptr inbounds nuw [12 x i8], ptr %i.ce, i64 %.sroa.510.0.i.i
  %i.cg = getelementptr inbounds nuw [12 x i8], ptr %i.ce, i64 %i.bz
  %i.ch = mul nuw nsw i64 %i.cb, 12
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cg, ptr nonnull align 4 %i.cf, i64 %i.ch, i1 false), !alias.scope !848, !noalias !846
  br label %_RINvMsK_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB23_.exit.i

_RINvMsK_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB23_.exit.thread.i: ; preds = %bb.l, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertINtNtB8_5boxed3BoxeEECsefoF4u9kbII_5wasmi.exit.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %3 = add nuw nsw i16 %i.af, 1
  %4 = getelementptr inbounds nuw [12 x i8], ptr %i.ci, i64 %.sroa.6.0.copyload
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull readonly align 4 dereferenceable(12) %2, i64 12, i1 false), !alias.scope !849, !noalias !850
  store i16 %3, ptr %i.ae, align 2, !noalias !833
  br label %_RINvMsN_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3T_11VacantEntryB1D_B1X_E12insert_entry0EB23_.exit

bb.x:                                             ; preds = %bb.u, %.thread.i.i.i
  %.pn.ph.i.i = phi { ptr, i32 } [ %i.bk, %.thread.i.i.i ], [ %i.bm, %bb.u ] ; 2 uses
  %i.cj = icmp eq i64 %i.ac, 0
  br i1 %i.cj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi.exit14, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aa, i64 noundef range(i64 1, 0) %i.ac, i64 noundef 1) #29, !noalias !851
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi.exit14

_RINvMsK_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB23_.exit.i: ; preds = %bb.w, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertINtNtB8_5boxed3BoxeEECsefoF4u9kbII_5wasmi.exit.i18.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %spec.select54.i.i, i64 184
  %5 = add i16 %i.bv, 1
  %i.cl = getelementptr inbounds nuw [12 x i8], ptr %i.ck, i64 %.sroa.510.0.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cl, ptr noundef nonnull readonly align 4 dereferenceable(12) %2, i64 12, i1 false), !alias.scope !852, !noalias !853
  store i16 %5, ptr %i.bu, align 2, !noalias !846
  %.not.i = icmp eq i32 %.sroa.064.0.copyload.i, -1
  br i1 %.not.i, label %_RINvMsN_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3T_11VacantEntryB1D_B1X_E12insert_entry0EB23_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_RINvMsK_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB23_.exit.i, %_RINvMsM_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB23_.exit.i
  %.sroa.24.sroa.7.0.i = phi i64 [ %.sroa.467.0.copyload.i, %_RINvMsM_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB23_.exit.i ], [ %.sroa.465.0.copyload.i, %_RINvMsK_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB23_.exit.i ] ; 5 uses
  %.sroa.24.sroa.0.0.i = phi i32 [ %.sroa.066.0.copyload.i, %_RINvMsM_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB23_.exit.i ], [ %.sroa.064.0.copyload.i, %_RINvMsK_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB23_.exit.i ] ; 5 uses
  %.sroa.22.0.i = phi i64 [ %i.gn, %_RINvMsM_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB23_.exit.i ], [ %i.bg, %_RINvMsK_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB23_.exit.i ] ; 11 uses
  %.sroa.17.0.i = phi ptr [ %i.gl, %_RINvMsM_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB23_.exit.i ], [ %i.be, %_RINvMsK_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB23_.exit.i ] ; 8 uses
  %.sroa.13.0.i = phi i64 [ %i.dk, %_RINvMsM_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB23_.exit.i ], [ 0, %_RINvMsK_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB23_.exit.i ] ; 2 uses
  %.sroa.91.0.i = phi ptr [ %i.gc, %_RINvMsM_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB23_.exit.i ], [ %i.av, %_RINvMsK_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB23_.exit.i ] ; 5 uses
  %.sroa.6.0.i = phi i64 [ %i.dk, %_RINvMsM_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB23_.exit.i ], [ %.sroa.417.0.copyload, %_RINvMsK_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB23_.exit.i ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.cn, %_RINvMsM_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB23_.exit.i ], [ %i.b, %_RINvMsK_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB23_.exit.i ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 176
  %i.cn = load ptr, ptr %i.cm, align 8, !noalias !854, !noundef !4 ; 19 uses
  %.not.i.i = icmp eq ptr %i.cn, null
  br i1 %.not.i.i, label %bb.z, label %bb.an

bb.z:                                             ; preds = %.preheader.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9) ]
  %i.co = load ptr, ptr %.val9, align 8, !noalias !855, !noundef !4 ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.val9, i64 8 ; 2 uses
  %.not.i19.i = icmp eq ptr %i.co, null
  br i1 %.not.i19.i, label %bb.aa, label %bb.ac, !prof !7

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #31
          to label %bb.ab unwind label %bb.al, !noalias !856

bb.ab:                                            ; preds = %bb.aa
  unreachable

bb.ac:                                            ; preds = %bb.z
  tail call void @llvm.experimental.noalias.scope.decl(metadata !857)
  %i.cq = load i64, ptr %i.cp, align 8, !alias.scope !857, !noalias !855, !noundef !4 ; 2 uses
  %i.cr = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeIBx_eENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternEE13new_uninit_inB1G_()
          to label %.noexc.i.i.i unwind label %bb.ag, !noalias !858 ; 9 uses

.noexc.i.i.i:                                     ; preds = %bb.ac
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 176
  store ptr null, ptr %i.cs, align 8, !noalias !858
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 318 ; 3 uses
  store i16 0, ptr %i.ct, align 2, !noalias !858
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 320 ; 2 uses
  store ptr %i.co, ptr %i.cu, align 8, !noalias !858
  %i.cv = add i64 %i.cq, 1                        ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.cv, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ad, label %bb.ah, !prof !7

bb.ad:                                            ; preds = %.noexc.i.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #31
          to label %bb.ae unwind label %bb.af, !noalias !858

bb.ae:                                            ; preds = %bb.ad
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.cw = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cr, i64 noundef 416, i64 noundef 8) #29, !noalias !858
  br label %.body.i.i.i

bb.ag:                                            ; preds = %bb.ac
  %i.cx = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.ag, %bb.af
  tail call void @llvm.trap()
  unreachable

bb.ah:                                            ; preds = %.noexc.i.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.co, i64 176
  store ptr %i.cr, ptr %i.cy, align 8, !noalias !859
  %i.cz = getelementptr inbounds nuw i8, ptr %i.co, i64 316
  store i16 0, ptr %i.cz, align 4, !noalias !860
  store ptr %i.cr, ptr %.val9, align 8, !alias.scope !857, !noalias !855
  store i64 %i.cv, ptr %i.cp, align 8, !alias.scope !857, !noalias !855
  %i.da = icmp eq i64 %.sroa.13.0.i, %i.cq
  br i1 %i.da, label %bb.ai, label %.invoke.i.i.i, !prof !8

.invoke.i.i.i:                                    ; preds = %bb.ai, %bb.ah
  %i.db = phi ptr [ @34, %bb.ah ], [ @32, %bb.ai ]
  %i.dc = phi i64 [ 48, %bb.ah ], [ 32, %bb.ai ]
  %i.dd = phi ptr [ @35, %bb.ah ], [ @36, %bb.ai ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.db, i64 noundef %i.dc, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dd) #31
          to label %.cont.i.i.i unwind label %bb.aj, !noalias !861

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.ai:                                            ; preds = %bb.ah
  %i.de = load i16, ptr %i.ct, align 2, !noalias !861, !noundef !4 ; 3 uses
  %i.df = icmp ult i16 %i.de, 11
  br i1 %i.df, label %bb.bn, label %.invoke.i.i.i, !prof !8

bb.aj:                                            ; preds = %.invoke.i.i.i
  %i.dg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dh = icmp eq i64 %.sroa.22.0.i, 0
  br i1 %i.dh, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi.exit14, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.17.0.i, i64 noundef range(i64 1, 0) %.sroa.22.0.i, i64 noundef 1) #29, !noalias !862
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi.exit14

bb.al:                                            ; preds = %bb.aa
  %i.di = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dj = icmp eq i64 %.sroa.22.0.i, 0
  br i1 %i.dj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi.exit14, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.17.0.i, i64 noundef range(i64 1, 0) %.sroa.22.0.i, i64 noundef 1) #29, !noalias !863
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi.exit14

bb.an:                                            ; preds = %.preheader.i
  %i.dk = add i64 %.sroa.6.0.i, 1                 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 316
  %i.dm = load i16, ptr %i.dl, align 4, !noalias !854 ; 4 uses
  %i.dn = zext i16 %i.dm to i64                   ; 10 uses
  %i.do = icmp eq i64 %.sroa.13.0.i, %.sroa.6.0.i
  br i1 %i.do, label %bb.ap, label %bb.ao, !prof !8

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #31
          to label %bb.aq unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !864

bb.ap:                                            ; preds = %bb.an
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cn, i64 318 ; 4 uses
  %i.dq = load i16, ptr %i.dp, align 2, !noalias !864, !noundef !4 ; 5 uses
  %i.dr = icmp ult i16 %i.dq, 11
  br i1 %i.dr, label %bb.as, label %bb.ar

.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ax, %bb.ao
  %lpad.loopexit.split-lp464 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

bb.aq:                                            ; preds = %bb.ao
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.ds = icmp ult i16 %i.dm, 5
  br i1 %i.ds, label %bb.ax, label %bb.au

bb.as:                                            ; preds = %bb.ap
  %i.dt = zext nneg i16 %i.dq to i64              ; 4 uses
  %i.du = add nuw nsw i16 %i.dq, 1
  %i.dv = add nuw nsw i64 %i.dn, 1                ; 7 uses
  %.not.i.i29.not.i = icmp ult i16 %i.dm, %i.dq
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %i.cn, i64 %i.dn ; 5 uses
  br i1 %.not.i.i29.not.i, label %bb.at, label %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertNtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternEB1a_.exit.i.i.i

_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertNtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternEB1a_.exit.i.i.i: ; preds = %bb.as
  store ptr %.sroa.17.0.i, ptr %i.dw, align 8, !alias.scope !865, !noalias !866
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store i64 %.sroa.22.0.i, ptr %i.dx, align 8, !alias.scope !865, !noalias !867
  tail call void @llvm.experimental.noalias.scope.decl(metadata !868)
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cn, i64 184
  %i.dz = getelementptr inbounds nuw [12 x i8], ptr %i.dy, i64 %i.dn ; 2 uses
  store i32 %.sroa.24.sroa.0.0.i, ptr %i.dz, align 4, !alias.scope !869, !noalias !870
  %.sroa.655.0..sroa_idx58.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  store i64 %.sroa.24.sroa.7.0.i, ptr %.sroa.655.0..sroa_idx58.i, align 4, !alias.scope !869, !noalias !870
  br label %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeINtNtB8_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternEEEB2u_.exit.i.i.i

bb.at:                                            ; preds = %bb.as
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr %i.cn, i64 %i.dv
  %i.eb = sub nuw nsw i64 %i.dt, %i.dn            ; 3 uses
  %i.ec = shl nuw nsw i64 %i.eb, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ea, ptr nonnull align 8 %i.dw, i64 %i.ec, i1 false), !alias.scope !865, !noalias !866
  store ptr %.sroa.17.0.i, ptr %i.dw, align 8, !alias.scope !865, !noalias !866
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store i64 %.sroa.22.0.i, ptr %i.ed, align 8, !alias.scope !865, !noalias !867
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cn, i64 184 ; 2 uses
  %i.ef = getelementptr inbounds nuw [12 x i8], ptr %i.ee, i64 %i.dn ; 3 uses
  %i.eg = getelementptr inbounds nuw [12 x i8], ptr %i.ee, i64 %i.dv
  %i.eh = mul nuw nsw i64 %i.eb, 12
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.eg, ptr nonnull align 4 %i.ef, i64 %i.eh, i1 false), !alias.scope !871, !noalias !867
  store i32 %.sroa.24.sroa.0.0.i, ptr %i.ef, align 4, !alias.scope !869, !noalias !870
  %.sroa.655.0..sroa_idx58322.i = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  store i64 %.sroa.24.sroa.7.0.i, ptr %.sroa.655.0..sroa_idx58322.i, align 4, !alias.scope !869, !noalias !870
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cn, i64 320 ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.dv
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.dn
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.em = shl nuw nsw i64 %i.eb, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.el, ptr nonnull align 8 %i.ej, i64 %i.em, i1 false), !alias.scope !872, !noalias !867
  br label %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeINtNtB8_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternEEEB2u_.exit.i.i.i

_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeINtNtB8_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternEEEB2u_.exit.i.i.i: ; preds = %bb.at, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertNtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternEB1a_.exit.i.i.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.cn, i64 320 ; 6 uses
  %i.eo = add nuw nsw i64 %i.dt, 2                ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.dv
  store ptr %.sroa.91.0.i, ptr %i.ep, align 8, !alias.scope !872, !noalias !867
  store i16 %i.du, ptr %i.dp, align 2, !noalias !867
  %i.eq = icmp samesign ult i64 %i.dv, %i.eo
  br i1 %i.eq, label %.lr.ph.i.i.i.i.preheader, label %_RINvMsN_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3T_11VacantEntryB1D_B1X_E12insert_entry0EB23_.exit

.lr.ph.i.i.i.i.preheader:                         ; preds = %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeINtNtB8_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternEEEB2u_.exit.i.i.i
  %i.er = add nuw nsw i64 %i.dt, 1
  %i.es = sub nsw i64 %i.er, %i.dn
  %i.et = sub nsw i64 %i.dt, %i.dn
  %xtraiter573 = and i64 %i.es, 3                 ; 2 uses
  %lcmp.mod574.not = icmp eq i64 %xtraiter573, 0
  br i1 %lcmp.mod574.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.prol = phi i64 [ %i.eu, %.lr.ph.i.i.i.i.prol ], [ %i.dv, %.lr.ph.i.i.i.i.preheader ] ; 4 uses
  %prol.iter575 = phi i64 [ %prol.iter575.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.eu = add nuw nsw i64 %.sroa.0.06.i.i.i.i.prol, 1 ; 2 uses
  %i.ev = icmp samesign ult i64 %.sroa.0.06.i.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.ev)
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %.sroa.0.06.i.i.i.i.prol
  %i.ex = load ptr, ptr %i.ew, align 8, !noalias !867, !nonnull !4, !noundef !4 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 176
  store ptr %i.cn, ptr %i.ey, align 8, !noalias !867
  %i.ez = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.prol to i16
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 316
  store i16 %i.ez, ptr %i.fa, align 4, !noalias !867
  %prol.iter575.next = add i64 %prol.iter575, 1   ; 2 uses
  %prol.iter575.cmp.not = icmp eq i64 %prol.iter575.next, %xtraiter573
  br i1 %prol.iter575.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !790

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.sroa.0.06.i.i.i.i.unr = phi i64 [ %i.dv, %.lr.ph.i.i.i.i.preheader ], [ %i.eu, %.lr.ph.i.i.i.i.prol ]
  %i.fb = icmp ult i64 %i.et, 3
  br i1 %i.fb, label %_RINvMsN_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3T_11VacantEntryB1D_B1X_E12insert_entry0EB23_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.sroa.0.06.i.i.i.i = phi i64 [ %i.fu, %.lr.ph.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.fc = add nuw nsw i64 %.sroa.0.06.i.i.i.i, 1  ; 2 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %.sroa.0.06.i.i.i.i
  %i.fe = load ptr, ptr %i.fd, align 8, !noalias !867, !nonnull !4, !noundef !4 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 176
  store ptr %i.cn, ptr %i.ff, align 8, !noalias !867
  %i.fg = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i to i16
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 316
  store i16 %i.fg, ptr %i.fh, align 4, !noalias !867
  %i.fi = add nuw nsw i64 %.sroa.0.06.i.i.i.i, 2  ; 2 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.fc
  %i.fk = load ptr, ptr %i.fj, align 8, !noalias !867, !nonnull !4, !noundef !4 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 176
  store ptr %i.cn, ptr %i.fl, align 8, !noalias !867
  %i.fm = trunc nuw nsw i64 %i.fc to i16
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 316
  store i16 %i.fm, ptr %i.fn, align 4, !noalias !867
  %i.fo = add nuw nsw i64 %.sroa.0.06.i.i.i.i, 3  ; 2 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.fi
  %i.fq = load ptr, ptr %i.fp, align 8, !noalias !867, !nonnull !4, !noundef !4 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 176
  store ptr %i.cn, ptr %i.fr, align 8, !noalias !867
  %i.fs = trunc nuw nsw i64 %i.fi to i16
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 316
  store i16 %i.fs, ptr %i.ft, align 4, !noalias !867
  %i.fu = add nuw nsw i64 %.sroa.0.06.i.i.i.i, 4  ; 2 uses
  %i.fv = icmp ult i64 %.sroa.0.06.i.i.i.i, 9
  tail call void @llvm.assume(i1 %i.fv)
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.fo
  %i.fx = load ptr, ptr %i.fw, align 8, !noalias !867, !nonnull !4, !noundef !4 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 176
  store ptr %i.cn, ptr %i.fy, align 8, !noalias !867
  %i.fz = trunc nuw nsw i64 %i.fo to i16
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 316
  store i16 %i.fz, ptr %i.ga, align 4, !noalias !867
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.fu, %i.eo
  br i1 %exitcond.not.i.i.i.i.3, label %_RINvMsN_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3T_11VacantEntryB1D_B1X_E12insert_entry0EB23_.exit, label %.lr.ph.i.i.i.i

bb.au:                                            ; preds = %bb.ar
  switch i16 %i.dm, label %bb.av [
    i16 5, label %bb.ax
    i16 6, label %bb.aw
  ]

bb.av:                                            ; preds = %bb.au
  %i.gb = add nsw i64 %i.dn, -7
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.au, %bb.ar
  %.sroa.06.0.i.i = phi i64 [ 5, %bb.aw ], [ 6, %bb.av ], [ 4, %bb.ar ], [ 5, %bb.au ] ; 7 uses
  %.sroa.5.0.i.i = phi i64 [ 0, %bb.aw ], [ %i.gb, %bb.av ], [ %i.dn, %bb.ar ], [ 5, %bb.au ] ; 9 uses
  %.sroa.03.0.i.i = phi i1 [ true, %bb.aw ], [ true, %bb.av ], [ false, %bb.ar ], [ false, %bb.au ]
  %i.gc = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeIBx_eENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternEE13new_uninit_inB1G_()
          to label %.noexc.i26.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !864 ; 13 uses

.noexc.i26.i:                                     ; preds = %bb.ax
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 176
  store ptr null, ptr %i.gd, align 8, !noalias !873
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 318 ; 3 uses
  store i16 0, ptr %i.ge, align 2, !noalias !873
  tail call void @llvm.experimental.noalias.scope.decl(metadata !874)
  %i.gf = load i16, ptr %i.dp, align 2, !noalias !875, !noundef !4
  %i.gg = zext i16 %i.gf to i64
  %i.gh = xor i64 %.sroa.06.0.i.i, -1
  %i.gi = add nsw i64 %i.gg, %i.gh                ; 5 uses
  %i.gj = trunc i64 %i.gi to i16
  store i16 %i.gj, ptr %i.ge, align 2, !alias.scope !874, !noalias !873
  %i.gk = getelementptr inbounds nuw [16 x i8], ptr %i.cn, i64 %.sroa.06.0.i.i ; 2 uses
  %i.gl = load ptr, ptr %i.gk, align 8, !noalias !875, !nonnull !4, !noundef !4 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gn = load i64, ptr %i.gm, align 8, !noalias !875, !noundef !4 ; 4 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.cn, i64 184 ; 2 uses
  %i.gp = getelementptr inbounds nuw [12 x i8], ptr %i.go, i64 %.sroa.06.0.i.i ; 2 uses
  %.sroa.066.0.copyload.i = load i32, ptr %i.gp, align 4, !noalias !875 ; 2 uses
  %.sroa.467.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gp, i64 4
  %.sroa.467.0.copyload.i = load i64, ptr %.sroa.467.0..sroa_idx.i, align 4, !noalias !875
  %i.gq = icmp ult i64 %i.gi, 12
  br i1 %i.gq, label %bb.bb, label %bb.ay, !prof !20

bb.ay:                                            ; preds = %.noexc.i26.i
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.gi, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #31
          to label %bb.ba unwind label %bb.az, !noalias !875

bb.az:                                            ; preds = %bb.ay
  %i.gr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gs = icmp eq i64 %i.gn, 0
  br i1 %i.gs, label %bb.bj, label %.sink.split.i.i.i

bb.ba:                                            ; preds = %bb.ay
  unreachable

bb.bb:                                            ; preds = %.noexc.i26.i
  %i.gt = add nuw nsw i64 %.sroa.06.0.i.i, 1      ; 2 uses
  %i.gu = getelementptr inbounds nuw [16 x i8], ptr %i.cn, i64 %i.gt
  %i.gv = shl nuw nsw i64 %i.gi, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(320) %i.gc, ptr nonnull readonly align 8 %i.gu, i64 %i.gv, i1 false), !alias.scope !876, !noalias !877
  %i.gw = getelementptr inbounds nuw [12 x i8], ptr %i.go, i64 %i.gt
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gc, i64 184
  %i.gy = mul nuw nsw i64 %i.gi, 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gx, ptr nonnull readonly align 4 %i.gw, i64 %i.gy, i1 false), !alias.scope !878, !noalias !877
  %i.gz = trunc nuw nsw i64 %.sroa.06.0.i.i to i16
  store i16 %i.gz, ptr %i.dp, align 2, !noalias !875
  %i.ha = load i16, ptr %i.ge, align 2, !noalias !873, !noundef !4 ; 3 uses
  %i.hb = zext i16 %i.ha to i64
  %i.hc = add nuw nsw i64 %i.hb, 1                ; 5 uses
  %i.hd = icmp ult i16 %i.ha, 12
  br i1 %i.hd, label %bb.bc, label %bb.be, !prof !20

bb.bc:                                            ; preds = %bb.bb
  %i.he = getelementptr inbounds nuw i8, ptr %i.gc, i64 320 ; 6 uses
  %i.hf = zext i16 %i.dq to i64
  %i.hg = sub nuw nsw i64 %i.hf, %.sroa.06.0.i.i
  %i.hh = icmp eq i64 %i.hg, %i.hc
  br i1 %i.hh, label %bb.bg, label %bb.bd, !prof !8

bb.bd:                                            ; preds = %bb.bc
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #30
          to label %.noexc.i.i27.i unwind label %bb.bf, !noalias !873

end_hunk_0
begin_hunk_1_@_RNvMs4_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_11VacantEntryINtNtBd_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternE12insert_entryB1J_:bb.a
  %i.kp = getelementptr inbounds nuw i8, ptr %i.km, i64 316
  store i16 %i.ko, ptr %i.kp, align 4, !noalias !885
  %i.kq = add nuw nsw i64 %.sroa.0.06.i.i15.i.i, 3 ; 2 uses
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %i.kk
  %i.ks = load ptr, ptr %i.kr, align 8, !noalias !885, !nonnull !4, !noundef !4 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 176
  store ptr %spec.select.i28.i, ptr %i.kt, align 8, !noalias !885
  %i.ku = trunc nuw nsw i64 %i.kk to i16
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ks, i64 316
  store i16 %i.ku, ptr %i.kv, align 4, !noalias !885
  %i.kw = add nuw nsw i64 %.sroa.0.06.i.i15.i.i, 4 ; 2 uses
  %i.kx = icmp ult i64 %.sroa.0.06.i.i15.i.i, 9
  tail call void @llvm.assume(i1 %i.kx)
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %i.kq
  %i.kz = load ptr, ptr %i.ky, align 8, !noalias !885, !nonnull !4, !noundef !4 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 176
  store ptr %spec.select.i28.i, ptr %i.la, align 8, !noalias !885
  %i.lb = trunc nuw nsw i64 %i.kq to i16
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kz, i64 316
  store i16 %i.lb, ptr %i.lc, align 4, !noalias !885
  %exitcond.not.i.i16.i.i.3 = icmp eq i64 %i.kw, %i.jq
  br i1 %exitcond.not.i.i16.i.i.3, label %_RINvMsM_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB23_.exit.i, label %.lr.ph.i.i14.i.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %bb.bj
  %.pn.ph.i24.i = phi { ptr, i32 } [ %.pn.i.i.i, %bb.bj ], [ %lpad.loopexit.split-lp464, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.ld = icmp eq i64 %.sroa.22.0.i, 0
  br i1 %i.ld, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi.exit14, label %bb.bm

bb.bm:                                            ; preds = %.loopexit.split-lp.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.17.0.i, i64 noundef range(i64 1, 0) %.sroa.22.0.i, i64 noundef 1) #29, !noalias !891
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi.exit14

_RINvMsM_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB23_.exit.i: ; preds = %.lr.ph.i.i14.i.i.prol.loopexit, %.lr.ph.i.i14.i.i, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeINtNtB8_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternEEEB2u_.exit.i13.i.i
  %.not16.i = icmp eq i32 %.sroa.066.0.copyload.i, -1
  br i1 %.not16.i, label %_RINvMsN_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3T_11VacantEntryB1D_B1X_E12insert_entry0EB23_.exit, label %.preheader.i

bb.bn:                                            ; preds = %bb.ai
  %i.le = zext nneg i16 %i.de to i64              ; 3 uses
  %i.lf = add nuw nsw i16 %i.de, 1
  store i16 %i.lf, ptr %i.ct, align 2, !noalias !861
  %i.lg = getelementptr inbounds nuw [16 x i8], ptr %i.cr, i64 %i.le ; 2 uses
  store ptr %.sroa.17.0.i, ptr %i.lg, align 8, !noalias !861
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  store i64 %.sroa.22.0.i, ptr %i.lh, align 8, !noalias !861
  %i.li = getelementptr inbounds nuw i8, ptr %i.cr, i64 184
  %i.lj = getelementptr inbounds nuw [12 x i8], ptr %i.li, i64 %i.le ; 2 uses
  store i32 %.sroa.24.sroa.0.0.i, ptr %i.lj, align 4, !noalias !892
  %.sroa.1341.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.lj, i64 4
  store i64 %.sroa.24.sroa.7.0.i, ptr %.sroa.1341.sroa.4.0..sroa_idx.i, align 4, !noalias !892
  %i.lk = add nuw nsw i64 %i.le, 1                ; 2 uses
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.lk
  store ptr %.sroa.91.0.i, ptr %i.ll, align 8, !noalias !861
  %i.lm = getelementptr inbounds nuw i8, ptr %.sroa.91.0.i, i64 176
  store ptr %i.cr, ptr %i.lm, align 8, !noalias !861
  %i.ln = trunc nuw nsw i64 %i.lk to i16
  %i.lo = getelementptr inbounds nuw i8, ptr %.sroa.91.0.i, i64 316
  store i16 %i.ln, ptr %i.lo, align 4, !noalias !861
  br label %_RINvMsN_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3T_11VacantEntryB1D_B1X_E12insert_entry0EB23_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi.exit14: ; preds = %bb.bm, %.loopexit.split-lp.i, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.y, %bb.x, %bb.f, %bb.e, %bb.bp, %bb.bo
  %.pn25 = phi { ptr, i32 } [ %i.lp, %bb.bp ], [ %i.lp, %bb.bo ], [ %i.n, %bb.f ], [ %i.n, %bb.e ], [ %i.dg, %bb.aj ], [ %.pn.ph.i.i, %bb.x ], [ %.pn.ph.i24.i, %.loopexit.split-lp.i ], [ %.pn.ph.i.i, %bb.y ], [ %i.di, %bb.al ], [ %i.di, %bb.am ], [ %.pn.ph.i24.i, %bb.bm ], [ %i.dg, %bb.ak ]
  resume { ptr, i32 } %.pn25

bb.bo:                                            ; preds = %bb.b
  %i.lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !893)
  %i.lq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i12 = load i64, ptr %i.lq, align 8, !alias.scope !893, !noundef !4 ; 2 uses
  %i.lr = icmp eq i64 %.val1.i12, 0
  br i1 %i.lr, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi.exit14, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %.val.i13 = load ptr, ptr %1, align 8, !alias.scope !893, !nonnull !4, !noundef !4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i13, i64 noundef range(i64 1, 0) %.val1.i12, i64 noundef 1) #29, !noalias !893
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi.exit14
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeINtNtB1p_6handle9RawHandleNtNtNtB1p_6engine10func_types13DedupFuncTypeEE12insert_entryB1p_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56) %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %.sroa.0.i23.sroa.4.sroa.0.i = alloca [23 x i8], align 1 ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.0.i.sroa.4.i = alloca [23 x i8], align 1 ; 5 uses
  %i.e = alloca [64 x i8], align 8                ; 13 uses
  %i.f = alloca [24 x i8], align 8                ; 11 uses
  %.sroa.717.sroa.0.i = alloca [23 x i8], align 1 ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.7.i = alloca [23 x i8], align 1          ; 5 uses
  %.sroa.7256.i = alloca [23 x i8], align 1       ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !noundef !4 ; 12 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.m = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeINtNtB1v_6handle9RawHandleNtNtNtB1v_6engine10func_types13DedupFuncTypeEEE13new_uninit_inB1v_()
          to label %bb.c unwind label %bb.ck      ; 6 uses

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 318 ; 3 uses
  store i16 0, ptr %i.n, align 2
  store ptr %i.m, ptr %i.l, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 0, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1081)
  %i.p = load i16, ptr %i.n, align 2, !noalias !1082, !noundef !4 ; 3 uses
  %i.q = icmp ult i16 %i.p, 11
  br i1 %i.q, label %bb.j, label %bb.d, !prof !8

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #31
          to label %bb.h unwind label %bb.e, !noalias !1082

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1083)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1085)
  %i.s = load i8, ptr %i.h, align 8, !range !10, !alias.scope !1086, !noundef !4
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeEBH_.exit13, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1087)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1088)
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !1089, !nonnull !4, !noundef !4
  %i.w = atomicrmw sub ptr %i.v, i64 1 release, align 8, !noalias !1090
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeEBH_.exit13

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeE9drop_slowCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.u) #33
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeEBH_.exit13 unwind label %bb.i, !noalias !1091

bb.h:                                             ; preds = %bb.d
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !noalias !1091
  unreachable

bb.j:                                             ; preds = %bb.c
  %i.z = zext nneg i16 %i.p to i64                ; 3 uses
  %i.aa = add nuw nsw i16 %i.p, 1
  store i16 %i.aa, ptr %i.n, align 2, !noalias !1082
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %i.z
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 272
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.z
  store i32 %2, ptr %i.ae, align 4, !noalias !1082
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RINvMsN_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeINtNtB1J_6handle9RawHandleNtNtNtB1J_6engine10func_types13DedupFuncTypeENtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB4B_11VacantEntryB1D_B2k_E12insert_entry0EB1J_.exit

_RINvMsN_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeINtNtB1J_6handle9RawHandleNtNtNtB1J_6engine10func_types13DedupFuncTypeENtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB4B_11VacantEntryB1D_B2k_E12insert_entry0EB1J_.exit: ; preds = %bb.ah, %.loopexit43.i, %bb.ci, %bb.j
  %i.af = phi ptr [ %i.l, %bb.j ], [ %.val9, %bb.ci ], [ %.val9, %.loopexit43.i ], [ %.val9, %bb.ah ] ; 2 uses
  %.sroa.12.0 = phi i64 [ %i.z, %bb.j ], [ %.sroa.510.0.i.i, %bb.ci ], [ %.sroa.510.0.i.i, %.loopexit43.i ], [ %.sink.i33.i, %bb.ah ]
  %.sroa.7.0 = phi i64 [ 0, %bb.j ], [ %spec.select.i.i, %bb.ci ], [ %spec.select.i.i, %.loopexit43.i ], [ %.sink55.i32.i, %bb.ah ]
  %.sroa.0.0 = phi ptr [ %i.m, %bb.j ], [ %spec.select33.i.i, %bb.ci ], [ %spec.select33.i.i, %.loopexit43.i ], [ %.sink56.i31.i, %bb.ah ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !4
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.ag, align 8
  store ptr %.sroa.0.0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.12.0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.af, ptr %i.aj, align 8
  ret void

bb.k:                                             ; preds = %bb.a
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.416.0.copyload = load i64, ptr %.sroa.416.0..sroa_idx, align 8 ; 5 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 12 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val9 = load ptr, ptr %i.ak, align 8           ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1092
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1093)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.sroa.4.i)
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 318 ; 4 uses
  %i.am = load i16, ptr %i.al, align 2, !noalias !1094, !noundef !4 ; 3 uses
  %i.an = icmp ugt i16 %i.am, 10
  br i1 %i.an, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ult i64 %.sroa.6.0.copyload, 5
  br i1 %i.ao, label %bb.r, label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.ap = zext nneg i16 %i.am to i64              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.ar = add i64 %.sroa.6.0.copyload, 1          ; 3 uses
  %.not.i.i.i = icmp ugt i64 %i.ar, %i.ap
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %.sroa.6.0.copyload ; 3 uses
  br i1 %.not.i.i.i, label %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeEB1a_.exit.i.i.i, label %bb.n

_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeEB1a_.exit.i.i.i: ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %.thread.i

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %i.ar
  %i.au = sub nsw i64 %i.ap, %.sroa.6.0.copyload  ; 2 uses
  %i.av = mul nuw nsw i64 %i.au, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.at, ptr nonnull align 8 %i.as, i64 %i.av, i1 false), !alias.scope !1095, !noalias !1096
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 272 ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %.sroa.6.0.copyload
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.ar
  %i.az = shl nuw nsw i64 %i.au, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ay, ptr nonnull align 4 %i.ax, i64 %i.az, i1 false), !alias.scope !1097, !noalias !1096
  br label %.thread.i

bb.o:                                             ; preds = %bb.l
  switch i64 %.sroa.6.0.copyload, label %bb.p [
    i64 5, label %bb.r
    i64 6, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.ba = add i64 %.sroa.6.0.copyload, -7
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.l
  %.sroa.09.0.i.i = phi i1 [ true, %bb.q ], [ true, %bb.p ], [ false, %bb.l ], [ false, %bb.o ] ; 2 uses
  %.sroa.510.0.i.i = phi i64 [ 0, %bb.q ], [ %i.ba, %bb.p ], [ %.sroa.6.0.copyload, %bb.l ], [ %.sroa.6.0.copyload, %bb.o ] ; 9 uses
  %.sroa.013.0.i.i = phi i64 [ 5, %bb.q ], [ 6, %bb.p ], [ 4, %bb.l ], [ %.sroa.6.0.copyload, %bb.o ] ; 5 uses
  %i.bb = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeINtNtB1v_6handle9RawHandleNtNtNtB1v_6engine10func_types13DedupFuncTypeEEE13new_uninit_inB1v_()
          to label %.noexc.i.i unwind label %bb.y, !noalias !1094 ; 8 uses

.noexc.i.i:                                       ; preds = %bb.r
  store ptr null, ptr %i.bb, align 8, !noalias !1098
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 318 ; 2 uses
  store i16 0, ptr %i.bc, align 2, !noalias !1098
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1099)
  %i.bd = load i16, ptr %i.al, align 2, !noalias !1100, !noundef !4
  %i.be = zext i16 %i.bd to i64
  %i.bf = xor i64 %.sroa.013.0.i.i, -1
  %i.bg = add nsw i64 %i.be, %i.bf                ; 5 uses
  %i.bh = trunc i64 %i.bg to i16
  store i16 %i.bh, ptr %i.bc, align 2, !alias.scope !1099, !noalias !1098
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1100
  %i.bi = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %i.bi, i64 %.sroa.013.0.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i64 24, i1 false), !noalias !1100
  %i.bk = icmp ult i64 %i.bg, 12
  br i1 %i.bk, label %bb.z, label %bb.s, !prof !20

bb.s:                                             ; preds = %.noexc.i.i
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bg, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #31
          to label %bb.w unwind label %bb.t, !noalias !1100

bb.t:                                             ; preds = %bb.s
  %i.bl = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1101)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1102)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1103)
  %i.bm = load i8, ptr %i.d, align 8, !range !10, !alias.scope !1104, !noalias !1100, !noundef !4
  %i.bn = icmp eq i8 %i.bm, 0
  br i1 %i.bn, label %.thread.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1106)
  %i.bp = load ptr, ptr %i.bo, align 8, !alias.scope !1107, !noalias !1100, !nonnull !4, !noundef !4
  %i.bq = atomicrmw sub ptr %i.bp, i64 1 release, align 8, !noalias !1108
  %i.br = icmp eq i64 %i.bq, 1
  br i1 %i.br, label %bb.v, label %.thread.i.i.i

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeE9drop_slowCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bo) #33
          to label %.thread.i.i.i unwind label %bb.x, !noalias !1100

bb.w:                                             ; preds = %bb.s
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !noalias !1100
  unreachable

.thread.i.i.i:                                    ; preds = %bb.v, %bb.u, %bb.t
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bb, i64 noundef 320, i64 noundef 8) #29, !noalias !1098
  br label %bb.ac

bb.y:                                             ; preds = %bb.r
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.z:                                             ; preds = %.noexc.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.j, i64 272 ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %.sroa.013.0.i.i
  %i.bw = load i32, ptr %i.bv, align 4, !noalias !1100, !noundef !4 ; 2 uses
  %i.bx = add nuw nsw i64 %.sroa.013.0.i.i, 1     ; 2 uses
  %i.by = getelementptr inbounds nuw [24 x i8], ptr %i.bi, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.ca = mul nuw nsw i64 %i.bg, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bz, ptr nonnull readonly align 8 %i.by, i64 %i.ca, i1 false), !alias.scope !1109, !noalias !1110
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.bx
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bb, i64 272
  %i.cd = shl nuw nsw i64 %i.bg, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cc, ptr nonnull readonly align 4 %i.cb, i64 %i.cd, i1 false), !alias.scope !1111, !noalias !1110
  %i.ce = trunc nuw nsw i64 %.sroa.013.0.i.i to i16
  store i16 %i.ce, ptr %i.al, align 2, !noalias !1100
  %.sroa.0.i.sroa.0.0.copyload.i = load i8, ptr %i.d, align 8, !noalias !1094 ; 3 uses
  %.sroa.0.i.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.0.i.sroa.4.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.0.i.sroa.4.0..sroa_idx.i, i64 23, i1 false), !noalias !1094
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1100
  %spec.select.i.i = select i1 %.sroa.09.0.i.i, i64 0, i64 %.sroa.416.0.copyload ; 3 uses
  %spec.select33.i.i = select i1 %.sroa.09.0.i.i, ptr %i.bb, ptr %i.j ; 7 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %spec.select33.i.i, i64 318 ; 2 uses
  %i.cg = load i16, ptr %i.cf, align 2, !noalias !1112, !noundef !4 ; 2 uses
  %i.ch = zext i16 %i.cg to i64                   ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %spec.select33.i.i, i64 8 ; 2 uses
  %.not.i16.not.i.i = icmp ult i64 %.sroa.510.0.i.i, %i.ch
  %i.cj = getelementptr inbounds nuw [24 x i8], ptr %i.ci, i64 %.sroa.510.0.i.i ; 3 uses
  br i1 %.not.i16.not.i.i, label %bb.aa, label %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeEB1a_.exit.i17.i.i

_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeEB1a_.exit.i17.i.i: ; preds = %bb.z
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cj, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.af

bb.aa:                                            ; preds = %bb.z
  %i.ck = add nuw nsw i64 %.sroa.510.0.i.i, 1     ; 2 uses
  %i.cl = getelementptr inbounds nuw [24 x i8], ptr %i.ci, i64 %i.ck
  %i.cm = sub nuw nsw i64 %i.ch, %.sroa.510.0.i.i ; 2 uses
  %i.cn = mul nuw nsw i64 %i.cm, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cl, ptr nonnull align 8 %i.cj, i64 %i.cn, i1 false), !alias.scope !1113, !noalias !1112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cj, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.co = getelementptr inbounds nuw i8, ptr %spec.select33.i.i, i64 272 ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %.sroa.510.0.i.i
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.ck
  %i.cr = shl nuw nsw i64 %i.cm, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cq, ptr nonnull align 4 %i.cp, i64 %i.cr, i1 false), !alias.scope !1114, !noalias !1112
  br label %bb.af

bb.ab:                                            ; preds = %bb.ae
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !noalias !1115
  unreachable

.thread.i:                                        ; preds = %bb.n, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeEB1a_.exit.i.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.j, i64 272
  %3 = add nuw nsw i16 %i.am, 1
  %4 = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %.sroa.6.0.copyload
  store i32 %2, ptr %4, align 4, !alias.scope !1097, !noalias !1096
  store i16 %3, ptr %i.al, align 2, !noalias !1096
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.4.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1092
  br label %bb.ah

bb.ac:                                            ; preds = %bb.y, %.thread.i.i.i
  %.pn.ph.i.i = phi { ptr, i32 } [ %i.bl, %.thread.i.i.i ], [ %i.bt, %bb.y ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1116)
  call void @llvm.experimental.noalias.scope.decl(metadata !1117)
  call void @llvm.experimental.noalias.scope.decl(metadata !1118)
  %i.cu = load i8, ptr %i.g, align 8, !range !10, !alias.scope !1119, !noalias !1092, !noundef !4
  %i.cv = icmp eq i8 %i.cu, 0
  br i1 %i.cv, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeEBH_.exit13, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cw = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1120)
  call void @llvm.experimental.noalias.scope.decl(metadata !1121)
  %i.cx = load ptr, ptr %i.cw, align 8, !alias.scope !1122, !noalias !1092, !nonnull !4, !noundef !4
  %i.cy = atomicrmw sub ptr %i.cx, i64 1 release, align 8, !noalias !1123
  %i.cz = icmp eq i64 %i.cy, 1
  br i1 %i.cz, label %bb.ae, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeEBH_.exit13

bb.ae:                                            ; preds = %bb.ad
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeE9drop_slowCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.cw) #33
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeEBH_.exit13 unwind label %bb.ab, !noalias !1115

bb.af:                                            ; preds = %bb.aa, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeEB1a_.exit.i17.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %spec.select33.i.i, i64 272
  %5 = add i16 %i.cg, 1
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %.sroa.510.0.i.i
  store i32 %2, ptr %i.db, align 4, !alias.scope !1114, !noalias !1112
  store i16 %5, ptr %i.cf, align 2, !noalias !1112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.7.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.0.i.sroa.4.i, i64 23, i1 false), !noalias !1124
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.4.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1092
  %.not.i = icmp eq i8 %.sroa.0.i.sroa.0.0.copyload.i, 2
  br i1 %.not.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7256.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.7256.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.7.i, i64 23, i1 false), !noalias !1092
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  %i.dc = load ptr, ptr %i.j, align 8, !noalias !1125, !noundef !4 ; 2 uses
  %.not.i149.i = icmp eq ptr %i.dc, null
  br i1 %.not.i149.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ag
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.0.i23.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.de = icmp eq i64 %.sroa.416.0.copyload, 0
  %.sroa.7256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %.sroa.0.i23.sroa.4.sroa.6.0..sroa.0.i23.sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  br label %bb.az

bb.ah:                                            ; preds = %bb.af, %.thread.i
  %.sink.i33.i = phi i64 [ %.sroa.6.0.copyload, %.thread.i ], [ %.sroa.510.0.i.i, %bb.af ]
  %.sink55.i32.i = phi i64 [ %.sroa.416.0.copyload, %.thread.i ], [ %spec.select.i.i, %bb.af ]
  %.sink56.i31.i = phi ptr [ %i.j, %.thread.i ], [ %spec.select33.i.i, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  br label %_RINvMsN_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeINtNtB1J_6handle9RawHandleNtNtNtB1J_6engine10func_types13DedupFuncTypeENtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB4B_11VacantEntryB1D_B2k_E12insert_entry0EB1J_.exit

._crit_edge.i:                                    ; preds = %bb.ch, %bb.ag
  %.sroa.11.0.i = phi i32 [ undef, %bb.ag ], [ %.sroa.0.i23.sroa.4.sroa.6.0.copyload.i, %bb.ch ]
  %i.df = phi i32 [ %i.bw, %bb.ag ], [ %i.hw, %bb.ch ] ; 2 uses
  %i.dg = phi i8 [ %.sroa.0.i.sroa.0.0.copyload.i, %bb.ag ], [ %.sroa.0.i23.sroa.0.0.copyload.i, %bb.ch ] ; 2 uses
  %.lcssa141.i = phi i64 [ 0, %bb.ag ], [ %i.er, %bb.ch ] ; 2 uses
  %.lcssa133.i = phi ptr [ %i.bb, %bb.ag ], [ %i.hc, %bb.ch ] ; 4 uses
  %.lcssa125.i = phi i64 [ %.sroa.416.0.copyload, %bb.ag ], [ %i.er, %bb.ch ]
  %.lcssa.i = phi ptr [ %i.j, %bb.ag ], [ %i.em, %bb.ch ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1092
  %.sroa.02.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.02.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.7256.i, i64 23, i1 false), !noalias !1092
  store i8 %i.dg, ptr %i.e, align 8, !noalias !1092
  %.sroa.02.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i32 %i.df, ptr %.sroa.02.sroa.5.0..sroa_idx.i, align 8, !noalias !1092
  %.sroa.02.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  store i32 %.sroa.11.0.i, ptr %.sroa.02.sroa.6.0..sroa_idx.i, align 4, !noalias !1092
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %.lcssa.i, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !1092
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 %.lcssa125.i, ptr %.sroa.54.0..sroa_idx.i, align 8, !noalias !1092
  %.sroa.65.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr %.lcssa133.i, ptr %.sroa.65.0..sroa_idx.i, align 8, !noalias !1092
  %.sroa.76.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i64 %.lcssa141.i, ptr %.sroa.76.0..sroa_idx.i, align 8, !noalias !1092
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1126)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9) ]
  %i.dh = load ptr, ptr %.val9, align 8, !noalias !1127, !noundef !4 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.val9, i64 8 ; 2 uses
  %.not.i19.i = icmp eq ptr %i.dh, null
  br i1 %.not.i19.i, label %bb.ai, label %bb.ak, !prof !7

bb.ai:                                            ; preds = %._crit_edge.i
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #31
          to label %bb.aj unwind label %bb.av, !noalias !1127

bb.aj:                                            ; preds = %bb.ai
  unreachable

bb.ak:                                            ; preds = %._crit_edge.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1128)
  %i.dj = load i64, ptr %i.di, align 8, !alias.scope !1128, !noalias !1127, !noundef !4 ; 2 uses
  %i.dk = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeINtNtB1A_6handle9RawHandleNtNtNtB1A_6engine10func_types13DedupFuncTypeEEE13new_uninit_inB1A_()
          to label %.noexc.i.i.i unwind label %bb.ao, !noalias !1129 ; 9 uses

.noexc.i.i.i:                                     ; preds = %bb.ak
  store ptr null, ptr %i.dk, align 8, !noalias !1129
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 318 ; 3 uses
  store i16 0, ptr %i.dl, align 2, !noalias !1129
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 320 ; 2 uses
  store ptr %i.dh, ptr %i.dm, align 8, !noalias !1129
  %i.dn = add i64 %i.dj, 1                        ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.dn, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.al, label %bb.ap, !prof !7

bb.al:                                            ; preds = %.noexc.i.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #31
          to label %bb.am unwind label %bb.an, !noalias !1129

bb.am:                                            ; preds = %bb.al
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.do = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dk, i64 noundef 416, i64 noundef 8) #29, !noalias !1129
  br label %.body.i.i.i

bb.ao:                                            ; preds = %bb.ak
  %i.dp = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.ao, %bb.an
  tail call void @llvm.trap()
  unreachable

bb.ap:                                            ; preds = %.noexc.i.i.i
  store ptr %i.dk, ptr %i.dh, align 8, !noalias !1130
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dh, i64 316
  store i16 0, ptr %i.dq, align 4, !noalias !1131
  store ptr %i.dk, ptr %.val9, align 8, !alias.scope !1128, !noalias !1127
  store i64 %i.dn, ptr %i.di, align 8, !alias.scope !1128, !noalias !1127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1127
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 24, i1 false), !noalias !1092
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1132)
  %i.dr = icmp eq i64 %.lcssa141.i, %i.dj
  br i1 %i.dr, label %bb.aq, label %.invoke.i.i.i, !prof !8

.invoke.i.i.i:                                    ; preds = %bb.aq, %bb.ap
  %i.ds = phi ptr [ @34, %bb.ap ], [ @32, %bb.aq ]
  %i.dt = phi i64 [ 48, %bb.ap ], [ 32, %bb.aq ]
  %i.du = phi ptr [ @35, %bb.ap ], [ @36, %bb.aq ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ds, i64 noundef %i.dt, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.du) #31
          to label %.cont.i.i.i unwind label %bb.ar, !noalias !1133

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.aq:                                            ; preds = %bb.ap
  %i.dv = load i16, ptr %i.dl, align 2, !noalias !1133, !noundef !4 ; 3 uses
  %i.dw = icmp ult i16 %i.dv, 11
  br i1 %i.dw, label %bb.ci, label %.invoke.i.i.i, !prof !8

bb.ar:                                            ; preds = %.invoke.i.i.i
  %i.dx = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1134)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1136)
  %i.dy = load i8, ptr %i.c, align 8, !range !10, !alias.scope !1137, !noalias !1127, !noundef !4
  %i.dz = icmp eq i8 %i.dy, 0
  br i1 %i.dz, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeEBH_.exit13, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ea = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1139)
  %i.eb = load ptr, ptr %i.ea, align 8, !alias.scope !1140, !noalias !1127, !nonnull !4, !noundef !4
  %i.ec = atomicrmw sub ptr %i.eb, i64 1 release, align 8, !noalias !1141
  %i.ed = icmp eq i64 %i.ec, 1
  br i1 %i.ed, label %bb.at, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeEBH_.exit13

bb.at:                                            ; preds = %bb.as
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeE9drop_slowCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ea) #33
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeEBH_.exit13 unwind label %bb.au, !noalias !1127

bb.au:                                            ; preds = %bb.at
  %i.ee = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !noalias !1127
  unreachable

bb.av:                                            ; preds = %bb.ai
  %i.ef = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1144)
  %i.eg = icmp eq i8 %i.dg, 0
  br i1 %i.eg, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeEBH_.exit13, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.eh = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1145)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1146)
  %i.ei = load ptr, ptr %i.eh, align 8, !alias.scope !1147, !noalias !1092, !nonnull !4, !noundef !4
  %i.ej = atomicrmw sub ptr %i.ei, i64 1 release, align 8, !noalias !1148
  %i.ek = icmp eq i64 %i.ej, 1
  br i1 %i.ek, label %bb.ax, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeEBH_.exit13

bb.ax:                                            ; preds = %bb.aw
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeE9drop_slowCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.eh) #33
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeEBH_.exit13 unwind label %bb.ay, !noalias !1092

bb.ay:                                            ; preds = %bb.ax
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !noalias !1092
  unreachable

bb.az:                                            ; preds = %bb.ch, %.lr.ph.i
  %.sroa.9.1.i = phi i32 [ %i.bw, %.lr.ph.i ], [ %i.hw, %bb.ch ] ; 4 uses
  %.sroa.0.1.i = phi i8 [ %.sroa.0.i.sroa.0.0.copyload.i, %.lr.ph.i ], [ %.sroa.0.i23.sroa.0.0.copyload.i, %bb.ch ] ; 2 uses
  %i.em = phi ptr [ %i.dc, %.lr.ph.i ], [ %i.mk, %bb.ch ] ; 18 uses
  %i.en = phi ptr [ %i.j, %.lr.ph.i ], [ %i.em, %bb.ch ]
  %i.eo = phi i64 [ %.sroa.416.0.copyload, %.lr.ph.i ], [ %i.er, %bb.ch ]
  %i.ep = phi ptr [ %i.bb, %.lr.ph.i ], [ %i.hc, %bb.ch ] ; 2 uses
  %i.eq = phi i1 [ %i.de, %.lr.ph.i ], [ true, %bb.ch ]
  %i.er = add i64 %i.eo, 1                        ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.en, i64 316
  %i.et = load i16, ptr %i.es, align 4, !noalias !1125 ; 4 uses
  %i.eu = zext i16 %i.et to i64                   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.717.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1092
  store i8 %.sroa.0.1.i, ptr %i.f, align 8, !noalias !1092
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.7256.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.7256.i, i64 23, i1 false), !noalias !1092
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1149)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i23.sroa.4.sroa.0.i)
  br i1 %i.eq, label %bb.bb, label %bb.ba, !prof !8

bb.ba:                                            ; preds = %bb.az
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #31
          to label %bb.bc unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !1150

bb.bb:                                            ; preds = %bb.az
  %i.ev = getelementptr inbounds nuw i8, ptr %i.em, i64 318 ; 4 uses
  %i.ew = load i16, ptr %i.ev, align 2, !noalias !1150, !noundef !4 ; 5 uses
  %i.ex = icmp ult i16 %i.ew, 11
  br i1 %i.ex, label %bb.be, label %bb.bd

.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bj, %bb.ba
  %lpad.loopexit.split-lp393 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

bb.bc:                                            ; preds = %bb.ba
  unreachable

bb.bd:                                            ; preds = %bb.bb
  %i.ey = icmp ult i16 %i.et, 5
  br i1 %i.ey, label %bb.bj, label %bb.bg

bb.be:                                            ; preds = %bb.bb
  %i.ez = zext nneg i16 %i.ew to i64              ; 4 uses
  %i.fa = add nuw nsw i16 %i.ew, 1
  %i.fb = getelementptr inbounds nuw i8, ptr %i.em, i64 8 ; 2 uses
  %i.fc = add nuw nsw i64 %i.eu, 1                ; 7 uses
  %.not.i.i29.not.i = icmp ult i16 %i.et, %i.ew
  %i.fd = getelementptr inbounds nuw [24 x i8], ptr %i.fb, i64 %i.eu ; 3 uses
  br i1 %.not.i.i29.not.i, label %bb.bf, label %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtNtB19_6engine10func_types13DedupFuncTypeEEB19_.exit.i.i.i

_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtNtB19_6engine10func_types13DedupFuncTypeEEB19_.exit.i.i.i: ; preds = %bb.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fd, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !1151
  %i.fe = getelementptr inbounds nuw i8, ptr %i.em, i64 272
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.eu
  store i32 %.sroa.9.1.i, ptr %i.ff, align 4, !alias.scope !1152, !noalias !1153
  br label %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeINtNtB2a_6handle9RawHandleNtNtNtB2a_6engine10func_types13DedupFuncTypeEEEEB2a_.exit.i.i.i

bb.bf:                                            ; preds = %bb.be
  %i.fg = getelementptr inbounds nuw [24 x i8], ptr %i.fb, i64 %i.fc
  %i.fh = sub nuw nsw i64 %i.ez, %i.eu            ; 3 uses
  %i.fi = mul nuw nsw i64 %i.fh, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fg, ptr nonnull align 8 %i.fd, i64 %i.fi, i1 false), !alias.scope !1154, !noalias !1153
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fd, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !1151
  %i.fj = getelementptr inbounds nuw i8, ptr %i.em, i64 272 ; 2 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.eu ; 2 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.fc
  %i.fm = shl nuw nsw i64 %i.fh, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fl, ptr nonnull align 4 %i.fk, i64 %i.fm, i1 false), !alias.scope !1152, !noalias !1153
  store i32 %.sroa.9.1.i, ptr %i.fk, align 4, !alias.scope !1152, !noalias !1153
  %i.fn = getelementptr inbounds nuw i8, ptr %i.em, i64 320 ; 2 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.fc
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.eu
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.fr = shl nuw nsw i64 %i.fh, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fq, ptr nonnull align 8 %i.fo, i64 %i.fr, i1 false), !alias.scope !1155, !noalias !1153
  br label %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeINtNtB2a_6handle9RawHandleNtNtNtB2a_6engine10func_types13DedupFuncTypeEEEEB2a_.exit.i.i.i

_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeINtNtB2a_6handle9RawHandleNtNtNtB2a_6engine10func_types13DedupFuncTypeEEEEB2a_.exit.i.i.i: ; preds = %bb.bf, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtNtB19_6engine10func_types13DedupFuncTypeEEB19_.exit.i.i.i
  %i.fs = getelementptr inbounds nuw i8, ptr %i.em, i64 320 ; 6 uses
  %i.ft = add nuw nsw i64 %i.ez, 2                ; 2 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.fc
  store ptr %i.ep, ptr %i.fu, align 8, !alias.scope !1155, !noalias !1153
  store i16 %i.fa, ptr %i.ev, align 2, !noalias !1153
  %i.fv = icmp samesign ult i64 %i.fc, %i.ft
  br i1 %i.fv, label %.lr.ph.i.i.i.i.preheader, label %.thread38.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeINtNtB2a_6handle9RawHandleNtNtNtB2a_6engine10func_types13DedupFuncTypeEEEEB2a_.exit.i.i.i
  %i.fw = add nuw nsw i64 %i.ez, 1
  %i.fx = sub nsw i64 %i.fw, %i.eu
  %i.fy = sub nsw i64 %i.ez, %i.eu
  %xtraiter485 = and i64 %i.fx, 3                 ; 2 uses
  %lcmp.mod486.not = icmp eq i64 %xtraiter485, 0
  br i1 %lcmp.mod486.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.prol = phi i64 [ %i.fz, %.lr.ph.i.i.i.i.prol ], [ %i.fc, %.lr.ph.i.i.i.i.preheader ] ; 4 uses
  %prol.iter487 = phi i64 [ %prol.iter487.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.fz = add nuw nsw i64 %.sroa.0.06.i.i.i.i.prol, 1 ; 2 uses
  %i.ga = icmp samesign ult i64 %.sroa.0.06.i.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.ga)
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %.sroa.0.06.i.i.i.i.prol
  %i.gc = load ptr, ptr %i.gb, align 8, !noalias !1153, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.em, ptr %i.gc, align 8, !noalias !1153
  %i.gd = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.prol to i16
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 316
  store i16 %i.gd, ptr %i.ge, align 4, !noalias !1153
  %prol.iter487.next = add i64 %prol.iter487, 1   ; 2 uses
  %prol.iter487.cmp.not = icmp eq i64 %prol.iter487.next, %xtraiter485
  br i1 %prol.iter487.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !1008

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.sroa.0.06.i.i.i.i.unr = phi i64 [ %i.fc, %.lr.ph.i.i.i.i.preheader ], [ %i.fz, %.lr.ph.i.i.i.i.prol ]
  %i.gf = icmp ult i64 %i.fy, 3
  br i1 %i.gf, label %.thread38.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.sroa.0.06.i.i.i.i = phi i64 [ %i.gv, %.lr.ph.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.gg = add nuw nsw i64 %.sroa.0.06.i.i.i.i, 1  ; 2 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %.sroa.0.06.i.i.i.i
  %i.gi = load ptr, ptr %i.gh, align 8, !noalias !1153, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.em, ptr %i.gi, align 8, !noalias !1153
  %i.gj = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i to i16
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 316
  store i16 %i.gj, ptr %i.gk, align 4, !noalias !1153
  %i.gl = add nuw nsw i64 %.sroa.0.06.i.i.i.i, 2  ; 2 uses
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.gg
  %i.gn = load ptr, ptr %i.gm, align 8, !noalias !1153, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.em, ptr %i.gn, align 8, !noalias !1153
  %i.go = trunc nuw nsw i64 %i.gg to i16
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 316
  store i16 %i.go, ptr %i.gp, align 4, !noalias !1153
  %i.gq = add nuw nsw i64 %.sroa.0.06.i.i.i.i, 3  ; 2 uses
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.gl
  %i.gs = load ptr, ptr %i.gr, align 8, !noalias !1153, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.em, ptr %i.gs, align 8, !noalias !1153
  %i.gt = trunc nuw nsw i64 %i.gl to i16
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 316
  store i16 %i.gt, ptr %i.gu, align 4, !noalias !1153
  %i.gv = add nuw nsw i64 %.sroa.0.06.i.i.i.i, 4  ; 2 uses
  %i.gw = icmp ult i64 %.sroa.0.06.i.i.i.i, 9
  tail call void @llvm.assume(i1 %i.gw)
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.gq
  %i.gy = load ptr, ptr %i.gx, align 8, !noalias !1153, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.em, ptr %i.gy, align 8, !noalias !1153
  %i.gz = trunc nuw nsw i64 %i.gq to i16
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 316
  store i16 %i.gz, ptr %i.ha, align 4, !noalias !1153
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.gv, %i.ft
  br i1 %exitcond.not.i.i.i.i.3, label %.thread38.i, label %.lr.ph.i.i.i.i

bb.bg:                                            ; preds = %bb.bd
  switch i16 %i.et, label %bb.bh [
    i16 5, label %bb.bj
    i16 6, label %bb.bi
  ]

bb.bh:                                            ; preds = %bb.bg
  %i.hb = add nsw i64 %i.eu, -7
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %bb.bg, %bb.bd
  %.sroa.06.0.i.i = phi i64 [ 5, %bb.bi ], [ 6, %bb.bh ], [ 4, %bb.bd ], [ 5, %bb.bg ] ; 7 uses
  %.sroa.5.0.i.i = phi i64 [ 0, %bb.bi ], [ %i.hb, %bb.bh ], [ %i.eu, %bb.bd ], [ 5, %bb.bg ] ; 9 uses
  %.sroa.03.0.i.i = phi i1 [ true, %bb.bi ], [ true, %bb.bh ], [ false, %bb.bd ], [ false, %bb.bg ]
  %i.hc = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeINtNtB1A_6handle9RawHandleNtNtNtB1A_6engine10func_types13DedupFuncTypeEEE13new_uninit_inB1A_()
          to label %.noexc.i26.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !1150 ; 14 uses

.noexc.i26.i:                                     ; preds = %bb.bj
  store ptr null, ptr %i.hc, align 8, !noalias !1156
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 318 ; 3 uses
  store i16 0, ptr %i.hd, align 2, !noalias !1156
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1156
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1158)
  %i.he = load i16, ptr %i.ev, align 2, !noalias !1159, !noundef !4
  %i.hf = zext i16 %i.he to i64
  %i.hg = xor i64 %.sroa.06.0.i.i, -1
  %i.hh = add nsw i64 %i.hf, %i.hg                ; 5 uses
  %i.hi = trunc i64 %i.hh to i16
  store i16 %i.hi, ptr %i.hd, align 2, !alias.scope !1158, !noalias !1156
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1159
  %i.hj = getelementptr inbounds nuw i8, ptr %i.em, i64 8 ; 2 uses
  %i.hk = getelementptr inbounds nuw [24 x i8], ptr %i.hj, i64 %.sroa.06.0.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.hk, i64 24, i1 false), !noalias !1159
  %i.hl = icmp ult i64 %i.hh, 12
  br i1 %i.hl, label %bb.bq, label %bb.bk, !prof !20

bb.bk:                                            ; preds = %.noexc.i26.i
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.hh, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #31
          to label %bb.bo unwind label %bb.bl, !noalias !1159

bb.bl:                                            ; preds = %bb.bk
  %i.hm = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1160)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1161)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1162)
  %i.hn = load i8, ptr %i.a, align 8, !range !10, !alias.scope !1163, !noalias !1159, !noundef !4
  %i.ho = icmp eq i8 %i.hn, 0
  br i1 %i.ho, label %bb.cb, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.hp = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1164)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1165)
  %i.hq = load ptr, ptr %i.hp, align 8, !alias.scope !1166, !noalias !1159, !nonnull !4, !noundef !4
  %i.hr = atomicrmw sub ptr %i.hq, i64 1 release, align 8, !noalias !1167
  %i.hs = icmp eq i64 %i.hr, 1
  br i1 %i.hs, label %bb.bn, label %bb.cb

bb.bn:                                            ; preds = %bb.bm
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeE9drop_slowCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.hp) #33
          to label %bb.cb unwind label %bb.bp, !noalias !1159

bb.bo:                                            ; preds = %bb.bk
  unreachable

bb.bp:                                            ; preds = %bb.bn
  %i.ht = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !noalias !1159
  unreachable

bb.bq:                                            ; preds = %.noexc.i26.i
  %i.hu = getelementptr inbounds nuw i8, ptr %i.em, i64 272 ; 2 uses
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %.sroa.06.0.i.i
  %i.hw = load i32, ptr %i.hv, align 4, !noalias !1159, !noundef !4 ; 3 uses
  %i.hx = add nuw nsw i64 %.sroa.06.0.i.i, 1      ; 2 uses
  %i.hy = getelementptr inbounds nuw [24 x i8], ptr %i.hj, i64 %i.hx
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %i.ia = mul nuw nsw i64 %i.hh, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.hz, ptr nonnull readonly align 8 %i.hy, i64 %i.ia, i1 false), !alias.scope !1168, !noalias !1169
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %i.hx
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hc, i64 272
  %i.id = shl nuw nsw i64 %i.hh, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ic, ptr nonnull readonly align 4 %i.ib, i64 %i.id, i1 false), !alias.scope !1170, !noalias !1169
  %i.ie = trunc nuw nsw i64 %.sroa.06.0.i.i to i16
  store i16 %i.ie, ptr %i.ev, align 2, !noalias !1159
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !1171
  store i32 %i.hw, ptr %i.dd, align 8, !alias.scope !1157, !noalias !1156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1159
  %i.if = load i16, ptr %i.hd, align 2, !noalias !1156, !noundef !4 ; 3 uses
  %i.ig = zext i16 %i.if to i64
  %i.ih = add nuw nsw i64 %i.ig, 1                ; 5 uses
  %i.ii = icmp ult i16 %i.if, 12
end_hunk_1
