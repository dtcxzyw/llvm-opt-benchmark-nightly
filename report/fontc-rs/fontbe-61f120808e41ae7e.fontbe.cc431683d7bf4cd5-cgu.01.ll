Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontbe-61f120808e41ae7e.fontbe.cc431683d7bf4cd5-cgu.01?download=true
inline.NumInlined: 5575
inline.NumDeleted: 3074
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ReEEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtNtB6_11collections5btree3map4IterBV_NtNtCscScJTt9VrQp_6fea_rs6common10GlyphIdentENCNvMNtNtB3W_7compile11compile_ctxINtB4G_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB5y_16FeaVariationInfoE24resolve_glyphs_predicate0EE9from_iterB5A_:bb.a
  store ptr %i.h, ptr %i.e, align 8, !noalias !7770
  %i.i = tail call { ptr, ptr } @_RNvXsk_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCscScJTt9VrQp_6fea_rs6common10GlyphIdentENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1), !noalias !7771 ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.i, 0        ; 2 uses
  %.not24.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not24.i.i.i.i, label %.loopexit28.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i
  %i.l = phi ptr [ %i.j, %.lr.ph.i.i.i.i ], [ %i.q, %bb.c ]
  %i.m = phi { ptr, ptr } [ %i.i, %.lr.ph.i.i.i.i ], [ %i.p, %bb.c ]
  %i.n = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7772
  call void @_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtBT_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB21_16FeaVariationInfoE24resolve_glyphs_predicate0INtB7_5FnMutTTRNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16RNtNtBX_6common10GlyphIdentEEE8call_mutB23_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n), !noalias !7773
  %i.o = load ptr, ptr %i.k, align 8, !noalias !7772, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7772
  %i.p = call { ptr, ptr } @_RNvXsk_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCscScJTt9VrQp_6fea_rs6common10GlyphIdentENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1), !noalias !7771 ; 2 uses
  %i.q = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %.loopexit28.i, label %bb.b

bb.d:                                             ; preds = %bb.b
  %.sroa.011.0.copyload.i.i.i.i = load i64, ptr %i.d, align 8, !noalias !7774
  %.sroa.712.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.712.0.copyload.i.i.i.i = load i64, ptr %.sroa.712.0..sroa_idx.i.i.i.i, align 8, !noalias !7774
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7772
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7769
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7768
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !noalias !7767
  %i.r = load i64, ptr %i.c, align 8, !range !11, !noalias !7768, !noundef !4
  %i.s = trunc nuw i64 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !32, !noalias !7768, !noundef !4 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.s, label %bb.e, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit.i, !prof !9

bb.e:                                             ; preds = %bb.d
  %i.w = load i64, ptr %i.v, align 8, !noalias !7768
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.u, i64 %i.w) #31, !noalias !7767
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit.i: ; preds = %bb.d
  %i.x = load ptr, ptr %i.v, align 8, !noalias !7768, !nonnull !4, !noundef !4 ; 4 uses
  %i.y = icmp ugt i64 %i.u, 3
  call void @llvm.assume(i1 %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7768
  store i64 %.sroa.011.0.copyload.i.i.i.i, ptr %i.x, align 8, !noalias !7767
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.o, ptr %.sroa.417.0..sroa_idx.i, align 8, !noalias !7767
  %.sroa.518.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %.sroa.712.0.copyload.i.i.i.i, ptr %.sroa.518.0..sroa_idx.i, align 8, !noalias !7767
  store i64 %i.u, ptr %i.g, align 8, !noalias !7768
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.x, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !7768
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !7768
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !7768
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.f, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false), !noalias !7767
  call void @llvm.experimental.noalias.scope.decl(metadata !7775)
  call void @llvm.experimental.noalias.scope.decl(metadata !7776)
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7777
  store ptr %i.z, ptr %i.b, align 8, !noalias !7778
  %i.aa = invoke { ptr, ptr } @_RNvXsk_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCscScJTt9VrQp_6fea_rs6common10GlyphIdentENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.f)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !7767 ; 2 uses

.noexc.i:                                         ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit.i
  %i.ab = extractvalue { ptr, ptr } %i.aa, 0      ; 2 uses
  %.not24.i.i.i15.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not24.i.i.i15.i.i.i, label %.loopexit23.i, label %.lr.ph.i.i.i.lr.ph.i.i.i

.lr.ph.i.i.i.lr.ph.i.i.i:                         ; preds = %.noexc.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.712.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.backedge, %.lr.ph.i.i.i.lr.ph.i.i.i
  %i.ad = phi ptr [ %i.ab, %.lr.ph.i.i.i.lr.ph.i.i.i ], [ %.be, %.lr.ph.i.i.i.i.i.i.backedge ]
  %i.ae = phi { ptr, ptr } [ %i.aa, %.lr.ph.i.i.i.lr.ph.i.i.i ], [ %.be24, %.lr.ph.i.i.i.i.i.i.backedge ]
  %i.af = extractvalue { ptr, ptr } %i.ae, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.af) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7779
  invoke void @_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtBT_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB21_16FeaVariationInfoE24resolve_glyphs_predicate0INtB7_5FnMutTTRNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16RNtNtBX_6common10GlyphIdentEEE8call_mutB23_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.af)
          to label %.noexc5.i unwind label %.loopexit.i, !noalias !7767

.noexc5.i:                                        ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ag = load ptr, ptr %i.ac, align 8, !noalias !7779, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.noexc5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7779
  %i.ah = invoke { ptr, ptr } @_RNvXsk_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCscScJTt9VrQp_6fea_rs6common10GlyphIdentENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.f)
          to label %.noexc6.i unwind label %.loopexit.i, !noalias !7767 ; 2 uses

.noexc6.i:                                        ; preds = %bb.f
  %i.ai = extractvalue { ptr, ptr } %i.ah, 0      ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i.i, label %.loopexit23.i, label %.lr.ph.i.i.i.i.i.i.backedge

.lr.ph.i.i.i.i.i.i.backedge:                      ; preds = %.noexc6.i, %.noexc8.i
  %.be = phi ptr [ %i.ai, %.noexc6.i ], [ %i.ar, %.noexc8.i ]
  %.be24 = phi { ptr, ptr } [ %i.ah, %.noexc6.i ], [ %i.aq, %.noexc8.i ]
  br label %.lr.ph.i.i.i.i.i.i

bb.g:                                             ; preds = %.noexc5.i
  %.sroa.011.0.copyload.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !7780
  %.sroa.712.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.712.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !7780
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7779
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7777
  %i.aj = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !7781, !noalias !7782, !noundef !4 ; 5 uses
  %i.ak = icmp ult i64 %i.aj, 384307168202282326
  call void @llvm.assume(i1 %i.ak)
  %i.al = load i64, ptr %i.g, align 8, !range !10, !alias.scope !7781, !noalias !7782, !noundef !4
  %i.am = icmp eq i64 %i.aj, %i.al
  br i1 %i.am, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ReEE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i.i, label %.noexc7.i

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ReEE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i.i: ; preds = %bb.g
  invoke void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.aj, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 24)
          to label %.noexc7.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !7767

.noexc7.i:                                        ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ReEE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i.i, %bb.g
  %i.an = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !7781, !noalias !7782, !nonnull !4, !noundef !4
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.an, i64 %i.aj ; 3 uses
  store i64 %.sroa.011.0.copyload.i.i.i.i.i.i, ptr %i.ao, align 8, !noalias !7767
  %.sroa.47.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.ag, ptr %.sroa.47.0..sroa_idx.i.i.i, align 8, !noalias !7767
  %.sroa.58.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i64 %.sroa.712.0.copyload.i.i.i.i.i.i, ptr %.sroa.58.0..sroa_idx.i.i.i, align 8, !noalias !7767
  %i.ap = add nuw nsw i64 %i.aj, 1
  store i64 %i.ap, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !7781, !noalias !7782
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7777
  store ptr %i.z, ptr %i.b, align 8, !noalias !7778
  %i.aq = invoke { ptr, ptr } @_RNvXsk_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCscScJTt9VrQp_6fea_rs6common10GlyphIdentENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.f)
          to label %.noexc8.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !7767 ; 2 uses

.noexc8.i:                                        ; preds = %.noexc7.i
  %i.ar = extractvalue { ptr, ptr } %i.aq, 0      ; 2 uses
  %.not24.i.i.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not24.i.i.i.i.i.i, label %.loopexit23.i, label %.lr.ph.i.i.i.i.i.i.backedge

.loopexit28.i:                                    ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7769
  store i64 0, ptr %0, align 8, !alias.scope !7767, !noalias !7783
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.as, align 8, !alias.scope !7767, !noalias !7783
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.at, align 8, !alias.scope !7767, !noalias !7783
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ReEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtNtB6_11collections5btree3map4IterB12_NtNtCscScJTt9VrQp_6fea_rs6common10GlyphIdentENCNvMNtNtB4b_7compile11compile_ctxINtB4V_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB5N_16FeaVariationInfoE24resolve_glyphs_predicate0EE9from_iterB5P_.exit

.loopexit.i:                                      ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %.noexc7.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ReEE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i.i
  %lpad.loopexit24.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit.i
  %lpad.loopexit.split-lp25.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit24.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp25.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ReEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ReEEECshxhuDJfZv4T_6fontbe.exit.i unwind label %bb.h, !noalias !7767

.loopexit23.i:                                    ; preds = %.noexc8.i, %.noexc6.i, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7777
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7768
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !7783
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ReEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtNtB6_11collections5btree3map4IterB12_NtNtCscScJTt9VrQp_6fea_rs6common10GlyphIdentENCNvMNtNtB4b_7compile11compile_ctxINtB4V_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB5N_16FeaVariationInfoE24resolve_glyphs_predicate0EE9from_iterB5P_.exit

bb.h:                                             ; preds = %.loopexit.split-lp.i
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !7767
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ReEEECshxhuDJfZv4T_6fontbe.exit.i: ; preds = %.loopexit.split-lp.i
  resume { ptr, i32 } %lpad.phi.i

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ReEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtNtB6_11collections5btree3map4IterB12_NtNtCscScJTt9VrQp_6fea_rs6common10GlyphIdentENCNvMNtNtB4b_7compile11compile_ctxINtB4V_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB5N_16FeaVariationInfoE24resolve_glyphs_predicate0EE9from_iterB5P_.exit: ; preds = %.loopexit28.i, %.loopexit23.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !7768
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter6FilterINtNtB2d_10filter_map9FilterMapINtNtNtNtB6_11collections5btree3map4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCNvXsa_NtCshxhuDJfZv4T_6fontbe8featuresNtB61_22FeatureCompilationWorkINtNtB4f_13orchestration4WorkNtNtB63_13orchestration7ContextNtB7w_9AnyWorkIdNtNtB63_5error5ErrorE4exec0ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB8Q_19ClassDefBuilderImplINtNtNtB2f_6traits7collect12FromIteratorBU_E9from_iterB32_E0EE9from_iterB63_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 2                 ; 5 uses
  %i.b = alloca [16 x i8], align 16               ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [4 x i8], align 2                 ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [80 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7825)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !7826
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !7827
  store ptr %i.i, ptr %i.e, align 8, !noalias !7828
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.h, ptr %i.j, align 8, !noalias !7828
  %2 = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.k = tail call { ptr, ptr } @_RNvXsk_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1), !noalias !7825 ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0        ; 2 uses
  %.not.i.i.i.i27.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i27.i, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtB7_10filter_map9FilterMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCNvXsa_NtCshxhuDJfZv4T_6fontbe8featuresNtB4h_22FeatureCompilationWorkINtNtB2v_13orchestration4WorkNtNtB4j_13orchestration7ContextNtB5M_9AnyWorkIdNtNtB4j_5error5ErrorE4exec0ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB76_19ClassDefBuilderImplINtNtNtB9_6traits7collect12FromIteratorTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEE9from_iterB12_E0ENtNtB8w_8iterator8Iterator4nextB4j_.exit.thread.i, label %.lr.ph.i

_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtB7_10filter_map9FilterMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCNvXsa_NtCshxhuDJfZv4T_6fontbe8featuresNtB4h_22FeatureCompilationWorkINtNtB2v_13orchestration4WorkNtNtB4j_13orchestration7ContextNtB5M_9AnyWorkIdNtNtB4j_5error5ErrorE4exec0ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB76_19ClassDefBuilderImplINtNtNtB9_6traits7collect12FromIteratorTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEE9from_iterB12_E0ENtNtB8w_8iterator8Iterator4nextB4j_.exit.thread.i: ; preds = %.critedge.backedge.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7827
  store i64 0, ptr %0, align 8, !alias.scope !7825, !noalias !7829
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.m, align 8, !alias.scope !7825, !noalias !7829
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.n, align 8, !alias.scope !7825, !noalias !7829
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter6FilterINtNtB2r_10filter_map9FilterMapINtNtNtNtB6_11collections5btree3map4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCNvXsa_NtCshxhuDJfZv4T_6fontbe8featuresNtB6f_22FeatureCompilationWorkINtNtB4t_13orchestration4WorkNtNtB6h_13orchestration7ContextNtB7K_9AnyWorkIdNtNtB6h_5error5ErrorE4exec0ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB94_19ClassDefBuilderImplINtNtNtB2t_6traits7collect12FromIteratorB11_E9from_iterB3g_E0EE9from_iterB6h_.exit

.lr.ph.i:                                         ; preds = %bb.a, %.critedge.backedge.i
  %i.o = phi ptr [ %i.aa, %.critedge.backedge.i ], [ %i.l, %bb.a ]
  %i.p = phi { ptr, ptr } [ %i.z, %.critedge.backedge.i ], [ %i.k, %bb.a ]
  %i.q = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  %.val.i.i.i.i.i = load i16, ptr %i.q, align 2, !noalias !7825 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7830)
  %i.r = load ptr, ptr %i.e, align 8, !alias.scope !7830, !noalias !7831, !nonnull !4, !align !6, !noundef !4
  %.val.i.i.i.i.i.i = load ptr, ptr %i.r, align 8, !noalias !7832, !nonnull !4, !align !6, !noundef !4
  %i.s = load ptr, ptr %.val.i.i.i.i.i.i, align 8, !noalias !7833, !nonnull !4, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = call { i64, i64 } @_RINvMs3_NtCsbeZck1VjBmm_8indexmap3mapINtB6_8IndexMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameuE12get_index_ofBO_ECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o), !noalias !7834 ; 2 uses
  %i.v = extractvalue { i64, i64 } %i.u, 0
  %i.w = trunc i64 %i.v to i1
  br i1 %i.w, label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map19filter_map_try_foldTRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameRNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefETNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEuINtNtNtBa_3ops12control_flow11ControlFlowB2Z_ENCNvXsa_NtCshxhuDJfZv4T_6fontbe8featuresNtB4I_22FeatureCompilationWorkINtNtB1k_13orchestration4WorkNtNtB4K_13orchestration7ContextNtB6d_9AnyWorkIdNtNtB4K_5error5ErrorE4exec0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2Z_QNCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB8r_19ClassDefBuilderImplINtNtB7y_7collect12FromIteratorB2Z_E9from_iterINtB4_9FilterMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterB1g_B21_EB4A_EE0E0E0B4K_.exit.i.i.i.i.i, label %.critedge.backedge.i

_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map19filter_map_try_foldTRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameRNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefETNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEuINtNtNtBa_3ops12control_flow11ControlFlowB2Z_ENCNvXsa_NtCshxhuDJfZv4T_6fontbe8featuresNtB4I_22FeatureCompilationWorkINtNtB1k_13orchestration4WorkNtNtB4K_13orchestration7ContextNtB6d_9AnyWorkIdNtNtB4K_5error5ErrorE4exec0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2Z_QNCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB8r_19ClassDefBuilderImplINtNtB7y_7collect12FromIteratorB2Z_E9from_iterINtB4_9FilterMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterB1g_B21_EB4A_EE0E0E0B4K_.exit.i.i.i.i.i: ; preds = %.lr.ph.i
  %i.x = extractvalue { i64, i64 } %i.u, 1
  %3 = trunc i64 %i.x to i16                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7835
  store i16 %3, ptr %i.d, align 2, !noalias !7836
  store i16 %.val.i.i.i.i.i, ptr %2, align 2, !noalias !7836
  %i.y = call noundef zeroext i1 @_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtBX_19ClassDefBuilderImplINtNtNtNtBb_4iter6traits7collect12FromIteratorTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEE9from_iterINtNtNtB2o_8adapters10filter_map9FilterMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCNvXsa_NtCshxhuDJfZv4T_6fontbe8featuresNtB7t_22FeatureCompilationWorkINtNtB5H_13orchestration4WorkNtNtB7v_13orchestration7ContextNtB8Y_9AnyWorkIdNtNtB7v_5error5ErrorE4exec0EE0INtB7_5FnMutTRB31_EE8call_mutB7v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(4) %i.d), !noalias !7825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7835
  br i1 %i.y, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtB7_10filter_map9FilterMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCNvXsa_NtCshxhuDJfZv4T_6fontbe8featuresNtB4h_22FeatureCompilationWorkINtNtB2v_13orchestration4WorkNtNtB4j_13orchestration7ContextNtB5M_9AnyWorkIdNtNtB4j_5error5ErrorE4exec0ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB76_19ClassDefBuilderImplINtNtNtB9_6traits7collect12FromIteratorTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEE9from_iterB12_E0ENtNtB8w_8iterator8Iterator4nextB4j_.exit.i, label %.critedge.backedge.i

.critedge.backedge.i:                             ; preds = %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map19filter_map_try_foldTRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameRNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefETNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEuINtNtNtBa_3ops12control_flow11ControlFlowB2Z_ENCNvXsa_NtCshxhuDJfZv4T_6fontbe8featuresNtB4I_22FeatureCompilationWorkINtNtB1k_13orchestration4WorkNtNtB4K_13orchestration7ContextNtB6d_9AnyWorkIdNtNtB4K_5error5ErrorE4exec0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2Z_QNCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB8r_19ClassDefBuilderImplINtNtB7y_7collect12FromIteratorB2Z_E9from_iterINtB4_9FilterMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterB1g_B21_EB4A_EE0E0E0B4K_.exit.i.i.i.i.i, %.lr.ph.i
  %i.z = call { ptr, ptr } @_RNvXsk_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1), !noalias !7825 ; 2 uses
  %i.aa = extractvalue { ptr, ptr } %i.z, 0       ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtB7_10filter_map9FilterMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCNvXsa_NtCshxhuDJfZv4T_6fontbe8featuresNtB4h_22FeatureCompilationWorkINtNtB2v_13orchestration4WorkNtNtB4j_13orchestration7ContextNtB5M_9AnyWorkIdNtNtB4j_5error5ErrorE4exec0ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB76_19ClassDefBuilderImplINtNtNtB9_6traits7collect12FromIteratorTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEE9from_iterB12_E0ENtNtB8w_8iterator8Iterator4nextB4j_.exit.thread.i, label %.lr.ph.i

_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtB7_10filter_map9FilterMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCNvXsa_NtCshxhuDJfZv4T_6fontbe8featuresNtB4h_22FeatureCompilationWorkINtNtB2v_13orchestration4WorkNtNtB4j_13orchestration7ContextNtB5M_9AnyWorkIdNtNtB4j_5error5ErrorE4exec0ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB76_19ClassDefBuilderImplINtNtNtB9_6traits7collect12FromIteratorTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEE9from_iterB12_E0ENtNtB8w_8iterator8Iterator4nextB4j_.exit.i: ; preds = %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map19filter_map_try_foldTRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameRNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefETNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEuINtNtNtBa_3ops12control_flow11ControlFlowB2Z_ENCNvXsa_NtCshxhuDJfZv4T_6fontbe8featuresNtB4I_22FeatureCompilationWorkINtNtB1k_13orchestration4WorkNtNtB4K_13orchestration7ContextNtB6d_9AnyWorkIdNtNtB4K_5error5ErrorE4exec0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2Z_QNCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB8r_19ClassDefBuilderImplINtNtB7y_7collect12FromIteratorB2Z_E9from_iterINtB4_9FilterMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterB1g_B21_EB4A_EE0E0E0B4K_.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7827
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7826
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 4, i1 noundef zeroext false, i64 noundef 2, i64 noundef 4), !noalias !7825
  %i.ab = load i64, ptr %i.c, align 8, !range !11, !noalias !7826, !noundef !4
  %i.ac = trunc nuw i64 %i.ab to i1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !32, !noalias !7826, !noundef !4 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.ac, label %bb.b, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit.i, !prof !9

bb.b:                                             ; preds = %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtB7_10filter_map9FilterMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCNvXsa_NtCshxhuDJfZv4T_6fontbe8featuresNtB4h_22FeatureCompilationWorkINtNtB2v_13orchestration4WorkNtNtB4j_13orchestration7ContextNtB5M_9AnyWorkIdNtNtB4j_5error5ErrorE4exec0ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB76_19ClassDefBuilderImplINtNtNtB9_6traits7collect12FromIteratorTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEE9from_iterB12_E0ENtNtB8w_8iterator8Iterator4nextB4j_.exit.i
  %i.ag = load i64, ptr %i.af, align 8, !noalias !7826
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.ae, i64 %i.ag) #31, !noalias !7825
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit.i: ; preds = %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtB7_10filter_map9FilterMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCNvXsa_NtCshxhuDJfZv4T_6fontbe8featuresNtB4h_22FeatureCompilationWorkINtNtB2v_13orchestration4WorkNtNtB4j_13orchestration7ContextNtB5M_9AnyWorkIdNtNtB4j_5error5ErrorE4exec0ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB76_19ClassDefBuilderImplINtNtNtB9_6traits7collect12FromIteratorTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEE9from_iterB12_E0ENtNtB8w_8iterator8Iterator4nextB4j_.exit.i
  %i.ah = load ptr, ptr %i.af, align 8, !noalias !7826, !nonnull !4, !noundef !4 ; 3 uses
  %i.ai = icmp ugt i64 %i.ae, 3
  call void @llvm.assume(i1 %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7826
  store i16 %3, ptr %i.ah, align 2, !noalias !7825
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  store i16 %.val.i.i.i.i.i, ptr %i.aj, align 2, !noalias !7825
  store i64 %i.ae, ptr %i.g, align 8, !noalias !7826
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.ah, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !7826
  %.sroa.62.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.62.0..sroa_idx.i, align 8, !noalias !7826
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !7826
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.f, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false), !noalias !7825
  call void @llvm.experimental.noalias.scope.decl(metadata !7837)
  call void @llvm.experimental.noalias.scope.decl(metadata !7838)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7839
  store ptr %i.al, ptr %i.b, align 16, !noalias !7840
  store ptr %i.ak, ptr %i.am, align 8, !noalias !7840
  %i.an = invoke { ptr, ptr } @_RNvXsk_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.f)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !7825 ; 2 uses

.noexc.i:                                         ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit.i
  %i.ao = extractvalue { ptr, ptr } %i.an, 0      ; 2 uses
  %.not.i.i.i.i1213.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i1213.i.i.i, label %.loopexit19.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.noexc.i
  %i.ap = insertelement <2 x ptr> poison, ptr %i.al, i64 0
  %i.aq = insertelement <2 x ptr> %i.ap, ptr %i.ak, i64 1
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.backedge, %.lr.ph.i.i.i.preheader
  %i.ar = phi ptr [ %i.ao, %.lr.ph.i.i.i.preheader ], [ %.be, %.lr.ph.i.i.i.backedge ]
  %i.as = phi { ptr, ptr } [ %i.an, %.lr.ph.i.i.i.preheader ], [ %.be26, %.lr.ph.i.i.i.backedge ]
  %i.at = extractvalue { ptr, ptr } %i.as, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.at) ]
  %.val.i.i.i.i.i.i.i = load i16, ptr %i.at, align 2, !noalias !7825 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7841)
  %i.au = load ptr, ptr %i.b, align 16, !alias.scope !7841, !noalias !7842, !nonnull !4, !align !6, !noundef !4
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.au, align 8, !noalias !7843, !nonnull !4, !align !6, !noundef !4
  %i.av = load ptr, ptr %.val.i.i.i.i.i.i.i.i, align 8, !noalias !7844, !nonnull !4, !noundef !4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = invoke { i64, i64 } @_RINvMs3_NtCsbeZck1VjBmm_8indexmap3mapINtB6_8IndexMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameuE12get_index_ofBO_ECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.aw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ar)
          to label %.noexc9.i unwind label %.loopexit.i, !noalias !7825 ; 2 uses

.noexc9.i:                                        ; preds = %.lr.ph.i.i.i
  %i.ay = extractvalue { i64, i64 } %i.ax, 0
  %i.az = trunc i64 %i.ay to i1
  br i1 %i.az, label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map19filter_map_try_foldTRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameRNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefETNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEuINtNtNtBa_3ops12control_flow11ControlFlowB2Z_ENCNvXsa_NtCshxhuDJfZv4T_6fontbe8featuresNtB4I_22FeatureCompilationWorkINtNtB1k_13orchestration4WorkNtNtB4K_13orchestration7ContextNtB6d_9AnyWorkIdNtNtB4K_5error5ErrorE4exec0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2Z_QNCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB8r_19ClassDefBuilderImplINtNtB7y_7collect12FromIteratorB2Z_E9from_iterINtB4_9FilterMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterB1g_B21_EB4A_EE0E0E0B4K_.exit.i.i.i.i.i.i.i, label %.critedge.backedge.i.i.i

_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map19filter_map_try_foldTRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameRNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefETNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEuINtNtNtBa_3ops12control_flow11ControlFlowB2Z_ENCNvXsa_NtCshxhuDJfZv4T_6fontbe8featuresNtB4I_22FeatureCompilationWorkINtNtB1k_13orchestration4WorkNtNtB4K_13orchestration7ContextNtB6d_9AnyWorkIdNtNtB4K_5error5ErrorE4exec0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2Z_QNCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB8r_19ClassDefBuilderImplINtNtB7y_7collect12FromIteratorB2Z_E9from_iterINtB4_9FilterMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterB1g_B21_EB4A_EE0E0E0B4K_.exit.i.i.i.i.i.i.i: ; preds = %.noexc9.i
  %i.ba = extractvalue { i64, i64 } %i.ax, 1
  %5 = trunc i64 %i.ba to i16                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7845
  store i16 %5, ptr %i.a, align 2, !noalias !7846
  store i16 %.val.i.i.i.i.i.i.i, ptr %4, align 2, !noalias !7846
  %i.bb = invoke noundef zeroext i1 @_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtBX_19ClassDefBuilderImplINtNtNtNtBb_4iter6traits7collect12FromIteratorTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEE9from_iterINtNtNtB2o_8adapters10filter_map9FilterMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCNvXsa_NtCshxhuDJfZv4T_6fontbe8featuresNtB7t_22FeatureCompilationWorkINtNtB5H_13orchestration4WorkNtNtB7v_13orchestration7ContextNtB8Y_9AnyWorkIdNtNtB7v_5error5ErrorE4exec0EE0INtB7_5FnMutTRB31_EE8call_mutB7v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.am, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(4) %i.a)
          to label %.noexc10.i unwind label %.loopexit.i, !noalias !7825

.noexc10.i:                                       ; preds = %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map19filter_map_try_foldTRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameRNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefETNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEuINtNtNtBa_3ops12control_flow11ControlFlowB2Z_ENCNvXsa_NtCshxhuDJfZv4T_6fontbe8featuresNtB4I_22FeatureCompilationWorkINtNtB1k_13orchestration4WorkNtNtB4K_13orchestration7ContextNtB6d_9AnyWorkIdNtNtB4K_5error5ErrorE4exec0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2Z_QNCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB8r_19ClassDefBuilderImplINtNtB7y_7collect12FromIteratorB2Z_E9from_iterINtB4_9FilterMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterB1g_B21_EB4A_EE0E0E0B4K_.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7845
  br i1 %i.bb, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtB7_10filter_map9FilterMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCNvXsa_NtCshxhuDJfZv4T_6fontbe8featuresNtB4h_22FeatureCompilationWorkINtNtB2v_13orchestration4WorkNtNtB4j_13orchestration7ContextNtB5M_9AnyWorkIdNtNtB4j_5error5ErrorE4exec0ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB76_19ClassDefBuilderImplINtNtNtB9_6traits7collect12FromIteratorTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEE9from_iterB12_E0ENtNtB8w_8iterator8Iterator4nextB4j_.exit.i.i.i, label %.critedge.backedge.i.i.i

.critedge.backedge.i.i.i:                         ; preds = %.noexc10.i, %.noexc9.i
  %i.bc = invoke { ptr, ptr } @_RNvXsk_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.f)
          to label %.noexc11.i unwind label %.loopexit.i, !noalias !7825 ; 2 uses

.noexc11.i:                                       ; preds = %.critedge.backedge.i.i.i
  %i.bd = extractvalue { ptr, ptr } %i.bc, 0      ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit19.i, label %.lr.ph.i.i.i.backedge

.lr.ph.i.i.i.backedge:                            ; preds = %.noexc11.i, %.noexc13.i
  %.be = phi ptr [ %i.bd, %.noexc11.i ], [ %i.bn, %.noexc13.i ]
  %.be26 = phi { ptr, ptr } [ %i.bc, %.noexc11.i ], [ %i.bm, %.noexc13.i ]
  br label %.lr.ph.i.i.i

_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtB7_10filter_map9FilterMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCNvXsa_NtCshxhuDJfZv4T_6fontbe8featuresNtB4h_22FeatureCompilationWorkINtNtB2v_13orchestration4WorkNtNtB4j_13orchestration7ContextNtB5M_9AnyWorkIdNtNtB4j_5error5ErrorE4exec0ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB76_19ClassDefBuilderImplINtNtNtB9_6traits7collect12FromIteratorTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEE9from_iterB12_E0ENtNtB8w_8iterator8Iterator4nextB4j_.exit.i.i.i: ; preds = %.noexc10.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7839
  %i.be = load i64, ptr %.sroa.62.0..sroa_idx.i, align 8, !alias.scope !7847, !noalias !7848, !noundef !4 ; 5 uses
  %i.bf = icmp ult i64 %i.be, 2305843009213693952
  call void @llvm.assume(i1 %i.bf)
  %i.bg = load i64, ptr %i.g, align 8, !range !10, !alias.scope !7847, !noalias !7848, !noundef !4
  %i.bh = icmp eq i64 %i.be, %i.bg
  br i1 %i.bh, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i.i, label %.noexc12.i

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i.i: ; preds = %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtB7_10filter_map9FilterMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCNvXsa_NtCshxhuDJfZv4T_6fontbe8featuresNtB4h_22FeatureCompilationWorkINtNtB2v_13orchestration4WorkNtNtB4j_13orchestration7ContextNtB5M_9AnyWorkIdNtNtB4j_5error5ErrorE4exec0ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB76_19ClassDefBuilderImplINtNtNtB9_6traits7collect12FromIteratorTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEE9from_iterB12_E0ENtNtB8w_8iterator8Iterator4nextB4j_.exit.i.i.i
  invoke void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.be, i64 noundef range(i64 1, 0) 1, i64 noundef 2, i64 noundef 4)
          to label %.noexc12.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !7825

.noexc12.i:                                       ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i.i, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtB7_10filter_map9FilterMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCNvXsa_NtCshxhuDJfZv4T_6fontbe8featuresNtB4h_22FeatureCompilationWorkINtNtB2v_13orchestration4WorkNtNtB4j_13orchestration7ContextNtB5M_9AnyWorkIdNtNtB4j_5error5ErrorE4exec0ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB76_19ClassDefBuilderImplINtNtNtB9_6traits7collect12FromIteratorTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEE9from_iterB12_E0ENtNtB8w_8iterator8Iterator4nextB4j_.exit.i.i.i
  %i.bi = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !7847, !noalias !7848, !nonnull !4, !noundef !4
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.be ; 2 uses
  store i16 %5, ptr %i.bj, align 2, !noalias !7825
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  store i16 %.val.i.i.i.i.i.i.i, ptr %i.bk, align 2, !noalias !7825
  %i.bl = add nuw nsw i64 %i.be, 1
  store i64 %i.bl, ptr %.sroa.62.0..sroa_idx.i, align 8, !alias.scope !7847, !noalias !7848
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7839
  store <2 x ptr> %i.aq, ptr %i.b, align 16, !noalias !7840
  %i.bm = invoke { ptr, ptr } @_RNvXsk_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.f)
          to label %.noexc13.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !7825 ; 2 uses

.noexc13.i:                                       ; preds = %.noexc12.i
  %i.bn = extractvalue { ptr, ptr } %i.bm, 0      ; 2 uses
  %.not.i.i.i.i12.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i12.i.i.i, label %.loopexit19.i, label %.lr.ph.i.i.i.backedge

.loopexit.i:                                      ; preds = %.critedge.backedge.i.i.i, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map19filter_map_try_foldTRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameRNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefETNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEuINtNtNtBa_3ops12control_flow11ControlFlowB2Z_ENCNvXsa_NtCshxhuDJfZv4T_6fontbe8featuresNtB4I_22FeatureCompilationWorkINtNtB1k_13orchestration4WorkNtNtB4K_13orchestration7ContextNtB6d_9AnyWorkIdNtNtB4K_5error5ErrorE4exec0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2Z_QNCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB8r_19ClassDefBuilderImplINtNtB7y_7collect12FromIteratorB2Z_E9from_iterINtB4_9FilterMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterB1g_B21_EB4A_EE0E0E0B4K_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %.noexc12.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i.i
  %lpad.loopexit20.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit.i
  %lpad.loopexit.split-lp21.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit20.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp21.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEEECshxhuDJfZv4T_6fontbe.exit.i unwind label %bb.c, !noalias !7825

.loopexit19.i:                                    ; preds = %.noexc13.i, %.noexc11.i, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7839
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7826
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !7829
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter6FilterINtNtB2r_10filter_map9FilterMapINtNtNtNtB6_11collections5btree3map4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCNvXsa_NtCshxhuDJfZv4T_6fontbe8featuresNtB6f_22FeatureCompilationWorkINtNtB4t_13orchestration4WorkNtNtB6h_13orchestration7ContextNtB7K_9AnyWorkIdNtNtB6h_5error5ErrorE4exec0ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB94_19ClassDefBuilderImplINtNtNtB2t_6traits7collect12FromIteratorB11_E9from_iterB3g_E0EE9from_iterB6h_.exit

bb.c:                                             ; preds = %.loopexit.split-lp.i
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !7825
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEEECshxhuDJfZv4T_6fontbe.exit.i: ; preds = %.loopexit.split-lp.i
  resume { ptr, i32 } %lpad.phi.i

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter6FilterINtNtB2r_10filter_map9FilterMapINtNtNtNtB6_11collections5btree3map4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCNvXsa_NtCshxhuDJfZv4T_6fontbe8featuresNtB6f_22FeatureCompilationWorkINtNtB4t_13orchestration4WorkNtNtB6h_13orchestration7ContextNtB7K_9AnyWorkIdNtNtB6h_5error5ErrorE4exec0ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB94_19ClassDefBuilderImplINtNtNtB2t_6traits7collect12FromIteratorB11_E9from_iterB3g_E0EE9from_iterB6h_.exit: ; preds = %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtB7_10filter_map9FilterMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCNvXsa_NtCshxhuDJfZv4T_6fontbe8featuresNtB4h_22FeatureCompilationWorkINtNtB2v_13orchestration4WorkNtNtB4j_13orchestration7ContextNtB5M_9AnyWorkIdNtNtB4j_5error5ErrorE4exec0ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB76_19ClassDefBuilderImplINtNtNtB9_6traits7collect12FromIteratorTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEE9from_iterB12_E0ENtNtB8w_8iterator8Iterator4nextB4j_.exit.thread.i, %.loopexit19.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !7826
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassIBL_NtNtNtBZ_7compile7lookups8LookupIdEEEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB2M_10filter_map9FilterMapNtNtBZ_10token_tree9ChildIterNvYNtNtB42_5typed9InputItemNtB4y_7AstNode4castENCNvMNtB1N_11compile_ctxINtB5j_14CompilationCtxNtNtB1N_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE18add_contextual_subs_0EE9from_iterB6L_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(176) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [176 x i8], align 8               ; 8 uses
  %i.e = alloca [48 x i8], align 8                ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7890)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7891)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !7892
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !7892
  invoke fastcc void @_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtB7_10filter_map9FilterMapNtNtCscScJTt9VrQp_6fea_rs10token_tree9ChildIterNvYNtNtB1s_5typed9InputItemNtB2g_7AstNode4castENCNvMNtNtB1u_7compile11compile_ctxINtB31_14CompilationCtxNtNtB33_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE18add_contextual_subs_0ENtNtNtB9_6traits8iterator8Iterator4nextB4D_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(176) %1)
          to label %bb.c unwind label %bb.b, !noalias !7890

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.j = load i64, ptr %i.i, align 8, !range !17, !noalias !7892, !noundef !4
  %.not.i = icmp eq i64 %i.j, -1
  br i1 %.not.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8, !alias.scope !7890, !noalias !7891
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.k, align 8, !alias.scope !7890, !noalias !7891
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.l, align 8, !alias.scope !7890, !noalias !7891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7892
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !7892
  %i.m = load i64, ptr %1, align 8, !range !17, !alias.scope !7893, !noalias !7890, !noundef !4
  %i.n = icmp eq i64 %i.m, -1
  br i1 %i.n, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecTNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassIBS_NtNtNtB16_7compile7lookups8LookupIdEEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB31_10filter_map9FilterMapNtNtB16_10token_tree9ChildIterNvYNtNtB4h_5typed9InputItemNtB4O_7AstNode4castENCNvMNtB1U_11compile_ctxINtB5z_14CompilationCtxNtNtB1U_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE18add_contextual_subs_0EE9from_iterB71_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCscScJTt9VrQp_6fea_rs10token_tree6cursor7NodeRefENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(176) %1), !noalias !7890
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecTNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassIBS_NtNtNtB16_7compile7lookups8LookupIdEEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB31_10filter_map9FilterMapNtNtB16_10token_tree9ChildIterNvYNtNtB4h_5typed9InputItemNtB4O_7AstNode4castENCNvMNtB1U_11compile_ctxINtB5z_14CompilationCtxNtNtB1U_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE18add_contextual_subs_0EE9from_iterB71_.exit

bb.f:                                             ; preds = %bb.h, %bb.g
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtBG_7compile7lookups8LookupIdEEECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(48) %i.e) #26
          to label %bb.w unwind label %bb.v, !noalias !7890

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !7892
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false), !noalias !7892
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7892
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 48)
          to label %.noexc.i unwind label %bb.f, !noalias !7890

.noexc.i:                                         ; preds = %bb.g
  %i.p = load i64, ptr %i.c, align 8, !range !11, !noalias !7892, !noundef !4
  %i.q = trunc nuw i64 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !32, !noalias !7892, !noundef !4 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.q, label %bb.h, label %bb.i, !prof !9

bb.h:                                             ; preds = %.noexc.i
  %i.u = load i64, ptr %i.t, align 8, !noalias !7892
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.s, i64 %i.u) #31
          to label %.noexc4.i unwind label %bb.f, !noalias !7890

.noexc4.i:                                        ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %.noexc.i
  %i.v = load ptr, ptr %i.t, align 8, !noalias !7892, !nonnull !4, !noundef !4 ; 2 uses
  %i.w = icmp ugt i64 %i.s, 3
  tail call void @llvm.assume(i1 %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7892
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.v, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false), !noalias !7890
  store i64 %i.s, ptr %i.g, align 8, !noalias !7892
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.v, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !7892
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !7892
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7892
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7892
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7892
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.d, ptr noundef nonnull align 8 dereferenceable(176) %1, i64 176, i1 false), !noalias !7890
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7894)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7895)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7896)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7897)
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br label %bb.j

bb.j:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassIBv_NtNtNtBJ_7compile7lookups8LookupIdEEE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i.i, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7898
  invoke fastcc void @_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtB7_10filter_map9FilterMapNtNtCscScJTt9VrQp_6fea_rs10token_tree9ChildIterNvYNtNtB1s_5typed9InputItemNtB2g_7AstNode4castENCNvMNtNtB1u_7compile11compile_ctxINtB31_14CompilationCtxNtNtB33_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE18add_contextual_subs_0ENtNtNtB9_6traits8iterator8Iterator4nextB4D_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(176) %i.d)
          to label %bb.n unwind label %bb.m, !noalias !7890

bb.k:                                             ; preds = %bb.r, %bb.m
  %.pn.i.i.i = phi { ptr, i32 } [ %i.al, %bb.r ], [ %i.aa, %bb.m ] ; 2 uses
  %i.y = load i64, ptr %i.d, align 8, !range !17, !alias.scope !7899, !noalias !7900, !noundef !4
  %i.z = icmp eq i64 %i.y, -1
  br i1 %i.z, label %.body.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCscScJTt9VrQp_6fea_rs10token_tree6cursor7NodeRefENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(176) %i.d)
          to label %.body.i unwind label %bb.t, !noalias !7890

bb.m:                                             ; preds = %bb.j
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.n:                                             ; preds = %bb.j
  %i.ab = load i64, ptr %i.x, align 8, !range !17, !noalias !7898, !noundef !4
  %.not.i.i.i = icmp eq i64 %i.ab, -1
  br i1 %.not.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7898
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false), !noalias !7898
  %i.ac = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !7901, !noalias !7902, !noundef !4 ; 5 uses
  %i.ad = icmp ult i64 %i.ac, 192153584101141163
  call void @llvm.assume(i1 %i.ad)
  %i.ae = load i64, ptr %i.g, align 8, !range !10, !alias.scope !7901, !noalias !7902, !noundef !4
  %i.af = icmp eq i64 %i.ac, %i.ae
  br i1 %i.af, label %bb.s, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassIBv_NtNtNtBJ_7compile7lookups8LookupIdEEE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i.i

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7898
  %i.ag = load i64, ptr %i.d, align 8, !range !17, !alias.scope !7903, !noalias !7900, !noundef !4
  %i.ah = icmp eq i64 %i.ag, -1
  br i1 %i.ah, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassIBI_NtNtNtBW_7compile7lookups8LookupIdEEEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB2H_10filter_map9FilterMapNtNtBW_10token_tree9ChildIterNvYNtNtB3X_5typed9InputItemNtB4t_7AstNode4castENCNvMNtB1K_11compile_ctxINtB5e_14CompilationCtxNtNtB1K_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE18add_contextual_subs_0EE11spec_extendB6G_.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCscScJTt9VrQp_6fea_rs10token_tree6cursor7NodeRefENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(176) %i.d)
          to label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassIBI_NtNtNtBW_7compile7lookups8LookupIdEEEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB2H_10filter_map9FilterMapNtNtBW_10token_tree9ChildIterNvYNtNtB3X_5typed9InputItemNtB4t_7AstNode4castENCNvMNtB1K_11compile_ctxINtB5e_14CompilationCtxNtNtB1K_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE18add_contextual_subs_0EE11spec_extendB6G_.exit.i unwind label %bb.u, !noalias !7890

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassIBv_NtNtNtBJ_7compile7lookups8LookupIdEEE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i.i: ; preds = %bb.s, %bb.o
  %i.ai = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !7901, !noalias !7902, !nonnull !4, !noundef !4
  %i.aj = getelementptr inbounds nuw [48 x i8], ptr %i.ai, i64 %i.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aj, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false), !noalias !7890
  %i.ak = add nuw nsw i64 %i.ac, 1
  store i64 %i.ak, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !7901, !noalias !7902
end_hunk_0
