Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/glyphs2fontir-373f4832af3edbd1.glyphs2fontir.df9a899fe87b069f-cgu.14?download=true
inline.NumInlined: 281
inline.NumDeleted: 181
begin_hunk_0_@_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable14driftsort_mainTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB10_ENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBZ_7sort_byNCNvXs1z_NtNtNtB1X_11collections5btree3mapINtB2I_8BTreeMapB10_B10_EINtNtB8_7convert4FromABZ_j1_E4from0E0INtNtB1X_3vec3VecBZ_EECsjceHdiZFn9b_13glyphs2fontir:bb.a
  %i.l = extractvalue { ptr, i64 } %i.h, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.sroa.4.0 = phi i64 [ 85, %bb.a ], [ %i.k, %bb.d ]
  %.pn = phi ptr [ %i.b, %bb.a ], [ %i.l, %bb.d ]
  %i.m = icmp samesign ult i64 %1, 65
  invoke void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameBX_ENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBW_7sort_byNCNvXs1z_NtNtNtB1T_11collections5btree3mapINtB2E_8BTreeMapBX_BX_EINtNtBa_7convert4FromABW_j1_E4from0E0ECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef nonnull align 8 %.pn, i64 noundef %.sroa.4.0, i1 noundef zeroext %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.f unwind label %bb.c

bb.f:                                             ; preds = %bb.e
  br i1 %i.g, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB19_EEECsjceHdiZFn9b_13glyphs2fontir.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.h:                                             ; preds = %bb.f
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameBG_EENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB19_EEECsjceHdiZFn9b_13glyphs2fontir.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameBN_EENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17
  unreachable

common.resume:                                    ; preds = %bb.c, %bb.k, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.i ], [ %i.p, %bb.k ], [ %i.i, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB19_EEECsjceHdiZFn9b_13glyphs2fontir.exit: ; preds = %bb.h
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameBN_EENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  br label %bb.g

bb.k:                                             ; preds = %.thread, %bb.c
  %i.p = phi { ptr, i32 } [ %i.j, %.thread ], [ %i.i, %bb.c ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB19_EEECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #19
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable14driftsort_mainTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBZ_7sort_byNCINvXs1o_NtNtNtB2Q_11collections5btree3mapINtB3C_8BTreeMapB10_B1K_EINtNtNtNtB8_4iter6traits7collect12FromIteratorBZ_E9from_iterINtNtNtB4F_8adapters7flatten7FlatMapINtB3C_6ValuesNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader4font5GlyphEINtNtB5B_5chain5ChainINtNtB8_6option8IntoIterBZ_EINtNtB5B_10filter_map9FilterMapINtNtB5B_3map3MapINtNtNtCsbeZck1VjBmm_8indexmap3map4iter8IntoIterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTB10_INtNtB2Q_3vec3VecRNtB6T_5LayerEEENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source19bracket_glyph_names0ENCNCNvBbA_33make_preliminary_glyph_categoriess0_0s_0EENCBcD_s0_0EE0E0IBb0_BZ_EEBbC_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [4096 x i8], align 8              ; 3 uses
  %i.c = lshr i64 %1, 1
  %i.d = sub nuw nsw i64 %1, %i.c
  %i.e = tail call i64 @llvm.umin.i64(i64 %1, i64 250000)
  %i.f = tail call i64 @llvm.umax.i64(i64 %i.d, i64 %i.e) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = icmp samesign ugt i64 %i.f, 128          ; 3 uses
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @_RNvXs8_NtCsgCecv3eZDcN_5alloc5sliceINtNtB7_3vec3VecTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEEINtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable8BufGuardBN_E13with_capacityCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.f)
  %i.h = invoke { ptr, i64 } @_RNvXs8_NtCsgCecv3eZDcN_5alloc5sliceINtNtB7_3vec3VecTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEEINtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable8BufGuardBN_E19as_uninit_slice_mutCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.d unwind label %.thread    ; 2 uses

bb.c:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.g, label %bb.k, label %common.resume

.thread:                                          ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.k = extractvalue { ptr, i64 } %i.h, 1
  %i.l = extractvalue { ptr, i64 } %i.h, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.sroa.4.0 = phi i64 [ 128, %bb.a ], [ %i.k, %bb.d ]
  %.pn = phi ptr [ %i.b, %bb.a ], [ %i.l, %bb.d ]
  %i.m = icmp samesign ult i64 %1, 65
  invoke void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBW_7sort_byNCINvXs1o_NtNtNtB2N_11collections5btree3mapINtB3z_8BTreeMapBX_B1H_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtNtB4B_8adapters7flatten7FlatMapINtB3z_6ValuesNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader4font5GlyphEINtNtB5x_5chain5ChainINtNtBa_6option8IntoIterBW_EINtNtB5x_10filter_map9FilterMapINtNtB5x_3map3MapINtNtNtCsbeZck1VjBmm_8indexmap3map4iter8IntoIterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTBX_INtNtB2N_3vec3VecRNtB6P_5LayerEEENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source19bracket_glyph_names0ENCNCNvBbv_33make_preliminary_glyph_categoriess0_0s_0EENCBcy_s0_0EE0E0EBbx_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef nonnull align 8 %.pn, i64 noundef %.sroa.4.0, i1 noundef zeroext %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.f unwind label %bb.c

bb.f:                                             ; preds = %bb.e
  br i1 %i.g, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEEECsjceHdiZFn9b_13glyphs2fontir.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.h:                                             ; preds = %bb.f
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEEECsjceHdiZFn9b_13glyphs2fontir.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17
  unreachable

common.resume:                                    ; preds = %bb.c, %bb.k, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.i ], [ %i.p, %bb.k ], [ %i.i, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEEECsjceHdiZFn9b_13glyphs2fontir.exit: ; preds = %bb.h
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  br label %bb.g

bb.k:                                             ; preds = %.thread, %bb.c
  %i.p = phi { ptr, i32 } [ %i.j, %.thread ], [ %i.i, %bb.c ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEEECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #19
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1C_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBW_11sort_by_keyBX_NCNvXs7_B1C_INtB1C_8LocationB2h_EINtNtBa_7convert4FromINtNtB2K_3vec3VecBW_EE4from0E0ECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 4 uses
  %i.g = alloca [4 x i8], align 4                 ; 4 uses
  %i.h = alloca [4 x i8], align 4                 ; 4 uses
  %i.i = alloca [4 x i8], align 4                 ; 4 uses
  %i.j = alloca [4 x i8], align 4                 ; 4 uses
  %i.k = alloca [66 x i8], align 1                ; 4 uses
  %i.l = alloca [528 x i8], align 8               ; 4 uses
  %i.m = icmp samesign ult i64 %1, 2
  br i1 %i.m, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = udiv i64 4611686018427387904, %1
  %i.o = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.o, 0
  %i.p = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.n, %i.p         ; 2 uses
  %i.q = icmp samesign ult i64 %1, 4097
  br i1 %i.q, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = tail call noundef i64 @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.s = lshr i64 %1, 1
  %i.t = sub nuw nsw i64 %1, %i.s
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %i.u, %bb.d ], [ %i.r, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.es, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.eq, %bb.aa ] ; 3 uses
  %i.v = icmp samesign ult i64 %.sroa.09.0, %1    ; 2 uses
  br i1 %i.v, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1J_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyB14_NCNvXs7_B1J_INtB1J_8LocationB2o_EINtNtBa_7convert4FromINtNtB2R_3vec3VecB13_EE4from0E0ECsjceHdiZFn9b_13glyphs2fontir.exit
  %.sroa.021.0 = phi i8 [ %i.bt, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1J_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyB14_NCNvXs7_B1J_INtB1J_8LocationB2o_EINtNtBa_7convert4FromINtNtB2R_3vec3VecB13_EE4from0E0ECsjceHdiZFn9b_13glyphs2fontir.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1J_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyB14_NCNvXs7_B1J_INtB1J_8LocationB2o_EINtNtBa_7convert4FromINtNtB2R_3vec3VecB13_EE4from0E0ECsjceHdiZFn9b_13glyphs2fontir.exit ], [ 1, %bb.f ] ; 2 uses
  %i.w = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.y = sub nuw nsw i64 %1, %.sroa.09.0          ; 13 uses
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121)
  %.not.i31 = icmp ult i64 %i.y, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1I_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCNvXs7_B1I_INtB1I_8LocationB2n_EINtNtB8_7convert4FromINtNtB2Q_3vec3VecB12_EE4from0E0ECsjceHdiZFn9b_13glyphs2fontir.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.aa = icmp samesign ult i64 %i.y, 2
  br i1 %i.aa, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1a_11DesignSpaceEE7reverseCsjceHdiZFn9b_13glyphs2fontir.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.val7.i = load i32, ptr %i.ab, align 8, !alias.scope !121, !noalias !122 ; 3 uses
  %.val8.i = load i32, ptr %i.z, align 8, !alias.scope !121, !noalias !122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !123
  store i32 %.val7.i, ptr %i.j, align 4, !noalias !123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !123
  store i32 %.val8.i, ptr %i.i, align 4, !noalias !123
  %i.ac = load i32, ptr %i.j, align 4
  %i.ad = load i32, ptr %i.i, align 4
  %i.ae = tail call i32 @llvm.bswap.i32(i32 %i.ac)
  %i.af = tail call i32 @llvm.bswap.i32(i32 %i.ad)
  %i.ag = icmp uge i32 %i.ae, %i.af               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !123
  %.not28.i = icmp eq i64 %i.y, 2                 ; 2 uses
  br i1 %i.ag, label %.preheader17.i, label %.preheader.i

.preheader17.i:                                   ; preds = %bb.k
  br i1 %.not28.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1a_11DesignSpaceEE7reverseCsjceHdiZFn9b_13glyphs2fontir.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not28.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph23.i

.lr.ph.i:                                         ; preds = %.preheader17.i, %bb.l
  %.val6.i = phi i32 [ %.val5.i, %bb.l ], [ %.val7.i, %.preheader17.i ]
  %.sroa.01.0.i19.i = phi i64 [ %i.an, %bb.l ], [ 2, %.preheader17.i ] ; 4 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.sroa.01.0.i19.i
  %6 = add nsw i64 %.sroa.01.0.i19.i, -1
  %7 = icmp samesign ult i64 %6, %i.y
  tail call void @llvm.assume(i1 %7)
  %.val5.i = load i32, ptr %i.ah, align 8, !alias.scope !121, !noalias !122 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !123
  store i32 %.val5.i, ptr %i.h, align 4, !noalias !123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !123
  store i32 %.val6.i, ptr %i.g, align 4, !noalias !123
  %i.ai = load i32, ptr %i.h, align 4
  %i.aj = load i32, ptr %i.g, align 4
  %i.ak = tail call i32 @llvm.bswap.i32(i32 %i.ai)
  %i.al = tail call i32 @llvm.bswap.i32(i32 %i.aj)
  %i.am = icmp ult i32 %i.ak, %i.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !123
  br i1 %i.am, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1I_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCNvXs7_B1I_INtB1I_8LocationB2n_EINtNtB8_7convert4FromINtNtB2Q_3vec3VecB12_EE4from0E0ECsjceHdiZFn9b_13glyphs2fontir.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.an = add nuw nsw i64 %.sroa.01.0.i19.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.an, %i.y
  br i1 %exitcond.not.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1I_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCNvXs7_B1I_INtB1I_8LocationB2n_EINtNtB8_7convert4FromINtNtB2Q_3vec3VecB12_EE4from0E0ECsjceHdiZFn9b_13glyphs2fontir.exit.i, label %.lr.ph.i

.lr.ph23.i:                                       ; preds = %.preheader.i, %bb.m
  %.val4.i = phi i32 [ %.val.i, %bb.m ], [ %.val7.i, %.preheader.i ]
  %.sroa.01.1.i22.i = phi i64 [ %i.au, %bb.m ], [ 2, %.preheader.i ] ; 4 uses
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.sroa.01.1.i22.i
  %8 = add nsw i64 %.sroa.01.1.i22.i, -1
  %9 = icmp samesign ult i64 %8, %i.y
  tail call void @llvm.assume(i1 %9)
  %.val.i = load i32, ptr %i.ao, align 8, !alias.scope !121, !noalias !122 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !123
  store i32 %.val.i, ptr %i.f, align 4, !noalias !123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !123
  store i32 %.val4.i, ptr %i.e, align 4, !noalias !123
  %i.ap = load i32, ptr %i.f, align 4
  %i.aq = load i32, ptr %i.e, align 4
  %i.ar = tail call i32 @llvm.bswap.i32(i32 %i.ap)
  %i.as = tail call i32 @llvm.bswap.i32(i32 %i.aq)
  %i.at = icmp ult i32 %i.ar, %i.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !123
  br i1 %i.at, label %bb.m, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1I_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCNvXs7_B1I_INtB1I_8LocationB2n_EINtNtB8_7convert4FromINtNtB2Q_3vec3VecB12_EE4from0E0ECsjceHdiZFn9b_13glyphs2fontir.exit.i

bb.m:                                             ; preds = %.lr.ph23.i
  %i.au = add nuw nsw i64 %.sroa.01.1.i22.i, 1    ; 2 uses
  %exitcond31.not.i = icmp eq i64 %i.au, %i.y
  br i1 %exitcond31.not.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1I_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCNvXs7_B1I_INtB1I_8LocationB2n_EINtNtB8_7convert4FromINtNtB2Q_3vec3VecB12_EE4from0E0ECsjceHdiZFn9b_13glyphs2fontir.exit.i, label %.lr.ph23.i

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1I_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCNvXs7_B1I_INtB1I_8LocationB2n_EINtNtB8_7convert4FromINtNtB2Q_3vec3VecB12_EE4from0E0ECsjceHdiZFn9b_13glyphs2fontir.exit.i: ; preds = %bb.m, %.lr.ph23.i, %bb.l, %.lr.ph.i
  %.sroa.0.0.i.i = phi i64 [ %i.y, %bb.l ], [ %.sroa.01.0.i19.i, %.lr.ph.i ], [ %.sroa.01.1.i22.i, %.lr.ph23.i ], [ %i.y, %bb.m ] ; 5 uses
  %i.av = icmp samesign ule i64 %.sroa.0.0.i.i, %i.y
  tail call void @llvm.assume(i1 %i.av)
  %.not3.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not3.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1I_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCNvXs7_B1I_INtB1I_8LocationB2n_EINtNtB8_7convert4FromINtNtB2Q_3vec3VecB12_EE4from0E0ECsjceHdiZFn9b_13glyphs2fontir.exit.i
  %i.aw = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.aw, 0
  %or.cond.i = or i1 %i.ag, %.not.i.i.i
  br i1 %or.cond.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1a_11DesignSpaceEE7reverseCsjceHdiZFn9b_13glyphs2fontir.exit.i, label %.lr.ph.preheader.i.i.i

bb.o:                                             ; preds = %bb.i
  %i.ax = tail call i64 @llvm.umin.i64(i64 %.sroa.01.0, i64 range(i64 0, 576460752303423488) %i.y)
  %i.ay = shl nuw nsw i64 %i.ax, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1J_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyB14_NCNvXs7_B1J_INtB1J_8LocationB2o_EINtNtBa_7convert4FromINtNtB2R_3vec3VecB13_EE4from0E0ECsjceHdiZFn9b_13glyphs2fontir.exit

bb.p:                                             ; preds = %bb.i
  %i.az = tail call i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.y, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1L_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_11sort_by_keyB16_NCNvXs7_B1L_INtB1L_8LocationB2q_EINtNtBa_7convert4FromINtNtB2T_3vec3VecB15_EE4from0E0ECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 %i.z, i64 noundef %i.az, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #18
  %i.ba = shl nuw nsw i64 %i.az, 1
  %i.bb = or disjoint i64 %i.ba, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1J_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyB14_NCNvXs7_B1J_INtB1J_8LocationB2o_EINtNtBa_7convert4FromINtNtB2R_3vec3VecB13_EE4from0E0ECsjceHdiZFn9b_13glyphs2fontir.exit

_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1a_11DesignSpaceEE7reverseCsjceHdiZFn9b_13glyphs2fontir.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1G_11DesignSpaceEEECsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i, %.preheader17.i, %bb.n, %bb.j
  %.sroa.0.0.i14.i = phi i64 [ %i.y, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader17.i ], [ %.sroa.0.0.i435054.i, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1G_11DesignSpaceEEECsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i ]
  %i.bc = shl nuw nsw i64 %.sroa.0.0.i14.i, 1
  %i.bd = or disjoint i64 %i.bc, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1J_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyB14_NCNvXs7_B1J_INtB1J_8LocationB2o_EINtNtBa_7convert4FromINtNtB2R_3vec3VecB13_EE4from0E0ECsjceHdiZFn9b_13glyphs2fontir.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.be = phi i64 [ %i.aw, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i435054.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.sroa.0.0.i435054.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1G_11DesignSpaceEEECsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.bk, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1G_11DesignSpaceEEECsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.bg = xor i64 %.sroa.0.017.i.i.i, -1
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.sroa.0.017.i.i.i
  %i.bi = getelementptr [16 x i8], ptr %i.bf, i64 %i.bg
  invoke void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsjceHdiZFn9b_13glyphs2fontir(ptr noundef nonnull %i.bh, ptr noundef nonnull %i.bi, i64 noundef 2)
          to label %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1G_11DesignSpaceEEECsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i unwind label %bb.q, !noalias !122

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #17, !noalias !122
  unreachable

_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1G_11DesignSpaceEEECsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bk = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bk, %i.be
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1a_11DesignSpaceEE7reverseCsjceHdiZFn9b_13glyphs2fontir.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1J_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyB14_NCNvXs7_B1J_INtB1J_8LocationB2o_EINtNtBa_7convert4FromINtNtB2R_3vec3VecB13_EE4from0E0ECsjceHdiZFn9b_13glyphs2fontir.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1a_11DesignSpaceEE7reverseCsjceHdiZFn9b_13glyphs2fontir.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.bd, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1a_11DesignSpaceEE7reverseCsjceHdiZFn9b_13glyphs2fontir.exit.i ], [ %i.bb, %bb.p ], [ %i.ay, %bb.o ] ; 2 uses
  %i.bl = lshr i64 %.sroa.023.0, 1
  %i.bm = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bn = sub nsw i64 %factor, %i.bl
  %i.bo = add nuw i64 %i.bm, %factor
  %i.bp = mul i64 %i.bn, %.sroa.0.0
  %i.bq = mul i64 %i.bo, %.sroa.0.0
  %i.br = xor i64 %i.bq, %i.bp
  %i.bs = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.br, i1 false)
  %i.bt = trunc nuw nsw i64 %i.bs to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1M_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCNvXs7_B1M_INtB1M_8LocationB2r_EINtNtBa_7convert4FromINtNtB2U_3vec3VecB16_EE4from0E0ECsjceHdiZFn9b_13glyphs2fontir.exit
  %.sroa.02.144 = phi i64 [ %.sroa.02.0, %.lr.ph ], [ %i.bu, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1M_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCNvXs7_B1M_INtB1M_8LocationB2r_EINtNtBa_7convert4FromINtNtB2U_3vec3VecB16_EE4from0E0ECsjceHdiZFn9b_13glyphs2fontir.exit ] ; 2 uses
  %.sroa.023.143 = phi i64 [ %.sroa.023.0, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1M_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCNvXs7_B1M_INtB1M_8LocationB2r_EINtNtBa_7convert4FromINtNtB2U_3vec3VecB16_EE4from0E0ECsjceHdiZFn9b_13glyphs2fontir.exit ] ; 4 uses
  %i.bu = add i64 %.sroa.02.144, -1               ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !noundef !4
  %.not28 = icmp ult i8 %i.bw, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1M_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCNvXs7_B1M_INtB1M_8LocationB2r_EINtNtBa_7convert4FromINtNtB2U_3vec3VecB16_EE4from0E0ECsjceHdiZFn9b_13glyphs2fontir.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.143, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1M_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCNvXs7_B1M_INtB1M_8LocationB2r_EINtNtBa_7convert4FromINtNtB2U_3vec3VecB16_EE4from0E0ECsjceHdiZFn9b_13glyphs2fontir.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.144, %bb.r ], [ 1, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1M_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCNvXs7_B1M_INtB1M_8LocationB2r_EINtNtBa_7convert4FromINtNtB2U_3vec3VecB16_EE4from0E0ECsjceHdiZFn9b_13glyphs2fontir.exit ] ; 3 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.by, align 1
  br i1 %i.v, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.bu
  %i.ca = load i64, ptr %i.bz, align 8, !noundef !4 ; 3 uses
  %i.cb = lshr i64 %i.ca, 1                       ; 8 uses
  %i.cc = lshr i64 %.sroa.023.143, 1              ; 6 uses
  %i.cd = add nuw i64 %i.cb, %i.cc                ; 4 uses
  %i.ce = sub i64 %.sroa.09.0, %i.cd
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ce ; 6 uses
  %i.cg = icmp samesign ugt i64 %i.cd, %3
  %i.ch = trunc i64 %.sroa.023.143 to i1
  %i.ci = or i64 %i.ca, %.sroa.023.143
  %i.cj = trunc i64 %i.ci to i1
  %or.cond3.i = or i1 %i.cg, %i.cj
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ck = trunc i64 %i.ca to i1
  br i1 %i.ck, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.cl = shl nuw nsw i64 %i.cd, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1M_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCNvXs7_B1M_INtB1M_8LocationB2r_EINtNtBa_7convert4FromINtNtB2U_3vec3VecB16_EE4from0E0ECsjceHdiZFn9b_13glyphs2fontir.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.ch, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.cm = or i64 %i.cb, 1
  %i.cn = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cm, i1 true)
  %i.co = trunc nuw nsw i64 %i.cn to i32
  %i.cp = shl nuw nsw i32 %i.co, 1
  %i.cq = xor i32 %i.cp, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1L_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_11sort_by_keyB16_NCNvXs7_B1L_INtB1L_8LocationB2q_EINtNtBa_7convert4FromINtNtB2T_3vec3VecB15_EE4from0E0ECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 %i.cf, i64 noundef range(i64 0, 576460752303423488) %i.cb, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.cq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #18
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %i.cb
  %i.cs = or i64 %i.cc, 1
  %i.ct = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cs, i1 true)
  %i.cu = trunc nuw nsw i64 %i.ct to i32
  %i.cv = shl nuw nsw i32 %i.cu, 1
  %i.cw = xor i32 %i.cv, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1L_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_11sort_by_keyB16_NCNvXs7_B1L_INtB1L_8LocationB2q_EINtNtBa_7convert4FromINtNtB2T_3vec3VecB15_EE4from0E0ECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 %i.cr, i64 noundef range(i64 0, 576460752303423488) %i.cc, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.cw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #18
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  %i.cx = icmp eq i64 %i.cb, 0
  %i.cy = icmp eq i64 %i.cc, 0
  %or.cond.i33 = or i1 %i.cy, %i.cx
  br i1 %or.cond.i33, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1D_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_11sort_by_keyBY_NCNvXs7_B1D_INtB1D_8LocationB2i_EINtNtBa_7convert4FromINtNtB2L_3vec3VecBX_EE4from0E0ECsjceHdiZFn9b_13glyphs2fontir.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cz = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %i.cb, i64 %i.cc) ; 2 uses
  %i.da = icmp samesign ult i64 %3, %i.cz
  br i1 %i.da, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1D_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_11sort_by_keyBY_NCNvXs7_B1D_INtB1D_8LocationB2i_EINtNtBa_7convert4FromINtNtB2L_3vec3VecBX_EE4from0E0ECsjceHdiZFn9b_13glyphs2fontir.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %i.cb ; 3 uses
  %.not.i34 = icmp samesign ugt i64 %i.cb, %i.cc  ; 2 uses
  %spec.select.i = select i1 %.not.i34, ptr %i.db, ptr %i.cf
  %i.dc = shl nuw nsw i64 %i.cz, 4                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.dc, i1 false), !alias.scope !126
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 %i.dc ; 3 uses
  br i1 %.not.i34, label %.preheader.i35, label %.lr.ph.i.i

.preheader.i35:                                   ; preds = %.critedge.i, %.preheader.i35
  %i.de = phi ptr [ %i.ds, %.preheader.i35 ], [ %i.dd, %.critedge.i ]
  %i.df = phi ptr [ %i.dq, %.preheader.i35 ], [ %i.db, %.critedge.i ]
  %.sroa.0.0.i.i36 = phi ptr [ %i.di, %.preheader.i35 ], [ %i.x, %.critedge.i ]
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 -16 ; 3 uses
  %i.dh = getelementptr inbounds i8, ptr %i.de, i64 -16 ; 3 uses
  %i.di = getelementptr inbounds i8, ptr %.sroa.0.0.i.i36, i64 -16 ; 2 uses
  %.val.i.i = load i32, ptr %i.dh, align 8, !alias.scope !125, !noalias !127
  %.val12.i.i = load i32, ptr %i.dg, align 8, !alias.scope !124, !noalias !128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !129
  store i32 %.val.i.i, ptr %i.d, align 4, !noalias !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !129
  store i32 %.val12.i.i, ptr %i.c, align 4, !noalias !129
  %i.dj = load i32, ptr %i.d, align 4
  %i.dk = load i32, ptr %i.c, align 4
  %i.dl = tail call i32 @llvm.bswap.i32(i32 %i.dj)
  %i.dm = tail call i32 @llvm.bswap.i32(i32 %i.dk)
  %i.dn = tail call i32 @llvm.ucmp.i32.i32(i32 %i.dl, i32 %i.dm) ; 2 uses
  %i.do = icmp sgt i32 %i.dn, -1                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !129
  %..i.i = select i1 %i.do, ptr %i.dh, ptr %i.dg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.di, ptr noundef nonnull align 8 dereferenceable(16) %..i.i, i64 16, i1 false), !alias.scope !126, !noalias !130
  %i.dp = zext i1 %i.do to i64
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %i.dp ; 3 uses
  %.lobit.i.i = lshr i32 %i.dn, 31
  %i.dr = zext nneg i32 %.lobit.i.i to i64
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %i.dh, i64 %i.dr ; 3 uses
  %i.dt = icmp eq ptr %i.dq, %i.cf
  %i.du = icmp eq ptr %i.ds, %2
  %or.cond.i.i = select i1 %i.dt, i1 true, i1 %i.du
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1Q_11DesignSpaceEEE10merge_downNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1a_11sort_by_keyB1b_NCNvXs7_B1Q_INtB1Q_8LocationB2v_EINtNtBb_7convert4FromINtNtB3b_3vec3VecB1a_EE4from0E0ECsjceHdiZFn9b_13glyphs2fontir.exit.i, label %.preheader.i35

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.dv = phi ptr [ %i.eh, %.lr.ph.i.i ], [ %i.cf, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.eg, %.lr.ph.i.i ], [ %i.db, %.critedge.i ] ; 3 uses
  %i.dw = phi ptr [ %i.ee, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 3 uses
  %.sroa.0.0.val.i.i = load i32, ptr %.sroa.0.02.i.i, align 8, !alias.scope !124, !noalias !131
  %.val.i18.i = load i32, ptr %i.dw, align 8, !alias.scope !125, !noalias !132
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !133
  store i32 %.sroa.0.0.val.i.i, ptr %i.b, align 4, !noalias !133
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !133
  store i32 %.val.i18.i, ptr %i.a, align 4, !noalias !133
  %i.dx = load i32, ptr %i.b, align 4
  %i.dy = load i32, ptr %i.a, align 4
  %i.dz = tail call i32 @llvm.bswap.i32(i32 %i.dx)
  %i.ea = tail call i32 @llvm.bswap.i32(i32 %i.dy)
  %i.eb = tail call i32 @llvm.ucmp.i32.i32(i32 %i.dz, i32 %i.ea) ; 2 uses
  %i.ec = icmp sgt i32 %i.eb, -1                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !133
  %.sroa.05.0.i.i = select i1 %i.ec, ptr %i.dw, ptr %.sroa.0.02.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dv, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.0.i.i, i64 16, i1 false), !alias.scope !126, !noalias !134
  %i.ed = zext i1 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %i.dw, i64 %i.ed ; 3 uses
  %.lobit.i19.i = lshr i32 %i.eb, 31
  %i.ef = zext nneg i32 %.lobit.i19.i to i64
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.02.i.i, i64 %i.ef ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dv, i64 16 ; 2 uses
  %i.ei = icmp ne ptr %i.ee, %i.dd
  %i.ej = icmp ne ptr %i.eg, %i.x
  %or.cond.i20.i = select i1 %i.ei, i1 %i.ej, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1Q_11DesignSpaceEEE10merge_downNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1a_11sort_by_keyB1b_NCNvXs7_B1Q_INtB1Q_8LocationB2v_EINtNtBb_7convert4FromINtNtB3b_3vec3VecB1a_EE4from0E0ECsjceHdiZFn9b_13glyphs2fontir.exit.i

_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1Q_11DesignSpaceEEE10merge_downNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1a_11sort_by_keyB1b_NCNvXs7_B1Q_INtB1Q_8LocationB2v_EINtNtBb_7convert4FromINtNtB3b_3vec3VecB1a_EE4from0E0ECsjceHdiZFn9b_13glyphs2fontir.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i35
  %.sroa.13.1.i = phi ptr [ %i.dq, %.preheader.i35 ], [ %i.eh, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.ds, %.preheader.i35 ], [ %i.dd, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i35 ], [ %i.ee, %.lr.ph.i.i ] ; 2 uses
  %i.ek = ptrtoint ptr %.sroa.7.0.i to i64
  %i.el = ptrtoint ptr %.sroa.0.1.i to i64
  %i.em = sub nuw i64 %i.ek, %i.el
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.em, i1 false), !alias.scope !126, !noalias !135
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1D_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_11sort_by_keyBY_NCNvXs7_B1D_INtB1D_8LocationB2i_EINtNtBa_7convert4FromINtNtB2L_3vec3VecBX_EE4from0E0ECsjceHdiZFn9b_13glyphs2fontir.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1D_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_11sort_by_keyBY_NCNvXs7_B1D_INtB1D_8LocationB2i_EINtNtBa_7convert4FromINtNtB2L_3vec3VecBX_EE4from0E0ECsjceHdiZFn9b_13glyphs2fontir.exit: ; preds = %bb.y, %bb.z, %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1Q_11DesignSpaceEEE10merge_downNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1a_11sort_by_keyB1b_NCNvXs7_B1Q_INtB1Q_8LocationB2v_EINtNtBb_7convert4FromINtNtB3b_3vec3VecB1a_EE4from0E0ECsjceHdiZFn9b_13glyphs2fontir.exit.i
  %i.en = shl nuw nsw i64 %i.cd, 1
  %i.eo = or disjoint i64 %i.en, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1M_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCNvXs7_B1M_INtB1M_8LocationB2r_EINtNtBa_7convert4FromINtNtB2U_3vec3VecB16_EE4from0E0ECsjceHdiZFn9b_13glyphs2fontir.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1M_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCNvXs7_B1M_INtB1M_8LocationB2r_EINtNtBa_7convert4FromINtNtB2U_3vec3VecB16_EE4from0E0ECsjceHdiZFn9b_13glyphs2fontir.exit: ; preds = %bb.u, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1D_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_11sort_by_keyBY_NCNvXs7_B1D_INtB1D_8LocationB2i_EINtNtBa_7convert4FromINtNtB2L_3vec3VecBX_EE4from0E0ECsjceHdiZFn9b_13glyphs2fontir.exit
  %.sroa.0.0.i = phi i64 [ %i.eo, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1D_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_11sort_by_keyBY_NCNvXs7_B1D_INtB1D_8LocationB2i_EINtNtBa_7convert4FromINtNtB2L_3vec3VecBX_EE4from0E0ECsjceHdiZFn9b_13glyphs2fontir.exit ], [ %i.cl, %bb.u ] ; 2 uses
  %i.ep = icmp ugt i64 %i.bu, 1
  br i1 %i.ep, label %bb.r, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.eq = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.er = lshr i64 %.sroa.018.0, 1
  %i.es = add nuw nsw i64 %i.er, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.et = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.et, 0
  br i1 %.not30, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.eu = or i64 %1, 1
  %i.ev = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.eu, i1 true)
  %i.ew = trunc nuw nsw i64 %i.ev to i32
  %i.ex = shl nuw nsw i32 %i.ew, 1
  %i.ey = xor i32 %i.ex, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1L_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_11sort_by_keyB16_NCNvXs7_B1L_INtB1L_8LocationB2q_EINtNtBa_7convert4FromINtNtB2T_3vec3VecB15_EE4from0E0ECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.ey, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #18
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1D_15NormalizedSpaceEB1A_EENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBW_7sort_byNCINvXs1o_NtNtNtB2U_11collections5btree3mapINtB3G_8BTreeMapBX_B1z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtNtB4I_8adapters10filter_map9FilterMapINtNtB8_4iter4IterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source15condset_to_nbox0EE0E0EB7z_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %i.k, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ei, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.eg, %bb.aa ] ; 3 uses
  %i.l = icmp samesign ult i64 %.sroa.09.0, %1    ; 2 uses
  br i1 %i.l, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1K_15NormalizedSpaceEB1H_EENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB31_11collections5btree3mapINtB3O_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4R_8adapters10filter_map9FilterMapINtNtB8_4iter4IterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source15condset_to_nbox0EE0E0EB7J_.exit
  %.sroa.021.0 = phi i8 [ %i.bj, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1K_15NormalizedSpaceEB1H_EENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB31_11collections5btree3mapINtB3O_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4R_8adapters10filter_map9FilterMapINtNtB8_4iter4IterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source15condset_to_nbox0EE0E0EB7J_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1K_15NormalizedSpaceEB1H_EENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB31_11collections5btree3mapINtB3O_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4R_8adapters10filter_map9FilterMapINtNtB8_4iter4IterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source15condset_to_nbox0EE0E0EB7J_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.m = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.o = sub nuw nsw i64 %1, %.sroa.09.0          ; 13 uses
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  %.not.i31 = icmp ult i64 %i.o, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1J_15NormalizedSpaceEB1G_EENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB30_11collections5btree3mapINtB3N_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4Q_8adapters10filter_map9FilterMapINtNtB6_4iter4IterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source15condset_to_nbox0EE0E0EB7I_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.q = icmp samesign ult i64 %i.o, 2
  br i1 %i.q, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1b_15NormalizedSpaceEB18_EE7reverseCsjceHdiZFn9b_13glyphs2fontir.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.s = load i32, ptr %i.r, align 8
  %i.t = load i32, ptr %i.p, align 8
  %i.u = tail call i32 @llvm.bswap.i32(i32 %i.s)
  %i.v = tail call i32 @llvm.bswap.i32(i32 %i.t)
  %i.w = icmp uge i32 %i.u, %i.v                  ; 2 uses
  %.not23.i = icmp eq i64 %i.o, 2                 ; 2 uses
  br i1 %i.w, label %.preheader12.i, label %.preheader.i

.preheader12.i:                                   ; preds = %bb.k
  br i1 %.not23.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1b_15NormalizedSpaceEB18_EE7reverseCsjceHdiZFn9b_13glyphs2fontir.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not23.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph18.i

.lr.ph.i:                                         ; preds = %.preheader12.i, %bb.l
  %.sroa.01.0.i14.i = phi i64 [ %i.ad, %bb.l ], [ 2, %.preheader12.i ] ; 4 uses
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %.sroa.01.0.i14.i
  %6 = add nsw i64 %.sroa.01.0.i14.i, -1          ; 2 uses
  %7 = icmp samesign ult i64 %6, %i.o
  tail call void @llvm.assume(i1 %7)
  %8 = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %6
  %i.y = load i32, ptr %i.x, align 8
  %i.z = load i32, ptr %8, align 8
  %i.aa = tail call i32 @llvm.bswap.i32(i32 %i.y)
  %i.ab = tail call i32 @llvm.bswap.i32(i32 %i.z)
  %i.ac = icmp ult i32 %i.aa, %i.ab
  br i1 %i.ac, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1J_15NormalizedSpaceEB1G_EENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB30_11collections5btree3mapINtB3N_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4Q_8adapters10filter_map9FilterMapINtNtB6_4iter4IterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source15condset_to_nbox0EE0E0EB7I_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.ad = add nuw nsw i64 %.sroa.01.0.i14.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ad, %i.o
  br i1 %exitcond.not.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1J_15NormalizedSpaceEB1G_EENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB30_11collections5btree3mapINtB3N_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4Q_8adapters10filter_map9FilterMapINtNtB6_4iter4IterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source15condset_to_nbox0EE0E0EB7I_.exit.i, label %.lr.ph.i

.lr.ph18.i:                                       ; preds = %.preheader.i, %bb.m
  %.sroa.01.1.i17.i = phi i64 [ %i.ak, %bb.m ], [ 2, %.preheader.i ] ; 4 uses
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %.sroa.01.1.i17.i
  %9 = add nsw i64 %.sroa.01.1.i17.i, -1          ; 2 uses
  %10 = icmp samesign ult i64 %9, %i.o
  tail call void @llvm.assume(i1 %10)
  %11 = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %9
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = load i32, ptr %11, align 8
  %i.ah = tail call i32 @llvm.bswap.i32(i32 %i.af)
  %i.ai = tail call i32 @llvm.bswap.i32(i32 %i.ag)
  %i.aj = icmp ult i32 %i.ah, %i.ai
  br i1 %i.aj, label %bb.m, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1J_15NormalizedSpaceEB1G_EENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB30_11collections5btree3mapINtB3N_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4Q_8adapters10filter_map9FilterMapINtNtB6_4iter4IterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source15condset_to_nbox0EE0E0EB7I_.exit.i

bb.m:                                             ; preds = %.lr.ph18.i
  %i.ak = add nuw nsw i64 %.sroa.01.1.i17.i, 1    ; 2 uses
  %exitcond26.not.i = icmp eq i64 %i.ak, %i.o
  br i1 %exitcond26.not.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1J_15NormalizedSpaceEB1G_EENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB30_11collections5btree3mapINtB3N_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4Q_8adapters10filter_map9FilterMapINtNtB6_4iter4IterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source15condset_to_nbox0EE0E0EB7I_.exit.i, label %.lr.ph18.i

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1J_15NormalizedSpaceEB1G_EENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB30_11collections5btree3mapINtB3N_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4Q_8adapters10filter_map9FilterMapINtNtB6_4iter4IterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source15condset_to_nbox0EE0E0EB7I_.exit.i: ; preds = %bb.m, %.lr.ph18.i, %bb.l, %.lr.ph.i
  %.sroa.0.0.i.i = phi i64 [ %i.o, %bb.l ], [ %.sroa.01.0.i14.i, %.lr.ph.i ], [ %.sroa.01.1.i17.i, %.lr.ph18.i ], [ %i.o, %bb.m ] ; 5 uses
  %i.al = icmp samesign ule i64 %.sroa.0.0.i.i, %i.o
  tail call void @llvm.assume(i1 %i.al)
  %.not3.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not3.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1J_15NormalizedSpaceEB1G_EENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB30_11collections5btree3mapINtB3N_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4Q_8adapters10filter_map9FilterMapINtNtB6_4iter4IterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source15condset_to_nbox0EE0E0EB7I_.exit.i
  %i.am = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.am, 0
  %or.cond.i = or i1 %i.w, %.not.i.i.i
  br i1 %or.cond.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1b_15NormalizedSpaceEB18_EE7reverseCsjceHdiZFn9b_13glyphs2fontir.exit.i, label %.lr.ph.preheader.i.i.i

bb.o:                                             ; preds = %bb.i
  %i.an = tail call i64 @llvm.umin.i64(i64 %.sroa.01.0, i64 range(i64 0, 384307168202282326) %i.o)
  %i.ao = shl nuw nsw i64 %i.an, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1K_15NormalizedSpaceEB1H_EENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB31_11collections5btree3mapINtB3O_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4R_8adapters10filter_map9FilterMapINtNtB8_4iter4IterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source15condset_to_nbox0EE0E0EB7J_.exit

bb.p:                                             ; preds = %bb.i
  %i.ap = tail call i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %i.o, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1M_15NormalizedSpaceEB1J_EENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB33_11collections5btree3mapINtB3Q_8BTreeMapB16_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4T_8adapters10filter_map9FilterMapINtNtB8_4iter4IterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source15condset_to_nbox0EE0E0EB7L_(ptr noalias nofree noundef nonnull align 8 %i.p, i64 noundef %i.ap, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #18
  %i.aq = shl nuw nsw i64 %i.ap, 1
  %i.ar = or disjoint i64 %i.aq, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1K_15NormalizedSpaceEB1H_EENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB31_11collections5btree3mapINtB3O_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4R_8adapters10filter_map9FilterMapINtNtB8_4iter4IterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source15condset_to_nbox0EE0E0EB7J_.exit

_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1b_15NormalizedSpaceEB18_EE7reverseCsjceHdiZFn9b_13glyphs2fontir.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1H_15NormalizedSpaceEB1E_EEECsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i, %.preheader12.i, %bb.n, %bb.j
  %.sroa.0.0.i9.i = phi i64 [ %i.o, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader12.i ], [ %.sroa.0.0.i354246.i, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1H_15NormalizedSpaceEB1E_EEECsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i ]
  %i.as = shl nuw nsw i64 %.sroa.0.0.i9.i, 1
  %i.at = or disjoint i64 %i.as, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1K_15NormalizedSpaceEB1H_EENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB31_11collections5btree3mapINtB3O_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4R_8adapters10filter_map9FilterMapINtNtB8_4iter4IterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source15condset_to_nbox0EE0E0EB7J_.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.au = phi i64 [ %i.am, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i354246.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %.sroa.0.0.i354246.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1H_15NormalizedSpaceEB1E_EEECsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.ba, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1H_15NormalizedSpaceEB1E_EEECsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.aw = xor i64 %.sroa.0.017.i.i.i, -1
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %.sroa.0.017.i.i.i
  %i.ay = getelementptr [24 x i8], ptr %i.av, i64 %i.aw
  invoke void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsjceHdiZFn9b_13glyphs2fontir(ptr noundef nonnull %i.ax, ptr noundef nonnull %i.ay, i64 noundef 3)
          to label %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1H_15NormalizedSpaceEB1E_EEECsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i unwind label %bb.q, !noalias !150

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #17, !noalias !150
  unreachable

_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1H_15NormalizedSpaceEB1E_EEECsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ba = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ba, %i.au
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1b_15NormalizedSpaceEB18_EE7reverseCsjceHdiZFn9b_13glyphs2fontir.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1K_15NormalizedSpaceEB1H_EENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB31_11collections5btree3mapINtB3O_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4R_8adapters10filter_map9FilterMapINtNtB8_4iter4IterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source15condset_to_nbox0EE0E0EB7J_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1b_15NormalizedSpaceEB18_EE7reverseCsjceHdiZFn9b_13glyphs2fontir.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.at, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1b_15NormalizedSpaceEB18_EE7reverseCsjceHdiZFn9b_13glyphs2fontir.exit.i ], [ %i.ar, %bb.p ], [ %i.ao, %bb.o ] ; 2 uses
  %i.bb = lshr i64 %.sroa.023.0, 1
  %i.bc = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bd = sub nsw i64 %factor, %i.bb
  %i.be = add nuw i64 %i.bc, %factor
  %i.bf = mul i64 %i.bd, %.sroa.0.0
  %i.bg = mul i64 %i.be, %.sroa.0.0
  %i.bh = xor i64 %i.bg, %i.bf
  %i.bi = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bh, i1 false)
  %i.bj = trunc nuw nsw i64 %i.bi to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1N_15NormalizedSpaceEB1K_EENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB34_11collections5btree3mapINtB3R_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4U_8adapters10filter_map9FilterMapINtNtB8_4iter4IterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source15condset_to_nbox0EE0E0EB7M_.exit
  %.sroa.02.144 = phi i64 [ %.sroa.02.0, %.lr.ph ], [ %i.bk, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1N_15NormalizedSpaceEB1K_EENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB34_11collections5btree3mapINtB3R_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4U_8adapters10filter_map9FilterMapINtNtB8_4iter4IterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source15condset_to_nbox0EE0E0EB7M_.exit ] ; 2 uses
  %.sroa.023.143 = phi i64 [ %.sroa.023.0, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1N_15NormalizedSpaceEB1K_EENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB34_11collections5btree3mapINtB3R_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4U_8adapters10filter_map9FilterMapINtNtB8_4iter4IterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source15condset_to_nbox0EE0E0EB7M_.exit ] ; 4 uses
  %i.bk = add i64 %.sroa.02.144, -1               ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !noundef !4
  %.not28 = icmp ult i8 %i.bm, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1N_15NormalizedSpaceEB1K_EENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB34_11collections5btree3mapINtB3R_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4U_8adapters10filter_map9FilterMapINtNtB8_4iter4IterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source15condset_to_nbox0EE0E0EB7M_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.143, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1N_15NormalizedSpaceEB1K_EENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB34_11collections5btree3mapINtB3R_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4U_8adapters10filter_map9FilterMapINtNtB8_4iter4IterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source15condset_to_nbox0EE0E0EB7M_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.144, %bb.r ], [ 1, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1N_15NormalizedSpaceEB1K_EENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB34_11collections5btree3mapINtB3R_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4U_8adapters10filter_map9FilterMapINtNtB8_4iter4IterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source15condset_to_nbox0EE0E0EB7M_.exit ] ; 3 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bo, align 1
  br i1 %i.l, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bk
  %i.bq = load i64, ptr %i.bp, align 8, !noundef !4 ; 3 uses
  %i.br = lshr i64 %i.bq, 1                       ; 8 uses
  %i.bs = lshr i64 %.sroa.023.143, 1              ; 6 uses
  %i.bt = add nuw i64 %i.br, %i.bs                ; 4 uses
  %i.bu = sub i64 %.sroa.09.0, %i.bt
  %i.bv = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.bu ; 6 uses
  %i.bw = icmp samesign ugt i64 %i.bt, %3
  %i.bx = trunc i64 %.sroa.023.143 to i1
  %i.by = or i64 %i.bq, %.sroa.023.143
  %i.bz = trunc i64 %i.by to i1
  %or.cond3.i = or i1 %i.bw, %i.bz
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ca = trunc i64 %i.bq to i1
  br i1 %i.ca, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.cb = shl nuw nsw i64 %i.bt, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1N_15NormalizedSpaceEB1K_EENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB34_11collections5btree3mapINtB3R_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4U_8adapters10filter_map9FilterMapINtNtB8_4iter4IterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source15condset_to_nbox0EE0E0EB7M_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bx, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.cc = or i64 %i.br, 1
  %i.cd = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cc, i1 true)
  %i.ce = trunc nuw nsw i64 %i.cd to i32
  %i.cf = shl nuw nsw i32 %i.ce, 1
  %i.cg = xor i32 %i.cf, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1M_15NormalizedSpaceEB1J_EENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB33_11collections5btree3mapINtB3Q_8BTreeMapB16_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4T_8adapters10filter_map9FilterMapINtNtB8_4iter4IterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source15condset_to_nbox0EE0E0EB7L_(ptr noalias nofree noundef nonnull align 8 %i.bv, i64 noundef range(i64 0, 384307168202282326) %i.br, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.cg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #18
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.ch = getelementptr inbounds nuw [24 x i8], ptr %i.bv, i64 %i.br
  %i.ci = or i64 %i.bs, 1
  %i.cj = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.ci, i1 true)
  %i.ck = trunc nuw nsw i64 %i.cj to i32
  %i.cl = shl nuw nsw i32 %i.ck, 1
  %i.cm = xor i32 %i.cl, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1M_15NormalizedSpaceEB1J_EENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB33_11collections5btree3mapINtB3Q_8BTreeMapB16_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4T_8adapters10filter_map9FilterMapINtNtB8_4iter4IterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source15condset_to_nbox0EE0E0EB7L_(ptr noalias nofree noundef nonnull align 8 %i.ch, i64 noundef range(i64 0, 384307168202282326) %i.bs, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.cm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #18
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  %i.cn = icmp eq i64 %i.br, 0
  %i.co = icmp eq i64 %i.bs, 0
  %or.cond.i33 = or i1 %i.co, %i.cn
  br i1 %or.cond.i33, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1E_15NormalizedSpaceEB1B_EENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB2V_11collections5btree3mapINtB3H_8BTreeMapBY_B1A_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB4J_8adapters10filter_map9FilterMapINtNtB8_4iter4IterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source15condset_to_nbox0EE0E0EB7A_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cp = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %i.br, i64 %i.bs) ; 2 uses
  %i.cq = icmp samesign ult i64 %3, %i.cp
  br i1 %i.cq, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1E_15NormalizedSpaceEB1B_EENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB2V_11collections5btree3mapINtB3H_8BTreeMapBY_B1A_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB4J_8adapters10filter_map9FilterMapINtNtB8_4iter4IterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source15condset_to_nbox0EE0E0EB7A_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.cr = getelementptr inbounds nuw [24 x i8], ptr %i.bv, i64 %i.br ; 3 uses
  %.not.i34 = icmp samesign ugt i64 %i.br, %i.bs  ; 2 uses
  %spec.select.i = select i1 %.not.i34, ptr %i.cr, ptr %i.bv
  %i.cs = mul nuw nsw i64 %i.cp, 24               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.cs, i1 false), !alias.scope !151
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 %i.cs ; 3 uses
  br i1 %.not.i34, label %.preheader.i35, label %.lr.ph.i.i

.preheader.i35:                                   ; preds = %.critedge.i, %.preheader.i35
  %i.cu = phi ptr [ %i.di, %.preheader.i35 ], [ %i.ct, %.critedge.i ]
  %i.cv = phi ptr [ %i.dg, %.preheader.i35 ], [ %i.cr, %.critedge.i ]
  %.sroa.0.0.i.i36 = phi ptr [ %i.cy, %.preheader.i35 ], [ %i.n, %.critedge.i ]
  %i.cw = getelementptr inbounds i8, ptr %i.cv, i64 -24 ; 3 uses
  %i.cx = getelementptr inbounds i8, ptr %i.cu, i64 -24 ; 3 uses
  %i.cy = getelementptr inbounds i8, ptr %.sroa.0.0.i.i36, i64 -24 ; 2 uses
  %i.cz = load i32, ptr %i.cx, align 8
  %i.da = load i32, ptr %i.cw, align 8
  %i.db = tail call i32 @llvm.bswap.i32(i32 %i.cz)
  %i.dc = tail call i32 @llvm.bswap.i32(i32 %i.da)
  %i.dd = tail call i32 @llvm.ucmp.i32.i32(i32 %i.db, i32 %i.dc) ; 2 uses
  %i.de = icmp sgt i32 %i.dd, -1                  ; 2 uses
  %..i.i = select i1 %i.de, ptr %i.cx, ptr %i.cw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cy, ptr noundef nonnull align 8 dereferenceable(24) %..i.i, i64 24, i1 false), !alias.scope !151, !noalias !152
  %i.df = zext i1 %i.de to i64
  %i.dg = getelementptr inbounds nuw [24 x i8], ptr %i.cw, i64 %i.df ; 3 uses
  %.lobit.i.i = lshr i32 %i.dd, 31
  %i.dh = zext nneg i32 %.lobit.i.i to i64
  %i.di = getelementptr inbounds nuw [24 x i8], ptr %i.cx, i64 %i.dh ; 3 uses
  %i.dj = icmp eq ptr %i.dg, %i.bv
  %i.dk = icmp eq ptr %i.di, %2
  %or.cond.i.i = select i1 %i.dj, i1 true, i1 %i.dk
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1R_15NormalizedSpaceEB1O_EEE10merge_downNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB3l_11collections5btree3mapINtB48_8BTreeMapB1b_B1N_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB5b_8adapters10filter_map9FilterMapINtNtB9_4iter4IterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source15condset_to_nbox0EE0E0EB83_.exit.i, label %.preheader.i35

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.dl = phi ptr [ %i.dx, %.lr.ph.i.i ], [ %i.bv, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.dw, %.lr.ph.i.i ], [ %i.cr, %.critedge.i ] ; 3 uses
  %i.dm = phi ptr [ %i.du, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 3 uses
  %i.dn = load i32, ptr %.sroa.0.02.i.i, align 8
  %i.do = load i32, ptr %i.dm, align 8
  %i.dp = tail call i32 @llvm.bswap.i32(i32 %i.dn)
  %i.dq = tail call i32 @llvm.bswap.i32(i32 %i.do)
  %i.dr = tail call i32 @llvm.ucmp.i32.i32(i32 %i.dp, i32 %i.dq) ; 2 uses
  %i.ds = icmp sgt i32 %i.dr, -1                  ; 2 uses
  %.sroa.05.0.i.i = select i1 %i.ds, ptr %i.dm, ptr %.sroa.0.02.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dl, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.05.0.i.i, i64 24, i1 false), !alias.scope !151, !noalias !153
end_hunk_0
