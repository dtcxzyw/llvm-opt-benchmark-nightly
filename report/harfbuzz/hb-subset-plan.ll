Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-plan?download=true
inline.NumInlined: 7106
inline.NumDeleted: 3185
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZZN2OT4cmap13accelerator_tC1EP9hb_face_tENKUlPFbPKvjPjEE_clES8_:bb.a
  %i.aj = shl nuw nsw i32 %i.w, 3
  %i.ak = add nuw nsw i32 %i.aj, 16               ; 2 uses
  %i.al = icmp ugt i32 %.1.i, %i.ak
  %i.am = sub i32 %.1.i, %i.ak
  %i.an = lshr i32 %i.am, 1
  %i.ao = select i1 %i.al, i32 %i.an, i32 0
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !335
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.b, ptr %i.aq, align 8, !tbaa !230
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.ar, align 8, !tbaa !228
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN2OT4cmap13accelerator_t21get_glyph_from_symbolINS_19CmapSubtableFormat413accelerator_tEXadL_ZNS_L18_hb_symbol_pua_mapEjEEEEbPKvjPj(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2) #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK2OT19CmapSubtableFormat413accelerator_t9get_glyphEjPj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, ptr noundef %2)
  br i1 %i.a, label %bb.d, label %bb.b, !prof !68

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i32 %1, 256
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = or disjoint i32 %1, 61440
  %i.d = tail call noundef zeroext i1 @_ZNK2OT19CmapSubtableFormat413accelerator_t9get_glyphEjPj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.c, ptr noundef %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.1 = phi i1 [ true, %bb.a ], [ %i.d, %bb.c ], [ false, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN2OT4cmap13accelerator_t21get_glyph_from_symbolINS_12CmapSubtableEXadL_ZNS_L18_hb_symbol_pua_mapEjEEEEbPKvjPj(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2) #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK2OT12CmapSubtable9get_glyphEjPjj(ptr noundef nonnull align 1 dereferenceable(262) %0, i32 noundef %1, ptr noundef %2, i32 noundef 0)
  br i1 %i.a, label %bb.d, label %bb.b, !prof !68

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i32 %1, 256
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = or disjoint i32 %1, 61440
  %i.d = tail call noundef zeroext i1 @_ZNK2OT12CmapSubtable9get_glyphEjPjj(ptr noundef nonnull align 1 dereferenceable(262) %0, i32 noundef %i.c, ptr noundef %2, i32 noundef 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.1 = phi i1 [ true, %bb.a ], [ %i.d, %bb.c ], [ false, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN2OT4cmap13accelerator_t21get_glyph_from_symbolINS_19CmapSubtableFormat413accelerator_tEXadL_ZL23_hb_arabic_pua_simp_mapjEEEEbPKvjPj(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2) #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK2OT19CmapSubtableFormat413accelerator_t9get_glyphEjPj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, ptr noundef %2)
  br i1 %i.a, label %bb.d, label %bb.b, !prof !68

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc noundef zeroext i16 @_ZL23_hb_arabic_pua_simp_mapj(i32 noundef %1) ; 2 uses
  %.not.not = icmp eq i16 %i.b, 0
  br i1 %.not.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = zext i16 %i.b to i32
  %i.d = tail call noundef zeroext i1 @_ZNK2OT19CmapSubtableFormat413accelerator_t9get_glyphEjPj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.c, ptr noundef %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.1 = phi i1 [ true, %bb.a ], [ %i.d, %bb.c ], [ false, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN2OT4cmap13accelerator_t21get_glyph_from_symbolINS_12CmapSubtableEXadL_ZL23_hb_arabic_pua_simp_mapjEEEEbPKvjPj(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2) #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK2OT12CmapSubtable9get_glyphEjPjj(ptr noundef nonnull align 1 dereferenceable(262) %0, i32 noundef %1, ptr noundef %2, i32 noundef 0)
  br i1 %i.a, label %bb.d, label %bb.b, !prof !68

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc noundef zeroext i16 @_ZL23_hb_arabic_pua_simp_mapj(i32 noundef %1) ; 2 uses
  %.not.not = icmp eq i16 %i.b, 0
  br i1 %.not.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = zext i16 %i.b to i32
  %i.d = tail call noundef zeroext i1 @_ZNK2OT12CmapSubtable9get_glyphEjPjj(ptr noundef nonnull align 1 dereferenceable(262) %0, i32 noundef %i.c, ptr noundef %2, i32 noundef 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.1 = phi i1 [ true, %bb.a ], [ %i.d, %bb.c ], [ false, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN2OT4cmap13accelerator_t21get_glyph_from_symbolINS_19CmapSubtableFormat413accelerator_tEXadL_ZL23_hb_arabic_pua_trad_mapjEEEEbPKvjPj(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2) #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK2OT19CmapSubtableFormat413accelerator_t9get_glyphEjPj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, ptr noundef %2)
  br i1 %i.a, label %bb.d, label %bb.b, !prof !68

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc noundef zeroext i16 @_ZL23_hb_arabic_pua_trad_mapj(i32 noundef %1) ; 2 uses
  %.not.not = icmp eq i16 %i.b, 0
  br i1 %.not.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = zext i16 %i.b to i32
  %i.d = tail call noundef zeroext i1 @_ZNK2OT19CmapSubtableFormat413accelerator_t9get_glyphEjPj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.c, ptr noundef %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.1 = phi i1 [ true, %bb.a ], [ %i.d, %bb.c ], [ false, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN2OT4cmap13accelerator_t21get_glyph_from_symbolINS_12CmapSubtableEXadL_ZL23_hb_arabic_pua_trad_mapjEEEEbPKvjPj(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2) #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK2OT12CmapSubtable9get_glyphEjPjj(ptr noundef nonnull align 1 dereferenceable(262) %0, i32 noundef %1, ptr noundef %2, i32 noundef 0)
  br i1 %i.a, label %bb.d, label %bb.b, !prof !68

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc noundef zeroext i16 @_ZL23_hb_arabic_pua_trad_mapj(i32 noundef %1) ; 2 uses
  %.not.not = icmp eq i16 %i.b, 0
  br i1 %.not.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = zext i16 %i.b to i32
  %i.d = tail call noundef zeroext i1 @_ZNK2OT12CmapSubtable9get_glyphEjPjj(ptr noundef nonnull align 1 dereferenceable(262) %0, i32 noundef %i.c, ptr noundef %2, i32 noundef 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.1 = phi i1 [ true, %bb.a ], [ %i.d, %bb.c ], [ false, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT4cmap13accelerator_t14get_glyph_fromINS_19CmapSubtableFormat413accelerator_tEEEbPKvjPj(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK2OT19CmapSubtableFormat413accelerator_t9get_glyphEjPj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, ptr noundef %2)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT4cmap13accelerator_t14get_glyph_fromINS_12CmapSubtableEEEbPKvjPj(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK2OT12CmapSubtable9get_glyphEjPjj(ptr noundef nonnull align 1 dereferenceable(262) %0, i32 noundef %1, ptr noundef %2, i32 noundef 0)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT4cmap13accelerator_t23get_glyph_from_macromanINS_19CmapSubtableFormat413accelerator_tEEEbPKvjPj(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 comdat align 2 {
bb.a:
  %i.a = icmp ult i32 %1, 128
  br i1 %i.a, label %_ZN2OT4cmap13accelerator_t20get_glyph_from_asciiINS_19CmapSubtableFormat413accelerator_tEEEbPKvjPj.exit, label %_ZN2OT4cmap13accelerator_t20get_glyph_from_asciiINS_19CmapSubtableFormat413accelerator_tEEEbPKvjPj.exit.thread

_ZN2OT4cmap13accelerator_t20get_glyph_from_asciiINS_19CmapSubtableFormat413accelerator_tEEEbPKvjPj.exit: ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZNK2OT19CmapSubtableFormat413accelerator_t9get_glyphEjPj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, ptr noundef %2)
  br i1 %i.b, label %_ZN2OTL19unicode_to_macromanEj.exit.thread, label %_ZN2OT4cmap13accelerator_t20get_glyph_from_asciiINS_19CmapSubtableFormat413accelerator_tEEEbPKvjPj.exit.thread

_ZN2OT4cmap13accelerator_t20get_glyph_from_asciiINS_19CmapSubtableFormat413accelerator_tEEEbPKvjPj.exit.thread: ; preds = %bb.a, %_ZN2OT4cmap13accelerator_t20get_glyph_from_asciiINS_19CmapSubtableFormat413accelerator_tEEEbPKvjPj.exit
  %.sroa.0.0.extract.trunc.i = trunc i32 %1 to i16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %_ZN2OT4cmap13accelerator_t20get_glyph_from_asciiINS_19CmapSubtableFormat413accelerator_tEEEbPKvjPj.exit.thread
  %.0202.i.i.i = phi i32 [ 127, %_ZN2OT4cmap13accelerator_t20get_glyph_from_asciiINS_19CmapSubtableFormat413accelerator_tEEEbPKvjPj.exit.thread ], [ %.2.i.i.i, %bb.f ] ; 2 uses
  %.0211.i.i.i = phi i32 [ 0, %_ZN2OT4cmap13accelerator_t20get_glyph_from_asciiINS_19CmapSubtableFormat413accelerator_tEEEbPKvjPj.exit.thread ], [ %.223.i.i.i, %bb.f ] ; 2 uses
  %i.c = add i32 %.0211.i.i.i, %.0202.i.i.i
  %i.d = lshr i32 %i.c, 1                         ; 3 uses
  %i.e = zext nneg i32 %i.d to i64
  %i.f = shl nuw nsw i64 %i.e, 2                  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr @_ZZN2OTL19unicode_to_macromanEjE7mapping, i64 %i.f
  %i.h = load i16, ptr %i.g, align 4, !tbaa !337  ; 2 uses
  %i.i = icmp ugt i16 %i.h, %.sroa.0.0.extract.trunc.i
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = add nsw i32 %i.d, -1
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not28.i.i.i = icmp eq i16 %i.h, %.sroa.0.0.extract.trunc.i
  br i1 %.not28.i.i.i, label %_ZN2OTL19unicode_to_macromanEj.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = add nuw nsw i32 %i.d, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.223.i.i.i = phi i32 [ %i.k, %bb.e ], [ %.0211.i.i.i, %bb.c ] ; 2 uses
  %.2.i.i.i = phi i32 [ %.0202.i.i.i, %bb.e ], [ %i.j, %bb.c ] ; 2 uses
  %.not.not.i.i.i = icmp sgt i32 %.223.i.i.i, %.2.i.i.i
  br i1 %.not.not.i.i.i, label %_ZN2OTL19unicode_to_macromanEj.exit.thread, label %bb.b, !llvm.loop !19

_ZN2OTL19unicode_to_macromanEj.exit:              ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr @_ZZN2OTL19unicode_to_macromanEjE7mapping, i64 %i.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  %i.n = load i8, ptr %i.m, align 2, !tbaa !339   ; 2 uses
  %.not = icmp eq i8 %i.n, 0
  br i1 %.not, label %_ZN2OTL19unicode_to_macromanEj.exit.thread, label %3

3:                                                ; preds = %_ZN2OTL19unicode_to_macromanEj.exit
  %4 = zext i8 %i.n to i32
  %5 = tail call noundef zeroext i1 @_ZNK2OT19CmapSubtableFormat413accelerator_t9get_glyphEjPj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %4, ptr noundef %2)
  br label %_ZN2OTL19unicode_to_macromanEj.exit.thread

_ZN2OTL19unicode_to_macromanEj.exit.thread:       ; preds = %bb.f, %_ZN2OTL19unicode_to_macromanEj.exit, %3, %_ZN2OT4cmap13accelerator_t20get_glyph_from_asciiINS_19CmapSubtableFormat413accelerator_tEEEbPKvjPj.exit
  %.0 = phi i1 [ true, %_ZN2OT4cmap13accelerator_t20get_glyph_from_asciiINS_19CmapSubtableFormat413accelerator_tEEEbPKvjPj.exit ], [ false, %_ZN2OTL19unicode_to_macromanEj.exit ], [ %5, %3 ], [ false, %bb.f ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT4cmap13accelerator_t23get_glyph_from_macromanINS_12CmapSubtableEEEbPKvjPj(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 comdat align 2 {
bb.a:
  %i.a = icmp ult i32 %1, 128
  br i1 %i.a, label %_ZN2OT4cmap13accelerator_t20get_glyph_from_asciiINS_12CmapSubtableEEEbPKvjPj.exit, label %_ZN2OT4cmap13accelerator_t20get_glyph_from_asciiINS_12CmapSubtableEEEbPKvjPj.exit.thread

_ZN2OT4cmap13accelerator_t20get_glyph_from_asciiINS_12CmapSubtableEEEbPKvjPj.exit: ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZNK2OT12CmapSubtable9get_glyphEjPjj(ptr noundef nonnull align 1 dereferenceable(262) %0, i32 noundef %1, ptr noundef %2, i32 noundef 0)
  br i1 %i.b, label %_ZN2OTL19unicode_to_macromanEj.exit.thread, label %_ZN2OT4cmap13accelerator_t20get_glyph_from_asciiINS_12CmapSubtableEEEbPKvjPj.exit.thread

_ZN2OT4cmap13accelerator_t20get_glyph_from_asciiINS_12CmapSubtableEEEbPKvjPj.exit.thread: ; preds = %bb.a, %_ZN2OT4cmap13accelerator_t20get_glyph_from_asciiINS_12CmapSubtableEEEbPKvjPj.exit
  %.sroa.0.0.extract.trunc.i = trunc i32 %1 to i16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %_ZN2OT4cmap13accelerator_t20get_glyph_from_asciiINS_12CmapSubtableEEEbPKvjPj.exit.thread
  %.0202.i.i.i = phi i32 [ 127, %_ZN2OT4cmap13accelerator_t20get_glyph_from_asciiINS_12CmapSubtableEEEbPKvjPj.exit.thread ], [ %.2.i.i.i, %bb.f ] ; 2 uses
  %.0211.i.i.i = phi i32 [ 0, %_ZN2OT4cmap13accelerator_t20get_glyph_from_asciiINS_12CmapSubtableEEEbPKvjPj.exit.thread ], [ %.223.i.i.i, %bb.f ] ; 2 uses
  %i.c = add i32 %.0211.i.i.i, %.0202.i.i.i
  %i.d = lshr i32 %i.c, 1                         ; 3 uses
  %i.e = zext nneg i32 %i.d to i64
  %i.f = shl nuw nsw i64 %i.e, 2                  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr @_ZZN2OTL19unicode_to_macromanEjE7mapping, i64 %i.f
  %i.h = load i16, ptr %i.g, align 4, !tbaa !337  ; 2 uses
  %i.i = icmp ugt i16 %i.h, %.sroa.0.0.extract.trunc.i
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = add nsw i32 %i.d, -1
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not28.i.i.i = icmp eq i16 %i.h, %.sroa.0.0.extract.trunc.i
  br i1 %.not28.i.i.i, label %_ZN2OTL19unicode_to_macromanEj.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = add nuw nsw i32 %i.d, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.223.i.i.i = phi i32 [ %i.k, %bb.e ], [ %.0211.i.i.i, %bb.c ] ; 2 uses
  %.2.i.i.i = phi i32 [ %.0202.i.i.i, %bb.e ], [ %i.j, %bb.c ] ; 2 uses
  %.not.not.i.i.i = icmp sgt i32 %.223.i.i.i, %.2.i.i.i
  br i1 %.not.not.i.i.i, label %_ZN2OTL19unicode_to_macromanEj.exit.thread, label %bb.b, !llvm.loop !19

_ZN2OTL19unicode_to_macromanEj.exit:              ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr @_ZZN2OTL19unicode_to_macromanEjE7mapping, i64 %i.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  %i.n = load i8, ptr %i.m, align 2, !tbaa !339   ; 2 uses
  %.not = icmp eq i8 %i.n, 0
  br i1 %.not, label %_ZN2OTL19unicode_to_macromanEj.exit.thread, label %3

3:                                                ; preds = %_ZN2OTL19unicode_to_macromanEj.exit
  %4 = zext i8 %i.n to i32
  %5 = tail call noundef zeroext i1 @_ZNK2OT12CmapSubtable9get_glyphEjPjj(ptr noundef nonnull align 1 dereferenceable(262) %0, i32 noundef %4, ptr noundef %2, i32 noundef 0)
  br label %_ZN2OTL19unicode_to_macromanEj.exit.thread

_ZN2OTL19unicode_to_macromanEj.exit.thread:       ; preds = %bb.f, %_ZN2OTL19unicode_to_macromanEj.exit, %3, %_ZN2OT4cmap13accelerator_t20get_glyph_from_asciiINS_12CmapSubtableEEEbPKvjPj.exit
  %.0 = phi i1 [ true, %_ZN2OT4cmap13accelerator_t20get_glyph_from_asciiINS_12CmapSubtableEEEbPKvjPj.exit ], [ false, %_ZN2OTL19unicode_to_macromanEj.exit ], [ %5, %3 ], [ false, %bb.f ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT4cmap13accelerator_t20get_glyph_from_asciiINS_19CmapSubtableFormat413accelerator_tEEEbPKvjPj(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 comdat align 2 {
bb.a:
  %i.a = icmp ult i32 %1, 128
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZNK2OT19CmapSubtableFormat413accelerator_t9get_glyphEjPj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, ptr noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi i1 [ false, %bb.a ], [ %i.b, %bb.b ]
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT4cmap13accelerator_t20get_glyph_from_asciiINS_12CmapSubtableEEEbPKvjPj(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 comdat align 2 {
bb.a:
  %i.a = icmp ult i32 %1, 128
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZNK2OT12CmapSubtable9get_glyphEjPjj(ptr noundef nonnull align 1 dereferenceable(262) %0, i32 noundef %1, ptr noundef %2, i32 noundef 0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi i1 [ false, %bb.a ], [ %i.b, %bb.b ]
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT4cmap13accelerator_t14get_glyph_fromINS_20CmapSubtableFormat12EEEbPKvjPj(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i32, ptr %i.a, align 1, !tbaa !39
  %i.d = tail call noundef i32 @llvm.bswap.i32(i32 %i.c) ; 2 uses
  %.not2.i.i.i.i.i.i = icmp sgt i32 %i.d, 0
  br i1 %.not2.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i, label %_ZNK2OT13SortedArrayOfINS_21CmapSubtableLongGroupENS_7NumTypeILb1EjLj4EEEE7bsearchIjEERKS1_RKT_S7_.exit.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.a
  %i.e = add nsw i32 %i.d, -1
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.e, %.lr.ph.preheader.i.i.i.i.i.i
  %.0204.i.i.i.i.i.i = phi i32 [ %.2.i.i.i.i.i.i, %bb.e ], [ %i.e, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.0213.i.i.i.i.i.i = phi i32 [ %.223.i.i.i.i.i.i, %bb.e ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.f = add i32 %.0213.i.i.i.i.i.i, %.0204.i.i.i.i.i.i
  %i.g = lshr i32 %i.f, 1                         ; 3 uses
  %i.h = zext nneg i32 %i.g to i64                ; 2 uses
  %i.i = mul nuw nsw i64 %i.h, 12
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %i.j, align 1, !tbaa !39
  %i.l = tail call noundef i32 @llvm.bswap.i32(i32 %i.k)
  %i.m = icmp ult i32 %1, %i.l
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.n = add nsw i32 %i.g, -1
  br label %bb.e

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.p = load i32, ptr %i.o, align 1
  %i.q = tail call i32 @llvm.bswap.i32(i32 %i.p)
  %.not1.i.i.i.i.i.i = icmp ugt i32 %1, %i.q
  br i1 %.not1.i.i.i.i.i.i, label %bb.d, label %_ZNK17hb_sorted_array_tIKN2OT21CmapSubtableLongGroupEE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.r = add nuw nsw i32 %i.g, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.223.i.i.i.i.i.i = phi i32 [ %i.r, %bb.d ], [ %.0213.i.i.i.i.i.i, %bb.b ] ; 2 uses
  %.2.i.i.i.i.i.i = phi i32 [ %.0204.i.i.i.i.i.i, %bb.d ], [ %i.n, %bb.b ] ; 2 uses
  %.not.not.i.i.i.i.i.i = icmp sgt i32 %.223.i.i.i.i.i.i, %.2.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i, label %_ZNK2OT13SortedArrayOfINS_21CmapSubtableLongGroupENS_7NumTypeILb1EjLj4EEEE7bsearchIjEERKS1_RKT_S7_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !20

_ZNK17hb_sorted_array_tIKN2OT21CmapSubtableLongGroupEE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %i.h
  br label %_ZNK2OT13SortedArrayOfINS_21CmapSubtableLongGroupENS_7NumTypeILb1EjLj4EEEE7bsearchIjEERKS1_RKT_S7_.exit.i

_ZNK2OT13SortedArrayOfINS_21CmapSubtableLongGroupENS_7NumTypeILb1EjLj4EEEE7bsearchIjEERKS1_RKT_S7_.exit.i: ; preds = %bb.e, %_ZNK17hb_sorted_array_tIKN2OT21CmapSubtableLongGroupEE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit.i.i.i, %bb.a
  %i.t = phi ptr [ %i.s, %_ZNK17hb_sorted_array_tIKN2OT21CmapSubtableLongGroupEE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit.i.i.i ], [ @_hb_Null_OT_CmapSubtableLongGroup, %bb.a ], [ @_hb_Null_OT_CmapSubtableLongGroup, %bb.e ] ; 3 uses
  %i.u = load i32, ptr %i.t, align 1, !tbaa !39
  %i.v = tail call noundef i32 @llvm.bswap.i32(i32 %i.u) ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.x = load i32, ptr %i.w, align 1, !tbaa !39
  %i.y = tail call noundef i32 @llvm.bswap.i32(i32 %i.x)
  %.not.i.i = icmp ugt i32 %i.v, %i.y
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.aa = load i32, ptr %i.z, align 1
  %i.ab = tail call i32 @llvm.bswap.i32(i32 %i.aa)
  %i.ac = sub i32 %1, %i.v
  %i.ad = add i32 %i.ac, %i.ab
  %i.ae = select i1 %.not.i.i, i32 0, i32 %i.ad, !prof !66 ; 2 uses
  %.not.i = icmp ne i32 %i.ae, 0                  ; 2 uses
  br i1 %.not.i, label %bb.f, label %_ZNK2OT25CmapSubtableLongSegmentedINS_20CmapSubtableFormat12EE9get_glyphEjPj.exit, !prof !68

bb.f:                                             ; preds = %_ZNK2OT13SortedArrayOfINS_21CmapSubtableLongGroupENS_7NumTypeILb1EjLj4EEEE7bsearchIjEERKS1_RKT_S7_.exit.i
  store i32 %i.ae, ptr %2, align 4, !tbaa !157
  br label %_ZNK2OT25CmapSubtableLongSegmentedINS_20CmapSubtableFormat12EE9get_glyphEjPj.exit

_ZNK2OT25CmapSubtableLongSegmentedINS_20CmapSubtableFormat12EE9get_glyphEjPj.exit: ; preds = %_ZNK2OT13SortedArrayOfINS_21CmapSubtableLongGroupENS_7NumTypeILb1EjLj4EEEE7bsearchIjEERKS1_RKT_S7_.exit.i, %bb.f
  ret i1 %.not.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT19CmapSubtableFormat413accelerator_t14get_glyph_funcEPKvjPj(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK2OT19CmapSubtableFormat413accelerator_t9get_glyphEjPj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, ptr noundef %2)
  ret i1 %i.a
}

declare i32 @hb_face_get_glyph_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN21hb_sanitize_context_t13sanitize_blobIN2OT4cmapEEEP9hb_blob_tS4_(ptr noundef nonnull align 8 dereferenceable(62) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call ptr @hb_blob_reference(ptr noundef %1) #14 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  store ptr %i.a, ptr %i.b, align 8, !tbaa !267
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.c, align 8, !tbaa !340
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.b

._crit_edge.i.i:                                  ; preds = %bb.a
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !341
  %.pre2.i.i = load ptr, ptr %i.d, align 8, !tbaa !342
  br label %_ZN21hb_sanitize_context_t12reset_objectEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !240  ; 3 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !342
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !239
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.j, ptr %i.k, align 8, !tbaa !341
  br label %_ZN21hb_sanitize_context_t12reset_objectEv.exit.i

_ZN21hb_sanitize_context_t12reset_objectEv.exit.i: ; preds = %bb.b, %._crit_edge.i.i
  %i.l = phi ptr [ %.pre2.i.i, %._crit_edge.i.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.m = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.j, %bb.b ]
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = trunc i64 %i.p to i32                    ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.q, ptr %i.r, align 8, !tbaa !343
  %i.s = icmp ugt i32 %i.q, 67108863
  br i1 %i.s, label %_ZN21hb_sanitize_context_t16start_processingEPKcS1_.exit, label %bb.c, !prof !66

bb.c:                                             ; preds = %_ZN21hb_sanitize_context_t12reset_objectEv.exit.i
  %i.t = shl nuw i32 %i.q, 6
  %.not.i3.i.i = icmp samesign ugt i32 %i.q, 16777215
  %.sroa.speculate.load.false.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.t, i32 16384)
  %.sroa.speculated.i = select i1 %.not.i3.i.i, i32 1073741823, i32 %.sroa.speculate.load.false.sroa.speculated.i
  br label %_ZN21hb_sanitize_context_t16start_processingEPKcS1_.exit

_ZN21hb_sanitize_context_t16start_processingEPKcS1_.exit: ; preds = %_ZN21hb_sanitize_context_t12reset_objectEv.exit.i, %bb.c
  %.sroa.speculated.sink.i = phi i32 [ %.sroa.speculated.i, %bb.c ], [ 1073741823, %_ZN21hb_sanitize_context_t12reset_objectEv.exit.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.sroa.speculated.sink.i, ptr %i.u, align 4, !tbaa !344
  store i32 0, ptr %0, align 8, !tbaa !266
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.v, align 4, !tbaa !345
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.d, label %bb.e, !prof !66

bb.d:                                             ; preds = %_ZN21hb_sanitize_context_t16start_processingEPKcS1_.exit
  tail call void @hb_blob_destroy(ptr noundef %i.a) #14
  store ptr null, ptr %i.b, align 8, !tbaa !267
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.d, i8 0, i64 20, i1 false)
  br label %bb.h

bb.e:                                             ; preds = %_ZN21hb_sanitize_context_t16start_processingEPKcS1_.exit
  %i.w = tail call noundef zeroext i1 @_ZNK2OT4cmap8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(12) %i.l, ptr noundef nonnull %0)
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !267
  tail call void @hb_blob_destroy(ptr noundef %i.x) #14
  store ptr null, ptr %i.b, align 8, !tbaa !267
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.d, i8 0, i64 20, i1 false)
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @hb_blob_make_immutable(ptr noundef %1) #14
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @hb_blob_destroy(ptr noundef %1) #14
  %i.y = tail call ptr @hb_blob_get_empty() #14
  br label %bb.h
end_hunk_0
