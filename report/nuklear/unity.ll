Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuklear/original/unity?download=true
inline.NumInlined: 1904
inline.NumDeleted: 211
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 145
begin_hunk_0_@stbtt_FindMatchingFont:bb.a
  %i.o = icmp eq i8 %i.n, 104
  br i1 %i.o, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !56
  %i.r = icmp eq i8 %i.q, 101
  br i1 %i.r, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.t = load i8, ptr %i.s, align 1, !tbaa !56
  %i.u = icmp eq i8 %i.t, 97
  br i1 %i.u, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 3
  %i.w = load i8, ptr %i.v, align 1, !tbaa !56
  %i.x = icmp eq i8 %i.w, 100
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.z = load i32, ptr %i.y, align 1
  %i.aa = tail call i32 @llvm.bswap.i32(i32 %i.z)
  %i.ab = zext i32 %i.aa to i64
  br label %stbtt__find_table.exit.i.i

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %stbtt__find_table.exit.i.i, label %bb.e, !llvm.loop !15

stbtt__find_table.exit.i.i:                       ; preds = %bb.j, %bb.i
  %.2.i.i.i = phi i64 [ %i.ab, %bb.i ], [ 0, %bb.j ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %.2.i.i.i
  %i.ad = getelementptr i8, ptr %i.ac, i64 45
  %.val48.i.i = load i8, ptr %i.ad, align 1, !tbaa !56
  %i.ae = and i8 %.val48.i.i, 7
  %i.af = zext nneg i8 %i.ae to i32
  %.not40.i.not.i = icmp eq i32 %i.e, %i.af
  br i1 %.not40.i.not.i, label %.lr.ph.i52.i.i, label %.loopexit.i

._crit_edge.i.i:                                  ; preds = %bb.c
  br i1 %.not.i51.i.old.i, label %.loopexit.i, label %._crit_edge.i.i..lr.ph.i52.i.i_crit_edge

._crit_edge.i.i..lr.ph.i52.i.i_crit_edge:         ; preds = %._crit_edge.i.i
  %.pre = zext nneg i32 %.pre75.i.i to i64
  br label %.lr.ph.i52.i.i

.lr.ph.i52.i.i:                                   ; preds = %._crit_edge.i.i..lr.ph.i52.i.i_crit_edge, %stbtt__find_table.exit.i.i
  %wide.trip.count.i53.i.i.pre-phi = phi i64 [ %.pre, %._crit_edge.i.i..lr.ph.i52.i.i_crit_edge ], [ %wide.trip.count.i.i.i, %stbtt__find_table.exit.i.i ]
  br label %bb.k

bb.k:                                             ; preds = %bb.o, %.lr.ph.i52.i.i
  %indvars.iv.i54.i.i = phi i64 [ 0, %.lr.ph.i52.i.i ], [ %indvars.iv.next.i56.i.i, %bb.o ] ; 2 uses
  %indvars.iv.tr.i55.i.i = trunc nuw nsw i64 %indvars.iv.i54.i.i to i32
  %i.ag = shl nuw nsw i32 %indvars.iv.tr.i55.i.i, 4
  %i.ah = add i32 %i.ag, %.pre77.i.i
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %i.ai ; 5 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !56
  %i.al = icmp eq i8 %i.ak, 110
  br i1 %i.al, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !56
  %i.ao = icmp eq i8 %i.an, 97
  br i1 %i.ao, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !56
  %i.ar = icmp eq i8 %i.aq, 109
  br i1 %i.ar, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 3
  %i.at = load i8, ptr %i.as, align 1, !tbaa !56
  %i.au = icmp eq i8 %i.at, 101
  br i1 %i.au, label %stbtt__find_table.exit59.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k
  %indvars.iv.next.i56.i.i = add nuw nsw i64 %indvars.iv.i54.i.i, 1 ; 2 uses
  %exitcond.not.i57.i.i = icmp eq i64 %indvars.iv.next.i56.i.i, %wide.trip.count.i53.i.i.pre-phi
  br i1 %exitcond.not.i57.i.i, label %.loopexit.i, label %bb.k, !llvm.loop !15

stbtt__find_table.exit59.i.i:                     ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.aw = load i32, ptr %i.av, align 1            ; 2 uses
  %i.ax = tail call i32 @llvm.bswap.i32(i32 %i.aw) ; 6 uses
  %.not41.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not41.i.i, label %.loopexit.i, label %bb.p

bb.p:                                             ; preds = %stbtt__find_table.exit59.i.i
  br i1 %.not39.i.i, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ay = tail call fastcc i32 @stbtt__matchpair(ptr noundef nonnull readonly %0, i32 noundef %i.ax, ptr noundef nonnull readonly %1, i32 noundef %i.d, i32 noundef 16, i32 noundef -1)
  %.not45.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not45.i.i, label %bb.r, label %stbtt_FindMatchingFont_internal.exit

bb.r:                                             ; preds = %bb.q
  %i.az = tail call fastcc i32 @stbtt__matchpair(ptr noundef nonnull readonly %0, i32 noundef %i.ax, ptr noundef nonnull readonly %1, i32 noundef %i.d, i32 noundef 1, i32 noundef -1)
  %.not46.i.i = icmp eq i32 %i.az, 0
  br i1 %.not46.i.i, label %bb.s, label %stbtt_FindMatchingFont_internal.exit

bb.s:                                             ; preds = %bb.r
  %i.ba = tail call fastcc i32 @stbtt__matchpair(ptr noundef nonnull readonly %0, i32 noundef %i.ax, ptr noundef nonnull readonly %1, i32 noundef %i.d, i32 noundef 3, i32 noundef -1)
  %.not47.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not47.i.i, label %.loopexit.i, label %stbtt_FindMatchingFont_internal.exit

bb.t:                                             ; preds = %bb.p
  %i.bb = tail call fastcc i32 @stbtt__matchpair(ptr noundef nonnull readonly %0, i32 noundef %i.ax, ptr noundef nonnull readonly %1, i32 noundef %i.d, i32 noundef 16, i32 noundef 17)
  %.not42.i.i = icmp eq i32 %i.bb, 0
  br i1 %.not42.i.i, label %bb.u, label %stbtt_FindMatchingFont_internal.exit

bb.u:                                             ; preds = %bb.t
  %i.bc = tail call fastcc i32 @stbtt__matchpair(ptr noundef nonnull readonly %0, i32 noundef %i.ax, ptr noundef nonnull readonly %1, i32 noundef %i.d, i32 noundef 1, i32 noundef 2)
  %.not43.i.i = icmp eq i32 %i.bc, 0
  br i1 %.not43.i.i, label %bb.v, label %stbtt_FindMatchingFont_internal.exit

bb.v:                                             ; preds = %bb.u
  %i.bd = tail call fastcc i32 @stbtt__matchpair(ptr noundef nonnull readonly %0, i32 noundef %i.ax, ptr noundef nonnull readonly %1, i32 noundef %i.d, i32 noundef 3, i32 noundef -1)
  %.not44.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not44.i.i, label %.loopexit.i, label %stbtt_FindMatchingFont_internal.exit

.loopexit.i:                                      ; preds = %bb.o, %bb.v, %bb.s, %stbtt__find_table.exit59.i.i, %._crit_edge.i.i, %stbtt__find_table.exit.i.i, %bb.d, %bb.b
  %i.be = add nuw nsw i32 %.01127.i, 1            ; 2 uses
  %i.bf = tail call i32 @stbtt_GetFontOffsetForIndex(ptr noundef readonly %0, i32 noundef %i.be) ; 3 uses
  %i.bg = icmp slt i32 %i.bf, 0
  br i1 %i.bg, label %stbtt_FindMatchingFont_internal.exit, label %bb.b

stbtt_FindMatchingFont_internal.exit:             ; preds = %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %.loopexit.i, %bb.a
  %.lcssa26.i = phi i32 [ %i.a, %bb.a ], [ %i.bf, %.loopexit.i ], [ %i.f, %bb.v ], [ %i.f, %bb.u ], [ %i.f, %bb.t ], [ %i.f, %bb.s ], [ %i.f, %bb.r ], [ %i.f, %bb.q ]
  ret i32 %.lcssa26.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i32 0, 2) i32 @stbtt_CompareUTF8toUTF16_bigendian(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call fastcc i32 @stbtt__CompareUTF8toUTF16_bigendian_prefix(ptr noundef readonly %0, i32 noundef %1, ptr noundef readonly %2, i32 noundef %3)
  %i.b = icmp eq i32 %1, %i.a
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @nk_font_default_glyph_ranges() local_unnamed_addr #0 {
bb.a:
  ret ptr @nk_font_default_glyph_ranges.ranges
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @nk_font_chinese_glyph_ranges() local_unnamed_addr #0 {
bb.a:
  ret ptr @nk_font_chinese_glyph_ranges.ranges
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @nk_font_cyrillic_glyph_ranges() local_unnamed_addr #0 {
bb.a:
  ret ptr @nk_font_cyrillic_glyph_ranges.ranges
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @nk_font_korean_glyph_ranges() local_unnamed_addr #0 {
bb.a:
  ret ptr @nk_font_korean_glyph_ranges.ranges
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define ptr @nk_font_find_glyph(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #25 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !332  ; 2 uses
  %.not38 = icmp eq ptr %i.b, null
  br i1 %.not38, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !333
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !334  ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %.029 = phi i32 [ 0, %bb.c ], [ %.1.lcssa, %._crit_edge ] ; 3 uses
  %.028 = phi ptr [ %i.f, %bb.c ], [ %i.aa, %._crit_edge ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.028, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !337  ; 3 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %._crit_edge, label %nk_range_count.exit

nk_range_count.exit:                              ; preds = %bb.d
  %wcslen.i = tail call i64 @wcslen(ptr nonnull readonly %i.h)
  %i.i = shl i64 %wcslen.i, 2
  %i.j = add i64 %i.i, 4
  %i.k = ashr exact i64 %i.j, 2
  %i.l = sdiv i64 %i.k, 2                         ; 2 uses
  %i.m = trunc i64 %i.l to i32
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %nk_range_count.exit
  %wide.trip.count = and i64 %i.l, 2147483647
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %.149 = phi i32 [ %.029, %.lr.ph.preheader ], [ %i.y, %bb.f ] ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !55   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !55   ; 2 uses
  %.not40 = icmp ult i32 %1, %i.p
  %.not41 = icmp ugt i32 %1, %i.r
  %or.cond = select i1 %.not40, i1 true, i1 %.not41
  br i1 %or.cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.s = add i32 %.149, %1
  %i.t = sub i32 %i.s, %i.p
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %i.u
  br label %.loopexit

bb.f:                                             ; preds = %.lr.ph
  %i.w = add i32 %.149, 1
  %i.x = sub i32 %i.w, %i.p
  %i.y = add i32 %i.x, %i.r                       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !33

._crit_edge:                                      ; preds = %bb.f, %bb.d, %nk_range_count.exit
  %.1.lcssa = phi i32 [ %.029, %nk_range_count.exit ], [ %.029, %bb.d ], [ %i.y, %bb.f ]
  %i.z = getelementptr inbounds nuw i8, ptr %.028, i64 72
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !338 ; 2 uses
  %.not39 = icmp eq ptr %i.aa, %i.f
  br i1 %.not39, label %.loopexit, label %bb.d, !llvm.loop !34

.loopexit:                                        ; preds = %._crit_edge, %bb.e, %bb.a, %bb.b
  %.3 = phi ptr [ %i.v, %bb.e ], [ null, %bb.a ], [ null, %bb.b ], [ %i.d, %._crit_edge ]
  ret ptr %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @nk_font_config(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.nk_font_config) align 8 captures(none) initializes((0, 88)) %0, float noundef %1) local_unnamed_addr #4 {
.loopexit46.i.i.thread:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, i8 0, i64 88, i1 false)
  store float %1, ptr %i.a, align 8, !tbaa !339
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 3, ptr %i.b, align 4, !tbaa !340
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 27
  store i8 1, ptr %i.c, align 1, !tbaa !341
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.d, align 4, !tbaa !342
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @nk_font_default_glyph_ranges.ranges, ptr %i.e, align 8, !tbaa !337
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 63, ptr %i.f, align 8, !tbaa !343
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr null, ptr %i.g, align 8, !tbaa !338
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @nk_font_atlas_init_default(ptr noundef %0) local_unnamed_addr #11 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 3                          ; 3 uses
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %.loopexit46.i.i.thread, label %.loopexit46.i.i

.loopexit46.i.i.thread:                           ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %0, i8 0, i64 400, i1 false), !tbaa !55
  br label %nk_zero.exit

.loopexit46.i.i:                                  ; preds = %bb.b
  %i.c = sub nuw nsw i64 4, %i.b                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 0, i64 range(i64 0, 4) %i.c, i1 false), !tbaa !56
  %scevgep.i.i = getelementptr i8, ptr %0, i64 %i.c ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(396) %scevgep.i.i, i8 0, i64 396, i1 false), !tbaa !55
  %scevgep53.i.i = getelementptr i8, ptr %scevgep.i.i, i64 396
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i, i8 0, i64 range(i64 0, 4) %i.b, i1 false), !tbaa !56
  br label %nk_zero.exit

nk_zero.exit:                                     ; preds = %.loopexit46.i.i.thread, %.loopexit46.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.d, align 8, !tbaa !56
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @nk_malloc, ptr %i.e, align 8, !tbaa !346
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @nk_mfree, ptr %i.f, align 8, !tbaa !347
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.g, align 8, !tbaa !56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @nk_malloc, ptr %i.h, align 8, !tbaa !348
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @nk_mfree, ptr %i.i, align 8, !tbaa !349
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %nk_zero.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @nk_font_atlas_init(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #18 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %0 to i64
  %i.d = and i64 %i.c, 3                          ; 3 uses
  %.not.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i, label %.loopexit46.i.i.thread, label %.loopexit46.i.i

.loopexit46.i.i.thread:                           ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %0, i8 0, i64 400, i1 false), !tbaa !55
  br label %nk_zero.exit

.loopexit46.i.i:                                  ; preds = %bb.b
  %i.e = sub nuw nsw i64 4, %i.d                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 0, i64 range(i64 0, 4) %i.e, i1 false), !tbaa !56
  %scevgep.i.i = getelementptr i8, ptr %0, i64 %i.e ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(396) %scevgep.i.i, i8 0, i64 396, i1 false), !tbaa !55
  %scevgep53.i.i = getelementptr i8, ptr %scevgep.i.i, i64 396
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i, i8 0, i64 range(i64 0, 4) %i.d, i1 false), !tbaa !56
  br label %nk_zero.exit

nk_zero.exit:                                     ; preds = %.loopexit46.i.i.thread, %.loopexit46.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !75
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !75
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %nk_zero.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @nk_font_atlas_init_custom(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #18 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  %i.c = icmp ne ptr %2, null
  %or.cond3 = and i1 %or.cond, %i.c
  br i1 %or.cond3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %0 to i64
  %i.e = and i64 %i.d, 3                          ; 3 uses
  %.not.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i, label %.loopexit46.i.i.thread, label %.loopexit46.i.i

.loopexit46.i.i.thread:                           ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %0, i8 0, i64 400, i1 false), !tbaa !55
  br label %nk_zero.exit

.loopexit46.i.i:                                  ; preds = %bb.b
  %i.f = sub nuw nsw i64 4, %i.e                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 0, i64 range(i64 0, 4) %i.f, i1 false), !tbaa !56
  %scevgep.i.i = getelementptr i8, ptr %0, i64 %i.f ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(396) %scevgep.i.i, i8 0, i64 396, i1 false), !tbaa !55
  %scevgep53.i.i = getelementptr i8, ptr %scevgep.i.i, i64 396
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i, i8 0, i64 range(i64 0, 4) %i.e, i1 false), !tbaa !56
  br label %nk_zero.exit

nk_zero.exit:                                     ; preds = %.loopexit46.i.i.thread, %.loopexit46.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !75
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !75
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %nk_zero.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @nk_font_atlas_begin(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #17 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.j, label %bb.b
end_hunk_0
begin_hunk_1_@nk_font_atlas_add_compressed:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @nk_font_atlas_add_compressed_base85(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, float noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !346  ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !347
  %.not26 = icmp eq ptr %i.g, null
  br i1 %.not26, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !348
  %.not27 = icmp eq ptr %i.i, null
  br i1 %.not27, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !349
  %.not28 = icmp eq ptr %i.k, null
  br i1 %.not28, label %bb.g, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.e
  %i.l = load i8, ptr %1, align 1, !tbaa !56
  %.not4.i31 = icmp eq i8 %i.l, 0
  br i1 %.not4.i31, label %nk_strlen.exit, label %.lr.ph.i.preheader34

.lr.ph.i.preheader34:                             ; preds = %.lr.ph.i.preheader
  %scevgep = getelementptr i8, ptr %1, i64 1
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep)
  %i.m = trunc i64 %strlen to i32
  %i.n = add i32 %i.m, 5
  %i.o = udiv i32 %i.n, 5
  %i.p = shl nuw nsw i32 %i.o, 2
  %i.q = zext nneg i32 %i.p to i64
  br label %nk_strlen.exit

nk_strlen.exit:                                   ; preds = %.lr.ph.i.preheader34, %.lr.ph.i.preheader
  %.07.i.lcssa = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.q, %.lr.ph.i.preheader34 ] ; 2 uses
  %i.r = load ptr, ptr %i.c, align 8
  %i.s = tail call ptr %i.e(ptr %i.r, ptr noundef null, i64 noundef %.07.i.lcssa) #50 ; 4 uses
  %.not29 = icmp eq ptr %i.s, null
  br i1 %.not29, label %bb.g, label %bb.f

bb.f:                                             ; preds = %nk_strlen.exit
  %i.t = load i8, ptr %1, align 1, !tbaa !56      ; 2 uses
  %.not21.i = icmp eq i8 %i.t, 0
  br i1 %.not21.i, label %nk_decode_85.exit, label %.lr.ph.i30

.lr.ph.i30:                                       ; preds = %bb.f, %.lr.ph.i30
  %i.u = phi i8 [ %i.bc, %.lr.ph.i30 ], [ %i.t, %bb.f ] ; 2 uses
  %.023.i = phi ptr [ %i.bb, %.lr.ph.i30 ], [ %i.s, %bb.f ] ; 2 uses
  %.01522.i = phi ptr [ %i.ba, %.lr.ph.i30 ], [ %1, %bb.f ] ; 5 uses
  %i.v = sext i8 %i.u to i32
  %i.w = icmp sgt i8 %i.u, 91
  %.v.i.i = select i1 %i.w, i32 -36, i32 -35
  %i.x = add nsw i32 %.v.i.i, %i.v
  %i.y = getelementptr inbounds nuw i8, ptr %.01522.i, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !56    ; 2 uses
  %i.aa = sext i8 %i.z to i32
  %i.ab = icmp sgt i8 %i.z, 91
  %.v.i17.i = select i1 %i.ab, i32 -36, i32 -35
  %i.ac = add nsw i32 %.v.i17.i, %i.aa
  %i.ad = getelementptr inbounds nuw i8, ptr %.01522.i, i64 2
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !56  ; 2 uses
  %i.af = sext i8 %i.ae to i32
  %i.ag = icmp sgt i8 %i.ae, 91
  %.v.i18.i = select i1 %i.ag, i32 -36, i32 -35
  %i.ah = add nsw i32 %.v.i18.i, %i.af
  %i.ai = getelementptr inbounds nuw i8, ptr %.01522.i, i64 3
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !56  ; 2 uses
  %i.ak = sext i8 %i.aj to i32
  %i.al = icmp sgt i8 %i.aj, 91
  %.v.i19.i = select i1 %i.al, i32 -36, i32 -35
  %i.am = add nsw i32 %.v.i19.i, %i.ak
  %i.an = getelementptr inbounds nuw i8, ptr %.01522.i, i64 4
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !56  ; 2 uses
  %i.ap = sext i8 %i.ao to i32
  %i.aq = icmp sgt i8 %i.ao, 91
  %.v.i20.i = select i1 %i.aq, i32 -36, i32 -35
  %i.ar = add nsw i32 %.v.i20.i, %i.ap
  %i.as = mul nsw i32 %i.ar, 85
  %i.at = add nsw i32 %i.am, %i.as
  %i.au = mul nsw i32 %i.at, 85
  %i.av = add nsw i32 %i.ah, %i.au
  %i.aw = mul nsw i32 %i.av, 85
  %i.ax = add nsw i32 %i.ac, %i.aw
  %i.ay = mul i32 %i.ax, 85
  %i.az = add i32 %i.x, %i.ay
  store i32 %i.az, ptr %.023.i, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %.01522.i, i64 5 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.023.i, i64 4
  %i.bc = load i8, ptr %i.ba, align 1, !tbaa !56  ; 2 uses
  %.not.i = icmp eq i8 %i.bc, 0
  br i1 %.not.i, label %nk_decode_85.exit, label %.lr.ph.i30, !llvm.loop !932

nk_decode_85.exit:                                ; preds = %.lr.ph.i30, %bb.f
  %i.bd = tail call ptr @nk_font_atlas_add_compressed(ptr noundef nonnull %0, ptr noundef nonnull %i.s, i64 noundef %.07.i.lcssa, float noundef %2, ptr noundef %3)
  %i.be = load ptr, ptr %i.f, align 8, !tbaa !347
  %i.bf = load ptr, ptr %i.c, align 8
  tail call void %i.be(ptr %i.bf, ptr noundef nonnull %i.s) #50
  br label %bb.g

bb.g:                                             ; preds = %nk_strlen.exit, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %nk_decode_85.exit
  %.0 = phi ptr [ %i.bd, %nk_decode_85.exit ], [ null, %bb.a ], [ null, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ], [ null, %nk_strlen.exit ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @nk_font_atlas_bake(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1, ptr nofree noundef captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #17 {
bb.a:
  %4 = alloca %struct.nk_baked_font, align 8      ; 4 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  %i.b = icmp ne ptr %0, null
  %i.c = icmp ne ptr %1, null
  %or.cond = and i1 %i.b, %i.c
  %i.d = icmp ne ptr %2, null
  %or.cond3 = and i1 %or.cond, %i.d
  br i1 %or.cond3, label %bb.b, label %bb.ab

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !346  ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.ab, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !347
  %.not134 = icmp eq ptr %i.i, null
  br i1 %.not134, label %bb.ab, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !348
  %.not135 = icmp eq ptr %i.l, null
  br i1 %.not135, label %bb.ab, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !349
  %.not136 = icmp eq ptr %i.n, null
  br i1 %.not136, label %bb.ab, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 4 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !361  ; 2 uses
  %.not137 = icmp eq i32 %i.p, 0
  br i1 %.not137, label %bb.ab, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !355  ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  store i32 0, ptr %i.q, align 8, !tbaa !55
  br i1 %.not.i, label %nk_font_baker_memory.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.g, %bb.j
  %.02843.i = phi ptr [ %i.bd, %bb.j ], [ %i.s, %bb.g ] ; 4 uses
  %.02942.i = phi i32 [ %i.az, %bb.j ], [ 0, %bb.g ]
  %.promoted3941.i = phi i32 [ %i.ba, %bb.j ], [ 0, %bb.g ]
  %i.t = getelementptr inbounds nuw i8, ptr %.02843.i, i64 48
  br label %bb.h

bb.h:                                             ; preds = %nk_range_glyph_count.exit.i, %.preheader.i
  %i.u = phi i32 [ %i.ba, %nk_range_glyph_count.exit.i ], [ %.promoted3941.i, %.preheader.i ]
  %.1.i = phi i32 [ %i.az, %nk_range_glyph_count.exit.i ], [ %.02942.i, %.preheader.i ] ; 2 uses
  %.0.i = phi ptr [ %i.bc, %nk_range_glyph_count.exit.i ], [ %.02843.i, %.preheader.i ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i, i64 48 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !337  ; 2 uses
  %.not33.i = icmp eq ptr %i.w, null
  br i1 %.not33.i, label %bb.i, label %nk_range_count.exit.i

bb.i:                                             ; preds = %bb.h
  store ptr @nk_font_default_glyph_ranges.ranges, ptr %i.t, align 8, !tbaa !337
  %.pr.i = load ptr, ptr %i.v, align 8, !tbaa !337 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i, label %nk_range_glyph_count.exit.i, label %nk_range_count.exit.i

nk_range_count.exit.i:                            ; preds = %bb.i, %bb.h
  %i.x = phi ptr [ %.pr.i, %bb.i ], [ %i.w, %bb.h ] ; 4 uses
  %wcslen.i.i = tail call i64 @wcslen(ptr nonnull readonly %i.x)
  %i.y = shl i64 %wcslen.i.i, 2
  %i.z = add i64 %i.y, 4
  %i.aa = ashr exact i64 %i.z, 2
  %i.ab = sdiv i64 %i.aa, 2                       ; 3 uses
  %i.ac = trunc i64 %i.ab to i32                  ; 2 uses
  %i.ad = add nsw i32 %.1.i, %i.ac                ; 3 uses
  %i.ae = icmp sgt i32 %i.ac, 0
  br i1 %i.ae, label %.lr.ph.preheader.i.i, label %nk_range_glyph_count.exit.i

.lr.ph.preheader.i.i:                             ; preds = %nk_range_count.exit.i
  %wide.trip.count.i.i = and i64 %i.ab, 2147483647 ; 3 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count.i.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %i.ab, 2147483640              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ao, %vector.body ]
  %vec.phi212 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ap, %vector.body ]
  %i.af = shl nuw nsw i64 %index, 3
  %i.ag = shl i64 %index, 3
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.af
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ag
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %wide.vec = load <8 x i32>, ptr %i.ah, align 4, !tbaa !55 ; 2 uses
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec213 = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec214 = load <8 x i32>, ptr %i.aj, align 4, !tbaa !55 ; 2 uses
  %strided.vec215 = shufflevector <8 x i32> %wide.vec214, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec216 = shufflevector <8 x i32> %wide.vec214, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ak = add <4 x i32> %vec.phi, splat (i32 1)
  %i.al = add <4 x i32> %vec.phi212, splat (i32 1)
  %i.am = sub <4 x i32> %i.ak, %strided.vec
  %i.an = sub <4 x i32> %i.al, %strided.vec215
  %i.ao = add <4 x i32> %i.am, %strided.vec213    ; 2 uses
  %i.ap = add <4 x i32> %i.an, %strided.vec216    ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !933

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ap, %i.ao
  %i.ar = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %wide.trip.count.i.i, %n.vec
  br i1 %cmp.n, label %nk_range_glyph_count.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec, %middle.block ]
  %.01112.i.i.ph = phi i32 [ 0, %.lr.ph.preheader.i.i ], [ %i.ar, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.01112.i.i = phi i32 [ %i.ay, %.lr.ph.i.i ], [ %.01112.i.i.ph, %.lr.ph.i.i.preheader ]
  %.idx.i.i = shl nuw nsw i64 %indvars.iv.i.i, 3
  %i.as = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx.i.i ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !55
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !55
  %i.aw = add i32 %.01112.i.i, 1
  %i.ax = sub i32 %i.aw, %i.at
  %i.ay = add i32 %i.ax, %i.av                    ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %nk_range_glyph_count.exit.i, label %.lr.ph.i.i, !llvm.loop !934

nk_range_glyph_count.exit.i:                      ; preds = %.lr.ph.i.i, %middle.block, %nk_range_count.exit.i, %bb.i
  %i.az = phi i32 [ %i.ad, %nk_range_count.exit.i ], [ %.1.i, %bb.i ], [ %i.ad, %middle.block ], [ %i.ad, %.lr.ph.i.i ] ; 3 uses
  %.011.lcssa.i.i = phi i32 [ 0, %nk_range_count.exit.i ], [ 0, %bb.i ], [ %i.ar, %middle.block ], [ %i.ay, %.lr.ph.i.i ]
  %i.ba = add nsw i32 %.011.lcssa.i.i, %i.u       ; 4 uses
  store i32 %i.ba, ptr %i.q, align 8, !tbaa !55
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i, i64 72
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !338 ; 2 uses
  %.not34.i = icmp eq ptr %i.bc, %.02843.i
  br i1 %.not34.i, label %bb.j, label %bb.h, !llvm.loop !935

bb.j:                                             ; preds = %nk_range_glyph_count.exit.i
  %i.bd = load ptr, ptr %.02843.i, align 8, !tbaa !356 ; 2 uses
  %.not32.i = icmp eq ptr %i.bd, null
  br i1 %.not32.i, label %bb.k, label %.preheader.i, !llvm.loop !936

bb.k:                                             ; preds = %bb.j
  %i.be = sext i32 %i.ba to i64
  %i.bf = sext i32 %i.az to i64
  %i.bg = mul nsw i64 %i.bf, 40
  %i.bh = sext i32 %i.p to i64
  %i.bi = mul nsw i64 %i.bh, 184
  %reass.mul.i = mul nsw i64 %i.be, 52
  %i.bj = add nsw i64 %i.bi, 152
  %i.bk = add nsw i64 %i.bj, %i.bg
  %i.bl = add nsw i64 %i.bk, %reass.mul.i
  br label %nk_font_baker_memory.exit

nk_font_baker_memory.exit:                        ; preds = %bb.g, %bb.k
  %.0157 = phi i64 [ %i.bl, %bb.k ], [ 0, %bb.g ] ; 6 uses
  %i.bm = load ptr, ptr %i.e, align 8
  %i.bn = tail call ptr %i.g(ptr %i.bm, ptr noundef null, i64 noundef %.0157) #50 ; 9 uses
  %.not138 = icmp eq ptr %i.bn, null
  br i1 %.not138, label %.critedge, label %bb.l

bb.l:                                             ; preds = %nk_font_baker_memory.exit
  %i.bo = icmp ult i64 %.0157, 12
  br i1 %i.bo, label %.preheader.i147, label %bb.m

.preheader.i147:                                  ; preds = %bb.l
  %.not4348.i = icmp eq i64 %.0157, 0
  br i1 %.not4348.i, label %nk_memset.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i147
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bn, i8 0, i64 range(i64 0, 12) %.0157, i1 false), !tbaa !56
  br label %nk_memset.exit

bb.m:                                             ; preds = %bb.l
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = and i64 %i.bp, 3                        ; 2 uses
  %.not.i146 = icmp eq i64 %i.bq, 0
  br i1 %.not.i146, label %.loopexit46.i, label %.loopexit46.loopexit.i

.loopexit46.loopexit.i:                           ; preds = %bb.m
  %i.br = sub nuw nsw i64 4, %i.bq                ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bn, i8 0, i64 range(i64 0, 4) %i.br, i1 false), !tbaa !56
  %i.bs = sub nuw nsw i64 %.0157, %i.br
  %scevgep.i = getelementptr i8, ptr %i.bn, i64 %i.br
  br label %.loopexit46.i

.loopexit46.i:                                    ; preds = %.loopexit46.loopexit.i, %bb.m
  %.132.i = phi i64 [ %.0157, %bb.m ], [ %i.bs, %.loopexit46.loopexit.i ] ; 2 uses
  %.230.i = phi ptr [ %i.bn, %bb.m ], [ %scevgep.i, %.loopexit46.loopexit.i ] ; 2 uses
  %i.bt = and i64 %.132.i, -4                     ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %.230.i, i8 0, i64 %i.bt, i1 false), !tbaa !55
  %i.bu = and i64 %.132.i, 3                      ; 2 uses
  %.not41.i = icmp eq i64 %i.bu, 0
  br i1 %.not41.i, label %nk_memset.exit, label %.preheader44.preheader.i

.preheader44.preheader.i:                         ; preds = %.loopexit46.i
  %scevgep53.i = getelementptr i8, ptr %.230.i, i64 %i.bt
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep53.i, i8 0, i64 range(i64 0, 4) %i.bu, i1 false), !tbaa !56
  br label %nk_memset.exit

nk_memset.exit:                                   ; preds = %.preheader.i147, %.lr.ph.preheader.i, %.loopexit46.i, %.preheader44.preheader.i
  %i.bv = load i32, ptr %i.q, align 8, !tbaa !943
  %i.bw = load i32, ptr %i.o, align 8, !tbaa !361
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bn, i64 7
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = and i64 %i.by, -8
  %i.ca = inttoptr i64 %i.bz to ptr               ; 8 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 127
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = and i64 %i.cc, -8
  %i.ce = inttoptr i64 %i.cd to ptr               ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 88
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !369
  %i.cg = sext i32 %i.bw to i64
  %i.ch = getelementptr inbounds [184 x i8], ptr %i.ce, i64 %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 3
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = and i64 %i.cj, -8
  %i.cl = inttoptr i64 %i.ck to ptr               ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ca, i64 96
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !370
  %i.cn = sext i32 %i.bv to i64                   ; 2 uses
  %i.co = getelementptr inbounds [28 x i8], ptr %i.cl, i64 %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 3
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = and i64 %i.cq, -4
  %i.cs = inttoptr i64 %i.cr to ptr               ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ca, i64 104
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !371
  %i.cu = getelementptr inbounds [24 x i8], ptr %i.cs, i64 %i.cn
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 7
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = and i64 %i.cw, -8
  %i.cy = inttoptr i64 %i.cx to ptr
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ca, i64 112
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !372
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.e, i64 24, i1 false), !tbaa.struct !75
  %i.da = load ptr, ptr %i.k, align 8, !tbaa !348
  %i.db = load i32, ptr %i.q, align 8, !tbaa !943
  %i.dc = sext i32 %i.db to i64
  %i.dd = mul nsw i64 %i.dc, 48
  %i.de = load ptr, ptr %i.j, align 8
  %i.df = tail call ptr %i.da(ptr %i.de, ptr noundef null, i64 noundef %i.dd) #50 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  store ptr %i.df, ptr %i.dg, align 8, !tbaa !350
  %.not139 = icmp eq ptr %i.df, null
  br i1 %.not139, label %bb.x, label %bb.n

bb.n:                                             ; preds = %nk_memset.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i16 181, ptr %i.di, align 4, !tbaa !944
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 70
  store i16 28, ptr %i.dj, align 2, !tbaa !945
  %i.dk = load ptr, ptr %i.r, align 8, !tbaa !355
  %i.dl = load i32, ptr %i.o, align 8, !tbaa !361
  %i.dm = call fastcc i32 @nk_font_bake_pack(ptr noundef nonnull %i.ca, ptr noundef %i.a, ptr noundef %1, ptr noundef %2, ptr noundef %i.dh, ptr noundef %i.dk, i32 noundef %i.dl, ptr noundef %i.e)
  %.not140 = icmp eq i32 %i.dm, 0
end_hunk_1
begin_hunk_2_@nk_font_atlas_bake:bb.a
  store ptr %i.ej, ptr %0, align 8, !tbaa !351
  br label %bb.s

bb.s:                                             ; preds = %.thread, %bb.p
  %i.fx = load i32, ptr %1, align 4, !tbaa !55
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.fx, ptr %i.fy, align 8, !tbaa !948
  %i.fz = load i32, ptr %2, align 4, !tbaa !55    ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.fz, ptr %i.ga, align 4, !tbaa !949
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 376
  %.0123165 = load ptr, ptr %i.gb, align 8, !tbaa !373 ; 2 uses
  %.not145166 = icmp eq ptr %.0123165, null
  br i1 %.not145166, label %.preheader, label %.lr.ph

.preheader.loopexit:                              ; preds = %nk_font_init.exit
  %.pre = load i32, ptr %2, align 4, !tbaa !55
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.s
  %i.gc = phi i32 [ %.pre, %.preheader.loopexit ], [ %i.fz, %bb.s ]
  %i.gd = load i32, ptr %1, align 4, !tbaa !55
  %i.ge = trunc i32 %i.gd to i16                  ; 7 uses
  %i.gf = trunc i32 %i.gc to i16                  ; 7 uses
  %i.gg = load i16, ptr %i.dh, align 8, !tbaa !950 ; 6 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 66
  %i.gi = load i16, ptr %i.gh, align 2, !tbaa !951 ; 7 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i16 %i.ge, ptr %i.gj, align 8, !tbaa !953
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 82
  store i16 %i.gf, ptr %i.gk, align 2, !tbaa !954
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i16 %i.gg, ptr %i.gl, align 4, !tbaa !106
  %i.gm = add i16 %i.gi, 3
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 86
  store i16 %i.gm, ptr %i.gn, align 2, !tbaa !106
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i16 12, ptr %i.go, align 8, !tbaa !106
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 90
  store i16 19, ptr %i.gp, align 2, !tbaa !106
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 4726527810020048896, ptr %i.gq, align 8, !tbaa !54
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 0, ptr %i.gr, align 8, !tbaa !54
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i16 %i.ge, ptr %i.gs, align 8, !tbaa !953
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 122
  store i16 %i.gf, ptr %i.gt, align 2, !tbaa !954
  %i.gu = add i16 %i.gg, 13
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i16 %i.gu, ptr %i.gv, align 4, !tbaa !106
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 126
  store i16 %i.gi, ptr %i.gw, align 2, !tbaa !106
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i16 7, ptr %i.gx, align 8, !tbaa !106
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 130
  store i16 16, ptr %i.gy, align 2, !tbaa !106
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 4719772410572701696, ptr %i.gz, align 8, !tbaa !54
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 4683743613547446272, ptr %i.ha, align 8, !tbaa !54
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i16 %i.ge, ptr %i.hb, align 8, !tbaa !953
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 162
  store i16 %i.gf, ptr %i.hc, align 2, !tbaa !954
  %i.hd = add i16 %i.gg, 31
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i16 %i.hd, ptr %i.he, align 4, !tbaa !106
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 166
  store i16 %i.gi, ptr %i.hf, align 2, !tbaa !106
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i16 23, ptr %i.hg, align 8, !tbaa !106
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 170
  store i16 23, ptr %i.hh, align 2, !tbaa !106
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 4735535009282654208, ptr %i.hi, align 8, !tbaa !54
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 4697254412441092096, ptr %i.hj, align 8, !tbaa !54
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i16 %i.ge, ptr %i.hk, align 8, !tbaa !953
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 202
  store i16 %i.gf, ptr %i.hl, align 2, !tbaa !954
  %i.hm = add i16 %i.gg, 21
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 204
  store i16 %i.hm, ptr %i.hn, align 4, !tbaa !106
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 206
  store i16 %i.gi, ptr %i.ho, align 2, !tbaa !106
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i16 9, ptr %i.hp, align 8, !tbaa !106
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 210
  store i16 23, ptr %i.hq, align 2, !tbaa !106
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i64 4735535009271644160, ptr %i.hr, align 8, !tbaa !54
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 4697254412431654912, ptr %i.hs, align 8, !tbaa !54
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i16 %i.ge, ptr %i.ht, align 8, !tbaa !953
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 242
  store i16 %i.gf, ptr %i.hu, align 2, !tbaa !954
  %i.hv = add i16 %i.gg, 55                       ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 244
  store i16 %i.hv, ptr %i.hw, align 4, !tbaa !106
  %i.hx = add i16 %i.gi, 18
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 246
  store i16 %i.hx, ptr %i.hy, align 2, !tbaa !106
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i16 23, ptr %i.hz, align 8, !tbaa !106
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 250
  store i16 9, ptr %i.ia, align 2, !tbaa !106
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 4688247213195264000, ptr %i.ib, align 8, !tbaa !54
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 4656722015794757632, ptr %i.ic, align 8, !tbaa !54
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i16 %i.ge, ptr %i.id, align 8, !tbaa !953
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 282
  store i16 %i.gf, ptr %i.ie, align 2, !tbaa !954
  %i.if = add i16 %i.gg, 73
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 284
  store i16 %i.if, ptr %i.ig, align 4, !tbaa !106
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 286
  store i16 %i.gi, ptr %i.ih, align 2, !tbaa !106
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i16 17, ptr %i.ii, align 8, !tbaa !106
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 290
  store i16 17, ptr %i.ij, align 2, !tbaa !106
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i64 4722024210397396992, ptr %i.ik, align 8, !tbaa !54
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i64 4688247213184253952, ptr %i.il, align 8, !tbaa !54
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i16 %i.ge, ptr %i.im, align 8, !tbaa !953
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 322
  store i16 %i.gf, ptr %i.in, align 2, !tbaa !954
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 324
  store i16 %i.hv, ptr %i.io, align 4, !tbaa !106
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 326
  store i16 %i.gi, ptr %i.ip, align 2, !tbaa !106
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i16 17, ptr %i.iq, align 8, !tbaa !106
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 330
  store i16 17, ptr %i.ir, align 2, !tbaa !106
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i64 4722024210397396992, ptr %i.is, align 8, !tbaa !54
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i64 4688247213184253952, ptr %i.it, align 8, !tbaa !54
  %i.iu = load ptr, ptr %i.h, align 8, !tbaa !347
  %i.iv = load ptr, ptr %i.e, align 8
  tail call void %i.iu(ptr %i.iv, ptr noundef nonnull %i.bn) #50
  %i.iw = load ptr, ptr %0, align 8, !tbaa !351
  br label %bb.ab

.lr.ph:                                           ; preds = %bb.s, %nk_font_init.exit
  %.0123167 = phi ptr [ %.0123, %nk_font_init.exit ], [ %.0123165, %bb.s ] ; 13 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.0123167, i64 120
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !334 ; 5 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 32
  %i.ja = load float, ptr %i.iz, align 8, !tbaa !339
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iy, i64 64
  %i.jc = load i32, ptr %i.jb, align 8, !tbaa !343 ; 4 uses
  %i.jd = load ptr, ptr %i.dg, align 8, !tbaa !350 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.iy, i64 56
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !359 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.jg = icmp ne ptr %i.jd, null
  %i.jh = icmp ne ptr %i.jf, null
  %or.cond3.i148 = and i1 %i.jg, %i.jh
  br i1 %or.cond3.i148, label %bb.t, label %nk_font_init.exit

bb.t:                                             ; preds = %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.jf, i64 32, i1 false), !tbaa.struct !955
  %i.ji = getelementptr inbounds nuw i8, ptr %.0123167, i64 96 ; 2 uses
  store ptr null, ptr %i.ji, align 8, !tbaa !333
  %i.jj = getelementptr inbounds nuw i8, ptr %.0123167, i64 48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jj, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !955
  %i.jk = load float, ptr %i.jj, align 8, !tbaa !374 ; 2 uses
  %i.jl = fdiv float %i.ja, %i.jk                 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.0123167, i64 80
  store float %i.jl, ptr %i.jm, align 8, !tbaa !956
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jf, i64 12
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !375
  %i.jp = zext i32 %i.jo to i64
  %i.jq = getelementptr inbounds nuw [48 x i8], ptr %i.jd, i64 %i.jp ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.0123167, i64 88
  store ptr %i.jq, ptr %i.jr, align 8, !tbaa !332
  %i.js = getelementptr inbounds nuw i8, ptr %.0123167, i64 112
  store ptr null, ptr %i.js, align 8, !tbaa !56
  %i.jt = getelementptr inbounds nuw i8, ptr %.0123167, i64 104
  store i32 %i.jc, ptr %i.jt, align 8, !tbaa !957
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge.i.i, %bb.t
  %.029.i.i = phi i32 [ 0, %bb.t ], [ %.1.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  %.028.i.i = phi ptr [ %i.iy, %bb.t ], [ %i.ko, %._crit_edge.i.i ] ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.028.i.i, i64 48
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !337 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.jv, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i, label %nk_range_count.exit.i.i

nk_range_count.exit.i.i:                          ; preds = %bb.u
  %wcslen.i.i.i = tail call i64 @wcslen(ptr nonnull readonly %i.jv)
  %i.jw = shl i64 %wcslen.i.i.i, 2
  %i.jx = add i64 %i.jw, 4
  %i.jy = ashr exact i64 %i.jx, 2
  %i.jz = sdiv i64 %i.jy, 2                       ; 2 uses
  %i.ka = trunc i64 %i.jz to i32
  %i.kb = icmp sgt i32 %i.ka, 0
  br i1 %i.kb, label %.lr.ph.preheader.i.i149, label %._crit_edge.i.i

.lr.ph.preheader.i.i149:                          ; preds = %nk_range_count.exit.i.i
  %wide.trip.count.i.i150 = and i64 %i.jz, 2147483647
  br label %.lr.ph.i.i151

.lr.ph.i.i151:                                    ; preds = %bb.w, %.lr.ph.preheader.i.i149
  %indvars.iv.i.i152 = phi i64 [ 0, %.lr.ph.preheader.i.i149 ], [ %indvars.iv.next.i.i154, %bb.w ] ; 2 uses
  %.149.i.i = phi i32 [ %.029.i.i, %.lr.ph.preheader.i.i149 ], [ %i.km, %bb.w ] ; 2 uses
  %.idx.i.i153 = shl nuw nsw i64 %indvars.iv.i.i152, 3
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jv, i64 %.idx.i.i153 ; 2 uses
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !55 ; 3 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kc, i64 4
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !55 ; 2 uses
  %.not40.i.i = icmp ult i32 %i.jc, %i.kd
  %.not41.i.i = icmp ugt i32 %i.jc, %i.kf
  %or.cond.i.i = select i1 %.not40.i.i, i1 true, i1 %.not41.i.i
  br i1 %or.cond.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i151
  %i.kg = add i32 %.149.i.i, %i.jc
  %i.kh = sub i32 %i.kg, %i.kd
  %i.ki = zext i32 %i.kh to i64
  %i.kj = getelementptr inbounds nuw [48 x i8], ptr %i.jq, i64 %i.ki
  br label %nk_font_find_glyph.exit.i

bb.w:                                             ; preds = %.lr.ph.i.i151
  %i.kk = add i32 %.149.i.i, 1
  %i.kl = sub i32 %i.kk, %i.kd
  %i.km = add i32 %i.kl, %i.kf                    ; 2 uses
  %indvars.iv.next.i.i154 = add nuw nsw i64 %indvars.iv.i.i152, 1 ; 2 uses
  %exitcond.not.i.i155 = icmp eq i64 %indvars.iv.next.i.i154, %wide.trip.count.i.i150
  br i1 %exitcond.not.i.i155, label %._crit_edge.i.i, label %.lr.ph.i.i151, !llvm.loop !33

._crit_edge.i.i:                                  ; preds = %bb.w, %nk_range_count.exit.i.i, %bb.u
  %.1.lcssa.i.i = phi i32 [ %.029.i.i, %nk_range_count.exit.i.i ], [ %.029.i.i, %bb.u ], [ %i.km, %bb.w ]
  %i.kn = getelementptr inbounds nuw i8, ptr %.028.i.i, i64 72
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !338 ; 2 uses
  %.not39.i.i = icmp eq ptr %i.ko, %i.iy
  br i1 %.not39.i.i, label %nk_font_find_glyph.exit.i, label %bb.u, !llvm.loop !34

nk_font_find_glyph.exit.i:                        ; preds = %._crit_edge.i.i, %bb.v
  %.3.i.i = phi ptr [ %i.kj, %bb.v ], [ null, %._crit_edge.i.i ]
  store ptr %.3.i.i, ptr %i.ji, align 8, !tbaa !333
  %i.kp = fmul float %i.jk, %i.jl
  %i.kq = getelementptr inbounds nuw i8, ptr %.0123167, i64 8
  %i.kr = getelementptr inbounds nuw i8, ptr %.0123167, i64 16
  store float %i.kp, ptr %i.kr, align 8, !tbaa !958
  %i.ks = getelementptr inbounds nuw i8, ptr %.0123167, i64 24
  store ptr %.0123167, ptr %i.kq, align 8, !tbaa !56
  store <2 x ptr> <ptr @nk_font_text_width, ptr @nk_font_query_font_glyph>, ptr %i.ks, align 8, !tbaa !73
  %i.kt = getelementptr inbounds nuw i8, ptr %.0123167, i64 40
  store i64 0, ptr %i.kt, align 8, !tbaa !56
  br label %nk_font_init.exit

nk_font_init.exit:                                ; preds = %.lr.ph, %nk_font_find_glyph.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.0123 = load ptr, ptr %.0123167, align 8, !tbaa !373 ; 2 uses
  %.not145 = icmp eq ptr %.0123, null
  br i1 %.not145, label %.preheader.loopexit, label %.lr.ph, !llvm.loop !942

bb.x:                                             ; preds = %nk_memset.exit, %bb.n, %bb.o, %bb.q
  %i.ku = load ptr, ptr %i.h, align 8, !tbaa !347
  %i.kv = load ptr, ptr %i.e, align 8
  tail call void %i.ku(ptr %i.kv, ptr noundef nonnull %i.bn) #50
  br label %.critedge

.critedge:                                        ; preds = %nk_font_baker_memory.exit, %bb.x
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !350 ; 2 uses
  %.not143 = icmp eq ptr %i.kx, null
  br i1 %.not143, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.critedge
  %i.ky = load ptr, ptr %i.m, align 8, !tbaa !349
  %i.kz = load ptr, ptr %i.j, align 8
  tail call void %i.ky(ptr %i.kz, ptr noundef nonnull %i.kx) #50
  store ptr null, ptr %i.kw, align 8, !tbaa !350
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.critedge
  %i.la = load ptr, ptr %0, align 8, !tbaa !351   ; 2 uses
  %.not144 = icmp eq ptr %i.la, null
  br i1 %.not144, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.lb = load ptr, ptr %i.h, align 8, !tbaa !347
  %i.lc = load ptr, ptr %i.e, align 8
  tail call void %i.lb(ptr %i.lc, ptr noundef nonnull %i.la) #50
  store ptr null, ptr %0, align 8, !tbaa !351
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa, %bb.f, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %.preheader
  %.0 = phi ptr [ null, %bb.f ], [ %i.iw, %.preheader ], [ null, %bb.b ], [ null, %bb.a ], [ null, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.aa ], [ null, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @nk_font_bake_pack(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3, ptr nofree noundef nonnull captures(none) %4, ptr nofree noundef readonly captures(address) %5, i32 noundef %6, ptr noundef nonnull %7) unnamed_addr #17 {
bb.a:
  %8 = alloca %struct.stbrp_rect, align 4         ; 8 uses
  %i.a = icmp ne ptr %5, null
  %i.b = icmp ne i32 %6, 0
  %or.cond7 = and i1 %i.a, %i.b
  br i1 %or.cond7, label %.preheader196, label %.loopexit

.preheader196:                                    ; preds = %bb.a, %bb.c
  %.0156206 = phi i32 [ %i.af, %bb.c ], [ 0, %bb.a ]
  %.0161205 = phi ptr [ %i.ai, %bb.c ], [ %5, %bb.a ] ; 3 uses
  br label %bb.b

.preheader195:                                    ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  br label %.preheader194

bb.b:                                             ; preds = %.preheader196, %nk_range_glyph_count.exit
  %.0158 = phi ptr [ %i.ah, %nk_range_glyph_count.exit ], [ %.0161205, %.preheader196 ] ; 2 uses
  %.1157 = phi i32 [ %i.af, %nk_range_glyph_count.exit ], [ %.0156206, %.preheader196 ]
  %i.d = getelementptr inbounds nuw i8, ptr %.0158, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !337  ; 5 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %nk_range_glyph_count.exit, label %nk_range_count.exit

nk_range_count.exit:                              ; preds = %bb.b
  %wcslen.i = tail call i64 @wcslen(ptr nonnull readonly %i.e)
  %i.f = shl i64 %wcslen.i, 2
  %i.g = add i64 %i.f, 4
  %i.h = ashr exact i64 %i.g, 2
  %i.i = sdiv i64 %i.h, 2                         ; 3 uses
  %i.j = trunc i64 %i.i to i32
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph.preheader.i, label %nk_range_glyph_count.exit

.lr.ph.preheader.i:                               ; preds = %nk_range_count.exit
  %wide.trip.count.i = and i64 %i.i, 2147483647   ; 3 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.i, 2147483640               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.u, %vector.body ]
  %vec.phi273 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.v, %vector.body ]
  %i.l = shl nuw nsw i64 %index, 3
  %i.m = shl i64 %index, 3
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.l
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %wide.vec = load <8 x i32>, ptr %i.n, align 4, !tbaa !55 ; 2 uses
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec274 = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec275 = load <8 x i32>, ptr %i.p, align 4, !tbaa !55 ; 2 uses
  %strided.vec276 = shufflevector <8 x i32> %wide.vec275, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec277 = shufflevector <8 x i32> %wide.vec275, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.q = add <4 x i32> %vec.phi, splat (i32 1)
  %i.r = add <4 x i32> %vec.phi273, splat (i32 1)
  %i.s = sub <4 x i32> %i.q, %strided.vec
  %i.t = sub <4 x i32> %i.r, %strided.vec276
  %i.u = add <4 x i32> %i.s, %strided.vec274      ; 2 uses
  %i.v = add <4 x i32> %i.t, %strided.vec277      ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !959

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.v, %i.u
  %i.x = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %wide.trip.count.i, %n.vec
  br i1 %cmp.n, label %nk_range_glyph_count.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  %.01112.i.ph = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.x, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.01112.i = phi i32 [ %i.ae, %.lr.ph.i ], [ %.01112.i.ph, %.lr.ph.i.preheader ]
  %.idx.i = shl nuw nsw i64 %indvars.iv.i, 3
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !55
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !55
  %i.ac = add i32 %.01112.i, 1
  %i.ad = sub i32 %i.ac, %i.z
  %i.ae = add i32 %i.ad, %i.ab                    ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %nk_range_glyph_count.exit, label %.lr.ph.i, !llvm.loop !960

nk_range_glyph_count.exit:                        ; preds = %.lr.ph.i, %middle.block, %bb.b, %nk_range_count.exit
  %.011.lcssa.i = phi i32 [ 0, %nk_range_count.exit ], [ 0, %bb.b ], [ %i.x, %middle.block ], [ %i.ae, %.lr.ph.i ]
  %i.af = add nsw i32 %.011.lcssa.i, %.1157       ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0158, i64 72
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !338 ; 2 uses
  %.not188 = icmp eq ptr %i.ah, %.0161205
  br i1 %.not188, label %bb.c, label %bb.b, !llvm.loop !961

bb.c:                                             ; preds = %nk_range_glyph_count.exit
  %i.ai = load ptr, ptr %.0161205, align 8, !tbaa !356 ; 2 uses
  %.not = icmp eq ptr %i.ai, null
  br i1 %.not, label %.preheader195, label %.preheader196, !llvm.loop !962

.preheader194:                                    ; preds = %.preheader195, %bb.f
  %.0150209 = phi i64 [ 0, %.preheader195 ], [ %indvars.iv.next, %bb.f ]
  %.1162208 = phi ptr [ %5, %.preheader195 ], [ %i.ar, %bb.f ] ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %.preheader194, %bb.e
  %indvars.iv = phi i64 [ %.0150209, %.preheader194 ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %.1159 = phi ptr [ %.1162208, %.preheader194 ], [ %i.aq, %bb.e ] ; 2 uses
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !369
  %i.ak = getelementptr inbounds [184 x i8], ptr %i.aj, i64 %indvars.iv ; 2 uses
  store ptr %7, ptr %i.ak, align 8, !tbaa !271
  %i.al = getelementptr inbounds nuw i8, ptr %.1159, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !352 ; 2 uses
  %i.an = tail call i32 @stbtt_GetFontOffsetForIndex(ptr noundef %i.am, i32 noundef 0)
  %i.ao = tail call i32 @stbtt_InitFont(ptr noundef nonnull %i.ak, ptr noundef %i.am, i32 noundef %i.an)
  %.not186.not = icmp eq i32 %i.ao, 0
  br i1 %.not186.not, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.1159, i64 72
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !338 ; 2 uses
  %.not187 = icmp eq ptr %i.aq, %.1162208
  br i1 %.not187, label %bb.f, label %bb.d, !llvm.loop !963

bb.f:                                             ; preds = %bb.e
  %i.ar = load ptr, ptr %.1162208, align 8, !tbaa !356 ; 2 uses
  %.not181 = icmp eq ptr %i.ar, null
  br i1 %.not181, label %.loopexit46.i.i.thread, label %.preheader194, !llvm.loop !964

.loopexit46.i.i.thread:                           ; preds = %bb.f
  store i32 0, ptr %3, align 4, !tbaa !55
  %i.as = icmp sgt i32 %i.af, 1000
  %i.at = select i1 %i.as, i32 1024, i32 512      ; 2 uses
  store i32 %i.at, ptr %2, align 4, !tbaa !55
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.av = tail call i32 @stbtt_PackBegin(ptr noundef nonnull %i.au, ptr noundef null, i32 noundef %i.at, i32 noundef 32768, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %7) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #50
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i64 24, i1 false), !tbaa !55
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !970
  %i.ay = sext i16 %i.ax to i32
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !258
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 6 ; 2 uses
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !971
  %i.bc = sext i16 %i.bb to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !259
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  store i32 1, ptr %i.be, align 4, !tbaa !310
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store i32 1, ptr %i.bf, align 8, !tbaa !311
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !972
  %i.bi = call i32 @stbrp_pack_rects(ptr noundef %i.bh, ptr noundef nonnull %8, i32 noundef 1) ; 0 uses
  %i.bj = load i32, ptr %3, align 4, !tbaa !55
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !261 ; 2 uses
  %i.bm = load i32, ptr %i.bd, align 4, !tbaa !259 ; 2 uses
  %i.bn = add nsw i32 %i.bm, %i.bl
  %i.bo = call i32 @llvm.smax.i32(i32 %i.bj, i32 %i.bn) ; 2 uses
  store i32 %i.bo, ptr %3, align 4, !tbaa !55
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !260
  %i.br = trunc i32 %i.bq to i16
  store i16 %i.br, ptr %4, align 2, !tbaa !973
  %i.bs = trunc i32 %i.bl to i16
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %i.bs, ptr %i.bt, align 2, !tbaa !974
  %i.bu = load i32, ptr %i.az, align 4, !tbaa !258
  %i.bv = trunc i32 %i.bu to i16
  store i16 %i.bv, ptr %i.aw, align 2, !tbaa !970
  %i.bw = trunc i32 %i.bm to i16
  store i16 %i.bw, ptr %i.ba, align 2, !tbaa !971
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #50
  %i.bx = icmp sgt i32 %6, 0
  br i1 %i.bx, label %.preheader.lr.ph, label %._crit_edge230

.preheader.lr.ph:                                 ; preds = %.loopexit46.i.i.thread
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.s
  %.0142229 = phi i32 [ 0, %.preheader.lr.ph ], [ %.2.lcssa, %bb.s ]
  %.0143228 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.dp, %bb.s ]
  %.0145227 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.cu, %bb.s ]
  %.0147226 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next249, %bb.s ]
  %.2163225 = phi ptr [ %5, %.preheader.lr.ph ], [ %i.fj, %bb.s ] ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %.preheader, %._crit_edge224
  %indvars.iv248 = phi i64 [ %.0147226, %.preheader ], [ %indvars.iv.next249, %._crit_edge224 ] ; 2 uses
  %.2160 = phi ptr [ %.2163225, %.preheader ], [ %i.fh, %._crit_edge224 ] ; 5 uses
  %.1146 = phi i32 [ %.0145227, %.preheader ], [ %i.cu, %._crit_edge224 ] ; 2 uses
  %.1144 = phi i32 [ %.0143228, %.preheader ], [ %i.dp, %._crit_edge224 ] ; 2 uses
  %.1 = phi i32 [ %.0142229, %.preheader ], [ %.2.lcssa, %._crit_edge224 ] ; 2 uses
  %i.cb = load ptr, ptr %i.c, align 8, !tbaa !369
  %indvars.iv.next249 = add nsw i64 %indvars.iv248, 1 ; 3 uses
  %i.cc = getelementptr inbounds [184 x i8], ptr %i.cb, i64 %indvars.iv248 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.2160, i64 48
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !337 ; 3 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !55 ; 2 uses
  %.not182210 = icmp eq i32 %i.cf, 0
  br i1 %.not182210, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.h
  %i.cg = phi i32 [ %i.co, %bb.h ], [ %i.cf, %bb.g ]
  %.0213 = phi ptr [ %i.cn, %bb.h ], [ %i.ce, %bb.g ] ; 2 uses
  %.0141212 = phi i32 [ %i.cl, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %.0153211 = phi i32 [ %i.cm, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.0213, i64 4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !55 ; 2 uses
  %.not183 = icmp eq i32 %i.ci, 0
  br i1 %.not183, label %.critedge, label %bb.h

bb.h:                                             ; preds = %.lr.ph
end_hunk_2
begin_hunk_3_@stbtt__CompareUTF8toUTF16_bigendian_prefix:bb.a
  br i1 %.not82, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  %i.bw = getelementptr i8, ptr %i.br, i64 1
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !56
  %i.by = zext i8 %i.bx to i32
  %i.bz = lshr i32 %i.g, 6
  %i.ca = and i32 %i.bz, 63
  %i.cb = or disjoint i32 %i.ca, 128
  %.not83 = icmp eq i32 %i.cb, %i.by
  br i1 %.not83, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  %i.cc = add nsw i32 %.064100, 3
  %i.cd = sext i32 %i.bp to i64
  %i.ce = getelementptr inbounds i8, ptr %0, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !56
  %i.cg = zext i8 %i.cf to i32
  %i.ch = and i32 %i.f, 63
  %i.ci = or disjoint i32 %i.ch, 128
  %.not84 = icmp eq i32 %i.ci, %i.cg
  br i1 %.not84, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.n, %bb.g, %bb.r, %bb.c
  %.272 = phi ptr [ %.07098, %bb.c ], [ %.07098, %bb.g ], [ %i.ad, %bb.n ], [ %.07098, %bb.r ]
  %.268 = phi i32 [ %.06699, %bb.c ], [ %.06699, %bb.g ], [ %i.bo, %bb.n ], [ %.06699, %bb.r ]
  %.2 = phi i32 [ %i.i, %bb.c ], [ %i.v, %bb.g ], [ %i.bn, %bb.n ], [ %i.cc, %bb.r ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.272, i64 2
  %i.ck = add nsw i32 %.268, -2                   ; 2 uses
  %.not = icmp eq i32 %i.ck, 0
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !1245

.critedge:                                        ; preds = %bb.s, %bb.r, %bb.p, %bb.o, %bb.g, %bb.f, %bb.e, %bb.c, %bb.b, %bb.q, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.a
  %.4 = phi i32 [ 0, %bb.a ], [ -1, %bb.r ], [ -1, %bb.p ], [ -1, %bb.o ], [ -1, %bb.m ], [ -1, %bb.g ], [ -1, %bb.f ], [ -1, %bb.q ], [ -1, %bb.e ], [ -1, %bb.c ], [ -1, %bb.b ], [ -1, %bb.l ], [ -1, %bb.k ], [ -1, %bb.j ], [ -1, %bb.i ], [ %.2, %bb.s ]
  ret i32 %.4
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #43

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #43

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr noundef captures(none)) local_unnamed_addr #43

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #43

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #43

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal float @nk_font_text_width(ptr nofree readonly captures(address_is_null) %0, float noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3) #25 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %2, null
  %or.cond = and i1 %i.a, %i.b
  %i.c = icmp ne i32 %3, 0
  %or.cond3 = and i1 %or.cond, %i.c
  br i1 %or.cond3, label %bb.b, label %nk_utf_decode.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load float, ptr %i.d, align 8, !tbaa !374
  %i.f = fdiv float %1, %i.e
  %i.g = load i8, ptr %2, align 1, !tbaa !56      ; 7 uses
  %i.h = icmp slt i8 %i.g, -64
  br i1 %i.h, label %nk_utf_decode.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp slt i8 %i.g, 0
  br i1 %i.i, label %bb.d, label %._crit_edge.thread82.i

._crit_edge.thread82.i:                           ; preds = %bb.c
  %i.j = zext nneg i8 %i.g to i32
  br label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.k = icmp samesign ult i8 %i.g, -32
  br i1 %i.k, label %nk_utf_decode_byte.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = icmp samesign ult i8 %i.g, -16
  br i1 %i.l, label %nk_utf_decode_byte.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = and i8 %i.g, -8
  %i.n = icmp eq i8 %i.m, -16
  br i1 %i.n, label %nk_utf_decode_byte.exit.i, label %nk_utf_decode.exit.thread

nk_utf_decode_byte.exit.i:                        ; preds = %bb.f, %bb.e, %bb.d
  %storemerge12.lcssa.wide.i.i = phi i32 [ 4, %bb.f ], [ 3, %bb.e ], [ 2, %bb.d ] ; 3 uses
  %i.o = phi i8 [ 7, %bb.f ], [ 15, %bb.e ], [ 31, %bb.d ]
  %i.p = icmp sgt i32 %3, 1
  br i1 %i.p, label %.lr.ph.preheader.i, label %nk_utf_decode.exit.thread

.lr.ph.preheader.i:                               ; preds = %nk_utf_decode_byte.exit.i
  %i.q = and i8 %i.o, %i.g
  %i.r = zext nneg i8 %i.q to i32
  %i.s = zext nneg i32 %3 to i64
  %zext = zext nneg i32 %storemerge12.lcssa.wide.i.i to i64
  %i.t = add nsw i64 %i.s, -2
  %i.u = add nsw i32 %storemerge12.lcssa.wide.i.i, -2
  %i.v = zext nneg i32 %i.u to i64
  %umin = tail call i64 @llvm.umin.i64(i64 %i.t, i64 %i.v) ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !56    ; 2 uses
  %i.y = icmp slt i8 %i.x, -64
  br i1 %i.y, label %bb.g, label %nk_utf_decode.exit.thread

bb.g:                                             ; preds = %.lr.ph.preheader.i
  %i.z = and i8 %i.x, 63
  %i.aa = zext nneg i8 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.r, 6
  %i.ac = or disjoint i32 %i.ab, %i.aa            ; 2 uses
  %exitcond.not = icmp eq i64 %umin, 0
  br i1 %exitcond.not, label %._crit_edge.i, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !56  ; 2 uses
  %i.af = icmp slt i8 %i.ae, -64
  br i1 %i.af, label %bb.h, label %nk_utf_decode.exit.thread

bb.h:                                             ; preds = %.lr.ph.i.1
  %i.ag = and i8 %i.ae, 63
  %i.ah = zext nneg i8 %i.ag to i32
  %i.ai = shl nuw nsw i32 %i.ac, 6
  %i.aj = or disjoint i32 %i.ai, %i.ah            ; 2 uses
  %exitcond.not.1 = icmp eq i64 %umin, 1
  br i1 %exitcond.not.1, label %._crit_edge.i, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !56  ; 2 uses
  %i.am = icmp slt i8 %i.al, -64
  br i1 %i.am, label %bb.i, label %nk_utf_decode.exit.thread

bb.i:                                             ; preds = %.lr.ph.i.2
  %i.an = and i8 %i.al, 63
  %i.ao = zext nneg i8 %i.an to i32
  %i.ap = shl nuw nsw i32 %i.aj, 6
  %i.aq = or disjoint i32 %i.ap, %i.ao
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.i, %bb.h, %bb.g
  %.lcssa158 = phi i32 [ %i.ac, %bb.g ], [ %i.aj, %bb.h ], [ %i.aq, %bb.i ]
  %indvars.iv.next.i.lcssa = phi i64 [ 2, %bb.g ], [ 3, %bb.h ], [ 4, %bb.i ]
  %i.ar = icmp samesign ult i64 %indvars.iv.next.i.lcssa, %zext
  br i1 %i.ar, label %nk_utf_decode.exit.thread, label %bb.j

bb.j:                                             ; preds = %._crit_edge.i, %._crit_edge.thread82.i
  %.0.lcssa87.i = phi i32 [ %i.j, %._crit_edge.thread82.i ], [ %.lcssa158, %._crit_edge.i ] ; 5 uses
  %storemerge12.lcssa.wide.i7886.i = phi i32 [ 1, %._crit_edge.thread82.i ], [ %storemerge12.lcssa.wide.i.i, %._crit_edge.i ] ; 3 uses
  %i.as = zext nneg i32 %storemerge12.lcssa.wide.i7886.i to i64 ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr @nk_utfmin, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !55
  %.not.i.i = icmp ugt i32 %i.au, %.0.lcssa87.i
  br i1 %.not.i.i, label %nk_utf_decode.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw [4 x i8], ptr @nk_utfmax, i64 %i.as
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !55
  %i.ax = icmp uge i32 %.0.lcssa87.i, %i.aw
  %i.ay = add i32 %.0.lcssa87.i, -55296
  %or.cond.i.i = icmp ult i32 %i.ay, 2047
  %or.cond15.i.i = or i1 %or.cond.i.i, %i.ax
  br i1 %or.cond15.i.i, label %nk_utf_decode.exit.thread, label %.preheader

.preheader:                                       ; preds = %bb.k
  %i.az = icmp sgt i32 %storemerge12.lcssa.wide.i7886.i, %3
  %i.ba = icmp eq i32 %.0.lcssa87.i, 65533
  %or.cond7688 = or i1 %i.az, %i.ba
  br i1 %or.cond7688, label %nk_utf_decode.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !332, !nonnull !89, !noundef !89
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !333
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !334 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.z
  %.02791 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.ce, %bb.z ]
  %.02990 = phi i32 [ %storemerge12.lcssa.wide.i7886.i, %.lr.ph ], [ %i.eb, %bb.z ] ; 4 uses
  %.06589 = phi i32 [ %.0.lcssa87.i, %.lr.ph ], [ %.0.lcssa87.i47, %bb.z ] ; 3 uses
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.i39, %bb.l
  %.029.i = phi i32 [ 0, %bb.l ], [ %.1.lcssa.i, %._crit_edge.i39 ] ; 3 uses
  %.028.i = phi ptr [ %i.bg, %bb.l ], [ %i.cb, %._crit_edge.i39 ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.028.i, i64 48
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !337 ; 3 uses
  %.not.i.i38 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i38, label %._crit_edge.i39, label %nk_range_count.exit.i

nk_range_count.exit.i:                            ; preds = %bb.m
  %wcslen.i.i = tail call i64 @wcslen(ptr nonnull readonly %i.bi)
  %i.bj = shl i64 %wcslen.i.i, 2
  %i.bk = add i64 %i.bj, 4
  %i.bl = ashr exact i64 %i.bk, 2
  %i.bm = sdiv i64 %i.bl, 2                       ; 2 uses
  %i.bn = trunc i64 %i.bm to i32
  %i.bo = icmp sgt i32 %i.bn, 0
  br i1 %i.bo, label %.lr.ph.preheader.i40, label %._crit_edge.i39

.lr.ph.preheader.i40:                             ; preds = %nk_range_count.exit.i
  %wide.trip.count.i = and i64 %i.bm, 2147483647
  br label %.lr.ph.i41

.lr.ph.i41:                                       ; preds = %bb.o, %.lr.ph.preheader.i40
  %indvars.iv.i42 = phi i64 [ 0, %.lr.ph.preheader.i40 ], [ %indvars.iv.next.i43, %bb.o ] ; 2 uses
  %.149.i = phi i32 [ %.029.i, %.lr.ph.preheader.i40 ], [ %i.bz, %bb.o ] ; 2 uses
  %.idx.i = shl nuw nsw i64 %indvars.iv.i42, 3
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.idx.i ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !55 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !55 ; 2 uses
  %.not40.i = icmp ult i32 %.06589, %i.bq
  %.not41.i = icmp ugt i32 %.06589, %i.bs
  %or.cond.i = select i1 %.not40.i, i1 true, i1 %.not41.i
  br i1 %or.cond.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i41
  %i.bt = add i32 %.149.i, %.06589
  %i.bu = sub i32 %i.bt, %i.bq
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [48 x i8], ptr %i.bc, i64 %i.bv
  br label %nk_font_find_glyph.exit

bb.o:                                             ; preds = %.lr.ph.i41
  %i.bx = add i32 %.149.i, 1
  %i.by = sub i32 %i.bx, %i.bq
  %i.bz = add i32 %i.by, %i.bs                    ; 2 uses
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i42, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i43, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i39, label %.lr.ph.i41, !llvm.loop !33

._crit_edge.i39:                                  ; preds = %bb.o, %nk_range_count.exit.i, %bb.m
  %.1.lcssa.i = phi i32 [ %.029.i, %nk_range_count.exit.i ], [ %.029.i, %bb.m ], [ %i.bz, %bb.o ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.028.i, i64 72
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !338 ; 2 uses
  %.not39.i = icmp eq ptr %i.cb, %i.bg
  br i1 %.not39.i, label %nk_font_find_glyph.exit, label %bb.m, !llvm.loop !34

nk_font_find_glyph.exit:                          ; preds = %._crit_edge.i39, %bb.n
  %.3.i = phi ptr [ %i.bw, %bb.n ], [ %i.be, %._crit_edge.i39 ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.3.i, i64 4
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !381
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.cd, float %i.f, float %.02791) ; 12 uses
  %i.cf = sext i32 %.02990 to i64
  %i.cg = getelementptr inbounds i8, ptr %2, i64 %i.cf ; 4 uses
  %i.ch = sub i32 %3, %.02990                     ; 2 uses
  %.not.i44 = icmp eq i32 %3, %.02990
  br i1 %.not.i44, label %nk_utf_decode.exit.thread, label %bb.p

bb.p:                                             ; preds = %nk_font_find_glyph.exit
  %i.ci = load i8, ptr %i.cg, align 1, !tbaa !56  ; 7 uses
  %i.cj = icmp slt i8 %i.ci, -64
  br i1 %i.cj, label %nk_utf_decode.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ck = icmp slt i8 %i.ci, 0
  br i1 %i.ck, label %bb.r, label %._crit_edge.thread82.i46

._crit_edge.thread82.i46:                         ; preds = %bb.q
  %i.cl = zext nneg i8 %i.ci to i32
  br label %bb.x

bb.r:                                             ; preds = %bb.q
  %i.cm = icmp samesign ult i8 %i.ci, -32
  br i1 %i.cm, label %nk_utf_decode_byte.exit.i53, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cn = icmp samesign ult i8 %i.ci, -16
  br i1 %i.cn, label %nk_utf_decode_byte.exit.i53, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.co = and i8 %i.ci, -8
  %i.cp = icmp eq i8 %i.co, -16
  br i1 %i.cp, label %nk_utf_decode_byte.exit.i53, label %nk_utf_decode.exit.thread

nk_utf_decode_byte.exit.i53:                      ; preds = %bb.t, %bb.s, %bb.r
  %storemerge12.lcssa.wide.i.i54 = phi i32 [ 4, %bb.t ], [ 3, %bb.s ], [ 2, %bb.r ] ; 3 uses
  %i.cq = phi i8 [ 7, %bb.t ], [ 15, %bb.s ], [ 31, %bb.r ]
  %i.cr = icmp sgt i32 %i.ch, 1
  br i1 %i.cr, label %.lr.ph.preheader.i55, label %nk_utf_decode.exit.thread

.lr.ph.preheader.i55:                             ; preds = %nk_utf_decode_byte.exit.i53
  %i.cs = and i8 %i.cq, %i.ci
  %i.ct = zext nneg i8 %i.cs to i32
  %i.cu = zext nneg i32 %i.ch to i64
  %zext102 = zext nneg i32 %storemerge12.lcssa.wide.i.i54 to i64
  %i.cv = add nsw i64 %i.cu, -2
  %i.cw = add nsw i32 %storemerge12.lcssa.wide.i.i54, -2
  %i.cx = zext nneg i32 %i.cw to i64
  %umin103 = tail call i64 @llvm.umin.i64(i64 %i.cv, i64 %i.cx) ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cg, i64 1
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !56  ; 2 uses
  %i.da = icmp slt i8 %i.cz, -64
  br i1 %i.da, label %bb.u, label %nk_utf_decode.exit.thread

bb.u:                                             ; preds = %.lr.ph.preheader.i55
  %i.db = and i8 %i.cz, 63
  %i.dc = zext nneg i8 %i.db to i32
  %i.dd = shl nuw nsw i32 %i.ct, 6
  %i.de = or disjoint i32 %i.dd, %i.dc            ; 2 uses
  %exitcond104.not = icmp eq i64 %umin103, 0
  br i1 %exitcond104.not, label %._crit_edge.i63, label %.lr.ph.i56.1

.lr.ph.i56.1:                                     ; preds = %bb.u
  %i.df = getelementptr inbounds nuw i8, ptr %i.cg, i64 2
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !56  ; 2 uses
  %i.dh = icmp slt i8 %i.dg, -64
  br i1 %i.dh, label %bb.v, label %nk_utf_decode.exit.thread

bb.v:                                             ; preds = %.lr.ph.i56.1
  %i.di = and i8 %i.dg, 63
  %i.dj = zext nneg i8 %i.di to i32
  %i.dk = shl nuw nsw i32 %i.de, 6
  %i.dl = or disjoint i32 %i.dk, %i.dj            ; 2 uses
  %exitcond104.not.1 = icmp eq i64 %umin103, 1
  br i1 %exitcond104.not.1, label %._crit_edge.i63, label %.lr.ph.i56.2

.lr.ph.i56.2:                                     ; preds = %bb.v
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cg, i64 3
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !56  ; 2 uses
  %i.do = icmp slt i8 %i.dn, -64
  br i1 %i.do, label %bb.w, label %nk_utf_decode.exit.thread

bb.w:                                             ; preds = %.lr.ph.i56.2
  %i.dp = and i8 %i.dn, 63
  %i.dq = zext nneg i8 %i.dp to i32
  %i.dr = shl nuw nsw i32 %i.dl, 6
  %i.ds = or disjoint i32 %i.dr, %i.dq
  br label %._crit_edge.i63

._crit_edge.i63:                                  ; preds = %bb.w, %bb.v, %bb.u
  %.lcssa154 = phi i32 [ %i.de, %bb.u ], [ %i.dl, %bb.v ], [ %i.ds, %bb.w ]
  %indvars.iv.next.i61.lcssa = phi i64 [ 2, %bb.u ], [ 3, %bb.v ], [ 4, %bb.w ]
  %i.dt = icmp samesign ult i64 %indvars.iv.next.i61.lcssa, %zext102
  br i1 %i.dt, label %nk_utf_decode.exit.thread, label %bb.x

bb.x:                                             ; preds = %._crit_edge.i63, %._crit_edge.thread82.i46
  %.0.lcssa87.i47 = phi i32 [ %i.cl, %._crit_edge.thread82.i46 ], [ %.lcssa154, %._crit_edge.i63 ] ; 5 uses
  %storemerge12.lcssa.wide.i7886.i48 = phi i32 [ 1, %._crit_edge.thread82.i46 ], [ %storemerge12.lcssa.wide.i.i54, %._crit_edge.i63 ] ; 2 uses
  %i.du = zext nneg i32 %storemerge12.lcssa.wide.i7886.i48 to i64 ; 2 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr @nk_utfmin, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !55
  %.not.i.i49 = icmp ugt i32 %i.dw, %.0.lcssa87.i47
  br i1 %.not.i.i49, label %nk_utf_decode.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr @nk_utfmax, i64 %i.du
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !55
  %i.dz = icmp uge i32 %.0.lcssa87.i47, %i.dy
  %i.ea = add i32 %.0.lcssa87.i47, -55296
  %or.cond.i.i50 = icmp ult i32 %i.ea, 2047
  %or.cond15.i.i51 = or i1 %or.cond.i.i50, %i.dz
  br i1 %or.cond15.i.i51, label %nk_utf_decode.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eb = add nsw i32 %storemerge12.lcssa.wide.i7886.i48, %.02990 ; 2 uses
  %i.ec = icmp sgt i32 %i.eb, %3
  %i.ed = icmp eq i32 %.0.lcssa87.i47, 65533
  %or.cond76 = or i1 %i.ec, %i.ed
  br i1 %or.cond76, label %nk_utf_decode.exit.thread, label %bb.l

nk_utf_decode.exit.thread:                        ; preds = %.lr.ph.preheader.i, %.lr.ph.i.1, %.lr.ph.i.2, %bb.x, %bb.y, %bb.t, %bb.p, %nk_utf_decode_byte.exit.i53, %._crit_edge.i63, %nk_font_find_glyph.exit, %bb.z, %.lr.ph.preheader.i55, %.lr.ph.i56.1, %.lr.ph.i56.2, %bb.j, %bb.k, %bb.f, %bb.b, %.preheader, %nk_utf_decode_byte.exit.i, %._crit_edge.i, %bb.a
  %.031 = phi float [ 0.000000e+00, %bb.k ], [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %nk_utf_decode_byte.exit.i ], [ 0.000000e+00, %._crit_edge.i ], [ 0.000000e+00, %.preheader ], [ %i.ce, %bb.x ], [ %i.ce, %.lr.ph.preheader.i55 ], [ 0.000000e+00, %bb.j ], [ 0.000000e+00, %bb.b ], [ 0.000000e+00, %bb.f ], [ %i.ce, %.lr.ph.i56.2 ], [ %i.ce, %.lr.ph.i56.1 ], [ %i.ce, %bb.z ], [ %i.ce, %nk_font_find_glyph.exit ], [ %i.ce, %._crit_edge.i63 ], [ %i.ce, %nk_utf_decode_byte.exit.i53 ], [ %i.ce, %bb.p ], [ %i.ce, %bb.t ], [ %i.ce, %bb.y ], [ 0.000000e+00, %.lr.ph.i.2 ], [ 0.000000e+00, %.lr.ph.i.1 ], [ 0.000000e+00, %.lr.ph.preheader.i ]
  ret float %.031
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @nk_font_query_font_glyph(ptr nofree readonly captures(address_is_null) %0, float noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, i32 noundef %3, i32 %4) #44 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %2, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load float, ptr %i.c, align 8, !tbaa !374
  %i.e = fdiv float %1, %i.d                      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !332, !nonnull !89, !noundef !89
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !333
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !334  ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i, %bb.b
  %.029.i = phi i32 [ 0, %bb.b ], [ %.1.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.028.i = phi ptr [ %i.k, %bb.b ], [ %i.af, %._crit_edge.i ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.028.i, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !337  ; 3 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %._crit_edge.i, label %nk_range_count.exit.i

nk_range_count.exit.i:                            ; preds = %bb.c
  %wcslen.i.i = tail call i64 @wcslen(ptr nonnull readonly %i.m)
  %i.n = shl i64 %wcslen.i.i, 2
  %i.o = add i64 %i.n, 4
  %i.p = ashr exact i64 %i.o, 2
  %i.q = sdiv i64 %i.p, 2                         ; 2 uses
  %i.r = trunc i64 %i.q to i32
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %nk_range_count.exit.i
  %wide.trip.count.i = and i64 %i.q, 2147483647
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.e ] ; 2 uses
  %.149.i = phi i32 [ %.029.i, %.lr.ph.preheader.i ], [ %i.ad, %bb.e ] ; 2 uses
  %.idx.i = shl nuw nsw i64 %indvars.iv.i, 3
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx.i ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !55   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !55   ; 2 uses
  %.not40.i = icmp ult i32 %3, %i.u
  %.not41.i = icmp ugt i32 %3, %i.w
  %or.cond.i = select i1 %.not40.i, i1 true, i1 %.not41.i
  br i1 %or.cond.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.x = add i32 %.149.i, %3
  %i.y = sub i32 %i.x, %i.u
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [48 x i8], ptr %i.g, i64 %i.z
  br label %nk_font_find_glyph.exit

bb.e:                                             ; preds = %.lr.ph.i
  %i.ab = add i32 %.149.i, 1
  %i.ac = sub i32 %i.ab, %i.u
  %i.ad = add i32 %i.ac, %i.w                     ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !33

._crit_edge.i:                                    ; preds = %bb.e, %nk_range_count.exit.i, %bb.c
  %.1.lcssa.i = phi i32 [ %.029.i, %nk_range_count.exit.i ], [ %.029.i, %bb.c ], [ %i.ad, %bb.e ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.028.i, i64 72
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !338 ; 2 uses
  %.not39.i = icmp eq ptr %i.af, %i.k
  br i1 %.not39.i, label %nk_font_find_glyph.exit, label %bb.c, !llvm.loop !34

nk_font_find_glyph.exit:                          ; preds = %._crit_edge.i, %bb.d
  %.3.i = phi ptr [ %i.aa, %bb.d ], [ %i.i, %._crit_edge.i ] ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.3.i, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %.3.i, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aj = load <2 x float>, ptr %i.ag, align 4, !tbaa !54
  %i.ak = load <2 x float>, ptr %i.ah, align 4, !tbaa !54 ; 2 uses
  %i.al = fsub <2 x float> %i.aj, %i.ak
  %i.am = insertelement <2 x float> poison, float %i.e, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ao = fmul <2 x float> %i.an, %i.al
  store <2 x float> %i.ao, ptr %i.ai, align 4, !tbaa !54
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aq = fmul <2 x float> %i.an, %i.ak
  store <2 x float> %i.aq, ptr %i.ap, align 4, !tbaa !54
  %i.ar = getelementptr inbounds nuw i8, ptr %.3.i, i64 4
  %i.as = load float, ptr %i.ar, align 4, !tbaa !381
  %i.at = fmul float %i.e, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 32
  store float %i.at, ptr %i.au, align 4, !tbaa !176
  %i.av = getelementptr inbounds nuw i8, ptr %.3.i, i64 32
  %i.aw = load <2 x float>, ptr %i.av, align 4, !tbaa !54
  store <2 x float> %i.aw, ptr %2, align 4, !tbaa !54
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.3.i, i64 40
  %i.az = load <2 x float>, ptr %i.ay, align 4, !tbaa !54
  store <2 x float> %i.az, ptr %i.ax, align 4, !tbaa !54
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %nk_font_find_glyph.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc float @nk_do_scrollbarv(ptr nofree noundef nonnull captures(none) %0, ptr noundef nonnull %1, <2 x float> %2, <2 x float> %3, i32 noundef range(i32 0, 2) %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, ptr nofree noundef nonnull readonly captures(address_is_null) %9, ptr nofree noundef captures(address_is_null) %10, ptr noundef %11) unnamed_addr #20 {
bb.a:
  %12 = alloca %struct.nk_rect, align 16          ; 7 uses
  %13 = alloca %struct.nk_rect, align 8           ; 8 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  store <2 x float> %2, ptr %12, align 16
  %i.b = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #50
  %i.c = getelementptr inbounds nuw i8, ptr %12, i64 12 ; 2 uses
  %i.d = fcmp olt <2 x float> %3, <float 1.000000e+00, float 0.000000e+00>
  %i.e = select <2 x i1> %i.d, <2 x float> <float 1.000000e+00, float 0.000000e+00>, <2 x float> %3 ; 4 uses
  %i.f = extractelement <2 x float> %i.e, i64 0   ; 5 uses
  store float %i.f, ptr %i.b, align 8, !tbaa !113
  %i.g = extractelement <2 x float> %i.e, i64 1   ; 5 uses
  store float %i.g, ptr %i.c, align 4, !tbaa !115
  %i.h = fcmp ugt float %6, %i.g
  br i1 %i.h, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.i = extractelement <2 x float> %2, i64 0
  %i.j = extractelement <2 x float> %2, i64 1
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 284
  %i.l = load i32, ptr %i.k, align 4, !tbaa !408
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  %i.m = load <4 x float>, ptr %12, align 16      ; 3 uses
  %.sroa.7.12.vec.insert = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.n = tail call float @llvm.fmuladd.f32(float %i.f, float -2.000000e+00, float %i.g) ; 2 uses
  %i.o = fcmp olt float %i.n, 0.000000e+00
  %i.p = select i1 %i.o, float 0.000000e+00, float %i.n ; 2 uses
  %i.q = fcmp olt float %7, %8
  %i.r = select i1 %i.q, float %7, float %8       ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.t = extractelement <4 x float> %i.m, i64 1   ; 2 uses
  %.sroa.0.4.vec.insert = shufflevector <4 x float> %i.m, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 724
  %i.v = load i32, ptr %i.u, align 4, !tbaa !406
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 504
  %i.x = call fastcc zeroext i1 @nk_do_button_symbol(ptr noundef %i.a, ptr noundef nonnull %1, <2 x float> %.sroa.0.4.vec.insert, <2 x float> %.sroa.7.12.vec.insert, i32 noundef %i.v, i32 noundef 1, ptr noundef nonnull %i.w, ptr noundef %10, ptr noundef %11)
  %i.y = fsub float %5, %i.r
  %.086 = select i1 %i.x, float %i.y, float %5    ; 2 uses
  %i.z = fadd float %i.g, %i.t
  %i.aa = fsub float %i.z, %i.f
  %.sroa.0.4.vec.insert5 = insertelement <2 x float> %.sroa.0.4.vec.insert, float %i.aa, i64 1
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 720
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !407
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 288
  %i.ae = call fastcc zeroext i1 @nk_do_button_symbol(ptr noundef %i.a, ptr noundef nonnull %1, <2 x float> %.sroa.0.4.vec.insert5, <2 x float> %.sroa.7.12.vec.insert, i32 noundef %i.ac, i32 noundef 1, ptr noundef nonnull %i.ad, ptr noundef %10, ptr noundef %11)
  %i.af = fadd float %i.r, %.086
  %.1 = select i1 %i.ae, float %i.af, float %.086
  %i.ag = fadd float %i.f, %i.t                   ; 2 uses
  store float %i.ag, ptr %i.s, align 4, !tbaa !114
  store float %i.p, ptr %i.c, align 4, !tbaa !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  %i.ah = extractelement <4 x float> %i.m, i64 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ai = phi float [ %i.ah, %bb.c ], [ %i.i, %bb.b ] ; 2 uses
  %i.aj = phi float [ %i.ag, %bb.c ], [ %i.j, %bb.b ] ; 5 uses
  %i.ak = phi float [ %i.p, %bb.c ], [ %i.g, %bb.b ] ; 8 uses
  %.2 = phi float [ %.1, %bb.c ], [ %5, %bb.b ]   ; 2 uses
  %i.al = fcmp olt float %7, %i.ak
  %i.am = select i1 %i.al, float %7, float %i.ak
  %i.an = fsub float %6, %i.ak                    ; 2 uses
  %i.ao = fcmp olt float %.2, %i.an
  %i.ap = select i1 %i.ao, float %.2, float %i.an ; 2 uses
  %i.aq = fcmp olt float %i.ap, 0.000000e+00
  %i.ar = select i1 %i.aq, float 0.000000e+00, float %i.ap ; 2 uses
  %i.as = fdiv float %i.ak, %6
  %i.at = fdiv float %i.ar, %6
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 252
  %i.av = load float, ptr %i.au, align 4, !tbaa !512 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 268
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 272 ; 2 uses
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !514 ; 2 uses
  %i.az = fmul float %i.ay, 2.000000e+00
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.av, float 2.000000e+00, float %i.az)
  %i.bb = fneg float %i.ba
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.as, float %i.ak, float %i.bb) ; 2 uses
  %i.bd = fcmp olt float %i.bc, 0.000000e+00
  %i.be = select i1 %i.bd, float 0.000000e+00, float %i.bc ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %13, i64 12
  store float %i.be, ptr %i.bf, align 4, !tbaa !115
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.at, float %i.ak, float %i.aj)
  %i.bh = fadd float %i.av, %i.bg
  %i.bi = fadd float %i.ay, %i.bh                 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %13, i64 4 ; 2 uses
  store float %i.bi, ptr %i.bj, align 4, !tbaa !114
  %i.bk = load float, ptr %i.aw, align 4, !tbaa !513 ; 2 uses
  %i.bl = fmul float %i.bk, 2.000000e+00
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.av, float 2.000000e+00, float %i.bl)
  %i.bn = fsub float %i.f, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store float %i.bn, ptr %i.bo, align 8, !tbaa !113
  %i.bp = fadd float %i.av, %i.ai
  %i.bq = fadd float %i.bk, %i.bp
  store float %i.bq, ptr %13, align 8, !tbaa !112
  %.sroa.0108.0.vec.insert = insertelement <2 x float> <float poison, float undef>, float %i.ai, i64 0 ; 2 uses
  %.sroa.0108.4.vec.insert = insertelement <2 x float> %.sroa.0108.0.vec.insert, float %i.aj, i64 1
  %.sroa.5110.8.vec.insert123 = insertelement <2 x float> %i.e, float undef, i64 1 ; 2 uses
  %i.br = fsub float %i.bi, %i.aj                 ; 2 uses
  %i.bs = fcmp olt float %i.br, 0.000000e+00
  %i.bt = select i1 %i.bs, float 0.000000e+00, float %i.br
  %.sroa.5110.12.vec.insert = insertelement <2 x float> %.sroa.5110.8.vec.insert123, float %i.bt, i64 1
  %i.bu = fadd float %i.be, %i.bi                 ; 2 uses
  %.sroa.0.4.vec.insert106 = insertelement <2 x float> %.sroa.0108.0.vec.insert, float %i.bu, i64 1
  %i.bv = fadd float %i.ak, %i.aj
  %i.bw = fsub float %i.bv, %i.bu                 ; 2 uses
  %i.bx = fcmp olt float %i.bw, 0.000000e+00
  %i.by = select i1 %i.bx, float 0.000000e+00, float %i.bw
  %.sroa.5.12.vec.insert = insertelement <2 x float> %.sroa.5110.8.vec.insert123, float %i.by, i64 1
  %i.bz = call fastcc float @nk_scrollbar_behavior(ptr noundef %0, ptr noundef %10, i32 noundef %4, ptr noundef %12, ptr noundef %13, <2 x float> %.sroa.0108.4.vec.insert, <2 x float> %.sroa.5110.12.vec.insert, <2 x float> %.sroa.0.4.vec.insert106, <2 x float> %.sroa.5.12.vec.insert, float noundef %i.ar, float noundef %6, float noundef %i.am, i32 noundef 0) ; 3 uses
  %i.ca = fdiv float %i.bz, %6
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.ca, float %i.ak, float %i.aj)
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 260
end_hunk_3
