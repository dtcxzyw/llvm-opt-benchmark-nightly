Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/glyphs2fontir-373f4832af3edbd1.glyphs2fontir.df9a899fe87b069f-cgu.02?download=true
inline.NumInlined: 1243
inline.NumDeleted: 736
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_5chain5ChainINtNtB8_6option8IntoIterTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEEINtNtB4_10filter_map9FilterMapINtNtB4_3map3MapINtNtNtCsbeZck1VjBmm_8indexmap3map4iter8IntoIterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTB1P_INtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerEEENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source19bracket_glyph_names0ENCNCNvB7v_33make_preliminary_glyph_categoriess0_0s_0EEB1O_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB7x_:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !2023)
  %i.r = load i16, ptr %i.d, align 8, !range !13, !alias.scope !2023, !noundef !5 ; 3 uses
  %i.s = icmp eq i16 %i.r, -2
  br i1 %i.s, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters5chain5ChainINtBE_8IntoIterTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEEINtNtB12_10filter_map9FilterMapINtNtB12_3map3MapINtNtNtCsbeZck1VjBmm_8indexmap3map4iter8IntoIterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTB1P_INtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerEEENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source19bracket_glyph_names0ENCNCNvB7x_33make_preliminary_glyph_categoriess0_0s_0EEEEB7z_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !2024)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.experimental.noalias.scope.decl(metadata !2025)
  %i.u = icmp eq i16 %i.r, -1
  br i1 %i.u, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtBE_8IntoIterTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEEEECsjceHdiZFn9b_13glyphs2fontir.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !2026)
  call void @llvm.experimental.noalias.scope.decl(metadata !2027)
  call void @llvm.experimental.noalias.scope.decl(metadata !2028)
  %i.v = icmp eq i16 %i.r, 0
  br i1 %i.v, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtBE_8IntoIterTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEEEECsjceHdiZFn9b_13glyphs2fontir.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !2029)
  call void @llvm.experimental.noalias.scope.decl(metadata !2030)
  call void @llvm.experimental.noalias.scope.decl(metadata !2031)
  call void @llvm.experimental.noalias.scope.decl(metadata !2032)
  %i.w = load i8, ptr %i.t, align 8, !range !11, !alias.scope !2033, !noundef !5
  %switch.i.i.i.i.i.i.i.i.i.i = icmp samesign ult i8 %i.w, 25
  br i1 %switch.i.i.i.i.i.i.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtBE_8IntoIterTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEEEECsjceHdiZFn9b_13glyphs2fontir.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2034)
  call void @llvm.experimental.noalias.scope.decl(metadata !2035)
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !2036, !nonnull !5, !noundef !5
  %i.z = atomicrmw sub ptr %i.y, i64 1 release, align 8, !noalias !2036
  %i.aa = icmp eq i64 %i.z, 1
  br i1 %i.aa, label %bb.q, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtBE_8IntoIterTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEEEECsjceHdiZFn9b_13glyphs2fontir.exit.i.i

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.x) #19
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtBE_8IntoIterTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEEEECsjceHdiZFn9b_13glyphs2fontir.exit.i.i unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load ptr, ptr %1, align 8, !alias.scope !2037, !noundef !5
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %.body, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtCsbeZck1VjBmm_8indexmap6BucketNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameINtB7_3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerEEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1)
          to label %.body unwind label %bb.u

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtBE_8IntoIterTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEEEECsjceHdiZFn9b_13glyphs2fontir.exit.i.i: ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m
  %i.ae = load ptr, ptr %1, align 8, !alias.scope !2038, !noundef !5
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters5chain5ChainINtBE_8IntoIterTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEEINtNtB12_10filter_map9FilterMapINtNtB12_3map3MapINtNtNtCsbeZck1VjBmm_8indexmap3map4iter8IntoIterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTB1P_INtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerEEENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source19bracket_glyph_names0ENCNCNvB7x_33make_preliminary_glyph_categoriess0_0s_0EEEEB7z_.exit, label %bb.t

bb.t:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtBE_8IntoIterTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEEEECsjceHdiZFn9b_13glyphs2fontir.exit.i.i
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtCsbeZck1VjBmm_8indexmap6BucketNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameINtB7_3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerEEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters5chain5ChainINtBE_8IntoIterTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEEINtNtB12_10filter_map9FilterMapINtNtB12_3map3MapINtNtNtCsbeZck1VjBmm_8indexmap3map4iter8IntoIterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTB1P_INtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerEEENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source19bracket_glyph_names0ENCNCNvB7x_33make_preliminary_glyph_categoriess0_0s_0EEEEB7z_.exit unwind label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.r, %bb.s, %bb.v
  %eh.lpad-body = phi { ptr, i32 } [ %i.ah, %bb.v ], [ %i.ab, %bb.s ], [ %i.ab, %bb.r ]
  store i16 -2, ptr %i.d, align 8
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEEECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c) #20
          to label %common.resume unwind label %bb.w

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters5chain5ChainINtBE_8IntoIterTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEEINtNtB12_10filter_map9FilterMapINtNtB12_3map3MapINtNtNtCsbeZck1VjBmm_8indexmap3map4iter8IntoIterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTB1P_INtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerEEENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source19bracket_glyph_names0ENCNCNvB7x_33make_preliminary_glyph_categoriess0_0s_0EEEEB7z_.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtBE_8IntoIterTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEEEECsjceHdiZFn9b_13glyphs2fontir.exit.i.i, %bb.l, %bb.t
  store i16 -2, ptr %i.d, align 8
  br label %bb.k

bb.w:                                             ; preds = %.body
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_5chain5ChainINtNtNtB6_7sources4once4OnceNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEINtNtB4_3map3MapIB2E_INtNtNtCsbeZck1VjBmm_8indexmap3map4iter8IntoIterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTB1S_INtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerEEENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source19bracket_glyph_names0ENCNCNvB6b_33make_preliminary_glyph_categoriess_00EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB6d_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 9 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %.sroa.0.i.i.i.i.i = alloca [24 x i8], align 8  ; 5 uses
  %.sroa.6.i.i.i.i.i = alloca [16 x i8], align 8  ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = load i8, ptr %1, align 8, !range !14, !noundef !5 ; 4 uses
  %.not = icmp eq i8 %i.f, -3
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2087)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2088)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2089)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2090)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2091
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2092)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2093)
  %.not.i.i.i = icmp eq i8 %i.f, -2
  br i1 %.not.i.i.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsjceHdiZFn9b_13glyphs2fontir.exit.thread.i.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsjceHdiZFn9b_13glyphs2fontir.exit.i.i

_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsjceHdiZFn9b_13glyphs2fontir.exit.thread.i.i: ; preds = %bb.b
  store i8 -1, ptr %i.d, align 8, !alias.scope !2092, !noalias !2094
  br label %bb.d

_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsjceHdiZFn9b_13glyphs2fontir.exit.i.i: ; preds = %bb.b
  %.sroa.6.0..sroa_idx8.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.6.0..sroa_idx.i.i.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.6.0..sroa_idx8.i.i.i, i64 23, i1 false), !alias.scope !2095, !noalias !2096
  %.not6.i.i.i = icmp eq i8 %i.f, -1              ; 2 uses
  %spec.store.select.i.i.i = select i1 %.not6.i.i.i, i8 -2, i8 -1
  store i8 %spec.store.select.i.i.i, ptr %1, align 8, !alias.scope !2097, !noalias !2098
  store i8 %i.f, ptr %i.d, align 8, !alias.scope !2092, !noalias !2094
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2099)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2100)
  br i1 %.not6.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsjceHdiZFn9b_13glyphs2fontir.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !alias.scope !2101, !noalias !2102
  br label %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain5ChainINtNtNtBc_7sources4once4OnceNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEINtNtBa_3map3MapIB2b_INtNtNtCsbeZck1VjBmm_8indexmap3map4iter8IntoIterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTB1p_INtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerEEENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source19bracket_glyph_names0ENCNCNvB5I_33make_preliminary_glyph_categoriess_00EENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB5K_.exit

bb.d:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsjceHdiZFn9b_13glyphs2fontir.exit.i.i, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsjceHdiZFn9b_13glyphs2fontir.exit.thread.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2103)
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !2102, !noalias !2104, !noundef !5
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2105)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2106
  invoke void @_RNvXso_NtNtCsbeZck1VjBmm_8indexmap3map4iterINtB5_8IntoIterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameINtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %.noexc.i.i.i unwind label %bb.h, !noalias !2107

.noexc.i.i.i:                                     ; preds = %bb.e
  %i.i = load i64, ptr %i.b, align 8, !range !12, !noalias !2106, !noundef !5
  %.not.i.i.i.i.i.i = icmp eq i64 %i.i, -1
  br i1 %.not.i.i.i.i.i.i, label %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtCsbeZck1VjBmm_8indexmap3map4iter8IntoIterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameINtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerEEENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source19bracket_glyph_names0ENtNtNtB9_6traits8iterator8Iterator4nextB4R_.exit.thread.i.i.i.i.i, label %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtCsbeZck1VjBmm_8indexmap3map4iter8IntoIterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameINtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerEEENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source19bracket_glyph_names0ENtNtNtB9_6traits8iterator8Iterator4nextB4R_.exit.i.i.i.i.i

_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtCsbeZck1VjBmm_8indexmap3map4iter8IntoIterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameINtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerEEENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source19bracket_glyph_names0ENtNtNtB9_6traits8iterator8Iterator4nextB4R_.exit.thread.i.i.i.i.i: ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2106
  br label %bb.g

_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtCsbeZck1VjBmm_8indexmap3map4iter8IntoIterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameINtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerEEENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source19bracket_glyph_names0ENtNtNtB9_6traits8iterator8Iterator4nextB4R_.exit.i.i.i.i.i: ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !noalias !2106
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !2108
  %.sroa.4.0..sroa_idx1.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.4.0.copyload2.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx1.i.i.i.i.i, align 8, !noalias !2108 ; 2 uses
  %.sroa.6.0..sroa_idx3.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx3.i.i.i.i.i, i64 16, i1 false), !noalias !2108
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a)
          to label %.noexc2.i.i.i unwind label %bb.h, !noalias !2107

.noexc2.i.i.i:                                    ; preds = %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtCsbeZck1VjBmm_8indexmap3map4iter8IntoIterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameINtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerEEENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source19bracket_glyph_names0ENtNtNtB9_6traits8iterator8Iterator4nextB4R_.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2106
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.4.0.copyload2.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.noexc2.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2109
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i.i.i, i64 24, i1 false), !noalias !2109
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i.i.i, i64 16, i1 false), !noalias !2109
  %.sroa.45.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  store i64 %.sroa.4.0.copyload2.i.i.i.i.i, ptr %.sroa.45.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2109
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i.i.i, i64 24, i1 false), !noalias !2110
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.45.0..sroa_idx.i.i.i.i.i)
          to label %.noexc3.i.i.i unwind label %bb.h, !noalias !2107

.noexc3.i.i.i:                                    ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2109
  br label %_RNCNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OnceNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEINtNtB8_3map3MapIB2f_INtNtNtCsbeZck1VjBmm_8indexmap3map4iter8IntoIterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTB1t_INtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerEEENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source19bracket_glyph_names0ENCNCNvB5M_33make_preliminary_glyph_categoriess_00EENtNtNtBa_6traits8iterator8Iterator4next0B5O_.exit.i.i.i

bb.g:                                             ; preds = %.noexc2.i.i.i, %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtCsbeZck1VjBmm_8indexmap3map4iter8IntoIterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameINtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerEEENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source19bracket_glyph_names0ENtNtNtB9_6traits8iterator8Iterator4nextB4R_.exit.thread.i.i.i.i.i
  store i8 -1, ptr %i.e, align 8, !alias.scope !2111, !noalias !2110
  br label %_RNCNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OnceNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEINtNtB8_3map3MapIB2f_INtNtNtCsbeZck1VjBmm_8indexmap3map4iter8IntoIterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTB1t_INtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerEEENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source19bracket_glyph_names0ENCNCNvB5M_33make_preliminary_glyph_categoriess_00EENtNtNtBa_6traits8iterator8Iterator4next0B5O_.exit.i.i.i

.thread:                                          ; preds = %bb.d
  store i8 -1, ptr %i.e, align 8, !alias.scope !2112, !noalias !2113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2091
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter7sources4once4OnceNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEEECsjceHdiZFn9b_13glyphs2fontir.exit.i.i

bb.h:                                             ; preds = %bb.f, %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtCsbeZck1VjBmm_8indexmap3map4iter8IntoIterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameINtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerEEENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source19bracket_glyph_names0ENtNtNtB9_6traits8iterator8Iterator4nextB4R_.exit.i.i.i.i.i, %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #20
          to label %common.resume unwind label %bb.i, !noalias !2114

_RNCNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OnceNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEINtNtB8_3map3MapIB2f_INtNtNtCsbeZck1VjBmm_8indexmap3map4iter8IntoIterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTB1t_INtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerEEENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source19bracket_glyph_names0ENCNCNvB5M_33make_preliminary_glyph_categoriess_00EENtNtNtBa_6traits8iterator8Iterator4next0B5O_.exit.i.i.i: ; preds = %bb.g, %.noexc3.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i)
  br label %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain5ChainINtNtNtBc_7sources4once4OnceNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEINtNtBa_3map3MapIB2b_INtNtNtCsbeZck1VjBmm_8indexmap3map4iter8IntoIterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTB1p_INtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerEEENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source19bracket_glyph_names0ENCNCNvB5I_33make_preliminary_glyph_categoriess_00EENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB5K_.exit

common.resume:                                    ; preds = %.body, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.h ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21, !noalias !2114
  unreachable

_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain5ChainINtNtNtBc_7sources4once4OnceNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEINtNtBa_3map3MapIB2b_INtNtNtCsbeZck1VjBmm_8indexmap3map4iter8IntoIterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTB1p_INtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerEEENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source19bracket_glyph_names0ENCNCNvB5I_33make_preliminary_glyph_categoriess_00EENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB5K_.exit: ; preds = %bb.c, %_RNCNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OnceNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEINtNtB8_3map3MapIB2f_INtNtNtCsbeZck1VjBmm_8indexmap3map4iter8IntoIterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTB1t_INtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerEEENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source19bracket_glyph_names0ENCNCNvB5M_33make_preliminary_glyph_categoriess_00EENtNtNtBa_6traits8iterator8Iterator4next0B5O_.exit.i.i.i
  %.pr = load i8, ptr %i.e, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2091
  %.not6 = icmp eq i8 %.pr, -1
  br i1 %.not6, label %bb.m, label %bb.l

bb.j:                                             ; preds = %bb.a
  store i8 -1, ptr %0, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.l:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters5chain5ChainINtNtNtB14_7sources4once4OnceNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEINtNtB12_3map3MapIB2O_INtNtNtCsbeZck1VjBmm_8indexmap3map4iter8IntoIterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTB22_INtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerEEENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source19bracket_glyph_names0ENCNCNvB6m_33make_preliminary_glyph_categoriess_00EEEEB6o_.exit, %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain5ChainINtNtNtBc_7sources4once4OnceNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEINtNtBa_3map3MapIB2b_INtNtNtCsbeZck1VjBmm_8indexmap3map4iter8IntoIterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTB1p_INtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerEEENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source19bracket_glyph_names0ENCNCNvB5I_33make_preliminary_glyph_categoriess_00EENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB5K_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain5ChainINtNtNtBc_7sources4once4OnceNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEINtNtBa_3map3MapIB2b_INtNtNtCsbeZck1VjBmm_8indexmap3map4iter8IntoIterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTB1p_INtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerEEENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source19bracket_glyph_names0ENCNCNvB5I_33make_preliminary_glyph_categoriess_00EENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB5K_.exit
  %.pre = load i8, ptr %1, align 8, !range !14, !alias.scope !2115 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2115)
  %i.m = icmp eq i8 %.pre, -3
  br i1 %i.m, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters5chain5ChainINtNtNtB14_7sources4once4OnceNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEINtNtB12_3map3MapIB2O_INtNtNtCsbeZck1VjBmm_8indexmap3map4iter8IntoIterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTB22_INtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerEEENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source19bracket_glyph_names0ENCNCNvB6m_33make_preliminary_glyph_categoriess_00EEEEB6o_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !2116)
  call void @llvm.experimental.noalias.scope.decl(metadata !2117)
  %i.n = icmp eq i8 %.pre, -2
  br i1 %i.n, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter7sources4once4OnceNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEEECsjceHdiZFn9b_13glyphs2fontir.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !2118)
  call void @llvm.experimental.noalias.scope.decl(metadata !2119)
  call void @llvm.experimental.noalias.scope.decl(metadata !2120)
  call void @llvm.experimental.noalias.scope.decl(metadata !2121)
  %i.o = icmp eq i8 %.pre, -1
  br i1 %i.o, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter7sources4once4OnceNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEEECsjceHdiZFn9b_13glyphs2fontir.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !2122)
  call void @llvm.experimental.noalias.scope.decl(metadata !2123)
  call void @llvm.experimental.noalias.scope.decl(metadata !2124)
  %switch.i.i.i.i.i.i.i.i.i.i = icmp samesign ult i8 %.pre, 25
  br i1 %switch.i.i.i.i.i.i.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter7sources4once4OnceNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEEECsjceHdiZFn9b_13glyphs2fontir.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2125)
  call void @llvm.experimental.noalias.scope.decl(metadata !2126)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !2127, !nonnull !5, !noundef !5
  %i.r = atomicrmw sub ptr %i.q, i64 1 release, align 8, !noalias !2127
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.r, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter7sources4once4OnceNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEEECsjceHdiZFn9b_13glyphs2fontir.exit.i.i

bb.r:                                             ; preds = %bb.q
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.p) #19
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter7sources4once4OnceNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEEECsjceHdiZFn9b_13glyphs2fontir.exit.i.i unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !2128, !noundef !5
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %.body, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtCsbeZck1VjBmm_8indexmap6BucketNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameINtB7_3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerEEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %.body unwind label %bb.v

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter7sources4once4OnceNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEEECsjceHdiZFn9b_13glyphs2fontir.exit.i.i: ; preds = %.thread, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !2129, !noundef !5
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters5chain5ChainINtNtNtB14_7sources4once4OnceNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEINtNtB12_3map3MapIB2O_INtNtNtCsbeZck1VjBmm_8indexmap3map4iter8IntoIterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTB22_INtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerEEENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source19bracket_glyph_names0ENCNCNvB6m_33make_preliminary_glyph_categoriess_00EEEEB6o_.exit, label %bb.u

bb.u:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter7sources4once4OnceNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEEECsjceHdiZFn9b_13glyphs2fontir.exit.i.i
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtCsbeZck1VjBmm_8indexmap6BucketNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameINtB7_3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerEEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.x)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters5chain5ChainINtNtNtB14_7sources4once4OnceNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEINtNtB12_3map3MapIB2O_INtNtNtCsbeZck1VjBmm_8indexmap3map4iter8IntoIterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTB22_INtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerEEENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source19bracket_glyph_names0ENCNCNvB6m_33make_preliminary_glyph_categoriess_00EEEEB6o_.exit unwind label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.s, %bb.t, %bb.w
  %eh.lpad-body = phi { ptr, i32 } [ %i.ab, %bb.w ], [ %i.t, %bb.t ], [ %i.t, %bb.s ]
  store i8 -3, ptr %1, align 8
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #20
          to label %common.resume unwind label %bb.x

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters5chain5ChainINtNtNtB14_7sources4once4OnceNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEINtNtB12_3map3MapIB2O_INtNtNtCsbeZck1VjBmm_8indexmap3map4iter8IntoIterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTB22_INtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerEEENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source19bracket_glyph_names0ENCNCNvB6m_33make_preliminary_glyph_categoriess_00EEEEB6o_.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter7sources4once4OnceNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEEECsjceHdiZFn9b_13glyphs2fontir.exit.i.i, %bb.m, %bb.u
  store i8 -3, ptr %1, align 8
  br label %bb.l

bb.x:                                             ; preds = %.body
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs3v5ql5U6hxj_6fontir2ir5ColorE7reserveCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !range !9, !noundef !5
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 1, i64 noundef 4)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !range !9, !noundef !5
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 1, i64 noundef 1)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXCsbDKHzkXHCUM_9hashbrownINtNtCsgCecv3eZDcN_5alloc3vec3VecINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEINtB2_10EquivalentBq_E10equivalentCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3 = load i64, ptr %i.b, align 8, !noundef !5
  %i.c = icmp eq i64 %.val1, %.val3
  br i1 %i.c, label %bb.b, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec10partial_eqINtB4_3VecINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEENtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eqCsjceHdiZFn9b_13glyphs2fontir.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5
  %i.f = tail call noundef zeroext i1 @_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEINtB5_14SlicePartialEqBC_E17equal_same_lengthCsjceHdiZFn9b_13glyphs2fontir(ptr noundef nonnull %.val, ptr noundef nonnull %.val2, i64 noundef %.val1)
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec10partial_eqINtB4_3VecINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEENtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eqCsjceHdiZFn9b_13glyphs2fontir.exit

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec10partial_eqINtB4_3VecINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEENtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eqCsjceHdiZFn9b_13glyphs2fontir.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBX_15NormalizedSpaceEEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtB6_6string6StringBU_ENCNvXs4_NtCsjceHdiZFn9b_13glyphs2fontir6sourceNtB4R_20KerningLocationsWorkINtNtBZ_13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB6p_6WorkIdNtNtB6r_5error5ErrorE4exec0EE9from_iterB4T_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [56 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2169)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2170
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2171
  store ptr %i.j, ptr %i.f, align 8, !noalias !2172
  %i.k = tail call { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1p_15NormalizedSpaceEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1), !noalias !2173 ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0        ; 2 uses
  %.not14.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not14.i.i.i.i, label %.loopexit19.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %bb.b
  %i.m = phi ptr [ %i.r, %bb.b ], [ %i.l, %bb.a ]
  %i.n = phi { ptr, ptr } [ %i.q, %bb.b ], [ %i.k, %bb.a ]
  %i.o = extractvalue { ptr, ptr } %i.n, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2174
  call void @_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvXs4_NtCsjceHdiZFn9b_13glyphs2fontir6sourceNtBW_20KerningLocationsWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB2Q_6WorkIdNtNtB2S_5error5ErrorE4exec0INtB7_5FnMutTTRNtNtCsgCecv3eZDcN_5alloc6string6StringRINtNtB24_6coords8LocationNtB59_15NormalizedSpaceEEEE8call_mutBY_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o), !noalias !2175
  %i.p = load i64, ptr %i.e, align 8, !range !12, !noalias !2174, !noundef !5 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.p, -1
  br i1 %.not.i.i.i.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2174
  %i.q = call { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1p_15NormalizedSpaceEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1), !noalias !2173 ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.q, 0        ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %.loopexit19.i, label %.lr.ph.i.i.i.i

.loopexit19.i:                                    ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2171
  store i64 0, ptr %0, align 8, !alias.scope !2169, !noalias !2176
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.s, align 8, !alias.scope !2169, !noalias !2176
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.t, align 8, !alias.scope !2169, !noalias !2176
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB14_15NormalizedSpaceEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtB6_6string6StringB11_ENCNvXs4_NtCsjceHdiZFn9b_13glyphs2fontir6sourceNtB57_20KerningLocationsWorkINtNtB16_13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB6G_6WorkIdNtNtB6I_5error5ErrorE4exec0EE9from_iterB59_.exit

bb.c:                                             ; preds = %bb.e, %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1s_15NormalizedSpaceEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBE_15NormalizedSpaceEECsjceHdiZFn9b_13glyphs2fontir.exit.i unwind label %bb.l, !noalias !2169

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.6.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2170
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx10.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i.i.i.i, i64 16, i1 false), !noalias !2170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2171
  store i64 %i.p, ptr %i.h, align 8, !noalias !2170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2170
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc.i unwind label %bb.c, !noalias !2169

.noexc.i:                                         ; preds = %bb.d
  %i.v = load i64, ptr %i.d, align 8, !range !7, !noalias !2170, !noundef !5
  %i.w = trunc nuw i64 %i.v to i1
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !21, !noalias !2170, !noundef !5 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.w, label %bb.e, label %bb.f, !prof !10

bb.e:                                             ; preds = %.noexc.i
  %i.aa = load i64, ptr %i.z, align 8, !noalias !2170
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.y, i64 %i.aa) #23
          to label %.noexc5.i unwind label %bb.c, !noalias !2169

.noexc5.i:                                        ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %.noexc.i
  %i.ab = load ptr, ptr %i.z, align 8, !noalias !2170, !nonnull !5, !noundef !5 ; 2 uses
  %i.ac = icmp ugt i64 %i.y, 3
  call void @llvm.assume(i1 %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2170
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !2169
  store i64 %i.y, ptr %i.i, align 8, !noalias !2170
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %i.ab, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2170
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !2170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2170
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false), !noalias !2169
  call void @llvm.experimental.noalias.scope.decl(metadata !2177)
  call void @llvm.experimental.noalias.scope.decl(metadata !2178)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2179
  store ptr %i.ad, ptr %i.b, align 8, !noalias !2180
  %i.ae = invoke { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1p_15NormalizedSpaceEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.g)
          to label %.noexc6.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !2169 ; 2 uses
end_hunk_0
