Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/annotate_snippets-47999b4434a88afd.annotate_snippets.1c99614a877f4187-cgu.07?download=true
inline.NumInlined: 99
inline.NumDeleted: 64
begin_hunk_0_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer10source_map17AnnotatedLineInfoNCINvMNtCscdodAO9FK5_5alloc5sliceSB14_11sort_by_keyjNCNvMB16_NtB16_9SourceMap22add_annotation_to_files0_0E0EB1a_:bb.a

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer10source_map17AnnotatedLineInfoNCINvMNtCscdodAO9FK5_5alloc5sliceSB14_11sort_by_keyjNCNvMB16_NtB16_9SourceMap9keep_lines0_0E0EB1a_(ptr nofree noundef readonly %0, ptr nofree noundef readonly %1, ptr nofree noundef readonly %2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 dereferenceable(8) %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = and i64 %3, 2305843009213693944
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3NtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer10source_map17AnnotatedLineInfoNCINvMNtCscdodAO9FK5_5alloc5sliceSBZ_11sort_by_keyjNCNvMB11_NtB11_9SourceMap9keep_lines0_0E0EB15_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw i64 %i.b, 7                      ; 3 uses
  %i.f = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.e
  %i.g = tail call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer10source_map17AnnotatedLineInfoNCINvMNtCscdodAO9FK5_5alloc5sliceSB14_11sort_by_keyjNCNvMB16_NtB16_9SourceMap9keep_lines0_0E0EB1a_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %4)
  %i.h = getelementptr inbounds nuw [56 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [56 x i8], ptr %1, i64 %i.e
  %i.j = tail call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer10source_map17AnnotatedLineInfoNCINvMNtCscdodAO9FK5_5alloc5sliceSB14_11sort_by_keyjNCNvMB16_NtB16_9SourceMap9keep_lines0_0E0EB1a_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %4)
  %i.k = getelementptr inbounds nuw [56 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [56 x i8], ptr %2, i64 %i.e
  %i.m = tail call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer10source_map17AnnotatedLineInfoNCINvMNtCscdodAO9FK5_5alloc5sliceSB14_11sort_by_keyjNCNvMB16_NtB16_9SourceMap9keep_lines0_0E0EB1a_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %4)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3NtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer10source_map17AnnotatedLineInfoNCINvMNtCscdodAO9FK5_5alloc5sliceSBZ_11sort_by_keyjNCNvMB11_NtB11_9SourceMap9keep_lines0_0E0EB15_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3NtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer10source_map17AnnotatedLineInfoNCINvMNtCscdodAO9FK5_5alloc5sliceSBZ_11sort_by_keyjNCNvMB11_NtB11_9SourceMap9keep_lines0_0E0EB15_.exit: ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %i.n = getelementptr i8, ptr %.sroa.0.0, i64 40
  %.sroa.0.0.val13 = load i64, ptr %i.n, align 8, !noundef !3 ; 2 uses
  %i.o = getelementptr i8, ptr %.sroa.04.0, i64 40
  %.sroa.04.0.val14 = load i64, ptr %i.o, align 8, !noundef !3 ; 2 uses
  %i.p = icmp ult i64 %.sroa.0.0.val13, %.sroa.04.0.val14 ; 2 uses
  %i.q = getelementptr i8, ptr %.sroa.08.0, i64 40
  %.sroa.08.0.val12 = load i64, ptr %i.q, align 8, !noundef !3 ; 2 uses
  %i.r = icmp ult i64 %.sroa.0.0.val13, %.sroa.08.0.val12
  %i.s = xor i1 %i.p, %i.r
  %i.t = icmp ult i64 %.sroa.04.0.val14, %.sroa.08.0.val12
  %i.u = xor i1 %i.p, %i.t
  %..i = select i1 %i.u, ptr %.sroa.08.0, ptr %.sroa.04.0
  %.sroa.0.0.i = select i1 %i.s, ptr %.sroa.0.0, ptr %..i
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer10source_map19MultilineAnnotationNCINvMNtCscdodAO9FK5_5alloc5sliceSB14_11sort_by_keyTjjENCNvMB16_NtB16_9SourceMap15annotated_liness0_0E0EB1a_(ptr nofree noundef readonly %0, ptr nofree noundef readonly %1, ptr nofree noundef readonly %2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 dereferenceable(8) %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = and i64 %3, 2305843009213693944
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [104 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw i64 %i.b, 7                      ; 3 uses
  %i.f = getelementptr inbounds nuw [104 x i8], ptr %0, i64 %i.e
  %i.g = tail call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer10source_map19MultilineAnnotationNCINvMNtCscdodAO9FK5_5alloc5sliceSB14_11sort_by_keyTjjENCNvMB16_NtB16_9SourceMap15annotated_liness0_0E0EB1a_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %4)
  %i.h = getelementptr inbounds nuw [104 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [104 x i8], ptr %1, i64 %i.e
  %i.j = tail call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer10source_map19MultilineAnnotationNCINvMNtCscdodAO9FK5_5alloc5sliceSB14_11sort_by_keyTjjENCNvMB16_NtB16_9SourceMap15annotated_liness0_0E0EB1a_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %4)
  %i.k = getelementptr inbounds nuw [104 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [104 x i8], ptr %2, i64 %i.e
  %i.m = tail call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer10source_map19MultilineAnnotationNCINvMNtCscdodAO9FK5_5alloc5sliceSB14_11sort_by_keyTjjENCNvMB16_NtB16_9SourceMap15annotated_liness0_0E0EB1a_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 3 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 3 uses
  %i.n = getelementptr i8, ptr %.sroa.0.0, i64 32
  %.sroa.0.0.val17 = load i64, ptr %i.n, align 8, !noundef !3 ; 4 uses
  %i.o = getelementptr i8, ptr %.sroa.0.0, i64 64
  %.sroa.0.0.val18 = load i64, ptr %i.o, align 8, !noundef !3 ; 2 uses
  %i.p = getelementptr i8, ptr %.sroa.04.0, i64 32
  %.sroa.04.0.val19 = load i64, ptr %i.p, align 8, !noundef !3 ; 4 uses
  %i.q = getelementptr i8, ptr %.sroa.04.0, i64 64
  %.sroa.04.0.val20 = load i64, ptr %i.q, align 8, !noundef !3 ; 2 uses
  %i.r = icmp eq i64 %.sroa.0.0.val17, %.sroa.04.0.val19
  %i.s = icmp ult i64 %.sroa.0.0.val17, %.sroa.04.0.val19
  %i.t = icmp ugt i64 %.sroa.0.0.val18, %.sroa.04.0.val20
  %.sroa.0.0.i.i = select i1 %i.r, i1 %i.t, i1 %i.s ; 2 uses
  %i.u = getelementptr i8, ptr %.sroa.08.0, i64 32
  %.sroa.08.0.val15 = load i64, ptr %i.u, align 8, !noundef !3 ; 4 uses
  %i.v = getelementptr i8, ptr %.sroa.08.0, i64 64
  %.sroa.08.0.val16 = load i64, ptr %i.v, align 8, !noundef !3 ; 2 uses
  %i.w = icmp eq i64 %.sroa.0.0.val17, %.sroa.08.0.val15
  %i.x = icmp ult i64 %.sroa.0.0.val17, %.sroa.08.0.val15
  %i.y = icmp ugt i64 %.sroa.0.0.val18, %.sroa.08.0.val16
  %.sroa.0.0.i.i21 = select i1 %i.w, i1 %i.y, i1 %i.x
  %i.z = xor i1 %.sroa.0.0.i.i, %.sroa.0.0.i.i21
  br i1 %i.z, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3NtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer10source_map19MultilineAnnotationNCINvMNtCscdodAO9FK5_5alloc5sliceSBZ_11sort_by_keyTjjENCNvMB11_NtB11_9SourceMap15annotated_liness0_0E0EB15_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = icmp eq i64 %.sroa.04.0.val19, %.sroa.08.0.val15
  %i.ab = icmp ult i64 %.sroa.04.0.val19, %.sroa.08.0.val15
  %i.ac = icmp ugt i64 %.sroa.04.0.val20, %.sroa.08.0.val16
  %.sroa.0.0.i.i22 = select i1 %i.aa, i1 %i.ac, i1 %i.ab
  %i.ad = xor i1 %.sroa.0.0.i.i, %.sroa.0.0.i.i22
  %..i = select i1 %i.ad, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3NtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer10source_map19MultilineAnnotationNCINvMNtCscdodAO9FK5_5alloc5sliceSBZ_11sort_by_keyTjjENCNvMB11_NtB11_9SourceMap15annotated_liness0_0E0EB15_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3NtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer10source_map19MultilineAnnotationNCINvMNtCscdodAO9FK5_5alloc5sliceSBZ_11sort_by_keyTjjENCNvMB11_NtB11_9SourceMap15annotated_liness0_0E0EB15_.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %bb.c ], [ %..i, %bb.d ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationNCINvMNtCscdodAO9FK5_5alloc5sliceSB14_11sort_by_keyINtNtBa_3cmp7ReverseTjjEENCNvB16_18render_source_line0E0EB1a_(ptr nofree noundef readonly %0, ptr nofree noundef readonly %1, ptr nofree noundef readonly %2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 dereferenceable(8) %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = and i64 %3, 2305843009213693944
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [112 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw i64 %i.b, 7                      ; 3 uses
  %i.f = getelementptr inbounds nuw [112 x i8], ptr %0, i64 %i.e
  %i.g = tail call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationNCINvMNtCscdodAO9FK5_5alloc5sliceSB14_11sort_by_keyINtNtBa_3cmp7ReverseTjjEENCNvB16_18render_source_line0E0EB1a_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %4)
  %i.h = getelementptr inbounds nuw [112 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [112 x i8], ptr %1, i64 %i.e
  %i.j = tail call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationNCINvMNtCscdodAO9FK5_5alloc5sliceSB14_11sort_by_keyINtNtBa_3cmp7ReverseTjjEENCNvB16_18render_source_line0E0EB1a_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %4)
  %i.k = getelementptr inbounds nuw [112 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [112 x i8], ptr %2, i64 %i.e
  %i.m = tail call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationNCINvMNtCscdodAO9FK5_5alloc5sliceSB14_11sort_by_keyINtNtBa_3cmp7ReverseTjjEENCNvB16_18render_source_line0E0EB1a_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 3 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 3 uses
  %i.n = getelementptr i8, ptr %.sroa.0.0, i64 48
  %.sroa.0.0.val17 = load i64, ptr %i.n, align 8, !noundef !3 ; 2 uses
  %i.o = getelementptr i8, ptr %.sroa.0.0, i64 56
  %.sroa.0.0.val18 = load i64, ptr %i.o, align 8, !noundef !3 ; 4 uses
  %i.p = getelementptr i8, ptr %.sroa.04.0, i64 48
  %.sroa.04.0.val19 = load i64, ptr %i.p, align 8, !noundef !3 ; 2 uses
  %i.q = getelementptr i8, ptr %.sroa.04.0, i64 56
  %.sroa.04.0.val20 = load i64, ptr %i.q, align 8, !noundef !3 ; 4 uses
  %i.r = icmp eq i64 %.sroa.04.0.val20, %.sroa.0.0.val18
  %i.s = icmp ult i64 %.sroa.04.0.val20, %.sroa.0.0.val18
  %i.t = icmp ult i64 %.sroa.04.0.val19, %.sroa.0.0.val17
  %.sroa.0.0.i.i.i = select i1 %i.r, i1 %i.t, i1 %i.s ; 2 uses
  %i.u = getelementptr i8, ptr %.sroa.08.0, i64 48
  %.sroa.08.0.val15 = load i64, ptr %i.u, align 8, !noundef !3 ; 2 uses
  %i.v = getelementptr i8, ptr %.sroa.08.0, i64 56
  %.sroa.08.0.val16 = load i64, ptr %i.v, align 8, !noundef !3 ; 4 uses
  %i.w = icmp eq i64 %.sroa.08.0.val16, %.sroa.0.0.val18
  %i.x = icmp ult i64 %.sroa.08.0.val16, %.sroa.0.0.val18
  %i.y = icmp ult i64 %.sroa.08.0.val15, %.sroa.0.0.val17
  %.sroa.0.0.i.i.i21 = select i1 %i.w, i1 %i.y, i1 %i.x
  %i.z = xor i1 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i21
  br i1 %i.z, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3NtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationNCINvMNtCscdodAO9FK5_5alloc5sliceSBZ_11sort_by_keyINtNtBa_3cmp7ReverseTjjEENCNvB11_18render_source_line0E0EB15_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = icmp eq i64 %.sroa.08.0.val16, %.sroa.04.0.val20
  %i.ab = icmp ult i64 %.sroa.08.0.val16, %.sroa.04.0.val20
  %i.ac = icmp ult i64 %.sroa.08.0.val15, %.sroa.04.0.val19
  %.sroa.0.0.i.i.i22 = select i1 %i.aa, i1 %i.ac, i1 %i.ab
  %i.ad = xor i1 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i22
  %..i = select i1 %i.ad, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3NtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationNCINvMNtCscdodAO9FK5_5alloc5sliceSBZ_11sort_by_keyINtNtBa_3cmp7ReverseTjjEENCNvB11_18render_source_line0E0EB15_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3NtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationNCINvMNtCscdodAO9FK5_5alloc5sliceSBZ_11sort_by_keyINtNtBa_3cmp7ReverseTjjEENCNvB11_18render_source_line0E0EB15_.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %bb.c ], [ %..i, %bb.d ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB14_11sort_by_keyTINtNtBa_3cmp7ReversejEbENCNvB19_18render_source_lines2_0E0EB1d_(ptr nofree noundef readonly %0, ptr nofree noundef readonly %1, ptr nofree noundef readonly %2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 dereferenceable(8) %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = and i64 %3, 2305843009213693944
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw i64 %i.b, 7                      ; 3 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.e
  %i.g = tail call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB14_11sort_by_keyTINtNtBa_3cmp7ReversejEbENCNvB19_18render_source_lines2_0E0EB1d_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %4)
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.e
  %i.j = tail call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB14_11sort_by_keyTINtNtBa_3cmp7ReversejEbENCNvB19_18render_source_lines2_0E0EB1d_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %4)
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.e
  %i.m = tail call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB14_11sort_by_keyTINtNtBa_3cmp7ReversejEbENCNvB19_18render_source_lines2_0E0EB1d_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %i.n = getelementptr i8, ptr %.sroa.0.0, i64 8
  %.sroa.0.0.val13 = load ptr, ptr %i.n, align 8, !nonnull !3, !align !49, !noundef !3 ; 3 uses
  %i.o = getelementptr i8, ptr %.sroa.04.0, i64 8
  %.sroa.04.0.val14 = load ptr, ptr %i.o, align 8, !nonnull !3, !align !49, !noundef !3 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val13, i64 88
  %i.q = load i64, ptr %i.p, align 8, !noundef !3 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val13, i64 56
  %i.s = load i64, ptr %i.r, align 8, !noundef !3 ; 3 uses
  %5 = icmp ult i64 %i.q, %i.s
  %6 = sub nuw i64 %i.s, %i.q
  %i.t = sub nuw i64 %i.q, %i.s
  %.sroa.0.0.i.i = select i1 %5, i64 %6, i64 %i.t ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val13, i64 105
  %i.v = load i8, ptr %i.u, align 1, !range !50, !noundef !3
  %i.w = icmp ne i8 %i.v, 0                       ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.04.0.val14, i64 88
  %i.y = load i64, ptr %i.x, align 8, !noundef !3 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.04.0.val14, i64 56
  %i.aa = load i64, ptr %i.z, align 8, !noundef !3 ; 3 uses
  %7 = icmp ult i64 %i.y, %i.aa
  %8 = sub nuw i64 %i.aa, %i.y
  %i.ab = sub nuw i64 %i.y, %i.aa
  %.sroa.0.0.i7.i = select i1 %7, i64 %8, i64 %i.ab ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.04.0.val14, i64 105
  %i.ad = load i8, ptr %i.ac, align 1, !range !50, !noundef !3
  %i.ae = icmp eq i8 %i.ad, 0                     ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %.sroa.0.0.i7.i, %.sroa.0.0.i.i
  %i.af = icmp ult i64 %.sroa.0.0.i7.i, %.sroa.0.0.i.i
  %i.ag = and i1 %i.w, %i.ae
  %.sroa.0.0.i8.i = select i1 %cond.i.i.i.i, i1 %i.ag, i1 %i.af ; 2 uses
  %i.ah = getelementptr i8, ptr %.sroa.08.0, i64 8
  %.sroa.08.0.val12 = load ptr, ptr %i.ah, align 8, !nonnull !3, !align !49, !noundef !3 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val12, i64 88
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !3 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val12, i64 56
  %i.al = load i64, ptr %i.ak, align 8, !noundef !3 ; 3 uses
  %9 = icmp ult i64 %i.aj, %i.al
  %10 = sub nuw i64 %i.al, %i.aj
  %i.am = sub nuw i64 %i.aj, %i.al
  %.sroa.0.0.i7.i16 = select i1 %9, i64 %10, i64 %i.am ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val12, i64 105
  %i.ao = load i8, ptr %i.an, align 1, !range !50, !noundef !3
  %i.ap = icmp eq i8 %i.ao, 0                     ; 2 uses
  %cond.i.i.i.i17 = icmp eq i64 %.sroa.0.0.i7.i16, %.sroa.0.0.i.i
  %i.aq = icmp ult i64 %.sroa.0.0.i7.i16, %.sroa.0.0.i.i
  %i.ar = and i1 %i.w, %i.ap
  %.sroa.0.0.i8.i18 = select i1 %cond.i.i.i.i17, i1 %i.ar, i1 %i.aq
  %i.as = xor i1 %.sroa.0.0.i8.i, %.sroa.0.0.i8.i18
  br i1 %i.as, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSBZ_11sort_by_keyTINtNtBa_3cmp7ReversejEbENCNvB14_18render_source_lines2_0E0EB18_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not23 = xor i1 %i.ae, true
  %cond.i.i.i.i21 = icmp eq i64 %.sroa.0.0.i7.i16, %.sroa.0.0.i7.i
  %i.at = icmp ult i64 %.sroa.0.0.i7.i16, %.sroa.0.0.i7.i
  %i.au = and i1 %i.ap, %.not23
  %.sroa.0.0.i8.i22 = select i1 %cond.i.i.i.i21, i1 %i.au, i1 %i.at
  %i.av = xor i1 %.sroa.0.0.i8.i, %.sroa.0.0.i8.i22
  %..i = select i1 %i.av, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSBZ_11sort_by_keyTINtNtBa_3cmp7ReversejEbENCNvB14_18render_source_lines2_0E0EB18_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSBZ_11sort_by_keyTINtNtBa_3cmp7ReversejEbENCNvB14_18render_source_lines2_0E0EB18_.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %bb.c ], [ %..i, %bb.d ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtCscdodAO9FK5_5alloc3vec6spliceINtB5_6SpliceINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapNtNtNtBZ_3str4iter5CharsNCNvMs_NtNtCs2sepWsjoOnX_17annotate_snippets8renderer13styled_bufferNtB29_12StyledBuffer7replace0EENtNtNtBZ_3ops4drop4Drop4dropB2d_(ptr noalias noundef align 8 dereferenceable(56) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !57, !nonnull !3, !noundef !3 ; 2 uses
  %.promoted.i = load ptr, ptr %0, align 8, !alias.scope !57 ; 3 uses
  %i.e = icmp eq ptr %.promoted.i, %i.d
  br i1 %i.e, label %_RINvYINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer13styled_buffer10StyledCharENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtB25_3ops9try_traitINtB38_17NeverShortCircuituE10wrap_mut_2uBJ_NCINvNvB1X_8for_each4callBJ_INvNtB25_3mem4dropBJ_EE0E0B3u_EBP_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %.promoted9.i = ptrtoaddr ptr %.promoted.i to i64
  %i.f = ptrtoaddr ptr %i.d to i64
  %i.g = add i64 %i.f, -8
  %i.h = sub i64 %i.g, %.promoted9.i
  %i.i = and i64 %i.h, -8
  %i.j = getelementptr i8, ptr %.promoted.i, i64 %i.i
  %scevgep.i = getelementptr i8, ptr %i.j, i64 8
  store ptr %scevgep.i, ptr %0, align 8, !alias.scope !57
  br label %_RINvYINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer13styled_buffer10StyledCharENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtB25_3ops9try_traitINtB38_17NeverShortCircuituE10wrap_mut_2uBJ_NCINvNvB1X_8for_each4callBJ_INvNtB25_3mem4dropBJ_EE0E0B3u_EBP_.exit

_RINvYINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer13styled_buffer10StyledCharENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtB25_3ops9try_traitINtB38_17NeverShortCircuituE10wrap_mut_2uBJ_NCINvNvB1X_8for_each4callBJ_INvNtB25_3mem4dropBJ_EE0E0B3u_EBP_.exit: ; preds = %bb.a, %.lr.ph.preheader.i
  store ptr inttoptr (i64 4 to ptr), ptr %0, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.c, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load i64, ptr %i.k, align 8, !noundef !3
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvYINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer13styled_buffer10StyledCharENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtB25_3ops9try_traitINtB38_17NeverShortCircuituE10wrap_mut_2uBJ_NCINvNvB1X_8for_each4callBJ_INvNtB25_3mem4dropBJ_EE0E0B3u_EBP_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !3, !noundef !3
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer13styled_buffer10StyledCharEINtB2_10SpecExtendBQ_QINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapNtNtNtB2z_3str4iter5CharsNCNvMs_BS_NtBS_12StyledBuffer7replace0EE11spec_extendBW_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.p)
  br label %bb.d

bb.c:                                             ; preds = %_RINvYINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer13styled_buffer10StyledCharENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtB25_3ops9try_traitINtB38_17NeverShortCircuituE10wrap_mut_2uBJ_NCINvNvB1X_8for_each4callBJ_INvNtB25_3mem4dropBJ_EE0E0B3u_EBP_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.r = tail call noundef zeroext i1 @_RINvMs2_NtNtCscdodAO9FK5_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer13styled_buffer10StyledCharE4fillINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapNtNtNtB2q_3str4iter5CharsNCNvMs_B10_NtB10_12StyledBuffer7replace0EEB14_(ptr noalias noundef nonnull align 8 dereferenceable(40) %0, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.q)
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c, %bb.i, %bb.b
  ret void

bb.e:                                             ; preds = %bb.c
  %.val = load ptr, ptr %i.q, align 8, !alias.scope !58, !nonnull !3, !noundef !3 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val17 = load ptr, ptr %i.s, align 8, !alias.scope !58, !nonnull !3, !noundef !3 ; 2 uses
  %.not = icmp eq ptr %.val17, %.val
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = ptrtoint ptr %.val to i64
  %i.u = ptrtoint ptr %.val17 to i64
  %i.v = sub nuw i64 %i.u, %i.t                   ; 2 uses
  %i.w = lshr i64 %i.v, 2
  %i.x = and i64 %i.v, 3
  %.not.i.i = icmp ne i64 %i.x, 0
  %i.y = zext i1 %.not.i.i to i64
  %.sroa.0.0.i.i = add nuw nsw i64 %i.w, %i.y
  tail call void @_RNvMs2_NtNtCscdodAO9FK5_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer13styled_buffer10StyledCharE9move_tailB13_(ptr noalias noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %.sroa.0.0.i.i)
  %i.z = tail call noundef zeroext i1 @_RINvMs2_NtNtCscdodAO9FK5_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer13styled_buffer10StyledCharE4fillINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapNtNtNtB2q_3str4iter5CharsNCNvMs_B10_NtB10_12StyledBuffer7replace0EEB14_(ptr noalias noundef nonnull align 8 dereferenceable(40) %0, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.q)
  br i1 %i.z, label %bb.h, label %bb.d

bb.g:                                             ; preds = %bb.k, %bb.j
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer13styled_buffer10StyledCharENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB11_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer13styled_buffer10StyledCharEEB1u_.exit unwind label %bb.l

bb.h:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer13styled_buffer10StyledCharEINtB2_12SpecFromIterBT_QINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapNtNtNtB2E_3str4iter5CharsNCNvMs_BV_NtBV_12StyledBuffer7replace0EE9from_iterBZ_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.q)
  %.sroa.09.0.copyload = load i64, ptr %i.a, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.511.0.copyload = load i64, ptr %.sroa.511.0..sroa_idx, align 8 ; 4 uses
  %i.ab = icmp ult i64 %.sroa.511.0.copyload, 1152921504606846976
  call void @llvm.assume(i1 %i.ab)
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.sroa.410.0.copyload, i64 %.sroa.511.0.copyload
  store ptr %.sroa.410.0.copyload, ptr %i.b, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.09.0.copyload, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.410.0.copyload, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.ac, ptr %i.af, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not16 = icmp eq i64 %.sroa.511.0.copyload, 0
  br i1 %.not16, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.k, %bb.h
  call void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer13styled_buffer10StyledCharENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB11_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.j:                                             ; preds = %bb.h
  invoke void @_RNvMs2_NtNtCscdodAO9FK5_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer13styled_buffer10StyledCharE9move_tailB13_(ptr noalias noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %.sroa.511.0.copyload)
          to label %bb.k unwind label %bb.g

bb.k:                                             ; preds = %bb.j
  %i.ag = invoke noundef zeroext i1 @_RINvMs2_NtNtCscdodAO9FK5_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer13styled_buffer10StyledCharE4fillINtNtB8_9into_iter8IntoIterBY_EEB14_(ptr noalias noundef nonnull align 8 dereferenceable(40) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %bb.i unwind label %bb.g       ; 0 uses

bb.l:                                             ; preds = %bb.g
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #9
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer13styled_buffer10StyledCharEEB1u_.exit: ; preds = %bb.g
  resume { ptr, i32 } %i.aa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i8 -1, 2) i8 @_RNvXs2_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator10max_by_key7compareINtNtB9_5range5RangejEjEINtB7_6FnOnceTRTjB1S_EB2u_EE9call_onceCs2sepWsjoOnX_17annotate_snippets(ptr noalias nofree noundef nonnull readnone captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  %.val = load i64, ptr %1, align 8, !noundef !3
  %.val1 = load i64, ptr %2, align 8, !noundef !3
  %i.a = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %.val, i64 %.val1)
  ret i8 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i8 -1, 2) i8 @_RNvXs2_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator10min_by_key7compareINtNtB9_5range5RangejEjEINtB7_6FnOnceTRTjB1S_EB2u_EE9call_onceCs2sepWsjoOnX_17annotate_snippets(ptr noalias nofree noundef nonnull readnone captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  %.val = load i64, ptr %1, align 8, !noundef !3
  %.val1 = load i64, ptr %2, align 8, !noundef !3
  %i.a = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %.val, i64 %.val1)
  ret i8 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i8 -1, 2) i8 @_RNvXs2_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator10min_by_key7compareRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationTINtNtBb_3cmp7ReversebEjEEINtB7_6FnOnceTRTB32_B1S_EB3G_EE9call_onceB1Z_(ptr noalias nofree noundef nonnull readnone captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  %.val = load i8, ptr %1, align 8, !range !59, !noundef !3 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load i64, ptr %i.a, align 8
  %.val2 = load i8, ptr %2, align 8, !range !59, !noundef !3 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val3 = load i64, ptr %i.b, align 8
  %i.c = sub nsw i8 %.val2, %.val
  %i.d = icmp eq i8 %.val2, %.val
  %i.e = tail call range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %.val1, i64 %.val3)
  %.sroa.0.0.i.i.i = select i1 %i.d, i8 %i.e, i8 %i.c
  ret i8 %.sroa.0.0.i.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i8 -1, 2) i8 @_RNvXs2_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNvYjNtNtBb_3cmp3Ord3cmpINtB7_6FnOnceTRjB1p_EE9call_onceCs2sepWsjoOnX_17annotate_snippets(ptr noalias nofree noundef nonnull readnone captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #1 {
bb.a:
  %.val = load i64, ptr %1, align 8, !noundef !3
  %.val1 = load i64, ptr %2, align 8, !noundef !3
  %i.a = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %.val, i64 %.val1)
  ret i8 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer13styled_buffer10StyledCharENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB11_(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer13styled_buffer10StyledCharEINtB2_10SpecExtendBQ_QINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapNtNtNtB2z_3str4iter5CharsNCNvMs_BS_NtBS_12StyledBuffer7replace0EE11spec_extendBW_(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvMs2_NtNtCscdodAO9FK5_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer13styled_buffer10StyledCharE4fillINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapNtNtNtB2q_3str4iter5CharsNCNvMs_B10_NtB10_12StyledBuffer7replace0EEB14_(ptr noalias noundef align 8 dereferenceable(40), ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs2_NtNtCscdodAO9FK5_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer13styled_buffer10StyledCharE9move_tailB13_(ptr noalias noundef align 8 dereferenceable(40), i64 noundef) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer13styled_buffer10StyledCharEINtB2_12SpecFromIterBT_QINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapNtNtNtB2E_3str4iter5CharsNCNvMs_BV_NtBV_12StyledBuffer7replace0EE9from_iterBZ_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvMs2_NtNtCscdodAO9FK5_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer13styled_buffer10StyledCharE4fillINtNtB8_9into_iter8IntoIterBY_EEB14_(ptr noalias noundef align 8 dereferenceable(40), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #3

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64, i64) #8

attributes #0 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!3 = !{}
!4 = distinct !{!4, i1 true, !"_RNvXso_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs2sepWsjoOnX_17annotate_snippets"}
!5 = distinct !{!5, !4, !"_RNvXso_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs2sepWsjoOnX_17annotate_snippets: argument 1"}
!6 = distinct !{!6, !4, !"_RNvXso_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs2sepWsjoOnX_17annotate_snippets: argument 0"}
!7 = distinct !{!7, i1 true, !"_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs2sepWsjoOnX_17annotate_snippets"}
!8 = distinct !{!8, !7, !"_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs2sepWsjoOnX_17annotate_snippets: argument 1"}
!9 = distinct !{!9, !7, !"_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs2sepWsjoOnX_17annotate_snippets: argument 0"}
!10 = distinct !{!10, i1 true, !"_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs2sepWsjoOnX_17annotate_snippets"}
!11 = distinct !{!11, !10, !"_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs2sepWsjoOnX_17annotate_snippets: argument 1"}
!12 = distinct !{!12, !10, !"_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs2sepWsjoOnX_17annotate_snippets: argument 0"}
!13 = distinct !{!13, i1 true, !"_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next"}
!14 = distinct !{!14, !13, !"_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next: argument 0"}
!15 = distinct !{!15, i1 true, !"_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs2sepWsjoOnX_17annotate_snippets"}
!16 = distinct !{!16, !15, !"_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs2sepWsjoOnX_17annotate_snippets: argument 0"}
!17 = distinct !{!17, i1 true, !"_RNvXsp_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs2sepWsjoOnX_17annotate_snippets"}
!18 = distinct !{!18, !17, !"_RNvXsp_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs2sepWsjoOnX_17annotate_snippets: argument 1"}
!19 = distinct !{!19, !17, !"_RNvXsp_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs2sepWsjoOnX_17annotate_snippets: argument 0"}
!20 = distinct !{!20, i1 true, !"_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs2sepWsjoOnX_17annotate_snippets"}
!21 = distinct !{!21, !20, !"_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs2sepWsjoOnX_17annotate_snippets: argument 1"}
!22 = distinct !{!22, !20, !"_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs2sepWsjoOnX_17annotate_snippets: argument 0"}
!23 = distinct !{!23, i1 true, !"_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCs2sepWsjoOnX_17annotate_snippets"}
!24 = distinct !{!24, !23, !"_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCs2sepWsjoOnX_17annotate_snippets: argument 1"}
!25 = distinct !{!25, !23, !"_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCs2sepWsjoOnX_17annotate_snippets: argument 0"}
!26 = distinct !{!26, i1 true, !"_RNvXs4_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back"}
!27 = distinct !{!27, !26, !"_RNvXs4_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back: argument 0"}
!28 = distinct !{!28, i1 true, !"_RINvNtNtCs4NRVxsYgnAr_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECs2sepWsjoOnX_17annotate_snippets"}
!29 = distinct !{!29, !28, !"_RINvNtNtCs4NRVxsYgnAr_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECs2sepWsjoOnX_17annotate_snippets: argument 0"}
!30 = !{!16, !14, !12, !11, !9, !8, !6, !5}
!31 = !{!12, !11, !9, !8, !6, !5}
!32 = !{!29, !27, !25, !24, !22, !21, !19, !18}
!33 = !{!25, !24, !22, !21, !19, !18}
!34 = distinct !{!34, i1 true, !"_RNvXso_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs2sepWsjoOnX_17annotate_snippets"}
!35 = distinct !{!35, !34, !"_RNvXso_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs2sepWsjoOnX_17annotate_snippets: argument 1"}
!36 = distinct !{!36, !34, !"_RNvXso_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs2sepWsjoOnX_17annotate_snippets: argument 0"}
!37 = distinct !{!37, i1 true, !"_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs2sepWsjoOnX_17annotate_snippets"}
!38 = distinct !{!38, !37, !"_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs2sepWsjoOnX_17annotate_snippets: argument 1"}
!39 = distinct !{!39, !37, !"_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs2sepWsjoOnX_17annotate_snippets: argument 0"}
!40 = distinct !{!40, i1 true, !"_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs2sepWsjoOnX_17annotate_snippets"}
!41 = distinct !{!41, !40, !"_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs2sepWsjoOnX_17annotate_snippets: argument 1"}
!42 = distinct !{!42, !40, !"_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs2sepWsjoOnX_17annotate_snippets: argument 0"}
!43 = distinct !{!43, i1 true, !"_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next"}
!44 = distinct !{!44, !43, !"_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next: argument 0"}
!45 = distinct !{!45, i1 true, !"_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs2sepWsjoOnX_17annotate_snippets"}
!46 = distinct !{!46, !45, !"_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs2sepWsjoOnX_17annotate_snippets: argument 0"}
!47 = !{!46, !44, !42, !41, !39, !38, !36, !35}
!48 = !{!42, !41, !39, !38, !36, !35}
!49 = !{i64 8}
!50 = !{i8 0, i8 3}
!51 = distinct !{!51, i1 true, !"_RINvYINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer13styled_buffer10StyledCharENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtB25_3ops9try_traitINtB38_17NeverShortCircuituE10wrap_mut_2uBJ_NCINvNvB1X_8for_each4callBJ_INvNtB25_3mem4dropBJ_EE0E0B3u_EBP_"}
!52 = distinct !{!52, !51, !"_RINvYINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer13styled_buffer10StyledCharENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtB25_3ops9try_traitINtB38_17NeverShortCircuituE10wrap_mut_2uBJ_NCINvNvB1X_8for_each4callBJ_INvNtB25_3mem4dropBJ_EE0E0B3u_EBP_: argument 0"}
!53 = distinct !{!53, i1 true, !"_RNvXs3_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer13styled_buffer10StyledCharENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBU_"}
!54 = distinct !{!54, !53, !"_RNvXs3_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer13styled_buffer10StyledCharENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBU_: argument 0"}
!55 = distinct !{!55, i1 true, !"_RNvXs2I_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits10exact_size17ExactSizeIterator3lenCs2sepWsjoOnX_17annotate_snippets"}
!56 = distinct !{!56, !55, !"_RNvXs2I_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits10exact_size17ExactSizeIterator3lenCs2sepWsjoOnX_17annotate_snippets: argument 0"}
!57 = !{!54, !52}
!58 = !{!56}
!59 = !{i8 0, i8 2}
end_hunk_0
