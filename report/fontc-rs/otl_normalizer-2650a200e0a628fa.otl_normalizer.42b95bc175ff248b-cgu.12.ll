Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/otl_normalizer-2650a200e0a628fa.otl_normalizer.42b95bc175ff248b-cgu.12?download=true
inline.NumInlined: 255
inline.NumDeleted: 180
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvNtNtCs5JazJsyow1H_14otl_normalizer4gpos7pairpos17get_pairpos_rules:bb.a
  invoke void @_RNvMs1B_NtNtCs8n5UXKvQVD9_10read_fonts6tables4gposNtB6_14PairPosFormat210class_def2(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.at, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ds)
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc11:                                         ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout8ClassDefNtNtBN_4read9ReadErrorE6unwrapCs5JazJsyow1H_14otl_normalizer.exit62.i
  call void @llvm.experimental.noalias.scope.decl(metadata !687)
  call void @llvm.experimental.noalias.scope.decl(metadata !688)
  %i.ea = load i64, ptr %i.at, align 8, !range !10, !alias.scope !688, !noalias !689, !noundef !4
  %i.eb = trunc nuw i64 %i.ea to i1
  br i1 %i.eb, label %bb.f, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout8ClassDefNtNtBN_4read9ReadErrorE6unwrapCs5JazJsyow1H_14otl_normalizer.exit.i, !prof !677

bb.f:                                             ; preds = %.noexc11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !690
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ca, i64 24, i1 false), !noalias !689
  br label %.invoke

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout8ClassDefNtNtBN_4read9ReadErrorE6unwrapCs5JazJsyow1H_14otl_normalizer.exit.i: ; preds = %.noexc11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ca, i64 24, i1 false), !alias.scope !691, !noalias !692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !673
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !673
  %i.ec = invoke { i64, i64 } @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @10)
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc13:                                         ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout8ClassDefNtNtBN_4read9ReadErrorE6unwrapCs5JazJsyow1H_14otl_normalizer.exit.i
  %i.ed = extractvalue { i64, i64 } %i.ec, 0
  %i.ee = extractvalue { i64, i64 } %i.ec, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.as, ptr noundef nonnull align 8 dereferenceable(32) @12, i64 32, i1 false), !noalias !673
  store i64 %i.ed, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !673
  store i64 %i.ee, ptr %.sroa.59.0..sroa_idx.i, align 8, !noalias !673
  invoke void @_RNvMsc_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB5_8ClassDef4iter(ptr noalias nofree noundef nonnull sret([248 x i8]) align 8 captures(address) dereferenceable(248) %i.ar, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.au)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit

.body155.i:                                       ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp, %bb.fn, %bb.fg, %bb.fd, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5JazJsyow1H_14otl_normalizer4gpos13ResolvedValueEBF_.exit6.i148.i, %.body144.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %.pn56.i = phi { ptr, i32 } [ %.pn53.i, %.body144.i ], [ %i.tp, %bb.fg ], [ %.pn2.i149.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5JazJsyow1H_14otl_normalizer4gpos13ResolvedValueEBF_.exit6.i148.i ], [ %i.tx, %bb.fn ], [ %i.tn, %bb.fd ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit547.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit555.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp416, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp ], [ %lpad.loopexit562.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit415, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit ], [ %lpad.loopexit1990, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit ], [ %lpad.loopexit.split-lp1991, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp ]
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTtINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.as)
          to label %.body unwind label %bb.fj

.loopexit.i:                                      ; preds = %.lr.ph.i.i85.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body155.i

.loopexit.split-lp.loopexit.i:                    ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VeclEECs5JazJsyow1H_14otl_normalizer.exit.i.i317.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecaEECs5JazJsyow1H_14otl_normalizer.exit.i.i318.i, %bb.cq, %_RNvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtBb_6option8IntoIterRINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENCNvNtNtCs5JazJsyow1H_14otl_normalizer4gpos7pairpos23append_pairpos_f2_rules0EINtNtNtBb_5slice4iter4IterB2n_EENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit.i
  %lpad.loopexit547.i = landingpad { ptr, i32 }
          cleanup
  br label %.body155.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %bb.cb, %_RNvXNtNtNtCsf3Ta7LF998c_4core4iter7sources7from_fnINtB2_6FromFnNCNvMs2_NtCs8n5UXKvQVD9_10read_fonts5arrayINtB17_13ComputedArrayNtNtNtB19_6tables4gpos12Class2RecordE4iter0ENtNtNtB6_6traits8iterator8Iterator4nextCs5JazJsyow1H_14otl_normalizer.exit.i.i
  %lpad.loopexit555.i = landingpad { ptr, i32 }
          cleanup
  br label %.body155.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit: ; preds = %bb.ax, %bb.bm, %bb.bf, %bb.bh
  %lpad.loopexit1990 = landingpad { ptr, i32 }
          cleanup
  br label %.body155.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp: ; preds = %bb.aw, %bb.be, %bb.bg, %bb.bl
  %lpad.loopexit.split-lp1991 = landingpad { ptr, i32 }
          cleanup
  br label %.body155.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %bb.fq, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EECs5JazJsyow1H_14otl_normalizer.exit.i.i, %bb.fl, %bb.v
  %lpad.loopexit562.i = landingpad { ptr, i32 }
          cleanup
  br label %.body155.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit: ; preds = %.noexc13, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtNtB8_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout16ClassRangeRecordEINtNtB4_3map3MapINtNtNtB8_3ops5range14RangeInclusivetENCNCNvMsa_B1M_NtB1M_15ClassDefFormat24iter00ENCB3J_0ETNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5JazJsyow1H_14otl_normalizer.exit.thread.i, %bb.w
  %lpad.loopexit415 = landingpad { ptr, i32 }
          cleanup
  br label %.body155.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp: ; preds = %.invoke.i
  %lpad.loopexit.split-lp416 = landingpad { ptr, i32 }
          cleanup
  br label %.body155.i

bb.g:                                             ; preds = %.noexc13
  %.sroa.0.0.copyload.i = load i64, ptr %i.ar, align 8, !noalias !673
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !673
  %.sroa.7.sroa.0.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !673 ; 3 uses
  %.sroa.7.sroa.4.0.copyload.i = load i64, ptr %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx.i, align 8, !noalias !673 ; 2 uses
  %.sroa.7.sroa.5.0.copyload.i = load i16, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i, align 8, !noalias !673 ; 2 uses
  %.sroa.8.0.copyload.i = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !673
  %.sroa.12.sroa.0.0.copyload.i = load ptr, ptr %.sroa.12.0..sroa_idx.i, align 8, !noalias !673
  %.sroa.12.sroa.7.0.copyload.i = load i64, ptr %.sroa.12.sroa.7.0..sroa.12.0..sroa_idx.sroa_idx.i, align 8, !noalias !673
  %.sroa.12.sroa.9.0.copyload.i = load i16, ptr %.sroa.12.sroa.9.0..sroa.12.0..sroa_idx.sroa_idx.i, align 8, !noalias !673
  %.sroa.19.0.copyload.i = load ptr, ptr %.sroa.19.0..sroa_idx.i, align 8, !noalias !673
  %.sroa.22.0.copyload.i = load ptr, ptr %.sroa.22.0..sroa_idx.i, align 8, !noalias !673 ; 2 uses
  %.sroa.23.0.copyload.i = load i64, ptr %.sroa.23.0..sroa_idx.i, align 8, !noalias !673
  %.sroa.25.0.copyload.i = load i16, ptr %.sroa.25.0..sroa_idx.i, align 8, !noalias !673
  %.sroa.26354.sroa.0.0.copyload.i = load ptr, ptr %.sroa.26354.0..sroa_idx.i, align 8, !noalias !673 ; 5 uses
  %.sroa.26354.sroa.4.0.copyload.i = load ptr, ptr %.sroa.26354.sroa.4.0..sroa.26354.0..sroa_idx.sroa_idx.i, align 8, !noalias !673 ; 4 uses
  %.sroa.26354.sroa.5.0.copyload.i = load ptr, ptr %.sroa.26354.sroa.5.0..sroa.26354.0..sroa_idx.sroa_idx.i, align 8, !noalias !673 ; 2 uses
  %.sroa.26354.sroa.6.0.copyload.i = load i16, ptr %.sroa.26354.sroa.6.0..sroa.26354.0..sroa_idx.sroa_idx.i, align 8, !noalias !673 ; 3 uses
  %.sroa.26354.sroa.7.0.copyload.i = load i16, ptr %.sroa.26354.sroa.7.0..sroa.26354.0..sroa_idx.sroa_idx.i, align 2, !noalias !673 ; 3 uses
  %.sroa.26354.sroa.8.0.copyload.i = load i8, ptr %.sroa.26354.sroa.8.0..sroa.26354.0..sroa_idx.sroa_idx.i, align 4, !noalias !673
  %.sroa.26354.sroa.10.0.copyload.i = load ptr, ptr %.sroa.26354.sroa.10.0..sroa.26354.0..sroa_idx.sroa_idx.i, align 8, !noalias !673 ; 3 uses
  %.sroa.26354.sroa.11.0.copyload.i = load i16, ptr %.sroa.26354.sroa.11.0..sroa.26354.0..sroa_idx.sroa_idx.i, align 8, !noalias !673 ; 6 uses
  %.sroa.26354.sroa.12.0.copyload.i = load i16, ptr %.sroa.26354.sroa.12.0..sroa.26354.0..sroa_idx.sroa_idx.i, align 2, !noalias !673 ; 3 uses
  %.sroa.27.0.copyload.i = load i8, ptr %.sroa.27.0..sroa_idx.i, align 4, !noalias !673
  %.sroa.30.sroa.0.0.copyload.i = load ptr, ptr %.sroa.30.0..sroa_idx.i, align 8, !noalias !673
  %.sroa.30.sroa.10.0.copyload.i = load ptr, ptr %.sroa.30.sroa.10.0..sroa.30.0..sroa_idx.sroa_idx.i, align 8, !noalias !673
  %.sroa.30.sroa.12.0.copyload.i = load ptr, ptr %.sroa.30.sroa.12.0..sroa.30.0..sroa_idx.sroa_idx.i, align 8, !noalias !673
  %.sroa.30.sroa.18.0.copyload.i = load i16, ptr %.sroa.30.sroa.18.0..sroa.30.0..sroa_idx.sroa_idx.i, align 8, !noalias !673
  %.sroa.30.sroa.24.0.copyload.i = load i16, ptr %.sroa.30.sroa.24.0..sroa.30.0..sroa_idx.sroa_idx.i, align 2, !noalias !673
  %.sroa.30.sroa.30.0.copyload.i = load i8, ptr %.sroa.30.sroa.30.0..sroa.30.0..sroa_idx.sroa_idx.i, align 4, !noalias !673
  %.sroa.30.sroa.38395.0.copyload.i = load ptr, ptr %.sroa.30.sroa.38395.0..sroa.30.0..sroa_idx.sroa_idx.i, align 8, !noalias !673
  %.sroa.30.sroa.40.0.copyload.i = load i16, ptr %.sroa.30.sroa.40.0..sroa.30.0..sroa_idx.sroa_idx.i, align 8, !noalias !673
  %.sroa.30.sroa.44.0.copyload.i = load i16, ptr %.sroa.30.sroa.44.0..sroa.30.0..sroa_idx.sroa_idx.i, align 2, !noalias !673
  %.sroa.73.0.copyload.i = load i8, ptr %.sroa.73.0..sroa_idx.i, align 4, !noalias !673
  %.sroa.83.0.copyload.i = load ptr, ptr %.sroa.83.0..sroa_idx.i, align 8, !noalias !673
  %.sroa.86.0.copyload.i = load ptr, ptr %.sroa.86.0..sroa_idx.i, align 8, !noalias !673 ; 2 uses
  %.sroa.87.0.copyload.i = load ptr, ptr %.sroa.87.0..sroa_idx.i, align 8, !noalias !673
  %.sroa.90.0.copyload.i = load i16, ptr %.sroa.90.0..sroa_idx.i, align 8, !noalias !673
  %.sroa.93.0.copyload.i = load i16, ptr %.sroa.93.0..sroa_idx.i, align 2, !noalias !673
  %.sroa.96.0.copyload.i = load i8, ptr %.sroa.96.0..sroa_idx.i, align 4, !noalias !673
  %.sroa.100387.0.copyload.i = load ptr, ptr %.sroa.100387.0..sroa_idx.i, align 8, !noalias !673 ; 2 uses
  %.sroa.101.0.copyload.i = load i16, ptr %.sroa.101.0..sroa_idx.i, align 8, !noalias !673
  %.sroa.103.0.copyload.i = load i16, ptr %.sroa.103.0..sroa_idx.i, align 2, !noalias !673
  %.sroa.104.0.copyload.i = load i8, ptr %.sroa.104.0..sroa_idx.i, align 4, !noalias !673
  %.not.i.i.i.i.peel.i.i.i.i187.i = icmp ugt i16 %.sroa.26354.sroa.6.0.copyload.i, %.sroa.26354.sroa.7.0.copyload.i
  %i.ef = freeze i1 %.not.i.i.i.i.peel.i.i.i.i187.i
  %i.eg = add i8 %.sroa.26354.sroa.8.0.copyload.i, -1
  %i.eh = icmp ult i8 %i.eg, 2
  %or.cond538.i = select i1 %i.ef, i1 true, i1 %i.eh
  %.not.i5.peel.i.i.i.i209.i = icmp eq ptr %.sroa.26354.sroa.0.0.copyload.i, null
  %i.ei = icmp eq ptr %.sroa.26354.sroa.0.0.copyload.i, %.sroa.26354.sroa.4.0.copyload.i
  %or.cond.i.i.i210.i = select i1 %.not.i5.peel.i.i.i.i209.i, i1 true, i1 %i.ei
  %.not.i.i.i.i7.i.i.i.i220.i = icmp ugt i16 %.sroa.26354.sroa.11.0.copyload.i, %.sroa.26354.sroa.12.0.copyload.i
  %i.ej = icmp eq i16 %.sroa.26354.sroa.11.0.copyload.i, -1
  %i.ek = add i16 %.sroa.26354.sroa.11.0.copyload.i, 1
  %i.el = zext i1 %i.ej to i8
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.26354.sroa.10.0.copyload.i, i64 4
  %i.en = zext i16 %.sroa.26354.sroa.11.0.copyload.i to i32
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.100387.0.copyload.i, i64 4
  br label %bb.h

bb.h:                                             ; preds = %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E8push_mutCs5JazJsyow1H_14otl_normalizer.exit.i, %bb.g
  %.sroa.12.sroa.9.0.i = phi i16 [ %.sroa.12.sroa.9.0.copyload.i, %bb.g ], [ %.sroa.12.sroa.9.51597.i265, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E8push_mutCs5JazJsyow1H_14otl_normalizer.exit.i ] ; 5 uses
  %.sroa.12.sroa.7.0.i = phi i64 [ %.sroa.12.sroa.7.0.copyload.i, %bb.g ], [ %.sroa.12.sroa.7.51599.i264, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E8push_mutCs5JazJsyow1H_14otl_normalizer.exit.i ] ; 5 uses
  %.sroa.12.sroa.0.0.i = phi ptr [ %.sroa.12.sroa.0.0.copyload.i, %bb.g ], [ %.sroa.12.sroa.0.51601.i263, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E8push_mutCs5JazJsyow1H_14otl_normalizer.exit.i ] ; 6 uses
  %.sroa.30.sroa.44.0.i = phi i16 [ %.sroa.30.sroa.44.0.copyload.i, %bb.g ], [ %.sroa.30.sroa.44.2.i266, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E8push_mutCs5JazJsyow1H_14otl_normalizer.exit.i ] ; 4 uses
  %.sroa.30.sroa.40.0.i = phi i16 [ %.sroa.30.sroa.40.0.copyload.i, %bb.g ], [ %.sroa.30.sroa.40.2.i267, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E8push_mutCs5JazJsyow1H_14otl_normalizer.exit.i ] ; 8 uses
  %.sroa.30.sroa.38395.0.i = phi ptr [ %.sroa.30.sroa.38395.0.copyload.i, %bb.g ], [ %.sroa.30.sroa.38395.2.i268, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E8push_mutCs5JazJsyow1H_14otl_normalizer.exit.i ] ; 4 uses
  %.sroa.30.sroa.30.0.i = phi i8 [ %.sroa.30.sroa.30.0.copyload.i, %bb.g ], [ %.sroa.30.sroa.30.2.i269, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E8push_mutCs5JazJsyow1H_14otl_normalizer.exit.i ] ; 3 uses
  %.sroa.30.sroa.24.0.i = phi i16 [ %.sroa.30.sroa.24.0.copyload.i, %bb.g ], [ %.sroa.30.sroa.24.2.i270, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E8push_mutCs5JazJsyow1H_14otl_normalizer.exit.i ] ; 5 uses
  %.sroa.30.sroa.18.0.i = phi i16 [ %.sroa.30.sroa.18.0.copyload.i, %bb.g ], [ %.sroa.30.sroa.18.2.i271, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E8push_mutCs5JazJsyow1H_14otl_normalizer.exit.i ] ; 5 uses
  %.sroa.30.sroa.12.0.i = phi ptr [ %.sroa.30.sroa.12.0.copyload.i, %bb.g ], [ %.sroa.30.sroa.12.2.i272, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E8push_mutCs5JazJsyow1H_14otl_normalizer.exit.i ] ; 4 uses
  %.sroa.30.sroa.10.0.i = phi ptr [ %.sroa.30.sroa.10.0.copyload.i, %bb.g ], [ %.sroa.30.sroa.10.2.i273, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E8push_mutCs5JazJsyow1H_14otl_normalizer.exit.i ] ; 5 uses
  %.sroa.30.sroa.0.0.i = phi ptr [ %.sroa.30.sroa.0.0.copyload.i, %bb.g ], [ %.sroa.30.sroa.0.2.i274, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E8push_mutCs5JazJsyow1H_14otl_normalizer.exit.i ] ; 7 uses
  %.sroa.104.0.i = phi i8 [ %.sroa.104.0.copyload.i, %bb.g ], [ %.sroa.104.1.i275, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E8push_mutCs5JazJsyow1H_14otl_normalizer.exit.i ] ; 5 uses
  %.sroa.101.0.i = phi i16 [ %.sroa.101.0.copyload.i, %bb.g ], [ %.sroa.101.1.i276, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E8push_mutCs5JazJsyow1H_14otl_normalizer.exit.i ] ; 7 uses
  %.sroa.96.0.i = phi i8 [ %.sroa.96.0.copyload.i, %bb.g ], [ %.sroa.96.1.i277, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E8push_mutCs5JazJsyow1H_14otl_normalizer.exit.i ] ; 2 uses
  %.sroa.93.0.i = phi i16 [ %.sroa.93.0.copyload.i, %bb.g ], [ %.sroa.93.1.i278, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E8push_mutCs5JazJsyow1H_14otl_normalizer.exit.i ] ; 4 uses
  %.sroa.90.0.i = phi i16 [ %.sroa.90.0.copyload.i, %bb.g ], [ %.sroa.90.1.i279, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E8push_mutCs5JazJsyow1H_14otl_normalizer.exit.i ] ; 4 uses
  %.sroa.87.0.i = phi ptr [ %.sroa.87.0.copyload.i, %bb.g ], [ %.sroa.87.1.i280, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E8push_mutCs5JazJsyow1H_14otl_normalizer.exit.i ] ; 3 uses
  %.sroa.83.0.i = phi ptr [ %.sroa.83.0.copyload.i, %bb.g ], [ %.sroa.83.1.i281, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E8push_mutCs5JazJsyow1H_14otl_normalizer.exit.i ] ; 6 uses
  %.sroa.73.0.i = phi i8 [ %.sroa.73.0.copyload.i, %bb.g ], [ %.sroa.73.2.i282, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E8push_mutCs5JazJsyow1H_14otl_normalizer.exit.i ] ; 4 uses
  %.sroa.27.0.i = phi i8 [ %.sroa.27.0.copyload.i, %bb.g ], [ %.sroa.27.3.i283, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E8push_mutCs5JazJsyow1H_14otl_normalizer.exit.i ] ; 6 uses
  %.sroa.23.0.i = phi i64 [ %.sroa.23.0.copyload.i, %bb.g ], [ %.sroa.23.31603.i262, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E8push_mutCs5JazJsyow1H_14otl_normalizer.exit.i ] ; 6 uses
  %.sroa.19.0.i = phi ptr [ %.sroa.19.0.copyload.i, %bb.g ], [ %.sroa.19.31605.i261, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E8push_mutCs5JazJsyow1H_14otl_normalizer.exit.i ] ; 6 uses
  %.sroa.8.0.i = phi ptr [ %.sroa.8.0.copyload.i, %bb.g ], [ %.sroa.8.41607.i260, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E8push_mutCs5JazJsyow1H_14otl_normalizer.exit.i ] ; 5 uses
  %.sroa.5.0.i = phi ptr [ %.sroa.5.0.copyload.i, %bb.g ], [ %.sroa.5.51609.i259, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E8push_mutCs5JazJsyow1H_14otl_normalizer.exit.i ] ; 7 uses
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.copyload.i, %bb.g ], [ %.sroa.0.11611.i258, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E8push_mutCs5JazJsyow1H_14otl_normalizer.exit.i ] ; 3 uses
  %.not.i.i = icmp eq i64 %.sroa.0.0.i, 2
  br i1 %.not.i.i, label %.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ep = trunc nuw i64 %.sroa.0.0.i to i1
  %.not.i.us.peel.i.i.i.i.i = icmp eq ptr %.sroa.8.0.i, null
  %i.eq = icmp eq ptr %.sroa.8.0.i, %.sroa.12.sroa.0.0.i
  %or.cond.i = select i1 %.not.i.us.peel.i.i.i.i.i, i1 true, i1 %i.eq ; 2 uses
  br i1 %i.ep, label %.split.us.preheader.i.i.i.i.i, label %.split.i.i.i.i.i

.split.us.preheader.i.i.i.i.i:                    ; preds = %bb.i
  br i1 %or.cond.i, label %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_3map3MapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterINtNtCsbZq13ASDQ8l_10font_types3raw9BigEndiantEEENCNvMs9_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB3p_15ClassDefFormat14iter0EEEINtB5_8FuseImplBY_E4nextCs5JazJsyow1H_14otl_normalizer.exit.us.peel.i.i.i.i.i, label %.loopexit.i.i.i.i.i

_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_3map3MapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterINtNtCsbZq13ASDQ8l_10font_types3raw9BigEndiantEEENCNvMs9_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB3p_15ClassDefFormat14iter0EEEINtB5_8FuseImplBY_E4nextCs5JazJsyow1H_14otl_normalizer.exit.us.peel.i.i.i.i.i: ; preds = %.split.us.preheader.i.i.i.i.i
  %.not.us.peel.i.i.i.i.i = icmp eq ptr %.sroa.5.0.i, null
  br i1 %.not.us.peel.i.i.i.i.i, label %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_3map3MapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterINtNtCsbZq13ASDQ8l_10font_types3raw9BigEndiantEEENCNvMs9_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB3p_15ClassDefFormat14iter0EEEINtB5_8FuseImplBY_E4nextCs5JazJsyow1H_14otl_normalizer.exit.thread.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_3map3MapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterINtNtCsbZq13ASDQ8l_10font_types3raw9BigEndiantEEENCNvMs9_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB3p_15ClassDefFormat14iter0EEEINtB5_8FuseImplBY_E4nextCs5JazJsyow1H_14otl_normalizer.exit.us.peel.i.i.i.i.i
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.5.0.i, %.sroa.7.sroa.0.0.copyload.i
  br i1 %.not.i.i.i.i.i, label %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_3map3MapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterINtNtCsbZq13ASDQ8l_10font_types3raw9BigEndiantEEENCNvMs9_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB3p_15ClassDefFormat14iter0EEEINtB5_8FuseImplBY_E4nextCs5JazJsyow1H_14otl_normalizer.exit.thread.i.i.i.i.i, label %.loopexit.i.i.i.i.i

.split.i.i.i.i.i:                                 ; preds = %bb.i
  br i1 %or.cond.i, label %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_3map3MapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterINtNtCsbZq13ASDQ8l_10font_types3raw9BigEndiantEEENCNvMs9_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB3p_15ClassDefFormat14iter0EEEINtB5_8FuseImplBY_E4nextCs5JazJsyow1H_14otl_normalizer.exit.thread.i.i.i.i.i, label %.loopexit.i.i.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %.split.i.i.i.i.i, %bb.j, %.split.us.preheader.i.i.i.i.i
  %.sroa.12.sroa.9.1.i = phi i16 [ %.sroa.7.sroa.5.0.copyload.i, %bb.j ], [ %.sroa.12.sroa.9.0.i, %.split.us.preheader.i.i.i.i.i ], [ %.sroa.12.sroa.9.0.i, %.split.i.i.i.i.i ] ; 2 uses
  %.sroa.12.sroa.7.1.i = phi i64 [ %.sroa.7.sroa.4.0.copyload.i, %bb.j ], [ %.sroa.12.sroa.7.0.i, %.split.us.preheader.i.i.i.i.i ], [ %.sroa.12.sroa.7.0.i, %.split.i.i.i.i.i ] ; 2 uses
  %.sroa.12.sroa.0.1.i = phi ptr [ %.sroa.7.sroa.0.0.copyload.i, %bb.j ], [ %.sroa.12.sroa.0.0.i, %.split.us.preheader.i.i.i.i.i ], [ %.sroa.12.sroa.0.0.i, %.split.i.i.i.i.i ]
  %.sroa.5.1.i = phi ptr [ null, %bb.j ], [ %.sroa.5.0.i, %.split.us.preheader.i.i.i.i.i ], [ %.sroa.5.0.i, %.split.i.i.i.i.i ]
  %.promoted.sink56.i.i.i.i.i = phi ptr [ %.sroa.5.0.i, %bb.j ], [ %.sroa.8.0.i, %.split.us.preheader.i.i.i.i.i ], [ %.sroa.8.0.i, %.split.i.i.i.i.i ] ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.promoted.sink56.i.i.i.i.i, i64 2
  %i.es = add i64 %.sroa.12.sroa.7.1.i, 1
  %.val4.i.i.i.us.peel.i.i.i.i.i = load i16, ptr %.promoted.sink56.i.i.i.i.i, align 1, !noalias !693
  %i.et = trunc i64 %.sroa.12.sroa.7.1.i to i16
  %i.eu = call i16 @llvm.uadd.sat.i16(i16 %.sroa.12.sroa.9.1.i, i16 %i.et)
  %i.ev = call i16 @llvm.bswap.i16(i16 %.val4.i.i.i.us.peel.i.i.i.i.i)
  %i.ew = zext i16 %i.eu to i32
  %4 = zext i16 %i.ev to i32
  %5 = shl nuw i32 %4, 16
  %i.ex = or disjoint i32 %5, %i.ew
  %.sroa.3.0.insert.ext.i.le.i.i.i.i.i = zext i32 %i.ex to i48
  %.sroa.3.0.insert.shift.i.le.i.i.i.i.i = shl nuw i48 %.sroa.3.0.insert.ext.i.le.i.i.i.i.i, 16
  %.sroa.0.0.insert.insert.i.le.i.i.i.i.i = or disjoint i48 %.sroa.3.0.insert.shift.i.le.i.i.i.i.i, 1
  br label %bb.l

_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_3map3MapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterINtNtCsbZq13ASDQ8l_10font_types3raw9BigEndiantEEENCNvMs9_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB3p_15ClassDefFormat14iter0EEEINtB5_8FuseImplBY_E4nextCs5JazJsyow1H_14otl_normalizer.exit.thread.i.i.i.i.i: ; preds = %.split.i.i.i.i.i, %bb.j, %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_3map3MapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterINtNtCsbZq13ASDQ8l_10font_types3raw9BigEndiantEEENCNvMs9_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB3p_15ClassDefFormat14iter0EEEINtB5_8FuseImplBY_E4nextCs5JazJsyow1H_14otl_normalizer.exit.us.peel.i.i.i.i.i
  %.sroa.12.sroa.9.4.i = phi i16 [ %.sroa.12.sroa.9.0.i, %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_3map3MapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterINtNtCsbZq13ASDQ8l_10font_types3raw9BigEndiantEEENCNvMs9_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB3p_15ClassDefFormat14iter0EEEINtB5_8FuseImplBY_E4nextCs5JazJsyow1H_14otl_normalizer.exit.us.peel.i.i.i.i.i ], [ %.sroa.12.sroa.9.0.i, %.split.i.i.i.i.i ], [ %.sroa.7.sroa.5.0.copyload.i, %bb.j ]
  %.sroa.12.sroa.7.4.i = phi i64 [ %.sroa.12.sroa.7.0.i, %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_3map3MapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterINtNtCsbZq13ASDQ8l_10font_types3raw9BigEndiantEEENCNvMs9_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB3p_15ClassDefFormat14iter0EEEINtB5_8FuseImplBY_E4nextCs5JazJsyow1H_14otl_normalizer.exit.us.peel.i.i.i.i.i ], [ %.sroa.12.sroa.7.0.i, %.split.i.i.i.i.i ], [ %.sroa.7.sroa.4.0.copyload.i, %bb.j ]
  %.sroa.12.sroa.0.4.i = phi ptr [ %.sroa.12.sroa.0.0.i, %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_3map3MapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterINtNtCsbZq13ASDQ8l_10font_types3raw9BigEndiantEEENCNvMs9_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB3p_15ClassDefFormat14iter0EEEINtB5_8FuseImplBY_E4nextCs5JazJsyow1H_14otl_normalizer.exit.us.peel.i.i.i.i.i ], [ %.sroa.12.sroa.0.0.i, %.split.i.i.i.i.i ], [ %.sroa.7.sroa.0.0.copyload.i, %bb.j ]
  %.sroa.5.4.i = phi ptr [ null, %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_3map3MapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterINtNtCsbZq13ASDQ8l_10font_types3raw9BigEndiantEEENCNvMs9_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB3p_15ClassDefFormat14iter0EEEINtB5_8FuseImplBY_E4nextCs5JazJsyow1H_14otl_normalizer.exit.us.peel.i.i.i.i.i ], [ %.sroa.5.0.i, %.split.i.i.i.i.i ], [ null, %bb.j ]
  %.not.i5.i.i.i.i.i = icmp eq ptr %.sroa.19.0.i, null
  br i1 %.not.i5.i.i.i.i.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IterINtNtCsbZq13ASDQ8l_10font_types3raw9BigEndiantEEENCNvMs9_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB39_15ClassDefFormat14iter0ETNtNtB2j_8glyph_id9GlyphId16tENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5JazJsyow1H_14otl_normalizer.exit15.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_3map3MapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterINtNtCsbZq13ASDQ8l_10font_types3raw9BigEndiantEEENCNvMs9_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB3p_15ClassDefFormat14iter0EEEINtB5_8FuseImplBY_E4nextCs5JazJsyow1H_14otl_normalizer.exit.thread.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.22.0.copyload.i) ]
  %i.ey = icmp eq ptr %.sroa.19.0.i, %.sroa.22.0.copyload.i
  br i1 %i.ey, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IterINtNtCsbZq13ASDQ8l_10font_types3raw9BigEndiantEEENCNvMs9_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB39_15ClassDefFormat14iter0ETNtNtB2j_8glyph_id9GlyphId16tENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5JazJsyow1H_14otl_normalizer.exit15.i.i.i.i.i, label %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtBa_9enumerate9EnumerateINtNtNtBe_5slice4iter4IterINtNtCsbZq13ASDQ8l_10font_types3raw9BigEndiantEEENCNvMs9_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB2G_15ClassDefFormat14iter0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs5JazJsyow1H_14otl_normalizer.exit.i6.i.i.i.i.i

_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtBa_9enumerate9EnumerateINtNtNtBe_5slice4iter4IterINtNtCsbZq13ASDQ8l_10font_types3raw9BigEndiantEEENCNvMs9_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB2G_15ClassDefFormat14iter0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs5JazJsyow1H_14otl_normalizer.exit.i6.i.i.i.i.i: ; preds = %bb.k
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.19.0.i, i64 2
  %i.fa = add i64 %.sroa.23.0.i, 1
  %.val4.i.i.i8.i.i.i.i.i = load i16, ptr %.sroa.19.0.i, align 1, !noalias !694
  %i.fb = trunc i64 %.sroa.23.0.i to i16
  %i.fc = call i16 @llvm.uadd.sat.i16(i16 %.sroa.25.0.copyload.i, i16 %i.fb)
  %i.fd = call i16 @llvm.bswap.i16(i16 %.val4.i.i.i8.i.i.i.i.i)
  %i.fe = zext i16 %i.fc to i32
  %6 = zext i16 %i.fd to i32
  %7 = shl nuw i32 %6, 16
  %i.ff = or disjoint i32 %7, %i.fe
  br label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IterINtNtCsbZq13ASDQ8l_10font_types3raw9BigEndiantEEENCNvMs9_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB39_15ClassDefFormat14iter0ETNtNtB2j_8glyph_id9GlyphId16tENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5JazJsyow1H_14otl_normalizer.exit15.i.i.i.i.i

_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IterINtNtCsbZq13ASDQ8l_10font_types3raw9BigEndiantEEENCNvMs9_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB39_15ClassDefFormat14iter0ETNtNtB2j_8glyph_id9GlyphId16tENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5JazJsyow1H_14otl_normalizer.exit15.i.i.i.i.i: ; preds = %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtBa_9enumerate9EnumerateINtNtNtBe_5slice4iter4IterINtNtCsbZq13ASDQ8l_10font_types3raw9BigEndiantEEENCNvMs9_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB2G_15ClassDefFormat14iter0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs5JazJsyow1H_14otl_normalizer.exit.i6.i.i.i.i.i, %bb.k, %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_3map3MapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterINtNtCsbZq13ASDQ8l_10font_types3raw9BigEndiantEEENCNvMs9_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB3p_15ClassDefFormat14iter0EEEINtB5_8FuseImplBY_E4nextCs5JazJsyow1H_14otl_normalizer.exit.thread.i.i.i.i.i
  %.sroa.23.2.i = phi i64 [ %.sroa.23.0.i, %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_3map3MapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterINtNtCsbZq13ASDQ8l_10font_types3raw9BigEndiantEEENCNvMs9_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB3p_15ClassDefFormat14iter0EEEINtB5_8FuseImplBY_E4nextCs5JazJsyow1H_14otl_normalizer.exit.thread.i.i.i.i.i ], [ %i.fa, %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtBa_9enumerate9EnumerateINtNtNtBe_5slice4iter4IterINtNtCsbZq13ASDQ8l_10font_types3raw9BigEndiantEEENCNvMs9_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB2G_15ClassDefFormat14iter0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs5JazJsyow1H_14otl_normalizer.exit.i6.i.i.i.i.i ], [ %.sroa.23.0.i, %bb.k ]
  %.sroa.19.2.i = phi ptr [ null, %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_3map3MapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterINtNtCsbZq13ASDQ8l_10font_types3raw9BigEndiantEEENCNvMs9_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB3p_15ClassDefFormat14iter0EEEINtB5_8FuseImplBY_E4nextCs5JazJsyow1H_14otl_normalizer.exit.thread.i.i.i.i.i ], [ %i.ez, %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtBa_9enumerate9EnumerateINtNtNtBe_5slice4iter4IterINtNtCsbZq13ASDQ8l_10font_types3raw9BigEndiantEEENCNvMs9_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB2G_15ClassDefFormat14iter0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs5JazJsyow1H_14otl_normalizer.exit.i6.i.i.i.i.i ], [ null, %bb.k ]
  %.sroa.3.0.i9.i.i.i.i.i = phi i32 [ undef, %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_3map3MapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterINtNtCsbZq13ASDQ8l_10font_types3raw9BigEndiantEEENCNvMs9_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB3p_15ClassDefFormat14iter0EEEINtB5_8FuseImplBY_E4nextCs5JazJsyow1H_14otl_normalizer.exit.thread.i.i.i.i.i ], [ %i.ff, %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtBa_9enumerate9EnumerateINtNtNtBe_5slice4iter4IterINtNtCsbZq13ASDQ8l_10font_types3raw9BigEndiantEEENCNvMs9_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB2G_15ClassDefFormat14iter0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs5JazJsyow1H_14otl_normalizer.exit.i6.i.i.i.i.i ], [ 0, %bb.k ]
  %.sroa.0.0.i10.i.i.i.i.i = phi i16 [ 0, %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_3map3MapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterINtNtCsbZq13ASDQ8l_10font_types3raw9BigEndiantEEENCNvMs9_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB3p_15ClassDefFormat14iter0EEEINtB5_8FuseImplBY_E4nextCs5JazJsyow1H_14otl_normalizer.exit.thread.i.i.i.i.i ], [ 1, %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtBa_9enumerate9EnumerateINtNtNtBe_5slice4iter4IterINtNtCsbZq13ASDQ8l_10font_types3raw9BigEndiantEEENCNvMs9_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB2G_15ClassDefFormat14iter0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs5JazJsyow1H_14otl_normalizer.exit.i6.i.i.i.i.i ], [ 0, %bb.k ]
  %.sroa.3.0.insert.ext.i11.i.i.i.i.i = zext i32 %.sroa.3.0.i9.i.i.i.i.i to i48
  %.sroa.3.0.insert.shift.i12.i.i.i.i.i = shl nuw i48 %.sroa.3.0.insert.ext.i11.i.i.i.i.i, 16
  %.sroa.0.0.insert.ext.i13.i.i.i.i.i = zext nneg i16 %.sroa.0.0.i10.i.i.i.i.i to i48
  %.sroa.0.0.insert.insert.i14.i.i.i.i.i = or disjoint i48 %.sroa.3.0.insert.shift.i12.i.i.i.i.i, %.sroa.0.0.insert.ext.i13.i.i.i.i.i
  br label %bb.l

bb.l:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IterINtNtCsbZq13ASDQ8l_10font_types3raw9BigEndiantEEENCNvMs9_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB39_15ClassDefFormat14iter0ETNtNtB2j_8glyph_id9GlyphId16tENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5JazJsyow1H_14otl_normalizer.exit15.i.i.i.i.i, %.loopexit.i.i.i.i.i
  %.sroa.12.sroa.9.2.i = phi i16 [ %.sroa.12.sroa.9.4.i, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IterINtNtCsbZq13ASDQ8l_10font_types3raw9BigEndiantEEENCNvMs9_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB39_15ClassDefFormat14iter0ETNtNtB2j_8glyph_id9GlyphId16tENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5JazJsyow1H_14otl_normalizer.exit15.i.i.i.i.i ], [ %.sroa.12.sroa.9.1.i, %.loopexit.i.i.i.i.i ] ; 2 uses
  %.sroa.12.sroa.7.2.i = phi i64 [ %.sroa.12.sroa.7.4.i, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IterINtNtCsbZq13ASDQ8l_10font_types3raw9BigEndiantEEENCNvMs9_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB39_15ClassDefFormat14iter0ETNtNtB2j_8glyph_id9GlyphId16tENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5JazJsyow1H_14otl_normalizer.exit15.i.i.i.i.i ], [ %i.es, %.loopexit.i.i.i.i.i ] ; 2 uses
  %.sroa.12.sroa.0.2.i = phi ptr [ %.sroa.12.sroa.0.4.i, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IterINtNtCsbZq13ASDQ8l_10font_types3raw9BigEndiantEEENCNvMs9_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB39_15ClassDefFormat14iter0ETNtNtB2j_8glyph_id9GlyphId16tENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5JazJsyow1H_14otl_normalizer.exit15.i.i.i.i.i ], [ %.sroa.12.sroa.0.1.i, %.loopexit.i.i.i.i.i ] ; 2 uses
  %.sroa.23.1.i = phi i64 [ %.sroa.23.2.i, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IterINtNtCsbZq13ASDQ8l_10font_types3raw9BigEndiantEEENCNvMs9_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB39_15ClassDefFormat14iter0ETNtNtB2j_8glyph_id9GlyphId16tENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5JazJsyow1H_14otl_normalizer.exit15.i.i.i.i.i ], [ %.sroa.23.0.i, %.loopexit.i.i.i.i.i ] ; 2 uses
  %.sroa.19.1.i = phi ptr [ %.sroa.19.2.i, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IterINtNtCsbZq13ASDQ8l_10font_types3raw9BigEndiantEEENCNvMs9_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB39_15ClassDefFormat14iter0ETNtNtB2j_8glyph_id9GlyphId16tENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5JazJsyow1H_14otl_normalizer.exit15.i.i.i.i.i ], [ %.sroa.19.0.i, %.loopexit.i.i.i.i.i ] ; 2 uses
  %.sroa.8.1.i = phi ptr [ null, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IterINtNtCsbZq13ASDQ8l_10font_types3raw9BigEndiantEEENCNvMs9_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB39_15ClassDefFormat14iter0ETNtNtB2j_8glyph_id9GlyphId16tENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5JazJsyow1H_14otl_normalizer.exit15.i.i.i.i.i ], [ %i.er, %.loopexit.i.i.i.i.i ] ; 2 uses
  %.sroa.5.2.i = phi ptr [ %.sroa.5.4.i, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IterINtNtCsbZq13ASDQ8l_10font_types3raw9BigEndiantEEENCNvMs9_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB39_15ClassDefFormat14iter0ETNtNtB2j_8glyph_id9GlyphId16tENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5JazJsyow1H_14otl_normalizer.exit15.i.i.i.i.i ], [ %.sroa.5.1.i, %.loopexit.i.i.i.i.i ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i = phi i48 [ %.sroa.0.0.insert.insert.i14.i.i.i.i.i, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IterINtNtCsbZq13ASDQ8l_10font_types3raw9BigEndiantEEENCNvMs9_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB39_15ClassDefFormat14iter0ETNtNtB2j_8glyph_id9GlyphId16tENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5JazJsyow1H_14otl_normalizer.exit15.i.i.i.i.i ], [ %.sroa.0.0.insert.insert.i.le.i.i.i.i.i, %.loopexit.i.i.i.i.i ] ; 3 uses
  %.sroa.05.0.extract.trunc.i.i = trunc i48 %.sroa.0.0.i.i.i.i.i to i1
  %.sroa.05.2.extract.shift.i.i = lshr i48 %.sroa.0.0.i.i.i.i.i, 16
  %.sroa.05.2.extract.trunc.i.i = trunc nuw i48 %.sroa.05.2.extract.shift.i.i to i32
  %.sroa.05.0.extract.trunc.mask.i.i = and i48 %.sroa.0.0.i.i.i.i.i, 65535
  %.not6.i.i = icmp eq i48 %.sroa.05.0.extract.trunc.mask.i.i, 1
  %spec.select.i = select i1 %.not6.i.i, i64 %.sroa.0.0.i, i64 2 ; 2 uses
  br i1 %.sroa.05.0.extract.trunc.i.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtNtB8_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout16ClassRangeRecordEINtNtB4_3map3MapINtNtNtB8_3ops5range14RangeInclusivetENCNCNvMsa_B1M_NtB1M_15ClassDefFormat24iter00ENCB3J_0ETNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5JazJsyow1H_14otl_normalizer.exit.i.thread, label %.thread.i

.thread.i:                                        ; preds = %bb.l, %bb.h
  %.sroa.0.11610.i = phi i64 [ %spec.select.i, %bb.l ], [ 2, %bb.h ] ; 3 uses
  %.sroa.5.51608.i = phi ptr [ %.sroa.5.2.i, %bb.l ], [ %.sroa.5.0.i, %bb.h ] ; 3 uses
  %.sroa.8.41606.i = phi ptr [ %.sroa.8.1.i, %bb.l ], [ %.sroa.8.0.i, %bb.h ] ; 3 uses
  %.sroa.19.31604.i = phi ptr [ %.sroa.19.1.i, %bb.l ], [ %.sroa.19.0.i, %bb.h ] ; 3 uses
  %.sroa.23.31602.i = phi i64 [ %.sroa.23.1.i, %bb.l ], [ %.sroa.23.0.i, %bb.h ] ; 3 uses
  %.sroa.12.sroa.0.51600.i = phi ptr [ %.sroa.12.sroa.0.2.i, %bb.l ], [ %.sroa.12.sroa.0.0.i, %bb.h ] ; 3 uses
  %.sroa.12.sroa.7.51598.i = phi i64 [ %.sroa.12.sroa.7.2.i, %bb.l ], [ %.sroa.12.sroa.7.0.i, %bb.h ] ; 3 uses
  %.sroa.12.sroa.9.51596.i = phi i16 [ %.sroa.12.sroa.9.2.i, %bb.l ], [ %.sroa.12.sroa.9.0.i, %bb.h ] ; 3 uses
  %.not.i.i.i = icmp eq i8 %.sroa.104.0.i, -2
  br i1 %.not.i.i.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtNtB8_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout16ClassRangeRecordEINtNtB4_3map3MapINtNtNtB8_3ops5range14RangeInclusivetENCNCNvMsa_B1M_NtB1M_15ClassDefFormat24iter00ENCB3J_0ETNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5JazJsyow1H_14otl_normalizer.exit.thread.i, label %bb.m

bb.m:                                             ; preds = %.thread.i
  %.not.i232.i = icmp eq i8 %.sroa.73.0.i, -1
  br i1 %.not.i232.i, label %.lr.ph.i.i.i.i.preheader.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not.i.i.i.i.peel.i.i.i.i239.i = icmp ugt i16 %.sroa.30.sroa.18.0.i, %.sroa.30.sroa.24.0.i
  %i.fg = freeze i1 %.not.i.i.i.i.peel.i.i.i.i239.i
  %i.fh = add i8 %.sroa.30.sroa.30.0.i, -1
  %i.fi = icmp ult i8 %i.fh, 2
  %or.cond536.i = select i1 %i.fg, i1 true, i1 %i.fi
  br i1 %or.cond536.i, label %bb.o, label %.loopexit.i.i.i.i241.i

bb.o:                                             ; preds = %bb.n
  %.not.i5.peel.i.i.i.i261.i = icmp eq ptr %.sroa.30.sroa.0.0.i, null
  %i.fj = icmp eq ptr %.sroa.30.sroa.0.0.i, %.sroa.30.sroa.10.0.i
  %or.cond.i.i.i262.i = select i1 %.not.i5.peel.i.i.i.i261.i, i1 true, i1 %i.fj
  br i1 %or.cond.i.i.i262.i, label %.loopexit44.i.i.i.i270.i, label %.peel.next.i.i.i.i263.i

.peel.next.i.i.i.i263.i:                          ; preds = %bb.o, %bb.p
  %.sink63.i.i.i.i264.i = phi ptr [ %i.fk, %bb.p ], [ %.sroa.30.sroa.0.0.i, %bb.o ] ; 5 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.sink63.i.i.i.i264.i, i64 6 ; 4 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i265.i = load i16, ptr %.sink63.i.i.i.i264.i, align 1, !alias.scope !695, !noalias !696
  %i.fl = call i16 @llvm.bswap.i16(i16 %.sroa.01.0.copyload.i.i.i.i.i.i.i265.i) ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.sink63.i.i.i.i264.i, i64 2
  %.sroa.02.0.copyload.i.i.i.i.i.i.i266.i = load i16, ptr %i.fm, align 1, !alias.scope !695, !noalias !696
  %i.fn = call i16 @llvm.bswap.i16(i16 %.sroa.02.0.copyload.i.i.i.i.i.i.i266.i) ; 3 uses
  %.not.i.i.i.i.not.i.i.i.i267.i = icmp ugt i16 %i.fl, %i.fn
  br i1 %.not.i.i.i.i.not.i.i.i.i267.i, label %bb.p, label %.loopexit.i.i.i.i241.i

bb.p:                                             ; preds = %.peel.next.i.i.i.i263.i
  %i.fo = icmp eq ptr %i.fk, %.sroa.30.sroa.10.0.i
  br i1 %i.fo, label %.loopexit44.i.i.i.i270.i, label %.peel.next.i.i.i.i263.i, !llvm.loop !420

.loopexit.i.i.i.i241.i:                           ; preds = %.peel.next.i.i.i.i263.i, %bb.n
  %.sroa.30.sroa.24.7.i = phi i16 [ %.sroa.30.sroa.24.0.i, %bb.n ], [ %i.fn, %.peel.next.i.i.i.i263.i ]
  %.sroa.30.sroa.12.7.i = phi ptr [ %.sroa.30.sroa.12.0.i, %bb.n ], [ %.sink63.i.i.i.i264.i, %.peel.next.i.i.i.i263.i ] ; 2 uses
  %.sroa.30.sroa.0.7.i = phi ptr [ %.sroa.30.sroa.0.0.i, %bb.n ], [ %i.fk, %.peel.next.i.i.i.i263.i ]
  %.promoted40.sink73.i.i.i.i242.i = phi i16 [ %.sroa.30.sroa.18.0.i, %bb.n ], [ %i.fl, %.peel.next.i.i.i.i263.i ] ; 3 uses
  %i.fp = icmp eq i16 %.promoted40.sink73.i.i.i.i242.i, -1
  %i.fq = add i16 %.promoted40.sink73.i.i.i.i242.i, 1
  %i.fr = zext i1 %i.fp to i8
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.30.sroa.12.7.i, i64 4
  %.sroa.0.0.copyload.i.i.i.i.peel.i.i.i.i244.i = load i16, ptr %i.fs, align 1, !noalias !698
  %i.ft = call i16 @llvm.bswap.i16(i16 %.sroa.0.0.copyload.i.i.i.i.peel.i.i.i.i244.i)
  %i.fu = zext i16 %i.ft to i32
  %i.fv = shl nuw i32 %i.fu, 16
  %i.fw = zext i16 %.promoted40.sink73.i.i.i.i242.i to i32
  %i.fx = or disjoint i32 %i.fv, %i.fw
  %.sroa.3.0.insert.ext.i.le.i.i.i.i245.i = zext i32 %i.fx to i48
  %.sroa.3.0.insert.shift.i.le.i.i.i.i246.i = shl nuw i48 %.sroa.3.0.insert.ext.i.le.i.i.i.i245.i, 16
  %.sroa.0.0.insert.insert.i.le.i.i.i.i247.i = or disjoint i48 %.sroa.3.0.insert.shift.i.le.i.i.i.i246.i, 1
  br label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtNtB8_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout16ClassRangeRecordEINtNtB4_3map3MapINtNtNtB8_3ops5range14RangeInclusivetENCNCNvMsa_B1M_NtB1M_15ClassDefFormat24iter00ENCB3J_0ETNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5JazJsyow1H_14otl_normalizer.exit283.i

.loopexit44.i.i.i.i270.i:                         ; preds = %bb.p, %bb.o
  %.sroa.30.sroa.24.9.i = phi i16 [ %.sroa.30.sroa.24.0.i, %bb.o ], [ %i.fn, %bb.p ]
  %.sroa.30.sroa.18.7.i = phi i16 [ %.sroa.30.sroa.18.0.i, %bb.o ], [ %i.fl, %bb.p ]
  %.sroa.30.sroa.12.9.i = phi ptr [ %.sroa.30.sroa.12.0.i, %bb.o ], [ %.sink63.i.i.i.i264.i, %bb.p ]
  %.sroa.30.sroa.0.9.i = phi ptr [ %.sroa.30.sroa.0.0.i, %bb.o ], [ %i.fk, %bb.p ]
  %cond.i = icmp ne i8 %.sroa.73.0.i, 0
  %.not.i.i.i.i7.i.i.i.i272.i = icmp ugt i16 %.sroa.30.sroa.40.0.i, %.sroa.30.sroa.44.0.i
  %or.cond542.i = select i1 %cond.i, i1 true, i1 %.not.i.i.i.i7.i.i.i.i272.i
  br i1 %or.cond542.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_3ops5range14RangeInclusivetENCNCNvMsa_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB28_15ClassDefFormat24iter00ETNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5JazJsyow1H_14otl_normalizer.exit17.i.i.i.i276.i, label %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtBe_3ops5range14RangeInclusivetENCNCNvMsa_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB1F_15ClassDefFormat24iter00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtBY_8function6FnOnceTQB5_EE9call_onceCs5JazJsyow1H_14otl_normalizer.exit.i8.i.i.i.i273.i

_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtBe_3ops5range14RangeInclusivetENCNCNvMsa_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB1F_15ClassDefFormat24iter00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtBY_8function6FnOnceTQB5_EE9call_onceCs5JazJsyow1H_14otl_normalizer.exit.i8.i.i.i.i273.i: ; preds = %.loopexit44.i.i.i.i270.i
  %i.fy = icmp eq i16 %.sroa.30.sroa.40.0.i, -1
  %i.fz = add i16 %.sroa.30.sroa.40.0.i, 1
  %i.ga = zext i1 %i.fy to i8
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.30.sroa.38395.0.i, i64 4
  %.sroa.0.0.copyload.i.i.i.i10.i.i.i.i275.i = load i16, ptr %i.gb, align 1, !noalias !699
  %i.gc = call i16 @llvm.bswap.i16(i16 %.sroa.0.0.copyload.i.i.i.i10.i.i.i.i275.i)
  %i.gd = zext i16 %i.gc to i32
  %i.ge = shl nuw i32 %i.gd, 16
  %i.gf = zext i16 %.sroa.30.sroa.40.0.i to i32
  %i.gg = or disjoint i32 %i.ge, %i.gf
  br label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_3ops5range14RangeInclusivetENCNCNvMsa_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB28_15ClassDefFormat24iter00ETNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5JazJsyow1H_14otl_normalizer.exit17.i.i.i.i276.i

_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_3ops5range14RangeInclusivetENCNCNvMsa_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB28_15ClassDefFormat24iter00ETNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5JazJsyow1H_14otl_normalizer.exit17.i.i.i.i276.i: ; preds = %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtBe_3ops5range14RangeInclusivetENCNCNvMsa_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB1F_15ClassDefFormat24iter00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtBY_8function6FnOnceTQB5_EE9call_onceCs5JazJsyow1H_14otl_normalizer.exit.i8.i.i.i.i273.i, %.loopexit44.i.i.i.i270.i
  %.sroa.30.sroa.40.7.i = phi i16 [ %.sroa.30.sroa.40.0.i, %.loopexit44.i.i.i.i270.i ], [ %i.fz, %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtBe_3ops5range14RangeInclusivetENCNCNvMsa_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB1F_15ClassDefFormat24iter00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtBY_8function6FnOnceTQB5_EE9call_onceCs5JazJsyow1H_14otl_normalizer.exit.i8.i.i.i.i273.i ]
  %.sroa.73.7.i = phi i8 [ 2, %.loopexit44.i.i.i.i270.i ], [ %i.ga, %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtBe_3ops5range14RangeInclusivetENCNCNvMsa_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB1F_15ClassDefFormat24iter00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtBY_8function6FnOnceTQB5_EE9call_onceCs5JazJsyow1H_14otl_normalizer.exit.i8.i.i.i.i273.i ]
  %.sroa.3.0.i11.i.i.i.i277.i = phi i32 [ 0, %.loopexit44.i.i.i.i270.i ], [ %i.gg, %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtBe_3ops5range14RangeInclusivetENCNCNvMsa_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB1F_15ClassDefFormat24iter00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtBY_8function6FnOnceTQB5_EE9call_onceCs5JazJsyow1H_14otl_normalizer.exit.i8.i.i.i.i273.i ]
  %.sroa.0.0.i12.i.i.i.i278.i = phi i16 [ 0, %.loopexit44.i.i.i.i270.i ], [ 1, %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtBe_3ops5range14RangeInclusivetENCNCNvMsa_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB1F_15ClassDefFormat24iter00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtBY_8function6FnOnceTQB5_EE9call_onceCs5JazJsyow1H_14otl_normalizer.exit.i8.i.i.i.i273.i ]
  %.sroa.3.0.insert.ext.i13.i.i.i.i279.i = zext i32 %.sroa.3.0.i11.i.i.i.i277.i to i48
  %.sroa.3.0.insert.shift.i14.i.i.i.i280.i = shl nuw i48 %.sroa.3.0.insert.ext.i13.i.i.i.i279.i, 16
  %.sroa.0.0.insert.ext.i15.i.i.i.i281.i = zext nneg i16 %.sroa.0.0.i12.i.i.i.i278.i to i48
  %.sroa.0.0.insert.insert.i16.i.i.i.i282.i = or disjoint i48 %.sroa.3.0.insert.shift.i14.i.i.i.i280.i, %.sroa.0.0.insert.ext.i15.i.i.i.i281.i
  br label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtNtB8_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout16ClassRangeRecordEINtNtB4_3map3MapINtNtNtB8_3ops5range14RangeInclusivetENCNCNvMsa_B1M_NtB1M_15ClassDefFormat24iter00ENCB3J_0ETNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5JazJsyow1H_14otl_normalizer.exit283.i

_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtNtB8_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout16ClassRangeRecordEINtNtB4_3map3MapINtNtNtB8_3ops5range14RangeInclusivetENCNCNvMsa_B1M_NtB1M_15ClassDefFormat24iter00ENCB3J_0ETNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5JazJsyow1H_14otl_normalizer.exit283.i: ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_3ops5range14RangeInclusivetENCNCNvMsa_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB28_15ClassDefFormat24iter00ETNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5JazJsyow1H_14otl_normalizer.exit17.i.i.i.i276.i, %.loopexit.i.i.i.i241.i
  %.sroa.30.sroa.40.6.i = phi i16 [ %.sroa.30.sroa.40.7.i, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_3ops5range14RangeInclusivetENCNCNvMsa_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB28_15ClassDefFormat24iter00ETNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5JazJsyow1H_14otl_normalizer.exit17.i.i.i.i276.i ], [ %.sroa.30.sroa.40.0.i, %.loopexit.i.i.i.i241.i ] ; 2 uses
  %.sroa.30.sroa.30.7.i = phi i8 [ 2, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_3ops5range14RangeInclusivetENCNCNvMsa_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB28_15ClassDefFormat24iter00ETNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5JazJsyow1H_14otl_normalizer.exit17.i.i.i.i276.i ], [ %i.fr, %.loopexit.i.i.i.i241.i ] ; 2 uses
  %.sroa.30.sroa.24.8.i = phi i16 [ %.sroa.30.sroa.24.9.i, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_3ops5range14RangeInclusivetENCNCNvMsa_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB28_15ClassDefFormat24iter00ETNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5JazJsyow1H_14otl_normalizer.exit17.i.i.i.i276.i ], [ %.sroa.30.sroa.24.7.i, %.loopexit.i.i.i.i241.i ] ; 2 uses
  %.sroa.30.sroa.18.6.i = phi i16 [ %.sroa.30.sroa.18.7.i, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_3ops5range14RangeInclusivetENCNCNvMsa_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB28_15ClassDefFormat24iter00ETNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5JazJsyow1H_14otl_normalizer.exit17.i.i.i.i276.i ], [ %i.fq, %.loopexit.i.i.i.i241.i ] ; 2 uses
  %.sroa.30.sroa.12.8.i = phi ptr [ %.sroa.30.sroa.12.9.i, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_3ops5range14RangeInclusivetENCNCNvMsa_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB28_15ClassDefFormat24iter00ETNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5JazJsyow1H_14otl_normalizer.exit17.i.i.i.i276.i ], [ %.sroa.30.sroa.12.7.i, %.loopexit.i.i.i.i241.i ] ; 2 uses
  %.sroa.30.sroa.0.8.i = phi ptr [ %.sroa.30.sroa.0.9.i, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_3ops5range14RangeInclusivetENCNCNvMsa_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB28_15ClassDefFormat24iter00ETNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5JazJsyow1H_14otl_normalizer.exit17.i.i.i.i276.i ], [ %.sroa.30.sroa.0.7.i, %.loopexit.i.i.i.i241.i ] ; 2 uses
  %.sroa.73.6.i = phi i8 [ %.sroa.73.7.i, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_3ops5range14RangeInclusivetENCNCNvMsa_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB28_15ClassDefFormat24iter00ETNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5JazJsyow1H_14otl_normalizer.exit17.i.i.i.i276.i ], [ %.sroa.73.0.i, %.loopexit.i.i.i.i241.i ]
  %.sroa.0.0.i.i.i.i249.i = phi i48 [ %.sroa.0.0.insert.insert.i16.i.i.i.i282.i, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_3ops5range14RangeInclusivetENCNCNvMsa_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB28_15ClassDefFormat24iter00ETNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5JazJsyow1H_14otl_normalizer.exit17.i.i.i.i276.i ], [ %.sroa.0.0.insert.insert.i.le.i.i.i.i247.i, %.loopexit.i.i.i.i241.i ] ; 3 uses
  %.sroa.06.0.extract.trunc.i250.i = trunc i48 %.sroa.0.0.i.i.i.i249.i to i1
  %.sroa.06.2.extract.shift.i251.i = lshr i48 %.sroa.0.0.i.i.i.i249.i, 16
  %.sroa.06.2.extract.trunc.i252.i = trunc nuw i48 %.sroa.06.2.extract.shift.i251.i to i32
  %.sroa.06.0.extract.trunc.mask.i253.i = and i48 %.sroa.0.0.i.i.i.i249.i, 65535
  %.not7.i254.i = icmp eq i48 %.sroa.06.0.extract.trunc.mask.i253.i, 1
  %spec.select527.i = select i1 %.not7.i254.i, i8 %.sroa.73.6.i, i8 -1 ; 2 uses
  br i1 %.sroa.06.0.extract.trunc.i250.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtNtB8_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout16ClassRangeRecordEINtNtB4_3map3MapINtNtNtB8_3ops5range14RangeInclusivetENCNCNvMsa_B1M_NtB1M_15ClassDefFormat24iter00ENCB3J_0ETNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5JazJsyow1H_14otl_normalizer.exit.i.thread, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtNtB8_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout16ClassRangeRecordEINtNtB4_3map3MapINtNtNtB8_3ops5range14RangeInclusivetENCNCNvMsa_B1M_NtB1M_15ClassDefFormat24iter00ENCB3J_0ETNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5JazJsyow1H_14otl_normalizer.exit283.i, %bb.m
  %.sroa.73.81627.i = phi i8 [ %spec.select527.i, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtNtB8_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout16ClassRangeRecordEINtNtB4_3map3MapINtNtNtB8_3ops5range14RangeInclusivetENCNCNvMsa_B1M_NtB1M_15ClassDefFormat24iter00ENCB3J_0ETNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5JazJsyow1H_14otl_normalizer.exit283.i ], [ -1, %bb.m ]
  %.sroa.30.sroa.0.101626.i = phi ptr [ %.sroa.30.sroa.0.8.i, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtNtB8_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout16ClassRangeRecordEINtNtB4_3map3MapINtNtNtB8_3ops5range14RangeInclusivetENCNCNvMsa_B1M_NtB1M_15ClassDefFormat24iter00ENCB3J_0ETNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5JazJsyow1H_14otl_normalizer.exit283.i ], [ %.sroa.30.sroa.0.0.i, %bb.m ]
  %.sroa.30.sroa.12.101625.i = phi ptr [ %.sroa.30.sroa.12.8.i, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtNtB8_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout16ClassRangeRecordEINtNtB4_3map3MapINtNtNtB8_3ops5range14RangeInclusivetENCNCNvMsa_B1M_NtB1M_15ClassDefFormat24iter00ENCB3J_0ETNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5JazJsyow1H_14otl_normalizer.exit283.i ], [ %.sroa.30.sroa.12.0.i, %bb.m ]
  %.sroa.30.sroa.18.81624.i = phi i16 [ %.sroa.30.sroa.18.6.i, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtNtB8_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout16ClassRangeRecordEINtNtB4_3map3MapINtNtNtB8_3ops5range14RangeInclusivetENCNCNvMsa_B1M_NtB1M_15ClassDefFormat24iter00ENCB3J_0ETNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5JazJsyow1H_14otl_normalizer.exit283.i ], [ %.sroa.30.sroa.18.0.i, %bb.m ]
  %.sroa.30.sroa.24.101623.i = phi i16 [ %.sroa.30.sroa.24.8.i, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtNtB8_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout16ClassRangeRecordEINtNtB4_3map3MapINtNtNtB8_3ops5range14RangeInclusivetENCNCNvMsa_B1M_NtB1M_15ClassDefFormat24iter00ENCB3J_0ETNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5JazJsyow1H_14otl_normalizer.exit283.i ], [ %.sroa.30.sroa.24.0.i, %bb.m ]
  %.sroa.30.sroa.30.101622.i = phi i8 [ %.sroa.30.sroa.30.7.i, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtNtB8_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout16ClassRangeRecordEINtNtB4_3map3MapINtNtNtB8_3ops5range14RangeInclusivetENCNCNvMsa_B1M_NtB1M_15ClassDefFormat24iter00ENCB3J_0ETNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5JazJsyow1H_14otl_normalizer.exit283.i ], [ %.sroa.30.sroa.30.0.i, %bb.m ]
  %.sroa.30.sroa.40.81621.i = phi i16 [ %.sroa.30.sroa.40.6.i, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtNtB8_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout16ClassRangeRecordEINtNtB4_3map3MapINtNtNtB8_3ops5range14RangeInclusivetENCNCNvMsa_B1M_NtB1M_15ClassDefFormat24iter00ENCB3J_0ETNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5JazJsyow1H_14otl_normalizer.exit283.i ], [ %.sroa.30.sroa.40.0.i, %bb.m ]
  %switch1092.i = icmp ugt i8 %.sroa.27.0.i, -3
  br i1 %switch1092.i, label %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout16ClassRangeRecordEINtNtB7_3map3MapINtNtNtBb_3ops5range14RangeInclusivetENCNCNvMsa_B2c_NtB2c_15ClassDefFormat24iter00ENCB49_0EEEINtB5_8FuseImplBY_E4nextCs5JazJsyow1H_14otl_normalizer.exit.thread.i.i.i.i.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.i.i.i.preheader.i
  br i1 %or.cond538.i, label %bb.q, label %.loopexit.i.i.i.i189.i

bb.q:                                             ; preds = %.lr.ph.i
  br i1 %or.cond.i.i.i210.i, label %.loopexit44.i.i.i.i218.i, label %.peel.next.i.i.i.i211.i

.peel.next.i.i.i.i211.i:                          ; preds = %bb.q, %bb.r
  %.sink63.i.i.i.i212.i = phi ptr [ %i.gh, %bb.r ], [ %.sroa.26354.sroa.0.0.copyload.i, %bb.q ] ; 5 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.sink63.i.i.i.i212.i, i64 6 ; 4 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i213.i = load i16, ptr %.sink63.i.i.i.i212.i, align 1, !alias.scope !700, !noalias !701
  %i.gi = call i16 @llvm.bswap.i16(i16 %.sroa.01.0.copyload.i.i.i.i.i.i.i213.i) ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.sink63.i.i.i.i212.i, i64 2
  %.sroa.02.0.copyload.i.i.i.i.i.i.i214.i = load i16, ptr %i.gj, align 1, !alias.scope !700, !noalias !701
  %i.gk = call i16 @llvm.bswap.i16(i16 %.sroa.02.0.copyload.i.i.i.i.i.i.i214.i) ; 3 uses
  %.not.i.i.i.i.not.i.i.i.i215.i = icmp ugt i16 %i.gi, %i.gk
  br i1 %.not.i.i.i.i.not.i.i.i.i215.i, label %bb.r, label %.loopexit.i.i.i.i189.i

bb.r:                                             ; preds = %.peel.next.i.i.i.i211.i
  %i.gl = icmp eq ptr %i.gh, %.sroa.26354.sroa.4.0.copyload.i
  br i1 %i.gl, label %.loopexit44.i.i.i.i218.i, label %.peel.next.i.i.i.i211.i, !llvm.loop !420

.loopexit.i.i.i.i189.i:                           ; preds = %.peel.next.i.i.i.i211.i, %.lr.ph.i
  %.sroa.30.sroa.24.3.i = phi i16 [ %.sroa.26354.sroa.7.0.copyload.i, %.lr.ph.i ], [ %i.gk, %.peel.next.i.i.i.i211.i ]
  %.sroa.30.sroa.12.3.i = phi ptr [ %.sroa.26354.sroa.5.0.copyload.i, %.lr.ph.i ], [ %.sink63.i.i.i.i212.i, %.peel.next.i.i.i.i211.i ] ; 2 uses
  %.sroa.30.sroa.0.3.i = phi ptr [ %.sroa.26354.sroa.0.0.copyload.i, %.lr.ph.i ], [ %i.gh, %.peel.next.i.i.i.i211.i ]
  %.promoted40.sink73.i.i.i.i190.i = phi i16 [ %.sroa.26354.sroa.6.0.copyload.i, %.lr.ph.i ], [ %i.gi, %.peel.next.i.i.i.i211.i ] ; 3 uses
  %i.gm = icmp eq i16 %.promoted40.sink73.i.i.i.i190.i, -1
  %i.gn = add i16 %.promoted40.sink73.i.i.i.i190.i, 1
  %i.go = zext i1 %i.gm to i8
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.30.sroa.12.3.i, i64 4
  %.sroa.0.0.copyload.i.i.i.i.peel.i.i.i.i192.i = load i16, ptr %i.gp, align 1, !noalias !702
  %i.gq = call i16 @llvm.bswap.i16(i16 %.sroa.0.0.copyload.i.i.i.i.peel.i.i.i.i192.i)
  %i.gr = zext i16 %i.gq to i32
  %i.gs = shl nuw i32 %i.gr, 16
  %i.gt = zext i16 %.promoted40.sink73.i.i.i.i190.i to i32
  %i.gu = or disjoint i32 %i.gs, %i.gt
  %.sroa.3.0.insert.ext.i.le.i.i.i.i193.i = zext i32 %i.gu to i48
  %.sroa.3.0.insert.shift.i.le.i.i.i.i194.i = shl nuw i48 %.sroa.3.0.insert.ext.i.le.i.i.i.i193.i, 16
  %.sroa.0.0.insert.insert.i.le.i.i.i.i195.i = or disjoint i48 %.sroa.3.0.insert.shift.i.le.i.i.i.i194.i, 1
  br label %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtNtNtBe_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout16ClassRangeRecordEINtNtBa_3map3MapINtNtNtBe_3ops5range14RangeInclusivetENCNCNvMsa_B1t_NtB1t_15ClassDefFormat24iter00ENCB3q_0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtB2P_8function6FnOnceTQB5_EE9call_onceCs5JazJsyow1H_14otl_normalizer.exit.i196.i

.loopexit44.i.i.i.i218.i:                         ; preds = %bb.r, %bb.q
  %.sroa.30.sroa.24.5.i = phi i16 [ %.sroa.26354.sroa.7.0.copyload.i, %bb.q ], [ %i.gk, %bb.r ]
end_hunk_0
