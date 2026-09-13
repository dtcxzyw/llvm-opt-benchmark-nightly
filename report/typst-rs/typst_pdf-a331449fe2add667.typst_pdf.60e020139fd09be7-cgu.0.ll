Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_pdf-a331449fe2add667.typst_pdf.60e020139fd09be7-cgu.0?download=true
inline.NumInlined: 7942
inline.NumDeleted: 3845
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char:bb.a
  store i8 %i.ac, ptr %i.l, align 1, !noalias !23118
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.p, ptr %i.ad, align 1, !noalias !23118
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit

bb.i:                                             ; preds = %bb.f
  %i.ae = icmp samesign ult i32 %1, 65536
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = or disjoint i8 %i.v, -32
  store i8 %i.af, ptr %i.l, align 1, !noalias !23118
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.t, ptr %i.ag, align 1, !noalias !23118
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store i8 %i.p, ptr %i.ah, align 1, !noalias !23118
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit

bb.k:                                             ; preds = %bb.i
  store i8 %i.aa, ptr %i.l, align 1, !noalias !23118
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.x, ptr %i.ai, align 1, !noalias !23118
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store i8 %i.t, ptr %i.aj, align 1, !noalias !23118
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 3
  store i8 %i.p, ptr %i.ak, align 1, !noalias !23118
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit

_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.g, %bb.h, %bb.j, %bb.k
  %i.al = add nuw i64 %.sroa.0.0.i, %i.b
  store i64 %i.al, ptr %i.a, align 8, !alias.scope !23118
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #4 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23127)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23128)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !23129, !noalias !23130, !noundef !10 ; 5 uses
  %i.c = load i64, ptr %0, align 8, !range !17, !alias.scope !23129, !noalias !23130, !noundef !10
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8jFhWeO2DFb_9typst_pdf.exit.thread.i.i, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8jFhWeO2DFb_9typst_pdf.exit.i.i, !prof !13

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8jFhWeO2DFb_9typst_pdf.exit.thread.i.i: ; preds = %bb.a
  tail call fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %2, i64 noundef 1, i64 noundef 1), !noalias !23130
  %i.f = load i64, ptr %i.a, align 8, !alias.scope !23131, !noalias !23130, !noundef !10 ; 2 uses
  %i.g = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.g)
  br label %bb.b

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8jFhWeO2DFb_9typst_pdf.exit.i.i: ; preds = %bb.a
  %i.h = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.h)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8jFhWeO2DFb_9typst_pdf.exit.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8jFhWeO2DFb_9typst_pdf.exit.thread.i.i
  %i.i = phi i64 [ %i.f, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8jFhWeO2DFb_9typst_pdf.exit.thread.i.i ], [ %i.b, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8jFhWeO2DFb_9typst_pdf.exit.i.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !23131, !noalias !23130, !nonnull !10, !noundef !10
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !23131
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String8push_str.exit: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8jFhWeO2DFb_9typst_pdf.exit.i.i, %bb.b
  %i.m = phi i64 [ %i.i, %bb.b ], [ %i.b, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8jFhWeO2DFb_9typst_pdf.exit.i.i ]
  %i.n = add i64 %i.m, %2
  store i64 %i.n, ptr %i.a, align 8, !alias.scope !23131, !noalias !23130
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCsdaEETE4DqmE_13typst_library4diagNtB5_12HintedStringNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @601, i64 noundef 12, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @600)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !10 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXs6_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXs8_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_Cs8jFhWeO2DFb_9typst_pdfNtB4_10PdfOptionsNtNtCs3oUPovFnLWP_4core7default7Default7default(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
.noexc:
  %i.a = alloca [3 x i8], align 4                 ; 3 uses
  %i.b = tail call i32 @_RNvMs_NtCsidf7BFzONoc_6krilla9configureNtB4_20ConfigurationBuilder6finish(i24 261888) ; 2 uses
  %.sroa.4.0.extract.shift.i.i = lshr i32 %i.b, 8
  %.sroa.4.0.extract.trunc.i.i = trunc nuw i32 %.sroa.4.0.extract.shift.i.i to i24 ; 2 uses
  %i.c = trunc i32 %i.b to i1
  br i1 %i.c, label %.noexc11, label %_RNvXs2_Cs8jFhWeO2DFb_9typst_pdfNtB5_12PdfStandardsNtNtCs3oUPovFnLWP_4core7default7Default7default.exit, !prof !13

.noexc11:                                         ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i24 %.sroa.4.0.extract.trunc.i.i, ptr %i.a, align 4
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @160, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @538) #42
  unreachable

_RNvXs2_Cs8jFhWeO2DFb_9typst_pdfNtB5_12PdfStandardsNtNtCs3oUPovFnLWP_4core7default7Default7default.exit: ; preds = %.noexc
  store i64 -1, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 -2, ptr %i.d, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i8 2, ptr %.sroa.3.0..sroa_idx, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i24 %.sroa.4.0.extract.trunc.i.i, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 91
  store i8 1, ptr %i.g, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i8 0, ptr %i.h, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtCs8jFhWeO2DFb_9typst_pdf4utilINtNtNtCsdaEETE4DqmE_13typst_library6layout4axes4AxesNtNtBE_3abs3AbsENtB4_7SizeExt9to_krilla(ptr dead_on_unwind noalias nofree noundef writable sret([12 x i8]) align 4 captures(none) dereferenceable(12) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = load <2 x double>, ptr %1, align 8
  %i.b = fdiv <2 x double> %i.a, splat (double 1.270000e+02)
  %i.c = fptrunc <2 x double> %i.b to <2 x float> ; 2 uses
  %i.d = extractelement <2 x float> %i.c, i64 0
  %i.e = extractelement <2 x float> %i.c, i64 1
  tail call void @_RNvMs_NtCsidf7BFzONoc_6krilla4geomNtB4_4Size7from_wh(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %0, float noundef %i.d, float noundef %i.e)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsidf7BFzONoc_6krilla4textNtNtB4_5type39Type3FontNtB4_7PdfFont10force_fill(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef float @_RNvXs_NtCsidf7BFzONoc_6krilla4textNtNtB4_5type39Type3FontNtB4_7PdfFont12units_per_em(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(144) %0) unnamed_addr #21 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !10, !noundef !10
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 16, !nonnull !10, !noundef !10
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %i.f = load i16, ptr %i.e, align 8, !noundef !10
  %i.g = uitofp i16 %i.f to float
  ret float %i.g
}

; Function Attrs: nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal noundef nonnull ptr @_RNvXs_NtCsidf7BFzONoc_6krilla4textNtNtB4_5type39Type3FontNtB4_7PdfFont4font(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(144) %0) unnamed_addr #19 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.c = atomicrmw add ptr %i.b, i64 1 monotonic, align 8
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterNtNtCsakL8LGkl72C_4ecow6string9EcoStringENvYRB38_INtNtB22_7convert4IntoB13_E4intoEE9from_iterCs8jFhWeO2DFb_9typst_pdf(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %1 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 2 uses
  %i.e = lshr exact i64 %i.d, 4                   ; 5 uses
  %i.f = mul i64 %i.e, 24                         ; 3 uses
  %or.cond.i.i = icmp ugt i64 %i.d, 6148914691236517200
  br i1 %or.cond.i.i, label %bb.c, label %bb.b, !prof !36

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs8jFhWeO2DFb_9typst_pdf.exit.i.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.b
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !23164
  %i.h = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.f, i64 noundef range(i64 1, 17) 8) #41, !noalias !23164 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs8jFhWeO2DFb_9typst_pdf.exit.i.i

bb.c:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i, %bb.a
  %.sroa.10.0.ph.i = phi i64 [ %i.f, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i ], [ undef, %bb.a ]
  %.sroa.4.0.ph.i = phi i64 [ 8, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i ], [ 0, %bb.a ]
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %.sroa.10.0.ph.i) #39
  unreachable

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs8jFhWeO2DFb_9typst_pdf.exit.i.i: ; preds = %bb.b, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.b ], [ %i.h, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i ] ; 2 uses
  %.sroa.4.0.i = phi i64 [ 0, %bb.b ], [ %i.e, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i ] ; 2 uses
  %3 = icmp samesign ule i64 %i.e, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %3)
  store i64 %.sroa.4.0.i, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.10.0.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23165)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23166)
  %4 = icmp eq ptr %1, %2
  br i1 %4, label %.loopexit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs8jFhWeO2DFb_9typst_pdf.exit.i.i, %bb.g
  %.val10.i.i.i.i.i = phi i64 [ %i.y, %bb.g ], [ 0, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs8jFhWeO2DFb_9typst_pdf.exit.i.i ] ; 4 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.val10.i.i.i.i.i ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23168)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23170)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 15
  %i.n = load i8, ptr %i.m, align 1, !alias.scope !23171, !noalias !23172, !noundef !10 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp sgt i8 %i.n, -1 ; 2 uses
  %i.o = and i8 %i.n, 127
  %i.p = zext nneg i8 %i.o to i64
  %i.q = load ptr, ptr %i.l, align 8, !alias.scope !23171, !noalias !23172, !nonnull !10
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !23171, !noalias !23172
  %.sroa.3.0.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i, i64 %i.s, i64 %i.p ; 7 uses
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i, ptr %i.q, ptr %i.l
  %.not.i1.i.i.i.i.i.i.i.i.i = icmp slt i64 %.sroa.3.0.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i1.i.i.i.i.i.i.i.i.i, label %bb.e, label %bb.d, !prof !36

bb.d:                                             ; preds = %.preheader.i.i
  %i.t = icmp eq i64 %.sroa.3.0.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.t, label %bb.g, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !23173
  %i.u = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %.sroa.3.0.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !23173 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i ], [ 0, %.preheader.i.i ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i, i64 %.sroa.3.0.i.i.i.i.i.i.i.i.i.i) #39
          to label %.noexc.i.i.i.i.i unwind label %.body, !noalias !23174

.noexc.i.i.i.i.i:                                 ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr nonnull align 1 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.3.0.i.i.i.i.i.i.i.i.i.i, i1 false), !noalias !23172
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.w = phi ptr [ %i.u, %bb.f ], [ inttoptr (i64 1 to ptr), %bb.d ]
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %.sroa.10.0.i, i64 %.val10.i.i.i.i.i ; 3 uses
  store i64 %.sroa.3.0.i.i.i.i.i.i.i.i.i.i, ptr %i.x, align 8, !noalias !23175
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.w, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !23175
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %.sroa.3.0.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !23175
  %i.y = add i64 %.val10.i.i.i.i.i, 1             ; 2 uses
  %i.z = icmp eq i64 %i.y, %i.e
  br i1 %i.z, label %.loopexit, label %.preheader.i.i

.body:                                            ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  store i64 %.val10.i.i.i.i.i, ptr %i.k, align 8, !alias.scope !23176, !noalias !23177
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBG_6string6StringEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #44
  resume { ptr, i32 } %i.aa

.loopexit:                                        ; preds = %bb.g, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs8jFhWeO2DFb_9typst_pdf.exit.i.i
  %storemerge.i.i.i.i = phi i64 [ 0, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs8jFhWeO2DFb_9typst_pdf.exit.i.i ], [ %i.e, %bb.g ]
  store i64 %storemerge.i.i.i.i, ptr %i.k, align 8, !alias.scope !23176, !noalias !23177
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag4AttrEENtNtNtB8_6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 15 uses
  %i.b = alloca [32 x i8], align 8                ; 17 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.d = load ptr, ptr %1, align 8, !alias.scope !23242, !nonnull !10, !noundef !10 ; 73 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !23242, !nonnull !10, !noundef !10
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %bb.bf, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %i.h, ptr %1, align 8, !alias.scope !23242
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23243)
  %i.i = load i8, ptr %i.d, align 8, !range !59, !alias.scope !23243, !noalias !23244, !noundef !10 ; 5 uses
  %i.j = icmp ne i8 %i.i, 7
  tail call void @llvm.assume(i1 %i.j)
  %i.k = add nsw i8 %i.i, -5
  %i.l = icmp samesign ugt i8 %i.i, 4
  %narrow.i = select i1 %i.l, i8 %i.k, i8 2
  switch i8 %narrow.i, label %bb.c [
    i8 0, label %bb.d
    i8 1, label %bb.l
    i8 2, label %bb.m
    i8 3, label %bb.s
  ]

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23245
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23247)
  %i.n = load i16, ptr %i.m, align 8, !range !61, !alias.scope !23248, !noalias !23249, !noundef !10 ; 3 uses
  switch i16 %i.n, label %default.unreachable [
    i16 0, label %bb.e
    i16 1, label %bb.f
    i16 2, label %bb.g
    i16 3, label %bb.h
    i16 4, label %bb.i
    i16 5, label %bb.j
    i16 6, label %bb.k
  ]

default.unreachable:                              ; preds = %bb.s, %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call fastcc void @_RNvXsy_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAhj10_ENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o) #40, !noalias !23244
  br label %_RNvXs1X_NtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tagNtB6_10StructAttrNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i

bb.f:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @_RNvXs4_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q), !noalias !23244
  br label %_RNvXs1X_NtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tagNtB6_10StructAttrNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i

bb.g:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @_RNvXs4_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.s), !noalias !23244
  br label %_RNvXs1X_NtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tagNtB6_10StructAttrNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i

bb.h:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @_RNvXs4_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u), !noalias !23244
  br label %_RNvXs1X_NtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tagNtB6_10StructAttrNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i

bb.i:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @_RNvXs4_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.w), !noalias !23244
  br label %_RNvXs1X_NtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tagNtB6_10StructAttrNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i

bb.j:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @_RNvXs4_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.y), !noalias !23244
  br label %_RNvXs1X_NtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tagNtB6_10StructAttrNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i

bb.k:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 10
  %i.ab = load i16, ptr %i.aa, align 2, !range !86, !alias.scope !23248, !noalias !23249, !noundef !10
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i16 %i.ab, ptr %i.ac, align 2, !alias.scope !23246, !noalias !23250
  br label %_RNvXs1X_NtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tagNtB6_10StructAttrNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i

_RNvXs1X_NtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tagNtB6_10StructAttrNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  store i16 %i.n, ptr %i.b, align 8, !alias.scope !23246, !noalias !23250
  %i.ad = trunc nuw nsw i16 %i.n to i8
  %.sroa.10.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.10.8.copyload = load i24, ptr %.sroa.10.8..sroa_idx, align 1, !noalias !23243
  %.sroa.11.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.11.8.copyload = load i32, ptr %.sroa.11.8..sroa_idx, align 4, !noalias !23243
  %.sroa.12.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.12.8.copyload = load i32, ptr %.sroa.12.8..sroa_idx, align 8, !noalias !23243
  %.sroa.13.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.sroa.13.8.copyload = load i32, ptr %.sroa.13.8..sroa_idx, align 4, !noalias !23243
  %.sroa.14.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.14.8.copyload = load float, ptr %.sroa.14.8..sroa_idx, align 8, !noalias !23243
  %.sroa.15.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.sroa.15.8.copyload = load i32, ptr %.sroa.15.8..sroa_idx, align 4, !noalias !23243
  %.sroa.16.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.16.8.copyload = load i64, ptr %.sroa.16.8..sroa_idx, align 8, !noalias !23243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23245
  br label %_RNvXs1T_NtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tagNtB6_4AttrNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.l:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !range !59, !alias.scope !23243, !noalias !23244, !noundef !10
  br label %_RNvXs1T_NtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tagNtB6_4AttrNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.m:                                             ; preds = %bb.b
  switch i8 %i.i, label %default.unreachable1.i1.i [
    i8 0, label %bb.n
    i8 1, label %bb.o
    i8 2, label %bb.p
    i8 3, label %bb.q
    i8 4, label %bb.r
  ]

default.unreachable1.i1.i:                        ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @_RNvXs4_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ah, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ag)
  br label %_RNvXs25_NtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tagNtB6_9TableAttrNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i

bb.o:                                             ; preds = %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !range !64, !alias.scope !23251, !noalias !23252, !noundef !10
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.aj, ptr %i.ak, align 1
  br label %_RNvXs25_NtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tagNtB6_9TableAttrNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i

bb.p:                                             ; preds = %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call fastcc void @_RNvXsy_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecANtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdj1_ENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.am, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.al) #40
  br label %_RNvXs25_NtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tagNtB6_9TableAttrNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i

bb.q:                                             ; preds = %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !range !35, !alias.scope !23251, !noalias !23252, !noundef !10
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.ao, ptr %i.ap, align 4
  br label %_RNvXs25_NtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tagNtB6_9TableAttrNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i

bb.r:                                             ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !range !35, !alias.scope !23251, !noalias !23252, !noundef !10
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.ar, ptr %i.as, align 4
  br label %_RNvXs25_NtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tagNtB6_9TableAttrNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i

_RNvXs25_NtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tagNtB6_9TableAttrNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i: ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n
  %.sroa.7.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.7.0.copyload4 = load i8, ptr %.sroa.7.0..sroa_idx3, align 1
  %.sroa.86.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.86.0.copyload8 = load i8, ptr %.sroa.86.0..sroa_idx7, align 8
  %.sroa.10.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %.sroa.10.0.copyload10 = load i24, ptr %.sroa.10.0..sroa_idx9, align 1
  %.sroa.11.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.11.0.copyload12 = load i32, ptr %.sroa.11.0..sroa_idx11, align 4
  %.sroa.12.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.12.0.copyload14 = load i32, ptr %.sroa.12.0..sroa_idx13, align 8
  %.sroa.13.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %.sroa.13.0.copyload16 = load i32, ptr %.sroa.13.0..sroa_idx15, align 4
  %.sroa.14.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.14.0.copyload18 = load float, ptr %.sroa.14.0..sroa_idx17, align 8
  %.sroa.15.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %.sroa.15.0.copyload20 = load i32, ptr %.sroa.15.0..sroa_idx19, align 4
  %.sroa.16.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.16.0.copyload22 = load i64, ptr %.sroa.16.0..sroa_idx21, align 8
  br label %_RNvXs1T_NtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tagNtB6_4AttrNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.s:                                             ; preds = %bb.b
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23253)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23254)
  %i.au = load i8, ptr %i.at, align 8, !range !60, !alias.scope !23255, !noalias !23256, !noundef !10 ; 2 uses
  switch i8 %i.au, label %default.unreachable [
    i8 0, label %bb.t
    i8 1, label %bb.u
    i8 2, label %bb.v
    i8 3, label %bb.w
end_hunk_0
