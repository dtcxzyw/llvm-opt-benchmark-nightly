Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/otl_normalizer-2650a200e0a628fa.otl_normalizer.42b95bc175ff248b-cgu.01?download=true
inline.NumInlined: 1102
inline.NumDeleted: 723
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [108 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/read-fonts-0.43.3/src/tables/layout.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00\8C\03\00\00\18\00\00\00" }>, align 8
@switch.table._RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterINtNtCsbZq13ASDQ8l_10font_types3raw9BigEndiantEEINtB5_7FlattenINtNtNtBb_5array4iter8IntoIterINtNtBb_6option6OptionaEKj8_EENCNvMsd_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB3A_6Device4iters_0ENtNtNtB9_6traits8iterator8Iterator4nextCs5JazJsyow1H_14otl_normalizer = private unnamed_addr constant [3 x i8] c"\02\04\08", align 8

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtB3_8IntoIterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EINtNtBO_7flatten7FlattenIB1m_INtNtBO_6copied6CopiedINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set4IterB1A_EEEEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(224) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.5.i.i = alloca i64, align 8              ; 6 uses
  %.sroa.8.i.i = alloca i64, align 8              ; 4 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.f = load i16, ptr %i.e, align 8, !range !60, !alias.scope !61, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq i16 %i.f, 2
  %i.g = load i64, ptr %1, align 8, !range !5, !alias.scope !61, !noundef !4 ; 3 uses
  %.not7.i.i = icmp eq i64 %i.g, -1               ; 2 uses
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = zext nneg i16 %i.f to i64                ; 5 uses
  br i1 %.not7.i.i, label %bb.s, label %bb.m

bb.d:                                             ; preds = %bb.b
  br i1 %.not7.i.i, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !66
  %.not.i.i.i.i = icmp eq i64 %i.g, 2
  br i1 %.not.i.i.i.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENtNtNtB8_6traits8iterator8Iterator9size_hintCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) dereferenceable_or_null(72) %1), !noalias !67
  %.pre.i.i.i.i = load i64, ptr %i.d, align 8, !noalias !66
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre72.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !range !6, !noalias !66
  %.phi.trans.insert73.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.pre74.i.i.i.i = load i64, ptr %.phi.trans.insert73.i.i.i.i, align 8, !noalias !66
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit.i.i.i.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %i.i = phi i64 [ %.pre74.i.i.i.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.j = phi i64 [ %.pre72.i.i.i.i, %bb.f ], [ 1, %bb.e ] ; 2 uses
  %i.k = phi i64 [ %.pre.i.i.i.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !66
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !range !7, !alias.scope !68, !noundef !4
  %.not53.i.i.i.i = icmp eq i64 %i.m, 2
  br i1 %.not53.i.i.i.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit61.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit.i.i.i.i
  call void @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENtNtNtB8_6traits8iterator8Iterator9size_hintCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) dereferenceable_or_null(72) %i.l), !noalias !69
  %.pre75.i.i.i.i = load i64, ptr %i.c, align 8, !noalias !66
  %.phi.trans.insert76.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre77.i.i.i.i = load i64, ptr %.phi.trans.insert76.i.i.i.i, align 8, !range !6, !noalias !66
  %.phi.trans.insert78.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.pre79.i.i.i.i = load i64, ptr %.phi.trans.insert78.i.i.i.i, align 8, !noalias !66
  %i.n = call i64 @llvm.uadd.sat.i64(i64 %i.k, i64 %.pre75.i.i.i.i)
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit61.i.i.i.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit61.i.i.i.i: ; preds = %bb.g, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit.i.i.i.i
  %i.o = phi i64 [ %.pre79.i.i.i.i, %bb.g ], [ 0, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit.i.i.i.i ]
  %.fr11 = phi i64 [ %.pre77.i.i.i.i, %bb.g ], [ 1, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit.i.i.i.i ] ; 2 uses
  %i.p = phi i64 [ %i.n, %bb.g ], [ %i.k, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !66
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.r = load i64, ptr %i.q, align 8, !range !5, !alias.scope !68, !noundef !4 ; 2 uses
  %.not54.i.i.i.i = icmp eq i64 %i.r, -1
  br i1 %.not54.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit61.i.i.i.i
  %.not71.i.i.i.i = icmp eq i64 %i.r, 2
  %i.s = trunc nuw i64 %i.j to i1
  %i.t = trunc nuw i64 %.fr11 to i1
  %op.rdx = select i1 %.not71.i.i.i.i, i1 %i.s, i1 false
  %op.rdx7 = select i1 %op.rdx, i1 %i.t, i1 false
  br i1 %op.rdx7, label %bb.k, label %bb.j

bb.i:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit61.i.i.i.i
  %i.u = and i64 %.fr11, %i.j
  %or.cond55.not.i.i.i.i = icmp eq i64 %i.u, 0
  br i1 %or.cond55.not.i.i.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  store i64 %i.p, ptr %0, align 8, !alias.scope !70
  br label %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EINtNtBa_7flatten7FlattenIBY_INtNtBa_6copied6CopiedINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set4IterB1l_EEEEENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceCs5JazJsyow1H_14otl_normalizer.exit

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.v = add i64 %i.o, %i.i                       ; 2 uses
  %i.w = icmp uge i64 %i.v, %i.i
  %.56.i.i.i.i = zext i1 %i.w to i64
  store i64 %i.p, ptr %0, align 8, !alias.scope !70
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.56.i.i.i.i, ptr %i.x, align 8, !alias.scope !70
  br label %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EINtNtBa_7flatten7FlattenIBY_INtNtBa_6copied6CopiedINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set4IterB1l_EEEEENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceCs5JazJsyow1H_14otl_normalizer.exit

bb.l:                                             ; preds = %bb.d
  store i64 0, ptr %0, align 8, !alias.scope !71
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.y, align 8, !alias.scope !71
  br label %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EINtNtBa_7flatten7FlattenIBY_INtNtBa_6copied6CopiedINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set4IterB1l_EEEEENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceCs5JazJsyow1H_14otl_normalizer.exit

bb.m:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !76
  %.not.i.i11.i.i = icmp eq i64 %i.g, 2
  br i1 %.not.i.i11.i.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit.i.i17.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENtNtNtB8_6traits8iterator8Iterator9size_hintCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) dereferenceable_or_null(72) %1), !noalias !77
  %.pre.i.i12.i.i = load i64, ptr %i.b, align 8, !noalias !76
  %.phi.trans.insert.i.i13.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre72.i.i14.i.i = load i64, ptr %.phi.trans.insert.i.i13.i.i, align 8, !range !6, !noalias !76
  %.phi.trans.insert73.i.i15.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.pre74.i.i16.i.i = load i64, ptr %.phi.trans.insert73.i.i15.i.i, align 8, !noalias !76
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit.i.i17.i.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit.i.i17.i.i: ; preds = %bb.n, %bb.m
  %i.z = phi i64 [ %.pre74.i.i16.i.i, %bb.n ], [ 0, %bb.m ] ; 2 uses
  %i.aa = phi i64 [ %.pre72.i.i14.i.i, %bb.n ], [ 1, %bb.m ] ; 2 uses
  %i.ab = phi i64 [ %.pre.i.i12.i.i, %bb.n ], [ 0, %bb.m ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !76
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !range !7, !alias.scope !78, !noundef !4
  %.not53.i.i18.i.i = icmp eq i64 %i.ad, 2
  br i1 %.not53.i.i18.i.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit61.i.i24.i.i, label %bb.o

bb.o:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit.i.i17.i.i
  call void @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENtNtNtB8_6traits8iterator8Iterator9size_hintCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) dereferenceable_or_null(72) %i.ac), !noalias !79
  %.pre75.i.i19.i.i = load i64, ptr %i.a, align 8, !noalias !76
  %.phi.trans.insert76.i.i20.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre77.i.i21.i.i = load i64, ptr %.phi.trans.insert76.i.i20.i.i, align 8, !range !6, !noalias !76
  %.phi.trans.insert78.i.i22.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.pre79.i.i23.i.i = load i64, ptr %.phi.trans.insert78.i.i22.i.i, align 8, !noalias !76
  %i.ae = call i64 @llvm.uadd.sat.i64(i64 %i.ab, i64 %.pre75.i.i19.i.i)
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit61.i.i24.i.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit61.i.i24.i.i: ; preds = %bb.o, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit.i.i17.i.i
  %i.af = phi i64 [ %.pre79.i.i23.i.i, %bb.o ], [ 0, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit.i.i17.i.i ]
  %.fr10 = phi i64 [ %.pre77.i.i21.i.i, %bb.o ], [ 1, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit.i.i17.i.i ] ; 2 uses
  %i.ag = phi i64 [ %i.ae, %bb.o ], [ %i.ab, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit.i.i17.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !76
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ai = load i64, ptr %i.ah, align 8, !range !5, !alias.scope !78, !noundef !4 ; 2 uses
  %.not54.i.i25.i.i = icmp eq i64 %i.ai, -1
  br i1 %.not54.i.i25.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit61.i.i24.i.i
  %.not71.i.i26.i.i = icmp eq i64 %i.ai, 2
  %i.aj = trunc nuw i64 %i.aa to i1
  %i.ak = trunc nuw i64 %.fr10 to i1
  %op.rdx8 = select i1 %.not71.i.i26.i.i, i1 %i.aj, i1 false
  %op.rdx9 = select i1 %op.rdx8, i1 %i.ak, i1 false
  br i1 %op.rdx9, label %bb.r, label %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEEENtNtNtB9_6traits8iterator8Iterator9size_hintCs5JazJsyow1H_14otl_normalizer.exit34.i.i

bb.q:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit61.i.i24.i.i
  %i.al = and i64 %.fr10, %i.aa
  %or.cond55.not.i.i33.i.i = icmp eq i64 %i.al, 0
  br i1 %or.cond55.not.i.i33.i.i, label %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEEENtNtNtB9_6traits8iterator8Iterator9size_hintCs5JazJsyow1H_14otl_normalizer.exit34.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.am = add i64 %i.af, %i.z                     ; 2 uses
  %i.an = icmp uge i64 %i.am, %i.z
  %.56.i.i32.i.i = zext i1 %i.an to i64
  store i64 %.56.i.i32.i.i, ptr %.sroa.5.i.i, align 8, !alias.scope !80, !noalias !81
  br label %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEEENtNtNtB9_6traits8iterator8Iterator9size_hintCs5JazJsyow1H_14otl_normalizer.exit34.i.i

_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEEENtNtNtB9_6traits8iterator8Iterator9size_hintCs5JazJsyow1H_14otl_normalizer.exit34.i.i: ; preds = %bb.r, %bb.q, %bb.p
  %.sink81.i.i30.sroa.phi.i.i = phi ptr [ %.sroa.8.i.i, %bb.r ], [ %.sroa.5.i.i, %bb.q ], [ %.sroa.5.i.i, %bb.p ]
  %.sink.i.i31.i.i = phi i64 [ %i.am, %bb.r ], [ 0, %bb.q ], [ 0, %bb.p ]
  store i64 %.sink.i.i31.i.i, ptr %.sink81.i.i30.sroa.phi.i.i, align 8, !alias.scope !80, !noalias !81
  %.sroa.5.i.i.0..sroa.5.i.i.0..sroa.5.i.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.8..i.i = load i64, ptr %.sroa.5.i.i, align 8, !range !6, !noalias !81, !noundef !4
  %.sroa.8.i.i.0..sroa.8.i.i.0..sroa.8.i.i.0..sroa.8.i.0..sroa.8.i.0..sroa.8.0..sroa.8.0..sroa.8.16..i.i = load i64, ptr %.sroa.8.i.i, align 8, !noalias !81
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  %i.ao = call i64 @llvm.uadd.sat.i64(i64 %i.h, i64 %i.ag)
  %i.ap = trunc nuw i64 %.sroa.5.i.i.0..sroa.5.i.i.0..sroa.5.i.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.8..i.i to i1 ; 2 uses
  %i.aq = add i64 %.sroa.8.i.i.0..sroa.8.i.i.0..sroa.8.i.i.0..sroa.8.i.0..sroa.8.i.0..sroa.8.0..sroa.8.0..sroa.8.16..i.i, %i.h ; 2 uses
  %i.ar = icmp uge i64 %i.aq, %i.h
  %.sroa.46.0.i.i = select i1 %i.ap, i64 %i.aq, i64 undef
  %narrow.i.i = select i1 %i.ap, i1 %i.ar, i1 false
  %.sroa.05.0.i.i = zext i1 %narrow.i.i to i64
  store i64 %i.ao, ptr %0, align 8, !alias.scope !71
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.05.0.i.i, ptr %i.as, align 8, !alias.scope !71
  br label %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EINtNtBa_7flatten7FlattenIBY_INtNtBa_6copied6CopiedINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set4IterB1l_EEEEENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceCs5JazJsyow1H_14otl_normalizer.exit

bb.s:                                             ; preds = %bb.c
  store i64 %i.h, ptr %0, align 8, !alias.scope !82
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.at, align 8, !alias.scope !82
  br label %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EINtNtBa_7flatten7FlattenIBY_INtNtBa_6copied6CopiedINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set4IterB1l_EEEEENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceCs5JazJsyow1H_14otl_normalizer.exit

_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EINtNtBa_7flatten7FlattenIBY_INtNtBa_6copied6CopiedINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set4IterB1l_EEEEENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceCs5JazJsyow1H_14otl_normalizer.exit: ; preds = %bb.j, %bb.k, %bb.l, %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEEENtNtNtB9_6traits8iterator8Iterator9size_hintCs5JazJsyow1H_14otl_normalizer.exit34.i.i, %bb.s
  %.sink41.i.i = phi i64 [ 16, %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEEENtNtNtB9_6traits8iterator8Iterator9size_hintCs5JazJsyow1H_14otl_normalizer.exit34.i.i ], [ 16, %bb.s ], [ 16, %bb.l ], [ 16, %bb.k ], [ 8, %bb.j ]
  %.sroa.46.0.sink.i.i = phi i64 [ %.sroa.46.0.i.i, %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEEENtNtNtB9_6traits8iterator8Iterator9size_hintCs5JazJsyow1H_14otl_normalizer.exit34.i.i ], [ %i.h, %bb.s ], [ 0, %bb.l ], [ %i.v, %bb.k ], [ 0, %bb.j ]
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 %.sink41.i.i
  store i64 %.sroa.46.0.sink.i.i, ptr %i.au, align 8, !alias.scope !71
  br label %bb.u

bb.t:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EINtNtBa_7flatten7FlattenIBY_INtNtBa_6copied6CopiedINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set4IterB1l_EEEEENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceCs5JazJsyow1H_14otl_normalizer.exit, %bb.t
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBL_4gpos5marks18MarkAttachmentRuleEE14extend_trustedINtNtCsf3Ta7LF998c_4core6option8IntoIterBG_EEBL_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(120) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i64, ptr %1, align 8, !range !8, !noundef !4 ; 3 uses
  %i.a = icmp ne i64 %.val, -5                    ; 2 uses
  %i.b = zext i1 %i.a to i64                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !95, !noundef !4 ; 3 uses
  %i.e = load i64, ptr %0, align 8, !range !9, !alias.scope !95, !noundef !4
  %i.f = sub i64 %i.e, %i.d
  %i.g = icmp ult i64 %i.f, %i.b
  br i1 %i.g, label %bb.b, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBJ_4gpos5marks18MarkAttachmentRuleEE7reserveBJ_.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.d, i64 noundef %i.b, i64 noundef 8, i64 noundef 120)
          to label %._RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBJ_4gpos5marks18MarkAttachmentRuleEE7reserveBJ_.exit_crit_edge unwind label %bb.d

._RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBJ_4gpos5marks18MarkAttachmentRuleEE7reserveBJ_.exit_crit_edge: ; preds = %bb.b
  %.pre = load i64, ptr %i.c, align 8
  br label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBJ_4gpos5marks18MarkAttachmentRuleEE7reserveBJ_.exit

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBJ_4gpos5marks18MarkAttachmentRuleEE7reserveBJ_.exit: ; preds = %._RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBJ_4gpos5marks18MarkAttachmentRuleEE7reserveBJ_.exit_crit_edge, %bb.a
  %i.h = phi i64 [ %.pre, %._RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBJ_4gpos5marks18MarkAttachmentRuleEE7reserveBJ_.exit_crit_edge ], [ %i.d, %bb.a ] ; 3 uses
  br i1 %i.a, label %._crit_edge.i.i, label %bb.c

._crit_edge.i.i:                                  ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBJ_4gpos5marks18MarkAttachmentRuleEE7reserveBJ_.exit
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw [120 x i8], ptr %i.j, i64 %i.h ; 2 uses
  store i64 %.val, ptr %i.k, align 8, !noalias !96
  %.sroa.411.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.411.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.4.0..sroa_idx, i64 112, i1 false)
  %i.l = add i64 %i.h, 1
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBJ_4gpos5marks18MarkAttachmentRuleEE7reserveBJ_.exit
  %.val5.i.i = phi i64 [ %i.l, %._crit_edge.i.i ], [ %i.h, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBJ_4gpos5marks18MarkAttachmentRuleEE7reserveBJ_.exit ]
  store i64 %.val5.i.i, ptr %i.c, align 8, !noalias !97
  ret void

.noexc5:                                          ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.m

bb.d:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = icmp slt i64 %.val, -3
  br i1 %i.n, label %.noexc5, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5JazJsyow1H_14otl_normalizer4gpos5marks18MarkAttachmentRuleEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %1)
          to label %.noexc5 unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtNtCs7SuSGX4jtHW_12clap_builder7builder3str3StrEEECs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !5, !noundef !4 ; 3 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7SuSGX4jtHW_12clap_builder7builder3str3StrEECs5JazJsyow1H_14otl_normalizer.exit, label %bb.b

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7SuSGX4jtHW_12clap_builder7builder3str3StrEECs5JazJsyow1H_14otl_normalizer.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  %i.c = icmp eq i64 %i.a, 2
  br i1 %i.c, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7SuSGX4jtHW_12clap_builder7builder3str3StrEECs5JazJsyow1H_14otl_normalizer.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  %i.d = icmp eq i64 %i.a, 0
  br i1 %i.d, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7SuSGX4jtHW_12clap_builder7builder3str3StrEECs5JazJsyow1H_14otl_normalizer.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !107, !noundef !4 ; 2 uses
  %i.f = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7SuSGX4jtHW_12clap_builder7builder3str3StrEECs5JazJsyow1H_14otl_normalizer.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !107, !nonnull !4, !noundef !4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i, i64 noundef 1) #21, !noalias !107
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7SuSGX4jtHW_12clap_builder7builder3str3StrEECs5JazJsyow1H_14otl_normalizer.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5JazJsyow1H_14otl_normalizer4gpos14ResolvedAnchorEEB11_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !11, !noundef !4
  switch i64 %i.a, label %bb.b [
    i64 -3, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5JazJsyow1H_14otl_normalizer4gpos14ResolvedAnchorEBF_.exit
    i64 -2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5JazJsyow1H_14otl_normalizer4gpos13ResolvedValueEBF_.exit.i
    i64 -1, label %bb.c
  ]

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5JazJsyow1H_14otl_normalizer4gpos14ResolvedAnchorEBF_.exit: ; preds = %bb.a, %bb.f, %bb.e, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5JazJsyow1H_14otl_normalizer4gpos13ResolvedValueEBF_.exit.i
  ret void

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecaENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5JazJsyow1H_14otl_normalizer4gpos13ResolvedValueEBF_.exit.i unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVeclENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5JazJsyow1H_14otl_normalizer4gpos13ResolvedValueEBF_.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5JazJsyow1H_14otl_normalizer4gpos13ResolvedValueEBF_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.d) #22
          to label %bb.h unwind label %bb.g

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5JazJsyow1H_14otl_normalizer4gpos13ResolvedValueEBF_.exit.i: ; preds = %bb.a, %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !range !12, !alias.scope !114, !noundef !4
  switch i64 %i.f, label %bb.e [
    i64 -2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5JazJsyow1H_14otl_normalizer4gpos14ResolvedAnchorEBF_.exit
    i64 -1, label %bb.f
  ]

bb.e:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5JazJsyow1H_14otl_normalizer4gpos13ResolvedValueEBF_.exit.i
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecaENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5JazJsyow1H_14otl_normalizer4gpos14ResolvedAnchorEBF_.exit

bb.f:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5JazJsyow1H_14otl_normalizer4gpos13ResolvedValueEBF_.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVeclENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5JazJsyow1H_14otl_normalizer4gpos14ResolvedAnchorEBF_.exit

bb.g:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20
end_hunk_0
begin_hunk_1_@_RNvXs8_NtCsgCecv3eZDcN_5alloc5sliceINtNtB7_3vec3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EINtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable8BufGuardBN_E13with_capacityCs5JazJsyow1H_14otl_normalizer:bb.a
_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5JazJsyow1H_14otl_normalizer.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4
  %i.i = icmp ule i64 %1, %i.e
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.e, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.k, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_RNvXs8_NtCsgCecv3eZDcN_5alloc5sliceINtNtB7_3vec3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EINtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable8BufGuardBN_E19as_uninit_slice_mutCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.d
  %i.f = load i64, ptr %0, align 8, !range !9, !noundef !4
  %i.g = sub i64 %i.f, %i.d
  %i.h = insertvalue { ptr, i64 } poison, ptr %i.e, 0
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %i.g, 1
  ret { ptr, i64 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs8_NtCsgCecv3eZDcN_5alloc5sliceINtNtB7_3vec3VecTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEEINtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable8BufGuardBN_E13with_capacityCs5JazJsyow1H_14otl_normalizer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %1, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32)
  %i.b = load i64, ptr %i.a, align 8, !range !6, !noundef !4
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !22, !noundef !4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5JazJsyow1H_14otl_normalizer.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #25
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5JazJsyow1H_14otl_normalizer.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4
  %i.i = icmp ule i64 %1, %i.e
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.e, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.k, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_RNvXs8_NtCsgCecv3eZDcN_5alloc5sliceINtNtB7_3vec3VecTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEEINtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable8BufGuardBN_E19as_uninit_slice_mutCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.d
  %i.f = load i64, ptr %0, align 8, !range !9, !noundef !4
  %i.g = sub i64 %i.f, %i.d
  %i.h = insertvalue { ptr, i64 } poison, ptr %i.e, 0
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %i.g, 1
  ret { ptr, i64 } %i.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout11RangeRecordEINtNtB7_3map3MapINtNtNtBb_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB3Z_9GlyphId163newENvMs6_B28_B26_4iterEEENtNtNtB9_6traits8iterator8Iterator9size_hintCs5JazJsyow1H_14otl_normalizer(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3082)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3083)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.b = load i8, ptr %i.a, align 2, !range !25, !alias.scope !3083, !noundef !4 ; 2 uses
  %.not.i = icmp eq i8 %i.b, -1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  br i1 %.not.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout11RangeRecordEINtNtBO_3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB3I_9GlyphId163newENvMs6_B1R_B1P_4iterEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.e = load i8, ptr %i.d, align 4, !range !26, !alias.scope !3084, !noundef !4
  %or.cond.not.i.i.i.i.i = icmp eq i8 %i.e, 0
  br i1 %or.cond.not.i.i.i.i.i, label %bb.c, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 50
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3085)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3086)
  %i.h = load i16, ptr %i.f, align 8, !alias.scope !3087, !noundef !4 ; 2 uses
  %i.i = load i16, ptr %i.g, align 2, !alias.scope !3088, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp ugt i16 %i.h, %i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = sub nuw i16 %i.i, %i.h
  %i.k = zext i16 %i.j to i64
  %i.l = add nuw nsw i64 %i.k, 1
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit.i.i.i.i.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit.i.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.7.0.i.i.i.i.i = phi i64 [ 0, %bb.c ], [ %i.l, %bb.d ], [ 0, %bb.b ]
  %or.cond82.not.i.i.i.i.i = icmp eq i8 %i.b, 0
  br i1 %or.cond82.not.i.i.i.i.i, label %bb.e, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit64.i.i.i.i.i

bb.e:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 54
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3089)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3090)
  %i.o = load i16, ptr %i.m, align 2, !alias.scope !3091, !noundef !4 ; 2 uses
  %i.p = load i16, ptr %i.n, align 8, !alias.scope !3092, !noundef !4 ; 2 uses
  %.not.i.i.i.i61.i.i.i.i.i = icmp ugt i16 %i.o, %i.p
  br i1 %.not.i.i.i.i61.i.i.i.i.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit64.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = sub nuw i16 %i.p, %i.o
  %i.r = zext i16 %i.q to i64
  %i.s = add nuw nsw i64 %i.r, 1
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit64.i.i.i.i.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit64.i.i.i.i.i: ; preds = %bb.f, %bb.e, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit.i.i.i.i.i
  %.sroa.8.0.i.i.i.i.i = phi i64 [ 0, %bb.e ], [ %i.s, %bb.f ], [ 0, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit.i.i.i.i.i ]
  %i.t = add nuw nsw i64 %.sroa.8.0.i.i.i.i.i, %.sroa.7.0.i.i.i.i.i ; 2 uses
  %i.u = load ptr, ptr %i.c, align 8, !alias.scope !3084, !noundef !4 ; 2 uses
  %.not54.i.i.i.i.i = icmp eq ptr %i.u, null
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val60.i.i.i.i.i = load ptr, ptr %i.v, align 8, !alias.scope !3084, !nonnull !4
  %i.w = icmp eq ptr %.val60.i.i.i.i.i, %i.u
  %or.cond84.i.i.i.i.i = select i1 %.not54.i.i.i.i.i, i1 true, i1 %i.w ; 2 uses
  %spec.select.i = select i1 %or.cond84.i.i.i.i.i, i64 %i.t, i64 undef
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout11RangeRecordEINtNtBO_3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB3I_9GlyphId163newENvMs6_B1R_B1P_4iterEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout11RangeRecordEINtNtBO_3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB3I_9GlyphId163newENvMs6_B1R_B1P_4iterEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit.i: ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit64.i.i.i.i.i, %bb.a
  %.sroa.7.1.i = phi i64 [ %spec.select.i, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit64.i.i.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %.sroa.5.0.i = phi i1 [ %or.cond84.i.i.i.i.i, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit64.i.i.i.i.i ], [ true, %bb.a ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ %i.t, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit64.i.i.i.i.i ], [ 0, %bb.a ]
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 90
  %i.y = load i8, ptr %i.x, align 2, !range !25, !alias.scope !3083, !noundef !4 ; 2 uses
  %.not53.i = icmp eq i8 %i.y, -1
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 64
  br i1 %.not53.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout11RangeRecordEINtNtBO_3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB3I_9GlyphId163newENvMs6_B1R_B1P_4iterEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit73.i, label %bb.g

bb.g:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout11RangeRecordEINtNtBO_3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB3I_9GlyphId163newENvMs6_B1R_B1P_4iterEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.ab = load i8, ptr %i.aa, align 4, !range !26, !alias.scope !3093, !noundef !4
  %or.cond.not.i.i.i.i60.i = icmp eq i8 %i.ab, 0
  br i1 %or.cond.not.i.i.i.i60.i, label %bb.h, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit.i.i.i.i61.i

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 82
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3094)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3095)
  %i.ae = load i16, ptr %i.ac, align 8, !alias.scope !3096, !noundef !4 ; 2 uses
  %i.af = load i16, ptr %i.ad, align 2, !alias.scope !3097, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i72.i = icmp ugt i16 %i.ae, %i.af
  br i1 %.not.i.i.i.i.i.i.i.i72.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit.i.i.i.i61.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = sub nuw i16 %i.af, %i.ae
  %i.ah = zext i16 %i.ag to i64
  %i.ai = add nuw nsw i64 %i.ah, 1
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit.i.i.i.i61.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit.i.i.i.i61.i: ; preds = %bb.i, %bb.h, %bb.g
  %.sroa.7.0.i.i.i.i62.i = phi i64 [ 0, %bb.h ], [ %i.ai, %bb.i ], [ 0, %bb.g ]
  %or.cond82.not.i.i.i.i63.i = icmp eq i8 %i.y, 0
  br i1 %or.cond82.not.i.i.i.i63.i, label %bb.j, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit64.i.i.i.i64.i

bb.j:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit.i.i.i.i61.i
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 86
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 88
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3098)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3099)
  %i.al = load i16, ptr %i.aj, align 2, !alias.scope !3100, !noundef !4 ; 2 uses
  %i.am = load i16, ptr %i.ak, align 8, !alias.scope !3101, !noundef !4 ; 2 uses
  %.not.i.i.i.i61.i.i.i.i71.i = icmp ugt i16 %i.al, %i.am
  br i1 %.not.i.i.i.i61.i.i.i.i71.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit64.i.i.i.i64.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = sub nuw i16 %i.am, %i.al
  %i.ao = zext i16 %i.an to i64
  %i.ap = add nuw nsw i64 %i.ao, 1
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit64.i.i.i.i64.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit64.i.i.i.i64.i: ; preds = %bb.k, %bb.j, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit.i.i.i.i61.i
  %.sroa.8.0.i.i.i.i65.i = phi i64 [ 0, %bb.j ], [ %i.ap, %bb.k ], [ 0, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit.i.i.i.i61.i ]
  %i.aq = add nuw nsw i64 %.sroa.8.0.i.i.i.i65.i, %.sroa.7.0.i.i.i.i62.i ; 2 uses
  %i.ar = load ptr, ptr %i.z, align 8, !alias.scope !3093, !noundef !4 ; 2 uses
  %.not54.i.i.i.i66.i = icmp eq ptr %i.ar, null
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val60.i.i.i.i67.i = load ptr, ptr %i.as, align 8, !alias.scope !3093, !nonnull !4
  %i.at = icmp eq ptr %.val60.i.i.i.i67.i, %i.ar
  %or.cond84.i.i.i.i68.i = select i1 %.not54.i.i.i.i66.i, i1 true, i1 %i.at ; 2 uses
  %spec.select88.i = select i1 %or.cond84.i.i.i.i68.i, i64 %i.aq, i64 undef
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout11RangeRecordEINtNtBO_3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB3I_9GlyphId163newENvMs6_B1R_B1P_4iterEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit73.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout11RangeRecordEINtNtBO_3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB3I_9GlyphId163newENvMs6_B1R_B1P_4iterEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit73.i: ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit64.i.i.i.i64.i, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout11RangeRecordEINtNtBO_3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB3I_9GlyphId163newENvMs6_B1R_B1P_4iterEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit.i
  %.sroa.8.1.i = phi i64 [ %spec.select88.i, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit64.i.i.i.i64.i ], [ 0, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout11RangeRecordEINtNtBO_3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB3I_9GlyphId163newENvMs6_B1R_B1P_4iterEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit.i ]
  %.sroa.581.0.i = phi i1 [ %or.cond84.i.i.i.i68.i, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit64.i.i.i.i64.i ], [ true, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout11RangeRecordEINtNtBO_3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB3I_9GlyphId163newENvMs6_B1R_B1P_4iterEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit.i ] ; 2 uses
  %.sroa.080.0.i = phi i64 [ %i.aq, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit64.i.i.i.i64.i ], [ 0, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout11RangeRecordEINtNtBO_3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB3I_9GlyphId163newENvMs6_B1R_B1P_4iterEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit.i ]
  %i.au = add nuw nsw i64 %.sroa.080.0.i, %.sroa.0.0.i ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.aw = load i8, ptr %i.av, align 2, !range !27, !alias.scope !3083, !noundef !4 ; 2 uses
  %.not54.i = icmp eq i8 %i.aw, -2
  br i1 %.not54.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout11RangeRecordEINtNtBO_3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB3I_9GlyphId163newENvMs6_B1R_B1P_4iterEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit73.i
  %.not90.i = icmp eq i8 %i.aw, -1
  %op.rdx = select i1 %.not90.i, i1 %.sroa.5.0.i, i1 false
  %op.rdx11 = select i1 %op.rdx, i1 %.sroa.581.0.i, i1 false
  br i1 %op.rdx11, label %bb.o, label %bb.n

bb.m:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout11RangeRecordEINtNtBO_3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB3I_9GlyphId163newENvMs6_B1R_B1P_4iterEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit73.i
  %or.cond55.i = select i1 %.sroa.5.0.i, i1 %.sroa.581.0.i, i1 false
  br i1 %or.cond55.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  store i64 %i.au, ptr %0, align 8, !alias.scope !3082
  br label %_RNvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtBb_6option8IntoIterINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout11RangeRecordEINtNtB7_3map3MapINtNtNtBb_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB46_9GlyphId163newENvMs6_B2f_B2d_4iterEEB1z_ENtNtNtB9_6traits8iterator8Iterator9size_hintCs5JazJsyow1H_14otl_normalizer.exit

bb.o:                                             ; preds = %bb.m, %bb.l
  %i.ax = add i64 %.sroa.8.1.i, %.sroa.7.1.i      ; 2 uses
  %i.ay = icmp uge i64 %i.ax, %.sroa.7.1.i
  %..i = zext i1 %i.ay to i64
  store i64 %i.au, ptr %0, align 8, !alias.scope !3082
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %..i, ptr %i.az, align 8, !alias.scope !3082
  br label %_RNvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtBb_6option8IntoIterINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout11RangeRecordEINtNtB7_3map3MapINtNtNtBb_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB46_9GlyphId163newENvMs6_B2f_B2d_4iterEEB1z_ENtNtNtB9_6traits8iterator8Iterator9size_hintCs5JazJsyow1H_14otl_normalizer.exit

_RNvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtBb_6option8IntoIterINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout11RangeRecordEINtNtB7_3map3MapINtNtNtBb_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB46_9GlyphId163newENvMs6_B2f_B2d_4iterEEB1z_ENtNtNtB9_6traits8iterator8Iterator9size_hintCs5JazJsyow1H_14otl_normalizer.exit: ; preds = %bb.n, %bb.o
  %.sink102.i = phi i64 [ 16, %bb.o ], [ 8, %bb.n ]
  %.sink.i = phi i64 [ %i.ax, %bb.o ], [ 0, %bb.n ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 %.sink102.i
  store i64 %.sink.i, ptr %i.ba, align 8, !alias.scope !3082
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB18_4gpos7cursive14CursivePosRuleEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB8_11collections5btree3map10IntoValuesTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16TNtNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout11lookup_flag10LookupFlagINtNtCsf3Ta7LF998c_4core6option6OptiontEEEB13_EE9from_iterB18_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [176 x i8], align 8               ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [72 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val = load i64, ptr %i.f, align 8, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %.val, i1 noundef zeroext false, i64 noundef 8, i64 noundef 176)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.a
  %i.g = load i64, ptr %i.c, align 8, !range !6, !noundef !4
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !22, !noundef !4 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c, !prof !10

bb.b:                                             ; preds = %.noexc
  %i.l = load i64, ptr %i.k, align 8
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #25
          to label %.noexc3 unwind label %bb.o

.noexc3:                                          ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %.noexc
  %i.m = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.n = icmp ule i64 %.val, %i.j
  tail call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.j, ptr %i.e, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.m, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  store i64 0, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3114)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3117)
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.val.i.i = load i64, ptr %i.q, align 8, !alias.scope !3118, !noundef !4 ; 2 uses
  %i.r = icmp ugt i64 %.val.i.i, %i.j
  br i1 %i.r, label %bb.d, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBJ_4gpos7cursive14CursivePosRuleEE7reserveBJ_.exit.i.i, !prof !10

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef 0, i64 noundef %.val.i.i, i64 noundef 8, i64 noundef 176)
          to label %._RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBJ_4gpos7cursive14CursivePosRuleEE7reserveBJ_.exit_crit_edge.i.i unwind label %bb.j, !noalias !3118

._RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBJ_4gpos7cursive14CursivePosRuleEE7reserveBJ_.exit_crit_edge.i.i: ; preds = %bb.d
  %.pre.i.i = load i64, ptr %i.p, align 8, !alias.scope !3119
  %.pre = load ptr, ptr %i.o, align 8, !alias.scope !3119
  br label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBJ_4gpos7cursive14CursivePosRuleEE7reserveBJ_.exit.i.i

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBJ_4gpos7cursive14CursivePosRuleEE7reserveBJ_.exit.i.i: ; preds = %._RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBJ_4gpos7cursive14CursivePosRuleEE7reserveBJ_.exit_crit_edge.i.i, %bb.c
  %i.s = phi ptr [ %.pre, %._RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBJ_4gpos7cursive14CursivePosRuleEE7reserveBJ_.exit_crit_edge.i.i ], [ %i.m, %bb.c ]
  %i.t = phi i64 [ %.pre.i.i, %._RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBJ_4gpos7cursive14CursivePosRuleEE7reserveBJ_.exit_crit_edge.i.i ], [ 0, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3121
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBJ_4gpos7cursive14CursivePosRuleEE7reserveBJ_.exit.i.i
  %.val5.i.i.i.i = phi i64 [ %i.x, %bb.h ], [ %i.t, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBJ_4gpos7cursive14CursivePosRuleEE7reserveBJ_.exit.i.i ] ; 4 uses
  invoke void @_RNvXs1c_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_10IntoValuesTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16TNtNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout11lookup_flag10LookupFlagINtNtCsf3Ta7LF998c_4core6option6OptiontEEEINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB3W_4gpos7cursive14CursivePosRuleEENtNtNtNtB3g_4iter6traits8iterator8Iterator4nextB3W_(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b)
          to label %bb.g unwind label %bb.f, !noalias !3122

bb.f:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          cleanup
  store i64 %.val5.i.i.i.i, ptr %i.p, align 8, !alias.scope !3119, !noalias !3123
  invoke void @_RNvXsy_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8IntoIterTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16TNtNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout11lookup_flag10LookupFlagINtNtCsf3Ta7LF998c_4core6option6OptiontEEEINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB3S_4gpos7cursive14CursivePosRuleEENtNtNtB3c_3ops4drop4Drop4dropB3S_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b)
          to label %.body unwind label %bb.i, !noalias !3122

bb.g:                                             ; preds = %bb.e
  %i.v = load i64, ptr %i.a, align 8, !range !8, !noalias !3124, !noundef !4
  %.not.i.i.i.i = icmp eq i64 %i.v, -5
  br i1 %.not.i.i.i.i, label %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBL_4gpos7cursive14CursivePosRuleEE14extend_trustedINtNtNtNtB8_11collections5btree3map10IntoValuesTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16TNtNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout11lookup_flag10LookupFlagINtNtCsf3Ta7LF998c_4core6option6OptiontEEEBG_EEBL_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw [176 x i8], ptr %i.s, i64 %.val5.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.w, ptr noundef nonnull align 8 dereferenceable(176) %i.a, i64 176, i1 false), !noalias !3122
  %i.x = add i64 %.val5.i.i.i.i, 1
  br label %bb.e

bb.i:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20, !noalias !3122
  unreachable

bb.j:                                             ; preds = %bb.d
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsy_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8IntoIterTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16TNtNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout11lookup_flag10LookupFlagINtNtCsf3Ta7LF998c_4core6option6OptiontEEEINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB3S_4gpos7cursive14CursivePosRuleEENtNtNtB3c_3ops4drop4Drop4dropB3S_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d)
          to label %.body unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBL_4gpos7cursive14CursivePosRuleEE14extend_trustedINtNtNtNtB8_11collections5btree3map10IntoValuesTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16TNtNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout11lookup_flag10LookupFlagINtNtCsf3Ta7LF998c_4core6option6OptiontEEEBG_EEBL_.exit.i: ; preds = %bb.g
  store i64 %.val5.i.i.i.i, ptr %i.p, align 8, !alias.scope !3119, !noalias !3123
  invoke void @_RNvXsy_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8IntoIterTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16TNtNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout11lookup_flag10LookupFlagINtNtCsf3Ta7LF998c_4core6option6OptiontEEEINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB3S_4gpos7cursive14CursivePosRuleEENtNtNtB3c_3ops4drop4Drop4dropB3S_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBL_4gpos7cursive14CursivePosRuleEE14extend_trustedINtNtNtNtB8_11collections5btree3map10IntoValuesTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16TNtNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout11lookup_flag10LookupFlagINtNtCsf3Ta7LF998c_4core6option6OptiontEEEBG_EEBL_.exit.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.j, %bb.l
  %eh.lpad-body = phi { ptr, i32 } [ %i.aa, %bb.l ], [ %lpad.thr_comm.i.i, %bb.j ], [ %i.u, %bb.f ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB1d_4gpos7cursive14CursivePosRuleEEEB1d_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #22
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map10IntoValuesTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16TNtNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout11lookup_flag10LookupFlagINtNtB4_6option6OptiontEEEINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB48_4gpos7cursive14CursivePosRuleEEEB48_.exit unwind label %bb.n

bb.m:                                             ; preds = %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBL_4gpos7cursive14CursivePosRuleEE14extend_trustedINtNtNtNtB8_11collections5btree3map10IntoValuesTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16TNtNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout11lookup_flag10LookupFlagINtNtCsf3Ta7LF998c_4core6option6OptiontEEEBG_EEBL_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.n:                                             ; preds = %bb.o, %.body
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map10IntoValuesTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16TNtNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout11lookup_flag10LookupFlagINtNtB4_6option6OptiontEEEINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB48_4gpos7cursive14CursivePosRuleEEEB48_.exit: ; preds = %bb.o, %.body
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ac, %bb.o ]
  resume { ptr, i32 } %.pn8

bb.o:                                             ; preds = %bb.b, %bb.a
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsy_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8IntoIterTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16TNtNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout11lookup_flag10LookupFlagINtNtCsf3Ta7LF998c_4core6option6OptiontEEEINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB3S_4gpos7cursive14CursivePosRuleEENtNtNtB3c_3ops4drop4Drop4dropB3S_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map10IntoValuesTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16TNtNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout11lookup_flag10LookupFlagINtNtB4_6option6OptiontEEEINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB48_4gpos7cursive14CursivePosRuleEEEB48_.exit unwind label %bb.n
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14EINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB2p_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables10variations21RegionAxisCoordinatesENCNCNvMNtCs5JazJsyow1H_14otl_normalizer10variationsNtB4P_13DeltaComputer3news0_00EE9from_iterB4R_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.d = ptrtoint ptr %2 to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 6                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 2, i64 noundef 2)
  %i.h = load i64, ptr %i.b, align 8, !range !6, !noundef !4
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !22, !noundef !4 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14E14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1O_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables10variations21RegionAxisCoordinatesENCNCNvMNtCs5JazJsyow1H_14otl_normalizer10variationsNtB4e_13DeltaComputer3news0_00EEB4g_.exit.i, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #25
  unreachable

_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14E14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1O_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables10variations21RegionAxisCoordinatesENCNCNvMNtCs5JazJsyow1H_14otl_normalizer10variationsNtB4e_13DeltaComputer3news0_00EEB4g_.exit.i: ; preds = %bb.a
end_hunk_1
