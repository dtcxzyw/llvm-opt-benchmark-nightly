Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_render-b6943bf748ed61f5.typst_render.34e4e3ded1502606-cgu.0?download=true
inline.NumInlined: 1272
inline.NumDeleted: 654
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsaixNeEcpA3e_4slab5EntryINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtB18_7memoize10CacheEntryINtNvNtB18_5inputs1_1__9MultiCalluuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEEEECs4xylOWI7Ys4_12typst_render:bb.a

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i = load ptr, ptr %i.j, align 8, !alias.scope !42, !nonnull !5, !noundef !5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !42
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBG_7memoize10CacheEntryINtNvNtBG_5inputs1_1__9MultiCalluuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEEECs4xylOWI7Ys4_12typst_render.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsaixNeEcpA3e_4slab5EntryINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtB18_7memoize10CacheEntryINtNvNtB18_5inputs2_1__9MultiCalluuuuEINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEEECs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !4, !noundef !5
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBG_7memoize10CacheEntryINtNvNtBG_5inputs2_1__9MultiCalluuuuEINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEECs4xylOWI7Ys4_12typst_render.exit, label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBG_7memoize10CacheEntryINtNvNtBG_5inputs2_1__9MultiCalluuuuEINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEECs4xylOWI7Ys4_12typst_render.exit: ; preds = %bb.d, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEECs4xylOWI7Ys4_12typst_render.exit.i.i, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !55, !nonnull !5, !noundef !5
  %i.f = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !55
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEECs4xylOWI7Ys4_12typst_render.exit.i.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapE9drop_slowCs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.d) #25
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEECs4xylOWI7Ys4_12typst_render.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEECs4xylOWI7Ys4_12typst_render.exit.i.i: ; preds = %bb.c, %bb.b
  %.val.i.i = load i64, ptr %i.c, align 8, !alias.scope !56 ; 2 uses
  %i.h = icmp eq i64 %.val.i.i, 0
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBG_7memoize10CacheEntryINtNvNtBG_5inputs2_1__9MultiCalluuuuEINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEECs4xylOWI7Ys4_12typst_render.exit, label %bb.d

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEECs4xylOWI7Ys4_12typst_render.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i = load ptr, ptr %i.i, align 8, !alias.scope !56, !nonnull !5, !noundef !5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !56
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBG_7memoize10CacheEntryINtNvNtBG_5inputs2_1__9MultiCalluuuuEINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEECs4xylOWI7Ys4_12typst_render.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsaixNeEcpA3e_4slab5EntryINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtB18_7memoize10CacheEntryINtNvNtB18_5inputs3_1__9MultiCalluuuuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEEEEECs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !4, !noundef !5
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBG_7memoize10CacheEntryINtNvNtBG_5inputs3_1__9MultiCalluuuuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEEEECs4xylOWI7Ys4_12typst_render.exit, label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBG_7memoize10CacheEntryINtNvNtBG_5inputs3_1__9MultiCalluuuuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEEEECs4xylOWI7Ys4_12typst_render.exit: ; preds = %bb.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEECs4xylOWI7Ys4_12typst_render.exit.i.i, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !70, !noundef !5 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEECs4xylOWI7Ys4_12typst_render.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !71
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEECs4xylOWI7Ys4_12typst_render.exit.i.i

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapE9drop_slowCs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.d) #25
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEECs4xylOWI7Ys4_12typst_render.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEECs4xylOWI7Ys4_12typst_render.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %.val.i.i = load i64, ptr %i.c, align 8, !alias.scope !72 ; 2 uses
  %i.i = icmp eq i64 %.val.i.i, 0
  br i1 %i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBG_7memoize10CacheEntryINtNvNtBG_5inputs3_1__9MultiCalluuuuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEEEECs4xylOWI7Ys4_12typst_render.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEECs4xylOWI7Ys4_12typst_render.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i = load ptr, ptr %i.j, align 8, !alias.scope !72, !nonnull !5, !noundef !5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !72
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBG_7memoize10CacheEntryINtNvNtBG_5inputs3_1__9MultiCalluuuuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEEEECs4xylOWI7Ys4_12typst_render.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeEECs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6, !noundef !5
  %i.b = icmp eq i64 %i.a, -2
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeECs4xylOWI7Ys4_12typst_render.exit, label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeECs4xylOWI7Ys4_12typst_render.exit: ; preds = %bb.f, %bb.e, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5paint5PaintECs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %.val2.i = load i64, ptr %0, align 8, !range !7, !alias.scope !75, !noundef !5 ; 2 uses
  %i.e = icmp sgt i64 %.val2.i, 0
  br i1 %i.e, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11DashPatternNtNtNtB14_6layout3abs3AbsB21_EEECs4xylOWI7Ys4_12typst_render.exit.i

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i = load ptr, ptr %i.f, align 8, !alias.scope !75, !nonnull !5, !noundef !5
  %i.g = shl nuw i64 %.val2.i, 3
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #26
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11DashPatternNtNtNtB14_6layout3abs3AbsB21_EEECs4xylOWI7Ys4_12typst_render.exit.i

bb.e:                                             ; preds = %bb.b
  %.val.i = load i64, ptr %0, align 8, !range !7, !alias.scope !75, !noundef !5 ; 2 uses
  %i.h = icmp sgt i64 %.val.i, 0
  br i1 %i.h, label %bb.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeECs4xylOWI7Ys4_12typst_render.exit

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.i, align 8, !alias.scope !75, !nonnull !5, !noundef !5
  %i.j = shl nuw i64 %.val.i, 3
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #26
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeECs4xylOWI7Ys4_12typst_render.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11DashPatternNtNtNtB14_6layout3abs3AbsB21_EEECs4xylOWI7Ys4_12typst_render.exit.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEECs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4xylOWI7Ys4_12typst_render.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit.i.i
  %.sroa.0.011.i.i = phi i64 [ %i.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.sroa.0.011.i.i ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.0.011.i.i, 1      ; 2 uses
  %.val8.i.i = load i64, ptr %i.d, align 8, !alias.scope !78 ; 2 uses
  %i.f = icmp eq i64 %.val8.i.i, 0
  br i1 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = getelementptr i8, ptr %i.d, i64 8
  %.val9.i.i = load ptr, ptr %i.g, align 8, !alias.scope !78, !nonnull !5, !noundef !5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i, i64 noundef %.val8.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !78
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.h = icmp eq i64 %i.e, %.val1
  br i1 %i.h, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4xylOWI7Ys4_12typst_render.exit, label %.lr.ph.i.i

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4xylOWI7Ys4_12typst_render.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !8, !noundef !5 ; 2 uses
  %i.i = icmp eq i64 %.val2, 0
  br i1 %i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEECs4xylOWI7Ys4_12typst_render.exit6, label %bb.c

bb.c:                                             ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4xylOWI7Ys4_12typst_render.exit
  %i.j = shl nuw i64 %.val2, 5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #26
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEECs4xylOWI7Ys4_12typst_render.exit6

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEECs4xylOWI7Ys4_12typst_render.exit6: ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4xylOWI7Ys4_12typst_render.exit, %bb.c
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint12CallSequenceINtNvNtBG_5inputs1_1__9MultiCalluuuEEECs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val4 = load i64, ptr %0, align 8              ; 2 uses
  %i.a = icmp eq i64 %.val4, 0
  br i1 %i.a, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs1_1__9MultiCalluuuEoEEEECs4xylOWI7Ys4_12typst_render.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val5 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = shl nuw i64 %.val4, 5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 16) #26
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs1_1__9MultiCalluuuEoEEEECs4xylOWI7Ys4_12typst_render.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs1_1__9MultiCalluuuEoEEEECs4xylOWI7Ys4_12typst_render.exit: ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1 = load i64, ptr %i.e, align 8, !noundef !5 ; 4 uses
  %i.f = icmp eq i64 %.val1, 0
  br i1 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapojNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs4xylOWI7Ys4_12typst_render.exit, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs1_1__9MultiCalluuuEoEEEECs4xylOWI7Ys4_12typst_render.exit
  %i.g = icmp slt i64 %.val1, 576460752303423487
  tail call void @llvm.assume(i1 %i.g)
  %i.h = shl i64 %.val1, 5                        ; 2 uses
  %i.i = add i64 %i.h, 32                         ; 2 uses
  %i.j = add nsw i64 %.val1, 17
  %i.k = add i64 %i.j, %i.i                       ; 4 uses
  %i.l = icmp uge i64 %i.k, %i.i
  %i.m = icmp ult i64 %i.k, 9223372036854775793
  tail call void @llvm.assume(i1 %i.l)
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.n = icmp eq i64 %i.k, 0
  br i1 %i.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapojNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs4xylOWI7Ys4_12typst_render.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i
  %i.o = sub nuw nsw i64 -32, %i.h
  %i.p = getelementptr inbounds i8, ptr %.val, i64 %i.o
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.p, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 16) #26
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapojNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs4xylOWI7Ys4_12typst_render.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapojNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs4xylOWI7Ys4_12typst_render.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs1_1__9MultiCalluuuEoEEEECs4xylOWI7Ys4_12typst_render.exit, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i, %bb.c
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint12CallSequenceINtNvNtBG_5inputs2_1__9MultiCalluuuuEEECs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs2_1__9MultiCalluuuuEoEEEECs4xylOWI7Ys4_12typst_render.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = shl nuw i64 %.val, 5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 16) #26
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs2_1__9MultiCalluuuuEoEEEECs4xylOWI7Ys4_12typst_render.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs2_1__9MultiCalluuuuEoEEEECs4xylOWI7Ys4_12typst_render.exit: ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2 = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3 = load i64, ptr %i.e, align 8, !noundef !5 ; 4 uses
  %i.f = icmp eq i64 %.val3, 0
  br i1 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapojNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs4xylOWI7Ys4_12typst_render.exit, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs2_1__9MultiCalluuuuEoEEEECs4xylOWI7Ys4_12typst_render.exit
  %i.g = icmp slt i64 %.val3, 576460752303423487
  tail call void @llvm.assume(i1 %i.g)
  %i.h = shl i64 %.val3, 5                        ; 2 uses
  %i.i = add i64 %i.h, 32                         ; 2 uses
  %i.j = add nsw i64 %.val3, 17
  %i.k = add i64 %i.j, %i.i                       ; 4 uses
  %i.l = icmp uge i64 %i.k, %i.i
  %i.m = icmp ult i64 %i.k, 9223372036854775793
  tail call void @llvm.assume(i1 %i.l)
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  %i.n = icmp eq i64 %i.k, 0
  br i1 %i.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapojNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs4xylOWI7Ys4_12typst_render.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i
  %i.o = sub nuw nsw i64 -32, %i.h
  %i.p = getelementptr inbounds i8, ptr %.val2, i64 %i.o
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.p, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 16) #26
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapojNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs4xylOWI7Ys4_12typst_render.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapojNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs4xylOWI7Ys4_12typst_render.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs2_1__9MultiCalluuuuEoEEEECs4xylOWI7Ys4_12typst_render.exit, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i, %bb.c
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint12CallSequenceINtNvNtBG_5inputs3_1__9MultiCalluuuuuEEECs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val4 = load i64, ptr %0, align 8              ; 2 uses
  %i.a = icmp eq i64 %.val4, 0
  br i1 %i.a, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs3_1__9MultiCalluuuuuEoEEEECs4xylOWI7Ys4_12typst_render.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val5 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = shl nuw i64 %.val4, 5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 16) #26
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs3_1__9MultiCalluuuuuEoEEEECs4xylOWI7Ys4_12typst_render.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs3_1__9MultiCalluuuuuEoEEEECs4xylOWI7Ys4_12typst_render.exit: ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1 = load i64, ptr %i.e, align 8, !noundef !5 ; 4 uses
  %i.f = icmp eq i64 %.val1, 0
  br i1 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapojNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs4xylOWI7Ys4_12typst_render.exit, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs3_1__9MultiCalluuuuuEoEEEECs4xylOWI7Ys4_12typst_render.exit
  %i.g = icmp slt i64 %.val1, 576460752303423487
  tail call void @llvm.assume(i1 %i.g)
  %i.h = shl i64 %.val1, 5                        ; 2 uses
  %i.i = add i64 %i.h, 32                         ; 2 uses
  %i.j = add nsw i64 %.val1, 17
  %i.k = add i64 %i.j, %i.i                       ; 4 uses
  %i.l = icmp uge i64 %i.k, %i.i
  %i.m = icmp ult i64 %i.k, 9223372036854775793
  tail call void @llvm.assume(i1 %i.l)
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.n = icmp eq i64 %i.k, 0
  br i1 %i.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapojNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs4xylOWI7Ys4_12typst_render.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i
  %i.o = sub nuw nsw i64 -32, %i.h
  %i.p = getelementptr inbounds i8, ptr %.val, i64 %i.o
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.p, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 16) #26
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapojNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs4xylOWI7Ys4_12typst_render.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapojNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs4xylOWI7Ys4_12typst_render.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs3_1__9MultiCalluuuuuEoEEEECs4xylOWI7Ys4_12typst_render.exit, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i, %bb.c
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBG_7memoize10CacheEntryINtNvNtBG_5inputs1_1__9MultiCalluuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEEECs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !89, !noundef !5 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !90
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapE9drop_slowCs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.b) #25
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit.i: ; preds = %bb.c, %bb.b, %bb.a
  %.val.i = load i64, ptr %i.a, align 8, !alias.scope !87 ; 2 uses
  %i.g = icmp eq i64 %.val.i, 0
  br i1 %i.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo7memoize10CacheEntryINtNvNtBG_5inputs1_1__9MultiCalluuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEECs4xylOWI7Ys4_12typst_render.exit, label %bb.d

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i = load ptr, ptr %i.h, align 8, !alias.scope !87, !nonnull !5, !noundef !5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !87
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo7memoize10CacheEntryINtNvNtBG_5inputs1_1__9MultiCalluuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEECs4xylOWI7Ys4_12typst_render.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo7memoize10CacheEntryINtNvNtBG_5inputs1_1__9MultiCalluuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEECs4xylOWI7Ys4_12typst_render.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit.i, %bb.d
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBG_7memoize10CacheEntryINtNvNtBG_5inputs2_1__9MultiCalluuuuEINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEECs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !100, !nonnull !5, !noundef !5
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !100
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEECs4xylOWI7Ys4_12typst_render.exit.i

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapE9drop_slowCs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.b) #25
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEECs4xylOWI7Ys4_12typst_render.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEECs4xylOWI7Ys4_12typst_render.exit.i: ; preds = %bb.b, %bb.a
  %.val.i = load i64, ptr %i.a, align 8, !alias.scope !97 ; 2 uses
  %i.f = icmp eq i64 %.val.i, 0
  br i1 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo7memoize10CacheEntryINtNvNtBG_5inputs2_1__9MultiCalluuuuEINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit, label %bb.c

bb.c:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEECs4xylOWI7Ys4_12typst_render.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i = load ptr, ptr %i.g, align 8, !alias.scope !97, !nonnull !5, !noundef !5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !97
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo7memoize10CacheEntryINtNvNtBG_5inputs2_1__9MultiCalluuuuEINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo7memoize10CacheEntryINtNvNtBG_5inputs2_1__9MultiCalluuuuEINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEECs4xylOWI7Ys4_12typst_render.exit.i, %bb.c
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBG_7memoize10CacheEntryINtNvNtBG_5inputs3_1__9MultiCalluuuuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEEEECs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !111, !noundef !5 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEECs4xylOWI7Ys4_12typst_render.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !112
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEECs4xylOWI7Ys4_12typst_render.exit.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapE9drop_slowCs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.b) #25
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEECs4xylOWI7Ys4_12typst_render.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEECs4xylOWI7Ys4_12typst_render.exit.i: ; preds = %bb.c, %bb.b, %bb.a
  %.val.i = load i64, ptr %i.a, align 8, !alias.scope !109 ; 2 uses
  %i.g = icmp eq i64 %.val.i, 0
  br i1 %i.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo7memoize10CacheEntryINtNvNtBG_5inputs3_1__9MultiCalluuuuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEEECs4xylOWI7Ys4_12typst_render.exit, label %bb.d

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEECs4xylOWI7Ys4_12typst_render.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i = load ptr, ptr %i.h, align 8, !alias.scope !109, !nonnull !5, !noundef !5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !109
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo7memoize10CacheEntryINtNvNtBG_5inputs3_1__9MultiCalluuuuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEEECs4xylOWI7Ys4_12typst_render.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo7memoize10CacheEntryINtNvNtBG_5inputs3_1__9MultiCalluuuuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEEECs4xylOWI7Ys4_12typst_render.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEECs4xylOWI7Ys4_12typst_render.exit.i, %bb.d
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo7memoize10CacheEntryINtNvNtBG_5inputs1_1__9MultiCalluuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEECs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !119, !noundef !5 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !120
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapE9drop_slowCs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.a) #25
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.f = icmp eq i64 %.val, 0
  br i1 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNvNtCsloFShupyl5J_6comemo5inputs1_1__9MultiCalluuuEEECs4xylOWI7Ys4_12typst_render.exit4, label %bb.d

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #26
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNvNtCsloFShupyl5J_6comemo5inputs1_1__9MultiCalluuuEEECs4xylOWI7Ys4_12typst_render.exit4

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNvNtCsloFShupyl5J_6comemo5inputs1_1__9MultiCalluuuEEECs4xylOWI7Ys4_12typst_render.exit4: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit, %bb.d
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo7memoize10CacheEntryINtNvNtBG_5inputs2_1__9MultiCalluuuuEINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !127, !nonnull !5, !noundef !5
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !127
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEECs4xylOWI7Ys4_12typst_render.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapE9drop_slowCs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.a) #25
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEECs4xylOWI7Ys4_12typst_render.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEECs4xylOWI7Ys4_12typst_render.exit: ; preds = %bb.b, %bb.a
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.e = icmp eq i64 %.val, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNvNtCsloFShupyl5J_6comemo5inputs2_1__9MultiCalluuuuEEECs4xylOWI7Ys4_12typst_render.exit4, label %bb.c

bb.c:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEECs4xylOWI7Ys4_12typst_render.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #26
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNvNtCsloFShupyl5J_6comemo5inputs2_1__9MultiCalluuuuEEECs4xylOWI7Ys4_12typst_render.exit4

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNvNtCsloFShupyl5J_6comemo5inputs2_1__9MultiCalluuuuEEECs4xylOWI7Ys4_12typst_render.exit4: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEECs4xylOWI7Ys4_12typst_render.exit, %bb.c
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo7memoize10CacheEntryINtNvNtBG_5inputs3_1__9MultiCalluuuuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEEECs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !134, !noundef !5 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEECs4xylOWI7Ys4_12typst_render.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !135
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEECs4xylOWI7Ys4_12typst_render.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapE9drop_slowCs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.a) #25
end_hunk_0
begin_hunk_1_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5paint5PaintECs4xylOWI7Ys4_12typst_render:bb.a

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !260)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !261)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !262, !nonnull !5, !noundef !5
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !262
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingECs4xylOWI7Ys4_12typst_render.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling11TilingInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #25
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingECs4xylOWI7Ys4_12typst_render.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !263)
  %i.j = icmp eq i32 %i.a, 0
  br i1 %i.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingECs4xylOWI7Ys4_12typst_render.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !264)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !266)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !267, !nonnull !5, !noundef !5
  %i.m = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !267
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingECs4xylOWI7Ys4_12typst_render.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k) #25
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingECs4xylOWI7Ys4_12typst_render.exit

bb.g:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !268)
  %i.p = load i64, ptr %i.o, align 8, !range !4, !alias.scope !268, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  switch i64 %i.p, label %bb.h [
    i64 0, label %bb.j
    i64 1, label %bb.l
  ]

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !269)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !270)
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !271, !nonnull !5, !noundef !5
  %i.s = atomicrmw sub ptr %i.r, i64 1 release, align 8, !noalias !271
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingECs4xylOWI7Ys4_12typst_render.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient13ConicGradientE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.q) #25
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingECs4xylOWI7Ys4_12typst_render.exit

bb.j:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !272)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273)
  %i.u = load ptr, ptr %i.q, align 8, !alias.scope !274, !nonnull !5, !noundef !5
  %i.v = atomicrmw sub ptr %i.u, i64 1 release, align 8, !noalias !274
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingECs4xylOWI7Ys4_12typst_render.exit

bb.k:                                             ; preds = %bb.j
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient14LinearGradientE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.q) #25
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingECs4xylOWI7Ys4_12typst_render.exit

bb.l:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !275)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !276)
  %i.x = load ptr, ptr %i.q, align 8, !alias.scope !277, !nonnull !5, !noundef !5
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !277
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingECs4xylOWI7Ys4_12typst_render.exit

bb.m:                                             ; preds = %bb.l
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient14RadialGradientE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.q) #25
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingECs4xylOWI7Ys4_12typst_render.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingECs4xylOWI7Ys4_12typst_render.exit: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5shape5ShapeECs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !11, !noundef !5 ; 2 uses
  %switch = icmp sgt i64 %.val, 0
  br i1 %switch, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5shape8GeometryECs4xylOWI7Ys4_12typst_render.exit

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.b = mul nuw i64 %.val, 56
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef %i.b, i64 noundef range(i64 1, -9223372036854775807) 8) #26
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5shape8GeometryECs4xylOWI7Ys4_12typst_render.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5shape8GeometryECs4xylOWI7Ys4_12typst_render.exit: ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !range !12, !alias.scope !284, !noundef !5
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library9visualize5paint5PaintEECs4xylOWI7Ys4_12typst_render.exit4, label %bb.c

bb.c:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5shape8GeometryECs4xylOWI7Ys4_12typst_render.exit
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5paint5PaintECs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library9visualize5paint5PaintEECs4xylOWI7Ys4_12typst_render.exit4 unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeEECs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef align 8 dereferenceable(80) %i.g) #28
          to label %common.resume unwind label %bb.j

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library9visualize5paint5PaintEECs4xylOWI7Ys4_12typst_render.exit4: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5shape8GeometryECs4xylOWI7Ys4_12typst_render.exit, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !range !6, !alias.scope !285, !noundef !5
  %i.j = icmp eq i64 %i.i, -2
  br i1 %i.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeEECs4xylOWI7Ys4_12typst_render.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library9visualize5paint5PaintEECs4xylOWI7Ys4_12typst_render.exit4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5paint5PaintECs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %i.h, align 8, !range !7, !alias.scope !286, !noundef !5 ; 2 uses
  %i.m = icmp sgt i64 %.val2.i.i, 0
  br i1 %i.m, label %bb.g, label %common.resume

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3.i.i = load ptr, ptr %i.n, align 8, !alias.scope !286, !nonnull !5, !noundef !5
  %i.o = shl nuw i64 %.val2.i.i, 3
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) 8) #26
  br label %common.resume

bb.h:                                             ; preds = %bb.e
  %.val.i.i = load i64, ptr %i.h, align 8, !range !7, !alias.scope !286, !noundef !5 ; 2 uses
  %i.p = icmp sgt i64 %.val.i.i, 0
  br i1 %i.p, label %bb.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeEECs4xylOWI7Ys4_12typst_render.exit

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i.i = load ptr, ptr %i.q, align 8, !alias.scope !286, !nonnull !5, !noundef !5
  %i.r = shl nuw i64 %.val.i.i, 3
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #26
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeEECs4xylOWI7Ys4_12typst_render.exit

common.resume:                                    ; preds = %bb.d, %bb.f, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.f ], [ %i.l, %bb.g ], [ %i.f, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeEECs4xylOWI7Ys4_12typst_render.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library9visualize5paint5PaintEECs4xylOWI7Ys4_12typst_render.exit4, %bb.h, %bb.i
  ret void

bb.j:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTTuuuEINtNtCsloFShupyl5J_6comemo10constraint10ConstraintINtNvNtBM_5inputs1_1__9MultiCalluuuEEEECs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !298)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !300)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !301)
  %.val4.i.i.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !302 ; 2 uses
  %i.b = icmp eq i64 %.val4.i.i.i.i.i, 0
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs1_1__9MultiCalluuuEoEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val5.i.i.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !302, !nonnull !5, !noundef !5
  %i.d = shl nuw i64 %.val4.i.i.i.i.i, 5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) 16) #26, !noalias !302
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs1_1__9MultiCalluuuEoEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs1_1__9MultiCalluuuEoEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !302 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1.i.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !302, !noundef !5 ; 4 uses
  %i.g = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint12CallSequenceINtNvNtBG_5inputs1_1__9MultiCalluuuEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs1_1__9MultiCalluuuEoEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i
  %i.h = icmp slt i64 %.val1.i.i.i.i.i, 576460752303423487
  tail call void @llvm.assume(i1 %i.h)
  %i.i = shl i64 %.val1.i.i.i.i.i, 5              ; 2 uses
  %i.j = add i64 %i.i, 32                         ; 2 uses
  %i.k = add nsw i64 %.val1.i.i.i.i.i, 17
  %i.l = add i64 %i.k, %i.j                       ; 4 uses
  %i.m = icmp uge i64 %i.l, %i.j
  %i.n = icmp ult i64 %i.l, 9223372036854775793
  tail call void @llvm.assume(i1 %i.m)
  tail call void @llvm.assume(i1 %i.n)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  %i.o = icmp eq i64 %i.l, 0
  br i1 %i.o, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint12CallSequenceINtNvNtBG_5inputs1_1__9MultiCalluuuEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i
  %i.p = sub nuw nsw i64 -32, %i.i
  %i.q = getelementptr inbounds i8, ptr %.val.i.i.i.i.i, i64 %i.p
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.q, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 16) #26, !noalias !302
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint12CallSequenceINtNvNtBG_5inputs1_1__9MultiCalluuuEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint12CallSequenceINtNvNtBG_5inputs1_1__9MultiCalluuuEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i: ; preds = %bb.c, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs1_1__9MultiCalluuuEoEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val.i.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !303 ; 2 uses
  %i.s = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.s, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint10ConstraintINtNvNtBG_5inputs1_1__9MultiCalluuuEEECs4xylOWI7Ys4_12typst_render.exit, label %bb.d

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint12CallSequenceINtNvNtBG_5inputs1_1__9MultiCalluuuEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val1.i.i.i.i = load ptr, ptr %i.t, align 8, !alias.scope !303, !nonnull !5, !noundef !5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !303
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint10ConstraintINtNvNtBG_5inputs1_1__9MultiCalluuuEEECs4xylOWI7Ys4_12typst_render.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint10ConstraintINtNvNtBG_5inputs1_1__9MultiCalluuuEEECs4xylOWI7Ys4_12typst_render.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint12CallSequenceINtNvNtBG_5inputs1_1__9MultiCalluuuEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i, %bb.d
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTTuuuuEINtNtCsloFShupyl5J_6comemo10constraint10ConstraintINtNvNtBN_5inputs2_1__9MultiCalluuuuEEEECs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !314)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !315)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !316)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !318)
  %.val.i.i.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !319 ; 2 uses
  %i.b = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs2_1__9MultiCalluuuuEoEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !319, !nonnull !5, !noundef !5
  %i.d = shl nuw i64 %.val.i.i.i.i.i, 5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) 16) #26, !noalias !319
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs2_1__9MultiCalluuuuEoEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs2_1__9MultiCalluuuuEoEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val2.i.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !319 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val3.i.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !319, !noundef !5 ; 4 uses
  %i.g = icmp eq i64 %.val3.i.i.i.i.i, 0
  br i1 %i.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint12CallSequenceINtNvNtBG_5inputs2_1__9MultiCalluuuuEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs2_1__9MultiCalluuuuEoEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i
  %i.h = icmp slt i64 %.val3.i.i.i.i.i, 576460752303423487
  tail call void @llvm.assume(i1 %i.h)
  %i.i = shl i64 %.val3.i.i.i.i.i, 5              ; 2 uses
  %i.j = add i64 %i.i, 32                         ; 2 uses
  %i.k = add nsw i64 %.val3.i.i.i.i.i, 17
  %i.l = add i64 %i.k, %i.j                       ; 4 uses
  %i.m = icmp uge i64 %i.l, %i.j
  %i.n = icmp ult i64 %i.l, 9223372036854775793
  tail call void @llvm.assume(i1 %i.m)
  tail call void @llvm.assume(i1 %i.n)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i.i.i.i) ]
  %i.o = icmp eq i64 %i.l, 0
  br i1 %i.o, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint12CallSequenceINtNvNtBG_5inputs2_1__9MultiCalluuuuEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i
  %i.p = sub nuw nsw i64 -32, %i.i
  %i.q = getelementptr inbounds i8, ptr %.val2.i.i.i.i.i, i64 %i.p
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.q, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 16) #26, !noalias !319
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint12CallSequenceINtNvNtBG_5inputs2_1__9MultiCalluuuuEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint12CallSequenceINtNvNtBG_5inputs2_1__9MultiCalluuuuEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i: ; preds = %bb.c, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs2_1__9MultiCalluuuuEoEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val.i.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !320 ; 2 uses
  %i.s = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.s, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint10ConstraintINtNvNtBG_5inputs2_1__9MultiCalluuuuEEECs4xylOWI7Ys4_12typst_render.exit, label %bb.d

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint12CallSequenceINtNvNtBG_5inputs2_1__9MultiCalluuuuEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val1.i.i.i.i = load ptr, ptr %i.t, align 8, !alias.scope !320, !nonnull !5, !noundef !5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !320
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint10ConstraintINtNvNtBG_5inputs2_1__9MultiCalluuuuEEECs4xylOWI7Ys4_12typst_render.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint10ConstraintINtNvNtBG_5inputs2_1__9MultiCalluuuuEEECs4xylOWI7Ys4_12typst_render.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint12CallSequenceINtNvNtBG_5inputs2_1__9MultiCalluuuuEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i, %bb.d
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTTuuuuuEINtNtCsloFShupyl5J_6comemo10constraint10ConstraintINtNvNtBO_5inputs3_1__9MultiCalluuuuuEEEECs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !331)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !332)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !333)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !334)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  %.val4.i.i.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !336 ; 2 uses
  %i.b = icmp eq i64 %.val4.i.i.i.i.i, 0
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs3_1__9MultiCalluuuuuEoEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val5.i.i.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !336, !nonnull !5, !noundef !5
  %i.d = shl nuw i64 %.val4.i.i.i.i.i, 5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) 16) #26, !noalias !336
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs3_1__9MultiCalluuuuuEoEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs3_1__9MultiCalluuuuuEoEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !336 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1.i.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !336, !noundef !5 ; 4 uses
  %i.g = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint12CallSequenceINtNvNtBG_5inputs3_1__9MultiCalluuuuuEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs3_1__9MultiCalluuuuuEoEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i
  %i.h = icmp slt i64 %.val1.i.i.i.i.i, 576460752303423487
  tail call void @llvm.assume(i1 %i.h)
  %i.i = shl i64 %.val1.i.i.i.i.i, 5              ; 2 uses
  %i.j = add i64 %i.i, 32                         ; 2 uses
  %i.k = add nsw i64 %.val1.i.i.i.i.i, 17
  %i.l = add i64 %i.k, %i.j                       ; 4 uses
  %i.m = icmp uge i64 %i.l, %i.j
  %i.n = icmp ult i64 %i.l, 9223372036854775793
  tail call void @llvm.assume(i1 %i.m)
  tail call void @llvm.assume(i1 %i.n)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  %i.o = icmp eq i64 %i.l, 0
  br i1 %i.o, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint12CallSequenceINtNvNtBG_5inputs3_1__9MultiCalluuuuuEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i
  %i.p = sub nuw nsw i64 -32, %i.i
  %i.q = getelementptr inbounds i8, ptr %.val.i.i.i.i.i, i64 %i.p
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.q, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 16) #26, !noalias !336
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint12CallSequenceINtNvNtBG_5inputs3_1__9MultiCalluuuuuEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint12CallSequenceINtNvNtBG_5inputs3_1__9MultiCalluuuuuEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i: ; preds = %bb.c, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs3_1__9MultiCalluuuuuEoEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val.i.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !337 ; 2 uses
  %i.s = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.s, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint10ConstraintINtNvNtBG_5inputs3_1__9MultiCalluuuuuEEECs4xylOWI7Ys4_12typst_render.exit, label %bb.d

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint12CallSequenceINtNvNtBG_5inputs3_1__9MultiCalluuuuuEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val1.i.i.i.i = load ptr, ptr %i.t, align 8, !alias.scope !337, !nonnull !5, !noundef !5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !337
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint10ConstraintINtNvNtBG_5inputs3_1__9MultiCalluuuuuEEECs4xylOWI7Ys4_12typst_render.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint10ConstraintINtNvNtBG_5inputs3_1__9MultiCalluuuuuEEECs4xylOWI7Ys4_12typst_render.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint12CallSequenceINtNvNtBG_5inputs3_1__9MultiCalluuuuuEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i, %bb.d
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 4, 9) %3, i64 noundef range(i64 4, 33) %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !340)
  %i.b = add i64 %2, %1                           ; 2 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !range !8, !alias.scope !340, !noundef !5 ; 2 uses
  %i.e = shl nuw i64 %i.d, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.b, i64 range(i64 0, -1) %i.e)
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !340
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.f, align 8, !alias.scope !340
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.d, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef range(i64 4, 9) %3, i64 noundef range(i64 4, 57) %4), !noalias !340
  %i.g = load i64, ptr %i.a, align 8, !range !13, !noalias !340, !noundef !5
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.i, align 8, !range !14, !noalias !340, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noalias !340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !340
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.l, %bb.c ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.j, %bb.c ]
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #29
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.i, align 8, !noalias !340, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !340
  store ptr %i.m, ptr %i.f, align 8, !alias.scope !340
  %i.n = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.n)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !340
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvXs9_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB6_12ProcessColorNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 7 uses
  %i.b = load i32, ptr %0, align 4, !range !373, !noundef !5
  %i.c = zext nneg i32 %i.b to i64                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !374, !noundef !5 ; 3 uses
  %i.f = add i64 %i.e, 8
  store i64 %i.f, ptr %i.d, align 8, !alias.scope !374
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !374, !noundef !5 ; 6 uses
  %i.i = shl i64 %i.h, 3                          ; 2 uses
  %i.j = and i64 %i.i, 56                         ; 2 uses
  %i.k = shl nuw nsw i64 %i.c, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 6 uses
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !374, !noundef !5
  %i.n = or i64 %i.k, %i.m                        ; 4 uses
  store i64 %i.n, ptr %i.l, align 8, !alias.scope !374
  %i.o = icmp ugt i64 %i.h, 8
  br i1 %i.o, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !374, !noundef !5
  %i.r = xor i64 %i.q, %i.n                       ; 3 uses
  %i.s = load i64, ptr %1, align 8, !alias.scope !375, !noundef !5
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !375, !noundef !5 ; 3 uses
  %i.v = add i64 %i.u, %i.s                       ; 3 uses
  %i.w = tail call noundef i64 @llvm.fshl.i64(i64 %i.u, i64 %i.u, i64 13)
  %i.x = xor i64 %i.w, %i.v                       ; 3 uses
  %i.y = tail call noundef i64 @llvm.fshl.i64(i64 %i.v, i64 %i.v, i64 32)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !375, !noundef !5
  %i.ab = add i64 %i.aa, %i.r                     ; 2 uses
  %i.ac = tail call noundef i64 @llvm.fshl.i64(i64 %i.r, i64 %i.r, i64 16)
  %i.ad = xor i64 %i.ab, %i.ac                    ; 3 uses
  %i.ae = add i64 %i.ad, %i.y                     ; 2 uses
  %i.af = tail call noundef i64 @llvm.fshl.i64(i64 %i.ad, i64 %i.ad, i64 21)
  %i.ag = xor i64 %i.af, %i.ae
  store i64 %i.ag, ptr %i.p, align 8, !alias.scope !375
  %i.ah = add i64 %i.ab, %i.x                     ; 3 uses
  %i.ai = tail call noundef i64 @llvm.fshl.i64(i64 %i.x, i64 %i.x, i64 17)
  %i.aj = xor i64 %i.ah, %i.ai
  store i64 %i.aj, ptr %i.t, align 8, !alias.scope !375
  %i.ak = tail call noundef i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 32)
  store i64 %i.ak, ptr %i.z, align 8, !alias.scope !375
  %i.al = xor i64 %i.ae, %i.n
  store i64 %i.al, ptr %1, align 8, !alias.scope !374
  %.not.i.i.i = icmp eq i64 %i.h, 0
  %i.am = sub nuw nsw i64 64, %i.i
  %i.an = lshr i64 %i.c, %i.am
  %.sroa.0.0.i.i.i = select i1 %.not.i.i.i, i64 0, i64 %i.an ; 2 uses
  store i64 %.sroa.0.0.i.i.i, ptr %i.l, align 8, !alias.scope !374
  br label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs4xylOWI7Ys4_12typst_render.exit

bb.c:                                             ; preds = %bb.a
  %i.ao = add i64 %i.h, 8                         ; 2 uses
  store i64 %i.ao, ptr %i.g, align 8, !alias.scope !374
  %.pre = shl i64 %i.h, 3
  %.pre7 = and i64 %.pre, 56
  br label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs4xylOWI7Ys4_12typst_render.exit

_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs4xylOWI7Ys4_12typst_render.exit: ; preds = %bb.b, %bb.c
  %.pre-phi8 = phi i64 [ %i.j, %bb.b ], [ %.pre7, %bb.c ]
  %i.ap = phi i64 [ %.sroa.0.0.i.i.i, %bb.b ], [ %i.n, %bb.c ]
  %i.aq = phi i64 [ %i.h, %bb.b ], [ %i.ao, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB5_12ProcessColor7to_vec4(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %0)
  %i.ar = load i32, ptr %i.a, align 4, !noundef !5
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.at = load i32, ptr %i.as, align 4, !noundef !5
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.av = load i32, ptr %i.au, align 4, !noundef !5
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.ax = load i32, ptr %i.aw, align 4, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ay = zext i32 %i.ar to i64                   ; 2 uses
  %i.az = add i64 %i.e, 12
  store i64 %i.az, ptr %i.d, align 8, !alias.scope !376
  %i.ba = sub i64 8, %i.aq                        ; 2 uses
  %i.bb = shl i64 %i.ay, %.pre-phi8
  %i.bc = or i64 %i.bb, %i.ap                     ; 3 uses
  %i.bd = icmp ugt i64 %i.ba, 4
  br i1 %i.bd, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs4xylOWI7Ys4_12typst_render.exit
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !376, !noundef !5
  %i.bg = xor i64 %i.bf, %i.bc                    ; 3 uses
  %i.bh = load i64, ptr %1, align 8, !alias.scope !377, !noundef !5
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !377, !noundef !5 ; 3 uses
  %i.bk = add i64 %i.bj, %i.bh                    ; 3 uses
  %i.bl = tail call noundef i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 13)
  %i.bm = xor i64 %i.bl, %i.bk                    ; 3 uses
  %i.bn = tail call noundef i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 32)
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !377, !noundef !5
  %i.bq = add i64 %i.bp, %i.bg                    ; 2 uses
  %i.br = tail call noundef i64 @llvm.fshl.i64(i64 %i.bg, i64 %i.bg, i64 16)
  %i.bs = xor i64 %i.bq, %i.br                    ; 3 uses
  %i.bt = add i64 %i.bs, %i.bn                    ; 2 uses
  %i.bu = tail call noundef i64 @llvm.fshl.i64(i64 %i.bs, i64 %i.bs, i64 21)
  %i.bv = xor i64 %i.bu, %i.bt
  store i64 %i.bv, ptr %i.be, align 8, !alias.scope !377
  %i.bw = add i64 %i.bq, %i.bm                    ; 3 uses
  %i.bx = tail call noundef i64 @llvm.fshl.i64(i64 %i.bm, i64 %i.bm, i64 17)
  %i.by = xor i64 %i.bw, %i.bx
  store i64 %i.by, ptr %i.bi, align 8, !alias.scope !377
  %i.bz = tail call noundef i64 @llvm.fshl.i64(i64 %i.bw, i64 %i.bw, i64 32)
  store i64 %i.bz, ptr %i.bo, align 8, !alias.scope !377
  %i.ca = xor i64 %i.bt, %i.bc
  store i64 %i.ca, ptr %1, align 8, !alias.scope !376
  %i.cb = add i64 %i.aq, -4
  %i.cc = shl nuw nsw i64 %i.ba, 3
  %i.cd = lshr i64 %i.ay, %i.cc                   ; 2 uses
  store i64 %i.cd, ptr %i.l, align 8, !alias.scope !376
  br label %_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u32.exit

bb.e:                                             ; preds = %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs4xylOWI7Ys4_12typst_render.exit
  %i.ce = add i64 %i.aq, 4
  br label %_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u32.exit

_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u32.exit: ; preds = %bb.d, %bb.e
  %i.cf = phi i64 [ %i.bc, %bb.e ], [ %i.cd, %bb.d ]
  %.sink.i.i = phi i64 [ %i.ce, %bb.e ], [ %i.cb, %bb.d ] ; 5 uses
  store i64 %.sink.i.i, ptr %i.g, align 8, !alias.scope !376
end_hunk_1
begin_hunk_2_@_RNvCs4xylOWI7Ys4_12typst_render13render_merged:bb.a

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCINvNtNtB1D_8adapters3map8map_foldRBQ_mmNCNvCs4xylOWI7Ys4_12typst_render13render_mergeds_0NCINvXsy_NtB1B_5accummNtB3U_3Sum3sumINtB2n_3MapBF_B2X_EE0E0EB31_.exit: ; preds = %scalar.ph, %.loopexit57
  %.sroa.0.050 = phi i32 [ 0, %.loopexit57 ], [ %.sroa.3.0.i.ph, %scalar.ph ]
  %.sroa.0.0.i23 = phi i32 [ 0, %.loopexit57 ], [ %i.dc, %scalar.ph ]
  %i.df = icmp ult i64 %i.as, 288230376151711744
  tail call void @llvm.assume(i1 %i.df)
  %i.dg = tail call i64 @llvm.usub.sat.i64(i64 %i.as, i64 1)
  %i.dh = trunc i64 %i.dg to i32
  %i.di = mul i32 %i.ao, %i.dh
  %i.dj = add i32 %.sroa.0.0.i23, %i.di
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @_RNvMNtCsfVrisfeHJNS_9tiny_skia6pixmapNtB2_6Pixmap3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.k, i32 noundef %.sroa.0.050, i32 noundef %i.dj)
          to label %bb.j unwind label %.thread

bb.j:                                             ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCINvNtNtB1D_8adapters3map8map_foldRBQ_mmNCNvCs4xylOWI7Ys4_12typst_render13render_mergeds_0NCINvXsy_NtB1B_5accummNtB3U_3Sum3sumINtB2n_3MapBF_B2X_EE0E0EB31_.exit
  %i.dk = load i64, ptr %i.k, align 8, !range !7, !noundef !5
  %.not = icmp eq i64 %i.dk, -1
  br i1 %.not, label %bb.l, label %bb.k, !prof !17

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.dl = load i32, ptr %4, align 8, !range !724, !noundef !5
  %.not11 = icmp eq i32 %i.dl, 2                  ; 3 uses
  br i1 %.not11, label %bb.o, label %bb.n

bb.l:                                             ; preds = %bb.j
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #29
          to label %bb.m unwind label %.thread

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB2_5Color10to_process(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
          to label %bb.s unwind label %bb.p

bb.o:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs4xylOWI7Ys4_12typst_render.exit28, %bb.k
  %i.dm = load i64, ptr %i.m, align 8, !range !8, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.aq, ptr %i.g, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.aq, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.dm, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.at, ptr %.sroa.6.0..sroa_idx, align 8
  br i1 %i.au, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs4xylOWI7Ys4_12typst_render.exit.thread, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs4xylOWI7Ys4_12typst_render.exit.lr.ph

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs4xylOWI7Ys4_12typst_render.exit.lr.ph: ; preds = %bb.o
  %i.dn = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.dq = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs4xylOWI7Ys4_12typst_render.exit

bb.p:                                             ; preds = %bb.w, %bb.s, %bb.x, %bb.n
  %i.dr = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !730)
  %i.ds = load i32, ptr %i.j, align 8, !range !15, !alias.scope !730, !noundef !5
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs4xylOWI7Ys4_12typst_render.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.du = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !731)
  call void @llvm.experimental.noalias.scope.decl(metadata !732)
  call void @llvm.experimental.noalias.scope.decl(metadata !733)
  %i.dv = load ptr, ptr %i.du, align 8, !alias.scope !734, !nonnull !5, !noundef !5
  %i.dw = atomicrmw sub ptr %i.dv, i64 1 release, align 8, !noalias !734
  %i.dx = icmp eq i64 %i.dw, 1
  br i1 %i.dx, label %bb.r, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs4xylOWI7Ys4_12typst_render.exit

bb.r:                                             ; preds = %bb.q
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.du) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs4xylOWI7Ys4_12typst_render.exit unwind label %bb.ad

bb.s:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !735)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !736
  invoke void @_RNvMs4_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB5_12ProcessColor6to_rgb(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %i.h)
          to label %.noexc25 unwind label %bb.p

.noexc25:                                         ; preds = %bb.s
  %i.dy = load <4 x float>, ptr %i.a, align 16, !noalias !736 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !736
  %i.dz = extractelement <4 x float> %i.dy, i64 0 ; 2 uses
  %or.cond.i.i = call i1 @llvm.is.fpclass.f32(float %i.dz, /* (zero psub pnorm) */ i32 480)
  %i.ea = fcmp ole float %i.dz, 1.000000e+00
  %or.cond1.i.i = and i1 %or.cond.i.i, %i.ea
  br i1 %or.cond1.i.i, label %bb.t, label %bb.w

bb.t:                                             ; preds = %.noexc25
  %i.eb = extractelement <4 x float> %i.dy, i64 1 ; 2 uses
  %or.cond2.i.i = call i1 @llvm.is.fpclass.f32(float %i.eb, /* (zero psub pnorm) */ i32 480)
  %i.ec = fcmp ole float %i.eb, 1.000000e+00
  %or.cond3.i.i = and i1 %or.cond2.i.i, %i.ec
  br i1 %or.cond3.i.i, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.ed = extractelement <4 x float> %i.dy, i64 2 ; 2 uses
  %or.cond4.i.i = call i1 @llvm.is.fpclass.f32(float %i.ed, /* (zero psub pnorm) */ i32 480)
  %i.ee = fcmp ole float %i.ed, 1.000000e+00
  %or.cond5.i.i = and i1 %or.cond4.i.i, %i.ee
  br i1 %or.cond5.i.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ef = extractelement <4 x float> %i.dy, i64 3 ; 2 uses
  %or.cond6.i.i = call i1 @llvm.is.fpclass.f32(float %i.ef, /* (zero psub pnorm) */ i32 480)
  %i.eg = fcmp ole float %i.ef, 1.000000e+00
  %or.cond7.i.i = and i1 %or.cond6.i.i, %i.eg
  br i1 %or.cond7.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t, %.noexc25
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 46, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #31
          to label %.noexc26 unwind label %bb.p

.noexc26:                                         ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.v
  store <4 x float> %i.dy, ptr %i.i, align 16, !alias.scope !735, !noalias !737
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke void @_RNvMNtCsfVrisfeHJNS_9tiny_skia6pixmapNtB2_6Pixmap4fill(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.i)
          to label %bb.y unwind label %bb.p

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !738)
  %i.eh = load i32, ptr %i.j, align 8, !range !15, !alias.scope !738, !noundef !5
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs4xylOWI7Ys4_12typst_render.exit28, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ej = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !739)
  call void @llvm.experimental.noalias.scope.decl(metadata !740)
  call void @llvm.experimental.noalias.scope.decl(metadata !741)
  %i.ek = load ptr, ptr %i.ej, align 8, !alias.scope !742, !nonnull !5, !noundef !5
  %i.el = atomicrmw sub ptr %i.ek, i64 1 release, align 8, !noalias !742
  %i.em = icmp eq i64 %i.el, 1
  br i1 %i.em, label %bb.aa, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs4xylOWI7Ys4_12typst_render.exit28

bb.aa:                                            ; preds = %bb.z
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ej) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs4xylOWI7Ys4_12typst_render.exit28 unwind label %bb.ac

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs4xylOWI7Ys4_12typst_render.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit30, %bb.q, %bb.p, %bb.r, %bb.ac
  %.pn.pn = phi { ptr, i32 } [ %i.fg, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit30 ], [ %i.ep, %bb.ac ], [ %i.dr, %bb.r ], [ %i.dr, %bb.p ], [ %i.dr, %bb.q ] ; 2 uses
  %.sroa.08.1 = phi i1 [ false, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit30 ], [ true, %bb.ac ], [ true, %bb.r ], [ true, %bb.p ], [ true, %bb.q ]
  %.val20 = load i64, ptr %i.l, align 8           ; 2 uses
  %i.en = icmp eq i64 %.val20, 0
  br i1 %i.en, label %bb.h, label %bb.ab

bb.ab:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs4xylOWI7Ys4_12typst_render.exit
  %i.eo = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.val21 = load ptr, ptr %i.eo, align 8, !nonnull !5, !noundef !5
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val21, i64 noundef %.val20, i64 noundef range(i64 1, -9223372036854775807) 1) #26
  br label %bb.h

bb.ac:                                            ; preds = %bb.aa
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs4xylOWI7Ys4_12typst_render.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs4xylOWI7Ys4_12typst_render.exit28: ; preds = %bb.z, %bb.y, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.o

bb.ad:                                            ; preds = %bb.ao, %bb.r
  %i.eq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit30: ; preds = %bb.ai, %bb.ah
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEECs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef align 8 dereferenceable(32) %i.g) #28
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs4xylOWI7Ys4_12typst_render.exit

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs4xylOWI7Ys4_12typst_render.exit: ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs4xylOWI7Ys4_12typst_render.exit.lr.ph, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit31
  %.sroa.04.060 = phi i32 [ 0, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs4xylOWI7Ys4_12typst_render.exit.lr.ph ], [ %i.fk, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit31 ] ; 2 uses
  %i.er = phi ptr [ %i.aq, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs4xylOWI7Ys4_12typst_render.exit.lr.ph ], [ %i.es, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit31 ] ; 6 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 32 ; 4 uses
  %.sroa.034.0.copyload35 = load i64, ptr %i.er, align 8, !noalias !743 ; 5 uses
  %.sroa.7.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %.sroa.7.sroa.0.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx36, align 8, !noalias !743 ; 4 uses
  %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx36.sroa_idx = getelementptr inbounds nuw i8, ptr %i.er, i64 28
  %.sroa.7.sroa.7.0.copyload = load i32, ptr %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx36.sroa_idx, align 4, !noalias !743 ; 2 uses
  %.not12 = icmp eq i64 %.sroa.034.0.copyload35, -1
  br i1 %.not12, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs4xylOWI7Ys4_12typst_render.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs4xylOWI7Ys4_12typst_render.exit
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx36.sroa_idx = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %.sroa.7.sroa.6.0.copyload = load i32, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx36.sroa_idx, align 8, !noalias !743
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx36.sroa_idx = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %.sroa.7.sroa.5.0.copyload = load i64, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx36.sroa_idx, align 8, !noalias !743
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.0.0.copyload) ]
  store ptr %.sroa.7.sroa.0.0.copyload, ptr %i.f, align 8
  store i64 %.sroa.7.sroa.5.0.copyload, ptr %i.dn, align 8
  store i32 %.sroa.7.sroa.6.0.copyload, ptr %i.do, align 8
  store i32 %.sroa.7.sroa.7.0.copyload, ptr %i.dp, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 13950255104, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.d, align 16
  store <2 x float> zeroinitializer, ptr %i.dq, align 16
  invoke void @_RNvMs0_NtCsfVrisfeHJNS_9tiny_skia7painterNtNtB7_6pixmap6Pixmap11draw_pixmap(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l, i32 noundef 0, i32 noundef %.sroa.04.060, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.e, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null)
          to label %bb.aj unwind label %bb.ah

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs4xylOWI7Ys4_12typst_render.exit.thread: ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs4xylOWI7Ys4_12typst_render.exit, %bb.o
  %i.et = phi ptr [ %i.aq, %bb.o ], [ %i.es, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs4xylOWI7Ys4_12typst_render.exit ] ; 3 uses
  %i.eu = ptrtoint ptr %i.at to i64
  %i.ev = ptrtoint ptr %i.et to i64
  %i.ew = sub nuw i64 %i.eu, %i.ev
  %i.ex = lshr exact i64 %i.ew, 5
  call void @llvm.experimental.noalias.scope.decl(metadata !744)
  %i.ey = icmp eq ptr %i.at, %i.et
  br i1 %i.ey, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs4xylOWI7Ys4_12typst_render.exit.thread, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit.i.i.i
  %.sroa.0.011.i.i.i = phi i64 [ %i.fa, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit.i.i.i ], [ 0, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs4xylOWI7Ys4_12typst_render.exit.thread ] ; 2 uses
  %i.ez = getelementptr inbounds nuw [32 x i8], ptr %i.et, i64 %.sroa.0.011.i.i.i ; 2 uses
  %i.fa = add nuw nsw i64 %.sroa.0.011.i.i.i, 1   ; 2 uses
  %.val8.i.i.i = load i64, ptr %i.ez, align 8, !alias.scope !744, !noalias !745 ; 2 uses
  %i.fb = icmp eq i64 %.val8.i.i.i, 0
  br i1 %i.fb, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit.i.i.i, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i.i.i
  %i.fc = getelementptr i8, ptr %i.ez, i64 8
  %.val9.i.i.i = load ptr, ptr %i.fc, align 8, !alias.scope !744, !noalias !745, !nonnull !5, !noundef !5
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i, i64 noundef %.val8.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !746
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit.i.i.i: ; preds = %bb.af, %.lr.ph.i.i.i
  %i.fd = icmp eq i64 %i.fa, %i.ex
  br i1 %i.fd, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit.i.i, label %.lr.ph.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit31, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit.i.i.i, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs4xylOWI7Ys4_12typst_render.exit.thread
  %i.fe = icmp eq i64 %i.dm, 0
  br i1 %i.fe, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEECs4xylOWI7Ys4_12typst_render.exit, label %bb.ag

bb.ag:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit.i.i
  %i.ff = shl nuw i64 %i.dm, 5
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aq, i64 noundef %i.ff, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !745
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEECs4xylOWI7Ys4_12typst_render.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEECs4xylOWI7Ys4_12typst_render.exit: ; preds = %bb.ag, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  ret void

bb.ah:                                            ; preds = %bb.ae
  %i.fg = landingpad { ptr, i32 }
          cleanup
  store ptr %i.es, ptr %.sroa.47.0..sroa_idx, align 8
  %i.fh = icmp eq i64 %.sroa.034.0.copyload35, 0
  br i1 %i.fh, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit30, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.sroa.0.0.copyload, i64 noundef %.sroa.034.0.copyload35, i64 noundef range(i64 1, -9223372036854775807) 1) #26
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit30

bb.aj:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.fi = icmp eq i64 %.sroa.034.0.copyload35, 0
  br i1 %i.fi, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit31, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.sroa.0.0.copyload, i64 noundef %.sroa.034.0.copyload35, i64 noundef range(i64 1, -9223372036854775807) 1) #26
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit31

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit31: ; preds = %bb.ak, %bb.aj
  %i.fj = add i32 %.sroa.04.060, %i.ao
  %i.fk = add i32 %i.fj, %.sroa.7.sroa.7.0.copyload
  %i.fl = icmp eq ptr %i.es, %i.at
  br i1 %i.fl, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit.i.i, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs4xylOWI7Ys4_12typst_render.exit

bb.al:                                            ; preds = %.thread, %bb.h
  %.sroa.09.144 = phi i1 [ true, %.thread ], [ %.not11, %bb.h ]
  %.pn.pn.pn43 = phi { ptr, i32 } [ %i.bj, %.thread ], [ %.pn.pn, %bb.h ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEECs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #28
  br label %.body

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs4xylOWI7Ys4_12typst_render.exit33: ; preds = %bb.an, %bb.am, %bb.ao, %.body
  resume { ptr, i32 } %.pn.pn.pn.pn

bb.am:                                            ; preds = %.body
  call void @llvm.experimental.noalias.scope.decl(metadata !747)
  %i.fm = icmp eq i32 %i.ae, 0
  br i1 %i.fm, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs4xylOWI7Ys4_12typst_render.exit33, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fn = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !748)
  call void @llvm.experimental.noalias.scope.decl(metadata !749)
  call void @llvm.experimental.noalias.scope.decl(metadata !750)
  %i.fo = load ptr, ptr %i.fn, align 8, !alias.scope !751, !nonnull !5, !noundef !5
  %i.fp = atomicrmw sub ptr %i.fo, i64 1 release, align 8, !noalias !751
  %i.fq = icmp eq i64 %i.fp, 1
  br i1 %i.fq, label %bb.ao, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs4xylOWI7Ys4_12typst_render.exit33

bb.ao:                                            ; preds = %bb.an
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.fn) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs4xylOWI7Ys4_12typst_render.exit33 unwind label %bb.ad
}

; Function Attrs: nonlazybind uwtable
define void @_RNvCs4xylOWI7Ys4_12typst_render6render(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [80 x i8], align 8                ; 9 uses
  %i.c = alloca [136 x i8], align 8               ; 11 uses
  %i.d = alloca [20 x i8], align 4                ; 4 uses
  %i.e = alloca [16 x i8], align 16               ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [32 x i8], align 8                ; 5 uses
  %i.j = alloca [32 x i8], align 8                ; 9 uses
  %i.k = alloca [80 x i8], align 8                ; 14 uses
  %i.l = alloca [32 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.m = load atomic i8, ptr @_RNvCsiNFdexS2GJ6_12typst_timing7ENABLED monotonic, align 1
  %.not = icmp eq i8 %i.m, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.l, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RNvMCsiNFdexS2GJ6_12typst_timingNtB2_11TimingScope8new_impl(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @47, i64 noundef 6, i64 noundef 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load i8, ptr %i.n, align 8, !range !18, !noundef !5
  %i.p = trunc nuw i8 %i.o to i1                  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.r = load <2 x double>, ptr %i.q, align 8     ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.s = load <2 x double>, ptr %.sroa.7.0..sroa_idx, align 8
  %i.t = fadd <2 x double> %i.r, %i.s
  %i.u = select i1 %i.p, <2 x double> %i.r, <2 x double> zeroinitializer
  %i.v = select i1 %i.p, <2 x double> %i.t, <2 x double> zeroinitializer ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load <2 x double>, ptr %i.w, align 8
  %i.y = fcmp ord <2 x double> %i.v, zeroinitializer
  %i.z = select <2 x i1> %i.y, <2 x double> %i.v, <2 x double> zeroinitializer
  %i.aa = fadd <2 x double> %i.z, %i.x            ; 2 uses
  %i.ab = fcmp ord <2 x double> %i.aa, zeroinitializer
  %i.ac = load double, ptr %2, align 8, !noundef !5
  %i.ad = fptrunc double %i.ac to float           ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !785)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  store float %i.ad, ptr %i.ae, align 8, !alias.scope !786
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  store <2 x float> zeroinitializer, ptr %.sroa.5.0..sroa_idx, align 4, !alias.scope !786
  %.sroa.7.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %i.k, i64 28
  store float %i.ad, ptr %.sroa.7.0..sroa_idx38, align 4, !alias.scope !786
  %.sroa.841.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store <2 x float> zeroinitializer, ptr %.sroa.841.0..sroa_idx, align 8, !alias.scope !786
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 2 uses
  store float %i.ad, ptr %i.af, align 8, !alias.scope !786
  %.sroa.5.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  store <2 x float> zeroinitializer, ptr %.sroa.5.0..sroa_idx33, align 4, !alias.scope !786
  %.sroa.7.0..sroa_idx39 = getelementptr inbounds nuw i8, ptr %i.k, i64 52
  store float %i.ad, ptr %.sroa.7.0..sroa_idx39, align 4, !alias.scope !786
  %.sroa.841.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.841.0..sroa_idx42, i8 0, i64 16, i1 false)
  store float %i.ad, ptr %i.ag, align 8, !alias.scope !787, !noalias !785
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ai = select <2 x i1> %i.ab, <2 x double> %i.aa, <2 x double> zeroinitializer ; 3 uses
  %i.aj = extractelement <2 x double> %i.ai, i64 0 ; 3 uses
  store double %i.aj, ptr %i.k, align 8, !alias.scope !787, !noalias !785
  %i.ak = extractelement <2 x double> %i.ai, i64 1 ; 3 uses
  store double %i.ak, ptr %i.ah, align 8, !alias.scope !787, !noalias !785
  %i.al = fdiv <2 x double> %i.ai, splat (double 1.270000e+02)
  %i.am = fptrunc <2 x double> %i.al to <2 x float>
  %i.an = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ap = fmul <2 x float> %i.ao, %i.am
  %i.aq = tail call <2 x float> @llvm.round.v2f32(<2 x float> %i.ap)
  %i.ar = tail call nsz <2 x float> @llvm.maximumnum.v2f32(<2 x float> %i.aq, <2 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.as = extractelement <2 x float> %i.ar, i64 1
  %i.at = tail call i32 @llvm.fptoui.sat.i32.f32(float %i.as)
  %i.au = extractelement <2 x float> %i.ar, i64 0
  %i.av = tail call i32 @llvm.fptoui.sat.i32.f32(float %i.au)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
end_hunk_2
begin_hunk_3_@_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE6insertCs4xylOWI7Ys4_12typst_render:bb.a
  %.not.i.i = icmp eq i16 %i.ae, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.af = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i, zeroinitializer
  %i.ag = bitcast <16 x i1> %i.af to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ag, 0
  br i1 %.not.i.i.i, label %bb.f, label %.thread24.i.i, !prof !17

.thread24.i.i:                                    ; preds = %bb.e
  %i.ah = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ag, i1 true)
  %i.ai = zext nneg i16 %i.ah to i64
  %i.aj = add i64 %.sroa.0.017.i.i, %i.ai
  %i.ak = and i64 %i.aj, %.val5.i
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread24.i.i, %._crit_edge.i.i
  %.sroa.4.121.i.i = phi i64 [ %i.ak, %.thread24.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.al = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1)
  %i.am = bitcast <16 x i1> %i.al to i16
  %i.an = icmp eq i16 %i.am, 0
  br i1 %i.an, label %bb.f, label %bb.g, !prof !17

bb.f:                                             ; preds = %.thread.i.i, %bb.e
  %.sroa.04.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.e ]
  %.sroa.4.120.i.i = phi i64 [ %.sroa.4.121.i.i, %.thread.i.i ], [ undef, %bb.e ]
  %i.ao = add i64 %i.r, 16                        ; 2 uses
  %i.ap = add i64 %i.ao, %.sroa.0.017.i.i
  br label %bb.c

bb.g:                                             ; preds = %.thread.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.121.i.i
  %i.ar = load i8, ptr %i.aq, align 1, !noalias !847, !noundef !5 ; 2 uses
  %i.as = icmp sgt i8 %i.ar, -1
  br i1 %i.as, label %bb.h, label %bb.i, !prof !17

bb.h:                                             ; preds = %bb.g
  %.val2.i.i.i = load <16 x i8>, ptr %.val.i, align 16, !noalias !847
  %i.at = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer
  %i.au = bitcast <16 x i1> %i.at to i16          ; 2 uses
  %.not.i23.i.i = icmp ne i16 %i.au, 0
  %i.av = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.au, i1 true)
  %i.aw = zext nneg i16 %i.av to i64              ; 2 uses
  tail call void @llvm.assume(i1 %.not.i23.i.i)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.aw
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !noalias !852
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ax = phi i8 [ %.pre, %bb.h ], [ %i.ar, %bb.g ]
  %.sroa.3.0.i.ph.i = phi i64 [ %i.aw, %bb.h ], [ %.sroa.4.121.i.i, %bb.g ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !852)
  %i.ay = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.3.0.i.ph.i
  %i.az = and i8 %i.ax, 1
  %i.ba = zext nneg i8 %i.az to i64
  %i.bb = add i64 %.sroa.3.0.i.ph.i, -16
  %i.bc = and i64 %i.bb, %.val5.i
  store i8 %i.o, ptr %i.ay, align 1, !noalias !852
  %i.bd = getelementptr i8, ptr %.val.i, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.bd, i64 16
  store i8 %i.o, ptr %i.be, align 1, !noalias !852
  %i.bf = load <2 x i64>, ptr %i.h, align 8, !alias.scope !852
  %i.bg = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ba, i64 0
  %i.bh = sub <2 x i64> %i.bf, %i.bg
  store <2 x i64> %i.bh, ptr %i.h, align 8, !alias.scope !852
  %i.bi = sub nsw i64 0, %.sroa.3.0.i.ph.i        ; 2 uses
  %i.bj = getelementptr inbounds [32 x i8], ptr %.val.i, i64 %i.bi
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -32
  store i128 %1, ptr %i.bk, align 16, !noalias !852
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.i
  %i.bl = phi i64 [ %i.bi, %bb.i ], [ %i.z, %.lr.ph.i.i ]
  %i.bm = getelementptr inbounds [32 x i8], ptr %.val.i, i64 %i.bl
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -16
  store i64 %2, ptr %i.bn, align 16
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtCsaixNeEcpA3e_4slab5EntryINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtB1j_7memoize10CacheEntryINtNvNtB1j_5inputs1_1__9MultiCalluuuEINtNtCs3oUPovFnLWP_4core6option6OptionINtNtB7_4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEEEE8grow_oneCs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !8, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !855)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !855
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !855
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 56), !noalias !855
  %i.f = load i64, ptr %i.a, align 8, !range !13, !noalias !855, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !14, !noalias !855, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !855
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !855
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !855, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !855
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !855
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !855
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtCsaixNeEcpA3e_4slab5EntryINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtB1j_7memoize10CacheEntryINtNvNtB1j_5inputs2_1__9MultiCalluuuuEINtNtB7_4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEEE8grow_oneCs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !8, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !858)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !858
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !858
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 56), !noalias !858
  %i.f = load i64, ptr %i.a, align 8, !range !13, !noalias !858, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !14, !noalias !858, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !858
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !858
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !858, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !858
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !858
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !858
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtCsaixNeEcpA3e_4slab5EntryINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtB1j_7memoize10CacheEntryINtNvNtB1j_5inputs3_1__9MultiCalluuuuuEINtNtCs3oUPovFnLWP_4core6option6OptionINtNtB7_4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEEEEE8grow_oneCs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !8, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !861)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !861
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !861
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 56), !noalias !861
  %i.f = load i64, ptr %i.a, align 8, !range !13, !noalias !861, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !14, !noalias !861, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !861
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !861
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !861, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !861
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !861
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !861
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs4xylOWI7Ys4_12typst_render(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 4, 9) %2, i64 noundef range(i64 4, 57) %3) unnamed_addr #6 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !21
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %4 = mul nuw i64 %3, %.0.val                    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.f = icmp uge i64 %i.b, %4
  tail call void @llvm.assume(i1 %i.f)
  %i.g = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %4, i64 noundef range(i64 4, 9) %2, i64 noundef range(i64 0, 9223372036854775805) %i.b) #26
  br label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %i.b, 0
  br i1 %i.h, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.i = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26
  %i.j = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, 9) %2) #26
  br label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.g, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit ], [ %i.j, %bb.d ] ; 2 uses
  %i.k = icmp eq ptr %.pn8, null
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.l, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.i, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.m, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.n, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal fastcc { i64, i64 } @_RNvMs7_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsE9finish128Cs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %0, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.13.0.copyload = load i64, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.23.0.copyload = load i64, ptr %.sroa.23.0..sroa_idx, align 8 ; 3 uses
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.32.0.copyload = load i64, ptr %.sroa.32.0..sroa_idx, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = shl i64 %i.b, 56
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load i64, ptr %i.d, align 8, !noundef !5
  %i.f = or i64 %i.c, %i.e                        ; 2 uses
  %i.g = xor i64 %i.f, %.sroa.32.0.copyload       ; 3 uses
  %i.h = add i64 %.sroa.23.0.copyload, %.sroa.0.0.copyload ; 3 uses
  %i.i = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.23.0.copyload, i64 %.sroa.23.0.copyload, i64 13)
  %i.j = xor i64 %i.i, %i.h                       ; 3 uses
  %i.k = tail call noundef i64 @llvm.fshl.i64(i64 %i.h, i64 %i.h, i64 32)
  %i.l = add i64 %i.g, %.sroa.13.0.copyload       ; 2 uses
  %i.m = tail call noundef i64 @llvm.fshl.i64(i64 %i.g, i64 %i.g, i64 16)
  %i.n = xor i64 %i.m, %i.l                       ; 3 uses
  %i.o = add i64 %i.n, %i.k                       ; 2 uses
  %i.p = tail call noundef i64 @llvm.fshl.i64(i64 %i.n, i64 %i.n, i64 21)
  %i.q = xor i64 %i.p, %i.o                       ; 3 uses
  %i.r = add i64 %i.l, %i.j                       ; 3 uses
  %i.s = tail call noundef i64 @llvm.fshl.i64(i64 %i.j, i64 %i.j, i64 17)
  %i.t = xor i64 %i.r, %i.s                       ; 3 uses
  %i.u = tail call noundef i64 @llvm.fshl.i64(i64 %i.r, i64 %i.r, i64 32)
  %i.v = xor i64 %i.o, %i.f
  %i.w = xor i64 %i.u, 238
  %i.x = add i64 %i.v, %i.t                       ; 3 uses
  %i.y = tail call noundef i64 @llvm.fshl.i64(i64 %i.t, i64 %i.t, i64 13)
  %i.z = xor i64 %i.x, %i.y                       ; 3 uses
  %i.aa = tail call noundef i64 @llvm.fshl.i64(i64 %i.x, i64 %i.x, i64 32)
  %i.ab = add i64 %i.q, %i.w                      ; 2 uses
  %i.ac = tail call noundef i64 @llvm.fshl.i64(i64 %i.q, i64 %i.q, i64 16)
  %i.ad = xor i64 %i.ac, %i.ab                    ; 3 uses
  %i.ae = add i64 %i.ad, %i.aa                    ; 2 uses
  %i.af = tail call noundef i64 @llvm.fshl.i64(i64 %i.ad, i64 %i.ad, i64 21)
  %i.ag = xor i64 %i.af, %i.ae                    ; 3 uses
  %i.ah = add i64 %i.z, %i.ab                     ; 3 uses
  %i.ai = tail call noundef i64 @llvm.fshl.i64(i64 %i.z, i64 %i.z, i64 17)
  %i.aj = xor i64 %i.ah, %i.ai                    ; 3 uses
  %i.ak = tail call noundef i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 32)
  %i.al = add i64 %i.aj, %i.ae                    ; 3 uses
  %i.am = tail call noundef i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 13)
  %i.an = xor i64 %i.am, %i.al                    ; 3 uses
  %i.ao = tail call noundef i64 @llvm.fshl.i64(i64 %i.al, i64 %i.al, i64 32)
  %i.ap = add i64 %i.ag, %i.ak                    ; 2 uses
  %i.aq = tail call noundef i64 @llvm.fshl.i64(i64 %i.ag, i64 %i.ag, i64 16)
  %i.ar = xor i64 %i.aq, %i.ap                    ; 3 uses
  %i.as = add i64 %i.ar, %i.ao                    ; 2 uses
  %i.at = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 21)
  %i.au = xor i64 %i.at, %i.as                    ; 3 uses
  %i.av = add i64 %i.an, %i.ap                    ; 3 uses
  %i.aw = tail call noundef i64 @llvm.fshl.i64(i64 %i.an, i64 %i.an, i64 17)
  %i.ax = xor i64 %i.aw, %i.av                    ; 3 uses
  %i.ay = tail call noundef i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 32)
  %i.az = add i64 %i.ax, %i.as                    ; 3 uses
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 13)
  %i.bb = xor i64 %i.ba, %i.az                    ; 3 uses
  %i.bc = tail call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 32)
  %i.bd = add i64 %i.au, %i.ay                    ; 2 uses
  %i.be = tail call noundef i64 @llvm.fshl.i64(i64 %i.au, i64 %i.au, i64 16)
  %i.bf = xor i64 %i.be, %i.bd                    ; 3 uses
  %i.bg = add i64 %i.bf, %i.bc                    ; 2 uses
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.bf, i64 %i.bf, i64 21) ; 2 uses
  %i.bi = xor i64 %i.bh, %i.bg                    ; 3 uses
  %i.bj = add i64 %i.bb, %i.bd                    ; 3 uses
  %i.bk = tail call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 17)
  %i.bl = xor i64 %i.bk, %i.bj                    ; 2 uses
  %i.bm = tail call noundef i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 32) ; 2 uses
  %i.bn = xor i64 %i.bm, %i.bh
  %i.bo = xor i64 %i.bn, %i.bl
  %i.bp = xor i64 %i.bl, 221                      ; 3 uses
  %i.bq = add i64 %i.bp, %i.bg                    ; 3 uses
  %i.br = tail call noundef i64 @llvm.fshl.i64(i64 %i.bp, i64 %i.bp, i64 13)
  %i.bs = xor i64 %i.br, %i.bq                    ; 3 uses
  %i.bt = tail call noundef i64 @llvm.fshl.i64(i64 %i.bq, i64 %i.bq, i64 32)
  %i.bu = add i64 %i.bi, %i.bm                    ; 2 uses
  %i.bv = tail call noundef i64 @llvm.fshl.i64(i64 %i.bi, i64 %i.bi, i64 16)
  %i.bw = xor i64 %i.bv, %i.bu                    ; 3 uses
  %i.bx = add i64 %i.bt, %i.bw                    ; 2 uses
  %i.by = tail call noundef i64 @llvm.fshl.i64(i64 %i.bw, i64 %i.bw, i64 21)
  %i.bz = xor i64 %i.bx, %i.by                    ; 3 uses
  %i.ca = add i64 %i.bs, %i.bu                    ; 3 uses
  %i.cb = tail call noundef i64 @llvm.fshl.i64(i64 %i.bs, i64 %i.bs, i64 17)
  %i.cc = xor i64 %i.ca, %i.cb                    ; 3 uses
  %i.cd = tail call noundef i64 @llvm.fshl.i64(i64 %i.ca, i64 %i.ca, i64 32)
  %i.ce = add i64 %i.cc, %i.bx                    ; 3 uses
  %i.cf = tail call noundef i64 @llvm.fshl.i64(i64 %i.cc, i64 %i.cc, i64 13)
  %i.cg = xor i64 %i.cf, %i.ce                    ; 3 uses
  %i.ch = tail call noundef i64 @llvm.fshl.i64(i64 %i.ce, i64 %i.ce, i64 32)
  %i.ci = add i64 %i.bz, %i.cd                    ; 2 uses
  %i.cj = tail call noundef i64 @llvm.fshl.i64(i64 %i.bz, i64 %i.bz, i64 16)
  %i.ck = xor i64 %i.cj, %i.ci                    ; 3 uses
  %i.cl = add i64 %i.ck, %i.ch                    ; 2 uses
  %i.cm = tail call noundef i64 @llvm.fshl.i64(i64 %i.ck, i64 %i.ck, i64 21)
  %i.cn = xor i64 %i.cm, %i.cl                    ; 3 uses
  %i.co = add i64 %i.cg, %i.ci                    ; 3 uses
  %i.cp = tail call noundef i64 @llvm.fshl.i64(i64 %i.cg, i64 %i.cg, i64 17)
  %i.cq = xor i64 %i.cp, %i.co                    ; 3 uses
  %i.cr = tail call noundef i64 @llvm.fshl.i64(i64 %i.co, i64 %i.co, i64 32)
  %i.cs = add i64 %i.cq, %i.cl
  %i.ct = tail call noundef i64 @llvm.fshl.i64(i64 %i.cq, i64 %i.cq, i64 13)
  %i.cu = xor i64 %i.ct, %i.cs                    ; 3 uses
  %i.cv = add i64 %i.cn, %i.cr                    ; 2 uses
  %i.cw = tail call noundef i64 @llvm.fshl.i64(i64 %i.cn, i64 %i.cn, i64 16)
  %i.cx = xor i64 %i.cw, %i.cv                    ; 2 uses
  %i.cy = tail call noundef i64 @llvm.fshl.i64(i64 %i.cx, i64 %i.cx, i64 21)
  %i.cz = add i64 %i.cu, %i.cv                    ; 3 uses
  %i.da = tail call noundef i64 @llvm.fshl.i64(i64 %i.cu, i64 %i.cu, i64 17)
  %i.db = tail call noundef i64 @llvm.fshl.i64(i64 %i.cz, i64 %i.cz, i64 32)
  %i.dc = xor i64 %i.cy, %i.da
  %i.dd = xor i64 %i.dc, %i.db
  %i.de = xor i64 %i.dd, %i.cz
  %i.df = insertvalue { i64, i64 } poison, i64 %i.bo, 0
  %i.dg = insertvalue { i64, i64 } %i.df, i64 %i.de, 1
  ret { i64, i64 } %i.dg
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapE9drop_slowCs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val = load i64, ptr %i.b, align 8             ; 2 uses
  %i.c = icmp eq i64 %.val, 0
  br i1 %i.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4ots9DM4Kx5_8pixglyph6BitmapECs4xylOWI7Ys4_12typst_render.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.a, i64 24
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #26
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4ots9DM4Kx5_8pixglyph6BitmapECs4xylOWI7Ys4_12typst_render.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4ots9DM4Kx5_8pixglyph6BitmapECs4xylOWI7Ys4_12typst_render.exit: ; preds = %bb.b, %bb.a
  %i.e = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtCs4ots9DM4Kx5_8pixglyph6BitmapRNtNtBG_5alloc6GlobalEECs4xylOWI7Ys4_12typst_render.exit4, label %bb.c

bb.c:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4ots9DM4Kx5_8pixglyph6BitmapECs4xylOWI7Ys4_12typst_render.exit
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtCs4ots9DM4Kx5_8pixglyph6BitmapRNtNtBG_5alloc6GlobalEECs4xylOWI7Ys4_12typst_render.exit4

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 56, i64 noundef 8) #26
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtCs4ots9DM4Kx5_8pixglyph6BitmapRNtNtBG_5alloc6GlobalEECs4xylOWI7Ys4_12typst_render.exit4

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtCs4ots9DM4Kx5_8pixglyph6BitmapRNtNtBG_5alloc6GlobalEECs4xylOWI7Ys4_12typst_render.exit4: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4ots9DM4Kx5_8pixglyph6BitmapECs4xylOWI7Ys4_12typst_render.exit, %bb.c, %bb.d
  ret void
end_hunk_3
begin_hunk_4_@_RNvNtCs4xylOWI7Ys4_12typst_render4text20render_outline_glyph:bb.a
  %i.cc = alloca [40 x i8], align 8               ; 5 uses
  %i.cd = alloca [24 x i8], align 4               ; 4 uses
  %i.ce = alloca [80 x i8], align 8               ; 4 uses
  %i.cf = alloca [80 x i8], align 16              ; 7 uses
  %i.cg = alloca [32 x i8], align 8               ; 14 uses
  %i.ch = alloca [20 x i8], align 4               ; 4 uses
  %i.ci = alloca [8 x i8], align 8                ; 7 uses
  %i.cj = alloca [64 x i8], align 8               ; 12 uses
  %i.ck = alloca [104 x i8], align 8              ; 8 uses
  %i.cl = alloca [48 x i8], align 8               ; 7 uses
  %i.cm = alloca [104 x i8], align 8              ; 8 uses
  %i.cn = alloca [24 x i8], align 4               ; 7 uses
  %i.co = alloca [80 x i8], align 16              ; 9 uses
  %i.cp = alloca [24 x i8], align 4               ; 5 uses
  %i.cq = alloca [8 x i8], align 8                ; 9 uses
  %i.cr = alloca [64 x i8], align 8               ; 4 uses
  %i.cs = alloca [64 x i8], align 8               ; 6 uses
  %i.ct = alloca [10 x i8], align 2               ; 13 uses
  %i.cu = alloca [64 x i8], align 8               ; 17 uses
  %i.cv = alloca [64 x i8], align 8               ; 10 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.cy = load double, ptr %i.cx, align 8, !noundef !5
  %i.cz = fdiv double %i.cy, 1.270000e+02
  %i.da = fptrunc double %i.cz to float           ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.dc = load float, ptr %i.db, align 4, !noundef !5 ; 2 uses
  %i.dd = fmul float %i.dc, %i.da                 ; 4 uses
  %i.de = fcmp ule float %i.dd, 1.000000e+02
  %i.df = fcmp uge float %i.dd, 0.000000e+00
  %or.cond.not345 = and i1 %i.de, %i.df
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.dh = load float, ptr %i.dg, align 4
  %i.di = fcmp oeq float %i.dh, 0.000000e+00
  %or.cond4.not342 = select i1 %or.cond.not345, i1 %i.di, i1 false
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dk = load float, ptr %i.dj, align 8
  %i.dl = fcmp oeq float %i.dk, 0.000000e+00
  %or.cond8.not340 = select i1 %or.cond4.not342, i1 %i.dl, i1 false
  %i.dm = load float, ptr %i.cw, align 8
  %i.dn = fcmp oeq float %i.dm, %i.dc
  %or.cond11.not338 = select i1 %or.cond8.not340, i1 %i.dn, i1 false
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8, !range !6 ; 2 uses
  %.not = icmp eq i64 %i.dp, -2                   ; 2 uses
  %or.cond56 = select i1 %or.cond11.not338, i1 %.not, i1 false
  %.sink6.i.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 3 uses
  %.sink6.i.i.sroa.gep247 = getelementptr inbounds nuw i8, ptr %i.cm, i64 16 ; 2 uses
  %.sink6.i.i235.sroa.gep = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 3 uses
  %.sink6.i.i235.sroa.gep249 = getelementptr inbounds nuw i8, ptr %i.ck, i64 16 ; 2 uses
  %.sink209.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sink209.i.sroa.gep306 = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sink209.i.sroa.gep308 = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %.sink209.i.sroa.gep309 = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %.sink209.i.sroa.gep311 = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %.sink209.i.sroa.gep312 = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %.sink160.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sink160.i.sroa.gep313 = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sink160.i.sroa.gep315 = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sink160.i.sroa.gep316 = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sink160.i.sroa.gep318 = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sink160.i.sroa.gep319 = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %.sink176.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sink176.i.sroa.gep320 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sink176.i.sroa.gep322 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sink176.i.sroa.gep323 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sink176.i.sroa.gep325 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sink176.i.sroa.gep326 = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sink789.sroa.gep = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sink789.sroa.gep220 = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sink789.sroa.gep221 = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sink789.sroa.gep222 = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sink789.sroa.gep224 = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sink789.sroa.gep225 = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sink789.sroa.gep226 = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %.sink789.sroa.gep227 = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.sink789.sroa.gep229 = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %.sink789.sroa.gep230 = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.sink789.sroa.gep231 = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %.sink789.sroa.gep232 = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %.sink800.sroa.gep = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sink800.sroa.gep233 = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sink800.sroa.gep235 = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sink800.sroa.gep236 = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sink800.sroa.gep238 = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sink800.sroa.gep239 = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  br i1 %or.cond56, label %bb.ah, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu)
  store i64 0, ptr %i.cu, align 8
  %.sroa.012.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.012.sroa.4.0..sroa_idx, align 8
  %.sroa.012.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %.sroa.012.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %.sroa.012.sroa.6.sroa.4.0..sroa.012.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.012.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.012.sroa.6.sroa.4.0..sroa.012.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.012.sroa.6.sroa.5.0..sroa.012.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 40
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.012.sroa.6.sroa.5.0..sroa.012.sroa.6.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct)
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.dr = load ptr, ptr %i.dq, align 8, !nonnull !5, !noundef !5 ; 15 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 200 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1242)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1243)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 240 ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !range !4, !alias.scope !1243, !noalias !1242, !noundef !5
  %.not.i = icmp eq i64 %i.du, 2
  %i.dv = load i64, ptr %i.ds, align 8, !alias.scope !1243, !noalias !1242 ; 4 uses
  %.not10.i = icmp eq i64 %i.dv, 2                ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %.not10.i, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  br i1 %.not10.i, label %bb.y, label %bb.g

bb.e:                                             ; preds = %bb.c
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dr, i64 208
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.45.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i, i64 32, i1 false), !noalias !1242
  store i64 %i.dv, ptr %i.cc, align 8, !noalias !1244
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 2968
  %i.dx = load i8, ptr %i.dw, align 8, !alias.scope !1245, !noalias !1242, !noundef !5 ; 2 uses
  %i.dy = zext i8 %i.dx to i64                    ; 2 uses
  %i.dz = icmp ult i8 %i.dx, 65
  br i1 %i.dz, label %_RNvMsl_CsdQl7XGSB5tC_10ttf_parserNtB5_4Face6coords.exit.i, label %.invoke801, !prof !1246

.invoke801:                                       ; preds = %bb.ad, %bb.e
  %i.ea = phi i64 [ %i.dy, %bb.e ], [ %i.go, %bb.ad ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ea, i64 noundef 64, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #31
          to label %.cont802 unwind label %bb.kn

.cont802:                                         ; preds = %.invoke801
  unreachable

_RNvMsl_CsdQl7XGSB5tC_10ttf_parserNtB5_4Face6coords.exit.i: ; preds = %bb.e
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dr, i64 2840
  invoke void @_RNvMs0_NtNtCsdQl7XGSB5tC_10ttf_parser6tables4gvarNtB5_5Table7outline(ptr noalias nofree noundef nonnull sret([10 x i8]) align 2 captures(address) dereferenceable(10) %i.ct, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.dt, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.cc, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %i.eb, i64 noundef %i.dy, i16 noundef %3, ptr noundef nonnull %i.cu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) @60)
          to label %bb.jb unwind label %bb.kn

bb.f:                                             ; preds = %bb.c
  store i16 0, ptr %i.ct, align 2, !alias.scope !1242, !noalias !1243
  br label %bb.jb

bb.g:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1247)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1248)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz), !noalias !1249
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store ptr %i.cu, ptr %i.ec, align 16, !noalias !1249
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  store ptr @60, ptr %i.ed, align 8, !noalias !1249
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.ee, align 16, !noalias !1249
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  store <2 x float> zeroinitializer, ptr %.sroa.7.0..sroa_idx.i.i, align 16, !noalias !1249
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bz, i64 92
  store i8 1, ptr %i.ef, align 4, !noalias !1249
  store i128 -664613998047200450621976900532174849, ptr %i.bz, align 16, !noalias !1249
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bz, i64 56
  store i32 0, ptr %i.eg, align 8, !noalias !1249
  %i.eh = getelementptr inbounds nuw i8, ptr %i.bz, i64 68
  store i32 0, ptr %i.eh, align 4, !noalias !1249
  %i.ei = getelementptr inbounds nuw i8, ptr %i.bz, i64 80
  store i32 0, ptr %i.ei, align 16, !noalias !1249
  call void @llvm.experimental.noalias.scope.decl(metadata !1250)
  call void @llvm.experimental.noalias.scope.decl(metadata !1251)
  %i.ej = icmp eq i16 %3, -1
  br i1 %i.ej, label %bb.v, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ek = add nuw i16 %3, 1                       ; 5 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.dr, i64 216
  %i.em = load i64, ptr %i.el, align 8, !alias.scope !1252, !noalias !1253 ; 7 uses
  %.sroa.0.0.in.v.i.i.i.i = add nuw nsw i64 %i.dv, 1
  %.sroa.0.0.in.i.i.i.i = lshr i64 %i.em, %.sroa.0.0.in.v.i.i.i.i
  %.sroa.0.0.i.i.i.i = trunc i64 %.sroa.0.0.in.i.i.i.i to i16
  %.not.i.i.i.i = icmp ult i16 %i.ek, %.sroa.0.0.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.v

bb.i:                                             ; preds = %bb.h
  %i.en = trunc nuw i64 %i.dv to i1
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dr, i64 208
  %.val26.i.i.i.i = load ptr, ptr %i.eo, align 8, !alias.scope !1252, !noalias !1253 ; 6 uses
  br i1 %i.en, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ep = lshr i64 %i.em, 2
  %i.eq = trunc i64 %i.ep to i16                  ; 2 uses
  %i.er = icmp ult i16 %3, %i.eq
  br i1 %i.er, label %bb.k, label %bb.v

bb.k:                                             ; preds = %bb.j
  %i.es = zext i16 %3 to i64
  %i.et = shl nuw nsw i64 %i.es, 2                ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val26.i.i.i.i) ]
  %i.eu = add nuw nsw i64 %i.et, 4
  %.not.i.i.i.i.i = icmp ugt i64 %i.eu, %i.em
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.r

bb.l:                                             ; preds = %bb.i
  %i.ev = lshr i64 %i.em, 1
  %i.ew = trunc i64 %i.ev to i16                  ; 2 uses
  %i.ex = icmp ult i16 %3, %i.ew
  br i1 %i.ex, label %bb.m, label %bb.v

bb.m:                                             ; preds = %bb.l
  %i.ey = zext i16 %3 to i64
  %i.ez = shl nuw nsw i64 %i.ey, 1                ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val26.i.i.i.i) ]
  %i.fa = add nuw nsw i64 %i.ez, 2
  %.not.i34.i.i.i.i = icmp ugt i64 %i.fa, %i.em
  br i1 %.not.i34.i.i.i.i, label %bb.v, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fb = getelementptr inbounds nuw i8, ptr %.val26.i.i.i.i, i64 %i.ez
  %.val.i35.i.i.i.i = load i16, ptr %i.fb, align 1, !noalias !1254
  %i.fc = call i16 @llvm.bswap.i16(i16 %.val.i35.i.i.i.i)
  %i.fd = icmp ult i16 %i.ek, %i.ew
  br i1 %i.fd, label %bb.o, label %bb.v

bb.o:                                             ; preds = %bb.n
  %i.fe = zext i16 %i.ek to i64
  %i.ff = shl nuw nsw i64 %i.fe, 1                ; 2 uses
  %i.fg = add nuw nsw i64 %i.ff, 2
  %.not.i38.i.i.i.i = icmp ugt i64 %i.fg, %i.em
  br i1 %.not.i38.i.i.i.i, label %bb.v, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fh = getelementptr inbounds nuw i8, ptr %.val26.i.i.i.i, i64 %i.ff
  %.val.i39.i.i.i.i = load i16, ptr %i.fh, align 1, !noalias !1254
  %i.fi = call i16 @llvm.bswap.i16(i16 %.val.i39.i.i.i.i)
  %i.fj = zext i16 %i.fc to i64
  %i.fk = shl nuw nsw i64 %i.fj, 1
  %i.fl = zext i16 %i.fi to i64
  %i.fm = shl nuw nsw i64 %i.fl, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.t, %bb.p
  %.sroa.4.0.i.i.i.i = phi i64 [ %i.fy, %bb.t ], [ %i.fm, %bb.p ] ; 3 uses
  %.sroa.01.0.i.i.i.i = phi i64 [ %i.fx, %bb.t ], [ %i.fk, %bb.p ] ; 3 uses
  %.not24.i.i.i.i = icmp samesign uge i64 %.sroa.01.0.i.i.i.i, %.sroa.4.0.i.i.i.i
  %i.fn = getelementptr inbounds nuw i8, ptr %i.dr, i64 232
  %i.fo = load i64, ptr %i.fn, align 8, !alias.scope !1255, !noalias !1256 ; 2 uses
  %.not.i.i.i = icmp ugt i64 %.sroa.4.0.i.i.i.i, %i.fo
  %or.cond.i.i.i = select i1 %.not24.i.i.i.i, i1 true, i1 %.not.i.i.i
  br i1 %or.cond.i.i.i, label %bb.v, label %bb.u

bb.r:                                             ; preds = %bb.k
  %i.fp = getelementptr inbounds nuw i8, ptr %.val26.i.i.i.i, i64 %i.et
  %.val.i.i.i.i.i = load i32, ptr %i.fp, align 1, !noalias !1254
  %i.fq = call i32 @llvm.bswap.i32(i32 %.val.i.i.i.i.i)
  %i.fr = icmp ult i16 %i.ek, %i.eq
  br i1 %i.fr, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.fs = zext i16 %i.ek to i64
  %i.ft = shl nuw nsw i64 %i.fs, 2                ; 2 uses
  %i.fu = add nuw nsw i64 %i.ft, 4
  %.not.i43.i.i.i.i = icmp ugt i64 %i.fu, %i.em
  br i1 %.not.i43.i.i.i.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fv = getelementptr inbounds nuw i8, ptr %.val26.i.i.i.i, i64 %i.ft
  %.val.i44.i.i.i.i = load i32, ptr %i.fv, align 1, !noalias !1254
  %i.fw = call i32 @llvm.bswap.i32(i32 %.val.i44.i.i.i.i)
  %i.fx = zext i32 %i.fq to i64
  %i.fy = zext i32 %i.fw to i64
  br label %bb.q

bb.u:                                             ; preds = %bb.q
  %i.fz = getelementptr inbounds nuw i8, ptr %i.dr, i64 224
  %i.ga = load ptr, ptr %i.fz, align 8, !alias.scope !1255, !noalias !1256, !nonnull !5, !noundef !5 ; 2 uses
  %i.gb = sub nuw nsw i64 %.sroa.4.0.i.i.i.i, %.sroa.01.0.i.i.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 %.sroa.01.0.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !noalias !1249
  invoke fastcc void @_RNvNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyf12outline_impl(ptr noalias nofree noundef align 2 captures(none) dereferenceable(10) %i.by, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(2776) %i.ds, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ga, i64 noundef %i.fo, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gc, i64 noundef %i.gb, i8 noundef 0, ptr noalias nofree noundef align 8 dereferenceable(96) %i.bz) #30
          to label %.noexc73 unwind label %bb.kn

.noexc73:                                         ; preds = %bb.u
  %i.gd = load i16, ptr %i.by, align 2, !range !22, !noalias !1249, !noundef !5
  %.not16.i.i = icmp eq i16 %i.gd, 2
  br i1 %.not16.i.i, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.h, %bb.g
  store i16 0, ptr %i.ct, align 2, !alias.scope !1256, !noalias !1257
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !1249
  br label %bb.jb

bb.w:                                             ; preds = %.noexc73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %i.ct, ptr noundef nonnull align 2 dereferenceable(10) %i.by, i64 10, i1 false), !noalias !1257
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !1249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !1249
  br label %bb.jb

bb.x:                                             ; preds = %.noexc73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !1249
  store i16 0, ptr %i.ct, align 2, !alias.scope !1256, !noalias !1257
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !1249
  br label %bb.jb

bb.y:                                             ; preds = %bb.d
  %i.ge = getelementptr inbounds nuw i8, ptr %i.dr, i64 632 ; 2 uses
  %i.gf = load i64, ptr %i.ge, align 8, !range !1258, !alias.scope !1243, !noalias !1242, !noundef !5
  %.not11.i = icmp eq i64 %i.gf, -2
  br i1 %.not11.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !noalias !1244
  invoke void @_RNvMs1_NtNtNtCsdQl7XGSB5tC_10ttf_parser6tables3cff4cff1NtB5_5Table7outline(ptr noalias nofree noundef nonnull sret([10 x i8]) align 2 captures(none) dereferenceable(10) %i.cb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(280) %i.ge, i16 noundef %3, ptr noundef nonnull %i.cu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) @60)
          to label %.noexc74 unwind label %bb.kn

.noexc74:                                         ; preds = %bb.z
  %i.gg = load i8, ptr %i.cb, align 2, !range !18, !noalias !1244, !noundef !5
  %i.gh = trunc nuw i8 %i.gg to i1
  br i1 %i.gh, label %bb.ac, label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.gi = getelementptr inbounds nuw i8, ptr %i.dr, i64 1616
  %i.gj = load i8, ptr %i.gi, align 8, !range !1259, !alias.scope !1243, !noalias !1242, !noundef !5
  %.not12.i = icmp eq i8 %i.gj, 0
  br i1 %.not12.i, label %bb.ae, label %bb.ad

bb.ab:                                            ; preds = %.noexc74
  %i.gk = getelementptr inbounds nuw i8, ptr %i.cb, i64 2
  %.sroa.06.0.copyload.i = load i64, ptr %i.gk, align 2, !noalias !1244
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ct, i64 2
  store i64 %.sroa.06.0.copyload.i, ptr %i.gl, align 2, !alias.scope !1242, !noalias !1243
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.noexc74
  %storemerge13.i = phi i16 [ 1, %bb.ab ], [ 0, %.noexc74 ]
  store i16 %storemerge13.i, ptr %i.ct, align 2, !alias.scope !1242, !noalias !1243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !1244
  br label %bb.jb

bb.ad:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca), !noalias !1244
  %i.gm = getelementptr inbounds nuw i8, ptr %i.dr, i64 2968
  %i.gn = load i8, ptr %i.gm, align 8, !alias.scope !1260, !noalias !1242, !noundef !5 ; 2 uses
  %i.go = zext i8 %i.gn to i64                    ; 2 uses
  %i.gp = icmp ult i8 %i.gn, 65
  br i1 %i.gp, label %_RNvMsl_CsdQl7XGSB5tC_10ttf_parserNtB5_4Face6coords.exit15.i, label %.invoke801, !prof !1246

_RNvMsl_CsdQl7XGSB5tC_10ttf_parserNtB5_4Face6coords.exit15.i: ; preds = %bb.ad
  %i.gq = getelementptr inbounds nuw i8, ptr %i.dr, i64 1448
  %i.gr = getelementptr inbounds nuw i8, ptr %i.dr, i64 2840
  invoke void @_RNvMs1_NtNtNtCsdQl7XGSB5tC_10ttf_parser6tables3cff4cff2NtB5_5Table7outline(ptr noalias nofree noundef nonnull sret([10 x i8]) align 2 captures(address) dereferenceable(10) %i.ca, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.gq, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %i.gr, i64 noundef %i.go, i16 noundef %3, ptr noundef nonnull %i.cu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) @60)
          to label %.noexc76 unwind label %bb.kn

.noexc76:                                         ; preds = %_RNvMsl_CsdQl7XGSB5tC_10ttf_parserNtB5_4Face6coords.exit15.i
  %i.gs = load i8, ptr %i.ca, align 2, !range !18, !noalias !1244, !noundef !5
  %i.gt = trunc nuw i8 %i.gs to i1
  br i1 %i.gt, label %bb.ag, label %bb.af

bb.ae:                                            ; preds = %bb.aa
  store i16 0, ptr %i.ct, align 2, !alias.scope !1242, !noalias !1243
  br label %bb.jb

bb.af:                                            ; preds = %.noexc76
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ca, i64 2
  %.sroa.08.0.copyload.i = load i64, ptr %i.gu, align 2, !noalias !1244
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ct, i64 2
  store i64 %.sroa.08.0.copyload.i, ptr %i.gv, align 2, !alias.scope !1242, !noalias !1243
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.noexc76
  %storemerge.i = phi i16 [ 1, %bb.af ], [ 0, %.noexc76 ]
  store i16 %storemerge.i, ptr %i.ct, align 2, !alias.scope !1242, !noalias !1243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !noalias !1244
  br label %bb.jb

bb.ah:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci)
  %i.gw = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gy = load i32, ptr %i.gx, align 8, !noundef !5 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ha = load i32, ptr %i.gz, align 4, !noundef !5 ; 2 uses
  %i.hb = bitcast float %i.dd to i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1261)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !noalias !1261
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.bx, i8 0, i64 16, i1 false), !alias.scope !1262, !noalias !1261
  %.sroa.5.0..sroa_idx.i.i77 = getelementptr inbounds nuw i8, ptr %i.bx, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i77, i8 0, i64 16, i1 false), !alias.scope !1262, !noalias !1261
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 3 uses
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !1262, !noalias !1261
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !1262, !noalias !1261
  %.sroa.4.0..sroa_idx.i.i78 = getelementptr inbounds nuw i8, ptr %i.bx, i64 32 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx.i.i78, ptr noundef nonnull align 8 dereferenceable(32) @40, i64 32, i1 false), !noalias !1261
  %.sroa.6.0..sroa_idx.i.i79 = getelementptr inbounds nuw i8, ptr %i.bx, i64 80 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.6.0..sroa_idx.i.i79, align 8, !alias.scope !1262, !noalias !1261
  %.sroa.7.0..sroa_idx.i.i80 = getelementptr inbounds nuw i8, ptr %i.bx, i64 88 ; 2 uses
  store i64 0, ptr %.sroa.7.0..sroa_idx.i.i80, align 8, !alias.scope !1262, !noalias !1261
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1263)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !noalias !1264
  store i64 8317987319222330741, ptr %i.bw, align 8, !noalias !1264
  %.sroa.3.0..sroa_idx.i5.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 15 uses
  store i64 7816392313619706465, ptr %.sroa.3.0..sroa_idx.i5.i, align 8, !noalias !1264
  %.sroa.4.0..sroa_idx.i6.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 16 ; 15 uses
  store i64 7237128888997146499, ptr %.sroa.4.0..sroa_idx.i6.i, align 8, !noalias !1264
  %.sroa.5.0..sroa_idx.i7.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 24 ; 15 uses
  store i64 8387220255154660723, ptr %.sroa.5.0..sroa_idx.i7.i, align 8, !noalias !1264
  %.sroa.6.0..sroa_idx.i8.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 48 ; 7 uses
  %.sroa.14.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 56 ; 11 uses
  %.sroa.15.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 64 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1266)
end_hunk_4
begin_hunk_5_@_RNvNtCs4xylOWI7Ys4_12typst_render4text20render_outline_glyph:bb.a
  br i1 %or.cond32.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.do

_RNvMs3_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs3_1__9MultiCalluuuuuEEE9insert_atCs4xylOWI7Ys4_12typst_render.exit.i.i.i.i: ; preds = %bb.dk, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtCsaixNeEcpA3e_4slab5EntryINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtB1c_5inputs3_1__9MultiCalluuuuuEEEE8push_mutCs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i
  %.not.i.i.i.i83 = icmp eq i64 %.sroa.010.1.i.i.i.i, 1
  br i1 %.not.i.i.i.i83, label %.noexc58.i.i.i.i, label %bb.dl

.noexc58.i.i.i.i:                                 ; preds = %bb.dl, %_RNvMs3_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs3_1__9MultiCalluuuuuEEE9insert_atCs4xylOWI7Ys4_12typst_render.exit.i.i.i.i
  br i1 %.sroa.021.0.i.i.i.i.off0, label %bb.dm, label %_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs3_1__9MultiCalluuuuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEEE4linkCs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.outer.backedge

bb.dl:                                            ; preds = %_RNvMs3_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs3_1__9MultiCalluuuuuEEE9insert_atCs4xylOWI7Ys4_12typst_render.exit.i.i.i.i
  invoke fastcc void @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE6insertCs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_RNvNvNvNtCs4xylOWI7Ys4_12typst_render4text20render_outline_glyph9rasterize7___CACHE, i64 88), i128 noundef %i.sa, i64 noundef %i.adi)
          to label %.noexc58.i.i.i.i unwind label %.loopexit56.i.i.i.i

bb.dm:                                            ; preds = %.noexc58.i.i.i.i
  %.val1.i56.i.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNvNtCs4xylOWI7Ys4_12typst_render4text20render_outline_glyph9rasterize7___CACHE, i64 24), align 8, !noalias !1371, !noundef !5
  %i.aed = icmp ult i64 %.sroa.10.0.i.i.i.i.ph120, %.val1.i56.i.i.i.i
  br i1 %i.aed, label %bb.dn, label %.invoke.i.i.i.i, !prof !19

bb.dn:                                            ; preds = %bb.dm
  %.val.i57.i.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNvNtCs4xylOWI7Ys4_12typst_render4text20render_outline_glyph9rasterize7___CACHE, i64 16), align 8, !noalias !1371, !nonnull !5, !noundef !5
  %i.aee = getelementptr inbounds nuw [32 x i8], ptr %.val.i57.i.i.i.i, i64 %.sroa.10.0.i.i.i.i.ph120 ; 2 uses
  %i.aef = load i64, ptr %i.aee, align 8, !range !4, !noalias !1372, !noundef !5
  %.not.i.i.i.i.i.i = icmp eq i64 %i.aef, 2
  br i1 %.not.i.i.i.i.i.i, label %.invoke.i.i.i.i, label %_RNvXs5_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs3_1__9MultiCalluuuuuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutjE9index_mutCs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i, !prof !17

_RNvXs5_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs3_1__9MultiCalluuuuuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutjE9index_mutCs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i: ; preds = %bb.dn
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aee, i64 16 ; 2 uses
  %i.aeh = load i64, ptr %i.aeg, align 8, !noalias !1373, !noundef !5
  %i.aei = add i64 %i.aeh, 1
  store i64 %i.aei, ptr %i.aeg, align 8, !noalias !1373
  invoke fastcc void @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE6insertCs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_RNvNvNvNtCs4xylOWI7Ys4_12typst_render4text20render_outline_glyph9rasterize7___CACHE, i64 120), i64 noundef %.sroa.10.0.i.i.i.i.ph120, i128 noundef %.sroa.17.0.i.i.i.i.ph121, i64 noundef %i.adi)
          to label %_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs3_1__9MultiCalluuuuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEEE4linkCs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.outer.backedge unwind label %.loopexit56.i.i.i.i

_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs3_1__9MultiCalluuuuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEEE4linkCs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.outer.backedge: ; preds = %_RNvXs5_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs3_1__9MultiCalluuuuuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutjE9index_mutCs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i, %.noexc58.i.i.i.i
  br label %_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs3_1__9MultiCalluuuuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEEE4linkCs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.outer

bb.do:                                            ; preds = %.loopexit54.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !1334
  %i.aej = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aej, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.bh, i64 40, i1 false), !noalias !1366
  store i64 %.sroa.021.0.i.i.i.i.off090, ptr %i.bg, align 8, !noalias !1334
  %i.aek = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i64 %.sroa.10.0.i.i.i.i.ph120, ptr %i.aek, align 8, !noalias !1334
  %i.ael = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNvNtCs4xylOWI7Ys4_12typst_render4text20render_outline_glyph9rasterize7___CACHE, i64 80), align 8, !noalias !1334, !noundef !5 ; 7 uses
  %i.aem = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNvNtCs4xylOWI7Ys4_12typst_render4text20render_outline_glyph9rasterize7___CACHE, i64 72), align 8, !noalias !1374, !noundef !5
  %i.aen = add i64 %i.aem, 1
  store i64 %i.aen, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNvNtCs4xylOWI7Ys4_12typst_render4text20render_outline_glyph9rasterize7___CACHE, i64 72), align 8, !noalias !1374
  %i.aeo = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNvNtCs4xylOWI7Ys4_12typst_render4text20render_outline_glyph9rasterize7___CACHE, i64 64), align 8, !noalias !1374, !noundef !5 ; 3 uses
  %i.aep = icmp ult i64 %i.aeo, 164703072086692426
  call void @llvm.assume(i1 %i.aep)
  %.not7.i.i.i.i.i = icmp eq i64 %i.ael, %i.aeo
  br i1 %.not7.i.i.i.i.i, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.aeq = icmp ult i64 %i.ael, %i.aeo
  br i1 %i.aeq, label %bb.ds, label %bb.dt, !prof !19

bb.dq:                                            ; preds = %bb.do
  %i.aer = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNvNtCs4xylOWI7Ys4_12typst_render4text20render_outline_glyph9rasterize7___CACHE, i64 48), align 8, !range !8, !noalias !1375, !noundef !5
  %i.aes = icmp eq i64 %i.ael, %i.aer
  br i1 %i.aes, label %bb.dr, label %bb.eb

bb.dr:                                            ; preds = %bb.dq
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtCsaixNeEcpA3e_4slab5EntryINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtB1j_7memoize10CacheEntryINtNvNtB1j_5inputs3_1__9MultiCalluuuuuEINtNtCs3oUPovFnLWP_4core6option6OptionINtNtB7_4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEEEEE8grow_oneCs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_RNvNvNvNtCs4xylOWI7Ys4_12typst_render4text20render_outline_glyph9rasterize7___CACHE, i64 48))
          to label %bb.eb unwind label %bb.ea, !noalias !1376

bb.ds:                                            ; preds = %bb.dp
  %i.aet = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNvNtCs4xylOWI7Ys4_12typst_render4text20render_outline_glyph9rasterize7___CACHE, i64 56), align 8, !noalias !1374, !nonnull !5, !noundef !5
  %i.aeu = getelementptr inbounds nuw [56 x i8], ptr %i.aet, i64 %i.ael ; 7 uses
  %i.aev = load i64, ptr %i.aeu, align 8, !range !4, !noalias !1377, !noundef !5
  %.not.i61.i.i.i.i = icmp eq i64 %i.aev, 2
  br i1 %.not.i61.i.i.i.i, label %bb.du, label %bb.dt, !prof !19

bb.dt:                                            ; preds = %bb.ds, %bb.dp
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #29
          to label %bb.dz unwind label %bb.ec, !noalias !1377

bb.du:                                            ; preds = %bb.ds
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aeu, i64 8
  %i.aex = load i64, ptr %i.aew, align 8, !noalias !1377, !noundef !5
  store i64 %i.aex, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNvNtCs4xylOWI7Ys4_12typst_render4text20render_outline_glyph9rasterize7___CACHE, i64 80), align 8, !noalias !1374
  call void @llvm.experimental.noalias.scope.decl(metadata !1378)
  %i.aey = load i64, ptr %i.aeu, align 8, !range !4, !alias.scope !1378, !noalias !1377, !noundef !5
  %i.aez = icmp eq i64 %i.aey, 2
  br i1 %i.aez, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsaixNeEcpA3e_4slab5EntryINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtB18_7memoize10CacheEntryINtNvNtB18_5inputs3_1__9MultiCalluuuuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  call void @llvm.experimental.noalias.scope.decl(metadata !1379)
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aeu, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !1380)
  %i.afb = getelementptr inbounds nuw i8, ptr %i.aeu, i64 40 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1381)
  %i.afc = load ptr, ptr %i.afb, align 8, !alias.scope !1382, !noalias !1377, !noundef !5 ; 2 uses
  %i.afd = icmp eq ptr %i.afc, null
  br i1 %i.afd, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i.i.i, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.afe = atomicrmw sub ptr %i.afc, i64 1 release, align 8, !noalias !1383
  %i.aff = icmp eq i64 %i.afe, 1
  br i1 %i.aff, label %bb.dx, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i.i.i

bb.dx:                                            ; preds = %bb.dw
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapE9drop_slowCs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.afb) #25, !noalias !1377
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i.i.i: ; preds = %bb.dx, %bb.dw, %bb.dv
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.afa, align 8, !alias.scope !1384, !noalias !1377 ; 2 uses
  %i.afg = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.afg, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsaixNeEcpA3e_4slab5EntryINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtB18_7memoize10CacheEntryINtNvNtB18_5inputs3_1__9MultiCalluuuuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i, label %bb.dy

bb.dy:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i.i.i
  %i.afh = getelementptr inbounds nuw i8, ptr %i.aeu, i64 24
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.afh, align 8, !alias.scope !1384, !noalias !1377, !nonnull !5, !noundef !5
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !1385
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsaixNeEcpA3e_4slab5EntryINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtB18_7memoize10CacheEntryINtNvNtB18_5inputs3_1__9MultiCalluuuuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i

bb.dz:                                            ; preds = %bb.dt
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsaixNeEcpA3e_4slab5EntryINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtB18_7memoize10CacheEntryINtNvNtB18_5inputs3_1__9MultiCalluuuuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i: ; preds = %bb.dy, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i.i.i, %bb.du
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aeu, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.bg, i64 56, i1 false), !noalias !1341
  br label %_RNvMs3_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBE_7memoize10CacheEntryINtNvNtBE_5inputs3_1__9MultiCalluuuuuEINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEEEE9insert_atCs4xylOWI7Ys4_12typst_render.exit.i.i.i.i

bb.ea:                                            ; preds = %bb.dr
  %i.afi = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsaixNeEcpA3e_4slab5EntryINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtB18_7memoize10CacheEntryINtNvNtB18_5inputs3_1__9MultiCalluuuuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEEEEECs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(56) %i.bg) #28, !noalias !1341
  br label %.body.i54.i.i

bb.eb:                                            ; preds = %bb.dr, %bb.dq
  %i.afj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNvNtCs4xylOWI7Ys4_12typst_render4text20render_outline_glyph9rasterize7___CACHE, i64 56), align 8, !noalias !1375, !nonnull !5, !noundef !5
  %i.afk = getelementptr inbounds nuw [56 x i8], ptr %i.afj, i64 %i.ael
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.afk, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.bg, i64 56, i1 false), !noalias !1341
  %i.afl = add nuw nsw i64 %i.ael, 1              ; 2 uses
  store i64 %i.afl, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNvNtCs4xylOWI7Ys4_12typst_render4text20render_outline_glyph9rasterize7___CACHE, i64 64), align 8, !noalias !1375
  store i64 %i.afl, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNvNtCs4xylOWI7Ys4_12typst_render4text20render_outline_glyph9rasterize7___CACHE, i64 80), align 8, !noalias !1374
  br label %_RNvMs3_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBE_7memoize10CacheEntryINtNvNtBE_5inputs3_1__9MultiCalluuuuuEINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEEEE9insert_atCs4xylOWI7Ys4_12typst_render.exit.i.i.i.i

bb.ec:                                            ; preds = %bb.dt
  %i.afm = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBG_7memoize10CacheEntryINtNvNtBG_5inputs3_1__9MultiCalluuuuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEEEECs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(56) %i.bg) #28, !noalias !1341
  br label %.body.i54.i.i

_RNvMs3_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBE_7memoize10CacheEntryINtNvNtBE_5inputs3_1__9MultiCalluuuuuEINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEEEE9insert_atCs4xylOWI7Ys4_12typst_render.exit.i.i.i.i: ; preds = %bb.eb, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsaixNeEcpA3e_4slab5EntryINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtB18_7memoize10CacheEntryINtNvNtB18_5inputs3_1__9MultiCalluuuuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !1334
  %i.afn = xor i64 %i.ael, -1                     ; 2 uses
  br i1 %i.aec, label %.noexc66.i.i.i.i, label %bb.ed

.noexc66.i.i.i.i:                                 ; preds = %bb.ed, %_RNvMs3_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBE_7memoize10CacheEntryINtNvNtBE_5inputs3_1__9MultiCalluuuuuEINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEEEE9insert_atCs4xylOWI7Ys4_12typst_render.exit.i.i.i.i
  br i1 %.sroa.021.0.i.i.i.i.off0, label %bb.ee, label %_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs3_1__9MultiCalluuuuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEEE4linkCs4xylOWI7Ys4_12typst_render.exit69.i.i.i.i

bb.ed:                                            ; preds = %_RNvMs3_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBE_7memoize10CacheEntryINtNvNtBE_5inputs3_1__9MultiCalluuuuuEINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEEEE9insert_atCs4xylOWI7Ys4_12typst_render.exit.i.i.i.i
  invoke fastcc void @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE6insertCs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_RNvNvNvNtCs4xylOWI7Ys4_12typst_render4text20render_outline_glyph9rasterize7___CACHE, i64 88), i128 noundef %i.sa, i64 noundef %i.afn)
          to label %.noexc66.i.i.i.i unwind label %.body.i.i.i.i

bb.ee:                                            ; preds = %.noexc66.i.i.i.i
  %.val1.i62.i.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNvNtCs4xylOWI7Ys4_12typst_render4text20render_outline_glyph9rasterize7___CACHE, i64 24), align 8, !noalias !1386, !noundef !5
  %i.afo = icmp ult i64 %.sroa.10.0.i.i.i.i.ph120, %.val1.i62.i.i.i.i
  br i1 %i.afo, label %bb.ef, label %bb.eg, !prof !19

bb.ef:                                            ; preds = %bb.ee
  %.val.i63.i.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNvNtCs4xylOWI7Ys4_12typst_render4text20render_outline_glyph9rasterize7___CACHE, i64 16), align 8, !noalias !1386, !nonnull !5, !noundef !5
  %i.afp = getelementptr inbounds nuw [32 x i8], ptr %.val.i63.i.i.i.i, i64 %.sroa.10.0.i.i.i.i.ph120 ; 2 uses
  %i.afq = load i64, ptr %i.afp, align 8, !range !4, !noalias !1387, !noundef !5
  %.not.i.i64.i.i.i.i = icmp eq i64 %i.afq, 2
  br i1 %.not.i.i64.i.i.i.i, label %bb.eg, label %_RNvXs5_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs3_1__9MultiCalluuuuuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutjE9index_mutCs4xylOWI7Ys4_12typst_render.exit.i65.i.i.i.i, !prof !17

bb.eg:                                            ; preds = %bb.ef, %bb.ee
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 11, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #31
          to label %.noexc67.i.i.i.i unwind label %.body.i.i.i.i, !noalias !1341

.noexc67.i.i.i.i:                                 ; preds = %bb.eg
  unreachable

_RNvXs5_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs3_1__9MultiCalluuuuuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutjE9index_mutCs4xylOWI7Ys4_12typst_render.exit.i65.i.i.i.i: ; preds = %bb.ef
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afp, i64 16 ; 2 uses
  %i.afs = load i64, ptr %i.afr, align 8, !noalias !1388, !noundef !5
  %i.aft = add i64 %i.afs, 1
  store i64 %i.aft, ptr %i.afr, align 8, !noalias !1388
  invoke fastcc void @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE6insertCs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_RNvNvNvNtCs4xylOWI7Ys4_12typst_render4text20render_outline_glyph9rasterize7___CACHE, i64 120), i64 noundef %.sroa.10.0.i.i.i.i.ph120, i128 noundef %.sroa.17.0.i.i.i.i.ph121, i64 noundef %i.afn)
          to label %_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs3_1__9MultiCalluuuuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEEE4linkCs4xylOWI7Ys4_12typst_render.exit69.i.i.i.i unwind label %.body.i.i.i.i

_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs3_1__9MultiCalluuuuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEEE4linkCs4xylOWI7Ys4_12typst_render.exit69.i.i.i.i: ; preds = %_RNvXs5_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs3_1__9MultiCalluuuuuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutjE9index_mutCs4xylOWI7Ys4_12typst_render.exit.i65.i.i.i.i, %.noexc66.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1389)
  %.val4.i.i.i.i.i = load i64, ptr %i.bj, align 8, !alias.scope !1390, !noalias !1342 ; 2 uses
  %i.afu = icmp eq i64 %.val4.i.i.i.i.i, 0
  br i1 %i.afu, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs3_1__9MultiCalluuuuuEoEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i, label %bb.eh

bb.eh:                                            ; preds = %_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs3_1__9MultiCalluuuuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEEE4linkCs4xylOWI7Ys4_12typst_render.exit69.i.i.i.i
  %i.afv = shl nuw i64 %.val4.i.i.i.i.i, 5
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.yr, i64 noundef %i.afv, i64 noundef range(i64 1, -9223372036854775807) 16) #26, !noalias !1391
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs3_1__9MultiCalluuuuuEoEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs3_1__9MultiCalluuuuuEoEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i: ; preds = %bb.eh, %_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs3_1__9MultiCalluuuuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEEE4linkCs4xylOWI7Ys4_12typst_render.exit69.i.i.i.i
  %i.afw = icmp eq i64 %i.yx, 0
  br i1 %i.afw, label %bb.en, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs3_1__9MultiCalluuuuuEoEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i
  %i.afx = icmp slt i64 %i.yx, 576460752303423487
  call void @llvm.assume(i1 %i.afx)
  %i.afy = shl i64 %i.yx, 5                       ; 2 uses
  %i.afz = add i64 %i.afy, 32                     ; 2 uses
  %i.aga = add nsw i64 %i.yx, 17
  %i.agb = add i64 %i.aga, %i.afz                 ; 4 uses
  %i.agc = icmp uge i64 %i.agb, %i.afz
  %i.agd = icmp ult i64 %i.agb, 9223372036854775793
  call void @llvm.assume(i1 %i.agc)
  call void @llvm.assume(i1 %i.agd)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.yy) ]
  %i.age = icmp eq i64 %i.agb, 0
  br i1 %i.age, label %bb.en, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint12CallSequenceINtNvNtBG_5inputs3_1__9MultiCalluuuuuEEECs4xylOWI7Ys4_12typst_render.exit.sink.split.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint12CallSequenceINtNvNtBG_5inputs3_1__9MultiCalluuuuuEEECs4xylOWI7Ys4_12typst_render.exit.sink.split.i.i.i.i: ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i77.i.i.i.i, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i
  %.sink.i.i.i.i = phi i64 [ %i.agl, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i77.i.i.i.i ], [ %i.afy, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i ]
  %.sink257.i.i.i.i = phi i64 [ %i.ago, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i77.i.i.i.i ], [ %i.agb, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i ]
  %i.agf = sub nuw nsw i64 -32, %.sink.i.i.i.i
  %i.agg = getelementptr inbounds i8, ptr %i.yy, i64 %i.agf
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.agg, i64 noundef %.sink257.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 16) #26, !noalias !1341
  br label %bb.en

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo7memoize10CacheEntryINtNvNtBG_5inputs3_1__9MultiCalluuuuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i: ; preds = %bb.df, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1392)
  %.val4.i72.i.i.i.i = load i64, ptr %i.bj, align 8, !alias.scope !1393, !noalias !1342 ; 2 uses
  %i.agh = icmp eq i64 %.val4.i72.i.i.i.i, 0
  br i1 %i.agh, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs3_1__9MultiCalluuuuuEoEEEECs4xylOWI7Ys4_12typst_render.exit.i74.i.i.i.i, label %bb.ei

bb.ei:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo7memoize10CacheEntryINtNvNtBG_5inputs3_1__9MultiCalluuuuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i
  %i.agi = shl nuw i64 %.val4.i72.i.i.i.i, 5
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.yr, i64 noundef %i.agi, i64 noundef range(i64 1, -9223372036854775807) 16) #26, !noalias !1394
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs3_1__9MultiCalluuuuuEoEEEECs4xylOWI7Ys4_12typst_render.exit.i74.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs3_1__9MultiCalluuuuuEoEEEECs4xylOWI7Ys4_12typst_render.exit.i74.i.i.i.i: ; preds = %bb.ei, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo7memoize10CacheEntryINtNvNtBG_5inputs3_1__9MultiCalluuuuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i
  %i.agj = icmp eq i64 %i.yx, 0
  br i1 %i.agj, label %bb.en, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i77.i.i.i.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i77.i.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs3_1__9MultiCalluuuuuEoEEEECs4xylOWI7Ys4_12typst_render.exit.i74.i.i.i.i
  %i.agk = icmp slt i64 %i.yx, 576460752303423487
  call void @llvm.assume(i1 %i.agk)
  %i.agl = shl i64 %i.yx, 5                       ; 2 uses
  %i.agm = add i64 %i.agl, 32                     ; 2 uses
  %i.agn = add nsw i64 %i.yx, 17
  %i.ago = add i64 %i.agn, %i.agm                 ; 4 uses
  %i.agp = icmp uge i64 %i.ago, %i.agm
  %i.agq = icmp ult i64 %i.ago, 9223372036854775793
  call void @llvm.assume(i1 %i.agp)
  call void @llvm.assume(i1 %i.agq)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.yy) ]
  %i.agr = icmp eq i64 %i.ago, 0
  br i1 %i.agr, label %bb.en, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint12CallSequenceINtNvNtBG_5inputs3_1__9MultiCalluuuuuEEECs4xylOWI7Ys4_12typst_render.exit.sink.split.i.i.i.i

.loopexit56.i.i.i.i:                              ; preds = %bb.dl, %_RNvXs5_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs3_1__9MultiCalluuuuuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutjE9index_mutCs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i, %bb.di
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.lcssa54.i.i.i, ptr %i.ym, align 8, !noalias !1264
  br label %bb.ej

.loopexit.split-lp.i.i.i.i:                       ; preds = %.invoke.i.i.i.i, %bb.cy
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ej

bb.ej:                                            ; preds = %.loopexit.split-lp.i.i.i.i, %.loopexit56.i.i.i.i
  %lpad.phi.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i, %.loopexit56.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo7memoize10CacheEntryINtNvNtBG_5inputs3_1__9MultiCalluuuuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEEECs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(40) %i.bh) #28, !noalias !1364
  br label %.body.i54.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i: ; preds = %bb.em, %bb.el, %bb.ek, %.body.i54.i.i
  %eh.lpad-body3.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i, %.body.i54.i.i ], [ %i.agu, %bb.ek ], [ %i.agu, %bb.el ], [ %i.agu, %bb.em ] ; 2 uses
  %i.ags = cmpxchg ptr @_RNvNvNvNtCs4xylOWI7Ys4_12typst_render4text20render_outline_glyph9rasterize7___CACHE, i64 8, i64 0 release monotonic, align 8, !noalias !1264
  %i.agt = extractvalue { i64, i1 } %i.ags, 1
  br i1 %i.agt, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs3_1__9MultiCalluuuuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEEEECs4xylOWI7Ys4_12typst_render.exit.i.i, label %bb.ci, !prof !19

bb.ek:                                            ; preds = %bb.ck, %bb.cj
  %i.agu = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %.not.i50.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.agv = atomicrmw sub ptr %.sroa.0.0.i43.i.i, i64 1 release, align 8, !noalias !1395
  %i.agw = icmp eq i64 %i.agv, 1
  br i1 %i.agw, label %bb.em, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i

bb.em:                                            ; preds = %bb.el
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapE9drop_slowCs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.bk) #25, !noalias !1320
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i

bb.en:                                            ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i77.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs3_1__9MultiCalluuuuuEoEEEECs4xylOWI7Ys4_12typst_render.exit.i74.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint12CallSequenceINtNvNtBG_5inputs3_1__9MultiCalluuuuuEEECs4xylOWI7Ys4_12typst_render.exit.sink.split.i.i.i.i, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs3_1__9MultiCalluuuuuEoEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !1264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !1264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !1264
  %i.agx = cmpxchg ptr @_RNvNvNvNtCs4xylOWI7Ys4_12typst_render4text20render_outline_glyph9rasterize7___CACHE, i64 8, i64 0 release monotonic, align 8, !noalias !1264
  %i.agy = extractvalue { i64, i1 } %i.agx, 1
  br i1 %i.agy, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs3_1__9MultiCalluuuuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEEEECs4xylOWI7Ys4_12typst_render.exit58.i.i, label %bb.eo, !prof !19

bb.eo:                                            ; preds = %bb.en
  invoke void @_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 @_RNvNvNvNtCs4xylOWI7Ys4_12typst_render4text20render_outline_glyph9rasterize7___CACHE, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs3_1__9MultiCalluuuuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEEEECs4xylOWI7Ys4_12typst_render.exit58.i.i unwind label %bb.cc, !noalias !1320

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs3_1__9MultiCalluuuuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEEEECs4xylOWI7Ys4_12typst_render.exit58.i.i: ; preds = %bb.eo, %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !1264
  br label %_RINvNtCsloFShupyl5J_6comemo7memoize7memoizeINtNtB4_5input5MultiTRNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceNtCsdQl7XGSB5tC_10ttf_parser7GlyphIdmmmEEINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEENCNvNvNtCs4xylOWI7Ys4_12typst_render4text20render_outline_glyph9rasterize0EB4t_.exit.i

bb.ep:                                            ; preds = %bb.ci, %bb.bj
  %i.agz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !1320
  unreachable

bb.eq:                                            ; preds = %bb.bz, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock15RwLockReadGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2n_5inputs3_1__9MultiCalluuuuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEEEECs4xylOWI7Ys4_12typst_render.exit40.i.i, %bb.bl, %_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i, %bb.ax, %.noexc11.i, %.noexc10.i, %.noexc9.i, %bb.ai, %bb.ah
  %i.aha = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

common.resume:                                    ; preds = %.body, %bb.fb, %bb.kn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %.pn50, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit ], [ %lpad.thr_comm, %bb.kn ], [ %.pn, %bb.fb ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

.body.i:                                          ; preds = %bb.eq, %bb.cb, %bb.ca, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs3_1__9MultiCalluuuuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEEEECs4xylOWI7Ys4_12typst_render.exit.i.i, %bb.bp, %.body.i.i.i, %bb.bj, %bb.bi
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.aha, %bb.eq ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %eh.lpad-body.i.i.i, %bb.bp ], [ %i.vi, %bb.bi ], [ %i.vi, %bb.bj ], [ %.pn.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs3_1__9MultiCalluuuuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEEEECs4xylOWI7Ys4_12typst_render.exit.i.i ], [ %.pn.i.i, %bb.ca ], [ %.pn.i.i, %bb.cb ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTTuuuuuEINtNtCsloFShupyl5J_6comemo10constraint10ConstraintINtNvNtBO_5inputs3_1__9MultiCalluuuuuEEEECs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef align 8 dereferenceable(96) %i.bx) #28, !noalias !1261
  br label %common.resume

_RINvNtCsloFShupyl5J_6comemo7memoize7memoizeINtNtB4_5input5MultiTRNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceNtCsdQl7XGSB5tC_10ttf_parser7GlyphIdmmmEEINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEENCNvNvNtCs4xylOWI7Ys4_12typst_render4text20render_outline_glyph9rasterize0EB4t_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs3_1__9MultiCalluuuuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEEEECs4xylOWI7Ys4_12typst_render.exit58.i.i, %bb.bz, %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEENtNtB7_5clone5Clone5cloneCs4xylOWI7Ys4_12typst_render.exit.i.i
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.0.i43.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs3_1__9MultiCalluuuuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEEEEECs4xylOWI7Ys4_12typst_render.exit58.i.i ], [ %.val35.i.i, %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEENtNtB7_5clone5Clone5cloneCs4xylOWI7Ys4_12typst_render.exit.i.i ], [ %.val35.i.i, %bb.bz ] ; 29 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1396)
  call void @llvm.experimental.noalias.scope.decl(metadata !1397)
  call void @llvm.experimental.noalias.scope.decl(metadata !1398)
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1399)
  call void @llvm.experimental.noalias.scope.decl(metadata !1400)
  call void @llvm.experimental.noalias.scope.decl(metadata !1401)
  %.val4.i.i.i.i.i.i.i = load i64, ptr %i.ahb, align 8, !alias.scope !1402, !noalias !1261 ; 2 uses
  %i.ahc = icmp eq i64 %.val4.i.i.i.i.i.i.i, 0
  br i1 %i.ahc, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs3_1__9MultiCalluuuuuEoEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i.i, label %bb.er

bb.er:                                            ; preds = %_RINvNtCsloFShupyl5J_6comemo7memoize7memoizeINtNtB4_5input5MultiTRNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceNtCsdQl7XGSB5tC_10ttf_parser7GlyphIdmmmEEINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEENCNvNvNtCs4xylOWI7Ys4_12typst_render4text20render_outline_glyph9rasterize0EB4t_.exit.i
  %.val5.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !1402, !noalias !1261, !nonnull !5, !noundef !5
  %i.ahd = shl nuw i64 %.val4.i.i.i.i.i.i.i, 5
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i.i.i, i64 noundef %i.ahd, i64 noundef range(i64 1, -9223372036854775807) 16) #26, !noalias !1403
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs3_1__9MultiCalluuuuuEoEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs3_1__9MultiCalluuuuuEoEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i.i: ; preds = %bb.er, %_RINvNtCsloFShupyl5J_6comemo7memoize7memoizeINtNtB4_5input5MultiTRNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceNtCsdQl7XGSB5tC_10ttf_parser7GlyphIdmmmEEINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEENCNvNvNtCs4xylOWI7Ys4_12typst_render4text20render_outline_glyph9rasterize0EB4t_.exit.i
  %.val.i.i.i.i.i.i18.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i78, align 8, !alias.scope !1402, !noalias !1261 ; 2 uses
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.ahe, align 8, !alias.scope !1402, !noalias !1261, !noundef !5 ; 4 uses
  %i.ahf = icmp eq i64 %.val1.i.i.i.i.i.i.i, 0
  br i1 %i.ahf, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint12CallSequenceINtNvNtBG_5inputs3_1__9MultiCalluuuuuEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs3_1__9MultiCalluuuuuEoEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i.i
  %i.ahg = icmp slt i64 %.val1.i.i.i.i.i.i.i, 576460752303423487
  call void @llvm.assume(i1 %i.ahg)
  %i.ahh = shl i64 %.val1.i.i.i.i.i.i.i, 5        ; 2 uses
  %i.ahi = add i64 %i.ahh, 32                     ; 2 uses
  %i.ahj = add nsw i64 %.val1.i.i.i.i.i.i.i, 17
  %i.ahk = add i64 %i.ahj, %i.ahi                 ; 4 uses
  %i.ahl = icmp uge i64 %i.ahk, %i.ahi
  %i.ahm = icmp ult i64 %i.ahk, 9223372036854775793
  call void @llvm.assume(i1 %i.ahl)
  call void @llvm.assume(i1 %i.ahm)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i18.i) ]
  %i.ahn = icmp eq i64 %i.ahk, 0
  br i1 %i.ahn, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint12CallSequenceINtNvNtBG_5inputs3_1__9MultiCalluuuuuEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i, label %bb.es

bb.es:                                            ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aho = sub nuw nsw i64 -32, %i.ahh
  %i.ahp = getelementptr inbounds i8, ptr %.val.i.i.i.i.i.i18.i, i64 %i.aho
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ahp, i64 noundef %i.ahk, i64 noundef range(i64 1, -9223372036854775807) 16) #26, !noalias !1403
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint12CallSequenceINtNvNtBG_5inputs3_1__9MultiCalluuuuuEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint12CallSequenceINtNvNtBG_5inputs3_1__9MultiCalluuuuuEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i: ; preds = %bb.es, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs3_1__9MultiCalluuuuuEoEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i.i
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.bx, i64 72
  %.val.i.i.i.i.i.i = load i64, ptr %i.ahq, align 8, !alias.scope !1404, !noalias !1261 ; 2 uses
  %i.ahr = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.ahr, label %_RNvNvNtCs4xylOWI7Ys4_12typst_render4text20render_outline_glyph9rasterize.exit, label %bb.et

bb.et:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint12CallSequenceINtNvNtBG_5inputs3_1__9MultiCalluuuuuEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i
  %.val1.i.i.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i79, align 8, !alias.scope !1404, !noalias !1261, !nonnull !5, !noundef !5
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !1405
  br label %_RNvNvNtCs4xylOWI7Ys4_12typst_render4text20render_outline_glyph9rasterize.exit

_RNvNvNtCs4xylOWI7Ys4_12typst_render4text20render_outline_glyph9rasterize.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint12CallSequenceINtNvNtBG_5inputs3_1__9MultiCalluuuuuEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i, %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !1261
  %.not40 = icmp eq ptr %.sroa.0.0.i.i, null
  br i1 %.not40, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEECs4xylOWI7Ys4_12typst_render.exit102, label %bb.eu

bb.eu:                                            ; preds = %_RNvNvNtCs4xylOWI7Ys4_12typst_render4text20render_outline_glyph9rasterize.exit
  store ptr %.sroa.0.0.i.i, ptr %i.ci, align 8
  %i.ahs = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.aht = load i32, ptr %i.ahs, align 8, !range !10, !noundef !5 ; 2 uses
  %i.ahu = icmp samesign ugt i32 %i.aht, 1
  %i.ahv = zext nneg i32 %i.aht to i64
  %i.ahw = add nsw i64 %i.ahv, -1
  %i.ahx = select i1 %i.ahu, i64 %i.ahw, i64 0
  switch i64 %i.ahx, label %bb.ev [
    i64 0, label %bb.ew
    i64 1, label %switch.lookup
    i64 2, label %bb.fa
  ]

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEECs4xylOWI7Ys4_12typst_render.exit102: ; preds = %bb.gm, %bb.gl, %_RNvNvNtCs4xylOWI7Ys4_12typst_render4text20render_outline_glyph9rasterize.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  br label %bb.ja

bb.ev:                                            ; preds = %bb.eu
  unreachable

bb.ew:                                            ; preds = %bb.eu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch)
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB2_5Color10to_process(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.ch, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ahs)
          to label %bb.fc unwind label %.loopexit.split-lp

switch.lookup:                                    ; preds = %bb.eu
  %i.ahy = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1406)
  call void @llvm.experimental.noalias.scope.decl(metadata !1407)
  %i.ahz = load i64, ptr %i.ahy, align 8, !range !4, !alias.scope !1406, !noalias !1408, !noundef !5
  %i.aia = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.aib = load ptr, ptr %i.aia, align 8, !alias.scope !1406, !noalias !1408, !nonnull !5, !noundef !5
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvNtCs4xylOWI7Ys4_12typst_render5paint11to_sk_paint, i64 %i.ahz
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aib, i64 %switch.ext
  %.sroa.016.0.i = load i8, ptr %i.aic, align 1, !range !24, !noalias !1409, !noundef !5
  %cond.i = icmp eq i8 %.sroa.016.0.i, 0
  br i1 %cond.i, label %_RNvMs_NtCs4xylOWI7Ys4_12typst_render5paintNtB4_15GradientSampler3new.exit, label %bb.ex

bb.ex:                                            ; preds = %switch.lookup
  %i.aid = load <2 x double>, ptr %1, align 8, !alias.scope !1407, !noalias !1410
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !1409
  %i.aie = getelementptr inbounds nuw i8, ptr %1, i64 40
  invoke void @_RNvMs_NtCsd315radwPZ_14tiny_skia_path9transformNtB4_9Transform6invert(ptr noalias nofree noundef nonnull sret([28 x i8]) align 4 captures(address) dereferenceable(28) %i.be, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.aie)
          to label %.noexc86 unwind label %.loopexit.split-lp

.noexc86:                                         ; preds = %bb.ex
  %i.aif = load i32, ptr %i.be, align 4, !range !15, !noalias !1409, !noundef !5
  %i.aig = trunc nuw i32 %i.aif to i1
  br i1 %i.aig, label %bb.ey, label %bb.ez, !prof !19

bb.ey:                                            ; preds = %.noexc86
  %i.aih = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.aii = load <4 x float>, ptr %i.aih, align 4, !noalias !1409
  %.sroa.6.0..sroa_idx12.i = getelementptr inbounds nuw i8, ptr %i.be, i64 20
  %i.aij = load <2 x float>, ptr %.sroa.6.0..sroa_idx12.i, align 4, !noalias !1409
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !1409
  br label %_RNvMs_NtCs4xylOWI7Ys4_12typst_render5paintNtB4_15GradientSampler3new.exit

bb.ez:                                            ; preds = %.noexc86
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #31
          to label %.noexc87 unwind label %.loopexit.split-lp

.noexc87:                                         ; preds = %bb.ez
  unreachable

bb.fa:                                            ; preds = %bb.eu
  %i.aik = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg)
  %i.ail = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val246 = load float, ptr %i.ail, align 8, !noundef !5 ; 6 uses
  invoke fastcc void @_RNvNtCs4xylOWI7Ys4_12typst_render5paint19render_tiling_frame(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.cg, float %.val246, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aik)
          to label %bb.hq unwind label %.loopexit.split-lp

.body:                                            ; preds = %.loopexit354, %.loopexit.split-lp, %bb.ht, %.body225, %bb.hd, %bb.he, %bb.fz, %bb.ga
  %.pn = phi { ptr, i32 } [ %lpad.phi.i, %bb.hd ], [ %i.apb, %bb.fz ], [ %eh.lpad-body226, %bb.ht ], [ %i.apb, %bb.ga ], [ %lpad.phi.i, %bb.he ], [ %eh.lpad-body226, %.body225 ], [ %lpad.loopexit, %.loopexit354 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.aim = atomicrmw sub ptr %.sroa.0.0.i.i, i64 1 release, align 8, !noalias !1411
  %i.ain = icmp eq i64 %i.aim, 1
  br i1 %i.ain, label %bb.fb, label %common.resume

bb.fb:                                            ; preds = %.body
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapE9drop_slowCs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.ci) #25
  br label %common.resume

.loopexit354:                                     ; preds = %bb.gw
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %.split88.us.i.invoke, %.invoke784, %.invoke, %bb.ew, %bb.ex, %bb.ez, %bb.fc, %bb.fi, %bb.gq, %bb.fa
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.fc:                                            ; preds = %bb.ew
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !1412
  invoke void @_RNvMs4_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB5_12ProcessColor6to_rgb(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.bd, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %i.ch)
          to label %bb.fd unwind label %.loopexit.split-lp

bb.fd:                                            ; preds = %bb.fc
  %.sroa.4.0..sroa_idx.i.i88 = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %.sroa.4.0.copyload.i.i = load float, ptr %.sroa.4.0..sroa_idx.i.i88, align 4, !alias.scope !1413, !noalias !1412
  %.sroa.5.0..sroa_idx.i.i89 = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.sroa.5.0.copyload.i.i = load float, ptr %.sroa.5.0..sroa_idx.i.i89, align 8, !alias.scope !1413, !noalias !1412
  %i.aio = fmul float %.sroa.4.0.copyload.i.i, 2.550000e+02
  %i.aip = call nsz float @llvm.minimumnum.f32(float %i.aio, float 2.550000e+02)
  %i.aiq = fadd float %i.aip, f0x4B000000
  %i.air = bitcast float %i.aiq to i32
  %i.ais = call i32 @llvm.usub.sat.i32(i32 %i.air, i32 1258291200) ; 2 uses
  %i.ait = fmul float %.sroa.5.0.copyload.i.i, 2.550000e+02
  %i.aiu = call nsz float @llvm.minimumnum.f32(float %i.ait, float 2.550000e+02)
  %i.aiv = fadd float %i.aiu, f0x4B000000
  %i.aiw = bitcast float %i.aiv to i32
  %i.aix = call i32 @llvm.usub.sat.i32(i32 %i.aiw, i32 1258291200) ; 2 uses
  %i.aiy = load <4 x float>, ptr %i.bd, align 16, !alias.scope !1413, !noalias !1412
  %i.aiz = shufflevector <4 x float> %i.aiy, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.aja = fmul <2 x float> %i.aiz, splat (float 2.550000e+02)
  %i.ajb = call nsz <2 x float> @llvm.minimumnum.v2f32(<2 x float> %i.aja, <2 x float> splat (float 2.550000e+02))
  %i.ajc = fadd <2 x float> %i.ajb, splat (float f0x4B000000) ; 2 uses
  %bc = bitcast <2 x float> %i.ajc to <2 x i32>
  %i.ajd = extractelement <2 x i32> %bc, i64 0
  %i.aje = call i32 @llvm.usub.sat.i32(i32 %i.ajd, i32 1258291200)
  %bc91 = bitcast <2 x float> %i.ajc to <2 x i32>
  %i.ajf = extractelement <2 x i32> %bc91, i64 1
  %i.ajg = call i32 @llvm.usub.sat.i32(i32 %i.ajf, i32 1258291200)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !1412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  %i.ajh = and i32 %i.ajg, 255                    ; 5 uses
  %i.aji = icmp eq i32 %i.ajh, 255
  %.sroa.03.0.insert.ext.i = and i32 %i.aje, 255  ; 2 uses
  br i1 %i.aji, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  %.sroa.5.sroa.6.0.insert.ext = shl i32 %i.aix, 8
  %.sroa.5.sroa.0.0.insert.ext = and i32 %i.ais, 255
  %.sroa.5.sroa.6.0.insert.ext.masked = and i32 %.sroa.5.sroa.6.0.insert.ext, 65280
  %i.ajj = or disjoint i32 %.sroa.5.sroa.6.0.insert.ext.masked, %.sroa.5.sroa.0.0.insert.ext
  %i.ajk = shl nuw nsw i32 %i.ajj, 8
  %.sroa.44.0.insert.insert.i = or disjoint i32 %i.ajk, %.sroa.03.0.insert.ext.i
  %.sroa.03.0.insert.insert.i = or disjoint i32 %.sroa.44.0.insert.insert.i, -16777216
  br label %_RNvMNtCsfVrisfeHJNS_9tiny_skia5colorNtB2_7ColorU811premultiply.exit

bb.ff:                                            ; preds = %bb.fd
  %i.ajl = mul nuw nsw i32 %i.ajh, %.sroa.03.0.insert.ext.i
  %i.ajm = add nuw nsw i32 %i.ajl, 128            ; 2 uses
  %i.ajn = lshr i32 %i.ajm, 8
  %i.ajo = add nuw nsw i32 %i.ajn, %i.ajm
  %i.ajp = lshr i32 %i.ajo, 8
  %i.ajq = and i32 %i.ais, 255
  %i.ajr = mul nuw nsw i32 %i.ajh, %i.ajq
  %i.ajs = add nuw nsw i32 %i.ajr, 128            ; 2 uses
  %i.ajt = lshr i32 %i.ajs, 8
  %i.aju = add nuw nsw i32 %i.ajt, %i.ajs
  %.sroa.4.0.insert.shift.i = and i32 %i.aju, 261888
  %i.ajv = and i32 %i.aix, 255
  %.sroa.6.0.insert.shift.i = shl nuw i32 %i.ajh, 24
  %i.ajw = mul nuw nsw i32 %i.ajv, 257
  %i.ajx = mul nuw nsw i32 %i.ajw, %i.ajh
  %i.ajy = add nuw nsw i32 %i.ajx, 32896
  %.sroa.5.0.insert.shift.i = and i32 %i.ajy, 33488896
  %.sroa.5.0.insert.insert.i = or i32 %.sroa.5.0.insert.shift.i, %.sroa.6.0.insert.shift.i
  %.sroa.4.0.insert.insert.i = or i32 %.sroa.5.0.insert.insert.i, %.sroa.4.0.insert.shift.i
  %.sroa.02.0.insert.insert.i = or i32 %.sroa.4.0.insert.insert.i, %i.ajp
  br label %_RNvMNtCsfVrisfeHJNS_9tiny_skia5colorNtB2_7ColorU811premultiply.exit

_RNvMNtCsfVrisfeHJNS_9tiny_skia5colorNtB2_7ColorU811premultiply.exit: ; preds = %bb.ff, %bb.fe
  %.sroa.0.0.i = phi i32 [ %.sroa.03.0.insert.insert.i, %bb.fe ], [ %.sroa.02.0.insert.insert.i, %bb.ff ] ; 6 uses
  %i.ajz = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val62 = load ptr, ptr %i.ajz, align 8, !align !16, !noundef !5 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1414)
  call void @llvm.experimental.noalias.scope.decl(metadata !1415)
  %.not.i93 = icmp eq ptr %.val62, null
end_hunk_5
begin_hunk_6_@_RNvNtCs4xylOWI7Ys4_12typst_render4text20render_outline_glyph:bb.a
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val69, i64 noundef %i.bhj, i64 noundef range(i64 1, -9223372036854775807) 4) #26
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsd315radwPZ_14tiny_skia_path7stroker6StrokeECs4xylOWI7Ys4_12typst_render.exit232

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsd315radwPZ_14tiny_skia_path7stroker6StrokeECs4xylOWI7Ys4_12typst_render.exit: ; preds = %bb.kb, %bb.ka
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7painter5PaintECs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef align 8 dereferenceable(104) %i.ck) #28
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsd315radwPZ_14tiny_skia_path4dash10StrokeDashEECs4xylOWI7Ys4_12typst_render.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsd315radwPZ_14tiny_skia_path7stroker6StrokeECs4xylOWI7Ys4_12typst_render.exit232: ; preds = %bb.kd, %bb.kc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj)
  call void @llvm.experimental.noalias.scope.decl(metadata !1457)
  call void @llvm.experimental.noalias.scope.decl(metadata !1458)
  %i.bhk = load i64, ptr %i.ck, align 8, !range !9, !alias.scope !1459, !noundef !5 ; 5 uses
  %i.bhl = icmp ne i64 %i.bhk, -9223372036854775806
  call void @llvm.assume(i1 %i.bhl)
  %i.bhm = xor i64 %i.bhk, -9223372036854775808
  %i.bhn = icmp slt i64 %i.bhk, 0
  %i.bho = select i1 %i.bhn, i64 %i.bhm, i64 2
  switch i64 %i.bho, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7painter5PaintECs4xylOWI7Ys4_12typst_render.exit239 [
    i64 1, label %bb.ke
    i64 2, label %bb.kf
    i64 3, label %bb.kg
  ]

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsfVrisfeHJNS_9tiny_skia7shaders15linear_gradient14LinearGradientECs4xylOWI7Ys4_12typst_render.exit.sink.split.i.i234: ; preds = %bb.kg, %bb.kf, %bb.ke
  %.sink6.i.i235.sroa.phi = phi ptr [ %.sink6.i.i235.sroa.gep, %bb.kf ], [ %.sink6.i.i235.sroa.gep249, %bb.ke ], [ %.sink6.i.i235.sroa.gep249, %bb.kg ]
  %.val4.sink.i.i236 = phi i64 [ %i.bhk, %bb.kf ], [ %.val.i.i238, %bb.ke ], [ %.val4.i.i233, %bb.kg ]
  %.val5.i.i237 = load ptr, ptr %.sink6.i.i235.sroa.phi, align 8, !alias.scope !1459, !nonnull !5, !noundef !5
  %i.bhp = mul nuw i64 %.val4.sink.i.i236, 20
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i237, i64 noundef %i.bhp, i64 noundef range(i64 1, -9223372036854775807) 4) #26, !noalias !1459
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7painter5PaintECs4xylOWI7Ys4_12typst_render.exit239

bb.ke:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsd315radwPZ_14tiny_skia_path7stroker6StrokeECs4xylOWI7Ys4_12typst_render.exit232
  %.val.i.i238 = load i64, ptr %.sink6.i.i235.sroa.gep, align 8, !alias.scope !1459 ; 2 uses
  %i.bhq = icmp eq i64 %.val.i.i238, 0
  br i1 %i.bhq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7painter5PaintECs4xylOWI7Ys4_12typst_render.exit239, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsfVrisfeHJNS_9tiny_skia7shaders15linear_gradient14LinearGradientECs4xylOWI7Ys4_12typst_render.exit.sink.split.i.i234

bb.kf:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsd315radwPZ_14tiny_skia_path7stroker6StrokeECs4xylOWI7Ys4_12typst_render.exit232
  %i.bhr = icmp eq i64 %i.bhk, 0
  br i1 %i.bhr, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7painter5PaintECs4xylOWI7Ys4_12typst_render.exit239, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsfVrisfeHJNS_9tiny_skia7shaders15linear_gradient14LinearGradientECs4xylOWI7Ys4_12typst_render.exit.sink.split.i.i234

bb.kg:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsd315radwPZ_14tiny_skia_path7stroker6StrokeECs4xylOWI7Ys4_12typst_render.exit232
  %.val4.i.i233 = load i64, ptr %.sink6.i.i235.sroa.gep, align 8, !alias.scope !1459 ; 2 uses
  %i.bhs = icmp eq i64 %.val4.i.i233, 0
  br i1 %i.bhs, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7painter5PaintECs4xylOWI7Ys4_12typst_render.exit239, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsfVrisfeHJNS_9tiny_skia7shaders15linear_gradient14LinearGradientECs4xylOWI7Ys4_12typst_render.exit.sink.split.i.i234

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7painter5PaintECs4xylOWI7Ys4_12typst_render.exit239: ; preds = %bb.kg, %bb.kf, %bb.ke, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsfVrisfeHJNS_9tiny_skia7shaders15linear_gradient14LinearGradientECs4xylOWI7Ys4_12typst_render.exit.sink.split.i.i234, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsd315radwPZ_14tiny_skia_path7stroker6StrokeECs4xylOWI7Ys4_12typst_render.exit232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl)
  br label %bb.js

bb.kh:                                            ; preds = %bb.jz
  %i.bht = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val66 = load i64, ptr %i.cl, align 8, !range !7, !noundef !5 ; 2 uses
  %i.bhu = icmp sgt i64 %.val66, 0
  br i1 %i.bhu, label %bb.ki, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsd315radwPZ_14tiny_skia_path4dash10StrokeDashEECs4xylOWI7Ys4_12typst_render.exit

bb.ki:                                            ; preds = %bb.kh
  %i.bhv = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %.val67 = load ptr, ptr %i.bhv, align 8, !nonnull !5, !noundef !5
  %i.bhw = shl nuw i64 %.val66, 2
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val67, i64 noundef %i.bhw, i64 noundef range(i64 1, -9223372036854775807) 4) #26
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsd315radwPZ_14tiny_skia_path4dash10StrokeDashEECs4xylOWI7Ys4_12typst_render.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7painter5PaintECs4xylOWI7Ys4_12typst_render.exit: ; preds = %bb.jv, %bb.ju, %bb.jt, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsfVrisfeHJNS_9tiny_skia7shaders15linear_gradient14LinearGradientECs4xylOWI7Ys4_12typst_render.exit.sink.split.i.i, %bb.js
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp)
  call void @llvm.experimental.noalias.scope.decl(metadata !1460)
  %i.bhx = load ptr, ptr %i.cq, align 8, !alias.scope !1460, !noundef !5 ; 2 uses
  %i.bhy = icmp eq ptr %i.bhx, null
  br i1 %i.bhy, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit240, label %bb.kj

bb.kj:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7painter5PaintECs4xylOWI7Ys4_12typst_render.exit
  %i.bhz = atomicrmw sub ptr %i.bhx, i64 1 release, align 8, !noalias !1461
  %i.bia = icmp eq i64 %i.bhz, 1
  br i1 %i.bia, label %bb.kk, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit240

bb.kk:                                            ; preds = %bb.kj
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapE9drop_slowCs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.cq) #25
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit240

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit: ; preds = %bb.jk, %bb.jj, %bb.ji
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsd315radwPZ_14tiny_skia_path4path4PathECs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef align 8 dereferenceable(64) %i.cv) #28
  br label %common.resume

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit240: ; preds = %bb.kk, %bb.kj, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7painter5PaintECs4xylOWI7Ys4_12typst_render.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  call void @llvm.experimental.noalias.scope.decl(metadata !1462)
  %.val.i241 = load i64, ptr %i.cv, align 8, !alias.scope !1462 ; 2 uses
  %i.bib = icmp eq i64 %.val.i241, 0
  br i1 %i.bib, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsd315radwPZ_14tiny_skia_path4path8PathVerbEECs4xylOWI7Ys4_12typst_render.exit.i243, label %bb.kl

bb.kl:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit240
  %i.bic = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %.val1.i242 = load ptr, ptr %i.bic, align 8, !alias.scope !1462, !nonnull !5, !noundef !5
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i242, i64 noundef %.val.i241, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !1462
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsd315radwPZ_14tiny_skia_path4path8PathVerbEECs4xylOWI7Ys4_12typst_render.exit.i243

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsd315radwPZ_14tiny_skia_path4path8PathVerbEECs4xylOWI7Ys4_12typst_render.exit.i243: ; preds = %bb.kl, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit240
  %i.bid = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %.val2.i244 = load i64, ptr %i.bid, align 8, !alias.scope !1462 ; 2 uses
  %i.bie = icmp eq i64 %.val2.i244, 0
  br i1 %i.bie, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsd315radwPZ_14tiny_skia_path4path4PathECs4xylOWI7Ys4_12typst_render.exit, label %bb.km

bb.km:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsd315radwPZ_14tiny_skia_path4path8PathVerbEECs4xylOWI7Ys4_12typst_render.exit.i243
  %i.bif = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  %.val3.i245 = load ptr, ptr %i.bif, align 8, !alias.scope !1462, !nonnull !5, !noundef !5
  %i.big = shl nuw i64 %.val2.i244, 3
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i245, i64 noundef %i.big, i64 noundef range(i64 1, -9223372036854775807) 4) #26, !noalias !1462
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsd315radwPZ_14tiny_skia_path4path4PathECs4xylOWI7Ys4_12typst_render.exit

bb.kn:                                            ; preds = %.invoke801, %_RNvMsl_CsdQl7XGSB5tC_10ttf_parserNtB5_4Face6coords.exit15.i, %_RNvMsl_CsdQl7XGSB5tC_10ttf_parserNtB5_4Face6coords.exit.i, %bb.u, %bb.z
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsd315radwPZ_14tiny_skia_path12path_builder11PathBuilderECs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef align 8 dereferenceable(64) %i.cu) #28
  br label %common.resume
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCs4xylOWI7Ys4_12typst_render5image12render_image(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(80) %1, ptr %.0.val, double noundef %2, double noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 9 uses
  %i.b = alloca [56 x i8], align 8                ; 9 uses
  %i.c = alloca [40 x i8], align 8                ; 9 uses
  %i.d = alloca [88 x i8], align 8                ; 5 uses
  %i.e = alloca [64 x i8], align 8                ; 12 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [32 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [32 x i8], align 4                ; 9 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [16 x i8], align 8                ; 6 uses
  %i.o = alloca [56 x i8], align 8                ; 12 uses
  %i.p = alloca [32 x i8], align 8                ; 9 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [24 x i8], align 4                ; 7 uses
  %i.s = alloca [32 x i8], align 8                ; 8 uses
  %i.t = alloca [48 x i8], align 8                ; 4 uses
  %i.u = alloca [48 x i8], align 8                ; 6 uses
  %i.v = alloca [32 x i8], align 8                ; 6 uses
  %i.w = alloca [32 x i8], align 8                ; 12 uses
  %i.x = alloca [8 x i8], align 8                 ; 4 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [16 x i8], align 16               ; 4 uses
  %i.aa = alloca [1 x i8], align 1                ; 4 uses
  %i.ab = alloca [16 x i8], align 16              ; 4 uses
  %i.ac = alloca [72 x i8], align 8               ; 10 uses
  %i.ad = alloca [16 x i8], align 16              ; 4 uses
  %i.ae = alloca [16 x i8], align 16              ; 4 uses
  %i.af = alloca [72 x i8], align 8               ; 10 uses
  %i.ag = alloca [16 x i8], align 16              ; 4 uses
  %i.ah = alloca [72 x i8], align 8               ; 10 uses
  %i.ai = alloca [4 x i8], align 4                ; 4 uses
  %i.aj = alloca [4 x i8], align 4                ; 4 uses
  %i.ak = alloca [16 x i8], align 16              ; 4 uses
  %i.al = alloca [72 x i8], align 8               ; 10 uses
  %i.am = alloca [72 x i8], align 8               ; 26 uses
  %i.an = alloca [8 x i8], align 8                ; 4 uses
  %i.ao = alloca [72 x i8], align 8               ; 16 uses
  %i.ap = alloca [96 x i8], align 8               ; 19 uses
  %i.aq = alloca [16 x i8], align 4               ; 2 uses
  %i.ar = alloca [20 x i8], align 4               ; 6 uses
  %i.as = alloca [104 x i8], align 8              ; 17 uses
  %i.at = alloca [8 x i8], align 8                ; 5 uses
  %i.au = alloca [24 x i8], align 4               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false)
  %i.aw = insertelement <2 x double> poison, double %2, i64 0
  %i.ax = insertelement <2 x double> %i.aw, double %3, i64 1
  %i.ay = fdiv <2 x double> %i.ax, splat (double 1.270000e+02)
  %i.az = fptrunc <2 x double> %i.ay to <2 x float> ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.bb = load float, ptr %i.ba, align 4, !noundef !5 ; 2 uses
  %i.bc = fneg float %i.bb
  %i.bd = load float, ptr %i.au, align 4, !noundef !5 ; 2 uses
  %i.be = tail call noundef float @_RNvNtNtCsaQuoagdqERF_4libm4math6atan2f6atan2f(float noundef %i.bc, float noundef %i.bd) ; 3 uses
  %i.bf = tail call noundef float @_RNvNtNtCsaQuoagdqERF_4libm4math4sinf4sinf(float noundef %i.be)
  %i.bg = tail call float @llvm.fabs.f32(float %i.bf)
  %i.bh = fcmp ogt float %i.bg, f0x3F3504F3
  %.sink6.i.i36.sroa.gep = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  br i1 %i.bh, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bi = tail call noundef float @_RNvNtNtCsaQuoagdqERF_4libm4math4cosf4cosf(float noundef %i.be)
  %i.bj = fdiv float %i.bd, %i.bi
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bk = tail call noundef float @_RNvNtNtCsaQuoagdqERF_4libm4math4sinf4sinf(float noundef %i.be)
  %i.bl = fdiv float %i.bb, %i.bk
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0 = phi float [ %i.bl, %bb.c ], [ %i.bj, %bb.b ]
  %4 = tail call float @llvm.fabs.f32(float %.sroa.01.0)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.val, i64 56 ; 3 uses
  %i.bn = load i64, ptr %i.bm, align 8, !range !4, !noundef !5
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.val, i64 64 ; 5 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !5, !noundef !5 ; 5 uses
  switch i64 %i.bn, label %default.unreachable [
    i64 0, label %bb.e
    i64 1, label %bb.f
    i64 2, label %bb.g
  ]

default.unreachable:                              ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock15RwLockReadGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2n_5inputs1_1__9MultiCalluuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEEECs4xylOWI7Ys4_12typst_render.exit40.i.i, %.noexc7.i, %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 56
  %i.br = load ptr, ptr %i.bq, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  %.sroa.01.0.i = load i32, ptr %.sroa.01.0.in.i, align 8, !noundef !5
  %i.bs = uitofp i32 %.sroa.01.0.i to float
  %.sroa.01.0.in.i31 = getelementptr inbounds nuw i8, ptr %i.br, i64 52
  %.sroa.01.0.i32 = load i32, ptr %.sroa.01.0.in.i31, align 4, !noundef !5
  %i.bt = uitofp i32 %.sroa.01.0.i32 to double
  br label %_RNvMs2_NtNtCsdaEETE4DqmE_13typst_library9visualize5imageNtB5_5Image6height.exit

bb.f:                                             ; preds = %bb.d
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 432
  %i.bv = load double, ptr %i.bu, align 16, !noundef !5
  %i.bw = fptrunc double %i.bv to float
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 440
  %i.by = load double, ptr %i.bx, align 8, !noundef !5
  br label %_RNvMs2_NtNtCsdaEETE4DqmE_13typst_library9visualize5imageNtB5_5Image6height.exit

bb.g:                                             ; preds = %bb.d
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.ca = load float, ptr %i.bz, align 8, !noundef !5
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bp, i64 36
  %i.cc = load float, ptr %i.cb, align 4, !noundef !5
  %i.cd = fpext float %i.cc to double
  br label %_RNvMs2_NtNtCsdaEETE4DqmE_13typst_library9visualize5imageNtB5_5Image6height.exit

_RNvMs2_NtNtCsdaEETE4DqmE_13typst_library9visualize5imageNtB5_5Image6height.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.ce = phi float [ %i.bs, %bb.e ], [ %i.bw, %bb.f ], [ %i.ca, %bb.g ]
  %.sroa.0.0.i30 = phi double [ %i.bt, %bb.e ], [ %i.by, %bb.f ], [ %i.cd, %bb.g ]
  %i.cf = fptrunc double %.sroa.0.0.i30 to float
  %i.cg = fdiv float %i.ce, %i.cf                 ; 2 uses
  %i.ch = extractelement <2 x float> %i.az, i64 1 ; 2 uses
  %i.ci = fmul float %i.cg, %i.ch
  %i.cj = extractelement <2 x float> %i.az, i64 0 ; 2 uses
  %i.ck = tail call nsz float @llvm.maximumnum.f32(float %i.cj, float %i.ci)
  %i.cl = fmul float %4, %i.ck
  %i.cm = tail call float @llvm.ceil.f32(float %i.cl)
  %i.cn = tail call i32 @llvm.fptoui.sat.i32.f32(float %i.cm) ; 7 uses
  %i.co = uitofp i32 %i.cn to float               ; 3 uses
  %i.cp = fdiv float %i.co, %i.cg
  %i.cq = tail call float @llvm.ceil.f32(float %i.cp)
  %i.cr = tail call i32 @llvm.fptoui.sat.i32.f32(float %i.cq) ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !1741
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ap, i8 0, i64 16, i1 false), !alias.scope !1742, !noalias !1741
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !alias.scope !1742, !noalias !1741
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 3 uses
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !1742, !noalias !1741
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !1742, !noalias !1741
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 32 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) @40, i64 32, i1 false), !noalias !1741
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 80 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !1742, !noalias !1741
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 88 ; 2 uses
  store i64 0, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !1742, !noalias !1741
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1743)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !1744
  store i64 8317987319222330741, ptr %i.ao, align 8, !noalias !1744
  %.sroa.3.0..sroa_idx.i3.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 5 uses
  store i64 7816392313619706465, ptr %.sroa.3.0..sroa_idx.i3.i, align 8, !noalias !1744
  %.sroa.4.0..sroa_idx.i4.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 5 uses
  store i64 7237128888997146499, ptr %.sroa.4.0..sroa_idx.i4.i, align 8, !noalias !1744
  %.sroa.5.0..sroa_idx.i5.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 24 ; 5 uses
  store i64 8387220255154660723, ptr %.sroa.5.0..sroa_idx.i5.i, align 8, !noalias !1744
  %.sroa.6.0..sroa_idx.i6.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 48 ; 2 uses
  %.sroa.14.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 56 ; 3 uses
  %.sroa.15.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 64 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1745)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx.i6.i, i8 0, i64 40, i1 false), !noalias !1744
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.ct = load atomic ptr, ptr @_RNvNvNtNtNtCsiL9kQKV5x1F_15portable_atomic3imp9atomic1286x86_6411atomic_load4FUNC monotonic, align 8, !noalias !1746, !nonnull !5, !noundef !5
  %i.cu = invoke noundef i128 %i.ct(ptr noundef nonnull align 16 %i.cs)
          to label %.noexc.i unwind label %bb.fj, !noalias !1741, !inline_history !1484 ; 2 uses

.noexc.i:                                         ; preds = %_RNvMs2_NtNtCsdaEETE4DqmE_13typst_library9visualize5imageNtB5_5Image6height.exit
  %i.cv = icmp eq i128 %i.cu, 0
  br i1 %i.cv, label %bb.h, label %_RINvXNtCsloFShupyl5J_6comemo5inputRNtNtNtCsdaEETE4DqmE_13typst_library9visualize5image5ImageNtB3_5Input3keyNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs4xylOWI7Ys4_12typst_render.exit.i.i.i

bb.h:                                             ; preds = %.noexc.i
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1747)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !1748
  store i64 8317987319222330741, ptr %i.am, align 8, !noalias !1748
  %.sroa.411.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 7816392313619706465, ptr %.sroa.411.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !1748
  %.sroa.512.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 7237128888997146499, ptr %.sroa.512.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !1748
  %.sroa.613.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store i64 8387220255154660723, ptr %.sroa.613.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !1748
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1749)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, i8 0, i64 40, i1 false), !noalias !1748
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bm, align 8, !range !4, !alias.scope !1750, !noalias !1751, !noundef !5 ; 2 uses
  %.val1.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bo, align 8, !alias.scope !1750, !noalias !1751 ; 13 uses
  invoke void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.am, i64 noundef range(i64 0, 4) %.val.i.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc7.i unwind label %bb.fj, !noalias !1741

.noexc7.i:                                        ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i.i.i.i.i.i.i.i.i) ]
  switch i64 %.val.i.i.i.i.i.i.i.i.i.i.i, label %default.unreachable [
    i64 0, label %bb.i
    i64 1, label %bb.o
    i64 2, label %bb.q
  ]

bb.i:                                             ; preds = %.noexc7.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1752)
  %i.cx = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i.i.i.i, i64 40
  %i.cy = load ptr, ptr %i.cx, align 8, !alias.scope !1752, !noalias !1753, !nonnull !5, !noundef !5
  %i.cz = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i.i.i.i, i64 48
  %i.da = load ptr, ptr %i.cz, align 8, !alias.scope !1752, !noalias !1753, !nonnull !5, !align !16, !noundef !5 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !invariant.load !5, !noalias !1754 ; 2 uses
  %i.dd = call i64 @llvm.umax.i64(i64 %i.dc, i64 16)
  %i.de = add nsw i64 %i.dd, -1
  %i.df = and i64 %i.de, -16
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1755)
  %i.di = load atomic ptr, ptr @_RNvNvNtNtNtCsiL9kQKV5x1F_15portable_atomic3imp9atomic1286x86_6411atomic_load4FUNC monotonic, align 8, !noalias !1756, !nonnull !5, !noundef !5
  %i.dj = invoke noundef i128 %i.di(ptr noundef nonnull align 16 %i.dh)
          to label %.noexc8.i unwind label %bb.fj, !noalias !1741, !inline_history !1484 ; 2 uses

.noexc8.i:                                        ; preds = %bb.i
  %i.dk = icmp eq i128 %i.dj, 0
  br i1 %i.dk, label %bb.j, label %_RINvMse_NtCs6xpQEr8gLsQ_11typst_utils4hashNtB6_8HashLock18get_or_insert_withNCNvMs0_B6_INtB6_8LazyHashDNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes8BytelikeEL_E20load_or_compute_hash0ECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %.noexc8.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  %.val4.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.dl, align 8, !alias.scope !1755, !noalias !1754
  %i.dm = add nsw i64 %i.dc, -1
  %i.dn = and i64 %i.dm, -16
  %i.do = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !1756
  store i64 8317987319222330741, ptr %i.al, align 8, !noalias !1756
  %.sroa.411.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i64 7816392313619706465, ptr %.sroa.411.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !1756
  %.sroa.512.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i64 7237128888997146499, ptr %.sroa.512.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !1756
  %.sroa.613.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i64 8387220255154660723, ptr %.sroa.613.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !1756
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i8 0, i64 40, i1 false), !noalias !1756
  %i.dq = invoke { ptr, i64 } %.val4.i.i.i.i.i.i.i.i.i.i.i.i.i.i(ptr noundef nonnull %i.dp) #30
          to label %.noexc9.i unwind label %bb.fj, !noalias !1741, !inline_history !1484 ; 2 uses

.noexc9.i:                                        ; preds = %bb.j
  %i.dr = extractvalue { ptr, i64 } %i.dq, 1      ; 2 uses
  invoke void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.al, i64 noundef %i.dr)
          to label %.noexc10.i unwind label %bb.fj, !noalias !1741

.noexc10.i:                                       ; preds = %.noexc9.i
  %i.ds = extractvalue { ptr, i64 } %i.dq, 0
  invoke void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.al, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ds, i64 noundef %i.dr)
          to label %.noexc11.i unwind label %bb.fj, !noalias !1741

.noexc11.i:                                       ; preds = %.noexc10.i
  %i.dt = call fastcc { i64, i64 } @_RNvMs7_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsE9finish128Cs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.al) #30, !noalias !1756 ; 2 uses
  %i.du = extractvalue { i64, i64 } %i.dt, 0
  %i.dv = extractvalue { i64, i64 } %i.dt, 1
  %i.dw = zext i64 %i.du to i128
  %i.dx = zext i64 %i.dv to i128
  %i.dy = shl nuw i128 %i.dx, 64
  %i.dz = or disjoint i128 %i.dy, %i.dw           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !1756
  %i.ea = load atomic ptr, ptr @_RNvNvNtNtNtCsiL9kQKV5x1F_15portable_atomic3imp9atomic1286x86_6412atomic_store4FUNC monotonic, align 8, !noalias !1756, !nonnull !5, !noundef !5
  invoke void %i.ea(ptr noundef nonnull align 16 %i.dh, i128 noundef %i.dz)
          to label %_RINvMse_NtCs6xpQEr8gLsQ_11typst_utils4hashNtB6_8HashLock18get_or_insert_withNCNvMs0_B6_INtB6_8LazyHashDNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes8BytelikeEL_E20load_or_compute_hash0ECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.fj, !noalias !1741, !inline_history !1484

_RINvMse_NtCs6xpQEr8gLsQ_11typst_utils4hashNtB6_8HashLock18get_or_insert_withNCNvMs0_B6_INtB6_8LazyHashDNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes8BytelikeEL_E20load_or_compute_hash0ECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc11.i, %.noexc8.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i128 [ %i.dj, %.noexc8.i ], [ %i.dz, %.noexc11.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !1757
  store i128 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.ak, align 16, !noalias !1757
  invoke void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.am, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ak, i64 noundef 16)
          to label %.noexc13.i unwind label %bb.fj, !noalias !1741

.noexc13.i:                                       ; preds = %_RINvMse_NtCs6xpQEr8gLsQ_11typst_utils4hashNtB6_8HashLock18get_or_insert_withNCNvMs0_B6_INtB6_8LazyHashDNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes8BytelikeEL_E20load_or_compute_hash0ECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !1757
  %i.eb = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i.i.i.i, i64 80 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1758)
  %i.ec = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i.i.i.i, i64 88
  %i.ed = load i8, ptr %i.ec, align 8, !range !25, !alias.scope !1759, !noalias !1760, !noundef !5 ; 2 uses
end_hunk_6
begin_hunk_7_@_RNvNtCs4xylOWI7Ys4_12typst_render5image12render_image:bb.a
  %i.oi = lshr i64 %i.oh, 57
  %i.oj = trunc nuw nsw i64 %i.oi to i8
  %i.ok = insertelement <16 x i8> poison, i8 %i.oj, i64 0
  %i.ol = shufflevector <16 x i8> %i.ok, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ah

bb.ah:                                            ; preds = %bb.aj, %_RNvXs4_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs1_1__9MultiCalluuuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCs4xylOWI7Ys4_12typst_render.exit.i.i.i
  %.sroa.9.0.i.i.i20.i.i.i = phi i64 [ 0, %_RNvXs4_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs1_1__9MultiCalluuuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCs4xylOWI7Ys4_12typst_render.exit.i.i.i ], [ %i.pe, %bb.aj ]
  %.pn.i.i21.i.i.i = phi i64 [ %i.oh, %_RNvXs4_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs1_1__9MultiCalluuuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCs4xylOWI7Ys4_12typst_render.exit.i.i.i ], [ %i.pf, %bb.aj ]
  %.sroa.01.0.i.i.i22.i.i.i = and i64 %.pn.i.i21.i.i.i, %i.nj ; 3 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.nk, i64 %.sroa.01.0.i.i.i22.i.i.i
  %.sroa.0.0.copyload.i24.i.i23.i.i.i = load <16 x i8>, ptr %i.om, align 1, !noalias !1800 ; 2 uses
  %i.on = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i23.i.i.i, %i.ol
  %i.oo = bitcast <16 x i1> %i.on to i16          ; 2 uses
  %.not.i.not30.i.i24.i.i.i = icmp eq i16 %i.oo, 0
  br i1 %.not.i.not30.i.i24.i.i.i, label %._crit_edge.i.i29.i.i.i, label %.lr.ph.i.i25.i.i.i

.lr.ph.i.i25.i.i.i:                               ; preds = %bb.ah, %bb.ai
  %.sroa.06.0.i31.i.i26.i.i.i = phi i16 [ %i.pd, %bb.ai ], [ %i.oo, %bb.ah ] ; 3 uses
  %i.op = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i26.i.i.i, i1 true)
  %i.oq = zext nneg i16 %i.op to i64
  %i.or = add i64 %.sroa.01.0.i.i.i22.i.i.i, %i.oq
  %i.os = and i64 %i.or, %i.nj
  %i.ot = sub nsw i64 0, %i.os
  %i.ou = getelementptr inbounds [48 x i8], ptr %i.nk, i64 %i.ot ; 3 uses
  %i.ov = getelementptr inbounds i8, ptr %i.ou, i64 -48
  %.val2.i.i.i27.i.i.i = load i64, ptr %i.ov, align 8, !noalias !1801, !noundef !5
  %i.ow = getelementptr i8, ptr %i.ou, i64 -32
  %.val3.i.i.i.i.i.i = load i128, ptr %i.ow, align 16, !noalias !1801
  %i.ox = icmp eq i64 %.sroa.09.021.i.i.i, %.val2.i.i.i27.i.i.i
  %i.oy = icmp eq i128 %.val3.i.i.i.i.i.i, 0
  %spec.select.i.i.i.i.i.i.i.i.i = select i1 %i.ox, i1 %i.oy, i1 false
  br i1 %spec.select.i.i.i.i.i.i.i.i.i, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs4xylOWI7Ys4_12typst_render.exit.loopexit.i.i.i, label %bb.ai, !prof !19

._crit_edge.i.i29.i.i.i:                          ; preds = %bb.ai, %bb.ah
  %i.oz = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i23.i.i.i, splat (i8 -1)
  %i.pa = bitcast <16 x i1> %i.oz to i16
  %i.pb = icmp eq i16 %i.pa, 0
  br i1 %i.pb, label %bb.aj, label %.loopexit.i.i, !prof !17

bb.ai:                                            ; preds = %.lr.ph.i.i25.i.i.i
  %i.pc = add i16 %.sroa.06.0.i31.i.i26.i.i.i, -1
  %i.pd = and i16 %i.pc, %.sroa.06.0.i31.i.i26.i.i.i ; 2 uses
  %.not.i.not.i.i28.i.i.i = icmp eq i16 %i.pd, 0
  br i1 %.not.i.not.i.i28.i.i.i, label %._crit_edge.i.i29.i.i.i, label %.lr.ph.i.i25.i.i.i

bb.aj:                                            ; preds = %._crit_edge.i.i29.i.i.i
  %i.pe = add i64 %.sroa.9.0.i.i.i20.i.i.i, 16    ; 2 uses
  %i.pf = add i64 %.sroa.01.0.i.i.i22.i.i.i, %i.pe
  br label %bb.ah

bb.ak:                                            ; preds = %.split.us.i.invoke.i.i
  %i.pg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ph = atomicrmw sub ptr @_RNvNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture7___CACHE, i64 16 release, align 8, !noalias !1744
  %i.pi = and i64 %i.ph, -14
  %i.pj = icmp eq i64 %i.pi, 18
  br i1 %i.pj, label %bb.al, label %.body.i, !prof !17

bb.al:                                            ; preds = %bb.ak
  invoke void @_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 @_RNvNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture7___CACHE)
          to label %.body.i unwind label %bb.fi, !noalias !1798

bb.am:                                            ; preds = %bb.af
  %i.pk = getelementptr inbounds nuw i8, ptr %i.oa, i64 48
  store atomic i64 0, ptr %i.pk seq_cst, align 8, !noalias !1802
  %i.pl = getelementptr inbounds nuw i8, ptr %i.oa, i64 40
  %.val35.i.i = load ptr, ptr %i.pl, align 8, !noalias !1798, !noundef !5 ; 4 uses
  %.not.i46.i.i = icmp eq ptr %.val35.i.i, null
  br i1 %.not.i46.i.i, label %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEENtNtB7_5clone5Clone5cloneCs4xylOWI7Ys4_12typst_render.exit.i.i, label %bb.cq

.loopexit.i.i:                                    ; preds = %._crit_edge.i.i.i.i.i, %._crit_edge.i.i29.i.i.i, %bb.ac, %.noexc47.i
  %i.pm = atomicrmw sub ptr @_RNvNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture7___CACHE, i64 16 release, align 8, !noalias !1744
  %i.pn = and i64 %i.pm, -14
  %i.po = icmp eq i64 %i.pn, 18
  br i1 %i.po, label %bb.an, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock15RwLockReadGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2n_5inputs1_1__9MultiCalluuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEEECs4xylOWI7Ys4_12typst_render.exit40.i.i, !prof !17

bb.an:                                            ; preds = %.loopexit.i.i
  invoke void @_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 @_RNvNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture7___CACHE)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock15RwLockReadGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2n_5inputs1_1__9MultiCalluuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEEECs4xylOWI7Ys4_12typst_render.exit40.i.i unwind label %bb.fj, !noalias !1741

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock15RwLockReadGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2n_5inputs1_1__9MultiCalluuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEEECs4xylOWI7Ys4_12typst_render.exit40.i.i: ; preds = %bb.an, %.loopexit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !1744
  %i.pp = load i64, ptr %i.bm, align 8, !range !4, !noalias !1803, !noundef !5
  switch i64 %i.pp, label %default.unreachable [
    i64 0, label %bb.ao
    i64 1, label %bb.ap
    i64 2, label %bb.aq
  ]

bb.ao:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock15RwLockReadGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2n_5inputs1_1__9MultiCalluuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEEECs4xylOWI7Ys4_12typst_render.exit40.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !1804
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1804
  invoke void @_RNvMNtCsfVrisfeHJNS_9tiny_skia6pixmapNtB2_6Pixmap3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.v, i32 noundef %i.cn, i32 noundef %i.cr)
          to label %.noexc49.i unwind label %bb.fj, !noalias !1741

.noexc49.i:                                       ; preds = %bb.ao
  %i.pq = load i64, ptr %i.v, align 8, !range !7, !noalias !1804, !noundef !5
  %.not25.i.i.i = icmp eq i64 %i.pq, -1
  br i1 %.not25.i.i.i, label %bb.bp, label %bb.bo

bb.ap:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock15RwLockReadGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2n_5inputs1_1__9MultiCalluuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEEECs4xylOWI7Ys4_12typst_render.exit40.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1804
  invoke void @_RNvMNtCsfVrisfeHJNS_9tiny_skia6pixmapNtB2_6Pixmap3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.s, i32 noundef %i.cn, i32 noundef %i.cr)
          to label %.noexc50.i unwind label %bb.fj, !noalias !1741

.noexc50.i:                                       ; preds = %bb.ap
  %i.pr = load i64, ptr %i.s, align 8, !range !7, !noalias !1804, !noundef !5 ; 4 uses
  %.not24.i.i.i = icmp eq i64 %i.pr, -1
  br i1 %.not24.i.i.i, label %bb.cj, label %bb.ci

bb.aq:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock15RwLockReadGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2n_5inputs1_1__9MultiCalluuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEEECs4xylOWI7Ys4_12typst_render.exit40.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1804
  %.val35.i.i.i = load ptr, ptr %i.bo, align 8, !noalias !1803 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1805)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1806
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1806
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !1807
  %i.ps = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 16, i64 noundef 8) #26, !noalias !1807 ; 5 uses
  %i.pt = icmp eq ptr %i.ps, null
  br i1 %i.pt, label %bb.ar, label %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit.i.i.i.i, !prof !17

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #29
          to label %.noexc51.i unwind label %bb.fj, !noalias !1741

.noexc51.i:                                       ; preds = %bb.ar
  unreachable

_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit.i.i.i.i: ; preds = %bb.aq
  store i64 1, ptr %i.ps, align 8, !noalias !1808
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ps, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !1808
  store ptr %i.ps, ptr %i.n, align 8, !noalias !1806
  %i.pu = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @62, ptr %i.pu, align 8, !noalias !1806
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1806
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !1808
  %i.pv = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 16, i64 noundef 8) #26, !noalias !1808 ; 6 uses
  %i.pw = icmp eq ptr %i.pv, null
  br i1 %i.pw, label %bb.as, label %bb.av, !prof !17

bb.as:                                            ; preds = %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit.i.i.i.i
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #29
          to label %.noexc.i.i.i.i unwind label %bb.au, !noalias !1808

.noexc.i.i.i.i:                                   ; preds = %bb.as
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTINtCs8gjDJEnUBRO_10hayro_cmap8CMapNameL0_EEEp6OutputINtNtB4_6option6OptionRShENtNtB4_6marker4SendNtB2V_4SyncEL_EECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i: ; preds = %bb.ay, %bb.ax, %bb.au
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.qa, %bb.au ], [ %i.qe, %bb.ay ], [ %i.qe, %bb.ax ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1809)
  call void @llvm.experimental.noalias.scope.decl(metadata !1810)
  %i.px = load ptr, ptr %i.n, align 8, !alias.scope !1811, !noalias !1806, !nonnull !5, !noundef !5
  %i.py = atomicrmw sub ptr %i.px, i64 1 release, align 8, !noalias !1812
  %i.pz = icmp eq i64 %i.py, 1
  br i1 %i.pz, label %bb.at, label %.body.i

bb.at:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTINtCs8gjDJEnUBRO_10hayro_cmap8CMapNameL0_EEEp6OutputINtNtB4_6option6OptionRShENtNtB4_6marker4SendNtB2V_4SyncEL_EECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTRL0_NtNtCsdZBRolkNcUZ_15hayro_interpret4font9FontQueryEEp6OutputINtNtBQ_6option6OptionTIBx_DINtNtBQ_7convert5AsRefShENtNtBQ_6marker4SendNtB3l_4SyncEL_EmEEB3j_B3C_EL_E9drop_slowB1y_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.n) #25
          to label %.body.i unwind label %bb.bn, !noalias !1808

bb.au:                                            ; preds = %bb.as
  %i.qa = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTINtCs8gjDJEnUBRO_10hayro_cmap8CMapNameL0_EEEp6OutputINtNtB4_6option6OptionRShENtNtB4_6marker4SendNtB2V_4SyncEL_EECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i

bb.av:                                            ; preds = %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit.i.i.i.i
  store i64 1, ptr %i.pv, align 8, !noalias !1808
  %.sroa.43.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.pv, i64 8
  store i64 1, ptr %.sroa.43.0..sroa_idx.i.i.i.i, align 8, !noalias !1808
  store ptr %i.pv, ptr %i.m, align 8, !noalias !1806
  %i.qb = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @63, ptr %i.qb, align 8, !noalias !1806
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !1808
  %i.qc = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 16, i64 noundef 8) #26, !noalias !1808 ; 4 uses
  %i.qd = icmp eq ptr %i.qc, null
  br i1 %i.qd, label %bb.aw, label %bb.az, !prof !17

bb.aw:                                            ; preds = %bb.av
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #29
          to label %.noexc24.i.i.i.i unwind label %bb.ax, !noalias !1808

.noexc24.i.i.i.i:                                 ; preds = %bb.aw
  unreachable

bb.ax:                                            ; preds = %bb.aw
  %i.qe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qf = atomicrmw sub ptr %i.pv, i64 1 release, align 8, !noalias !1813
  %i.qg = icmp eq i64 %i.qf, 1
  br i1 %i.qg, label %bb.ay, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTINtCs8gjDJEnUBRO_10hayro_cmap8CMapNameL0_EEEp6OutputINtNtB4_6option6OptionRShENtNtB4_6marker4SendNtB2V_4SyncEL_EECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i

bb.ay:                                            ; preds = %bb.ax
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTINtCs8gjDJEnUBRO_10hayro_cmap8CMapNameL0_EEEp6OutputINtNtBQ_6option6OptionRShENtNtBQ_6marker4SendNtB2I_4SyncEL_E9drop_slowCsdZBRolkNcUZ_15hayro_interpret(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTINtCs8gjDJEnUBRO_10hayro_cmap8CMapNameL0_EEEp6OutputINtNtB4_6option6OptionRShENtNtB4_6marker4SendNtB2V_4SyncEL_EECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i unwind label %bb.bn, !noalias !1808

bb.az:                                            ; preds = %bb.av
  store i64 1, ptr %i.qc, align 8, !noalias !1808
  %.sroa.45.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.qc, i64 8
  store i64 1, ptr %.sroa.45.0..sroa_idx.i.i.i.i, align 8, !noalias !1808
  store ptr %i.ps, ptr %i.o, align 8, !noalias !1806
  %i.qh = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @62, ptr %i.qh, align 8, !noalias !1806
  %i.qi = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.pv, ptr %i.qi, align 8, !noalias !1806
  %i.qj = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr @63, ptr %i.qj, align 8, !noalias !1806
  %i.qk = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr %i.qc, ptr %i.qk, align 8, !noalias !1806
  %i.ql = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store ptr @64, ptr %i.ql, align 8, !noalias !1806
  %i.qm = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store i8 0, ptr %i.qm, align 8, !noalias !1806
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1806
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1806
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1806
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val35.i.i.i) ]
  %i.qn = getelementptr inbounds nuw i8, ptr %.val35.i.i.i, i64 32
  %i.qo = uitofp i32 %i.cr to float
  %i.qp = trunc i32 %i.cn to i16
  %i.qq = trunc i32 %i.cr to i16
  %i.qr = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.qs = load <2 x float>, ptr %i.qn, align 8, !noalias !1808
  %i.qt = insertelement <2 x float> poison, float %i.co, i64 0
  %i.qu = insertelement <2 x float> %i.qt, float %i.qo, i64 1
  %i.qv = fdiv <2 x float> %i.qu, %i.qs
  store <2 x float> %i.qv, ptr %i.qr, align 4, !noalias !1806
  store i16 1, ptr %i.l, align 4, !noalias !1806
  %i.qw = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store i16 %i.qp, ptr %i.qw, align 2, !noalias !1806
  %i.qx = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i16 1, ptr %i.qx, align 4, !noalias !1806
  %i.qy = getelementptr inbounds nuw i8, ptr %i.l, i64 6
  store i16 %i.qq, ptr %i.qy, align 2, !noalias !1806
  %i.qz = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.qz, i8 0, i64 16, i1 false), !noalias !1806
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1806
  invoke void @_RNvMCsjSKfRiKGIdg_5hayroNtB2_11RenderCache3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k)
          to label %bb.bc unwind label %bb.bb, !noalias !1808

bb.ba:                                            ; preds = %bb.bf, %bb.bb
  %.pn16.i.i.i.i = phi { ptr, i32 } [ %i.ra, %bb.bb ], [ %.pn14.i.i.i.i, %bb.bf ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdZBRolkNcUZ_15hayro_interpret9interpret19InterpreterSettingsECs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef align 8 dereferenceable(56) %i.o) #28
          to label %.body.i unwind label %bb.bn, !noalias !1808

bb.bb:                                            ; preds = %.invoke.i.i.i.i, %bb.az
  %i.ra = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.bc:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1806
  %i.rb = getelementptr inbounds nuw i8, ptr %.val35.i.i.i, i64 16
  %i.rc = load ptr, ptr %i.rb, align 8, !noalias !1808, !nonnull !5, !noundef !5
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 16
  %i.re = load ptr, ptr %i.rd, align 8, !noalias !1808, !nonnull !5, !noundef !5 ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 32
  %i.rg = load i64, ptr %i.rf, align 8, !noalias !1808, !noundef !5 ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %.val35.i.i.i, i64 24
  %i.ri = load i64, ptr %i.rh, align 8, !noalias !1808, !noundef !5 ; 3 uses
  %i.rj = icmp ult i64 %i.ri, %i.rg
  br i1 %i.rj, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.rk = getelementptr inbounds nuw i8, ptr %i.re, i64 24
  %i.rl = load ptr, ptr %i.rk, align 8, !noalias !1808, !nonnull !5, !noundef !5
  %i.rm = getelementptr inbounds nuw [208 x i8], ptr %i.rl, i64 %i.ri
  invoke void @_RNvCsjSKfRiKGIdg_5hayro6render(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.j, ptr noundef nonnull align 8 %i.rm, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.o, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(32) %i.l)
          to label %bb.bj unwind label %bb.bg, !noalias !1808

bb.be:                                            ; preds = %bb.bc
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.ri, i64 noundef %i.rg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #29
          to label %bb.bh unwind label %bb.bg, !noalias !1808

bb.bf:                                            ; preds = %bb.bi, %bb.bg
  %.pn14.i.i.i.i = phi { ptr, i32 } [ %i.rn, %bb.bg ], [ %i.ro, %bb.bi ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsjSKfRiKGIdg_5hayro11RenderCacheECs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #28
          to label %bb.ba unwind label %bb.bn, !noalias !1808

bb.bg:                                            ; preds = %bb.be, %bb.bd
  %i.rn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.bh:                                            ; preds = %bb.be
  unreachable

bb.bi:                                            ; preds = %bb.bk
  %i.ro = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.bj:                                            ; preds = %bb.bd
  %.sroa.06.0.copyload.i.i.i.i = load i64, ptr %i.j, align 8, !noalias !1806
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.2.0.copyload.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !1806, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.3.0.copyload.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !noalias !1806
  %i.rp = ptrtoint ptr %.sroa.2.0.copyload.i.i.i.i to i64
  %i.rq = shl i64 %.sroa.06.0.copyload.i.i.i.i, 2 ; 3 uses
  %i.rr = shl nuw nsw i64 %.sroa.3.0.copyload.i.i.i.i, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1806
  store i64 %i.rq, ptr %i.i, align 8, !noalias !1806
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.rp, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !1806
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %i.rr, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !1806
  %.not7.i.i.i.i.i = icmp eq i32 %i.cr, 0
  %.not7.i.i.i.i = icmp eq i32 %i.cn, 0
  %.not.i.i.i.i = or i1 %.not7.i.i.i.i, %.not7.i.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  invoke void @_RNvMNtCsfVrisfeHJNS_9tiny_skia6pixmapNtB2_6Pixmap8from_vec(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.p, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.i, i32 noundef %i.cn, i32 noundef %i.cr)
          to label %.invoke.i.i.i.i unwind label %bb.bi, !noalias !1803

bb.bl:                                            ; preds = %bb.bj
  store i64 -1, ptr %i.p, align 8, !alias.scope !1805, !noalias !1804
  %i.rs = icmp eq i64 %i.rq, 0
  br i1 %i.rs, label %.invoke.i.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.2.0.copyload.i.i.i.i, i64 noundef %i.rq, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !1808
  br label %.invoke.i.i.i.i

.invoke.i.i.i.i:                                  ; preds = %bb.bm, %bb.bl, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1806
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1806
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsjSKfRiKGIdg_5hayro11RenderCacheECs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k)
          to label %_RNvNtCs4xylOWI7Ys4_12typst_render5image17build_pdf_texture.exit.i.i.i unwind label %bb.bb, !noalias !1808

bb.bn:                                            ; preds = %bb.bf, %bb.ba, %bb.ay, %bb.at
  %i.rt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !1808
  unreachable

_RNvNtCs4xylOWI7Ys4_12typst_render5image17build_pdf_texture.exit.i.i.i: ; preds = %.invoke.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1806
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1806
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdZBRolkNcUZ_15hayro_interpret9interpret19InterpreterSettingsECs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef align 8 dereferenceable(56) %i.o)
          to label %.noexc52.i unwind label %bb.fj, !noalias !1741

.noexc52.i:                                       ; preds = %_RNvNtCs4xylOWI7Ys4_12typst_render5image17build_pdf_texture.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1806
  %i.ru = load i64, ptr %i.p, align 8, !range !7, !noalias !1804, !noundef !5 ; 2 uses
  %.not.i41.i.i = icmp eq i64 %i.ru, -1
  br i1 %.not.i41.i.i, label %bb.co, label %bb.cn

bb.bo:                                            ; preds = %.noexc49.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 32, i1 false), !noalias !1804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1804
  %i.rv = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 2 uses
  %i.rw = load i32, ptr %i.rv, align 8, !range !20, !noalias !1804, !noundef !5 ; 3 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.w, i64 28
  %i.ry = load i32, ptr %i.rx, align 4, !range !20, !noalias !1804, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1804
  %i.rz = load ptr, ptr %i.bo, align 8, !noalias !1803, !nonnull !5, !noundef !5
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 56
  %i.sb = load ptr, ptr %i.sa, align 8, !noalias !1803, !nonnull !5, !noundef !5 ; 4 uses
  %.sroa.02.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %i.sb, i64 48
  %.sroa.02.0.i.i.i = load i32, ptr %.sroa.02.0.in.i.i.i, align 8, !noalias !1803, !noundef !5 ; 2 uses
  %.sroa.03.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %i.sb, i64 52
  %.sroa.03.0.i.i.i = load i32, ptr %.sroa.03.0.in.i.i.i, align 4, !noalias !1803, !noundef !5
  %i.sc = icmp ne i32 %i.rw, %.sroa.02.0.i.i.i
  %i.sd = icmp ne i32 %i.ry, %.sroa.03.0.i.i.i
  %or.cond.not.i.i.i = or i1 %i.sc, %i.sd         ; 3 uses
  br i1 %or.cond.not.i.i.i, label %bb.bq, label %bb.br

bb.bp:                                            ; preds = %.noexc49.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1804
  br label %_RNCNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture0B5_.exit.i.i

bb.bq:                                            ; preds = %bb.bo
  %i.se = icmp ugt i32 %i.rw, %.sroa.02.0.i.i.i
  %i.sf = getelementptr inbounds nuw i8, ptr %.0.val, i64 72
  %i.sg = load i8, ptr %i.sf, align 8, !range !24, !noalias !1803, !noundef !5
  %i.sh = icmp eq i8 %i.sg, 1
  %..i.i.i = select i1 %i.se, i8 2, i8 4
  %.sroa.07.0.i.i.i = select i1 %i.sh, i8 0, i8 %..i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1804
  %i.si = getelementptr inbounds nuw i8, ptr %i.sb, i64 16
  invoke void @_RNvMs_NtNtCsbMQOdixSu6G_5image6images8dynimageNtB4_12DynamicImage12resize_exact(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.si, i32 noundef %i.rw, i32 noundef %i.ry, i8 noundef %.sroa.07.0.i.i.i)
          to label %bb.bt unwind label %.thread.i.i.i, !noalias !1803

.thread.i.i.i:                                    ; preds = %bb.bq
  %i.sj = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.br:                                            ; preds = %bb.bo
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sb, i64 16
  br label %bb.bu

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i43.i.i
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

.loopexit.split-lp.i.i.i:                         ; preds = %bb.bu
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.bs:                                            ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i
  %lpad.phi.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ] ; 2 uses
  br i1 %or.cond.not.i.i.i, label %bb.cf, label %bb.cg

bb.bt:                                            ; preds = %bb.bq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.u, ptr noundef nonnull align 8 dereferenceable(48) %i.t, i64 48, i1 false), !noalias !1804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1804
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.br
  %.sroa.04.0.i.i.i = phi ptr [ %i.sk, %bb.br ], [ %i.u, %bb.bt ] ; 3 uses
  %i.sl = getelementptr i8, ptr %.sroa.04.0.i.i.i, i64 32
  %.sroa.04.0.val.i.i.i = load i32, ptr %i.sl, align 8, !noalias !1803, !noundef !5 ; 2 uses
  %i.sm = getelementptr i8, ptr %.sroa.04.0.i.i.i, i64 36
  %.sroa.04.0.val36.i.i.i = load i32, ptr %i.sm, align 4, !noalias !1803, !noundef !5 ; 2 uses
  %i.sn = invoke { ptr, i64 } @_RNvMNtCsfVrisfeHJNS_9tiny_skia6pixmapNtB2_6Pixmap10pixels_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.w)
          to label %bb.bv unwind label %.loopexit.split-lp.i.i.i, !noalias !1803 ; 2 uses

bb.bv:                                            ; preds = %bb.bu
  %i.so = extractvalue { ptr, i64 } %i.sn, 0      ; 3 uses
  %i.sp = extractvalue { ptr, i64 } %i.sn, 1
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %i.so, i64 %i.sp
  %.not.i.i134.i.i.i = icmp eq i32 %.sroa.04.0.val.i.i.i, 0
  %i.sr = zext i1 %.not.i.i134.i.i.i to i32       ; 2 uses
  %.not4.i.i135.i.i.i = icmp ugt i32 %.sroa.04.0.val36.i.i.i, %i.sr
  br i1 %.not4.i.i135.i.i.i, label %.lr.ph.i43.i.i, label %._crit_edge.i.i._crit_edge.i.i.i

.lr.ph.i43.i.i:                                   ; preds = %bb.bv, %_RNvMNtCsfVrisfeHJNS_9tiny_skia5colorNtB2_7ColorU811premultiply.exit.i.i.i
  %i.ss = phi i32 [ %i.tv, %_RNvMNtCsfVrisfeHJNS_9tiny_skia5colorNtB2_7ColorU811premultiply.exit.i.i.i ], [ 0, %bb.bv ] ; 2 uses
  %.sroa.8.1137.i.i.i = phi i32 [ %.sroa.8.1.i.i.i, %_RNvMNtCsfVrisfeHJNS_9tiny_skia5colorNtB2_7ColorU811premultiply.exit.i.i.i ], [ %i.sr, %bb.bv ] ; 2 uses
  %.sroa.16.0136.i.i.i = phi ptr [ %i.sv, %_RNvMNtCsfVrisfeHJNS_9tiny_skia5colorNtB2_7ColorU811premultiply.exit.i.i.i ], [ %i.so, %bb.bv ] ; 4 uses
  %i.st = invoke noundef i32 @_RNvXsc_NtNtCsbMQOdixSu6G_5image6images8dynimageNtB5_12DynamicImageNtNtB7_13generic_image16GenericImageView9get_pixel(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.04.0.i.i.i, i32 noundef %i.ss, i32 noundef %.sroa.8.1137.i.i.i)
          to label %.noexc.i.i.i unwind label %.loopexit.i.i.i, !noalias !1803 ; 6 uses

.noexc.i.i.i:                                     ; preds = %.lr.ph.i43.i.i
  %5 = add nuw i32 %i.ss, 1                       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.16.0136.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.so) ]
  %i.su = icmp eq ptr %.sroa.16.0136.i.i.i, %i.sq
  br i1 %i.su, label %._crit_edge.i.i._crit_edge.i.i.i, label %bb.bw

bb.bw:                                            ; preds = %.noexc.i.i.i
  %i.sv = getelementptr inbounds nuw i8, ptr %.sroa.16.0136.i.i.i, i64 4
  %i.sw = trunc i32 %i.st to i16
  %i.sx = lshr i16 %i.sw, 8                       ; 2 uses
  %.sroa.548.11.extract.shift.i.i.i = lshr i32 %i.st, 24 ; 4 uses
  %i.sy = icmp eq i32 %.sroa.548.11.extract.shift.i.i.i, 255
  %.sroa.03.0.insert.ext.i.i.i.i = and i32 %i.st, 255 ; 2 uses
  br i1 %i.sy, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %sh.diff.i.i.i = lshr i32 %i.st, 8
  %tr.sh.diff.i.i.i = trunc i32 %sh.diff.i.i.i to i16
  %.sroa.451.2.insert.ext.i.i.i = and i16 %tr.sh.diff.i.i.i, -256
  %.sroa.451.2.insert.insert.i.i.i = or disjoint i16 %.sroa.451.2.insert.ext.i.i.i, %i.sx
  %i.sz = zext i16 %.sroa.451.2.insert.insert.i.i.i to i32
  %i.ta = shl nuw nsw i32 %i.sz, 8
  %.sroa.44.0.insert.insert.i.i.i.i = or disjoint i32 %i.ta, %.sroa.03.0.insert.ext.i.i.i.i
  %.sroa.03.0.insert.insert.i.i.i.i = or disjoint i32 %.sroa.44.0.insert.insert.i.i.i.i, -16777216
  br label %_RNvMNtCsfVrisfeHJNS_9tiny_skia5colorNtB2_7ColorU811premultiply.exit.i.i.i

bb.by:                                            ; preds = %bb.bw
  %.sroa.451.2.extract.shift133.i.i.i = lshr i32 %i.st, 16
  %.sroa.451.1.extract.trunc.i.i.i = zext nneg i16 %i.sx to i32
  %i.tb = mul nuw nsw i32 %.sroa.548.11.extract.shift.i.i.i, %.sroa.03.0.insert.ext.i.i.i.i
  %i.tc = add nuw nsw i32 %i.tb, 128              ; 2 uses
  %i.td = lshr i32 %i.tc, 8
  %i.te = add nuw nsw i32 %i.td, %i.tc
  %i.tf = lshr i32 %i.te, 8
  %i.tg = mul nuw nsw i32 %.sroa.548.11.extract.shift.i.i.i, %.sroa.451.1.extract.trunc.i.i.i
  %i.th = add nuw nsw i32 %i.tg, 128              ; 2 uses
  %i.ti = lshr i32 %i.th, 8
  %i.tj = add nuw nsw i32 %i.ti, %i.th
  %.sroa.4.0.insert.shift.i.i.i.i = and i32 %i.tj, 261888
  %i.tk = and i32 %.sroa.451.2.extract.shift133.i.i.i, 255
  %.sroa.6.0.insert.shift.i.i.i.i = and i32 %i.st, -16777216
  %i.tl = mul nuw nsw i32 %.sroa.548.11.extract.shift.i.i.i, 257
  %i.tm = mul nuw nsw i32 %i.tl, %i.tk
  %i.tn = add nuw nsw i32 %i.tm, 32896
  %.sroa.5.0.insert.shift.i.i.i.i = and i32 %i.tn, 33488896
  %.sroa.5.0.insert.insert.i.i.i.i = or i32 %.sroa.5.0.insert.shift.i.i.i.i, %.sroa.6.0.insert.shift.i.i.i.i
  %.sroa.4.0.insert.insert.i.i.i.i = or i32 %.sroa.5.0.insert.insert.i.i.i.i, %i.tf
  %.sroa.02.0.insert.insert.i.i.i.i = or i32 %.sroa.4.0.insert.insert.i.i.i.i, %.sroa.4.0.insert.shift.i.i.i.i
  br label %_RNvMNtCsfVrisfeHJNS_9tiny_skia5colorNtB2_7ColorU811premultiply.exit.i.i.i

._crit_edge.i.i._crit_edge.i.i.i:                 ; preds = %_RNvMNtCsfVrisfeHJNS_9tiny_skia5colorNtB2_7ColorU811premultiply.exit.i.i.i, %.noexc.i.i.i, %bb.bv
  %.sroa.077.0.copyload.i.i.i = load i64, ptr %i.w, align 8, !noalias !1804
  %.sroa.480.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.480.0.copyload.i.i.i = load ptr, ptr %.sroa.480.0..sroa_idx.i.i.i, align 8, !noalias !1804
  %.sroa.585.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.585.0.copyload.i.i.i = load i64, ptr %.sroa.585.0..sroa_idx.i.i.i, align 8, !noalias !1804
  %i.to = load <2 x i32>, ptr %i.rv, align 8, !noalias !1804
  br i1 %or.cond.not.i.i.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.ca, %._crit_edge.i.i._crit_edge.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1804
  br label %bb.cb

bb.ca:                                            ; preds = %._crit_edge.i.i._crit_edge.i.i.i
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsbMQOdixSu6G_5image6images8dynimage12DynamicImageECs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef align 8 dereferenceable(48) %i.u), !noalias !1803
  br label %bb.bz

bb.cb:                                            ; preds = %bb.cn, %bb.cm, %bb.bz
  %.sroa.585.0.i.i.i = phi i64 [ %.sroa.585.0.copyload.i.i.i, %bb.bz ], [ %.sroa.5107.0.copyload.i.i.i, %bb.cm ], [ %.sroa.5112.0.copyload.i.i.i, %bb.cn ]
  %.sroa.480.0.i.i.i = phi ptr [ %.sroa.480.0.copyload.i.i.i, %bb.bz ], [ %.sroa.4106.0.copyload.i.i.i, %bb.cm ], [ %.sroa.4111.0.copyload.i.i.i, %bb.cn ] ; 3 uses
  %.sroa.077.0.i.i.i = phi i64 [ %.sroa.077.0.copyload.i.i.i, %bb.bz ], [ %i.pr, %bb.cm ], [ %i.ru, %bb.cn ] ; 3 uses
  %i.tp = phi <2 x i32> [ %i.to, %bb.bz ], [ %i.ty, %bb.cm ], [ %i.uq, %bb.cn ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !1814
  %i.tq = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 48, i64 noundef 8) #26, !noalias !1814 ; 8 uses
  %i.tr = icmp eq ptr %i.tq, null
  br i1 %i.tr, label %bb.cc, label %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEE3newCs4xylOWI7Ys4_12typst_render.exit.i.i.i, !prof !17

bb.cc:                                            ; preds = %bb.cb
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #29
          to label %.noexc39.i.i.i unwind label %bb.cd, !noalias !1803

.noexc39.i.i.i:                                   ; preds = %bb.cc
  unreachable

bb.cd:                                            ; preds = %bb.cc
  %i.ts = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.tt = icmp eq i64 %.sroa.077.0.i.i.i, 0
  br i1 %i.tt, label %.body.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.480.0.i.i.i) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.480.0.i.i.i, i64 noundef %.sroa.077.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !1803
  br label %.body.i

_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEE3newCs4xylOWI7Ys4_12typst_render.exit.i.i.i: ; preds = %bb.cb
  store i64 1, ptr %i.tq, align 8, !noalias !1803
  %.sroa.4116.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.tq, i64 8
  store i64 1, ptr %.sroa.4116.0..sroa_idx.i.i.i, align 8, !noalias !1803
  %.sroa.5117.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.tq, i64 16
  store i64 %.sroa.077.0.i.i.i, ptr %.sroa.5117.0..sroa_idx.i.i.i, align 8, !noalias !1803
  %.sroa.7118.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.tq, i64 24
  store ptr %.sroa.480.0.i.i.i, ptr %.sroa.7118.0..sroa_idx.i.i.i, align 8, !noalias !1803
  %.sroa.9119.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.tq, i64 32
  store i64 %.sroa.585.0.i.i.i, ptr %.sroa.9119.0..sroa_idx.i.i.i, align 8, !noalias !1803
  %.sroa.10120.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.tq, i64 40
  store <2 x i32> %i.tp, ptr %.sroa.10120.0..sroa_idx.i.i.i, align 8, !noalias !1803
  br label %_RNCNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture0B5_.exit.i.i

_RNvMNtCsfVrisfeHJNS_9tiny_skia5colorNtB2_7ColorU811premultiply.exit.i.i.i: ; preds = %bb.by, %bb.bx
  %.sroa.0.0.i.i.i.i = phi i32 [ %.sroa.03.0.insert.insert.i.i.i.i, %bb.bx ], [ %.sroa.02.0.insert.insert.i.i.i.i, %bb.by ]
  store i32 %.sroa.0.0.i.i.i.i, ptr %.sroa.16.0136.i.i.i, align 1, !noalias !1803
  %.not.i.i.i.i.i = icmp uge i32 %5, %.sroa.04.0.val.i.i.i ; 2 uses
  %i.tu = zext i1 %.not.i.i.i.i.i to i32
  %.sroa.8.1.i.i.i = add nuw i32 %.sroa.8.1137.i.i.i, %i.tu ; 2 uses
  %i.tv = select i1 %.not.i.i.i.i.i, i32 0, i32 %5
  %.not4.i.i.i.i.i = icmp ult i32 %.sroa.8.1.i.i.i, %.sroa.04.0.val36.i.i.i
  br i1 %.not4.i.i.i.i.i, label %.lr.ph.i43.i.i, label %._crit_edge.i.i._crit_edge.i.i.i

bb.cf:                                            ; preds = %bb.bs
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsbMQOdixSu6G_5image6images8dynimage12DynamicImageECs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef align 8 dereferenceable(48) %i.u) #28, !noalias !1803
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.bs, %.thread.i.i.i
  %.pn.ph.i.i.i = phi { ptr, i32 } [ %i.sj, %.thread.i.i.i ], [ %lpad.phi.i.i.i, %bb.bs ], [ %lpad.phi.i.i.i, %bb.cf ] ; 2 uses
  %.val31.i.i.i = load i64, ptr %i.w, align 8, !noalias !1804 ; 2 uses
  %i.tw = icmp eq i64 %.val31.i.i.i, 0
  br i1 %i.tw, label %.body.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.tx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.val32.i.i.i = load ptr, ptr %i.tx, align 8, !noalias !1804, !nonnull !5, !noundef !5
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val32.i.i.i, i64 noundef %.val31.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !1803
  br label %.body.i

bb.ci:                                            ; preds = %.noexc50.i
  %.sroa.4106.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.4106.0.copyload.i.i.i = load ptr, ptr %.sroa.4106.0..sroa_idx.i.i.i, align 8, !noalias !1804 ; 4 uses
  %.sroa.5107.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.5107.0.copyload.i.i.i = load i64, ptr %.sroa.5107.0..sroa_idx.i.i.i, align 8, !noalias !1804 ; 2 uses
  %.sroa.6108.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.ty = load <2 x i32>, ptr %.sroa.6108.0..sroa_idx.i.i.i, align 8, !noalias !1804 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1804
  %i.tz = load ptr, ptr %i.bo, align 8, !noalias !1803, !nonnull !5, !noundef !5 ; 2 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1804
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tz, i64 408
  %i.uc = uitofp i32 %i.cr to float
  %i.ud = load <2 x float>, ptr %i.ub, align 8, !noalias !1803
  %i.ue = insertelement <2 x float> poison, float %i.co, i64 0
  %i.uf = insertelement <2 x float> %i.ue, float %i.uc, i64 1
  %i.ug = fdiv <2 x float> %i.uf, %i.ud           ; 2 uses
  %i.uh = extractelement <2 x float> %i.ug, i64 0
  store float %i.uh, ptr %i.r, align 4, !noalias !1804
  %i.ui = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store <2 x float> zeroinitializer, ptr %i.ui, align 4, !noalias !1804
  %i.uj = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %i.uk = extractelement <2 x float> %i.ug, i64 1
  store float %i.uk, ptr %i.uj, align 4, !noalias !1804
  %i.ul = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <2 x float> zeroinitializer, ptr %i.ul, align 4, !noalias !1804
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1804
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4106.0.copyload.i.i.i) ]
  store ptr %.sroa.4106.0.copyload.i.i.i, ptr %i.q, align 8, !noalias !1804
  %i.um = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %.sroa.5107.0.copyload.i.i.i, ptr %i.um, align 8, !noalias !1804
  %i.un = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store <2 x i32> %i.ty, ptr %i.un, align 8, !noalias !1804
  invoke void @_RNvCs2S0oWaQfpAk_5resvg6render(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(400) %i.ua, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %bb.cm unwind label %bb.ck, !noalias !1803

bb.cj:                                            ; preds = %.noexc50.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1804
  br label %_RNCNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture0B5_.exit.i.i

bb.ck:                                            ; preds = %bb.ci
  %i.uo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.up = icmp eq i64 %i.pr, 0
  br i1 %i.up, label %.body.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4106.0.copyload.i.i.i, i64 noundef %i.pr, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !1803
  br label %.body.i

bb.cm:                                            ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1804
  br label %bb.cb

bb.cn:                                            ; preds = %.noexc52.i
  %.sroa.4111.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.4111.0.copyload.i.i.i = load ptr, ptr %.sroa.4111.0..sroa_idx.i.i.i, align 8, !noalias !1804
  %.sroa.5112.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.5112.0.copyload.i.i.i = load i64, ptr %.sroa.5112.0..sroa_idx.i.i.i, align 8, !noalias !1804
  %.sroa.6113.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.uq = load <2 x i32>, ptr %.sroa.6113.0..sroa_idx.i.i.i, align 8, !noalias !1804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1804
  br label %bb.cb

bb.co:                                            ; preds = %.noexc52.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1804
  br label %_RNCNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture0B5_.exit.i.i

_RNCNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture0B5_.exit.i.i: ; preds = %bb.co, %bb.cj, %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEE3newCs4xylOWI7Ys4_12typst_render.exit.i.i.i, %bb.bp
  %.sroa.0.0.i42.i.i = phi ptr [ %i.tq, %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEE3newCs4xylOWI7Ys4_12typst_render.exit.i.i.i ], [ null, %bb.bp ], [ null, %bb.cj ], [ null, %bb.co ] ; 10 uses
  store ptr %.sroa.0.0.i42.i.i, ptr %i.an, align 8, !noalias !1744
  %i.ur = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture7___CACHE, i64 152) acquire, align 8, !noalias !1744
  %i.us = icmp eq i32 %i.ur, 0
  br i1 %i.us, label %bb.cw, label %bb.cp, !prof !19

bb.cp:                                            ; preds = %_RNCNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture0B5_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1744
  store ptr @_RNvNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture7___CACHE, ptr %i.h, align 8, !noalias !1744
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1744
  store ptr %i.h, ptr %i.g, align 8, !noalias !1744
  invoke void @_RNvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture7___CACHE, i64 152), i1 noundef zeroext true, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2)
          to label %.noexc44.i.i unwind label %bb.cv, !noalias !1798, !inline_history !1602

.noexc44.i.i:                                     ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1744
  br label %bb.cw

bb.cq:                                            ; preds = %bb.am
  %i.ut = atomicrmw add ptr %.val35.i.i, i64 1 monotonic, align 8, !noalias !1798
  %i.uu = icmp slt i64 %i.ut, 0
  br i1 %i.uu, label %bb.cr, label %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEENtNtB7_5clone5Clone5cloneCs4xylOWI7Ys4_12typst_render.exit.i.i

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.trap()
  unreachable

_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEENtNtB7_5clone5Clone5cloneCs4xylOWI7Ys4_12typst_render.exit.i.i: ; preds = %bb.cq, %bb.am
  %i.uv = atomicrmw sub ptr @_RNvNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture7___CACHE, i64 16 release, align 8, !noalias !1744
  %i.uw = and i64 %i.uv, -14
  %i.ux = icmp eq i64 %i.uw, 18
  br i1 %i.ux, label %bb.cs, label %_RINvNtCsloFShupyl5J_6comemo7memoize7memoizeINtNtB4_5input5MultiTRNtNtNtCsdaEETE4DqmE_13typst_library9visualize5image5ImagemmEEINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEENCNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture0EB3Y_.exit.i, !prof !17

bb.cs:                                            ; preds = %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEENtNtB7_5clone5Clone5cloneCs4xylOWI7Ys4_12typst_render.exit.i.i
  invoke void @_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 @_RNvNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture7___CACHE)
          to label %_RINvNtCsloFShupyl5J_6comemo7memoize7memoizeINtNtB4_5input5MultiTRNtNtNtCsdaEETE4DqmE_13typst_library9visualize5image5ImagemmEEINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEENCNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture0EB3Y_.exit.i unwind label %bb.fj, !noalias !1741

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs1_1__9MultiCalluuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEEECs4xylOWI7Ys4_12typst_render.exit.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i, %bb.db, %bb.cv
  %.pn.i.i = phi { ptr, i32 } [ %i.vb, %bb.cv ], [ %eh.lpad-body3.i.i.i, %bb.db ], [ %eh.lpad-body3.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i ] ; 3 uses
  %i.uy = icmp eq ptr %.sroa.0.0.i42.i.i, null
  br i1 %i.uy, label %.body.i, label %bb.ct

bb.ct:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs1_1__9MultiCalluuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEEECs4xylOWI7Ys4_12typst_render.exit.i.i
  %i.uz = atomicrmw sub ptr %.sroa.0.0.i42.i.i, i64 1 release, align 8, !noalias !1815
  %i.va = icmp eq i64 %i.uz, 1
  br i1 %i.va, label %bb.cu, label %.body.i

bb.cu:                                            ; preds = %bb.ct
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapE9drop_slowCs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.an) #25, !noalias !1798
  br label %.body.i

bb.cv:                                            ; preds = %bb.fh, %bb.cx, %bb.cp
  %i.vb = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs1_1__9MultiCalluuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEEECs4xylOWI7Ys4_12typst_render.exit.i.i

bb.cw:                                            ; preds = %.noexc44.i.i, %_RNCNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture0B5_.exit.i.i
  %i.vc = cmpxchg weak ptr @_RNvNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture7___CACHE, i64 0, i64 8 acquire monotonic, align 8, !noalias !1744
  %i.vd = extractvalue { i64, i1 } %i.vc, 1
  br i1 %i.vd, label %bb.cy, label %bb.cx, !prof !19

bb.cx:                                            ; preds = %bb.cw
  %i.ve = invoke noundef zeroext i1 @_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock19lock_exclusive_slow(ptr noundef nonnull align 8 @_RNvNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture7___CACHE, i64 undef, i32 noundef -1)
          to label %bb.cy unwind label %bb.cv, !noalias !1798 ; 0 uses

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %.not.i50.i.i = icmp eq ptr %.sroa.0.0.i42.i.i, null ; 3 uses
  br i1 %.not.i50.i.i, label %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEENtNtB7_5clone5Clone5cloneCs4xylOWI7Ys4_12typst_render.exit51.i.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.vf = atomicrmw add ptr %.sroa.0.0.i42.i.i, i64 1 monotonic, align 8, !noalias !1798
  %i.vg = icmp slt i64 %i.vf, 0
  br i1 %i.vg, label %bb.da, label %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEENtNtB7_5clone5Clone5cloneCs4xylOWI7Ys4_12typst_render.exit51.i.i

bb.da:                                            ; preds = %bb.cz
  call void @llvm.trap()
  unreachable

bb.db:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i
  invoke void @_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 @_RNvNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture7___CACHE, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs1_1__9MultiCalluuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEEECs4xylOWI7Ys4_12typst_render.exit.i.i unwind label %bb.fi, !noalias !1798

_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEENtNtB7_5clone5Clone5cloneCs4xylOWI7Ys4_12typst_render.exit51.i.i: ; preds = %bb.cz, %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1744
  store ptr %.sroa.0.0.i42.i.i, ptr %i.f, align 8, !noalias !1744
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.vh = cmpxchg weak ptr %i.ap, i8 0, i8 1 acquire monotonic, align 1, !alias.scope !1743, !noalias !1816
  %i.vi = extractvalue { i8, i1 } %i.vh, 1
  br i1 %i.vi, label %.noexc.i53.i.i, label %bb.dc, !prof !19

bb.dc:                                            ; preds = %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEENtNtB7_5clone5Clone5cloneCs4xylOWI7Ys4_12typst_render.exit51.i.i
  %i.vj = invoke noundef zeroext i1 @_RNvMs1_NtCsg5ZWEykmiUC_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull align 8 dereferenceable(96) %i.ap, i64 undef, i32 noundef -1)
          to label %.noexc.i53.i.i unwind label %bb.fd, !noalias !1798 ; 0 uses

.noexc.i53.i.i:                                   ; preds = %bb.dc, %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEENtNtB7_5clone5Clone5cloneCs4xylOWI7Ys4_12typst_render.exit51.i.i
  %i.vk = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.vk, i64 64, i1 false), !noalias !1798
  store i64 0, ptr %i.vk, align 8, !alias.scope !1743, !noalias !1816
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !1743, !noalias !1816
  store i64 0, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !1743, !noalias !1816
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) @40, i64 32, i1 false), !noalias !1816
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !1743, !noalias !1816
  %i.vl = getelementptr inbounds nuw i8, ptr %i.ap, i64 72 ; 2 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.vm, ptr noundef nonnull align 8 dereferenceable(24) %i.vl, i64 24, i1 false), !noalias !1798
  store i64 0, ptr %i.vl, align 8, !alias.scope !1743, !noalias !1816
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !1743, !noalias !1816
  store i64 0, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !1743, !noalias !1816
  %i.vn = cmpxchg ptr %i.ap, i8 1, i8 0 release monotonic, align 1, !alias.scope !1743, !noalias !1816
  %i.vo = extractvalue { i8, i1 } %i.vn, 1
  br i1 %i.vo, label %_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputs1_1__9MultiCalluuuEE4takeCs4xylOWI7Ys4_12typst_render.exit.i.i.i, label %bb.dd, !prof !19

bb.dd:                                            ; preds = %.noexc.i53.i.i
  invoke void @_RNvMs1_NtCsg5ZWEykmiUC_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull align 8 dereferenceable(96) %i.ap, i1 noundef zeroext false)
          to label %_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputs1_1__9MultiCalluuuEE4takeCs4xylOWI7Ys4_12typst_render.exit.i.i.i unwind label %bb.fd, !noalias !1798

.body.i.i.i:                                      ; preds = %bb.fc, %bb.ev, %bb.et, %.body.i.i.i.i
  %.pn.i.i57.i.i = phi { ptr, i32 } [ %lpad.phi.i.i.i.i, %bb.fc ], [ %lpad.thr_comm.split-lp.i.i.i.i, %.body.i.i.i.i ], [ %i.adx, %bb.ev ], [ %i.adt, %bb.et ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint12CallSequenceINtNvNtBG_5inputs1_1__9MultiCalluuuEEECs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.e) #28, !noalias !1817
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i

_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputs1_1__9MultiCalluuuEE4takeCs4xylOWI7Ys4_12typst_render.exit.i.i.i: ; preds = %bb.dd, %.noexc.i53.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1744
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %i.d, i64 64, i1 false), !noalias !1744
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1744
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.vm, i64 24, i1 false), !noalias !1744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.vp = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  store ptr %.sroa.0.0.i42.i.i, ptr %i.vp, align 8, !noalias !1744
  %i.vq = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 0, ptr %i.vq, align 8, !noalias !1744
  call void @llvm.experimental.noalias.scope.decl(metadata !1818)
  call void @llvm.experimental.noalias.scope.decl(metadata !1819)
  call void @llvm.experimental.noalias.scope.decl(metadata !1820)
  %i.vr = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture7___CACHE, i64 112), align 8, !alias.scope !1820, !noalias !1821, !noundef !5
  %i.vs = icmp eq i64 %i.vr, 0
  br i1 %i.vs, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs4xylOWI7Ys4_12typst_render.exit.thread.i.i.i.i, label %bb.de

bb.de:                                            ; preds = %_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputs1_1__9MultiCalluuuEE4takeCs4xylOWI7Ys4_12typst_render.exit.i.i.i
  %i.vt = mul i64 %i.lt, -1065810590584100411
  %i.vu = add i64 %i.vt, %i.lu
  %i.vv = mul i64 %i.vu, -1065810590584100411     ; 2 uses
  %i.vw = call noundef i64 @llvm.fshl.i64(i64 %i.vv, i64 %i.vv, i64 26) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1822)
  call void @llvm.experimental.noalias.scope.decl(metadata !1823)
  %i.vx = lshr i64 %i.vw, 57
  %i.vy = trunc nuw nsw i64 %i.vx to i8
  %i.vz = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture7___CACHE, i64 96), align 8, !alias.scope !1824, !noalias !1825, !noundef !5 ; 2 uses
  %i.wa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture7___CACHE, i64 88), align 8, !alias.scope !1824, !noalias !1825, !nonnull !5, !noundef !5 ; 2 uses
  %i.wb = insertelement <16 x i8> poison, i8 %i.vy, i64 0
  %i.wc = shufflevector <16 x i8> %i.wb, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.df

bb.df:                                            ; preds = %bb.dh, %bb.de
  %.sroa.9.0.i.i.i.i.i.i.i = phi i64 [ 0, %bb.de ], [ %i.wt, %bb.dh ]
  %.pn.i.i.i.i.i.i = phi i64 [ %i.vw, %bb.de ], [ %i.wu, %bb.dh ]
end_hunk_7
begin_hunk_8_@_RNvNtCs4xylOWI7Ys4_12typst_render5image12render_image:bb.a
  br i1 %or.cond32.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.eh

_RNvMs3_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs1_1__9MultiCalluuuEEE9insert_atCs4xylOWI7Ys4_12typst_render.exit.i.i.i.i: ; preds = %bb.ed, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtCsaixNeEcpA3e_4slab5EntryINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtB1c_5inputs1_1__9MultiCalluuuEEEE8push_mutCs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i
  %.not.i.i60.i.i = icmp eq i64 %.sroa.010.1.i.i.i.i, 1
  br i1 %.not.i.i60.i.i, label %.noexc58.i.i.i.i, label %bb.ee

.noexc58.i.i.i.i:                                 ; preds = %bb.ee, %_RNvMs3_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs1_1__9MultiCalluuuEEE9insert_atCs4xylOWI7Ys4_12typst_render.exit.i.i.i.i
  br i1 %.sroa.021.0.i.i.i.i.off0, label %bb.ef, label %_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs1_1__9MultiCalluuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEE4linkCs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.outer.backedge

bb.ee:                                            ; preds = %_RNvMs3_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs1_1__9MultiCalluuuEEE9insert_atCs4xylOWI7Ys4_12typst_render.exit.i.i.i.i
  invoke fastcc void @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE6insertCs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture7___CACHE, i64 88), i128 noundef %i.ly, i64 noundef %i.abt)
          to label %.noexc58.i.i.i.i unwind label %.loopexit56.i.i.i.i

bb.ef:                                            ; preds = %.noexc58.i.i.i.i
  %.val1.i56.i.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture7___CACHE, i64 24), align 8, !noalias !1858, !noundef !5
  %i.aco = icmp ult i64 %.sroa.10.0.i.i.i.i.ph75, %.val1.i56.i.i.i.i
  br i1 %i.aco, label %bb.eg, label %.invoke.i.i59.i.i, !prof !19

bb.eg:                                            ; preds = %bb.ef
  %.val.i57.i.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture7___CACHE, i64 16), align 8, !noalias !1858, !nonnull !5, !noundef !5
  %i.acp = getelementptr inbounds nuw [32 x i8], ptr %.val.i57.i.i.i.i, i64 %.sroa.10.0.i.i.i.i.ph75 ; 2 uses
  %i.acq = load i64, ptr %i.acp, align 8, !range !4, !noalias !1859, !noundef !5
  %.not.i.i.i.i.i.i = icmp eq i64 %i.acq, 2
  br i1 %.not.i.i.i.i.i.i, label %.invoke.i.i59.i.i, label %_RNvXs5_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs1_1__9MultiCalluuuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutjE9index_mutCs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i, !prof !17

_RNvXs5_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs1_1__9MultiCalluuuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutjE9index_mutCs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i: ; preds = %bb.eg
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acp, i64 16 ; 2 uses
  %i.acs = load i64, ptr %i.acr, align 8, !noalias !1860, !noundef !5
  %i.act = add i64 %i.acs, 1
  store i64 %i.act, ptr %i.acr, align 8, !noalias !1860
  invoke fastcc void @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE6insertCs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture7___CACHE, i64 120), i64 noundef %.sroa.10.0.i.i.i.i.ph75, i128 noundef %.sroa.17.0.i.i.i.i.ph76, i64 noundef %i.abt)
          to label %_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs1_1__9MultiCalluuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEE4linkCs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.outer.backedge unwind label %.loopexit56.i.i.i.i

_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs1_1__9MultiCalluuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEE4linkCs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.outer.backedge: ; preds = %_RNvXs5_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs1_1__9MultiCalluuuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutjE9index_mutCs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i, %.noexc58.i.i.i.i
  br label %_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs1_1__9MultiCalluuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEE4linkCs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.outer

bb.eh:                                            ; preds = %.loopexit54.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1821
  %i.acu = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.acu, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.c, i64 40, i1 false), !noalias !1853
  store i64 %.sroa.021.0.i.i.i.i.off068, ptr %i.b, align 8, !noalias !1821
  %i.acv = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.10.0.i.i.i.i.ph75, ptr %i.acv, align 8, !noalias !1821
  %i.acw = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture7___CACHE, i64 80), align 8, !noalias !1821, !noundef !5 ; 7 uses
  %i.acx = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture7___CACHE, i64 72), align 8, !noalias !1861, !noundef !5
  %i.acy = add i64 %i.acx, 1
  store i64 %i.acy, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture7___CACHE, i64 72), align 8, !noalias !1861
  %i.acz = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture7___CACHE, i64 64), align 8, !noalias !1861, !noundef !5 ; 3 uses
  %i.ada = icmp ult i64 %i.acz, 164703072086692426
  call void @llvm.assume(i1 %i.ada)
  %.not7.i.i.i56.i.i = icmp eq i64 %i.acw, %i.acz
  br i1 %.not7.i.i.i56.i.i, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.adb = icmp ult i64 %i.acw, %i.acz
  br i1 %i.adb, label %bb.el, label %bb.em, !prof !19

bb.ej:                                            ; preds = %bb.eh
  %i.adc = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture7___CACHE, i64 48), align 8, !range !8, !noalias !1862, !noundef !5
  %i.add = icmp eq i64 %i.acw, %i.adc
  br i1 %i.add, label %bb.ek, label %bb.eu

bb.ek:                                            ; preds = %bb.ej
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtCsaixNeEcpA3e_4slab5EntryINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtB1j_7memoize10CacheEntryINtNvNtB1j_5inputs1_1__9MultiCalluuuEINtNtCs3oUPovFnLWP_4core6option6OptionINtNtB7_4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEEEE8grow_oneCs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture7___CACHE, i64 48))
          to label %bb.eu unwind label %bb.et, !noalias !1863

bb.el:                                            ; preds = %bb.ei
  %i.ade = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture7___CACHE, i64 56), align 8, !noalias !1861, !nonnull !5, !noundef !5
  %i.adf = getelementptr inbounds nuw [56 x i8], ptr %i.ade, i64 %i.acw ; 7 uses
  %i.adg = load i64, ptr %i.adf, align 8, !range !4, !noalias !1864, !noundef !5
  %.not.i61.i.i.i.i = icmp eq i64 %i.adg, 2
  br i1 %.not.i61.i.i.i.i, label %bb.en, label %bb.em, !prof !19

bb.em:                                            ; preds = %bb.el, %bb.ei
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #29
          to label %bb.es unwind label %bb.ev, !noalias !1864

bb.en:                                            ; preds = %bb.el
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adf, i64 8
  %i.adi = load i64, ptr %i.adh, align 8, !noalias !1864, !noundef !5
  store i64 %i.adi, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture7___CACHE, i64 80), align 8, !noalias !1861
  call void @llvm.experimental.noalias.scope.decl(metadata !1865)
  %i.adj = load i64, ptr %i.adf, align 8, !range !4, !alias.scope !1865, !noalias !1864, !noundef !5
  %i.adk = icmp eq i64 %i.adj, 2
  br i1 %i.adk, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsaixNeEcpA3e_4slab5EntryINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtB18_7memoize10CacheEntryINtNvNtB18_5inputs1_1__9MultiCalluuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  call void @llvm.experimental.noalias.scope.decl(metadata !1866)
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adf, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !1867)
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adf, i64 40 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1868)
  %i.adn = load ptr, ptr %i.adm, align 8, !alias.scope !1869, !noalias !1864, !noundef !5 ; 2 uses
  %i.ado = icmp eq ptr %i.adn, null
  br i1 %i.ado, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i.i.i, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.adp = atomicrmw sub ptr %i.adn, i64 1 release, align 8, !noalias !1870
  %i.adq = icmp eq i64 %i.adp, 1
  br i1 %i.adq, label %bb.eq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i.i.i

bb.eq:                                            ; preds = %bb.ep
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapE9drop_slowCs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.adm) #25, !noalias !1864
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i.i.i: ; preds = %bb.eq, %bb.ep, %bb.eo
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.adl, align 8, !alias.scope !1871, !noalias !1864 ; 2 uses
  %i.adr = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.adr, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsaixNeEcpA3e_4slab5EntryINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtB18_7memoize10CacheEntryINtNvNtB18_5inputs1_1__9MultiCalluuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i, label %bb.er

bb.er:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i.i.i
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adf, i64 24
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.ads, align 8, !alias.scope !1871, !noalias !1864, !nonnull !5, !noundef !5
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !1872
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsaixNeEcpA3e_4slab5EntryINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtB18_7memoize10CacheEntryINtNvNtB18_5inputs1_1__9MultiCalluuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i

bb.es:                                            ; preds = %bb.em
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsaixNeEcpA3e_4slab5EntryINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtB18_7memoize10CacheEntryINtNvNtB18_5inputs1_1__9MultiCalluuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i: ; preds = %bb.er, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i.i.i, %bb.en
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.adf, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.b, i64 56, i1 false), !noalias !1828
  br label %_RNvMs3_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBE_7memoize10CacheEntryINtNvNtBE_5inputs1_1__9MultiCalluuuEINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEEE9insert_atCs4xylOWI7Ys4_12typst_render.exit.i.i.i.i

bb.et:                                            ; preds = %bb.ek
  %i.adt = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsaixNeEcpA3e_4slab5EntryINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtB18_7memoize10CacheEntryINtNvNtB18_5inputs1_1__9MultiCalluuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEEEECs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(56) %i.b) #28, !noalias !1828
  br label %.body.i.i.i

bb.eu:                                            ; preds = %bb.ek, %bb.ej
  %i.adu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture7___CACHE, i64 56), align 8, !noalias !1862, !nonnull !5, !noundef !5
  %i.adv = getelementptr inbounds nuw [56 x i8], ptr %i.adu, i64 %i.acw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.adv, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.b, i64 56, i1 false), !noalias !1828
  %i.adw = add nuw nsw i64 %i.acw, 1              ; 2 uses
  store i64 %i.adw, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture7___CACHE, i64 64), align 8, !noalias !1862
  store i64 %i.adw, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture7___CACHE, i64 80), align 8, !noalias !1861
  br label %_RNvMs3_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBE_7memoize10CacheEntryINtNvNtBE_5inputs1_1__9MultiCalluuuEINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEEE9insert_atCs4xylOWI7Ys4_12typst_render.exit.i.i.i.i

bb.ev:                                            ; preds = %bb.em
  %i.adx = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBG_7memoize10CacheEntryINtNvNtBG_5inputs1_1__9MultiCalluuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEEECs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(56) %i.b) #28, !noalias !1828
  br label %.body.i.i.i

_RNvMs3_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBE_7memoize10CacheEntryINtNvNtBE_5inputs1_1__9MultiCalluuuEINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEEE9insert_atCs4xylOWI7Ys4_12typst_render.exit.i.i.i.i: ; preds = %bb.eu, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsaixNeEcpA3e_4slab5EntryINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtB18_7memoize10CacheEntryINtNvNtB18_5inputs1_1__9MultiCalluuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1821
  %i.ady = xor i64 %i.acw, -1                     ; 2 uses
  br i1 %i.acn, label %.noexc66.i.i.i.i, label %bb.ew

.noexc66.i.i.i.i:                                 ; preds = %bb.ew, %_RNvMs3_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBE_7memoize10CacheEntryINtNvNtBE_5inputs1_1__9MultiCalluuuEINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEEE9insert_atCs4xylOWI7Ys4_12typst_render.exit.i.i.i.i
  br i1 %.sroa.021.0.i.i.i.i.off0, label %bb.ex, label %_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs1_1__9MultiCalluuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEE4linkCs4xylOWI7Ys4_12typst_render.exit69.i.i.i.i

bb.ew:                                            ; preds = %_RNvMs3_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBE_7memoize10CacheEntryINtNvNtBE_5inputs1_1__9MultiCalluuuEINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEEE9insert_atCs4xylOWI7Ys4_12typst_render.exit.i.i.i.i
  invoke fastcc void @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE6insertCs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture7___CACHE, i64 88), i128 noundef %i.ly, i64 noundef %i.ady)
          to label %.noexc66.i.i.i.i unwind label %.body.i.i.i.i

bb.ex:                                            ; preds = %.noexc66.i.i.i.i
  %.val1.i62.i.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture7___CACHE, i64 24), align 8, !noalias !1873, !noundef !5
  %i.adz = icmp ult i64 %.sroa.10.0.i.i.i.i.ph75, %.val1.i62.i.i.i.i
  br i1 %i.adz, label %bb.ey, label %bb.ez, !prof !19

bb.ey:                                            ; preds = %bb.ex
  %.val.i63.i.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture7___CACHE, i64 16), align 8, !noalias !1873, !nonnull !5, !noundef !5
  %i.aea = getelementptr inbounds nuw [32 x i8], ptr %.val.i63.i.i.i.i, i64 %.sroa.10.0.i.i.i.i.ph75 ; 2 uses
  %i.aeb = load i64, ptr %i.aea, align 8, !range !4, !noalias !1874, !noundef !5
  %.not.i.i64.i.i.i.i = icmp eq i64 %i.aeb, 2
  br i1 %.not.i.i64.i.i.i.i, label %bb.ez, label %_RNvXs5_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs1_1__9MultiCalluuuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutjE9index_mutCs4xylOWI7Ys4_12typst_render.exit.i65.i.i.i.i, !prof !17

bb.ez:                                            ; preds = %bb.ey, %bb.ex
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 11, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #31
          to label %.noexc67.i.i.i.i unwind label %.body.i.i.i.i, !noalias !1828

.noexc67.i.i.i.i:                                 ; preds = %bb.ez
  unreachable

_RNvXs5_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs1_1__9MultiCalluuuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutjE9index_mutCs4xylOWI7Ys4_12typst_render.exit.i65.i.i.i.i: ; preds = %bb.ey
  %i.aec = getelementptr inbounds nuw i8, ptr %i.aea, i64 16 ; 2 uses
  %i.aed = load i64, ptr %i.aec, align 8, !noalias !1875, !noundef !5
  %i.aee = add i64 %i.aed, 1
  store i64 %i.aee, ptr %i.aec, align 8, !noalias !1875
  invoke fastcc void @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE6insertCs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture7___CACHE, i64 120), i64 noundef %.sroa.10.0.i.i.i.i.ph75, i128 noundef %.sroa.17.0.i.i.i.i.ph76, i64 noundef %i.ady)
          to label %_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs1_1__9MultiCalluuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEE4linkCs4xylOWI7Ys4_12typst_render.exit69.i.i.i.i unwind label %.body.i.i.i.i

_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs1_1__9MultiCalluuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEE4linkCs4xylOWI7Ys4_12typst_render.exit69.i.i.i.i: ; preds = %_RNvXs5_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs1_1__9MultiCalluuuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutjE9index_mutCs4xylOWI7Ys4_12typst_render.exit.i65.i.i.i.i, %.noexc66.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1876)
  %.val4.i.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !1877, !noalias !1829 ; 2 uses
  %i.aef = icmp eq i64 %.val4.i.i.i.i.i, 0
  br i1 %i.aef, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs1_1__9MultiCalluuuEoEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i, label %bb.fa

bb.fa:                                            ; preds = %_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs1_1__9MultiCalluuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEE4linkCs4xylOWI7Ys4_12typst_render.exit69.i.i.i.i
  %i.aeg = shl nuw i64 %.val4.i.i.i.i.i, 5
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.xc, i64 noundef %i.aeg, i64 noundef range(i64 1, -9223372036854775807) 16) #26, !noalias !1878
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs1_1__9MultiCalluuuEoEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs1_1__9MultiCalluuuEoEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i: ; preds = %bb.fa, %_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs1_1__9MultiCalluuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEE4linkCs4xylOWI7Ys4_12typst_render.exit69.i.i.i.i
  %i.aeh = icmp eq i64 %i.xi, 0
  br i1 %i.aeh, label %bb.fg, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs1_1__9MultiCalluuuEoEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i
  %i.aei = icmp slt i64 %i.xi, 576460752303423487
  call void @llvm.assume(i1 %i.aei)
  %i.aej = shl i64 %i.xi, 5                       ; 2 uses
  %i.aek = add i64 %i.aej, 32                     ; 2 uses
  %i.ael = add nsw i64 %i.xi, 17
  %i.aem = add i64 %i.ael, %i.aek                 ; 4 uses
  %i.aen = icmp uge i64 %i.aem, %i.aek
  %i.aeo = icmp ult i64 %i.aem, 9223372036854775793
  call void @llvm.assume(i1 %i.aen)
  call void @llvm.assume(i1 %i.aeo)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.xj) ]
  %i.aep = icmp eq i64 %i.aem, 0
  br i1 %i.aep, label %bb.fg, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint12CallSequenceINtNvNtBG_5inputs1_1__9MultiCalluuuEEECs4xylOWI7Ys4_12typst_render.exit.sink.split.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint12CallSequenceINtNvNtBG_5inputs1_1__9MultiCalluuuEEECs4xylOWI7Ys4_12typst_render.exit.sink.split.i.i.i.i: ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i77.i.i.i.i, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i
  %.sink.i.i.i.i = phi i64 [ %i.aew, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i77.i.i.i.i ], [ %i.aej, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i ]
  %.sink257.i.i.i.i = phi i64 [ %i.aez, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i77.i.i.i.i ], [ %i.aem, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i ]
  %i.aeq = sub nuw nsw i64 -32, %.sink.i.i.i.i
  %i.aer = getelementptr inbounds i8, ptr %i.xj, i64 %i.aeq
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aer, i64 noundef %.sink257.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 16) #26, !noalias !1828
  br label %bb.fg

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo7memoize10CacheEntryINtNvNtBG_5inputs1_1__9MultiCalluuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i: ; preds = %bb.dy, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1879)
  %.val4.i72.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !1880, !noalias !1829 ; 2 uses
  %i.aes = icmp eq i64 %.val4.i72.i.i.i.i, 0
  br i1 %i.aes, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs1_1__9MultiCalluuuEoEEEECs4xylOWI7Ys4_12typst_render.exit.i74.i.i.i.i, label %bb.fb

bb.fb:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo7memoize10CacheEntryINtNvNtBG_5inputs1_1__9MultiCalluuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i
  %i.aet = shl nuw i64 %.val4.i72.i.i.i.i, 5
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.xc, i64 noundef %i.aet, i64 noundef range(i64 1, -9223372036854775807) 16) #26, !noalias !1881
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs1_1__9MultiCalluuuEoEEEECs4xylOWI7Ys4_12typst_render.exit.i74.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs1_1__9MultiCalluuuEoEEEECs4xylOWI7Ys4_12typst_render.exit.i74.i.i.i.i: ; preds = %bb.fb, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo7memoize10CacheEntryINtNvNtBG_5inputs1_1__9MultiCalluuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i
  %i.aeu = icmp eq i64 %i.xi, 0
  br i1 %i.aeu, label %bb.fg, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i77.i.i.i.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i77.i.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs1_1__9MultiCalluuuEoEEEECs4xylOWI7Ys4_12typst_render.exit.i74.i.i.i.i
  %i.aev = icmp slt i64 %i.xi, 576460752303423487
  call void @llvm.assume(i1 %i.aev)
  %i.aew = shl i64 %i.xi, 5                       ; 2 uses
  %i.aex = add i64 %i.aew, 32                     ; 2 uses
  %i.aey = add nsw i64 %i.xi, 17
  %i.aez = add i64 %i.aey, %i.aex                 ; 4 uses
  %i.afa = icmp uge i64 %i.aez, %i.aex
  %i.afb = icmp ult i64 %i.aez, 9223372036854775793
  call void @llvm.assume(i1 %i.afa)
  call void @llvm.assume(i1 %i.afb)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.xj) ]
  %i.afc = icmp eq i64 %i.aez, 0
  br i1 %i.afc, label %bb.fg, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint12CallSequenceINtNvNtBG_5inputs1_1__9MultiCalluuuEEECs4xylOWI7Ys4_12typst_render.exit.sink.split.i.i.i.i

.loopexit56.i.i.i.i:                              ; preds = %bb.ee, %_RNvXs5_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs1_1__9MultiCalluuuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutjE9index_mutCs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i, %bb.eb
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.lcssa54.i.i.i, ptr %i.wx, align 8, !noalias !1744
  br label %bb.fc

.loopexit.split-lp.i.i.i.i:                       ; preds = %.invoke.i.i59.i.i, %bb.dr
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.fc

bb.fc:                                            ; preds = %.loopexit.split-lp.i.i.i.i, %.loopexit56.i.i.i.i
  %lpad.phi.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i, %.loopexit56.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo7memoize10CacheEntryINtNvNtBG_5inputs1_1__9MultiCalluuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEECs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(40) %i.c) #28, !noalias !1851
  br label %.body.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i: ; preds = %bb.ff, %bb.fe, %bb.fd, %.body.i.i.i
  %eh.lpad-body3.i.i.i = phi { ptr, i32 } [ %.pn.i.i57.i.i, %.body.i.i.i ], [ %i.aff, %bb.fd ], [ %i.aff, %bb.fe ], [ %i.aff, %bb.ff ] ; 2 uses
  %i.afd = cmpxchg ptr @_RNvNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture7___CACHE, i64 8, i64 0 release monotonic, align 8, !noalias !1744
  %i.afe = extractvalue { i64, i1 } %i.afd, 1
  br i1 %i.afe, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs1_1__9MultiCalluuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEEECs4xylOWI7Ys4_12typst_render.exit.i.i, label %bb.db, !prof !19

bb.fd:                                            ; preds = %bb.dd, %bb.dc
  %i.aff = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %.not.i50.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.afg = atomicrmw sub ptr %.sroa.0.0.i42.i.i, i64 1 release, align 8, !noalias !1882
  %i.afh = icmp eq i64 %i.afg, 1
  br i1 %i.afh, label %bb.ff, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i

bb.ff:                                            ; preds = %bb.fe
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapE9drop_slowCs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.f) #25, !noalias !1798
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i

bb.fg:                                            ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i77.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs1_1__9MultiCalluuuEoEEEECs4xylOWI7Ys4_12typst_render.exit.i74.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint12CallSequenceINtNvNtBG_5inputs1_1__9MultiCalluuuEEECs4xylOWI7Ys4_12typst_render.exit.sink.split.i.i.i.i, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs1_1__9MultiCalluuuEoEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1744
  %i.afi = cmpxchg ptr @_RNvNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture7___CACHE, i64 8, i64 0 release monotonic, align 8, !noalias !1744
  %i.afj = extractvalue { i64, i1 } %i.afi, 1
  br i1 %i.afj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs1_1__9MultiCalluuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEEECs4xylOWI7Ys4_12typst_render.exit64.i.i, label %bb.fh, !prof !19

bb.fh:                                            ; preds = %bb.fg
  invoke void @_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 @_RNvNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture7___CACHE, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs1_1__9MultiCalluuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEEECs4xylOWI7Ys4_12typst_render.exit64.i.i unwind label %bb.cv, !noalias !1798

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs1_1__9MultiCalluuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEEECs4xylOWI7Ys4_12typst_render.exit64.i.i: ; preds = %bb.fh, %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !1744
  br label %_RINvNtCsloFShupyl5J_6comemo7memoize7memoizeINtNtB4_5input5MultiTRNtNtNtCsdaEETE4DqmE_13typst_library9visualize5image5ImagemmEEINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEENCNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture0EB3Y_.exit.i

bb.fi:                                            ; preds = %bb.db, %bb.al
  %i.afk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !1798
  unreachable

bb.fj:                                            ; preds = %bb.cs, %_RNvNtCs4xylOWI7Ys4_12typst_render5image17build_pdf_texture.exit.i.i.i, %bb.ar, %bb.ap, %bb.ao, %bb.an, %_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i, %bb.z, %_RNCNvMs0_NtCs6xpQEr8gLsQ_11typst_utils4hashINtB7_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library9visualize5image10ImageInnerE20load_or_compute_hash0Cs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i.i.i, %bb.u, %bb.t, %.noexc41.i, %bb.s, %_RINvXsj_NtNtCsdaEETE4DqmE_13typst_library9visualize5imageNtB6_9ImageKindNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i.i.i.i.i.i, %.noexc38.i, %_RINvXs1_NtNtNtCsdaEETE4DqmE_13typst_library9visualize5image3pdfNtB6_13PdfImageInnerNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc36.i, %.noexc35.i, %.noexc34.i, %bb.r, %bb.q, %.noexc31.i, %_RINvXs_NtNtNtCsdaEETE4DqmE_13typst_library9visualize5image3svgNtB5_13SvgImageInnerNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc29.i, %.noexc28.i, %.noexc27.i, %bb.p, %bb.o, %_RINvMse_NtCs6xpQEr8gLsQ_11typst_utils4hashNtB6_8HashLock18get_or_insert_withNCNvMs0_B6_INtB6_8LazyHashDNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes8BytelikeEL_E20load_or_compute_hash0ECs4xylOWI7Ys4_12typst_render.exit8.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc23.i, %.noexc22.i, %.noexc21.i, %bb.n, %bb.m, %_RINvXsf_NtNtNtCsdaEETE4DqmE_13typst_library9visualize5image6rasterNtB6_12RasterFormatNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.l, %.noexc16.i, %.noexc15.i, %bb.k, %.noexc13.i, %_RINvMse_NtCs6xpQEr8gLsQ_11typst_utils4hashNtB6_8HashLock18get_or_insert_withNCNvMs0_B6_INtB6_8LazyHashDNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes8BytelikeEL_E20load_or_compute_hash0ECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc11.i, %.noexc10.i, %.noexc9.i, %bb.j, %bb.i, %bb.h, %_RNvMs2_NtNtCsdaEETE4DqmE_13typst_library9visualize5imageNtB5_5Image6height.exit
  %i.afl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

common.resume:                                    ; preds = %bb.fn, %bb.fq, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.agd, %bb.fq ], [ %i.agd, %bb.fn ]
  resume { ptr, i32 } %common.resume.op

.body.i:                                          ; preds = %bb.fj, %bb.cu, %bb.ct, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs1_1__9MultiCalluuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEEECs4xylOWI7Ys4_12typst_render.exit.i.i, %bb.cl, %bb.ck, %bb.ch, %bb.cg, %bb.ce, %bb.cd, %bb.ba, %bb.at, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTINtCs8gjDJEnUBRO_10hayro_cmap8CMapNameL0_EEEp6OutputINtNtB4_6option6OptionRShENtNtB4_6marker4SendNtB2V_4SyncEL_EECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i, %bb.al, %bb.ak
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.afl, %bb.fj ], [ %i.uo, %bb.ck ], [ %i.ts, %bb.cd ], [ %.pn.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTINtCs8gjDJEnUBRO_10hayro_cmap8CMapNameL0_EEEp6OutputINtNtB4_6option6OptionRShENtNtB4_6marker4SendNtB2V_4SyncEL_EECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i ], [ %.pn16.i.i.i.i, %bb.ba ], [ %.pn.i.i.i.i, %bb.at ], [ %i.ts, %bb.ce ], [ %.pn.ph.i.i.i, %bb.ch ], [ %i.uo, %bb.cl ], [ %.pn.ph.i.i.i, %bb.cg ], [ %i.pg, %bb.ak ], [ %i.pg, %bb.al ], [ %.pn.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs1_1__9MultiCalluuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEEECs4xylOWI7Ys4_12typst_render.exit.i.i ], [ %.pn.i.i, %bb.ct ], [ %.pn.i.i, %bb.cu ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTTuuuEINtNtCsloFShupyl5J_6comemo10constraint10ConstraintINtNvNtBM_5inputs1_1__9MultiCalluuuEEEECs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef align 8 dereferenceable(96) %i.ap) #28, !noalias !1741
  br label %common.resume

_RINvNtCsloFShupyl5J_6comemo7memoize7memoizeINtNtB4_5input5MultiTRNtNtNtCsdaEETE4DqmE_13typst_library9visualize5image5ImagemmEEINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEENCNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture0EB3Y_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs1_1__9MultiCalluuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEEECs4xylOWI7Ys4_12typst_render.exit64.i.i, %bb.cs, %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEENtNtB7_5clone5Clone5cloneCs4xylOWI7Ys4_12typst_render.exit.i.i
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.0.i42.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs1_1__9MultiCalluuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEEECs4xylOWI7Ys4_12typst_render.exit64.i.i ], [ %.val35.i.i, %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEENtNtB7_5clone5Clone5cloneCs4xylOWI7Ys4_12typst_render.exit.i.i ], [ %.val35.i.i, %bb.cs ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1883)
  call void @llvm.experimental.noalias.scope.decl(metadata !1884)
  call void @llvm.experimental.noalias.scope.decl(metadata !1885)
  %i.afm = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1886)
  call void @llvm.experimental.noalias.scope.decl(metadata !1887)
  call void @llvm.experimental.noalias.scope.decl(metadata !1888)
  %.val4.i.i.i.i.i.i.i = load i64, ptr %i.afm, align 8, !alias.scope !1889, !noalias !1741 ; 2 uses
  %i.afn = icmp eq i64 %.val4.i.i.i.i.i.i.i, 0
  br i1 %i.afn, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs1_1__9MultiCalluuuEoEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i.i, label %bb.fk

bb.fk:                                            ; preds = %_RINvNtCsloFShupyl5J_6comemo7memoize7memoizeINtNtB4_5input5MultiTRNtNtNtCsdaEETE4DqmE_13typst_library9visualize5image5ImagemmEEINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEENCNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture0EB3Y_.exit.i
  %.val5.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !1889, !noalias !1741, !nonnull !5, !noundef !5
  %i.afo = shl nuw i64 %.val4.i.i.i.i.i.i.i, 5
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i.i.i, i64 noundef %i.afo, i64 noundef range(i64 1, -9223372036854775807) 16) #26, !noalias !1890
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs1_1__9MultiCalluuuEoEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs1_1__9MultiCalluuuEoEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i.i: ; preds = %bb.fk, %_RINvNtCsloFShupyl5J_6comemo7memoize7memoizeINtNtB4_5input5MultiTRNtNtNtCsdaEETE4DqmE_13typst_library9visualize5image5ImagemmEEINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEENCNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture0EB3Y_.exit.i
  %.val.i.i.i.i.i.i54.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !1889, !noalias !1741 ; 2 uses
  %i.afp = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.afp, align 8, !alias.scope !1889, !noalias !1741, !noundef !5 ; 4 uses
  %i.afq = icmp eq i64 %.val1.i.i.i.i.i.i.i, 0
  br i1 %i.afq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint12CallSequenceINtNvNtBG_5inputs1_1__9MultiCalluuuEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs1_1__9MultiCalluuuEoEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i.i
  %i.afr = icmp slt i64 %.val1.i.i.i.i.i.i.i, 576460752303423487
  call void @llvm.assume(i1 %i.afr)
  %i.afs = shl i64 %.val1.i.i.i.i.i.i.i, 5        ; 2 uses
  %i.aft = add i64 %i.afs, 32                     ; 2 uses
  %i.afu = add nsw i64 %.val1.i.i.i.i.i.i.i, 17
  %i.afv = add i64 %i.afu, %i.aft                 ; 4 uses
  %i.afw = icmp uge i64 %i.afv, %i.aft
  %i.afx = icmp ult i64 %i.afv, 9223372036854775793
  call void @llvm.assume(i1 %i.afw)
  call void @llvm.assume(i1 %i.afx)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i54.i) ]
  %i.afy = icmp eq i64 %i.afv, 0
  br i1 %i.afy, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint12CallSequenceINtNvNtBG_5inputs1_1__9MultiCalluuuEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i, label %bb.fl

bb.fl:                                            ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.afz = sub nuw nsw i64 -32, %i.afs
  %i.aga = getelementptr inbounds i8, ptr %.val.i.i.i.i.i.i54.i, i64 %i.afz
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aga, i64 noundef %i.afv, i64 noundef range(i64 1, -9223372036854775807) 16) #26, !noalias !1890
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint12CallSequenceINtNvNtBG_5inputs1_1__9MultiCalluuuEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint12CallSequenceINtNvNtBG_5inputs1_1__9MultiCalluuuEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i: ; preds = %bb.fl, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs1_1__9MultiCalluuuEoEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i.i
  %i.agb = getelementptr inbounds nuw i8, ptr %i.ap, i64 72
  %.val.i.i.i.i.i.i = load i64, ptr %i.agb, align 8, !alias.scope !1891, !noalias !1741 ; 2 uses
  %i.agc = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.agc, label %_RNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture.exit, label %bb.fm

bb.fm:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint12CallSequenceINtNvNtBG_5inputs1_1__9MultiCalluuuEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i
  %.val1.i.i.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !1891, !noalias !1741, !nonnull !5, !noundef !5
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !1892
  br label %_RNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture.exit

_RNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint12CallSequenceINtNvNtBG_5inputs1_1__9MultiCalluuuEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i, %bb.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !1741
  %.not = icmp eq ptr %.sroa.0.0.i.i, null
  br i1 %.not, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEECs4xylOWI7Ys4_12typst_render.exit49, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7painter5PaintECs4xylOWI7Ys4_12typst_render.exit

bb.fn:                                            ; preds = %bb.fp, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7painter5PaintECs4xylOWI7Ys4_12typst_render.exit
  %i.agd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7painter5PaintECs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef align 8 dereferenceable(104) %i.as) #28
  %i.age = atomicrmw sub ptr %.sroa.0.0.i.i, i64 1 release, align 8, !noalias !1893
  %i.agf = icmp eq i64 %i.age, 1
  br i1 %i.agf, label %bb.fq, label %common.resume

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7painter5PaintECs4xylOWI7Ys4_12typst_render.exit: ; preds = %_RNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture.exit
  store ptr %.sroa.0.0.i.i, ptr %i.at, align 8
  %i.agg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 40 ; 2 uses
  %i.agh = load <2 x i32>, ptr %i.agg, align 8
  %i.agi = uitofp <2 x i32> %i.agh to <2 x float>
  %i.agj = fdiv <2 x float> %i.az, %i.agi         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  %i.agk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 24
  %i.agl = load ptr, ptr %i.agk, align 8, !nonnull !5, !noundef !5
  %i.agm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 32
  %i.agn = load i64, ptr %i.agm, align 8, !noundef !5
  store i64 -9223372036854775804, ptr %i.as, align 8
  %i.ago = extractelement <2 x float> %i.agj, i64 0
  store float %i.ago, ptr %.sink6.i.i36.sroa.gep, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store <2 x float> zeroinitializer, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 4
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 20
  %i.agp = extractelement <2 x float> %i.agj, i64 1
  store float %i.agp, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx, align 4
  %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store <2 x float> zeroinitializer, ptr %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.9.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  store ptr %i.agl, ptr %.sroa.4.sroa.9.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.10.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %.sroa.4.sroa.11.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %i.agq = load <2 x i32>, ptr %i.agg, align 8
  store i64 %i.agn, ptr %.sroa.4.sroa.10.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  store <2 x i32> %i.agq, ptr %.sroa.4.sroa.11.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.13.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  store float 1.000000e+00, ptr %.sroa.4.sroa.13.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.14.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 60
  store i8 0, ptr %.sroa.4.sroa.14.0..sroa.4.0..sroa_idx.sroa_idx, align 4
  %.sroa.4.sroa.15.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 61
  store i8 0, ptr %.sroa.4.sroa.15.0..sroa.4.0..sroa_idx.sroa_idx, align 1
  %i.agr = getelementptr inbounds nuw i8, ptr %i.as, i64 96
  store <4 x i8> <i8 1, i8 0, i8 0, i8 3>, ptr %i.agr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  invoke void @_RNvMs0_NtCsd315radwPZ_14tiny_skia_path4rectNtB5_4Rect9from_xywh(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.ar, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %i.cj, float noundef %i.ch)
          to label %bb.fo unwind label %bb.fn

bb.fo:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7painter5PaintECs4xylOWI7Ys4_12typst_render.exit
  %i.ags = load i32, ptr %i.ar, align 4, !range !15, !noundef !5
  %i.agt = trunc nuw i32 %i.ags to i1
  br i1 %i.agt, label %bb.fp, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7painter5PaintECs4xylOWI7Ys4_12typst_render.exit40

bb.fp:                                            ; preds = %bb.fo
  %i.agu = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aq, ptr noundef nonnull align 4 dereferenceable(16) %i.agu, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  %i.agv = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.agw = load ptr, ptr %i.agv, align 8, !align !16, !noundef !5
  invoke void @_RNvMs0_NtCsfVrisfeHJNS_9tiny_skia7painterNtNtB7_6pixmap6Pixmap9fill_rect(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(16) %i.aq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.as, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(24) %i.au, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %i.agw)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7painter5PaintECs4xylOWI7Ys4_12typst_render.exit48 unwind label %bb.fn

bb.fq:                                            ; preds = %bb.fn
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapE9drop_slowCs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.at) #25
  br label %common.resume

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7painter5PaintECs4xylOWI7Ys4_12typst_render.exit40: ; preds = %bb.fo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  %i.agx = atomicrmw sub ptr %.sroa.0.0.i.i, i64 1 release, align 8, !noalias !1894
  %i.agy = icmp eq i64 %i.agx, 1
  br i1 %i.agy, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEECs4xylOWI7Ys4_12typst_render.exit49.sink.split, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEECs4xylOWI7Ys4_12typst_render.exit49

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEECs4xylOWI7Ys4_12typst_render.exit49.sink.split: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7painter5PaintECs4xylOWI7Ys4_12typst_render.exit40, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7painter5PaintECs4xylOWI7Ys4_12typst_render.exit48
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapE9drop_slowCs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.at) #25
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEECs4xylOWI7Ys4_12typst_render.exit49

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEECs4xylOWI7Ys4_12typst_render.exit49: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEECs4xylOWI7Ys4_12typst_render.exit49.sink.split, %_RNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7painter5PaintECs4xylOWI7Ys4_12typst_render.exit40, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7painter5PaintECs4xylOWI7Ys4_12typst_render.exit48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7painter5PaintECs4xylOWI7Ys4_12typst_render.exit48: ; preds = %bb.fp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  %i.agz = atomicrmw sub ptr %.sroa.0.0.i.i, i64 1 release, align 8, !noalias !1895
  %i.aha = icmp eq i64 %i.agz, 1
  br i1 %i.aha, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEECs4xylOWI7Ys4_12typst_render.exit49.sink.split, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEECs4xylOWI7Ys4_12typst_render.exit49
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCs4xylOWI7Ys4_12typst_render5paint11to_sk_paint(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(80) %2, i1 noundef zeroext %3, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(136) %5, i1 noundef zeroext %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 9 uses
  %i.b = alloca [56 x i8], align 8                ; 9 uses
  %i.c = alloca [40 x i8], align 8                ; 9 uses
  %i.d = alloca [88 x i8], align 8                ; 5 uses
  %i.e = alloca [64 x i8], align 8                ; 12 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [16 x i8], align 4                ; 6 uses
  %.sroa.846.i.i.i = alloca [16 x i8], align 8    ; 4 uses
  %i.j = alloca [20 x i8], align 4                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [32 x i8], align 8                ; 5 uses
  %i.m = alloca [32 x i8], align 8                ; 9 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [72 x i8], align 8                ; 73 uses
  %i.r = alloca [96 x i8], align 8                ; 19 uses
  %i.s = alloca [16 x i8], align 16               ; 4 uses
  %i.t = alloca [32 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 4                ; 4 uses
  %i.v = alloca [24 x i8], align 4                ; 4 uses
  %i.w = alloca [24 x i8], align 4                ; 4 uses
  %.sroa.569.sroa.0 = alloca [24 x i8], align 8   ; 4 uses
  %i.x = alloca [28 x i8], align 4                ; 5 uses
  %i.y = alloca [24 x i8], align 4                ; 4 uses
  %i.z = alloca [24 x i8], align 16               ; 6 uses
  %i.aa = alloca [24 x i8], align 4               ; 4 uses
  %.sroa.547.sroa.0 = alloca [24 x i8], align 8   ; 4 uses
  %i.ab = alloca [28 x i8], align 4               ; 5 uses
  %i.ac = alloca [24 x i8], align 4               ; 4 uses
  %i.ad = alloca [24 x i8], align 16              ; 6 uses
  %i.ae = alloca [20 x i8], align 4               ; 4 uses
  %i.af = alloca [16 x i8], align 16              ; 4 uses
  %i.ag = alloca [104 x i8], align 8              ; 25 uses
  %i.ah = alloca [32 x i8], align 16              ; 7 uses
  %.not.not = icmp eq ptr %5, null                ; 3 uses
  %.sink6.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 9 uses
  %.sink6.i.sroa.gep187 = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 4 uses
  br i1 %.not.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @_RNvMNtNtCsdaEETE4DqmE_13typst_library9visualize5shapeNtB2_5Shape4bbox(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ah, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %5, i1 noundef zeroext %6)
  %i.ai = load <2 x double>, ptr %i.ah, align 16  ; 5 uses
  %i.aj = fdiv <2 x double> %i.ai, splat (double 1.270000e+02)
  %i.ak = fptrunc <2 x double> %i.aj to <2 x float>
  %i.al = load i64, ptr %5, align 8, !range !11, !noundef !5
  %i.am = icmp eq i64 %i.al, -9223372036854775807
  br i1 %i.am, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ao = load double, ptr %i.an, align 8, !noundef !5 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aq = load double, ptr %i.ap, align 8, !noundef !5 ; 3 uses
  %i.ar = fcmp ord double %i.ao, 0.000000e+00     ; 2 uses
  %i.as = bitcast double %i.ao to i64
  %i.at = icmp slt i64 %i.as, 0
  %.sroa.014.0 = and i1 %i.ar, %i.at
  br i1 %.sroa.014.0, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.av = load double, ptr %i.au, align 16, !alias.scope !2386, !noundef !5
  %i.aw = extractelement <2 x double> %i.ai, i64 0 ; 2 uses
  %i.ax = fneg double %i.aw
  %i.ay = fcmp uno double %i.aw, 0.000000e+00
  %spec.store.select.i = select i1 %i.ay, double 0.000000e+00, double %i.ax
  %i.az = fadd double %spec.store.select.i, %i.av ; 2 uses
  %.inv.i = fcmp ord double %i.az, 0.000000e+00
  %.neg = fneg double %i.az
  %i.ba = select i1 %.inv.i, double %.neg, double -0.000000e+00
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.078.0 = phi double [ %i.ba, %bb.d ], [ 0.000000e+00, %bb.c ]
  %i.bb = fcmp ord double %i.aq, 0.000000e+00     ; 2 uses
  %i.bc = bitcast double %i.aq to i64
  %i.bd = icmp slt i64 %i.bc, 0
end_hunk_8
begin_hunk_9_@_RNvNtCs4xylOWI7Ys4_12typst_render5paint11to_sk_paint:bb.a
  store i64 %storemerge.i.i.i, ptr %i.bfq, align 8, !noalias !2395
  %i.blg = icmp eq i64 %.sroa.010.1.i.i.i.i, 1    ; 2 uses
  %or.cond32.i.i.i.i = and i1 %.not27.i.i.i.i, %i.blg
  br i1 %or.cond32.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.ff

_RNvMs3_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs2_1__9MultiCalluuuuEEE9insert_atCs4xylOWI7Ys4_12typst_render.exit.i.i.i.i: ; preds = %bb.fb, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtCsaixNeEcpA3e_4slab5EntryINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtB1c_5inputs2_1__9MultiCalluuuuEEEE8push_mutCs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i
  %.not.i.i.i.i = icmp eq i64 %.sroa.010.1.i.i.i.i, 1
  br i1 %.not.i.i.i.i, label %.noexc58.i.i.i.i, label %bb.fc

.noexc58.i.i.i.i:                                 ; preds = %bb.fc, %_RNvMs3_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs2_1__9MultiCalluuuuEEE9insert_atCs4xylOWI7Ys4_12typst_render.exit.i.i.i.i
  br i1 %.sroa.021.0.i.i.i.i.off0, label %bb.fd, label %_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs2_1__9MultiCalluuuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEE4linkCs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.outer.backedge

bb.fc:                                            ; preds = %_RNvMs3_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs2_1__9MultiCalluuuuEEE9insert_atCs4xylOWI7Ys4_12typst_render.exit.i.i.i.i
  invoke fastcc void @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE6insertCs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_RNvNvNvNtCs4xylOWI7Ys4_12typst_render5paint11to_sk_paint6cached7___CACHE, i64 88), i128 noundef %i.awl, i64 noundef %i.bkm)
          to label %.noexc58.i.i.i.i unwind label %.loopexit56.i.i.i.i

bb.fd:                                            ; preds = %.noexc58.i.i.i.i
  %.val1.i56.i.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNvNtCs4xylOWI7Ys4_12typst_render5paint11to_sk_paint6cached7___CACHE, i64 24), align 8, !noalias !2556, !noundef !5
  %i.blh = icmp ult i64 %.sroa.10.0.i.i.i.i.ph562, %.val1.i56.i.i.i.i
  br i1 %i.blh, label %bb.fe, label %.invoke.i.i.i.i, !prof !19

bb.fe:                                            ; preds = %bb.fd
  %.val.i57.i.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNvNtCs4xylOWI7Ys4_12typst_render5paint11to_sk_paint6cached7___CACHE, i64 16), align 8, !noalias !2556, !nonnull !5, !noundef !5
  %i.bli = getelementptr inbounds nuw [32 x i8], ptr %.val.i57.i.i.i.i, i64 %.sroa.10.0.i.i.i.i.ph562 ; 2 uses
  %i.blj = load i64, ptr %i.bli, align 8, !range !4, !noalias !2557, !noundef !5
  %.not.i.i.i.i.i.i = icmp eq i64 %i.blj, 2
  br i1 %.not.i.i.i.i.i.i, label %.invoke.i.i.i.i, label %_RNvXs5_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs2_1__9MultiCalluuuuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutjE9index_mutCs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i, !prof !17

_RNvXs5_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs2_1__9MultiCalluuuuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutjE9index_mutCs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i: ; preds = %bb.fe
  %i.blk = getelementptr inbounds nuw i8, ptr %i.bli, i64 16 ; 2 uses
  %i.bll = load i64, ptr %i.blk, align 8, !noalias !2558, !noundef !5
  %i.blm = add i64 %i.bll, 1
  store i64 %i.blm, ptr %i.blk, align 8, !noalias !2558
  invoke fastcc void @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE6insertCs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_RNvNvNvNtCs4xylOWI7Ys4_12typst_render5paint11to_sk_paint6cached7___CACHE, i64 120), i64 noundef %.sroa.10.0.i.i.i.i.ph562, i128 noundef %.sroa.17.0.i.i.i.i.ph563, i64 noundef %i.bkm)
          to label %_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs2_1__9MultiCalluuuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEE4linkCs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.outer.backedge unwind label %.loopexit56.i.i.i.i

_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs2_1__9MultiCalluuuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEE4linkCs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.outer.backedge: ; preds = %_RNvXs5_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs2_1__9MultiCalluuuuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutjE9index_mutCs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i, %.noexc58.i.i.i.i
  br label %_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs2_1__9MultiCalluuuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEE4linkCs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.outer

bb.ff:                                            ; preds = %.loopexit54.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2520
  %i.bln = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bln, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.c, i64 40, i1 false), !noalias !2551
  store i64 %.sroa.021.0.i.i.i.i.off0555, ptr %i.b, align 8, !noalias !2520
  %i.blo = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.10.0.i.i.i.i.ph562, ptr %i.blo, align 8, !noalias !2520
  %i.blp = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNvNtCs4xylOWI7Ys4_12typst_render5paint11to_sk_paint6cached7___CACHE, i64 80), align 8, !noalias !2520, !noundef !5 ; 7 uses
  %i.blq = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNvNtCs4xylOWI7Ys4_12typst_render5paint11to_sk_paint6cached7___CACHE, i64 72), align 8, !noalias !2559, !noundef !5
  %i.blr = add i64 %i.blq, 1
  store i64 %i.blr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNvNtCs4xylOWI7Ys4_12typst_render5paint11to_sk_paint6cached7___CACHE, i64 72), align 8, !noalias !2559
  %i.bls = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNvNtCs4xylOWI7Ys4_12typst_render5paint11to_sk_paint6cached7___CACHE, i64 64), align 8, !noalias !2559, !noundef !5 ; 3 uses
  %i.blt = icmp ult i64 %i.bls, 164703072086692426
  call void @llvm.assume(i1 %i.blt)
  %.not7.i.i.i.i.i = icmp eq i64 %i.blp, %i.bls
  br i1 %.not7.i.i.i.i.i, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.blu = icmp ult i64 %i.blp, %i.bls
  br i1 %i.blu, label %bb.fj, label %bb.fk, !prof !19

bb.fh:                                            ; preds = %bb.ff
  %i.blv = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNvNtCs4xylOWI7Ys4_12typst_render5paint11to_sk_paint6cached7___CACHE, i64 48), align 8, !range !8, !noalias !2560, !noundef !5
  %i.blw = icmp eq i64 %i.blp, %i.blv
  br i1 %i.blw, label %bb.fi, label %bb.fr

bb.fi:                                            ; preds = %bb.fh
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtCsaixNeEcpA3e_4slab5EntryINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtB1j_7memoize10CacheEntryINtNvNtB1j_5inputs2_1__9MultiCalluuuuEINtNtB7_4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEEE8grow_oneCs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_RNvNvNvNtCs4xylOWI7Ys4_12typst_render5paint11to_sk_paint6cached7___CACHE, i64 48))
          to label %bb.fr unwind label %bb.fq, !noalias !2561

bb.fj:                                            ; preds = %bb.fg
  %i.blx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNvNtCs4xylOWI7Ys4_12typst_render5paint11to_sk_paint6cached7___CACHE, i64 56), align 8, !noalias !2559, !nonnull !5, !noundef !5
  %i.bly = getelementptr inbounds nuw [56 x i8], ptr %i.blx, i64 %i.blp ; 7 uses
  %i.blz = load i64, ptr %i.bly, align 8, !range !4, !noalias !2562, !noundef !5
  %.not.i61.i.i.i.i = icmp eq i64 %i.blz, 2
  br i1 %.not.i61.i.i.i.i, label %bb.fl, label %bb.fk, !prof !19

bb.fk:                                            ; preds = %bb.fj, %bb.fg
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #29
          to label %bb.fp unwind label %bb.fs, !noalias !2562

bb.fl:                                            ; preds = %bb.fj
  %i.bma = getelementptr inbounds nuw i8, ptr %i.bly, i64 8
  %i.bmb = load i64, ptr %i.bma, align 8, !noalias !2562, !noundef !5
  store i64 %i.bmb, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNvNtCs4xylOWI7Ys4_12typst_render5paint11to_sk_paint6cached7___CACHE, i64 80), align 8, !noalias !2559
  call void @llvm.experimental.noalias.scope.decl(metadata !2563)
  %i.bmc = load i64, ptr %i.bly, align 8, !range !4, !alias.scope !2563, !noalias !2562, !noundef !5
  %i.bmd = icmp eq i64 %i.bmc, 2
  br i1 %i.bmd, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsaixNeEcpA3e_4slab5EntryINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtB18_7memoize10CacheEntryINtNvNtB18_5inputs2_1__9MultiCalluuuuEINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  call void @llvm.experimental.noalias.scope.decl(metadata !2564)
  %i.bme = getelementptr inbounds nuw i8, ptr %i.bly, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !2565)
  %i.bmf = getelementptr inbounds nuw i8, ptr %i.bly, i64 40 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2566)
  call void @llvm.experimental.noalias.scope.decl(metadata !2567)
  %i.bmg = load ptr, ptr %i.bmf, align 8, !alias.scope !2568, !noalias !2562, !nonnull !5, !noundef !5
  %i.bmh = atomicrmw sub ptr %i.bmg, i64 1 release, align 8, !noalias !2569
  %i.bmi = icmp eq i64 %i.bmh, 1
  br i1 %i.bmi, label %bb.fn, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i.i.i

bb.fn:                                            ; preds = %bb.fm
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapE9drop_slowCs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.bmf) #25, !noalias !2562
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i.i.i: ; preds = %bb.fn, %bb.fm
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.bme, align 8, !alias.scope !2570, !noalias !2562 ; 2 uses
  %i.bmj = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.bmj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsaixNeEcpA3e_4slab5EntryINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtB18_7memoize10CacheEntryINtNvNtB18_5inputs2_1__9MultiCalluuuuEINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i, label %bb.fo

bb.fo:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i.i.i
  %i.bmk = getelementptr inbounds nuw i8, ptr %i.bly, i64 24
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.bmk, align 8, !alias.scope !2570, !noalias !2562, !nonnull !5, !noundef !5
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2571
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsaixNeEcpA3e_4slab5EntryINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtB18_7memoize10CacheEntryINtNvNtB18_5inputs2_1__9MultiCalluuuuEINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i

bb.fp:                                            ; preds = %bb.fk
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsaixNeEcpA3e_4slab5EntryINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtB18_7memoize10CacheEntryINtNvNtB18_5inputs2_1__9MultiCalluuuuEINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i: ; preds = %bb.fo, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i.i.i, %bb.fl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bly, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.b, i64 56, i1 false), !noalias !2527
  br label %_RNvMs3_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBE_7memoize10CacheEntryINtNvNtBE_5inputs2_1__9MultiCalluuuuEINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEE9insert_atCs4xylOWI7Ys4_12typst_render.exit.i.i.i.i

bb.fq:                                            ; preds = %bb.fi
  %i.bml = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsaixNeEcpA3e_4slab5EntryINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtB18_7memoize10CacheEntryINtNvNtB18_5inputs2_1__9MultiCalluuuuEINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEEECs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(56) %i.b) #28, !noalias !2527
  br label %.body.i.i.i

bb.fr:                                            ; preds = %bb.fi, %bb.fh
  %i.bmm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNvNtCs4xylOWI7Ys4_12typst_render5paint11to_sk_paint6cached7___CACHE, i64 56), align 8, !noalias !2560, !nonnull !5, !noundef !5
  %i.bmn = getelementptr inbounds nuw [56 x i8], ptr %i.bmm, i64 %i.blp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bmn, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.b, i64 56, i1 false), !noalias !2527
  %i.bmo = add nuw nsw i64 %i.blp, 1              ; 2 uses
  store i64 %i.bmo, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNvNtCs4xylOWI7Ys4_12typst_render5paint11to_sk_paint6cached7___CACHE, i64 64), align 8, !noalias !2560
  store i64 %i.bmo, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNvNtCs4xylOWI7Ys4_12typst_render5paint11to_sk_paint6cached7___CACHE, i64 80), align 8, !noalias !2559
  br label %_RNvMs3_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBE_7memoize10CacheEntryINtNvNtBE_5inputs2_1__9MultiCalluuuuEINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEE9insert_atCs4xylOWI7Ys4_12typst_render.exit.i.i.i.i

bb.fs:                                            ; preds = %bb.fk
  %i.bmp = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBG_7memoize10CacheEntryINtNvNtBG_5inputs2_1__9MultiCalluuuuEINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEECs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(56) %i.b) #28, !noalias !2527
  br label %.body.i.i.i

_RNvMs3_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBE_7memoize10CacheEntryINtNvNtBE_5inputs2_1__9MultiCalluuuuEINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEE9insert_atCs4xylOWI7Ys4_12typst_render.exit.i.i.i.i: ; preds = %bb.fr, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsaixNeEcpA3e_4slab5EntryINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtB18_7memoize10CacheEntryINtNvNtB18_5inputs2_1__9MultiCalluuuuEINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2520
  %i.bmq = xor i64 %i.blp, -1                     ; 2 uses
  br i1 %i.blg, label %.noexc66.i.i.i.i, label %bb.ft

.noexc66.i.i.i.i:                                 ; preds = %bb.ft, %_RNvMs3_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBE_7memoize10CacheEntryINtNvNtBE_5inputs2_1__9MultiCalluuuuEINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEE9insert_atCs4xylOWI7Ys4_12typst_render.exit.i.i.i.i
  br i1 %.sroa.021.0.i.i.i.i.off0, label %bb.fu, label %_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs2_1__9MultiCalluuuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEE4linkCs4xylOWI7Ys4_12typst_render.exit69.i.i.i.i

bb.ft:                                            ; preds = %_RNvMs3_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBE_7memoize10CacheEntryINtNvNtBE_5inputs2_1__9MultiCalluuuuEINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEE9insert_atCs4xylOWI7Ys4_12typst_render.exit.i.i.i.i
  invoke fastcc void @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE6insertCs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_RNvNvNvNtCs4xylOWI7Ys4_12typst_render5paint11to_sk_paint6cached7___CACHE, i64 88), i128 noundef %i.awl, i64 noundef %i.bmq)
          to label %.noexc66.i.i.i.i unwind label %.body.i.i.i.i

bb.fu:                                            ; preds = %.noexc66.i.i.i.i
  %.val1.i62.i.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNvNtCs4xylOWI7Ys4_12typst_render5paint11to_sk_paint6cached7___CACHE, i64 24), align 8, !noalias !2572, !noundef !5
  %i.bmr = icmp ult i64 %.sroa.10.0.i.i.i.i.ph562, %.val1.i62.i.i.i.i
  br i1 %i.bmr, label %bb.fv, label %bb.fw, !prof !19

bb.fv:                                            ; preds = %bb.fu
  %.val.i63.i.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNvNtCs4xylOWI7Ys4_12typst_render5paint11to_sk_paint6cached7___CACHE, i64 16), align 8, !noalias !2572, !nonnull !5, !noundef !5
  %i.bms = getelementptr inbounds nuw [32 x i8], ptr %.val.i63.i.i.i.i, i64 %.sroa.10.0.i.i.i.i.ph562 ; 2 uses
  %i.bmt = load i64, ptr %i.bms, align 8, !range !4, !noalias !2573, !noundef !5
  %.not.i.i64.i.i.i.i = icmp eq i64 %i.bmt, 2
  br i1 %.not.i.i64.i.i.i.i, label %bb.fw, label %_RNvXs5_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs2_1__9MultiCalluuuuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutjE9index_mutCs4xylOWI7Ys4_12typst_render.exit.i65.i.i.i.i, !prof !17

bb.fw:                                            ; preds = %bb.fv, %bb.fu
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 11, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #31
          to label %.noexc67.i.i.i.i unwind label %.body.i.i.i.i, !noalias !2527

.noexc67.i.i.i.i:                                 ; preds = %bb.fw
  unreachable

_RNvXs5_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs2_1__9MultiCalluuuuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutjE9index_mutCs4xylOWI7Ys4_12typst_render.exit.i65.i.i.i.i: ; preds = %bb.fv
  %i.bmu = getelementptr inbounds nuw i8, ptr %i.bms, i64 16 ; 2 uses
  %i.bmv = load i64, ptr %i.bmu, align 8, !noalias !2574, !noundef !5
  %i.bmw = add i64 %i.bmv, 1
  store i64 %i.bmw, ptr %i.bmu, align 8, !noalias !2574
  invoke fastcc void @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE6insertCs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_RNvNvNvNtCs4xylOWI7Ys4_12typst_render5paint11to_sk_paint6cached7___CACHE, i64 120), i64 noundef %.sroa.10.0.i.i.i.i.ph562, i128 noundef %.sroa.17.0.i.i.i.i.ph563, i64 noundef %i.bmq)
          to label %_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs2_1__9MultiCalluuuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEE4linkCs4xylOWI7Ys4_12typst_render.exit69.i.i.i.i unwind label %.body.i.i.i.i

_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs2_1__9MultiCalluuuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEE4linkCs4xylOWI7Ys4_12typst_render.exit69.i.i.i.i: ; preds = %_RNvXs5_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs2_1__9MultiCalluuuuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutjE9index_mutCs4xylOWI7Ys4_12typst_render.exit.i65.i.i.i.i, %.noexc66.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2575)
  %.val.i70.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !2576, !noalias !2528 ; 2 uses
  %i.bmx = icmp eq i64 %.val.i70.i.i.i.i, 0
  br i1 %i.bmx, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs2_1__9MultiCalluuuuEoEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i, label %bb.fx

bb.fx:                                            ; preds = %_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs2_1__9MultiCalluuuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEE4linkCs4xylOWI7Ys4_12typst_render.exit69.i.i.i.i
  %i.bmy = shl nuw i64 %.val.i70.i.i.i.i, 5
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bfv, i64 noundef %i.bmy, i64 noundef range(i64 1, -9223372036854775807) 16) #26, !noalias !2577
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs2_1__9MultiCalluuuuEoEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs2_1__9MultiCalluuuuEoEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i: ; preds = %bb.fx, %_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs2_1__9MultiCalluuuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEE4linkCs4xylOWI7Ys4_12typst_render.exit69.i.i.i.i
  %i.bmz = icmp eq i64 %i.bgb, 0
  br i1 %i.bmz, label %bb.gc, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs2_1__9MultiCalluuuuEoEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i
  %i.bna = icmp slt i64 %i.bgb, 576460752303423487
  call void @llvm.assume(i1 %i.bna)
  %i.bnb = shl i64 %i.bgb, 5                      ; 2 uses
  %i.bnc = add i64 %i.bnb, 32                     ; 2 uses
  %i.bnd = add nsw i64 %i.bgb, 17
  %i.bne = add i64 %i.bnd, %i.bnc                 ; 4 uses
  %i.bnf = icmp uge i64 %i.bne, %i.bnc
  %i.bng = icmp ult i64 %i.bne, 9223372036854775793
  call void @llvm.assume(i1 %i.bnf)
  call void @llvm.assume(i1 %i.bng)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bgc) ]
  %i.bnh = icmp eq i64 %i.bne, 0
  br i1 %i.bnh, label %bb.gc, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint12CallSequenceINtNvNtBG_5inputs2_1__9MultiCalluuuuEEECs4xylOWI7Ys4_12typst_render.exit.sink.split.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint12CallSequenceINtNvNtBG_5inputs2_1__9MultiCalluuuuEEECs4xylOWI7Ys4_12typst_render.exit.sink.split.i.i.i.i: ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i77.i.i.i.i, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i
  %.sink.i.i.i.i = phi i64 [ %i.bno, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i77.i.i.i.i ], [ %i.bnb, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i ]
  %.sink255.i.i.i.i = phi i64 [ %i.bnr, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i77.i.i.i.i ], [ %i.bne, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i ]
  %i.bni = sub nuw nsw i64 -32, %.sink.i.i.i.i
  %i.bnj = getelementptr inbounds i8, ptr %i.bgc, i64 %i.bni
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bnj, i64 noundef %.sink255.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 16) #26, !noalias !2527
  br label %bb.gc

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo7memoize10CacheEntryINtNvNtBG_5inputs2_1__9MultiCalluuuuEINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i: ; preds = %bb.ew, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2578)
  %.val.i72.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !2579, !noalias !2528 ; 2 uses
  %i.bnk = icmp eq i64 %.val.i72.i.i.i.i, 0
  br i1 %i.bnk, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs2_1__9MultiCalluuuuEoEEEECs4xylOWI7Ys4_12typst_render.exit.i74.i.i.i.i, label %bb.fy

bb.fy:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo7memoize10CacheEntryINtNvNtBG_5inputs2_1__9MultiCalluuuuEINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i
  %i.bnl = shl nuw i64 %.val.i72.i.i.i.i, 5
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bfv, i64 noundef %i.bnl, i64 noundef range(i64 1, -9223372036854775807) 16) #26, !noalias !2580
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs2_1__9MultiCalluuuuEoEEEECs4xylOWI7Ys4_12typst_render.exit.i74.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs2_1__9MultiCalluuuuEoEEEECs4xylOWI7Ys4_12typst_render.exit.i74.i.i.i.i: ; preds = %bb.fy, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo7memoize10CacheEntryINtNvNtBG_5inputs2_1__9MultiCalluuuuEINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i
  %i.bnm = icmp eq i64 %i.bgb, 0
  br i1 %i.bnm, label %bb.gc, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i77.i.i.i.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i77.i.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs2_1__9MultiCalluuuuEoEEEECs4xylOWI7Ys4_12typst_render.exit.i74.i.i.i.i
  %i.bnn = icmp slt i64 %i.bgb, 576460752303423487
  call void @llvm.assume(i1 %i.bnn)
  %i.bno = shl i64 %i.bgb, 5                      ; 2 uses
  %i.bnp = add i64 %i.bno, 32                     ; 2 uses
  %i.bnq = add nsw i64 %i.bgb, 17
  %i.bnr = add i64 %i.bnq, %i.bnp                 ; 4 uses
  %i.bns = icmp uge i64 %i.bnr, %i.bnp
  %i.bnt = icmp ult i64 %i.bnr, 9223372036854775793
  call void @llvm.assume(i1 %i.bns)
  call void @llvm.assume(i1 %i.bnt)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bgc) ]
  %i.bnu = icmp eq i64 %i.bnr, 0
  br i1 %i.bnu, label %bb.gc, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint12CallSequenceINtNvNtBG_5inputs2_1__9MultiCalluuuuEEECs4xylOWI7Ys4_12typst_render.exit.sink.split.i.i.i.i

.loopexit56.i.i.i.i:                              ; preds = %bb.fc, %_RNvXs5_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs2_1__9MultiCalluuuuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutjE9index_mutCs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i, %bb.ez
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.lcssa54.i.i.i, ptr %i.bfq, align 8, !noalias !2395
  br label %bb.fz

.loopexit.split-lp.i.i.i.i:                       ; preds = %.invoke.i.i.i.i, %bb.eq
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.fz

bb.fz:                                            ; preds = %.loopexit.split-lp.i.i.i.i, %.loopexit56.i.i.i.i
  %lpad.phi.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i, %.loopexit56.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo7memoize10CacheEntryINtNvNtBG_5inputs2_1__9MultiCalluuuuEINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(40) %i.c) #28, !noalias !2549
  br label %.body.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEECs4xylOWI7Ys4_12typst_render.exit.i.i.i: ; preds = %bb.gb, %bb.ga, %.body.i.i.i
  %eh.lpad-body3.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i, %.body.i.i.i ], [ %i.bnx, %bb.ga ], [ %i.bnx, %bb.gb ] ; 2 uses
  %i.bnv = cmpxchg ptr @_RNvNvNvNtCs4xylOWI7Ys4_12typst_render5paint11to_sk_paint6cached7___CACHE, i64 8, i64 0 release monotonic, align 8, !noalias !2395
  %i.bnw = extractvalue { i64, i1 } %i.bnv, 1
  br i1 %i.bnw, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs2_1__9MultiCalluuuuEINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEECs4xylOWI7Ys4_12typst_render.exit.i.i, label %bb.ea, !prof !19

bb.ga:                                            ; preds = %bb.ec, %bb.eb
  %i.bnx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bny = atomicrmw sub ptr %i.bau, i64 1 release, align 8, !noalias !2581
  %i.bnz = icmp eq i64 %i.bny, 1
  br i1 %i.bnz, label %bb.gb, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEECs4xylOWI7Ys4_12typst_render.exit.i.i.i

bb.gb:                                            ; preds = %bb.ga
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapE9drop_slowCs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.f) #25, !noalias !2492
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEECs4xylOWI7Ys4_12typst_render.exit.i.i.i

bb.gc:                                            ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i77.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs2_1__9MultiCalluuuuEoEEEECs4xylOWI7Ys4_12typst_render.exit.i74.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint12CallSequenceINtNvNtBG_5inputs2_1__9MultiCalluuuuEEECs4xylOWI7Ys4_12typst_render.exit.sink.split.i.i.i.i, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs2_1__9MultiCalluuuuEoEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2395
  %i.boa = cmpxchg ptr @_RNvNvNvNtCs4xylOWI7Ys4_12typst_render5paint11to_sk_paint6cached7___CACHE, i64 8, i64 0 release monotonic, align 8, !noalias !2395
  %i.bob = extractvalue { i64, i1 } %i.boa, 1
  br i1 %i.bob, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs2_1__9MultiCalluuuuEINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEECs4xylOWI7Ys4_12typst_render.exit61.i.i, label %bb.gd, !prof !19

bb.gd:                                            ; preds = %bb.gc
  invoke void @_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 @_RNvNvNvNtCs4xylOWI7Ys4_12typst_render5paint11to_sk_paint6cached7___CACHE, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs2_1__9MultiCalluuuuEINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEECs4xylOWI7Ys4_12typst_render.exit61.i.i unwind label %bb.dv, !noalias !2492

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs2_1__9MultiCalluuuuEINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEECs4xylOWI7Ys4_12typst_render.exit61.i.i: ; preds = %bb.gd, %bb.gc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2395
  br label %_RINvNtCsloFShupyl5J_6comemo7memoize7memoizeINtNtB4_5input5MultiTRNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient8GradientmmINtNtCs3oUPovFnLWP_4core6option6OptionTNtNtNtB17_6layout5point5PointINtNtB2L_4axes4AxesNtNtB2L_5ratio5RatioEEEEEINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapENCNvNvNtCs4xylOWI7Ys4_12typst_render5paint11to_sk_paint6cached0EB5f_.exit.i

bb.ge:                                            ; preds = %bb.ea, %bb.cq
  %i.boc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !2492
  unreachable

bb.gf:                                            ; preds = %bb.dt, %bb.cu, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock15RwLockReadGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2n_5inputs2_1__9MultiCalluuuuEINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEECs4xylOWI7Ys4_12typst_render.exit43.i.i, %bb.cs, %_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i, %bb.ce, %bb.bk, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs4xylOWI7Ys4_12typst_render.exit.i17.i.i.i.i.i.i, %bb.av, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs4xylOWI7Ys4_12typst_render.exit.i5.i.i.i.i.i.i, %bb.ag, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i.i
  %i.bod = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.gf, %bb.du, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs2_1__9MultiCalluuuuEINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEECs4xylOWI7Ys4_12typst_render.exit.i.i, %bb.dq, %.thread.i.i.i, %bb.cx, %bb.cw, %bb.cq, %bb.cp
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bod, %bb.gf ], [ %i.baw, %bb.cx ], [ %.pn53.i.i.i, %bb.dq ], [ %i.baw, %bb.cw ], [ %.pn53.i.i.i, %.thread.i.i.i ], [ %i.azt, %bb.cp ], [ %i.azt, %bb.cq ], [ %.pn.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs2_1__9MultiCalluuuuEINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEECs4xylOWI7Ys4_12typst_render.exit.i.i ], [ %.pn.i.i, %bb.du ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTTuuuuEINtNtCsloFShupyl5J_6comemo10constraint10ConstraintINtNvNtBN_5inputs2_1__9MultiCalluuuuEEEECs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef align 8 dereferenceable(96) %i.r) #28, !noalias !2403
  br label %.body

_RINvNtCsloFShupyl5J_6comemo7memoize7memoizeINtNtB4_5input5MultiTRNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient8GradientmmINtNtCs3oUPovFnLWP_4core6option6OptionTNtNtNtB17_6layout5point5PointINtNtB2L_4axes4AxesNtNtB2L_5ratio5RatioEEEEEINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapENCNvNvNtCs4xylOWI7Ys4_12typst_render5paint11to_sk_paint6cached0EB5f_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs2_1__9MultiCalluuuuEINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEECs4xylOWI7Ys4_12typst_render.exit61.i.i, %bb.dt, %_RNvXsu_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs4xylOWI7Ys4_12typst_render.exit.i.i
  %.sroa.0.0.i.i = phi ptr [ %i.bau, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs2_1__9MultiCalluuuuEINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEECs4xylOWI7Ys4_12typst_render.exit61.i.i ], [ %.val35.i.i, %_RNvXsu_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs4xylOWI7Ys4_12typst_render.exit.i.i ], [ %.val35.i.i, %bb.dt ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2582)
  call void @llvm.experimental.noalias.scope.decl(metadata !2583)
  call void @llvm.experimental.noalias.scope.decl(metadata !2584)
  %i.boe = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2585)
  call void @llvm.experimental.noalias.scope.decl(metadata !2586)
  call void @llvm.experimental.noalias.scope.decl(metadata !2587)
  %.val.i.i.i.i.i.i19.i = load i64, ptr %i.boe, align 8, !alias.scope !2588, !noalias !2392 ; 2 uses
  %i.bof = icmp eq i64 %.val.i.i.i.i.i.i19.i, 0
  br i1 %i.bof, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs2_1__9MultiCalluuuuEoEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i.i, label %bb.gg

bb.gg:                                            ; preds = %_RINvNtCsloFShupyl5J_6comemo7memoize7memoizeINtNtB4_5input5MultiTRNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient8GradientmmINtNtCs3oUPovFnLWP_4core6option6OptionTNtNtNtB17_6layout5point5PointINtNtB2L_4axes4AxesNtNtB2L_5ratio5RatioEEEEEINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapENCNvNvNtCs4xylOWI7Ys4_12typst_render5paint11to_sk_paint6cached0EB5f_.exit.i
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !2588, !noalias !2392, !nonnull !5, !noundef !5
  %i.bog = shl nuw i64 %.val.i.i.i.i.i.i19.i, 5
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %i.bog, i64 noundef range(i64 1, -9223372036854775807) 16) #26, !noalias !2589
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs2_1__9MultiCalluuuuEoEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs2_1__9MultiCalluuuuEoEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i.i: ; preds = %bb.gg, %_RINvNtCsloFShupyl5J_6comemo7memoize7memoizeINtNtB4_5input5MultiTRNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient8GradientmmINtNtCs3oUPovFnLWP_4core6option6OptionTNtNtNtB17_6layout5point5PointINtNtB2L_4axes4AxesNtNtB2L_5ratio5RatioEEEEEINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapENCNvNvNtCs4xylOWI7Ys4_12typst_render5paint11to_sk_paint6cached0EB5f_.exit.i
  %.val2.i.i.i.i.i.i20.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2588, !noalias !2392 ; 2 uses
  %i.boh = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %.val3.i.i.i.i.i.i21.i = load i64, ptr %i.boh, align 8, !alias.scope !2588, !noalias !2392, !noundef !5 ; 4 uses
  %i.boi = icmp eq i64 %.val3.i.i.i.i.i.i21.i, 0
  br i1 %i.boi, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint12CallSequenceINtNvNtBG_5inputs2_1__9MultiCalluuuuEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs2_1__9MultiCalluuuuEoEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i.i
  %i.boj = icmp slt i64 %.val3.i.i.i.i.i.i21.i, 576460752303423487
  call void @llvm.assume(i1 %i.boj)
  %i.bok = shl i64 %.val3.i.i.i.i.i.i21.i, 5      ; 2 uses
  %i.bol = add i64 %i.bok, 32                     ; 2 uses
  %i.bom = add nsw i64 %.val3.i.i.i.i.i.i21.i, 17
  %i.bon = add i64 %i.bom, %i.bol                 ; 4 uses
  %i.boo = icmp uge i64 %i.bon, %i.bol
  %i.bop = icmp ult i64 %i.bon, 9223372036854775793
  call void @llvm.assume(i1 %i.boo)
  call void @llvm.assume(i1 %i.bop)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i.i.i.i.i20.i) ]
  %i.boq = icmp eq i64 %i.bon, 0
  br i1 %i.boq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint12CallSequenceINtNvNtBG_5inputs2_1__9MultiCalluuuuEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i, label %bb.gh

bb.gh:                                            ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bor = sub nuw nsw i64 -32, %i.bok
  %i.bos = getelementptr inbounds i8, ptr %.val2.i.i.i.i.i.i20.i, i64 %i.bor
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bos, i64 noundef %i.bon, i64 noundef range(i64 1, -9223372036854775807) 16) #26, !noalias !2589
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint12CallSequenceINtNvNtBG_5inputs2_1__9MultiCalluuuuEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint12CallSequenceINtNvNtBG_5inputs2_1__9MultiCalluuuuEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i: ; preds = %bb.gh, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs2_1__9MultiCalluuuuEoEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i.i
  %i.bot = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %.val.i.i.i.i.i22.i = load i64, ptr %i.bot, align 8, !alias.scope !2590, !noalias !2392 ; 2 uses
  %i.bou = icmp eq i64 %.val.i.i.i.i.i22.i, 0
  br i1 %i.bou, label %bb.gj, label %bb.gi

bb.gi:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint12CallSequenceINtNvNtBG_5inputs2_1__9MultiCalluuuuEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i
  %.val1.i.i.i.i.i23.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !2590, !noalias !2392, !nonnull !5, !noundef !5
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i23.i, i64 noundef %.val.i.i.i.i.i22.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2591
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint12CallSequenceINtNvNtBG_5inputs2_1__9MultiCalluuuuEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2392
  call void @llvm.experimental.noalias.scope.decl(metadata !2592)
  %i.bov = load ptr, ptr %4, align 8, !alias.scope !2592, !noundef !5 ; 2 uses
  %i.bow = icmp eq ptr %i.bov, null
  br i1 %i.bow, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.box = atomicrmw sub ptr %i.bov, i64 1 release, align 8, !noalias !2593
  %i.boy = icmp eq i64 %i.box, 1
  br i1 %i.boy, label %bb.gl, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit

bb.gl:                                            ; preds = %bb.gk
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapE9drop_slowCs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %4) #25
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit: ; preds = %bb.gl, %bb.gk, %bb.gj
  store ptr %.sroa.0.0.i.i, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.547.sroa.0)
  %i.boz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 24
  %i.bpa = load ptr, ptr %i.boz, align 8, !nonnull !5, !noundef !5
  %i.bpb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 32
  %i.bpc = load i64, ptr %i.bpb, align 8, !noundef !5
  %i.bpd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 40
  %i.bpe = load <2 x i32>, ptr %i.bpd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.bpf = fcmp uno <2 x double> %i.dh, zeroinitializer
  %i.bpg = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 1.000000e+00), <2 x double> %i.dh)
  %i.bph = fptrunc <2 x double> %i.bpg to <2 x float>
  %i.bpi = select <2 x i1> %i.bpf, <2 x float> splat (float +qnan), <2 x float> %i.bph
  %i.bpj = insertelement <2 x float> poison, float %i.ee, i64 0
  %i.bpk = shufflevector <2 x float> %i.bpj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bpl = fdiv <2 x float> %i.bpi, %i.bpk        ; 2 uses
  %i.bpm = extractelement <2 x float> %i.bpl, i64 0
  %i.bpn = extractelement <2 x float> %i.bpl, i64 1
  invoke void @_RNvMs_NtCsd315radwPZ_14tiny_skia_path9transformNtB4_9Transform9pre_scale(ptr noalias nofree noundef nonnull sret([24 x i8]) align 4 captures(address) dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.ad, float noundef %i.bpm, float noundef %i.bpn)
          to label %bb.gm unwind label %bb.m

bb.gm:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.547.sroa.0, ptr noundef nonnull align 4 dereferenceable(24) %i.aa, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.experimental.noalias.scope.decl(metadata !2594)
  %i.bpo = load i64, ptr %i.ag, align 8, !range !9, !alias.scope !2594, !noundef !5 ; 5 uses
  %i.bpp = icmp ne i64 %i.bpo, -9223372036854775806
  call void @llvm.assume(i1 %i.bpp)
  %i.bpq = xor i64 %i.bpo, -9223372036854775808
  %i.bpr = icmp slt i64 %i.bpo, 0
  %i.bps = select i1 %i.bpr, i64 %i.bpq, i64 2
  switch i64 %i.bps, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7shaders6ShaderECs4xylOWI7Ys4_12typst_render.exit [
    i64 1, label %bb.gn
    i64 2, label %bb.go
    i64 3, label %bb.gp
  ]

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsfVrisfeHJNS_9tiny_skia7shaders15linear_gradient14LinearGradientECs4xylOWI7Ys4_12typst_render.exit.sink.split.i: ; preds = %bb.gp, %bb.go, %bb.gn
  %.sink6.i.sroa.phi = phi ptr [ %.sink6.i.sroa.gep, %bb.go ], [ %.sink6.i.sroa.gep187, %bb.gn ], [ %.sink6.i.sroa.gep187, %bb.gp ]
  %.val4.sink.i = phi i64 [ %i.bpo, %bb.go ], [ %.val.i, %bb.gn ], [ %.val4.i, %bb.gp ]
  %.val5.i = load ptr, ptr %.sink6.i.sroa.phi, align 8, !alias.scope !2594, !nonnull !5, !noundef !5
  %i.bpt = mul nuw i64 %.val4.sink.i, 20
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i, i64 noundef %i.bpt, i64 noundef range(i64 1, -9223372036854775807) 4) #26, !noalias !2594
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7shaders6ShaderECs4xylOWI7Ys4_12typst_render.exit

bb.gn:                                            ; preds = %bb.gm
  %.val.i = load i64, ptr %.sink6.i.sroa.gep, align 8, !alias.scope !2594 ; 2 uses
  %i.bpu = icmp eq i64 %.val.i, 0
  br i1 %i.bpu, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7shaders6ShaderECs4xylOWI7Ys4_12typst_render.exit, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsfVrisfeHJNS_9tiny_skia7shaders15linear_gradient14LinearGradientECs4xylOWI7Ys4_12typst_render.exit.sink.split.i

bb.go:                                            ; preds = %bb.gm
  %i.bpv = icmp eq i64 %i.bpo, 0
  br i1 %i.bpv, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7shaders6ShaderECs4xylOWI7Ys4_12typst_render.exit, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsfVrisfeHJNS_9tiny_skia7shaders15linear_gradient14LinearGradientECs4xylOWI7Ys4_12typst_render.exit.sink.split.i

bb.gp:                                            ; preds = %bb.gm
  %.val4.i = load i64, ptr %.sink6.i.sroa.gep, align 8, !alias.scope !2594 ; 2 uses
  %i.bpw = icmp eq i64 %.val4.i, 0
  br i1 %i.bpw, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7shaders6ShaderECs4xylOWI7Ys4_12typst_render.exit, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsfVrisfeHJNS_9tiny_skia7shaders15linear_gradient14LinearGradientECs4xylOWI7Ys4_12typst_render.exit.sink.split.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7shaders6ShaderECs4xylOWI7Ys4_12typst_render.exit: ; preds = %bb.gp, %bb.go, %bb.gn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsfVrisfeHJNS_9tiny_skia7shaders15linear_gradient14LinearGradientECs4xylOWI7Ys4_12typst_render.exit.sink.split.i, %bb.gm
  store i64 -9223372036854775804, ptr %i.ag, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sink6.i.sroa.gep, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.547.sroa.0, i64 24, i1 false)
  %.sroa.547.sroa.5.0..sroa.547.0..sroa_idx48.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  store ptr %i.bpa, ptr %.sroa.547.sroa.5.0..sroa.547.0..sroa_idx48.sroa_idx, align 8
  %.sroa.547.sroa.6.0..sroa.547.0..sroa_idx48.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  store i64 %i.bpc, ptr %.sroa.547.sroa.6.0..sroa.547.0..sroa_idx48.sroa_idx, align 8
  %.sroa.547.sroa.7.0..sroa.547.0..sroa_idx48.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  store <2 x i32> %i.bpe, ptr %.sroa.547.sroa.7.0..sroa.547.0..sroa_idx48.sroa_idx, align 8
  %.sroa.547.sroa.9.0..sroa.547.0..sroa_idx48.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  store float 1.000000e+00, ptr %.sroa.547.sroa.9.0..sroa.547.0..sroa_idx48.sroa_idx, align 8
  %.sroa.547.sroa.10.0..sroa.547.0..sroa_idx48.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 60
  store i8 0, ptr %.sroa.547.sroa.10.0..sroa.547.0..sroa_idx48.sroa_idx, align 4
  %.sroa.547.sroa.11.0..sroa.547.0..sroa_idx48.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 61
  store i8 0, ptr %.sroa.547.sroa.11.0..sroa.547.0..sroa_idx48.sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.547.sroa.0)
  %i.bpx = load ptr, ptr %i.da, align 8, !nonnull !5, !noundef !5
  %switch.gep552 = getelementptr inbounds nuw i8, ptr @switch.table._RNvNtCs4xylOWI7Ys4_12typst_render5paint11to_sk_paint.364, i64 %i.cz
  %switch.load553 = load i8, ptr %switch.gep552, align 1
  %switch.ext554 = zext i8 %switch.load553 to i64
  %i.bpy = getelementptr inbounds nuw i8, ptr %i.bpx, i64 %switch.ext554
  %.sroa.058.0 = load i8, ptr %i.bpy, align 8, !range !18, !noundef !5
  store i8 %.sroa.058.0, ptr %i.cs, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.u

bb.gq:                                            ; preds = %bb.l
  %i.bpz = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.bqa = getelementptr inbounds nuw i8, ptr %2, i64 16
  invoke void @_RNvMs_NtCsd315radwPZ_14tiny_skia_path9transformNtB4_9Transform6invert(ptr noalias nofree noundef nonnull sret([28 x i8]) align 4 captures(address) dereferenceable(28) %i.x, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.bqa)
          to label %bb.gv unwind label %bb.m

bb.gr:                                            ; preds = %bb.l
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.z, align 16
  %i.bqb = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  br i1 %.not.not, label %bb.gt, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  store <2 x float> %i.cq, ptr %i.bqb, align 16
  br label %bb.gu

bb.gt:                                            ; preds = %bb.gr
  store <2 x float> zeroinitializer, ptr %i.bqb, align 16
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gs, %bb.gt, %bb.gx
  %i.bqc = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.val186 = load float, ptr %i.bqc, align 8, !noundef !5 ; 2 uses
  invoke fastcc void @_RNvNtCs4xylOWI7Ys4_12typst_render5paint19render_tiling_frame(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.t, float %.val186, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.di)
          to label %bb.gy unwind label %bb.m

bb.gv:                                            ; preds = %bb.gq
  %i.bqd = load i32, ptr %i.x, align 4, !range !15, !noundef !5
  %i.bqe = trunc nuw i32 %i.bqd to i1
  br i1 %i.bqe, label %bb.gw, label %.invoke, !prof !19

bb.gw:                                            ; preds = %bb.gv
  %i.bqf = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.y, ptr noundef nonnull align 4 dereferenceable(24) %i.bqf, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  invoke void @_RNvMs_NtCsd315radwPZ_14tiny_skia_path9transformNtB4_9Transform11post_concat(ptr noalias nofree noundef nonnull sret([24 x i8]) align 4 captures(address) dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.bpz, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(24) %i.y)
          to label %bb.gx unwind label %bb.m

.invoke:                                          ; preds = %bb.gv, %bb.z
  %i.bqg = phi ptr [ @69, %bb.z ], [ @70, %bb.gv ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bqg) #29
          to label %.cont unwind label %bb.m

.cont:                                            ; preds = %.invoke
  unreachable

bb.gx:                                            ; preds = %bb.gw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.gu

bb.gy:                                            ; preds = %bb.gu
  %.sroa.5.16.copyload = load i64, ptr %i.t, align 8 ; 3 uses
  %.sroa.7.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.7.16.copyload = load ptr, ptr %.sroa.7.16..sroa_idx, align 8 ; 3 uses
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !2595
  %i.bqh = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 48, i64 noundef 8) #26, !noalias !2595 ; 8 uses
  %i.bqi = icmp eq ptr %i.bqh, null
  br i1 %i.bqi, label %bb.gz, label %bb.hc, !prof !17

bb.gz:                                            ; preds = %bb.gy
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #29
          to label %.noexc177 unwind label %bb.ha

.noexc177:                                        ; preds = %bb.gz
  unreachable

bb.ha:                                            ; preds = %bb.gz
  %i.bqj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bqk = icmp eq i64 %.sroa.5.16.copyload, 0
  br i1 %i.bqk, label %.body, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.16.copyload) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.16.copyload, i64 noundef %.sroa.5.16.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #26
  br label %.body
end_hunk_9
begin_hunk_10_@_RNvNtCs4xylOWI7Ys4_12typst_render5shape12render_shape:bb.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsd315radwPZ_14tiny_skia_path4path8PathVerbEECs4xylOWI7Ys4_12typst_render.exit.i: ; preds = %bb.aq, %bb.ap
  %i.dd = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.val2.i = load i64, ptr %i.dd, align 8, !alias.scope !2646 ; 2 uses
  %i.de = icmp eq i64 %.val2.i, 0
  br i1 %i.de, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsd315radwPZ_14tiny_skia_path4path4PathECs4xylOWI7Ys4_12typst_render.exit, label %bb.ar

bb.ar:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsd315radwPZ_14tiny_skia_path4path8PathVerbEECs4xylOWI7Ys4_12typst_render.exit.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %.val3.i = load ptr, ptr %i.df, align 8, !alias.scope !2646, !nonnull !5, !noundef !5
  %i.dg = shl nuw i64 %.val2.i, 3
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.dg, i64 noundef range(i64 1, -9223372036854775807) 4) #26, !noalias !2646
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsd315radwPZ_14tiny_skia_path4path4PathECs4xylOWI7Ys4_12typst_render.exit

bb.as:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %.not26 = icmp eq i64 %i.bt, -1
  br i1 %.not26, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  invoke fastcc void @_RNvNtCs4xylOWI7Ys4_12typst_render5shape18to_sk_dash_pattern(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bs)
          to label %bb.av unwind label %bb.an

bb.au:                                            ; preds = %bb.as
  store i64 -1, ptr %i.g, align 8
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr null, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.dh = load i32, ptr %i.cv, align 8, !range !10, !noundef !5
  %i.di = icmp eq i32 %i.dh, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false)
  invoke fastcc void @_RNvNtCs4xylOWI7Ys4_12typst_render5paint11to_sk_paint(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cv, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(80) %i.a, i1 noundef zeroext false, ptr noalias nofree noundef align 8 dereferenceable(8) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(136) %2, i1 noundef zeroext %i.di)
          to label %switch.lookup unwind label %bb.ay

bb.aw:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsd315radwPZ_14tiny_skia_path7stroker6StrokeECs4xylOWI7Ys4_12typst_render.exit, %bb.ay
  %.pn29 = phi { ptr, i32 } [ %i.dn, %bb.ay ], [ %i.ec, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsd315radwPZ_14tiny_skia_path7stroker6StrokeECs4xylOWI7Ys4_12typst_render.exit ] ; 4 uses
  %.sroa.012.0 = phi i1 [ true, %bb.ay ], [ false, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsd315radwPZ_14tiny_skia_path7stroker6StrokeECs4xylOWI7Ys4_12typst_render.exit ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2647)
  %i.dj = load ptr, ptr %i.f, align 8, !alias.scope !2647, !noundef !5 ; 2 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit43, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dl = atomicrmw sub ptr %i.dj, i64 1 release, align 8, !noalias !2648
  %i.dm = icmp eq i64 %i.dl, 1
  br i1 %i.dm, label %.split, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit43

.split:                                           ; preds = %bb.ax
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapE9drop_slowCs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.f) #25
  br i1 %.sroa.012.0, label %bb.bi, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit

bb.ay:                                            ; preds = %bb.av
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

switch.lookup:                                    ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.dp = load i8, ptr %i.do, align 8, !range !24, !noundef !5
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 97
  %i.dr = load i8, ptr %i.dq, align 1, !range !24, !noundef !5
  %i.ds = shl nuw nsw i8 %i.dr, 3
  %switch.shiftamt = zext nneg i8 %i.ds to i24
  %switch.downshift = lshr i24 197120, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false)
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.du = load double, ptr %i.dt, align 8, !noundef !5
  %i.dv = fptrunc double %i.du to float
  %i.dw = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store float %i.cz, ptr %i.dw, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  store float %i.dv, ptr %i.dx, align 4
  %i.dy = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i8 %i.dp, ptr %i.dy, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.d, i64 57
  store i8 %switch.masked, ptr %i.dz, align 1
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.eb = load ptr, ptr %i.ea, align 8, !align !16, !noundef !5
  invoke void @_RNvMs0_NtCsfVrisfeHJNS_9tiny_skia7painterNtNtB7_6pixmap6Pixmap11stroke_path(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.d, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(24) %i.u, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %i.eb)
          to label %bb.bb unwind label %bb.az

bb.az:                                            ; preds = %switch.lookup
  %i.ec = landingpad { ptr, i32 }
          cleanup
  %.val40 = load i64, ptr %i.d, align 8, !range !7, !noundef !5 ; 2 uses
  %i.ed = icmp sgt i64 %.val40, 0
  br i1 %i.ed, label %bb.ba, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsd315radwPZ_14tiny_skia_path7stroker6StrokeECs4xylOWI7Ys4_12typst_render.exit

bb.ba:                                            ; preds = %bb.az
  %i.ee = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val41 = load ptr, ptr %i.ee, align 8, !nonnull !5, !noundef !5
  %i.ef = shl nuw i64 %.val40, 2
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val41, i64 noundef %i.ef, i64 noundef range(i64 1, -9223372036854775807) 4) #26
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsd315radwPZ_14tiny_skia_path7stroker6StrokeECs4xylOWI7Ys4_12typst_render.exit

bb.bb:                                            ; preds = %switch.lookup
  %.val38 = load i64, ptr %i.d, align 8, !range !7, !noundef !5 ; 2 uses
  %i.eg = icmp sgt i64 %.val38, 0
  br i1 %i.eg, label %bb.bc, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsd315radwPZ_14tiny_skia_path7stroker6StrokeECs4xylOWI7Ys4_12typst_render.exit46

bb.bc:                                            ; preds = %bb.bb
  %i.eh = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val39 = load ptr, ptr %i.eh, align 8, !nonnull !5, !noundef !5
  %i.ei = shl nuw i64 %.val38, 2
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val39, i64 noundef %i.ei, i64 noundef range(i64 1, -9223372036854775807) 4) #26
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsd315radwPZ_14tiny_skia_path7stroker6StrokeECs4xylOWI7Ys4_12typst_render.exit46

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsd315radwPZ_14tiny_skia_path7stroker6StrokeECs4xylOWI7Ys4_12typst_render.exit: ; preds = %bb.ba, %bb.az
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7painter5PaintECs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef align 8 dereferenceable(104) %i.e) #28
  br label %bb.aw

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsd315radwPZ_14tiny_skia_path7stroker6StrokeECs4xylOWI7Ys4_12typst_render.exit46: ; preds = %bb.bc, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !2649)
  call void @llvm.experimental.noalias.scope.decl(metadata !2650)
  %i.ej = load i64, ptr %i.e, align 8, !range !9, !alias.scope !2651, !noundef !5 ; 5 uses
  %i.ek = icmp ne i64 %i.ej, -9223372036854775806
  call void @llvm.assume(i1 %i.ek)
  %i.el = xor i64 %i.ej, -9223372036854775808
  %i.em = icmp slt i64 %i.ej, 0
  %i.en = select i1 %i.em, i64 %i.el, i64 2
  switch i64 %i.en, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7painter5PaintECs4xylOWI7Ys4_12typst_render.exit53 [
    i64 1, label %bb.bd
    i64 2, label %bb.be
    i64 3, label %bb.bf
  ]

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsfVrisfeHJNS_9tiny_skia7shaders15linear_gradient14LinearGradientECs4xylOWI7Ys4_12typst_render.exit.sink.split.i.i48: ; preds = %bb.bf, %bb.be, %bb.bd
  %.sink6.i.i49.sroa.phi = phi ptr [ %.sink6.i.i49.sroa.gep, %bb.be ], [ %.sink6.i.i49.sroa.gep57, %bb.bd ], [ %.sink6.i.i49.sroa.gep57, %bb.bf ]
  %.val4.sink.i.i50 = phi i64 [ %i.ej, %bb.be ], [ %.val.i.i52, %bb.bd ], [ %.val4.i.i47, %bb.bf ]
  %.val5.i.i51 = load ptr, ptr %.sink6.i.i49.sroa.phi, align 8, !alias.scope !2651, !nonnull !5, !noundef !5
  %i.eo = mul nuw i64 %.val4.sink.i.i50, 20
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i51, i64 noundef %i.eo, i64 noundef range(i64 1, -9223372036854775807) 4) #26, !noalias !2651
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7painter5PaintECs4xylOWI7Ys4_12typst_render.exit53

bb.bd:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsd315radwPZ_14tiny_skia_path7stroker6StrokeECs4xylOWI7Ys4_12typst_render.exit46
  %.val.i.i52 = load i64, ptr %.sink6.i.i49.sroa.gep, align 8, !alias.scope !2651 ; 2 uses
  %i.ep = icmp eq i64 %.val.i.i52, 0
  br i1 %i.ep, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7painter5PaintECs4xylOWI7Ys4_12typst_render.exit53, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsfVrisfeHJNS_9tiny_skia7shaders15linear_gradient14LinearGradientECs4xylOWI7Ys4_12typst_render.exit.sink.split.i.i48

bb.be:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsd315radwPZ_14tiny_skia_path7stroker6StrokeECs4xylOWI7Ys4_12typst_render.exit46
  %i.eq = icmp eq i64 %i.ej, 0
  br i1 %i.eq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7painter5PaintECs4xylOWI7Ys4_12typst_render.exit53, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsfVrisfeHJNS_9tiny_skia7shaders15linear_gradient14LinearGradientECs4xylOWI7Ys4_12typst_render.exit.sink.split.i.i48

bb.bf:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsd315radwPZ_14tiny_skia_path7stroker6StrokeECs4xylOWI7Ys4_12typst_render.exit46
  %.val4.i.i47 = load i64, ptr %.sink6.i.i49.sroa.gep, align 8, !alias.scope !2651 ; 2 uses
  %i.er = icmp eq i64 %.val4.i.i47, 0
  br i1 %i.er, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7painter5PaintECs4xylOWI7Ys4_12typst_render.exit53, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsfVrisfeHJNS_9tiny_skia7shaders15linear_gradient14LinearGradientECs4xylOWI7Ys4_12typst_render.exit.sink.split.i.i48

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7painter5PaintECs4xylOWI7Ys4_12typst_render.exit53: ; preds = %bb.bf, %bb.be, %bb.bd, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsfVrisfeHJNS_9tiny_skia7shaders15linear_gradient14LinearGradientECs4xylOWI7Ys4_12typst_render.exit.sink.split.i.i48, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsd315radwPZ_14tiny_skia_path7stroker6StrokeECs4xylOWI7Ys4_12typst_render.exit46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !2652)
  %i.es = load ptr, ptr %i.f, align 8, !alias.scope !2652, !noundef !5 ; 2 uses
  %i.et = icmp eq ptr %i.es, null
  br i1 %i.et, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit54, label %bb.bg

bb.bg:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7painter5PaintECs4xylOWI7Ys4_12typst_render.exit53
  %i.eu = atomicrmw sub ptr %i.es, i64 1 release, align 8, !noalias !2653
  %i.ev = icmp eq i64 %i.eu, 1
  br i1 %i.ev, label %bb.bh, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit54

bb.bh:                                            ; preds = %bb.bg
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapE9drop_slowCs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.f) #25
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit54

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit43: ; preds = %bb.ax, %bb.aw
  br i1 %.sroa.012.0, label %bb.bi, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit54: ; preds = %bb.bh, %bb.bg, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7painter5PaintECs4xylOWI7Ys4_12typst_render.exit53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ap

bb.bi:                                            ; preds = %.split, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit43
  %.val36 = load i64, ptr %i.g, align 8, !range !7, !noundef !5 ; 2 uses
  %i.ew = icmp sgt i64 %.val36, 0
  br i1 %i.ew, label %bb.bj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit

bb.bj:                                            ; preds = %bb.bi
  %i.ex = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.val37 = load ptr, ptr %i.ex, align 8, !nonnull !5, !noundef !5
  %i.ey = shl nuw i64 %.val36, 2
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val37, i64 noundef %i.ey, i64 noundef range(i64 1, -9223372036854775807) 4) #26
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCs4xylOWI7Ys4_12typst_render5shape13convert_curve(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(none) dereferenceable(64) %0, ptr nofree readonly captures(address) %.8.val, i64 %.16.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.56.0..sroa_idx, i8 0, i64 16, i1 false)
  store i8 1, ptr %i.c, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %.idx = mul nuw nsw i64 %.16.val, 56
  %i.d = getelementptr inbounds nuw i8, ptr %.8.val, i64 %.idx
  %.not4 = icmp eq i64 %.16.val, 0
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.sroa.0.05 = phi ptr [ %i.e, %bb.f ], [ %.8.val, %bb.a ] ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 56 ; 2 uses
  %i.f = load i64, ptr %.sroa.0.05, align 8, !range !2654, !noundef !5
  switch i64 %i.f, label %default.unreachable6 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
  ]

._crit_edge:                                      ; preds = %bb.f, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false)
  call void @_RNvMNtCsd315radwPZ_14tiny_skia_path12path_builderNtB2_11PathBuilder6finish(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

default.unreachable6:                             ; preds = %.lr.ph
  unreachable

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 8
  %i.h = load <2 x double>, ptr %i.g, align 8
  %i.i = fdiv <2 x double> %i.h, splat (double 1.270000e+02)
  %i.j = fptrunc <2 x double> %i.i to <2 x float> ; 2 uses
  %i.k = extractelement <2 x float> %i.j, i64 0
  %i.l = extractelement <2 x float> %i.j, i64 1
  invoke void @_RNvMNtCsd315radwPZ_14tiny_skia_path12path_builderNtB2_11PathBuilder7move_to(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.b, float noundef %i.k, float noundef %i.l)
          to label %bb.f unwind label %bb.g

bb.c:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 8
  %i.n = load <2 x double>, ptr %i.m, align 8
  %i.o = fdiv <2 x double> %i.n, splat (double 1.270000e+02)
  %i.p = fptrunc <2 x double> %i.o to <2 x float> ; 2 uses
  %i.q = extractelement <2 x float> %i.p, i64 0
  %i.r = extractelement <2 x float> %i.p, i64 1
  invoke void @_RNvMNtCsd315radwPZ_14tiny_skia_path12path_builderNtB2_11PathBuilder7line_to(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.b, float noundef %i.q, float noundef %i.r)
          to label %bb.f unwind label %bb.g

bb.d:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 8
  %i.t = load <2 x double>, ptr %i.s, align 8
  %i.u = fdiv <2 x double> %i.t, splat (double 1.270000e+02)
  %i.v = fptrunc <2 x double> %i.u to <2 x float> ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 24
  %i.x = load <2 x double>, ptr %i.w, align 8
  %i.y = fdiv <2 x double> %i.x, splat (double 1.270000e+02)
  %i.z = fptrunc <2 x double> %i.y to <2 x float> ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 40
  %i.ab = load <2 x double>, ptr %i.aa, align 8
  %i.ac = fdiv <2 x double> %i.ab, splat (double 1.270000e+02)
  %i.ad = fptrunc <2 x double> %i.ac to <2 x float> ; 2 uses
  %i.ae = extractelement <2 x float> %i.v, i64 0
  %i.af = extractelement <2 x float> %i.v, i64 1
  %i.ag = extractelement <2 x float> %i.z, i64 0
  %i.ah = extractelement <2 x float> %i.z, i64 1
  %i.ai = extractelement <2 x float> %i.ad, i64 0
  %i.aj = extractelement <2 x float> %i.ad, i64 1
  invoke void @_RNvMNtCsd315radwPZ_14tiny_skia_path12path_builderNtB2_11PathBuilder8cubic_to(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.b, float noundef %i.ae, float noundef %i.af, float noundef %i.ag, float noundef %i.ah, float noundef %i.ai, float noundef %i.aj)
          to label %bb.f unwind label %bb.g

bb.e:                                             ; preds = %.lr.ph
  invoke void @_RNvMNtCsd315radwPZ_14tiny_skia_path12path_builderNtB2_11PathBuilder5close(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.not = icmp eq ptr %i.e, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsd315radwPZ_14tiny_skia_path12path_builder11PathBuilderECs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef align 8 dereferenceable(64) %i.b) #28
  resume { ptr, i32 } %lpad.thr_comm
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCs4xylOWI7Ys4_12typst_render5shape18to_sk_dash_pattern(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 5 uses
  %i.e = icmp ult i64 %i.d, 1152921504606846976
  tail call void @llvm.assume(i1 %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %.idx = shl nuw nsw i64 %i.d, 3
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2674)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2675
  %i.i = icmp eq i64 %i.d, 0
  br i1 %i.i, label %bb.c, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_5cycle5CycleINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsENCNvNtCs4xylOWI7Ys4_12typst_render5shape18to_sk_dash_pattern0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB2S_.exit.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_5cycle5CycleINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsENCNvNtCs4xylOWI7Ys4_12typst_render5shape18to_sk_dash_pattern0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB2S_.exit.i: ; preds = %bb.a
  %i.j = and i64 %i.d, 1
  %.sroa.0.0 = shl nuw nsw i64 %i.d, %i.j
  %i.k = add nsw i64 %.sroa.0.0, -1               ; 2 uses
  %.val.i2.i.i.i = load double, ptr %i.g, align 8, !noalias !2676, !noundef !5
  %i.l = tail call i64 @llvm.umax.i64(i64 %i.k, i64 3)
  %i.m = add nuw nsw i64 %i.l, 1                  ; 3 uses
  %i.n = shl nuw nsw i64 %i.m, 2                  ; 2 uses
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !2677
  %i.o = tail call noundef align 4 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.n, i64 noundef range(i64 1, 9) 4) #26, !noalias !2677 ; 4 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.b, label %.lr.ph.i.i.i

bb.b:                                             ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_5cycle5CycleINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsENCNvNtCs4xylOWI7Ys4_12typst_render5shape18to_sk_dash_pattern0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB2S_.exit.i
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.n) #29, !noalias !2675
  unreachable

.lr.ph.i.i.i:                                     ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_5cycle5CycleINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsENCNvNtCs4xylOWI7Ys4_12typst_render5shape18to_sk_dash_pattern0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB2S_.exit.i
  %i.q = fdiv double %.val.i2.i.i.i, 1.270000e+02
  %i.r = fptrunc double %i.q to float
  store float %i.r, ptr %i.o, align 4, !noalias !2675
  store i64 %i.m, ptr %i.a, align 8, !noalias !2675
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %i.o, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2675
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !2675
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2678)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2679)
  br label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecfE7reserveCs4xylOWI7Ys4_12typst_render.exit.i.i.i
  %i.s = phi ptr [ %i.ad, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecfE7reserveCs4xylOWI7Ys4_12typst_render.exit.i.i.i ], [ %i.o, %.lr.ph.i.i.i ]
  %i.t = phi i64 [ %i.ae, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecfE7reserveCs4xylOWI7Ys4_12typst_render.exit.i.i.i ], [ %i.m, %.lr.ph.i.i.i ] ; 3 uses
  %i.u = phi i64 [ %i.ag, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecfE7reserveCs4xylOWI7Ys4_12typst_render.exit.i.i.i ], [ 1, %.lr.ph.i.i.i ] ; 4 uses
  %.val1.i.i10.i.i.i = phi ptr [ %spec.select.i.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecfE7reserveCs4xylOWI7Ys4_12typst_render.exit.i.i.i ], [ %i.h, %.lr.ph.i.i.i ] ; 2 uses
  %spec.select17.i.i.i.pn = phi ptr [ %spec.select17.i.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecfE7reserveCs4xylOWI7Ys4_12typst_render.exit.i.i.i ], [ %i.g, %.lr.ph.i.i.i ]
  %i.v = phi i64 [ %i.w, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecfE7reserveCs4xylOWI7Ys4_12typst_render.exit.i.i.i ], [ %i.k, %.lr.ph.i.i.i ]
  %.val.i.i7.i.i.i = getelementptr inbounds nuw i8, ptr %spec.select17.i.i.i.pn, i64 8 ; 2 uses
  %i.w = add i64 %i.v, -1                         ; 3 uses
  %i.x = icmp eq ptr %.val.i.i7.i.i.i, %.val1.i.i10.i.i.i ; 2 uses
  %spec.select.i.i.i = select i1 %i.x, ptr %i.h, ptr %.val1.i.i10.i.i.i
  %spec.select17.i.i.i = select i1 %i.x, ptr %i.g, ptr %.val.i.i7.i.i.i ; 2 uses
  %.val.i2.i.i.i.i.i = load double, ptr %spec.select17.i.i.i, align 8, !noalias !2680, !noundef !5
  %i.y = fdiv double %.val.i2.i.i.i.i.i, 1.270000e+02
  %i.z = fptrunc double %i.y to float
  %i.aa = icmp samesign ult i64 %i.u, 2305843009213693952
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = icmp eq i64 %i.u, %i.t
  br i1 %i.ab, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_5cycle5CycleINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsENCNvNtCs4xylOWI7Ys4_12typst_render5shape18to_sk_dash_pattern0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB2S_.exit.i.i.i, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecfE7reserveCs4xylOWI7Ys4_12typst_render.exit.i.i.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_5cycle5CycleINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsENCNvNtCs4xylOWI7Ys4_12typst_render5shape18to_sk_dash_pattern0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB2S_.exit.i.i.i: ; preds = %.lr.ph.split.i.i.i
  %i.ac = tail call i64 @llvm.uadd.sat.i64(i64 %i.w, i64 1)
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.t, i64 noundef range(i64 1, 0) %i.ac, i64 noundef 4, i64 noundef 4)
          to label %.noexc9.i unwind label %.loopexit.split-lp.i, !noalias !2675

.noexc9.i:                                        ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_5cycle5CycleINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsENCNvNtCs4xylOWI7Ys4_12typst_render5shape18to_sk_dash_pattern0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB2S_.exit.i.i.i
  %.pre3.i.i = load i64, ptr %i.a, align 8, !range !8, !alias.scope !2681, !noalias !2682
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !2681, !noalias !2682
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecfE7reserveCs4xylOWI7Ys4_12typst_render.exit.i.i.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecfE7reserveCs4xylOWI7Ys4_12typst_render.exit.i.i.i: ; preds = %.noexc9.i, %.lr.ph.split.i.i.i
  %i.ad = phi ptr [ %.pre.i, %.noexc9.i ], [ %i.s, %.lr.ph.split.i.i.i ] ; 2 uses
  %i.ae = phi i64 [ %.pre3.i.i, %.noexc9.i ], [ %i.t, %.lr.ph.split.i.i.i ]
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.u
  store float %i.z, ptr %i.af, align 4, !noalias !2683
  %i.ag = add nuw nsw i64 %i.u, 1                 ; 2 uses
  store i64 %i.ag, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !2681, !noalias !2682
  %i.ah = icmp eq i64 %i.w, 0
  br i1 %i.ah, label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters4take4TakeINtNtB1h_5cycle5CycleINtNtB1h_3map3MapINtNtNtB1l_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsENCNvNtCs4xylOWI7Ys4_12typst_render5shape18to_sk_dash_pattern0EEEE11spec_extendB40_.exit.i, label %.lr.ph.split.i.i.i

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %i.b, align 8, !alias.scope !2674, !noalias !2684
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.ai, align 8, !alias.scope !2674, !noalias !2684
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.aj, align 8, !alias.scope !2674, !noalias !2684
  br label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecfEINtB2_18SpecFromIterNestedfINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters4take4TakeINtNtB1z_5cycle5CycleINtNtB1z_3map3MapINtNtNtB1D_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsENCNvNtCs4xylOWI7Ys4_12typst_render5shape18to_sk_dash_pattern0EEEE9from_iterB4i_.exit

.loopexit.split-lp.i:                             ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_5cycle5CycleINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsENCNvNtCs4xylOWI7Ys4_12typst_render5shape18to_sk_dash_pattern0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB2S_.exit.i.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  %.val.i = load i64, ptr %i.a, align 8, !noalias !2675 ; 2 uses
  %i.ak = icmp eq i64 %.val.i, 0
  br i1 %i.ak, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecfEECs4xylOWI7Ys4_12typst_render.exit.i, label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp.i
  %.val7.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2675, !nonnull !5, !noundef !5
  %i.al = shl nuw i64 %.val.i, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i, i64 noundef %i.al, i64 noundef range(i64 1, -9223372036854775807) 4) #26, !noalias !2675
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecfEECs4xylOWI7Ys4_12typst_render.exit.i

_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters4take4TakeINtNtB1h_5cycle5CycleINtNtB1h_3map3MapINtNtNtB1l_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsENCNvNtCs4xylOWI7Ys4_12typst_render5shape18to_sk_dash_pattern0EEEE11spec_extendB40_.exit.i: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecfE7reserveCs4xylOWI7Ys4_12typst_render.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !2684
  br label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecfEINtB2_18SpecFromIterNestedfINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters4take4TakeINtNtB1z_5cycle5CycleINtNtB1z_3map3MapINtNtNtB1D_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsENCNvNtCs4xylOWI7Ys4_12typst_render5shape18to_sk_dash_pattern0EEEE9from_iterB4i_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecfEECs4xylOWI7Ys4_12typst_render.exit.i: ; preds = %bb.d, %.loopexit.split-lp.i
  resume { ptr, i32 } %lpad.loopexit.split-lp.i
end_hunk_10
begin_hunk_11_@_RNvNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyf12outline_impl:bb.a
.lr.ph:                                           ; preds = %bb.i
  %i.l = load i64, ptr %1, align 8, !range !13    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 8              ; 7 uses
  %.sroa.0.0.in.v.i = add nuw nsw i64 %i.l, 1
  %.sroa.0.0.in.i = lshr i64 %i.n, %.sroa.0.0.in.v.i
  %.sroa.0.0.i71 = trunc i64 %.sroa.0.0.in.i to i16
  %i.o = trunc nuw i64 %i.l to i1
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val26.i = load ptr, ptr %i.p, align 8         ; 6 uses
  %i.q = lshr i64 %i.n, 1
  %i.r = trunc i64 %i.q to i16                    ; 2 uses
  %i.s = lshr i64 %i.n, 2
  %i.t = trunc i64 %i.s to i16                    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 32
  %.sroa.5113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 40
  %.sroa.7115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.12111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 92
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.ac = add nuw nsw i8 %6, 1
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4locaNtB2_5Table11glyph_range.exit.thread
  %i.ad = phi i64 [ 2, %.lr.ph ], [ %i.dv, %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4locaNtB2_5Table11glyph_range.exit.thread ] ; 2 uses
  %.sroa.7100.0233 = phi i64 [ 0, %.lr.ph ], [ %spec.select, %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4locaNtB2_5Table11glyph_range.exit.thread ] ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.7100.0233
  %.sroa.061.0.copyload.i = load i16, ptr %i.ae, align 1, !noalias !2732
  %i.af = call i16 @llvm.bswap.i16(i16 %.sroa.061.0.copyload.i) ; 6 uses
  %i.ag = add nuw nsw i64 %.sroa.7100.0233, 4     ; 6 uses
  %i.ah = icmp ult i64 %i.ag, %i.ad
  %.not.i159.i = icmp ugt i64 %i.ag, %i.j
  %or.cond.i160.i = or i1 %i.ah, %.not.i159.i
  br i1 %or.cond.i160.i, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ad
  %.sroa.066.0.copyload.i = load i16, ptr %i.ai, align 1, !noalias !2732 ; 2 uses
  %i.aj = call i16 @llvm.bswap.i16(i16 %.sroa.066.0.copyload.i) ; 5 uses
  %i.ak = and i16 %i.af, 2
  %.not121.i = icmp eq i16 %i.ak, 0
  br i1 %.not121.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.s, %bb.q, %bb.k
  %.sroa.7100.1 = phi i64 [ %i.ag, %bb.k ], [ %i.ap, %bb.q ], [ %i.at, %bb.s ] ; 11 uses
  %i.al = phi <2 x float> [ zeroinitializer, %bb.k ], [ %i.as, %bb.q ], [ %i.ax, %bb.s ] ; 2 uses
  %i.am = and i16 %i.af, 128
  %.not127.i = icmp eq i16 %i.am, 0
  br i1 %.not127.i, label %bb.t, label %bb.u

bb.m:                                             ; preds = %bb.k
  %i.an = and i16 %i.af, 1
  %.not122.i = icmp eq i16 %i.an, 0
  br i1 %.not122.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %or.cond.i164.not.i = icmp ult i64 %i.ag, %i.j
  br i1 %or.cond.i164.not.i, label %bb.p, label %.loopexit

bb.o:                                             ; preds = %bb.m
  %i.ao = add nuw nsw i64 %.sroa.7100.0233, 6
  %.not.i167.i = icmp ugt i64 %i.ao, %i.j
  br i1 %.not.i167.i, label %.loopexit, label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.ap = add nuw nsw i64 %.sroa.7100.0233, 6     ; 2 uses
  %.not.i171.i = icmp ugt i64 %i.ap, %i.j
  br i1 %.not.i171.i, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aq = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ag
  %i.ar = load <2 x i8>, ptr %i.aq, align 1, !noalias !2732
  %i.as = sitofp <2 x i8> %i.ar to <2 x float>
  br label %bb.l

bb.r:                                             ; preds = %bb.o
  %i.at = add nuw nsw i64 %.sroa.7100.0233, 8     ; 2 uses
  %.not.i175.i = icmp ugt i64 %i.at, %i.j
  br i1 %.not.i175.i, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.au = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ag
  %i.av = load <2 x i16>, ptr %i.au, align 1, !noalias !2732
  %i.aw = call <2 x i16> @llvm.bswap.v2i16(<2 x i16> %i.av)
  %i.ax = sitofp <2 x i16> %i.aw to <2 x float>
  br label %bb.l

bb.t:                                             ; preds = %bb.l
  %i.ay = and i16 %i.af, 64
  %.not128.i = icmp eq i16 %i.ay, 0
  br i1 %.not128.i, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.l
  %i.az = add nuw nsw i64 %.sroa.7100.1, 2        ; 2 uses
  %.not.i179.i = icmp ugt i64 %i.az, %i.j
  br i1 %.not.i179.i, label %.loopexit, label %bb.ab

bb.v:                                             ; preds = %bb.t
  %i.ba = and i16 %i.af, 8
  %.not129.i = icmp eq i16 %i.ba, 0
  br i1 %.not129.i, label %_RNvXs0_NtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB5_18CompositeGlyphIterNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.bb = add nuw nsw i64 %.sroa.7100.1, 2
  %.not.i183.i = icmp ugt i64 %i.bb, %i.j
  br i1 %.not.i183.i, label %.loopexit, label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.bc = add nuw nsw i64 %.sroa.7100.1, 2        ; 2 uses
  %.not.i187.i = icmp ugt i64 %i.bc, %i.j
  br i1 %.not.i187.i, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bd = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.7100.1
  %.sroa.0119.0.copyload.i = load i16, ptr %i.bd, align 1, !noalias !2732
  %i.be = call i16 @llvm.bswap.i16(i16 %.sroa.0119.0.copyload.i)
  %i.bf = sitofp i16 %i.be to float
  %i.bg = fmul nnan float %i.bf, f0x38800000      ; 2 uses
  br label %_RNvXs0_NtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB5_18CompositeGlyphIterNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit

bb.z:                                             ; preds = %bb.w
  %i.bh = add nuw nsw i64 %.sroa.7100.1, 4        ; 2 uses
  %.not.i191.i = icmp ugt i64 %i.bh, %i.j
  br i1 %.not.i191.i, label %.loopexit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bi = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.7100.1
  %i.bj = load <2 x i16>, ptr %i.bi, align 1, !noalias !2732
  %i.bk = call <2 x i16> @llvm.bswap.v2i16(<2 x i16> %i.bj)
  %i.bl = sitofp <2 x i16> %i.bk to <2 x float>
  %i.bm = fmul nnan <2 x float> %i.bl, splat (float f0x38800000) ; 2 uses
  %i.bn = extractelement <2 x float> %i.bm, i64 0
  %i.bo = extractelement <2 x float> %i.bm, i64 1
  br label %_RNvXs0_NtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB5_18CompositeGlyphIterNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit

_RNvXs0_NtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB5_18CompositeGlyphIterNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit: ; preds = %bb.ae, %bb.aa, %bb.y, %bb.v
  %.sroa.7100.2 = phi i64 [ %.sroa.7100.1, %bb.v ], [ %i.bc, %bb.y ], [ %i.bh, %bb.aa ], [ %i.cb, %bb.ae ]
  %.sroa.10.0.i = phi float [ 1.000000e+00, %bb.v ], [ %i.bg, %bb.y ], [ %i.bo, %bb.aa ], [ %i.ci, %bb.ae ]
  %.sroa.8.0.i = phi float [ 0.000000e+00, %bb.v ], [ 0.000000e+00, %bb.y ], [ 0.000000e+00, %bb.aa ], [ %i.ch, %bb.ae ]
  %.sroa.6.0.i = phi float [ 0.000000e+00, %bb.v ], [ 0.000000e+00, %bb.y ], [ 0.000000e+00, %bb.aa ], [ %i.bz, %bb.ae ]
  %.sroa.07.0.i = phi float [ 1.000000e+00, %bb.v ], [ %i.bg, %bb.y ], [ %i.bn, %bb.aa ], [ %i.bu, %bb.ae ]
  %i.bp = and i16 %i.af, 32
  %.not137.i = icmp eq i16 %i.bp, 0
  %spec.select = select i1 %.not137.i, i64 %i.j, i64 %.sroa.7100.2 ; 2 uses
  %i.bq = icmp eq i16 %.sroa.066.0.copyload.i, -1
  br i1 %i.bq, label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4locaNtB2_5Table11glyph_range.exit.thread, label %bb.af

bb.ab:                                            ; preds = %bb.u
  %i.br = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.7100.1
  %.sroa.089.0.copyload.i = load i16, ptr %i.br, align 1, !noalias !2732
  %i.bs = call i16 @llvm.bswap.i16(i16 %.sroa.089.0.copyload.i)
  %i.bt = sitofp i16 %i.bs to float
  %i.bu = fmul nnan float %i.bt, f0x38800000
  %i.bv = add nuw nsw i64 %.sroa.7100.1, 4        ; 2 uses
  %.not.i195.i = icmp ugt i64 %i.bv, %i.j
  br i1 %.not.i195.i, label %.loopexit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bw = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.az
  %.sroa.094.0.copyload.i = load i16, ptr %i.bw, align 1, !noalias !2732
  %i.bx = call i16 @llvm.bswap.i16(i16 %.sroa.094.0.copyload.i)
  %i.by = sitofp i16 %i.bx to float
  %i.bz = fmul nnan float %i.by, f0x38800000
  %i.ca = add nuw nsw i64 %.sroa.7100.1, 6
  %.not.i199.i = icmp ugt i64 %i.ca, %i.j
  br i1 %.not.i199.i, label %.loopexit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cb = add nuw nsw i64 %.sroa.7100.1, 8        ; 2 uses
  %.not.i203.i = icmp ugt i64 %i.cb, %i.j
  br i1 %.not.i203.i, label %.loopexit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cc = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.bv
  %i.cd = load <2 x i16>, ptr %i.cc, align 1, !noalias !2732
  %i.ce = call <2 x i16> @llvm.bswap.v2i16(<2 x i16> %i.cd)
  %i.cf = sitofp <2 x i16> %i.ce to <2 x float>
  %i.cg = fmul nnan <2 x float> %i.cf, splat (float f0x38800000) ; 2 uses
  %i.ch = extractelement <2 x float> %i.cg, i64 0
  %i.ci = extractelement <2 x float> %i.cg, i64 1
  br label %_RNvXs0_NtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB5_18CompositeGlyphIterNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit

bb.af:                                            ; preds = %_RNvXs0_NtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB5_18CompositeGlyphIterNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit
  %i.cj = add nuw i16 %i.aj, 1                    ; 5 uses
  %.not.i72 = icmp ult i16 %i.cj, %.sroa.0.0.i71
  br i1 %.not.i72, label %bb.ag, label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4locaNtB2_5Table11glyph_range.exit.thread

bb.ag:                                            ; preds = %bb.af
  br i1 %i.o, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.ck = icmp ult i16 %i.aj, %i.t
  br i1 %i.ck, label %bb.ai, label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4locaNtB2_5Table11glyph_range.exit.thread

bb.ai:                                            ; preds = %bb.ah
  %i.cl = zext i16 %i.aj to i64
  %i.cm = shl nuw nsw i64 %i.cl, 2                ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val26.i) ]
  %i.cn = add nuw nsw i64 %i.cm, 4
  %.not.i.i74 = icmp ugt i64 %i.cn, %i.n
  br i1 %.not.i.i74, label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4locaNtB2_5Table11glyph_range.exit.thread, label %bb.ap

bb.aj:                                            ; preds = %bb.ag
  %i.co = icmp ult i16 %i.aj, %i.r
  br i1 %i.co, label %bb.ak, label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4locaNtB2_5Table11glyph_range.exit.thread

bb.ak:                                            ; preds = %bb.aj
  %i.cp = zext i16 %i.aj to i64
  %i.cq = shl nuw nsw i64 %i.cp, 1                ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val26.i) ]
  %i.cr = add nuw nsw i64 %i.cq, 2
  %.not.i34.i = icmp ugt i64 %i.cr, %i.n
  br i1 %.not.i34.i, label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4locaNtB2_5Table11glyph_range.exit.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cs = getelementptr inbounds nuw i8, ptr %.val26.i, i64 %i.cq
  %.val.i35.i = load i16, ptr %i.cs, align 1, !noalias !2733
  %i.ct = call i16 @llvm.bswap.i16(i16 %.val.i35.i)
  %i.cu = icmp ult i16 %i.cj, %i.r
  br i1 %i.cu, label %bb.am, label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4locaNtB2_5Table11glyph_range.exit.thread

bb.am:                                            ; preds = %bb.al
  %i.cv = zext i16 %i.cj to i64
  %i.cw = shl nuw nsw i64 %i.cv, 1                ; 2 uses
  %i.cx = add nuw nsw i64 %i.cw, 2
  %.not.i38.i = icmp ugt i64 %i.cx, %i.n
  br i1 %.not.i38.i, label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4locaNtB2_5Table11glyph_range.exit.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cy = getelementptr inbounds nuw i8, ptr %.val26.i, i64 %i.cw
  %.val.i39.i = load i16, ptr %i.cy, align 1, !noalias !2733
  %i.cz = call i16 @llvm.bswap.i16(i16 %.val.i39.i)
  %i.da = zext i16 %i.ct to i64
  %i.db = shl nuw nsw i64 %i.da, 1
  %i.dc = zext i16 %i.cz to i64
  %i.dd = shl nuw nsw i64 %i.dc, 1
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ar, %bb.an
  %.sroa.4.0.i = phi i64 [ %i.dn, %bb.ar ], [ %i.dd, %bb.an ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.dm, %bb.ar ], [ %i.db, %bb.an ] ; 3 uses
  %.not24.i = icmp samesign uge i64 %.sroa.01.0.i, %.sroa.4.0.i
  %.not65 = icmp samesign ugt i64 %.sroa.4.0.i, %3
  %or.cond231 = select i1 %.not24.i, i1 true, i1 %.not65
  br i1 %or.cond231, label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4locaNtB2_5Table11glyph_range.exit.thread, label %bb.as

bb.ap:                                            ; preds = %bb.ai
  %i.de = getelementptr inbounds nuw i8, ptr %.val26.i, i64 %i.cm
  %.val.i.i = load i32, ptr %i.de, align 1, !noalias !2733
  %i.df = call i32 @llvm.bswap.i32(i32 %.val.i.i)
  %i.dg = icmp ult i16 %i.cj, %i.t
  br i1 %i.dg, label %bb.aq, label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4locaNtB2_5Table11glyph_range.exit.thread

bb.aq:                                            ; preds = %bb.ap
  %i.dh = zext i16 %i.cj to i64
  %i.di = shl nuw nsw i64 %i.dh, 2                ; 2 uses
  %i.dj = add nuw nsw i64 %i.di, 4
  %.not.i43.i = icmp ugt i64 %i.dj, %i.n
  br i1 %.not.i43.i, label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4locaNtB2_5Table11glyph_range.exit.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dk = getelementptr inbounds nuw i8, ptr %.val26.i, i64 %i.di
  %.val.i44.i = load i32, ptr %i.dk, align 1, !noalias !2733
  %i.dl = call i32 @llvm.bswap.i32(i32 %.val.i44.i)
  %i.dm = zext i32 %i.df to i64
  %i.dn = zext i32 %i.dl to i64
  br label %bb.ao

.loopexit:                                        ; preds = %bb.ad, %bb.o, %bb.p, %bb.n, %bb.j, %bb.r, %bb.x, %bb.w, %bb.ac, %bb.ab, %bb.u, %bb.z, %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4locaNtB2_5Table11glyph_range.exit.thread, %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder10push_point.exit, %.thread, %bb.i, %bb.f
  %i.do = load float, ptr %7, align 8, !noundef !5 ; 4 uses
  %i.dp = fcmp oeq float %i.do, f0x7F7FFFFF
  %i.dq = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.dr = load float, ptr %i.dq, align 4          ; 4 uses
  %i.ds = fcmp oeq float %i.dr, f0x7F7FFFFF
  %or.cond17 = select i1 %i.dp, i1 %i.ds, i1 false
  %i.dt = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.du = load float, ptr %i.dt, align 8          ; 4 uses
  br i1 %or.cond17, label %bb.dg, label %.loopexit._crit_edge

.loopexit._crit_edge:                             ; preds = %.loopexit
  %.sroa.6125.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 12
  %.sroa.6125.0.copyload.pre = load float, ptr %.sroa.6125.0..sroa_idx.phi.trans.insert, align 4
  br label %bb.dh

_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4locaNtB2_5Table11glyph_range.exit.thread: ; preds = %bb.ao, %bb.ai, %bb.ap, %bb.aq, %bb.ak, %bb.al, %bb.am, %_RNvXs0_NtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB5_18CompositeGlyphIterNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit, %bb.aj, %bb.af, %bb.ah, %bb.at
  %i.dv = add nuw nsw i64 %spec.select, 2         ; 2 uses
  %.not.i.i = icmp ugt i64 %i.dv, %i.j
  br i1 %.not.i.i, label %.loopexit, label %bb.j

bb.as:                                            ; preds = %bb.ao
  %i.dw = sub nuw nsw i64 %.sroa.4.0.i, %.sroa.01.0.i
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.01.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false)
  %i.dy = load <2 x ptr>, ptr %i.v, align 8
  store <2 x ptr> %i.dy, ptr %i.w, align 8
  %i.dz = load <2 x float>, ptr %i.u, align 8     ; 2 uses
  %i.ea = shufflevector <2 x float> %i.dz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.eb = load <2 x float>, ptr %.sroa.5113.0..sroa_idx, align 8 ; 2 uses
  %i.ec = shufflevector <2 x float> %i.eb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ed = insertelement <4 x float> poison, float %.sroa.07.0.i, i64 0
  %i.ee = insertelement <4 x float> %i.ed, float %.sroa.8.0.i, i64 1
  %i.ef = shufflevector <4 x float> %i.ee, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.eg = fmul <4 x float> %i.ef, %i.ea
  %i.eh = insertelement <4 x float> poison, float %.sroa.6.0.i, i64 0
  %i.ei = insertelement <4 x float> %i.eh, float %.sroa.10.0.i, i64 1
  %i.ej = shufflevector <4 x float> %i.ei, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ek = fmul <4 x float> %i.ej, %i.ec
  %i.el = fadd <4 x float> %i.eg, %i.ek           ; 2 uses
  %i.em = fcmp oeq <4 x float> %i.el, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00> ; 4 uses
  %i.en = extractelement <4 x i1> %i.em, i64 0
  %i.eo = extractelement <4 x i1> %i.em, i64 1
  %or.cond5 = select i1 %i.en, i1 %i.eo, i1 false
  %i.ep = extractelement <4 x i1> %i.em, i64 2
  %or.cond8 = select i1 %or.cond5, i1 %i.ep, i1 false
  %i.eq = extractelement <4 x i1> %i.em, i64 3
  %or.cond11 = select i1 %or.cond8, i1 %i.eq, i1 false
  store <4 x float> %i.el, ptr %i.x, align 8
  %i.er = load <2 x float>, ptr %.sroa.7115.0..sroa_idx, align 8
  %i.es = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.et = fmul <2 x float> %i.es, %i.dz
  %i.eu = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ev = fmul <2 x float> %i.eu, %i.eb
  %i.ew = fadd <2 x float> %i.et, %i.ev
  %i.ex = fadd <2 x float> %i.er, %i.ew           ; 3 uses
  %i.ey = extractelement <2 x float> %i.ex, i64 0
  %i.ez = fcmp oeq float %i.ey, 0.000000e+00
  %or.cond14 = select i1 %or.cond11, i1 %i.ez, i1 false
  %i.fa = extractelement <2 x float> %i.ex, i64 1
  %i.fb = fcmp oeq float %i.fa, 0.000000e+00
  %narrow = select i1 %or.cond14, i1 %i.fb, i1 false
  %.sroa.046.0 = zext i1 %narrow to i8
  store <2 x float> %i.ex, ptr %.sroa.12111.0..sroa_idx, align 8
  store i8 %.sroa.046.0, ptr %i.y, align 4
  store i32 0, ptr %i.z, align 8
  store i32 0, ptr %i.aa, align 4
  store i32 0, ptr %i.ab, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call fastcc void @_RNvNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyf12outline_impl(ptr noalias nofree noundef align 2 captures(none) dereferenceable(10) %i.c, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dx, i64 noundef %i.dw, i8 noundef %i.ac, ptr noalias nofree noundef align 8 dereferenceable(96) %i.d) #30
  %i.fc = load i16, ptr %i.c, align 2, !range !22, !noundef !5
  %.not66 = icmp eq i16 %i.fc, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %.not66, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4locaNtB2_5Table11glyph_range.exit.thread

bb.au:                                            ; preds = %bb.as
  store i16 2, ptr %0, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.dr

bb.av:                                            ; preds = %bb.e
  %i.fd = icmp samesign ult i64 %5, 10
  br i1 %i.fd, label %bb.bg, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fe = add nsw i64 %5, -10                     ; 6 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %4, i64 10 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2734)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2735
  store ptr %i.ff, ptr %i.b, align 8, !noalias !2735
  %i.fg = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.fe, ptr %i.fg, align 8, !noalias !2735
  %i.fh = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.fi = shl nuw i16 %i.f, 1
  %i.fj = zext i16 %i.fi to i64                   ; 7 uses
  %.not.i.i75 = icmp samesign ult i64 %i.fe, %i.fj
  br i1 %.not.i.i75, label %bb.bf, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fk = add nuw nsw i64 %i.fj, 131070
  %i.fl = and i64 %i.fk, 131070                   ; 2 uses
  %.not.i.i.not.i = icmp samesign ult i64 %i.fl, %i.fj
  br i1 %.not.i.i.not.i, label %bb.ay, label %bb.bf

bb.ay:                                            ; preds = %bb.ax
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fl
  %.val.i.i.i = load i16, ptr %i.fm, align 1, !alias.scope !2734, !noalias !2736
  %i.fn = tail call i16 @llvm.bswap.i16(i16 %.val.i.i.i) ; 2 uses
  %i.fo = add nuw i16 %i.fn, 1                    ; 2 uses
  switch i16 %i.fn, label %bb.az [
    i16 -1, label %bb.bf
    i16 0, label %.thread
  ], !prof !2737

.thread:                                          ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2735
  br label %.loopexit

bb.az:                                            ; preds = %bb.ay
  %i.fp = add nuw nsw i64 %i.fj, 2                ; 2 uses
  %.not.i124.i = icmp samesign ugt i64 %i.fp, %i.fe
  br i1 %.not.i124.i, label %bb.bf, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fj
  %.sroa.072.0.copyload.i = load i16, ptr %i.fq, align 1, !alias.scope !2734, !noalias !2736
  %i.fr = tail call i16 @llvm.bswap.i16(i16 %.sroa.072.0.copyload.i)
  %i.fs = zext i16 %i.fr to i64
  %i.ft = add nuw nsw i64 %i.fp, %i.fs
  %.fr = freeze i64 %i.ft                         ; 4 uses
  store i64 %.fr, ptr %i.fh, align 8, !noalias !2735
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2735
  call void @_RNvNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyf18resolve_coords_len(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i16 noundef %i.fo), !noalias !2736
  %i.fu = load i32, ptr %i.a, align 4, !range !15, !noalias !2735, !noundef !5
  %i.fv = trunc nuw i32 %i.fu to i1
  br i1 %i.fv, label %bb.bb, label %bb.bc
end_hunk_11
