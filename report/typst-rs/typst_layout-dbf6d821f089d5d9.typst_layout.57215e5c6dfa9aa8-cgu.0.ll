Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_layout-dbf6d821f089d5d9.typst_layout.57215e5c6dfa9aa8-cgu.0?download=true
inline.NumInlined: 19601
inline.NumDeleted: 9837
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 55
loop-unroll.NumUnrolled: 106
begin_hunk_0_@_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten15try_flatten_oneINtNtBa_6option6OptionjEuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping10ShapedTextENCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkjB2a_NCNvMs1_B2c_B2a_6hyphens2_0E0E0B2g_
define internal fastcc void @_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten15try_flatten_oneINtNtBa_6option6OptionjEuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping10ShapedTextENCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkjB2a_NCNvMs1_B2c_B2a_6hyphens2_0E0E0B2g_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef range(i64 0, 2) %2, i64 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [36 x i8], align 4                ; 5 uses
  %i.b = alloca [96 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [6 x i8], align 2                 ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [3 x i8], align 1                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 10 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 11 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.13.i = alloca [24 x i8], align 8         ; 4 uses
  %.sroa.16.i = alloca [6 x i8], align 4          ; 4 uses
  %.sroa.17.i = alloca [3 x i8], align 2          ; 4 uses
  %i.k = trunc nuw i64 %2 to i1
  br i1 %i.k, label %bb.b, label %bb.aj

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18981)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18982)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18983)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !18984
  %i.l = load ptr, ptr %1, align 8, !alias.scope !18985, !noalias !18986, !nonnull !41, !align !46, !noundef !41 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !18984
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !18984
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !18984
  %i.n = call fastcc { double, double } @_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtBa_4text8TextElemKh5_ECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !18984 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !18984
  %i.o = extractvalue { double, double } %i.n, 0
  %i.p = extractvalue { double, double } %i.n, 1
  %i.q = call noundef double @_RNvXs8_NtCsdaEETE4DqmE_13typst_library4textNtB5_8TextSizeNtNtNtB7_11foundations6styles7Resolve7resolve(double noundef %i.o, double noundef %i.p, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.j), !noalias !18984 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !18984
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !18984
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !18984
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !18984
  call fastcc void @_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtBa_4text8TextElemKh20_ECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.h), !noalias !18984
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !18984
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !18984
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !18985, !noalias !18986, !nonnull !41, !align !46, !noundef !41
  %i.t = invoke fastcc noundef ptr @_RNvXs1_NvCsdaEETE4DqmE_13typst_library1__NtB5_15___ComemoSurfaceNtB7_5World4font(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.s, i64 noundef %3)
          to label %bb.d unwind label %bb.c, !noalias !18984 ; 2 uses

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit75.i.i: ; preds = %bb.ai, %bb.ah, %bb.c
  %.pn.pn.i.i = phi { ptr, i32 } [ %i.fi, %bb.ah ], [ %i.x, %bb.c ], [ %i.fi, %bb.ai ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.val62.i.i = load i64, ptr %i.u, align 8, !alias.scope !18987, !noalias !18984, !noundef !41 ; 2 uses
  %i.v = icmp ugt i64 %.val62.i.i, 2
  br i1 %i.v, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font3tag3TagNtNtB1d_10variations9AxisValueEEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations14FontVariationsECs7tN9tvpkfrg_12typst_layout.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font3tag3TagNtNtB1d_10variations9AxisValueEEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit75.i.i
  %.val61.i.i = load ptr, ptr %i.i, align 8, !noalias !18984, !nonnull !41, !noundef !41
  %i.w = shl nuw i64 %.val62.i.i, 3
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val61.i.i, i64 noundef %i.w, i64 noundef range(i64 1, -9223372036854775807) 4) #56, !noalias !18988
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations14FontVariationsECs7tN9tvpkfrg_12typst_layout.exit.i.i

bb.c:                                             ; preds = %bb.ab, %bb.e, %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit75.i.i

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 92 ; 2 uses
  %.sroa.053.0.copyload.i.i = load i48, ptr %i.y, align 4, !noalias !18984
  %i.z = invoke noundef nonnull ptr @_RNvMNtNtCsdaEETE4DqmE_13typst_library4text4fontNtB2_4Font11instantiate(ptr noundef nonnull %i.t, i48 %.sroa.053.0.copyload.i.i, double noundef %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i)
          to label %bb.f unwind label %bb.c, !noalias !18984 ; 9 uses

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %bb.ab, %.thread80.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !18984
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.val60.i.i = load i64, ptr %i.aa, align 8, !alias.scope !18987, !noalias !18984, !noundef !41 ; 2 uses
  %i.ab = icmp ugt i64 %.val60.i.i, 2
  br i1 %i.ab, label %_RNCNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB7_10ShapedText6hyphens2_0Bb_.exit.thread43.i, label %_RNCNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB7_10ShapedText6hyphens2_0Bb_.exit.thread.i

_RNCNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB7_10ShapedText6hyphens2_0Bb_.exit.thread43.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit.i.i
  %.val59.i53.i = load ptr, ptr %i.i, align 8, !noalias !18984, !nonnull !41, !noundef !41
  %i.ac = shl nuw i64 %.val60.i.i, 3
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val59.i53.i, i64 noundef %i.ac, i64 noundef range(i64 1, -9223372036854775807) 4) #56, !noalias !18984
  br label %_RNCNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB7_10ShapedText6hyphens2_0Bb_.exit.thread.i

bb.f:                                             ; preds = %bb.e
  store ptr %i.z, ptr %i.g, align 8, !noalias !18984
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 200 ; 2 uses
  %i.ae = invoke fastcc { i16, i16 } @_RNvMsl_CsdQl7XGSB5tC_10ttf_parserNtB5_4Face11glyph_index(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(2776) %i.ad, i32 noundef 45)
          to label %bb.g unwind label %bb.ah, !noalias !18984 ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.af = extractvalue { i16, i16 } %i.ae, 0
  %i.ag = extractvalue { i16, i16 } %i.ae, 1      ; 7 uses
  %i.ah = trunc i16 %i.af to i1
  br i1 %i.ah, label %bb.h, label %.thread80.i.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !18989)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 1992
  %.sroa.08.0.copyload.i.i.i = load ptr, ptr %i.ai, align 8, !alias.scope !18989, !noalias !18984 ; 2 uses
  %.sroa.610.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 2000
  %.sroa.610.sroa.0.0.copyload.i.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i.i.i, align 8, !alias.scope !18989, !noalias !18984 ; 5 uses
  %.not.i.i.i = icmp ne ptr %.sroa.08.0.copyload.i.i.i, null
  %.sroa.610.sroa.6.0..sroa.610.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 2024
  %.sroa.610.sroa.6.0.copyload.i.i.i = load i16, ptr %.sroa.610.sroa.6.0..sroa.610.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !18989, !noalias !18984
  %.not.i.i.i.i = icmp ult i16 %i.ag, %.sroa.610.sroa.6.0.copyload.i.i.i
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 %.not.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %bb.i, label %.thread80.i.i

bb.i:                                             ; preds = %bb.h
  %i.aj = lshr i64 %.sroa.610.sroa.0.0.copyload.i.i.i, 2
  %i.ak = trunc i64 %i.aj to i16
  %i.al = icmp ult i16 %i.ag, %i.ak
  br i1 %i.al, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.am = zext i16 %i.ag to i64
  %i.an = shl nuw nsw i64 %i.am, 2                ; 2 uses
  %i.ao = add nuw nsw i64 %i.an, 4
  %.not.i.i.i.i.i = icmp ugt i64 %i.ao, %.sroa.610.sroa.0.0.copyload.i.i.i
  br i1 %.not.i.i.i.i.i, label %bb.k, label %_RNvMsi_NtCsdQl7XGSB5tC_10ttf_parser6parserINtB5_11LazyArray16NtNtNtB7_6tables4hmtx7MetricsE3getCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ap = and i64 %.sroa.610.sroa.0.0.copyload.i.i.i, 262140
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %.thread80.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = add i64 %.sroa.610.sroa.0.0.copyload.i.i.i, 262140
  %i.as = and i64 %i.ar, 262140                   ; 2 uses
  %i.at = add nuw nsw i64 %i.as, 4
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.at, %.sroa.610.sroa.0.0.copyload.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %.thread80.i.i, label %_RNvMsi_NtCsdQl7XGSB5tC_10ttf_parser6parserINtB5_11LazyArray16NtNtNtB7_6tables4hmtx7MetricsE3getCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i

_RNvMsi_NtCsdQl7XGSB5tC_10ttf_parser6parserINtB5_11LazyArray16NtNtNtB7_6tables4hmtx7MetricsE3getCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i: ; preds = %bb.l, %bb.j
  %.sink30.i.i.i = phi i64 [ %i.an, %bb.j ], [ %i.as, %bb.l ]
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.08.0.copyload.i.i.i, i64 %.sink30.i.i.i
  %.sroa.012.0.copyload.i.i.i.i.i.i = load i16, ptr %i.au, align 1, !noalias !18990
  %i.av = call i16 @llvm.bswap.i16(i16 %.sroa.012.0.copyload.i.i.i.i.i.i)
  %i.aw = uitofp i16 %i.av to float               ; 10 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.z, i64 2696
  %.val.i.i.i = load ptr, ptr %i.ax, align 8, !alias.scope !18989, !noalias !18984, !noundef !41
  %.not25.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not25.i.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.noexc67.i.i, %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4hvarNtB2_5Table14advance_offset.exit.i.i.i, %_RNvMsi_NtCsdQl7XGSB5tC_10ttf_parser6parserINtB5_11LazyArray16NtNtNtB7_6tables4hmtx7MetricsE3getCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i
  %.sroa.01.0.i.i.i = phi float [ %.sroa.0.1.i.i.i.i, %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4hvarNtB2_5Table14advance_offset.exit.i.i.i ], [ %.sroa.01.2.i.i.i, %.noexc67.i.i ], [ %i.aw, %_RNvMsi_NtCsdQl7XGSB5tC_10ttf_parser6parserINtB5_11LazyArray16NtNtNtB7_6tables4hmtx7MetricsE3getCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i ] ; 3 uses
  %i.ay = fcmp oge float %.sroa.01.0.i.i.i, f0xCF000000
  %i.az = fcmp olt float %.sroa.01.0.i.i.i, f0x4F000000
  %or.cond.i.i.i.i = and i1 %i.ay, %i.az
  br i1 %or.cond.i.i.i.i, label %bb.ac, label %.thread80.i.i

bb.n:                                             ; preds = %_RNvMsi_NtCsdQl7XGSB5tC_10ttf_parser6parserINtB5_11LazyArray16NtNtNtB7_6tables4hmtx7MetricsE3getCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.z, i64 912 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 8, !range !103, !alias.scope !18989, !noalias !18984, !noundef !41
  %.not20.i.i.i = icmp eq i32 %i.bb, 2
  br i1 %.not20.i.i.i, label %bb.aa, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !18991
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.ba, i64 96, i1 false), !noalias !18984
  %i.bc = getelementptr inbounds nuw i8, ptr %i.z, i64 2968
  %i.bd = load i8, ptr %i.bc, align 8, !alias.scope !18992, !noalias !18984, !noundef !41 ; 2 uses
  %i.be = zext i8 %i.bd to i64                    ; 2 uses
  %i.bf = icmp ult i8 %i.bd, 65
  br i1 %i.bf, label %_RNvMsl_CsdQl7XGSB5tC_10ttf_parserNtB5_4Face6coords.exit.i.i.i, label %bb.p, !prof !133

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.be, i64 noundef 64, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @460) #53
          to label %.noexc.i.i unwind label %bb.ah, !noalias !18984

.noexc.i.i:                                       ; preds = %bb.p
  unreachable

_RNvMsl_CsdQl7XGSB5tC_10ttf_parserNtB5_4Face6coords.exit.i.i.i: ; preds = %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %i.z, i64 2840
  call void @llvm.experimental.noalias.scope.decl(metadata !18993)
  %i.bh = load i32, ptr %i.b, align 8, !range !106, !alias.scope !18993, !noalias !18994, !noundef !41
  %i.bi = trunc nuw i32 %i.bh to i1
  br i1 %i.bi, label %bb.q, label %bb.z

bb.q:                                             ; preds = %_RNvMsl_CsdQl7XGSB5tC_10ttf_parserNtB5_4Face6coords.exit.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !alias.scope !18993, !noalias !18994, !noundef !41
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !18993, !noalias !18994, !noundef !41 ; 2 uses
  %i.bn = zext i32 %i.bk to i64                   ; 3 uses
  %i.bo = icmp ult i64 %i.bm, %i.bn
  br i1 %i.bo, label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4hvarNtB2_5Table14advance_offset.exit.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !alias.scope !18993, !noalias !18994, !nonnull !41, !noundef !41
  %i.br = sub nuw i64 %i.bm, %i.bn                ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bn ; 5 uses
  %i.bt = zext i16 %i.ag to i32
  %switch.i.i.i.i.i = icmp ult i64 %i.br, 2
  br i1 %switch.i.i.i.i.i, label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4hvarNtB2_5Table14advance_offset.exit.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bu = load i8, ptr %i.bs, align 1, !noalias !18995, !noundef !41
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  %i.bw = load i8, ptr %i.bv, align 1, !noalias !18995, !noundef !41 ; 2 uses
  %i.bx = icmp eq i8 %i.bu, 0
  br i1 %i.bx, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %.not.i80.i.i.i.i.i = icmp ult i64 %i.br, 4
  br i1 %.not.i80.i.i.i.i.i, label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4hvarNtB2_5Table14advance_offset.exit.i.i.i, label %bb.v

bb.u:                                             ; preds = %bb.s
  %.not.i84.i.i.i.i.i = icmp ult i64 %i.br, 6
  br i1 %.not.i84.i.i.i.i.i, label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4hvarNtB2_5Table14advance_offset.exit.i.i.i, label %bb.x

bb.v:                                             ; preds = %bb.t
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 2
  %.sroa.060.0.copyload.i.i.i.i.i = load i16, ptr %i.by, align 1, !noalias !18995
  %i.bz = call i16 @llvm.bswap.i16(i16 %.sroa.060.0.copyload.i.i.i.i.i)
  %i.ca = zext i16 %i.bz to i32
  br label %bb.w

bb.w:                                             ; preds = %bb.x, %bb.v
  %.sroa.16.4.i.i.i.i.i = phi i64 [ 4, %bb.v ], [ 6, %bb.x ]
  %.sroa.018.0.i.i.i.i.i = phi i32 [ %i.ca, %bb.v ], [ %i.cd, %bb.x ] ; 2 uses
  %i.cb = icmp eq i32 %.sroa.018.0.i.i.i.i.i, 0
  br i1 %i.cb, label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4hvarNtB2_5Table14advance_offset.exit.i.i.i, label %bb.y

bb.x:                                             ; preds = %bb.u
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bs, i64 2
  %.sroa.065.0.copyload.i.i.i.i.i = load i32, ptr %i.cc, align 1, !noalias !18995
  %i.cd = call i32 @llvm.bswap.i32(i32 %.sroa.065.0.copyload.i.i.i.i.i)
  br label %bb.w

bb.y:                                             ; preds = %bb.w
  %i.ce = add i32 %.sroa.018.0.i.i.i.i.i, -1
  %spec.select.i.i.i.i.i = call i32 @llvm.umin.i32(i32 range(i32 0, 65536) %i.bt, i32 %i.ce)
  %i.cf = lshr i8 %i.bw, 4
  %i.cg = and i8 %i.cf, 3                         ; 2 uses
  %i.ch = add nuw nsw i8 %i.cg, 1                 ; 3 uses
  %i.ci = and i8 %i.bw, 15
  %i.cj = add nuw nsw i8 %i.ci, 1
  %i.ck = zext nneg i8 %i.cj to i32               ; 2 uses
  %i.cl = zext nneg i8 %i.ch to i64               ; 2 uses
  %i.cm = zext nneg i32 %spec.select.i.i.i.i.i to i64
  %i.cn = mul nuw nsw i64 %i.cm, %i.cl
  %i.co = add nuw nsw i64 %i.cn, %.sroa.16.4.i.i.i.i.i ; 2 uses
  %i.cp = add nuw nsw i64 %i.co, %i.cl
  %.not.i88.i.i.i.i.i = icmp ugt i64 %i.cp, %i.br
  br i1 %.not.i88.i.i.i.i.i, label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4hvarNtB2_5Table14advance_offset.exit.i.i.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.y
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.co ; 4 uses
  %i.cr = load i8, ptr %i.cq, align 1, !noalias !18995, !noundef !41
  %i.cs = zext i8 %i.cr to i32                    ; 2 uses
  %i.ct = icmp eq i8 %i.cg, 0
  br i1 %i.ct, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.1:                               ; preds = %.lr.ph.preheader.i.i.i.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 1
  %i.cv = shl nuw nsw i32 %i.cs, 8
  %i.cw = load i8, ptr %i.cu, align 1, !noalias !18995, !noundef !41
  %i.cx = zext i8 %i.cw to i32
  %i.cy = or disjoint i32 %i.cv, %i.cx            ; 2 uses
  %i.cz = icmp eq i8 %i.ch, 2
  br i1 %i.cz, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.2:                               ; preds = %.lr.ph.i.i.i.i.i.1
  %i.da = getelementptr inbounds nuw i8, ptr %i.cq, i64 2
  %i.db = shl nuw nsw i32 %i.cy, 8
  %i.dc = load i8, ptr %i.da, align 1, !noalias !18995, !noundef !41
  %i.dd = zext i8 %i.dc to i32
  %i.de = or disjoint i32 %i.db, %i.dd            ; 2 uses
  %i.df = icmp eq i8 %i.ch, 3
  br i1 %i.df, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.3

.lr.ph.i.i.i.i.i.3:                               ; preds = %.lr.ph.i.i.i.i.i.2
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cq, i64 3
  %i.dh = shl nuw i32 %i.de, 8
  %i.di = load i8, ptr %i.dg, align 1, !noalias !18995, !noundef !41
  %i.dj = zext i8 %i.di to i32
  %i.dk = or disjoint i32 %i.dh, %i.dj
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i.3, %.lr.ph.i.i.i.i.i.2, %.lr.ph.i.i.i.i.i.1, %.lr.ph.preheader.i.i.i.i.i
  %.lcssa = phi i32 [ %i.cs, %.lr.ph.preheader.i.i.i.i.i ], [ %i.cy, %.lr.ph.i.i.i.i.i.1 ], [ %i.de, %.lr.ph.i.i.i.i.i.2 ], [ %i.dk, %.lr.ph.i.i.i.i.i.3 ] ; 2 uses
  %i.dl = lshr i32 %.lcssa, %i.ck                 ; 2 uses
  %i.dm = icmp samesign ugt i32 %i.dl, 65535
  br i1 %i.dm, label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4hvarNtB2_5Table14advance_offset.exit.i.i.i, label %_RNvMNtCsdQl7XGSB5tC_10ttf_parser9delta_setNtB2_16DeltaSetIndexMap3map.exit.i.i.i.i

_RNvMNtCsdQl7XGSB5tC_10ttf_parser9delta_setNtB2_16DeltaSetIndexMap3map.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i
  %notmask.i.i.i.i.i = shl nsw i32 -1, %i.ck
  %i.dn = xor i32 %notmask.i.i.i.i.i, -1
  %i.do = and i32 %.lcssa, %i.dn
  %i.dp = trunc nuw i32 %i.do to i16
  %i.dq = trunc nuw i32 %i.dl to i16
  br label %bb.z

bb.z:                                             ; preds = %_RNvMNtCsdQl7XGSB5tC_10ttf_parser9delta_setNtB2_16DeltaSetIndexMap3map.exit.i.i.i.i, %_RNvMsl_CsdQl7XGSB5tC_10ttf_parserNtB5_4Face6coords.exit.i.i.i
  %.sroa.09.0.i.i.i.i = phi i16 [ %i.dp, %_RNvMNtCsdQl7XGSB5tC_10ttf_parser9delta_setNtB2_16DeltaSetIndexMap3map.exit.i.i.i.i ], [ %i.ag, %_RNvMsl_CsdQl7XGSB5tC_10ttf_parserNtB5_4Face6coords.exit.i.i.i ]
  %.sroa.08.0.i.i.i.i = phi i16 [ %i.dq, %_RNvMNtCsdQl7XGSB5tC_10ttf_parser9delta_setNtB2_16DeltaSetIndexMap3map.exit.i.i.i.i ], [ 0, %_RNvMsl_CsdQl7XGSB5tC_10ttf_parserNtB5_4Face6coords.exit.i.i.i ]
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ds = invoke { i32, float } @_RNvMs_NtCsdQl7XGSB5tC_10ttf_parser9var_storeNtB4_18ItemVariationStore11parse_delta(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.dr, i16 noundef %.sroa.08.0.i.i.i.i, i16 noundef %.sroa.09.0.i.i.i.i, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %i.bg, i64 noundef range(i64 0, 65) %i.be)
          to label %.noexc66.i.i unwind label %bb.ah, !noalias !18984 ; 2 uses

.noexc66.i.i:                                     ; preds = %bb.z
  %i.dt = extractvalue { i32, float } %i.ds, 0
  %i.du = extractvalue { i32, float } %i.ds, 1
  %i.dv = trunc i32 %i.dt to i1
  %i.dw = fadd float %i.du, 5.000000e-01
  %i.dx = select i1 %i.dv, float %i.dw, float -0.000000e+00
  %i.dy = fadd float %i.dx, %i.aw
  br label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4hvarNtB2_5Table14advance_offset.exit.i.i.i

_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4hvarNtB2_5Table14advance_offset.exit.i.i.i: ; preds = %.noexc66.i.i, %._crit_edge.i.i.i.i.i, %bb.y, %bb.w, %bb.u, %bb.t, %bb.r, %bb.q
  %.sroa.0.1.i.i.i.i = phi float [ %i.dy, %.noexc66.i.i ], [ %i.aw, %bb.q ], [ %i.aw, %bb.t ], [ %i.aw, %bb.w ], [ %i.aw, %bb.y ], [ %i.aw, %._crit_edge.i.i.i.i.i ], [ %i.aw, %bb.r ], [ %i.aw, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !18991
  br label %bb.m

bb.aa:                                            ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18991
  invoke void @_RNvMsl_CsdQl7XGSB5tC_10ttf_parserNtB5_4Face20glyph_phantom_points(ptr noalias nofree noundef nonnull sret([36 x i8]) align 4 captures(address) dereferenceable(36) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2776) %i.ad, i16 noundef %i.ag)
          to label %.noexc67.i.i unwind label %bb.ah, !noalias !18984

.noexc67.i.i:                                     ; preds = %bb.aa
  %i.dz = load i32, ptr %i.a, align 4, !range !106, !noalias !18991, !noundef !41
  %i.ea = trunc nuw i32 %i.dz to i1
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.ec = load float, ptr %i.eb, align 4, !noalias !18991
  %i.ed = fadd float %i.ec, 5.000000e-01
  %i.ee = select i1 %i.ea, float %i.ed, float -0.000000e+00
  %.sroa.01.2.i.i.i = fadd float %i.ee, %i.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18991
  br label %bb.m

.thread80.i.i:                                    ; preds = %bb.ac, %bb.m, %bb.l, %bb.k, %bb.h, %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !18996)
  call void @llvm.experimental.noalias.scope.decl(metadata !18997)
  call void @llvm.experimental.noalias.scope.decl(metadata !18998)
  %i.ef = load ptr, ptr %i.g, align 8, !alias.scope !18999, !noalias !18984, !nonnull !41, !noundef !41
  %i.eg = atomicrmw sub ptr %i.ef, i64 1 release, align 8, !noalias !19000
  %i.eh = icmp eq i64 %i.eg, 1
  br i1 %i.eh, label %bb.ab, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit.i.i

bb.ab:                                            ; preds = %.thread80.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library4text4font17FontInstanceInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #58
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit.i.i unwind label %bb.c, !noalias !18984

bb.ac:                                            ; preds = %bb.m
  %i.ei = call i32 @llvm.fptosi.sat.i32.f32(float %.sroa.01.0.i.i.i) ; 2 uses
  %or.cond1.i.i.i.i = icmp ult i32 %i.ei, 65536
  br i1 %or.cond1.i.i.i.i, label %bb.ad, label %.thread80.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.ej = load ptr, ptr %i.g, align 8, !noalias !18984, !nonnull !41, !noundef !41
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 96
  %i.el = load double, ptr %i.ek, align 8, !noalias !18984, !noundef !41
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.en = load ptr, ptr %i.em, align 8, !alias.scope !18985, !noalias !18986, !nonnull !41, !noundef !41
  %i.eo = load i8, ptr %i.en, align 1, !range !54, !noalias !18984, !noundef !41
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8, !alias.scope !18985, !noalias !18986, !nonnull !41, !align !46, !noundef !41 ; 2 uses
  %i.er = load i64, ptr %i.eq, align 8, !noalias !18984, !noundef !41
  %i.es = getelementptr inbounds nuw i8, ptr %i.l, i64 101
  %i.et = load i8, ptr %i.es, align 1, !range !116, !noalias !18984, !noundef !41
  %i.eu = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %.sroa.015.0.copyload.i.i = load i32, ptr %i.eu, align 8, !noalias !18984
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ev = getelementptr inbounds nuw i8, ptr %i.l, i64 98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.f, ptr noundef nonnull align 2 dereferenceable(3) %i.ev, i64 3, i1 false), !noalias !18984
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !18984
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.d, ptr noundef nonnull align 4 dereferenceable(6) %i.y, i64 6, i1 false), !noalias !18984
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !18984
  %i.ew = call noundef align 8 dereferenceable_or_null(104) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 104, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !18984 ; 14 uses
  %i.ex = icmp eq ptr %i.ew, null
  br i1 %i.ex, label %bb.ae, label %bb.af, !prof !44

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 104) #57
          to label %.noexc69.i.i unwind label %bb.ah, !noalias !18984

.noexc69.i.i:                                     ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.ey = trunc nuw i8 %i.eo to i1                ; 3 uses
  %.57.i.i = select i1 %i.ey, i64 2, i64 1        ; 2 uses
  %.56.i.i = select i1 %i.ey, i32 173, i32 45
  %..i.i = select i1 %i.ey, ptr @236, ptr @235
  %i.ez = trunc nuw i32 %i.ei to i16
  %i.fa = uitofp i16 %i.ez to double
  %i.fb = fdiv double %i.fa, %i.el                ; 2 uses
  %.inv.i.i = fcmp ord double %i.fb, 0.000000e+00
  %spec.store.select.i.i = select i1 %.inv.i.i, double %i.fb, double 0.000000e+00
  %i.fc = load ptr, ptr %i.g, align 8, !noalias !18984, !nonnull !41, !noundef !41
  %i.fd = load i64, ptr %i.eq, align 8, !noalias !18984, !noundef !41 ; 2 uses
  %i.fe = add i64 %i.fd, %.57.i.i
  store ptr %i.fc, ptr %i.ew, align 8, !noalias !18984
  %.sroa.423.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store double %spec.store.select.i.i, ptr %.sroa.423.0..sroa_idx.i.i, align 8, !noalias !18984
  %.sroa.524.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %.sroa.726.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.524.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !18984
  store double %i.q, ptr %.sroa.726.0..sroa_idx.i.i, align 8, !noalias !18984
  %.sroa.827.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 40
  %.sroa.928.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.827.0..sroa_idx.i.i, i8 0, i64 32, i1 false), !noalias !18984
  store i64 %i.fd, ptr %.sroa.928.0..sroa_idx.i.i, align 8, !noalias !18984
  %.sroa.1029.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 80
  store i64 %i.fe, ptr %.sroa.1029.0..sroa_idx.i.i, align 8, !noalias !18984
  %.sroa.1130.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 88
  store i32 %.56.i.i, ptr %.sroa.1130.0..sroa_idx.i.i, align 8, !noalias !18984
  %.sroa.1231.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 92
  store i16 %i.ag, ptr %.sroa.1231.0..sroa_idx.i.i, align 4, !noalias !18984
  %.sroa.13.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 94
  store i8 1, ptr %.sroa.13.0..sroa_idx.i.i, align 2, !noalias !18984
  %.sroa.14.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 95
  store i8 0, ptr %.sroa.14.0..sroa_idx.i.i, align 1, !noalias !18984
  %.sroa.15.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 96
  store i8 -2, ptr %.sroa.15.0..sroa_idx.i.i, align 8, !noalias !18984
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(3) %.sroa.17.i, ptr noundef nonnull align 1 dereferenceable(3) %i.f, i64 3, i1 false), !noalias !19001
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.i, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !19001
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %.sroa.16.i, ptr noundef nonnull align 2 dereferenceable(6) %i.d, i64 6, i1 false), !noalias !19001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !18984
  %i.ff = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.val58.i.i = load i64, ptr %i.ff, align 8, !alias.scope !18987, !noalias !18984, !noundef !41 ; 2 uses
  %i.fg = icmp ugt i64 %.val58.i.i, 2
  br i1 %i.fg, label %_RNCNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB7_10ShapedText6hyphens2_0Bb_.exit.i, label %_RNCNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB7_10ShapedText6hyphens2_0Bb_.exit.thread20.i

bb.ag:                                            ; preds = %bb.ai
  %i.fh = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations4func7ClosureEE9drop_slowB1w_

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library9visualize5image10ImageInnerEE9drop_slowB1w_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #8

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCsjFU9swAW47b_8indexmap3map8IndexMapNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1p_5value5ValueNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEE9drop_slowB1r_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #8

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtBN_6layout3abs3AbsEE9drop_slowBN_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #8

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsf1gSX8u3EQ2_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #8

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex6RegexIE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #8

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCs7lTeezpKIYd_14regex_automata4util8captures14GroupInfoInnerE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #8

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations6module11ModuleInnerE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #8

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations6symbol8ModifiedE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #8

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations7plugin_10PluginFuncE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #8

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #8

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library4text4font17FontInstanceInnerE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #8

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library4text4font9FontInnerE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #8

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library5model12bibliography5WorksE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #8

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #8

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #8

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling11TilingInnerE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #8

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient13ConicGradientE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #8

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient14LinearGradientE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #8

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient14RadialGradientE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #8

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve8CellGridE9drop_slowBO_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #8

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcShE9drop_slowCs7lTeezpKIYd_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #8

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcTNtNtNtCsdaEETE4DqmE_13typst_library11foundations4func4FuncNtNtBL_4args4ArgsEE9drop_slowBN_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #8

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArceE9drop_slowCs7lTeezpKIYd_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs4_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impsNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsp_NtNtCs3oUPovFnLWP_4core3fmt3numsNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsn_NtNtCs3oUPovFnLWP_4core3fmt3numsNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impxNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsF_NtNtCs3oUPovFnLWP_4core3fmt3numxNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsD_NtNtCs3oUPovFnLWP_4core3fmt3numxNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtNtCs3oUPovFnLWP_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB5_12ProcessColorNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(20), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(20)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsd_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsE_NtNtCs3oUPovFnLWP_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsC_NtNtCs3oUPovFnLWP_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvNtCsloFShupyl5J_6comemo10accelerate3get(i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsdqxqgV7ixUt_5kurbo7bezpathNtB2_7BezPath10close_path(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsdaEETE4DqmE_13typst_library6engineNtB5_5Route8contains(ptr noundef nonnull align 8, i16 noundef range(i16 1, 0)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsdaEETE4DqmE_13typst_library6engineNtB5_5Route6within(ptr noundef nonnull align 8, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs9_NtCsdaEETE4DqmE_13typst_library6engineNtB5_4Sink13introspection(ptr noalias nofree noundef align 8 dereferenceable(96), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs9_NtCsdaEETE4DqmE_13typst_library6engineNtB5_4Sink13delayed_error(ptr noalias nofree noundef align 8 dereferenceable(96), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs9_NtCsdaEETE4DqmE_13typst_library6engineNtB5_4Sink14delayed_errors(ptr noalias nofree noundef align 8 dereferenceable(96), ptr noundef nonnull, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs9_NtCsdaEETE4DqmE_13typst_library6engineNtB5_4Sink5value(ptr noalias nofree noundef align 8 dereferenceable(96), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noundef, i64) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs4_NtNtCsdaEETE4DqmE_13typst_library13introspection7locatorNtB5_7Locator7resolve(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 16 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtCs3oUPovFnLWP_4core3fmtbNtB5_7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field5_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsg_NtCs6xpQEr8gLsQ_11typst_utils4hashNtB5_8HashLockNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 16 captures(none) dereferenceable(16), ptr noundef nonnull align 16) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtNtNtCsdaEETE4DqmE_13typst_library4math2ir4item17SharedFenceSizingE9drop_slowBL_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 -2, 2) i8 @_RNvXs6_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd11partial_cmp(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs7_NtCsdqxqgV7ixUt_5kurbo8cubicbezNtB5_8CubicBezNtNtB7_11param_curve17ParamCurveExtrema7extrema(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvNtNtCsdaEETE4DqmE_13typst_library4text4lang13localized_str(i32 noundef, i24, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXs3_NtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unixNtB5_6StderrNtNtNtCs3oUPovFnLWP_4core2io5write5Write5write(ptr noalias nofree noundef nonnull, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef range(i32 -1, 1114112) i32 @_RNvXs0_NtCseVcqU0FIJnD_5codex7stylingNtB5_7ToStyleNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #44

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #44

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #51

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #52

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #44

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #44

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #44

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #44

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #44

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #44

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #44

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #44

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.umax.v8i16(<8 x i16>, <8 x i16>) #44

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.umax.v8i16(<8 x i16>) #44

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.umax.v4i16(<4 x i16>, <4 x i16>) #44

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.umax.v4i16(<4 x i16>) #44

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #44

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.maximumnum.v2f64(<2 x double>, <2 x double>) #44

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fmax.v2f64(<2 x double>) #44

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minimumnum.v2f32(<2 x float>, <2 x float>) #44

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maximumnum.v2f32(<2 x float>, <2 x float>) #44

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i16> @llvm.bswap.v2i16(<2 x i16>) #44

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fabs.v4f64(<4 x double>) #44

attributes #0 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { cold minsize nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #28 = { noinline nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #29 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #30 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #31 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #32 = { cold inlinehint noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #33 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #34 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #35 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #36 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #37 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #38 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #39 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #40 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #41 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #42 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #43 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #44 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #45 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #46 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #47 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #48 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #49 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsjHpjAFo4bi0_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #50 = { noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #51 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #52 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #53 = { noinline noreturn }
attributes #54 = { cold }
attributes #55 = { cold noreturn nounwind }
attributes #56 = { nounwind }
attributes #57 = { noreturn }
attributes #58 = { noinline }
attributes #59 = { inlinehint }
attributes #60 = { "function-inline-cost-multiplier"="2" }

!llvm.module.flags = !{!37, !38, !39}
!llvm.ident = !{!40}

!0 = distinct !{null}
!1 = distinct !{!1, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs7tN9tvpkfrg_12typst_layout"}
!2 = distinct !{!2, !1, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs7tN9tvpkfrg_12typst_layout: argument 0"}
!3 = distinct !{null}
!4 = distinct !{!4, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs7tN9tvpkfrg_12typst_layout"}
!5 = distinct !{!5, !4, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs7tN9tvpkfrg_12typst_layout: argument 0"}
!6 = distinct !{!6, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs7tN9tvpkfrg_12typst_layout"}
!7 = distinct !{!7, !6, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs7tN9tvpkfrg_12typst_layout: argument 0"}
!8 = distinct !{null, ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEEECs7tN9tvpkfrg_12typst_layout}
!9 = distinct !{null, null}
!10 = distinct !{null}
!11 = distinct !{null, null}
!12 = distinct !{null}
!13 = distinct !{null, null, null}
!14 = distinct !{null}
!15 = distinct !{null}
!16 = distinct !{null}
!17 = distinct !{!17, !"_RNvXs8_NtNtCs3oUPovFnLWP_4core5clone5implsjNtB7_5Clone5clone"}
!18 = distinct !{!18, !17, !"_RNvXs8_NtNtCs3oUPovFnLWP_4core5clone5implsjNtB7_5Clone5clone: argument 0"}
!19 = distinct !{!19, !"_RNvXs8_NtNtCs3oUPovFnLWP_4core5clone5implsjNtB7_5Clone5clone"}
!20 = distinct !{!20, !19, !"_RNvXs8_NtNtCs3oUPovFnLWP_4core5clone5implsjNtB7_5Clone5clone: argument 0"}
!21 = distinct !{null}
!22 = distinct !{null}
!23 = distinct !{null}
!24 = distinct !{null}
!25 = distinct !{null}
!26 = distinct !{!26, !"_RNvXsx_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecATNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font3tag3TagNtNtBN_10variations9AxisValueEj2_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout"}
!27 = distinct !{!27, !26, !"_RNvXsx_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecATNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font3tag3TagNtNtBN_10variations9AxisValueEj2_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout: argument 0"}
!28 = distinct !{null}
!29 = distinct !{null}
!30 = distinct !{null}
!31 = distinct !{null}
!32 = distinct !{null}
!33 = distinct !{null}
!34 = distinct !{null}
!35 = distinct !{null}
!36 = distinct !{null}
!37 = !{i32 8, !"PIC Level", i32 2}
!38 = !{i32 2, !"RtLibUseGOT", i32 1}
!39 = !{i32 7, !"uwtable", i32 2}
!40 = !{!"rustc version 1.100.0-nightly (787af2b8c 2026-08-25)"}
!41 = !{}
!42 = !{i128 0, i128 2}
!43 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!44 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!45 = !{i64 0, i64 -9223372036854775808}
!46 = !{i64 8}
!47 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!48 = !{i8 0, i8 3}
!49 = !{i64 0, i64 2}
!50 = !{!"branch_weights", i32 1, i32 4001}
!51 = !{i64 0, i64 6}
!52 = !{i64 0, i64 3}
!53 = !{i64 1, i64 0}
!54 = !{i8 0, i8 2}
!55 = !{!"branch_weights", i32 1, i32 1999}
!56 = !{!"branch_weights", i32 0, i32 1}
!57 = !{ptr @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE4pushCs7tN9tvpkfrg_12typst_layout}
!58 = !{i64 -1, i64 3}
!59 = !{i64 16}
!60 = !{i64 -2, i64 -9223372036854775808}
!61 = !{!"branch_weights", i32 2002, i32 2000}
!62 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!63 = !{i16 0, i16 10}
!64 = !{!"branch_weights", i32 1074011, i32 2146409637, i32 0}
!65 = !{!"address", !"read_provenance"}
!66 = !{!"llvm.loop.isvectorized", i32 1}
!67 = !{!"llvm.loop.unroll.runtime.disable"}
!68 = !{i64 -2, i64 3}
!69 = !{i32 -2, i32 4}
!70 = !{i64 -1, i64 -9223372036854775808}
!71 = !{i32 -1, i32 4}
!72 = !{!"branch_weights", i32 1, i32 1, i32 2000, i32 1}
!73 = !{!"llvm.loop.peeled.count", i32 1}
!74 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000}
!75 = !{!"branch_weights", i32 1, i32 1, i32 2000, i32 2000}
!76 = !{i16 0, i16 8}
!77 = !{i64 0, i64 27}
!78 = !{i16 0, i16 9}
!79 = !{i16 0, i16 12}
!80 = !{!2}
!81 = !{i64 1, i64 536870913}
!82 = !{i64 -2, i64 5}
!83 = !{i64 -1, i64 5}
!84 = !{i16 -1, i16 8}
!85 = !{i16 -1, i16 9}
!86 = !{i16 -1, i16 10}
!87 = !{i16 -1, i16 12}
end_hunk_1
